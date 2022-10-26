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
    /// Логика взаимодействия для ListOACPage.xaml
    /// </summary>
    public partial class ListOACPage : Page
    {
        public ListOACPage()
        {
            InitializeComponent();
            AdressMAQCDG.ItemsSource = DBEntities.Getcontext().LegalAddressOAC.ToList()
                .OrderBy(c => c.IdLegalAddressOAC);
        }
        private void Ref()
        {
            AdressMAQCDG.ItemsSource = DBEntities.Getcontext().LegalAddressOAC.ToList()
                .OrderBy(c => c.IdLegalAddressOAC);
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void DelBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void EditBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
