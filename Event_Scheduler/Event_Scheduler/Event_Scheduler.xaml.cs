using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
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
using System.Windows.Navigation;
using System.Windows.Shapes;


/*
 * Author - Kevin Stanley
 * Course - CSC 660
 * Assignment - Daily Planner
 * Description - This is a Daily Planner app that will allow users to view, edit, delete, and print events.
 * 
 * 
 */

namespace Event_Scheduler
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private es_K04000766Entities Con;

        public MainWindow()
        {
            InitializeComponent();
            dpDate.Text = DateTime.Today.ToShortTimeString();
            this.loadData();            
        }

        private void loadData()
        {
            this.Con = new es_K04000766Entities();
            DateTime enteredDate = this.getDate();
            List<Event> tableData = this.Con.Events.Where(e => EntityFunctions.TruncateTime(e.startdate) == enteredDate)
                .OrderBy(e => e.startdate)
                .ToList();
            eventGrid.ItemsSource = tableData;
            this.eventGrid.AlternationCount = 1;
        }

        private DateTime getDate()
        {
            try
            {
                DateTime enteredDate = DateTime.Parse(dpDate.Text);
                return enteredDate;
            } catch(Exception e)
            {
                return DateTime.Today;
            }
        }

        private void btnAdd_MouseUp(object sender, MouseButtonEventArgs e)
        {
            AddEvent addEventWindow = new AddEvent();
            addEventWindow.Show();
        }

        private void btnPrint_MouseUp(object sender, MouseButtonEventArgs e)
        {
            PrintWindow printWindow = new PrintWindow();
            printWindow.Show();
        }

        private void btnPrintSingle_MouseUp(object sender, MouseButtonEventArgs e)
        {
            showMessage("Print");
        }

        private void btnRight_MouseUp(object sender, MouseButtonEventArgs e)
        {
            this.changeDate(1);
        }

        private void btnLeft_MouseUp(object sender, MouseButtonEventArgs e)
        {
            this.changeDate(-1);
        }

        private void btnEdit_MouseUp(object sender, MouseButtonEventArgs e)
        {
            var image = (Image)sender;
            int id = Int32.Parse(image.ToolTip.ToString());
            AddEvent addEventWindow = new AddEvent(id);
            addEventWindow.Show();
        }

        private void btnDelete_MouseUp(object sender, MouseButtonEventArgs e)
        {
            var image = (Image)sender;
            Event findEvent = this.Con.Events.Find(image.ToolTip);
            this.Con.Events.Remove(findEvent);
            this.Con.SaveChanges();
            loadData();
            eventGrid.Items.Refresh();
        }

        private void changeDate(int days)
        {
            DateTime enteredDate = DateTime.Parse(dpDate.Text);
            enteredDate = enteredDate.AddDays(days);
            dpDate.Text = enteredDate.ToShortDateString();
        }

        private void showMessage(String title)
        {
            MessageBoxResult result = MessageBox.Show(title + " Not Implemented Yet",
                                          title,
                                          MessageBoxButton.OK,
                                          MessageBoxImage.Information);
        }

        private void dpDate_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            loadData();
            eventGrid.Items.Refresh();
        }

        private void Window_Activated(object sender, EventArgs e)
        {
            loadData();
            eventGrid.Items.Refresh();
        }
    }
}
