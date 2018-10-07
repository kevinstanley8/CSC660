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
        public AddEvent()
        {
            InitializeComponent();
            setDefaultValues();
        }

        private void setDefaultValues()
        {
            foreach(String hour in Time.hourList)
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

        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            showMessage("Save");
        }

        private void showMessage(String title)
        {
            MessageBoxResult result = MessageBox.Show(title + " Not Implemented Yet",
                                          title,
                                          MessageBoxButton.OK,
                                          MessageBoxImage.Information);
        }
    }
}
