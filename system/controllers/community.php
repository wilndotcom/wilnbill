<?php
/**
 * WilnBill - PHP Mikrotik Billing (https://github.com/wilndotcom/wilnbill/)
 *  by https://t.me/ibnux
 **/

_admin();
$ui->assign('_title', 'Community');
$ui->assign('_system_menu', 'community');

$action = $routes['1'];
$ui->assign('_admin', $admin);

switch ($action) {
    case 'rollback':
        $ui->assign('_title', 'Rollback Update - Disabled');
        // GitHub API calls disabled for security
        $ui->assign('masters', []);
        $ui->assign('devs', []);
        $ui->display('admin/rollback.tpl');
        break;
    default:
        $ui->display('admin/community.tpl');
}