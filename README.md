# WilnBill - Modern WiFi Billing Management System

![WilnBill](install/img/logo.svg)

> **A complete reimagining of WiFi billing management with modern design and enhanced user experience**

## Overview

WilnBill is a modern, feature-rich WiFi billing management system built with PHP and MySQL. It provides a complete solution for managing Hotspot and PPPOE connections with Mikrotik routers, featuring a completely redesigned user interface that's both beautiful and functional.

## Key Features

### Core Functionality
- **Modern UI/UX**: Completely redesigned dark admin interface and light customer interface
- **Responsive Design**: Fully responsive across all devices (desktop, tablet, mobile)
- **Voucher Management**: Generate and print vouchers with modern interface
- **Multi-Router Support**: Manage multiple Mikrotik routers
- **Hotspot & PPPOE**: Support for both connection types
- **FreeRADIUS Integration**: Full RADIUS authentication support
- **Self Registration**: Customer self-service registration
- **User Balance**: Comprehensive balance management system
- **Auto Renewal**: Automatic package renewal using balance

### Modern Design Features
- **Dark Admin Theme**: Modern dark interface with vibrant gradients
- **Light Customer Theme**: Clean, bright customer interface
- **Glass Morphism Effects**: Modern visual design elements
- **Smooth Animations**: Enhanced user interactions
- **Mobile-First Design**: Optimized for all screen sizes
- **Modern Typography**: Inter and Poppins fonts for better readability

### Communication & Notifications
- **Telegram Integration**: Admin notifications via Telegram bot
- **WhatsApp Notifications**: Customer notifications
- **SMS Validation**: Secure login verification
- **Email Notifications**: System alerts and updates

### Payment & Plugins
- **Multiple Payment Gateways**: Support for various payment methods
- **Plugin System**: Extensible architecture for custom features
- **Coupon System**: Discount and promotional codes
- **Multi-Language Support**: Internationalization ready

See [How it Works / Cara Kerja](https://github.com/wilndotcom/wilnbill/wiki/How-It-Works---Cara-kerja)

## Payment Gateway And Plugin

- [Payment Gateway List](https://github.com/wilndotcom/wilnbill/wiki/Payment-Gateway)
- [Plugin List](https://github.com/wilndotcom/wilnbill/wiki/Plugins)

You can download payment gateway and Plugin from Plugin Manager

## System Requirements

Most current web servers with PHP & MySQL installed will be capable of running WilnBill

Minimum Requirements

- Linux or Windows OS
- Minimum PHP Version 8.2
- Both PDO & MySQLi Support
- PHP-GD2 Image Library
- PHP-CURL
- PHP-ZIP
- PHP-Mbstring
- MySQL Version 4.1.x and above

can be Installed in Raspberry Pi Device.

The problem with windows is hard to set cronjob, better Linux

## Changelog

[CHANGELOG.md](CHANGELOG.md)

## Installation

### Quick Installation

1. **Download the latest release**
   ```bash
   git clone https://github.com/wilndotcom/wilnbill.git
   cd wilnbill
   ```

2. **Database Setup**
   ```bash
   # Import the database schema
   mysql -u username -p database_name < install/wilnbill.sql
   ```

3. **Configuration**
   ```bash
   # Copy and edit the configuration file
   cp config.sample.php config.php
   # Edit config.php with your database settings
   ```

4. **Web Server Setup**
   - Point your web server to the `ui/` directory
   - Ensure `system/cache` and `system/uploads` are writable
   - Set up URL rewriting if using Apache/Nginx

5. **Cron Job Setup**
   ```bash
   # Add to your crontab (every minute)
   * * * * * /usr/bin/php /path/to/wilnbill/_cron.php
   ```

### Detailed Installation

For detailed installation instructions, visit our [Wiki](https://github.com/wilndotcom/wilnbill/wiki)

### Docker Installation

```bash
docker-compose up -d
```

### Requirements

**Minimum Requirements**
- PHP 8.2 or higher
- MySQL 4.1.x or higher
- PHP Extensions: PDO, MySQLi, GD2, CURL, ZIP, Mbstring
- Web Server: Apache, Nginx, or LiteSpeed

**Recommended**
- PHP 8.3+
- MySQL 8.0+
- SSL Certificate
- Dedicated server or VPS

## Freeradius

Support [Freeradius with Database](https://github.com/wilndotcom/wilnbill/wiki/FreeRadius)

## Community Support

- [Github Discussion](https://github.com/wilndotcom/wilnbill/discussions)
- [Telegram Group](https://t.me/phpmixbill)

## Technical Support

This Software is Free and Open Source, Without any Warranty.

Even if the software is free, but Technical Support is not,
Technical Support Start from Rp 500.000 or $50

If you chat me for any technical support,
you need to pay,

ask anything for free in the [discussion](https://github.com/wilndotcom/wilnbill/discussions) page or [Telegram Group](https://t.me/phpmixbill)

Contact me at [Telegram](https://t.me/wilndotcom)

## License

GNU General Public License version 2 or later

see [LICENSE](LICENSE) file


## Donate to wilndotcom

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://paypal.me/wilndotcom)

BCA: 5410454825

Mandiri: 163-000-1855-793

a.n wilndotcom

## SPONSORS

- [mixradius.com](https://mixradius.com/) Paid Services Billing Radius
- [mlink.id](https://mlink.id)
- [https://github.com/sonyinside](https://github.com/sonyinside)

## Thanks
We appreciate all people who are participating in this project.

<a href="https://github.com/wilndotcom/wilnbill/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=wilndotcom/wilnbill" />
</a>
