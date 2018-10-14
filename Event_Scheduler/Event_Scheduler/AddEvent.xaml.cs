using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Event_Scheduler
{
    /// <summary>
    /// Interaction logic for AddEvent.xaml
    /// </summary>
    public partial class AddEvent : Window
    {
        private es_K04000766Entities Con;
        private Boolean isInsert = true;
        private Event findEvent;

        public AddEvent()
        {
            this.isInsert = true;
            InitializeComponent();
            setDefaultValues();
        }

        public AddEvent(int eventId)
        {
            this.isInsert = false;
            InitializeComponent();
            this.setDefaultValues();
            this.loadEvent(eventId);
        }

        public void loadEvent(int eventId)
        {
            this.findEvent = this.Con.Events.Find(eventId);
            this.dpStartDate.Text = findEvent.startdate.ToShortDateString();

            int startHour = findEvent.startdate.Hour;
            int endHour = findEvent.enddate.Hour;
            String startMinute = "00";
            String endMinute = "00";
            String startAmPm = "AM";
            String endAmPm = "AM";

            if(startHour > 12)
            {
                startHour = startHour - 12;
                startAmPm = "PM";
            }

            if (endHour > 12)
            {
                endHour = endHour - 12;
                endAmPm = "PM";
            }

            if (findEvent.startdate.Minute.ToString().Equals("0"))
                startMinute = "00";
            else
                startMinute = findEvent.startdate.Minute.ToString();
            if (findEvent.enddate.Minute.ToString().Equals("0"))
                endMinute = "00";
            else
                endMinute = findEvent.enddate.Minute.ToString();

            this.cbStartHour.SelectedValue = startHour.ToString();
            this.cbStartMinute.SelectedValue = startMinute;
            this.cbStartAMPM.SelectedValue = startAmPm;

            this.cbEndHour.SelectedValue = endHour.ToString();
            this.cbEndMinute.SelectedValue = endMinute;
            this.cbEndAMPM.SelectedValue = endAmPm;

            this.txtTitle.Text = findEvent.title;
            this.txtNotes.Text = findEvent.notes;
        }

        private void setDefaultValues()
        {
            this.Con = new es_K04000766Entities();

            foreach (String hour in Time.hourList)
            {
                this.cbStartHour.Items.Add(hour);
                this.cbEndHour.Items.Add(hour);
            }

            foreach (String minute in Time.minuteList)
            {
                this.cbStartMinute.Items.Add(minute);
                this.cbEndMinute.Items.Add(minute);
            }

            foreach (String type in Time.ampmList)
            {
                this.cbStartAMPM.Items.Add(type);
                this.cbEndAMPM.Items.Add(type);
            }

            //default to index 0
            this.cbStartHour.SelectedIndex = 0;
            this.cbStartMinute.SelectedIndex = 0;
            this.cbStartAMPM.SelectedIndex = 0;
            this.cbEndHour.SelectedIndex = 0;
            this.cbEndMinute.SelectedIndex = 0;
            this.cbEndAMPM.SelectedIndex = 0;

            dpStartDate.Text = DateTime.Today.ToShortTimeString();
        }

        private DateTime getDate()
        {
            try
            {
                DateTime enteredDate = DateTime.Parse(dpStartDate.Text);
                return enteredDate;
            }
            catch (Exception e)
            {
                return DateTime.Today;
            }
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            this.validateEvent();
            Event newEvent = this.getEvent();
            if (this.isInsert)
            {
                Con.Events.Add(newEvent);
                Con.SaveChanges();
            }
            else
            {
                Event modifyEvent = this.Con.Events.Find(findEvent.id);
                modifyEvent.startdate = newEvent.startdate;
                modifyEvent.enddate = newEvent.enddate;
                modifyEvent.title = newEvent.title;
                modifyEvent.notes = newEvent.notes;
                Con.SaveChanges();
            }
            this.Close();
        }

        private Event getEvent()
        {
            Event newEvent = new Event();
            DateTime startDate = getDate();
            DateTime endDate = getDate();
            int startHourOffset = 0;
            int endHourOffset = 0;

            if (cbStartAMPM.SelectedValue.ToString().Equals("PM"))
                startHourOffset = 12;
            if (cbEndAMPM.SelectedValue.ToString().Equals("PM"))
                endHourOffset = 12;

            startDate = startDate.AddHours(Double.Parse(cbStartHour.SelectedValue.ToString()) + startHourOffset);
            startDate = startDate.AddMinutes(Double.Parse(cbStartMinute.SelectedValue.ToString()));
            endDate = endDate.AddHours(Double.Parse(cbEndHour.SelectedValue.ToString()) + endHourOffset);
            endDate = endDate.AddMinutes(Double.Parse(cbEndMinute.SelectedValue.ToString()));
            newEvent.startdate = startDate;
            newEvent.enddate = endDate;

            newEvent.title = txtTitle.Text;
            newEvent.notes = txtNotes.Text;
            return newEvent;
        }

        private void validateEvent()
        {
            //start date
            if(dpStartDate.Text == null || dpStartDate.Text.Equals(""))
            {
                showMessage("Error", "You must select an event start date!");
                return;
            }

            //start hour
            if (cbStartHour.SelectedIndex <= 0)
            {
                showMessage("Error", "You must select an event start hour!");
                return;
            }

            //start minute
            if (cbStartMinute.SelectedIndex <= 0)
            {
                showMessage("Error", "You must select an event start minute!");
                return;
            }

            //start AM/PM
            if (cbStartAMPM.SelectedIndex <= 0)
            {
                showMessage("Error", "You must select AM/PM for the event start time!");
                return;
            }

            //end hour
            if (cbEndHour.SelectedIndex <= 0)
            {
                showMessage("Error", "You must select an event end hour!");
                return;
            }

            //end minute
            if (cbEndMinute.SelectedIndex <= 0)
            {
                showMessage("Error", "You must select an event end minute!");
                return;
            }

            //end AP/PM
            if (cbEndAMPM.SelectedIndex <= 0)
            {
                showMessage("Error", "You must select AM/PM for the event end time!");
                return;
            }

            //title
            if (txtTitle.Text == null || txtTitle.Text.Equals(""))
            {
                showMessage("Error", "You must enter an event title!");
                return;
            }
        }

        private void showMessage(String title, String message)
        {
            MessageBoxResult result = MessageBox.Show(message,
                                          title,
                                          MessageBoxButton.OK,
                                          MessageBoxImage.Information);
        }
    }
}
