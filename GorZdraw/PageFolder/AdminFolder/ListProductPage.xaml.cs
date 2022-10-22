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

namespace GorZdraw.PageFolder.AdminFolder
{
    /// <summary>
    /// Логика взаимодействия для ListProductPage.xaml
    /// </summary>
    public partial class ListProductPage : Page
    {
        public ListProductPage()
        {
            InitializeComponent();
            ProductDG.ItemsSource = DBEntities.Getcontext().Product.ToList()
                .OrderBy(c => c.IdProduct);
        }

        private void CategoryBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new CategoryPage());
            Ref();
        }

        private void Ref()
        {
            ProductDG.ItemsSource = DBEntities.Getcontext().Product.ToList()
                .OrderBy(c => c.IdProduct);
        }
    }
}
