using GorZdraw.DataFolder;
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

namespace GorZdraw.PageFolder.StaffFolder
{
    /// <summary>
    /// Логика взаимодействия для InPage.xaml
    /// </summary>
    public partial class InPage : Page
    {
        public InPage()
        {
            InitializeComponent();
            ProductCb.ItemsSource = DBEntities.Getcontext()
                .Product.ToList();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
