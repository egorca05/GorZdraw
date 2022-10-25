using GorZdraw.PageFolder.AdminFolder;
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

namespace GorZdraw.WindowFolder
{
    /// <summary>
    /// Логика взаимодействия для AdminWindow.xaml
    /// </summary>
    public partial class AdminWindow : Window
    {
        public AdminWindow()
        {
            InitializeComponent();
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                DragMove();
            }
        }

        private void LogOutIm_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            AuthorizationWindow authorizationWindow = new AuthorizationWindow();
            authorizationWindow.Show();
            this.Close();
        }

        private void RollUpIm_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            //AdminFrame.Navigate(new PageFolder.AuthorizationPage());
        }

        private void CloseIm_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            ClassFolder.MBClass.ExitMB();
        }

        private void ProductBtn_Click(object sender, RoutedEventArgs e)
        {
            AdminFrame.Navigate(new ListProductPage());
        }

        private void OrderBtn_Click(object sender, RoutedEventArgs e)
        {
            AdminFrame.Navigate(new OrderPage());

        }

        private void ManufacturerBtn_Click(object sender, RoutedEventArgs e)
        {
            AdminFrame.Navigate(new ListMunafacturerPage());
        }

        private void SuppliersrBtn_Click(object sender, RoutedEventArgs e)
        {
            AdminFrame.Navigate(new ListSuppliersPage());

        }

        private void OrganizationAcceptingClaimsBtn_Click(object sender, RoutedEventArgs e)
        {
            AdminFrame.Navigate(new ListAcceptingClaimsPage());

        }
    }
}
