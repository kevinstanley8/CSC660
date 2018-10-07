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

        public MainWindow()
        {
            InitializeComponent();

            es_K04000766Entities Con = new es_K04000766Entities();
            List<Event> TableData = Con.Events.ToList();
            testEvent.ItemsSource = TableData;
            this.testEvent.AlternationCount = 1;
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
            showMessage("Right");
        }

        private void btnLeft_MouseUp(object sender, MouseButtonEventArgs e)
        {
            showMessage("Left");
        }

        private void btnEdit_MouseUp(object sender, MouseButtonEventArgs e)
        {
            showMessage("Edit");
        }

        private void btnDelete_MouseUp(object sender, MouseButtonEventArgs e)
        {
            showMessage("Delete");
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
