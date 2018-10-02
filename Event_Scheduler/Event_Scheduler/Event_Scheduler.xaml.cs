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
            showMessage("Add");
        }

        private void btnPrint_MouseUp(object sender, MouseButtonEventArgs e)
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

        private void showMessage(String title)
        {
            MessageBoxResult result = MessageBox.Show(title + " Not Implemented Yet",
                                          title,
                                          MessageBoxButton.OK,
                                          MessageBoxImage.Information);
        }
    }
}
