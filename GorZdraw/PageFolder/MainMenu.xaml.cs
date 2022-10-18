using GorZdraw.PageFolder.StaffFolder;
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

namespace GorZdraw.PageFolder
{
    /// <summary>
    /// Логика взаимодействия для MainMenu.xaml
    /// </summary>
    public partial class MainMenu : Page
    {
        public MainMenu()
        {
            InitializeComponent();
        }

        private void SellBtn_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new SalePage());
        }

        private void StorageBtn_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new NomenclaturePage());
        }

        private void EditBtn_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new EditPage());
        }

        private void OrderBtn_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new AddOrderPage());

        }
    }
}
