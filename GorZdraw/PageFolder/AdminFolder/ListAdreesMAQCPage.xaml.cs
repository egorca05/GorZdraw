using GorZdraw.ClassFolder;
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
    /// Логика взаимодействия для ListAdreesMAQCPage.xaml
    /// </summary>
    public partial class ListAdreesMAQCPage : Page
    {
        public ListAdreesMAQCPage()
        {
            InitializeComponent();
            AdressMAQCDG.ItemsSource = DBEntities.Getcontext().LegalAddressMAQC.ToList()
                .OrderBy(c => c.IdLegalAddressMAQC);
        }

        private void Ref()
        {
            AdressMAQCDG.ItemsSource = DBEntities.Getcontext().LegalAddressMAQC.ToList()
                .OrderBy(c => c.IdLegalAddressMAQC);
        }

        private void DelBtn_Click(object sender, RoutedEventArgs e)
        {
            if (AdressMAQCDG.SelectedItem == null)
            {
                MBClass.ErrorMB("Выберите адресс для удаления");
            }
            else
            {
                try
                {
                    LegalAddressMAQC legalAddressMAQC = AdressMAQCDG.SelectedItem as LegalAddressMAQC;
                    if (MBClass.QestionMB($"Удалить выбранный препарат?"))
                    {
                        DBEntities.Getcontext().LegalAddressMAQC.Remove(legalAddressMAQC);
                        DBEntities.Getcontext().SaveChanges();
                        Ref();
                    }
                }
                catch (Exception ex)
                {
                    MBClass.ErrorMB(ex);
                }
            }
        }

        private void EditBtn_Click(object sender, RoutedEventArgs e)
        {
            LegalAddressMAQC legalAddressMAQC = AdressMAQCDG.SelectedItem as LegalAddressMAQC;
            VariableClass.IdAddresMAQC = legalAddressMAQC.IdLegalAddressMAQC;
            this.NavigationService.Navigate(new EditAdreesMAQCPage(AdressMAQCDG.SelectedItem as LegalAddressMAQC));
            Ref();
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddAdreesMAQCPage());
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
