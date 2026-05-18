Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39128CD4F48
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 07:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NhnTSUEV9FsmqpoQ9FP4kO1fqWDTeJaoO04yIRmRELg=; b=M12ut8wSlDREvq
	nvQdbxqA/UfQfTbc0VEV3npHfrWblnoWQ9GJBqnlQd+ssjWum6RORyrYedQ5S1beW/sZoSmBfyW1Q
	K1a8nTYx3egkOwjlvSQUcd1We8fE5ZHcIJbbTQgaD/+M3bOMvN5LgFw9zRtL0CjKe57pIOlxqoa0Y
	wki9a6/u5MNslJyWJzgW5gS3vvG2ItcpU8uJGJGDU4zN+KOqsEQqFQoTZkBc8YxY2pxd5YnUXHOM9
	yZo67rnPkVf44YsIJsmGsbyyH6M9MZoC0YzUFVBOf6L8k4HAhFDHyzrPUZ0nqJK60FTliXeRsGWCG
	xd0GsUAq1D7xV9AEYJAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOsPl-0000000Eanz-49ho;
	Mon, 18 May 2026 07:29:25 +0000
Received: from mail-swedencentralazon11013001.outbound.protection.outlook.com ([52.101.83.1] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOsPj-0000000EanT-1HjI
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 07:29:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cNLW01Vb+5aVP401liq8RVROdEkbgQfdOMCbVwuXzial0Fi6CK4m/i/XA7AzH7uNpodPQLSo6xCRWya4aC4koLnHphTHmWZw3hDP77/I9Umch8UwpR9Zp+0fyovKK1NGLLWN92PiRrVyYeg3ChzOyG1NXuaJnq4uliezblm4ZTwvWjkK/HNFfBY8fMuauBITDe0n19F7CAiUOTnIAxqaJ6pCcsy6F72kRPmGZ5XkVnV3GFLxQHDcTRsXuFYzhl3jcjmBxpV5LuKrxg6sSYjxi94oydKxtcfcfOXXiVZo7iOGzayTYJDTbbiZHbG0HIfMLU1XfZVU25sMgIPgQkWnVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qM8LuKSOXgnvi6Iq0USB3wwpqNfRxMDXu4nPR4OyP0U=;
 b=ZLF5vnNY+gvp5GfJYU6VXJy6IHeIBYP5DHiZsb1cAulimd1IxWnNBvT9VREJ+XfPtPWiKeADOA8rnmhLGPaTPllcMZrpzxkzyfXUdiLeWjgITVrFjZ4TP+AuAc+sRJUw4f7IofN8LwcUzf/7lzV/NAMaG0vgArdTB+SjO5Rxv16RNINhlrxpBR1qISinKdYcmOCE9AG2K2GBu3j6aU7J6JN65wviPcsbLSGehoF4hxPd3ttBhIeP/T2Lh8TbFhr0n8IkO32S0JziY9/Gmmb+KXDHRimXZaWxH5oAySBjcMTsMCOAoL/HjHsiFrz+rTC0IA189j13lU3UTbuc5nVrtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qM8LuKSOXgnvi6Iq0USB3wwpqNfRxMDXu4nPR4OyP0U=;
 b=NRwFB+ojfFYPGg8la4CwwmO2Jf8lgcgqtUwgtWv9jBcknEM+jkvtP/f7Dv5F1sa9FXkiRzyglxAJdu1YWNiri4Fg8dPQDAvVMqbJ56k/Ax+SmIJ768XpTLREj/U2AeDtKHju0/Ll3HhbpeFCHLn2niJNP9sh2Ee+dc7YUjacOOlurrMdGXBLURa3popUKSwmAyYUd8A50QKCWOI7UNhXNYI09+yJI1TYPutUhunbQPdl0fZmIYKkI8LE69t9RsCV6Ia8s3V6eUHWyeK6zCbyJnmXJSqH8RM2sLX2gHXPyNVOMvRnHyrR+aiO/ZISp3Uhm7X+zGmi5kIoBkf3oe4XGg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PR3PR04MB7402.eurprd04.prod.outlook.com (2603:10a6:102:89::16)
 by VI0PR04MB12302.eurprd04.prod.outlook.com (2603:10a6:800:31c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.21; Mon, 18 May
 2026 07:29:17 +0000
Received: from PR3PR04MB7402.eurprd04.prod.outlook.com
 ([fe80::4129:7aed:b5cb:b13d]) by PR3PR04MB7402.eurprd04.prod.outlook.com
 ([fe80::4129:7aed:b5cb:b13d%5]) with mapi id 15.20.9913.009; Mon, 18 May 2026
 07:29:17 +0000
Date: Mon, 18 May 2026 10:29:14 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, johan@kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 phy-next 2/2] phy: ti: add PHY driver for TI
 DS125DF111 Dual-Channel Retimer
Message-ID: <fkosq3es6lqzabowzpppgsal4lhctb4qyr6ypmazm7vwekd7ix@elffqa6kx5jp>
References: <20260516060309.2282592-1-ioana.ciornei@nxp.com>
 <20260516060309.2282592-3-ioana.ciornei@nxp.com>
 <agnu5Mmf_d8zvWXH@vaman>
Content-Disposition: inline
In-Reply-To: <agnu5Mmf_d8zvWXH@vaman>
X-ClientProxiedBy: FR2P281CA0164.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::14) To PR3PR04MB7402.eurprd04.prod.outlook.com
 (2603:10a6:102:89::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PR3PR04MB7402:EE_|VI0PR04MB12302:EE_
X-MS-Office365-Filtering-Correlation-Id: 12377d53-0994-46d2-cbea-08deb4af2b8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|19092799006|376014|1800799024|11063799003|22082099003|56012099003|18002099003|4143699003|3023799003;
X-Microsoft-Antispam-Message-Info: nfo5Fih/1XxIoPaFKckOZ2DRsHPiPE7tKELgorcaIH/QqcZV9BQ0JB/O8VPI7j4P7sE/bPbjTc8vkWYTV36OauptUwBgKD1fdxMH3VivnThpVM7WG2MPUX3YJ8hRAD4nEz55DIIhaVRr69yNvqKAtNNLSUxpJt4igTQwA4U2AYiZNRGWQBFq77JgMu0WmZDsPvR/u1XCx57p8jkLVHJpulfz/arEaxP/NcYWdiK8VfOPytABxgnWaH8MV0AvkSujiW9CLjsYYZ4KI4i8tjdV27tg27hyoeSdUIXH3VF7YfJlavEC6pzrCl+C1xGG27PAn0PFV64Ku2LAWFwmfN34hl3lScCHZnPboptokcsP5uG2AHFJh6zGOxJL2NqP7gbEYRbK09VahJUy/g40b9KzbPg3U5/XwWGmCl1us8nAdJhNPk5zBliIHDZ1/4sdgxKhSpet2ojSJ+EWnxReiGth+XcSxVqEn6hBdw5Xm/vzmxSnmrh2T+gKkefZbnjcXdzaR8xsVvbi5l4nPkcbzaqYXLa6oWpnC/byJD+4i3E4IkZjoOx0J+Zl48ZORzt8phXB7a0j+07FMOrsdww+zCMGeDV6dwp7iurpW2xMepPPKluBSPKY7LuOV2p1J+KmsDdYKTbQrtLnM38l78MN/GCBCRU4U5vqWGSChumLE/WMB/Cwv8HKkTKWxCx2/vvvWoh74u+QfxE9h1lNru93rvquMg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3PR04MB7402.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(19092799006)(376014)(1800799024)(11063799003)(22082099003)(56012099003)(18002099003)(4143699003)(3023799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fJ6x1WNaKGytn/12fmbN5q7AD4xpesGYXSAm/AG8SVf5rU7DM8dMWwRxCkKN?=
 =?us-ascii?Q?Dc8uBoN16ZZdq9iBPyyZiBeMdJfYWSV2QjHkhDVfh8OanwhRJRG1jDszU1Aj?=
 =?us-ascii?Q?6M0HZDMAihApr5fgWATBOiZI5QjWqZ2RI4htgimzbxUW8a3IfNLgBz7XYhjV?=
 =?us-ascii?Q?6o5dArI1lRGkF+0c7RR1FON2K34T2OR6fjHdYGkhzZI0Wga4Le+LYwWTuIkw?=
 =?us-ascii?Q?ZJbMRqwX7dkEdpBpvN6pmnl3jZc/Ccxs9bWCE4dzYpKcrGgHgZhx05RCuPyc?=
 =?us-ascii?Q?0WjfDnMbUOX4TU5+eBM0yFZeNS1b0i4uU4IIbtslKsz6b6wsL4aCaT1qVRaj?=
 =?us-ascii?Q?uvd4TNoTPFxaZLFwf+q1sbNJWmDfJWKOmeNxqwRYDGLg8K3x9SZ/nZaJ1pwK?=
 =?us-ascii?Q?rp4bOU1G9w3eePJe1++P2SQDFq3vceZzFtaz4/OB2hXKV3nhcnTxdTMC1KUD?=
 =?us-ascii?Q?zNF0FZHA9DExHCrgHdRbfXaw8AzKFYx0byM6cOPcCi2JJ+HYDj7T7Ez6BKLH?=
 =?us-ascii?Q?rO3/vcNu1mSg1b6i0yg62NgO3ggeWZX4eS5LQ9owljqDvplsO++W66pI6DMM?=
 =?us-ascii?Q?n2CI2K4oe4xvU+5pAqk0UlRXoXK1wy13wl2a+q77NAWw/JLBcrCmzClU27gV?=
 =?us-ascii?Q?gTYsVT/T8jgQy1V/XQi1CNhQuEPrhpGclZnjlqrqoSE+rkgiXgHb3HjtN4qf?=
 =?us-ascii?Q?aJLJEqfL7a9v03dSL2oFJDE43jvBlz46KH4p56mxGWCo6OXIsu4/hgMLyIpV?=
 =?us-ascii?Q?8hnHr0AmhTUhdLD6DZvHXVP3AqoQe3nFWYVix1QrMWQIbYKeH7J7geEM5QkG?=
 =?us-ascii?Q?M4W5Iw7KuJYCZ8rrt1OcdKXiJHhQit8fMLioAMhKsRxrNnwOSlUdEywemcYY?=
 =?us-ascii?Q?ppOhJEvxkifMyl7ML85HRPK5AlGHda04yi+V6vPBXy9HSBVA6AfHX9/ntHih?=
 =?us-ascii?Q?lTx1YPpPxaKHSthhVhWKUvwMeWXPEN8vYFRn070ZAvpH04zhbjQDpHDQBksL?=
 =?us-ascii?Q?7+A7IvvdFBCZEknsBd1BO3mhijpmRi45RglgO74gET/NZKftWFrhq0YbCGzf?=
 =?us-ascii?Q?wEVXWLPpxBKB9NQhi/fcmbQaj46SWWEHzF+gIR+GrvmvbsAeS37Zcs6JRZOV?=
 =?us-ascii?Q?EGI/EdPf3rg0W1sfBke9EBYvKnJytRzWLy2kencrIHpkKT3FWjbCohz8zW8Z?=
 =?us-ascii?Q?dcmVRpozF5u5BrCHfixZihjJJatT/5bOPeAAvHlrJMG0lrLCWzLFmO2QAxs/?=
 =?us-ascii?Q?GJMjntm3d5zm9VD8/n6/cyIcq5Q8vcgQ2cdw8GgrOlrMfMrDtt/uGlc0nxy2?=
 =?us-ascii?Q?7TaX/a/HapR3+HujhRGdNiolkVkSdwoYL96gM/FHeO0TCaef3br6/3qVQdnp?=
 =?us-ascii?Q?kRwaulke+77m8MADnY0huhAb6YEmmEVX/c7XQNh1bikWoNhwaUtGiqZQmfSm?=
 =?us-ascii?Q?tVKs+fcTaLHOcQZnIv3ZxtZxm8SgRE3yYRU0IJnMeDKdj/gYiUOK831amp2t?=
 =?us-ascii?Q?u8rMhJ9/BqYua9h9YxBp5qB2q0o5fRtQ8ENi+nCk3Ylogea+ezCq6zwYSAHg?=
 =?us-ascii?Q?8A9kQVqYwSCaREW+x6zQy/PhH86o/y2eXCYgCrX4DsHSECenaTXQve86XuTP?=
 =?us-ascii?Q?L1DgJk3hUSrboL8+vgi7W9e5fm/EE710sKuLrMo6DIq6m/Y/4B7pEhlCDCw7?=
 =?us-ascii?Q?uJ3jTTbuBmR6dBHTtgXDY/HRQr2aYhybIyjR5bE5IPFYVtiRbqIUDniCKnTf?=
 =?us-ascii?Q?Wdte2reTbA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12377d53-0994-46d2-cbea-08deb4af2b8a
X-MS-Exchange-CrossTenant-AuthSource: PR3PR04MB7402.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 07:29:17.7082
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6ZdZJ2KNJzCVpT5Fu6thsdr4ZB4vSjzYros0yhn5EZwug2dRLFfOAIg2bKV7nMZMAQ7apIN7DcEmB4UT8fjijA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB12302
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_002923_349850_363B367A 
X-CRM114-Status: GOOD (  30.74  )
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

On Sun, May 17, 2026 at 10:07:56PM +0530, Vinod Koul wrote:
> On 16-05-26, 09:03, Ioana Ciornei wrote:
> > Add a generic PHY driver for the TI DS125DF111 Multi-Protocol
> > Dual-Channel Retimer. The driver currently supports only 10G and 1G link
> > speeds but it can easily extended to also cover other usecases.
> > 
> > Since the available datasheet (https://www.ti.com/lit/gpn/DS125DF111)
> > does not name the registers, the name for the macros were determined by
> > their usage pattern.
> > 
> > A PHY device is created for each of the two channels present on the
> > retimer. This allows for independent configuration of the two channels.
> > This capability is especially important on retimers which have more than
> > 2 channels that can be, depending on the board design, connected in
> > multiple different ways to the SerDes lanes.
> > 
> > Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> > ---
> > Changes in v3:
> > - Use reverse Christmas tree ordering
> > - Print a symbolic description in case of error
> > - Some words do not need to be capitalized
> > - Remove duplicated exit code path
> > - Return -EINVAL in case of unsupported submode received in .set_mode()
> > - Add a .validate() callback
> > - Remove comma after sentinel entry
> > - Add a ds125df111_rmw() helper
> > - Use read_poll_timeout() to wait for channel reset to complete
> > 
> > Changes in v2:
> > - Explicitly include all the needed headers
> > - Change ds125df111_xlate() so that it returns an error if args_count is
> > not exactly 1
> > - Add a MAINTAINERS entry
> > ---
> >  MAINTAINERS                     |   7 +
> >  drivers/phy/ti/Kconfig          |  10 ++
> >  drivers/phy/ti/Makefile         |   1 +
> >  drivers/phy/ti/phy-ds125df111.c | 294 ++++++++++++++++++++++++++++++++
> >  4 files changed, 312 insertions(+)
> >  create mode 100644 drivers/phy/ti/phy-ds125df111.c
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index f877e5aaf2c7..58f410b666e7 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -26781,6 +26781,13 @@ T:	git git://linuxtv.org/mhadli/v4l-dvb-davinci_devices.git
> >  F:	drivers/media/platform/ti/davinci/
> >  F:	include/media/davinci/
> >  
> > +TI DS125DF111 RETIMER PHY DRIVER
> > +M:	Ioana Ciornei <ioana.ciornei@nxp.com>
> > +L:	linux-phy@lists.infradead.org (moderated for non-subscribers)
> > +S:	Maintained
> > +F:	Documentation/devicetree/bindings/phy/ti,ds125df111.yaml
> > +F:	drivers/phy/ti/phy-ds125df111.c
> > +
> >  TI ENHANCED CAPTURE (eCAP) DRIVER
> >  M:	Vignesh Raghavendra <vigneshr@ti.com>
> >  R:	Julien Panis <jpanis@baylibre.com>
> > diff --git a/drivers/phy/ti/Kconfig b/drivers/phy/ti/Kconfig
> > index b40f28019131..475e80fcd52d 100644
> > --- a/drivers/phy/ti/Kconfig
> > +++ b/drivers/phy/ti/Kconfig
> > @@ -111,3 +111,13 @@ config PHY_TI_GMII_SEL
> >  	help
> >  	  This driver supports configuring of the TI CPSW Port mode depending on
> >  	  the Ethernet PHY connected to the CPSW Port.
> > +
> > +config PHY_TI_DS125DF111
> 
> This should be in alphabetical order, so I guess before PHY_TI_G...

Now that I actually tried to make the change that you requested, I
realised that the Kconfig is not following any alphabetical order. And
neither does the Makefile.

Do you still want me to move the entries?


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
