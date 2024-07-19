Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5900C3DA59
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jul 2024 07:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Q+fP1++Ww+hUqev5Y534PLQCUi8ZWbaTRrcSBNo8eY=; b=I48V2Tb7bnnY/m
	F+p8RZa+ZbFxJ2/qwAnXbM/6ZSKJDtMHzLtjlXIQkFbbxE8W4yFZvmrUaxUkm/HORM+PuOvrRnnUN
	JYYRW+KJYkJwQF61SPtwKKY9CcvFoTo5grmPmtghGJfQv4wyyYyMpnTuhnEIPkkhpdl+0T/r85Vkr
	q2FaoOAczF3Tlo9eW7Tiu3hMN8oZ8VfpBvr9JLD6tGz/vDQGhO2wMsfEEW9/jVbLzSpI2ylMuxcwN
	Ro1Fc3eNvOs0JLYS43ajhA93a0n4XKgyDiEK4xYpQ3+/yZG9slAwdKFkAGzZKIkmJbsmNxje/Rnem
	37fRDK9i6lM9X9O787dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUhti-00000001twa-0tm2;
	Fri, 19 Jul 2024 07:19:22 +0000
Received: from mail-westeuropeazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c201::] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUhte-00000001tvu-3dpI;
	Fri, 19 Jul 2024 07:19:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mp/FbgZdgOZq2KhkupNI5dcnxr4LMoY4chSop6pX8B2wPEnWxtfISOxpqXIjaw/tQiOsXUQ9Fpxg7I1O0u6FaDan8OJiagjM9OBwYUDe8iZivqwFmxtewTAR0KxQI/z1G65OCREe6udxvXkW1qsDfBdt33Y2RnQhftmywnHhVxNhaurLwf723t+7UG0T5V6zesDM0RMLE4oMCgn0RvmNlcgGXjr9qbegUMgzkYAmaWMNAA+l5igbBBZzbhhoaOgiFQJQKgF1HXYPLPApXCdvsLZcjuN2Ad927o3gZM5s6Jj4k+XFUIfyHsttFUA4MYkc4PUtjZWQXZcniucA7xoMWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y/RT/wffTW+MrZ8SE63lSs+pKacIc8eXFwhZnBD45WQ=;
 b=e8KfCIwBQTBrB/6985XYOQt0LEI/Dj0Di1bQvCMfSdZ9Qfa2vNemLAS7sVzQxzocpOD370z+Be1L6lL4+F/YA7lfdiDQGuj4Vk1Z+qG16HtOzWn+fWMZZvvOyhN/NMpGr44k2/wekZqnFgwq+FF4a15Np6J5txeYfbi1b2ibDiAanMMezoyLtFPCh0gvMtJT8F9PUv/nKvBxUq05FM8zILG2AF/+Y3rz2cOmIrn13XFivynZ8lhBIb3VuoBU+X3jcGvIBqAvtksznQBTAWusQlFmpq+1rXobJt7ZsnRF5vL4GZyN0tjoPR4tmZRH6hH/TGzbS9o+lL0KFW2UQ2clHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y/RT/wffTW+MrZ8SE63lSs+pKacIc8eXFwhZnBD45WQ=;
 b=PvaG7+GU6b4yK2pb1npHElOqUMqx/69lzlaqblJJa++iEpgPC1gZSF+QTENIEehbITDG41sZg4hcrsFxok/PswtGIbk/nWViaMlQ/CG+OhqoPxguuMIkCumTpw1Fg63fbPZCI9UCf2YS92JQfNdtcR0jDwsFjZ6GhX9NnEotA1M=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by PAWPR04MB9765.eurprd04.prod.outlook.com (2603:10a6:102:389::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.18; Fri, 19 Jul
 2024 07:19:12 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7%5]) with mapi id 15.20.7784.016; Fri, 19 Jul 2024
 07:19:11 +0000
Date: Fri, 19 Jul 2024 15:16:47 +0800
From: Xu Yang <xu.yang_2@nxp.com>
To: Frank Li <Frank.li@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	gregkh@linuxfoundation.org, peter.chen@kernel.org,
	herve.codina@bootlin.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
	jun.li@nxp.com
