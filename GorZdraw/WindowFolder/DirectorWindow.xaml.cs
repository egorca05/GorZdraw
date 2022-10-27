using GorZdraw.PageFolder.AdminFolder;
using GorZdraw.PageFolder.DirectorFolder;
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

namespace GorZdraw.WindowFolder
{
    /// <summary>
    /// Логика взаимодействия для DirectorWindow.xaml
    /// </summary>
    public partial class DirectorWindow : Window
    {
        public DirectorWindow()
        {
            InitializeComponent();
        }


        private void HistoryBtn_Click(object sender, RoutedEventArgs e)
        {
            DirectorFrame.Navigate(new HistoryPage());

        }

        private void OrderBtn_Click(object sender, RoutedEventArgs e)
        {
            DirectorFrame.Navigate(new OrderPage());

        }

        private void StafffBtn_Click(object sender, RoutedEventArgs e)
        {
            DirectorFrame.Navigate(new ListStaffDirectorPage());

        }


        private void LogOutIm_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            AuthorizationWindow authorizationWindow = new AuthorizationWindow();
            authorizationWindow.Show();
            this.Close();
        }

        private void RollUpIm_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Application.Current.MainWindow.WindowState = WindowState.Minimized;
        }

        private void CloseIm_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            ClassFolder.MBClass.ExitMB();
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {

        }
    }
}
