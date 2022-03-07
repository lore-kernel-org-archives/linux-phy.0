Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F68AC433F5
	for <linux-phy@archiver.kernel.org>; Mon,  7 Mar 2022 02:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXXJbtWLRFU4vE1A7wevIl8da/kThCbkG3Jo3oTuxcU=; b=z93z0CHAqL9hIl
	F/4D1dPD0qx6gluGnILXVeeaFeQ2uSmdq/1KRT2zIVNxsapjTTnF4kGMRDK14bgm9vSihS4TxYOMS
	qzYub1vYGvYCcxaDM5farou/UdgO5p1fZryTOP8dvx3Vu5fPB3Hv06pPrAS5rWXy1w8qNXgECDdgb
	dVSCxYO1h+K5Pwzo4lDEesavGESt33c+wiVADHuzX+Mo78XDiFyRVLr6y4K3O9b57Ts8MI9XuGswd
	HTUopP/tnxxGa2HuiF3GaBRz07AmOa7pvyoGzOqYMJJYs18E+nWe5gmkyacLrfMmfLZEPC9yd3Ztc
	p6MXfFmGcgQE90L/9uSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nR2rn-00FXZX-NN; Mon, 07 Mar 2022 02:12:55 +0000
Received: from mail-dm6nam10on20705.outbound.protection.outlook.com
 ([2a01:111:f400:7e88::705]
 helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nR2rQ-00FXQH-Od; Mon, 07 Mar 2022 02:12:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hPnVwdvcnByp319qsuWGSlyWxXWIMt9jhIpeacuSnR5dZHLeRV298Fg3J1F9iXA+9eoRC9VxiUdEAvQo2rLP3jxijOZ2tJWIay0BkSail2E16DHfZTUTSRz8gn+j/QbOcX5lAx6DF9ewUxubLwr0LL8hay0eba+NCiXZ9M+LjL2gPaHfGT/IBo7/TrcCWqXToHOGkf2493bV6LOBvpPn0WtZNa4TDG8p5c27QxtR7D+Bnyi0cu8jqpkpOGCG1XevXXhN0N6C/smVSFVBxOj37EsteDt41cLPNtVH4CFWU2PfXNhL7H9vf5iG5Sfj3fwiMvTpf9B97D7ZiSgu10sN5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dZDWo92VHFVhBfNmNY04LIkL62bcm1O6DKC1gANq4Oc=;
 b=EGU1+/F1/pM+d+rQ+x4d0iudpak0VXX/AocmH+shLiy0GxZF+hWTnJq4R4yD400Lx+KnboZIfmo5UgNof/ZJUoLdcdZCLodcaakEM5E7MQwmIYeYCu8dU19wH2MH7XL0aLEj0y8gEqW79ctWvFkMnmKKmEE84KV/U7OPKAg4vmhB4PDPtz3Vy0OWag6cZlNby14SpwI9ny1CdiFVY8h5rKCxRJUfNzrdRfMRPWeEuRUamIaXcsnEAW3I/eP7zw7HuXvOgJ52FvplNzFyBuTqSndGlO9lN/X9G43zidXq426iU1qCtZ3Zo4jt+Az3C9DCN37MYiZ4O52t1w+HfOM+hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=in-advantage.com; dmarc=pass action=none
 header.from=in-advantage.com; dkim=pass header.d=in-advantage.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inadvantage.onmicrosoft.com; s=selector2-inadvantage-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dZDWo92VHFVhBfNmNY04LIkL62bcm1O6DKC1gANq4Oc=;
 b=wM7RLsuDQwIKJmiIvcxpR/oi8ClqHXoVkeuptA+dDJvPOpXKKvUxTGX4Wr77d0IiV3uWZGylZUKrZq8IoDoLgOcq4vgJlGRz9/hRLktOR75meC0AjxhGz1Ixh23YBrprn/qZfYt46dyUDlahvuWQ/P7HbzEMUZipbUQWbp3FkVg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=in-advantage.com;
Received: from MWHPR1001MB2351.namprd10.prod.outlook.com
 (2603:10b6:301:35::37) by SA2PR10MB4553.namprd10.prod.outlook.com
 (2603:10b6:806:11a::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Mon, 7 Mar
 2022 02:12:25 +0000
Received: from MWHPR1001MB2351.namprd10.prod.outlook.com
 ([fe80::7c:dc80:7f24:67c5]) by MWHPR1001MB2351.namprd10.prod.outlook.com
 ([fe80::7c:dc80:7f24:67c5%6]) with mapi id 15.20.5038.026; Mon, 7 Mar 2022
 02:12:25 +0000
From: Colin Foster <colin.foster@in-advantage.com>
To: linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-phy@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Marc Zyngier <maz@kernel.org>, Hector Martin <marcan@marcan.st>,
 Angela Czubak <acz@semihalf.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Russell King <linux@armlinux.org.uk>,
 Heiner Kallweit <hkallweit1@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 UNGLinuxDriver@microchip.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Lee Jones <lee.jones@linaro.org>, katie.morris@in-advantage.com
Subject: [RFC v7 net-next 02/13] pinctrl: microchip-sgpio: allow sgpio driver
 to be used as a module
Date: Sun,  6 Mar 2022 18:11:57 -0800
Message-Id: <20220307021208.2406741-3-colin.foster@in-advantage.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220307021208.2406741-1-colin.foster@in-advantage.com>
References: <20220307021208.2406741-1-colin.foster@in-advantage.com>
X-ClientProxiedBy: MW4PR04CA0174.namprd04.prod.outlook.com
 (2603:10b6:303:85::29) To MWHPR1001MB2351.namprd10.prod.outlook.com
 (2603:10b6:301:35::37)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 629a8cde-c2a0-407b-99b5-08d9ffdfec17
X-MS-TrafficTypeDiagnostic: SA2PR10MB4553:EE_
X-Microsoft-Antispam-PRVS: <SA2PR10MB4553C8FB06C5DD4A2E0423FAA4089@SA2PR10MB4553.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MiEZizXy0Pl4UbElPYpeO5wNyvdRxB0XTNyAJjoYDb7YhVhGjzEdw/QHxkHlZYFVXFZn/td9aH2zwsQKd8jaRTz0p9oPZZ0TbIoE6BVAAlZgr5O4vUFicedanrEa+okNPjUIk18wuXDxTnXBLszgLtdwPTg902Z8hl9VJjkzCaFQD6/Xxkmk6jH/hSoKl7xGLqMZS/huDVxLDUasRh6EShyI3dmeRmNzrsp8Bh3hk0kKW6ZULc6zGDxW5BEoA6+jHF8knDwXW57j+HM8EQAbCJfYS1zWkERc/+8BZu/oAwo7Oodq86fqlSgetneWmitFgef+ADHmsJv+2hI32NN+aMZO9htKqRcJVrEElss+g9nq3mkMSDkvUYdLrFaNd1QFW7eh8Q9zsCsnwJ6H4lGtFb0o1h7O589B0WHBKEJqaE6sN69quWK84BoWTQbTGRcxIJkv+q8//2Jtwy8UZ66uFrzwh3wdZhMj2hbIiVXhXaejvzg4iJXHrZRwSa9lFuDfoxZrVPl3HK8WDV7t3N+1lyvhNKxvOyMMdfGeutkckcSZO9/tbLm847Bxq72LfwzfCastwZjIj8sMeu+Nu0V1XE+Z6gmn7UHWaGxAqb4sN+6dgpIf12x87Wtc3Yy/mbJcv0vU2facU2ttWY5U5KOfl+xnViu14cXMtV3bB7ioVVs+tv68twEg8Ykpf/8PhpWT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2351.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(376002)(42606007)(396003)(39830400003)(136003)(346002)(38350700002)(86362001)(508600001)(107886003)(38100700002)(6486002)(54906003)(36756003)(44832011)(6666004)(6506007)(66556008)(66946007)(4326008)(316002)(66476007)(8676002)(6512007)(26005)(186003)(8936002)(83380400001)(52116002)(1076003)(5660300002)(7416002)(2616005)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OxEe+1Wo6XCOO4OXpW+zHbTBtcIKvOcndgmD1nH1YRLkGKhdSSCf4g8sOpT3?=
 =?us-ascii?Q?TXIimBXcnUTs/cV4Mzs0CbePP7S/2MKireLKOWsUWGVpQVaNOQv8wOQEzmts?=
 =?us-ascii?Q?1zyZpCQtYAAYpHuLNjYrRKntShfjGdemx2flLIJoVml99JL12AQPTVpRckwo?=
 =?us-ascii?Q?Ex0Bt7Z4mvuc14dmZ52LxkT/hJLu5sFCw4SNkKsIFQcv1yGoQ7fsVUg2MMRm?=
 =?us-ascii?Q?UhQcP2wQoVjiHyzVY/ZmxygEh6kvmrvNxJu3K2ldDKjxm8jn0LUNmJpE6iFg?=
 =?us-ascii?Q?7bd5nIVcE9F/6LadoH7ZpX6GPGgaM1HsDf7O2/IpZ42EyWSC00k9Fn33nieI?=
 =?us-ascii?Q?uJCbrhFgWa/AE+FcG4fnLwNZt5Sx2PYTdLfPQgnSPiyBRxJ/yVoXOzbfYl40?=
 =?us-ascii?Q?mQ8nWVbBSYv/VIw0AUgKgoBQ+y3qYI7mXOS9yPnd17tgw2VnA9IsykYA5h/6?=
 =?us-ascii?Q?wJDuonushLa/3FAcsZIYbNNFe6y28w+xXE7WuxpFjsXlJYBVL4t/xmWGu/eI?=
 =?us-ascii?Q?+I4/dXbQfYZvj0FxiYSjB3MMjqkWQtffHQq1S3WlQQHl8OacMe1Au5bDussJ?=
 =?us-ascii?Q?lK2UkSLF+aFWkhm7StCZAPHjbciN4ezL6On7Fifge2kwJZ2UHfO+SbKjfGMl?=
 =?us-ascii?Q?49rrHMJ0oPgz4uqOHcNAA2LNt+/ldQhuM/D+hYbA36gYPJ6DOMRSdrXX4G6L?=
 =?us-ascii?Q?NasjfIwH2jfRw2R1sX+s77XXA9UZtGsuTDvTLWxaRbLo9+9/MR3OkDTlrbCf?=
 =?us-ascii?Q?1Yqkt8wisfr3VP0846vTF1Pqe3lAQmZ58rBMwCRgN071TAdPmavSYOVfDnXL?=
 =?us-ascii?Q?shesDn1kDdPqHL8BZ3KztsQK7kQxTbaI5bkIIFtJwsHYhYJbwjAHhOMh1ESm?=
 =?us-ascii?Q?shJ6nLlnz3J1Huistja88hJ1JKJXBvooFOXB7p/uyj7y9reYcfEXvP2Jhpv9?=
 =?us-ascii?Q?zXMN5VQK8M77KkETOMRbmZWqKh8WOcRS61pTvoP8XcmSeBwDVYaH1jyT0xEC?=
 =?us-ascii?Q?IPgTq+Uojhvfpr2gPiDc9T4tTxPSG/ARhd0PsfEUrnLI73KdvajUBa1bUs0o?=
 =?us-ascii?Q?ljMhPobSNdeXPcc0HfF89CVK4OLtwe9D2STHLBLjPBzShbH2GtNF+vnmAtj2?=
 =?us-ascii?Q?VFbKw8DsfdzfTcF1jYVUWX7FNyLDpWADoLa1BF5OHqx80uZUDxWRpZ5szZrY?=
 =?us-ascii?Q?1f3ZCmS5+oEQNo4oOq2zy8ACevP0OHcH8yq6561iXY9Yo2gCv3CP/CEp8VYr?=
 =?us-ascii?Q?WrCwYQBsDYqSELAbGQGVUpMuD4NuK9kgUt+XnfhNQu9Qur9XamUttJ2GvH9a?=
 =?us-ascii?Q?zV/fGqjXfQbx09HAt+bOX+hwGsfV25GHap/drm5lMoR87X/AnrG93xmujp3O?=
 =?us-ascii?Q?0tFf3cvX4ck+MjhFwCyqLO6PJWWg0H797LVqJ+pZ8G/Ux3RfdsWveyEItTjo?=
 =?us-ascii?Q?ULNIMzgmaX+LFAqK38pY1d0dDaAgXsCTYlqJ9JiHgwdSosDNOJqU9JVN8YSO?=
 =?us-ascii?Q?17iWsNQuo+ZoJBN5o66RmefEJZZCuT/+PJl8lRTInAzBdxjNuzSk1gE0xoOw?=
 =?us-ascii?Q?ZlCL8336nkMdiu0gWvt1jsJwTUvYaHlb7mNLzIKh4g7udvdM4D83ki7icVD1?=
 =?us-ascii?Q?LQQkNxFdcdg/6A3c3be8WJr0eAiesOPdpuI+7HnvmVHtMHGfIDwKCnL6hPlu?=
 =?us-ascii?Q?Pj3zVw=3D=3D?=
X-OriginatorOrg: in-advantage.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 629a8cde-c2a0-407b-99b5-08d9ffdfec17
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2351.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2022 02:12:25.6207 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 48e842ca-fbd8-4633-a79d-0c955a7d3aae
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qwjwzsB9iuxwmoYwOL51QJ4l4wo8pvNNrPBWWCgUkM5UqMRpeSnvMZ0FFdDFe1dHm9fds8ega7Phux+cBZtp+WawlrjzOMGmwYnWjn7h6w0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4553
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220306_181232_826355_3A5426E9 
X-CRM114-Status: GOOD (  13.55  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

As the commit message suggests, this simply adds the ability to select
SGPIO pinctrl as a module. This becomes more practical when the SGPIO
hardware exists on an external chip, controlled indirectly by I2C or SPI.
This commit enables that level of control.

Signed-off-by: Colin Foster <colin.foster@in-advantage.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/pinctrl/Kconfig                   | 2 +-
 drivers/pinctrl/pinctrl-microchip-sgpio.c | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 1b367f423ceb..7ff00c560775 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -292,7 +292,7 @@ config PINCTRL_MCP23S08
 	  corresponding interrupt-controller.
 
 config PINCTRL_MICROCHIP_SGPIO
-	bool "Pinctrl driver for Microsemi/Microchip Serial GPIO"
+	tristate "Pinctrl driver for Microsemi/Microchip Serial GPIO"
 	depends on OF
 	depends on HAS_IOMEM
 	select GPIOLIB
diff --git a/drivers/pinctrl/pinctrl-microchip-sgpio.c b/drivers/pinctrl/pinctrl-microchip-sgpio.c
index 639f1130e989..e8e47a6808e6 100644
--- a/drivers/pinctrl/pinctrl-microchip-sgpio.c
+++ b/drivers/pinctrl/pinctrl-microchip-sgpio.c
@@ -913,6 +913,7 @@ static const struct of_device_id microchip_sgpio_gpio_of_match[] = {
 		/* sentinel */
 	}
 };
+MODULE_DEVICE_TABLE(of, microchip_sgpio_gpio_of_match);
 
 static struct platform_driver microchip_sgpio_pinctrl_driver = {
 	.driver = {
@@ -923,3 +924,6 @@ static struct platform_driver microchip_sgpio_pinctrl_driver = {
 	.probe = microchip_sgpio_probe,
 };
 builtin_platform_driver(microchip_sgpio_pinctrl_driver);
+
+MODULE_DESCRIPTION("Microchip SGPIO Pinctrl Driver");
+MODULE_LICENSE("GPL v2");
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