Subject: Re: [PATCH 2/6] usb: phy: mxs: keep USBPHY2's clk always on
Message-ID: <20240719071647.dwnsrvv5ndtbqhll@hippo>
References: <20240718102637.3964232-1-xu.yang_2@nxp.com>
 <20240718102637.3964232-2-xu.yang_2@nxp.com>
 <Zpkt9i0jMsYQ7rx5@lizhi-Precision-Tower-5810>
Content-Disposition: inline
In-Reply-To: <Zpkt9i0jMsYQ7rx5@lizhi-Precision-Tower-5810>
X-ClientProxiedBy: SG2PR04CA0192.apcprd04.prod.outlook.com
 (2603:1096:4:14::30) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|PAWPR04MB9765:EE_
X-MS-Office365-Filtering-Correlation-Id: cb1b6743-69d5-4e31-13a1-08dca7c31667
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|52116014|7416014|376014|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OiOV61vERyTSXrl15DvLW9N+CiVHAZsUmLzpE9md02vveqRneZ/W6n8nam8R?=
 =?us-ascii?Q?Pr7NbdSkooMuwAOfDu8i6G8SzTZAchlql4LTvUZGUIfJFWhcnKykxpCoxVOE?=
 =?us-ascii?Q?GKpPKnwQldeBH+/9FtWSk1CgJ7m9bOC1pSpfllzeihPlzIynG18wPMekpHnr?=
 =?us-ascii?Q?jsHb8pFe+Id81/C5t3LoADBWwOtWtUFQLxyaxv7NFxL6/kehKCOS0/t5EaSi?=
 =?us-ascii?Q?Sd6GWTmFFDxfIKxlgs8F2muW4eWfLm+FGFI5d+Kaot3sVKVa8M0HYe8I9QNv?=
 =?us-ascii?Q?R2Sep0Zl4+4o2b1051qVOt/L/qNcomUVwEBhM8fatXyqFBLGvEgFIyPxjOI7?=
 =?us-ascii?Q?qzCqo8buhKghQ4bFfce4oiLL3XfKL3U3NGWDP7CgJOw8JHD3gw/9WHd3HF9l?=
 =?us-ascii?Q?nfvbbKTsARrwqIajY5A6rldHEgam/+ZbZXS9xCc/9Kz2svuebnQFuGLU0Y1m?=
 =?us-ascii?Q?1pOOcC0KHogE7aTrXYcUq5iiKB1VPWuT7NeomcJusbbBhSG7PVAAfWFGab6x?=
 =?us-ascii?Q?dllcH/I2Igcjulp9aPWN/SCmy4cQAZvwfPGA4z+1e9QwF8RpDh6ECF4dvdgs?=
 =?us-ascii?Q?WMOcEw+7yziNSWtHNp8D3AbLti8F6PUcHqIrznh/tzR6B+EasgvJZdXFSUTY?=
 =?us-ascii?Q?V7IC6nZywpZcC5jYftZ+5CKQA5y3p3S4vDSD6ycAngkiBnBQhN8FCMxxmfv6?=
 =?us-ascii?Q?WztETjPFyt4h9rwQPS/XUuyqjOiEhR9HbLU+1MUIEbh+1zX9QZiRs8P9RKgp?=
 =?us-ascii?Q?VkLkaT/jaEd3I3rJkd5ayHfGG2mPgKJMUiZYlhIRgsB/rc+EPDyoS1IzLjBR?=
 =?us-ascii?Q?dG8tNsdP8AZPCZoznU3xSpJ+TBe80qje2lyF/WFpDiWs//ne9kLZe/0Y3ml3?=
 =?us-ascii?Q?RZE6ay7/egiPC1Np3Cx7zkAvJTYtZFqgBOewfTVgHBYnAmgsjUiAOp9hT5YS?=
 =?us-ascii?Q?xlKk1ZX89l3o9lSvk/+4F4+8biDBI9PpDkZ6I41ufwlD0RK5yq7GwGBOaGij?=
 =?us-ascii?Q?2BuwPk4yGPq5+x4LQBBscE4f81DpUc6TVmN4RMRkRZG63/d3ZOTLC/rrjY5w?=
 =?us-ascii?Q?L+y3nZldruznaOfWMqxNJDZ3cR+z/Y1wRL52Cu6GCkBPDUu64ngOQKpLxESf?=
 =?us-ascii?Q?PW6U4QeUnbnCzd9HsLok08ivgxM9umfRRfS8jAytSNuHFI5NxYAsaRIQFlzF?=
 =?us-ascii?Q?S6wr/QT5zqku2OVijV5/BTwJBtls7o+BIYPgBe5afXFNB7rP+YXMIfI0ExDL?=
 =?us-ascii?Q?goYwe5caw6KEyBZwIw3/9HXmTQVvgL049dyKDAQLUKLPIjVY5M1UijDIl0oW?=
 =?us-ascii?Q?rzC1AqOSuNGTTJ1GAlqWaajAoBthpV8LU5wVLYMFbUkHYgwZ/0KdSpY+WFR3?=
 =?us-ascii?Q?LjVQ4hGvIcjTwL32r4QabWgzlryXV0jObxAD7rGvOeEwcXOU/g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(52116014)(7416014)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FiYpq+UiJyUVNs4i6KezT0QIXmPcJ0ZZYlRdBFdFjDNXzFfHS/TzcdBduzhj?=
 =?us-ascii?Q?E2+yAkQFkGu5kwkAWrxRvjFfpd5v3L+sNeiKJjglgNWTnz6gTsTvEsPP3sMg?=
 =?us-ascii?Q?TKzKgdiXmrZ8JA8blBaAli1cblGyxFAOQ5waVIYw8utlsc0i+QSH8YsUXITN?=
 =?us-ascii?Q?5JzvB3jT26J7JNoPVwx/+1mpHJkm0+KUSPEHnBzkA5tLMf4G6+mzSEI8A/7f?=
 =?us-ascii?Q?9GJzIYcyRUwjyr7LQbd83Ogl6dWArfSOSizPrYNu0ySZF17XTiWBUdPREnn2?=
 =?us-ascii?Q?28JxQwahoKyCeUbb6oB7FrkWLJ+qcQKxhq1+SdxNOfh9flFCR1lIdYNs++by?=
 =?us-ascii?Q?onbtWlAPhY0PnNSXtZYN/8xqzx1xdNMzkaaUHs0IdV1qhYnv0WPyD45b7C6D?=
 =?us-ascii?Q?TRCqdVhM98EvnMKVz55PEC24n037iOtyXdxdJWVitGSx3dl7YOHEvHknbGmu?=
 =?us-ascii?Q?X4jJ4Fk5ZclPgw2J89I4uElQuJETzlQlsB48Lp0uKVpBu+7h9DKkwaCzujWT?=
 =?us-ascii?Q?O9UI9lHmcOkJxc+1ixP9LjiGvFWZcrQ9ECI4rmxpLHu9ynEjUI9mIEqrWGOc?=
 =?us-ascii?Q?rOSYqM3RDJFkseJzrVZxWwJZdp1YNAfx5WdW3lYknXHpKzQS7MyUmdOwFzrz?=
 =?us-ascii?Q?4MhESmrs6MQlhdK/zO1clLm3PIcKu57fQP+uuzy5ohasHWhWDu7ak9NuKAXY?=
 =?us-ascii?Q?VNBojNhPxzGwqIyA/RqV79MGK/if52wQBt645r5xYUth+a8wKVvhv+kiW8yX?=
 =?us-ascii?Q?j3aN3fYBuG9RSMi5WGnV6tVxM1Gk4ltVNOZI1FVFL8FmG9G7r+6KwLvoq3fV?=
 =?us-ascii?Q?DMQSgAFK9TAc1Ew5ENM6l0W5GZ88aPsDGsFx8DIq4ARuTqydCmlkqn5CbxjX?=
 =?us-ascii?Q?KFVNuv/w0OL5sDcoXxSisPW39RacvhdTPriZP9JjdA/iod4a1IZ6537583m5?=
 =?us-ascii?Q?r9Sos2wy1YTtVnEc2dLQ5//+qgSuMyR7DXGe7BKrTeJ/dV6ULBYKirvPf1e8?=
 =?us-ascii?Q?ZhSklFDnwiWBzDXZcXs0FU3SsB0Kk2tvhismZzrHTf3XAmmjSMtqiXxHSWA0?=
 =?us-ascii?Q?RkP059UJV3mBKyLGv7zrgsT0UBG4P8DN0sd8P9nQ/6HOsRvPAPyyA5IPa/RW?=
 =?us-ascii?Q?HvNE4Llp8hT6o92TuNPDiaOiuiBrXNT+yTTrLPOZBoreU0WYdEtaOWncX2GD?=
 =?us-ascii?Q?HHdP6dzfIiLNGnXxb+VlbqRCsvYK+7n+cuwpofliMb9Ro4WJ3yhP0LHjhxGX?=
 =?us-ascii?Q?AlsbcJcATKcn7wUR/3X5fh2Uy9ksW2qXcv3ixOJO529kOyKxPNXZV0IeXhsD?=
 =?us-ascii?Q?PXCtU5UUT4BBIehwhuO2MpeC3EEgJBpHd+DPJKmmDAaDrpMiRNl9sNEX3A9c?=
 =?us-ascii?Q?BVenQkxXlJmTysfZNR1bWdi2V/Lun6pQVThY/qhagTPLR/s1sOywRoxfwl2+?=
 =?us-ascii?Q?+aiQnBCkGhCPXwdT75fclP+ZitG7rBASHc4FhOiAUgJR788e/J0IXrZx/+Xa?=
 =?us-ascii?Q?8p/MZNOIaT6YHUUYLBT8/4JXpidfPIdyjw+L/sAYmMh0wPjyxpDuH79Pk/Nq?=
 =?us-ascii?Q?Fb3iQrsl7lYXXaoUHHTf2UarU9B1dZEXPOVUp3Qs?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb1b6743-69d5-4e31-13a1-08dca7c31667
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2024 07:19:11.8794
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VSyLNYyMmAdJG7gGHYXP4r4UpTdoqI3SALyJFi4Y5hD8kjsomuIqCXpjceMrGsMPPdg3w4Gn1kbHK6B7tdXrtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR04MB9765
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240719_001918_938736_3600435A 
X-CRM114-Status: GOOD (  33.06  )
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

On Thu, Jul 18, 2024 at 11:00:06AM -0400, Frank Li wrote:
> On Thu, Jul 18, 2024 at 06:26:33PM +0800, Xu Yang wrote:
> > Per IC engineer request, we need to keep USBPHY2's clk always on,
> 
> "IP require keep keep USBPHY2's clk always on."
> 
> Not personal request, even it is IC expert. It should base on the "fact"
> instead of personal's opinion.

Okay.

> 
> > in this way, the USBPHY2 (PLL7) power can be controlled by
> > hardware suspend signal totally. It is benefit of USB remote wakeup
> > case which needs the resume signal be sent out as soon as
> > possible (without software interfere). Without this, we may see usb
> > remote wakeup issue since the host does not send resume in time.
> 
> So USBPHY2 (PLL7) power can be controlled by suspend signal. USB remote
> wakeup needs resume signal be sent out as soon as possible to match
> 
> "spec requirement" or some other requirement.

Will change.

> 
> > 
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > ---
> >  drivers/usb/phy/phy-mxs-usb.c | 36 ++++++++++++++++++++++++++++-------
> >  1 file changed, 29 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/usb/phy/phy-mxs-usb.c b/drivers/usb/phy/phy-mxs-usb.c
> > index 42fcc8ad9492..b6868cc22c1e 100644
> > --- a/drivers/usb/phy/phy-mxs-usb.c
> > +++ b/drivers/usb/phy/phy-mxs-usb.c
> > @@ -150,6 +150,16 @@
> >  #define MXS_PHY_TX_D_CAL_MIN			79
> >  #define MXS_PHY_TX_D_CAL_MAX			119
> >  
> > +/*
> > + * At some versions, the PHY2's clock is controlled by hardware directly,
> 
> It better declear which version, for example, which chip use if no version
> info in IP.

Okay, will add.

> 
> > + * eg, according to PHY's suspend status. In these PHYs, we only need to
> > + * open the clock at the initialization and close it at its shutdown routine.
> > + * It will be benefit for remote wakeup case which needs to send resume
> > + * signal as soon as possible, and in this case, the resume signal can be sent
> > + * out without software interfere.
> 
> These PHYs can send resume signal without software interfere if not gate
> clock.

Will change.

> 
> > + */
> > +#define MXS_PHY_HARDWARE_CONTROL_PHY2_CLK	BIT(4)
> > +
> >  struct mxs_phy_data {
> >  	unsigned int flags;
> >  };
> > @@ -161,12 +171,14 @@ static const struct mxs_phy_data imx23_phy_data = {
> >  static const struct mxs_phy_data imx6q_phy_data = {
> >  	.flags = MXS_PHY_SENDING_SOF_TOO_FAST |
> >  		MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS |
> > -		MXS_PHY_NEED_IP_FIX,
> > +		MXS_PHY_NEED_IP_FIX |
> > +		MXS_PHY_HARDWARE_CONTROL_PHY2_CLK,
> >  };
> >  
> >  static const struct mxs_phy_data imx6sl_phy_data = {
> >  	.flags = MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS |
> > -		MXS_PHY_NEED_IP_FIX,
> > +		MXS_PHY_NEED_IP_FIX |
> > +		MXS_PHY_HARDWARE_CONTROL_PHY2_CLK,
> >  };
> >  
> >  static const struct mxs_phy_data vf610_phy_data = {
> > @@ -175,7 +187,8 @@ static const struct mxs_phy_data vf610_phy_data = {
> >  };
> >  
> >  static const struct mxs_phy_data imx6sx_phy_data = {
> > -	.flags = MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS,
> > +	.flags = MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS |
> > +		MXS_PHY_HARDWARE_CONTROL_PHY2_CLK,
> >  };
> >  
> >  static const struct mxs_phy_data imx6ul_phy_data = {
> > @@ -206,6 +219,7 @@ struct mxs_phy {
> >  	u32 tx_reg_set;
> >  	u32 tx_reg_mask;
> >  	struct regulator *phy_3p0;
> > +	bool hardware_control_phy2_clk;
> 
> Needn't it. just check MXS_PHY_HARDWARE_CONTROL_PHY2_CLK flag is enough.

Okay.

> 
> >  };
> >  
> >  static inline bool is_imx6q_phy(struct mxs_phy *mxs_phy)
> > @@ -518,12 +532,17 @@ static int mxs_phy_suspend(struct usb_phy *x, int suspend)
> >  		}
> >  		writel(BM_USBPHY_CTRL_CLKGATE,
> >  		       x->io_priv + HW_USBPHY_CTRL_SET);
> > -		clk_disable_unprepare(mxs_phy->clk);
> > +		if (!(mxs_phy->port_id == 1 &&
> > +				mxs_phy->hardware_control_phy2_clk))
> > +			clk_disable_unprepare(mxs_phy->clk);
> >  	} else {
> >  		mxs_phy_clock_switch_delay();
> > -		ret = clk_prepare_enable(mxs_phy->clk);
> > -		if (ret)
> > -			return ret;
> > +		if (!(mxs_phy->port_id == 1 &&
> > +				mxs_phy->hardware_control_phy2_clk)) {
> > +			ret = clk_prepare_enable(mxs_phy->clk);
> > +			if (ret)
> > +				return ret;
> > +		}
> >  		writel(BM_USBPHY_CTRL_CLKGATE,
> >  		       x->io_priv + HW_USBPHY_CTRL_CLR);
> >  		writel(0, x->io_priv + HW_USBPHY_PWD);
> > @@ -819,6 +838,9 @@ static int mxs_phy_probe(struct platform_device *pdev)
> >  	if (mxs_phy->phy_3p0)
> >  		regulator_set_voltage(mxs_phy->phy_3p0, 3200000, 3200000);
> >  
> > +	if (mxs_phy->data->flags & MXS_PHY_HARDWARE_CONTROL_PHY2_CLK)
> > +		mxs_phy->hardware_control_phy2_clk = true;
> > +
> 
> Needn't it.

Okay. Will remove this.

> 
> >  	platform_set_drvdata(pdev, mxs_phy);
> >  
> >  	device_set_wakeup_capable(&pdev->dev, true);
> > -- 
> > 2.34.1
> > 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
