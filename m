Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4282CD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U422864sMasyEoRoH7b+7r1OJbiOCiCZB5lL1OTM9qI=; b=rmUWD51T3ZcpMe
	Wjvi20SX/stSKG+G5+aqNZzPOD7ZfK4KHbmmHzcZ2hhLhYPRLXmCFc2Uc5dx/3SIjvQi6eSgSiVfB
	tJmYmX78vaJWiextZiDSxDSSse/v8WMMKUDg9urZdKvKqEWGNa/6Y16ZuZJyylfJnds9Cfnkrvpoa
	G53tCfHrQM1y8a8GzjvOBR6vRqxEwOmmsID4uxL5ot2WECn+eOZjPpNqLBizRLVbI3d38UrEBPEOz
	cZbxEs2RSEjYaGNrzUzE612p81okiRukpPBMGc9eDdexyf9yNK/iqv+/eC7w3gW21xRMHjfY0m1Ze
	WvFhcQyou4nCGq/6hfWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVN-0000000FA3f-228F;
	Wed, 03 Jun 2026 13:19:33 +0000
Received: from mail-francesouthazon11011021.outbound.protection.outlook.com ([40.107.130.21] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlVL-0000000FA1L-1yoP
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:19:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d332Dbd+hola0A2o3UAcQVwvPS4za2Sm6XsdEf/6bb5TLJt0nJLFgtOmRV6y8kib/aUfdhIBvXSfD6rRMFAU/CoMSbSIukYE6CivZvcDmnu2xu/LVKq7lJZ6+64kIfrQ6aL/iEWO59GUITqGb9AoH3XX6eFLU0s+HseAWbapgRjYbNlGBbl58NDa6r1bAbQcqN9wCDHH0dQhD7VVOTqa7w3CZnrZ3UFnmChHx44q0etEHPtLpRqQOiUCztGoc3tjPcL6kFVyY4Xw7qXA7MctCVJ/HUlR+/6oM9NIPjAUO4tOc+sD9XHruCdpSNYoHdZ1MmP1H7vLUGQq6j2g/U5X0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A+CB5WvaCRwGJ4nBhHw5uFOmLjBph+lDzjn6/f7KTX4=;
 b=a//ZsdBarKnQYHj5U5UY2pV9zmmt1qK79jt3Is7/b88dzvptOeNZ9Vi+1rDqBNgY+lUGGWIyLoBg7n7EacdTvAekvShyimuhX0SA4lXtn7FZWkDm/Zok7rfWtXRcMR2ETM0gBTTKDaklYorycJj2XRLSgq1hbHPSKTUuk2wJbLezSAtq0jYJuR0klSn5rimZhV2bLSlNYP2vXyiEmMtYZfJmtlu++86ajAYkM3Gb2oIlbcJCCUNLEoxUT9SAIcXBxv3/MvUXKqEBvJd39ebzJhM+Sz5/DAQ91nbRAmQcJgLB5+6vmQv2F1OHQYE5r2qAC5JY+e8RQHIFDHodqrsByQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A+CB5WvaCRwGJ4nBhHw5uFOmLjBph+lDzjn6/f7KTX4=;
 b=gcE5pML4PqcaZz0aevcaiGbJ5ZsuvSdoW+b+ZQertTlWVZIyM8GbZHS1y2SbckkEOppJdYwgFRSJtaWvPe5H7+UNkstwewO/tAnq+XmzfVsxgp41yl9OsewXOzh1GlK4z3I3CPaQmD+vDrDhKSzbsC15oqF/epDbGlDsmBA7I+Bnzja3WHtH/Dm4jlJWPc6giNmeABy4ZmgDfBRmb2/2xCrEvS03Mf4OuC6OPvSXvmLXP/pP70l/P0GkrP0xMmCD/5pqGzyUzszotwmIRtbl9JGiJcYcx3zEwKsS2knwQdTU5XbZSdbb+1Ozx1QtTaj/sjMYbGC6BA/eEgPkimVxBg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8114.eurprd04.prod.outlook.com (2603:10a6:20b:3b7::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:19:25 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:19:25 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy-next 02/16] phy: lynx-28g: reject probing on devices with unsupported OF nodes
Date: Wed,  3 Jun 2026 16:19:00 +0300
Message-Id: <20260603131914.503053-3-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260603131914.503053-1-vladimir.oltean@nxp.com>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR10CA0043.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::23) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8114:EE_
X-MS-Office365-Filtering-Correlation-Id: 3306c525-4ecf-4597-dc50-08dec172bb87
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|19092799006|6133799003|22082099003|18002099003|56012099006|11063799006|3023799007;
X-Microsoft-Antispam-Message-Info: VFZJj+Xw1wutQR2O2lhuOJ57j3fqkvT2OIinhuA2OCsbcwsOtl+X/FBpY6DDeCeDFSV8xlOZnPihqJi7BdL3l15burniGq0mWEiUpNO8QQQpNKlLsXW92qqJmCjrmybLoUG81elHBcGoj468VwZ5U1TBbYW7UJ12wTcie+ogScn1dcZY/XSahMnVUUyn4FtgrEguIT1BkbHCwLasDl38Cw/KGktqeOqF7r49Me2g0GRMX/REjzBqc0XW2JqlFaIVXpeILKFcLQK+fYPIGeYLJsUAuyoedCxxgTYKPKSJuRE324WD5zZIYIVw2ecm+BbvarAO4aPEtsxhxfAk1+jtZi3kibsmbbG385cNHFieoRtEYIbB/LKxFEEW592xF+pEF4IQmtF4p7oFNBSNXDFRqT9pvo9B7T21+GG5WyLJlLqhY6ITXCJlTfcSY3JeV5HBy81QR8amwRHA9+O2+4UUJboaxlafvw/3Dr29VVD+bqdVD2QY54JccP2hV0QBtEGon0YLfm8lbgSVc2ocsOmMYjcREt657vJ1qWiRgSOVlvHH3rP5lW4T0f68IMrPngx6IAgM1yxpIvGXC+OGTkwFGwVbwE/cMRPCRTsoyFBU1yRGESPB+kGOLFS4jW5TLrggFNf3dR6CbRVsvwf3W56AOB0XsSxgyDBkh2I4I1vTiiQcxM7I7DoTSBaQsnt7DcoS
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(19092799006)(6133799003)(22082099003)(18002099003)(56012099006)(11063799006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?58FaaEdd2fB/NWfx7gykabO0pnDMa5Bjoul8V4UDi1F5u5tULzHDhVyY4JH5?=
 =?us-ascii?Q?SpojDM5MtBErzAUzVeMbMizj5jR2pROa8uVgPzUnJY6QcKtPJuT+XuXEea+A?=
 =?us-ascii?Q?WE4vPbYKGJioPAS/PeF1WSQu+sX5pIhS0nInJ780Za64bHZX63617AXexSBo?=
 =?us-ascii?Q?zAA7UUmaaaux+tf/BGUvInIZPP0I6SlF1JaC1daDic6lRrsxVdNru5Yzb/sQ?=
 =?us-ascii?Q?9hPLNIXWUgjSXdEW+FrjZB6hp1Op1WI1GeI5+QN8Q2z18gXr5LhhsWUjFwHv?=
 =?us-ascii?Q?HpdRG1gghtfP6ii4gnVj8tWhpWBbURKwBnnG4YsBVMvf4xEHz/fl2m8j7sXY?=
 =?us-ascii?Q?kvwUDuFvnSfmMgnIJ4AVTTMmUvoVoeykbJx/ongRP1oPFamvleS5cZrfuKf/?=
 =?us-ascii?Q?B5SMfdha0S4gSYYiFgIHMT+x44QUCqGl+7eVPxxta6Ucl5NEBhR5X7FIlRaw?=
 =?us-ascii?Q?jKeGYd5C+G/JnRSMlBId1FME4IOSo2ULjIKHCcWiND5SEVqmYBg8jBwk0kuR?=
 =?us-ascii?Q?05yVjRfKm2y8sFZMqlC3Jh60G/MJR6Cp9/+lzOGwYF1wxmq+YfMamc2wxfpt?=
 =?us-ascii?Q?ksl/n5Cu57Rsl15P9TB21PnGAn0yJrVlBaMvCMOGloVkqtvMtSBfmDw2ogyF?=
 =?us-ascii?Q?R/7LQuE80QR80+PBBoiVumKrOy0GAbKFbBpLtlg/+MdP2htG6mxzmu3itJBA?=
 =?us-ascii?Q?yRUR5ew4RLo4QI56M2dHp1XOSVIVXZD5NDdHb/rOEI8U+zlpH9aMNY4FajZl?=
 =?us-ascii?Q?DZ7B4y1t/oDggdLDNcvcMCFOzTAsyBKmllw5RmdQR2QMxgP3Oxt3sOYsFZFL?=
 =?us-ascii?Q?zda3kWQJ7+/1+Qo96hXmDAiYyxncQNtB44DHFdxi2oUMfR5ySuX0pn5MjU/o?=
 =?us-ascii?Q?8+8d/g+XTGrOcW34Cpwbihc40NN9EIHRx/wl7mr4Bx0U1WckuvPjHMIG1pkU?=
 =?us-ascii?Q?gGw+HIiLGn5iadP/BW5ExaocKh+nnhBZW/D10eYqzWTpnf6E5DVNQN9DhiS9?=
 =?us-ascii?Q?TrU5nUgCFvQcOqHE28ciAc5cILEWWQR5GszRqBUEmGC3D9BX8CY+jKmvlGDF?=
 =?us-ascii?Q?kZf8c1zGqHuBgVCEui2U2UQtiOOnnHHLiW0m+W647LWTLdBp3m6K5//S/xkD?=
 =?us-ascii?Q?hIgGuJP3SvAmaCxouUP7rlcAIV6yCtUlHUXqdcANUfBl/AESx5cZGq5uBUeG?=
 =?us-ascii?Q?rr2fW5iIrbPoXUZso6fjqANigoieYtpgG5SRW1vxc5MbiZ8nw/KgZvtt6vLV?=
 =?us-ascii?Q?b3i2Bpii9v5eXNBWxZ+UZC5W8QrZgR0pp73IFVdNL9p6UTl7nJjBrvDsAbwV?=
 =?us-ascii?Q?kbRBhdkZyc/pJKgfng1ZKtrnyssPeCWkWmO7rZsbxEX3Hw2n7oHmjMhlSaJF?=
 =?us-ascii?Q?BpJZ/DXj4i0qUwUNv6tnWOzTiu8v+FvoJvR7ZWSOxhx0tK/y0FkwkmtHw9z0?=
 =?us-ascii?Q?4/lS70lCKy9NBYUf5UHi4b7v0D8v8Jei63v8XQQGHenMRHTpExQ8BJPQ5dss?=
 =?us-ascii?Q?s8KhFsZWMUMPj2TYqL9Mnb9EAJb86A7bEPjbTA3Pn+7hm2/0KnHC1TjAt7/a?=
 =?us-ascii?Q?1JY8lc1W73V+/VfHuCRai5CLL9Xn2j1/5TacKwefCk1tZnWD0eVFx1N/QDyA?=
 =?us-ascii?Q?I8/kR1eFpk29GWARAlOB6hSOkytAm2ecuCpHJIol6hBV8dmX10xuM28OqNpK?=
 =?us-ascii?Q?W7AZhmNn0noNXhkyaQgnfsCWtSFo2eppj80u7MoGp95K1k3gO2RnoDUXs5rW?=
 =?us-ascii?Q?20T/KOnuJg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3306c525-4ecf-4597-dc50-08dec172bb87
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:19:25.1444
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zGn7xoBlvVOIm0GX0LoBopOXVvRmDbQPQGJm4kRCCGNcuBElNfSgtpyZr0Sk10FV93qBaI71Chm+AtuyKd8GuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_061931_521623_5B5FAFBD 
X-CRM114-Status: GOOD (  15.19  )
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

It is possible to bind the lynx-28g driver to an arbitrary device with
an OF node, using the driver_override mechanism that is available for
the platform bus, and trigger a crash this way:

$ echo 1ea0000.serdes > /sys/bus/platform/drivers/lynx-10g/unbind
$ echo lynx-28g > /sys/bus/platform/devices/1ea0000.serdes/driver_override
$ echo 1ea0000.serdes > /sys/bus/platform/drivers/lynx-28g/bind
Internal error: Oops: 0000000096000004 [#1]  SMP
Hardware name: LS1028A RDB Board (DT)
pc : lynx_probe+0x118/0x4fc
lr : lynx_probe+0x110/0x4fc
Call trace:
 lynx_probe+0x118/0x4fc (P)
 lynx_28g_probe+0x54/0x7c
 platform_probe+0x68/0xa4
 really_probe+0x14c/0x2ec
 __driver_probe_device+0xc8/0x170
 device_driver_attach+0x58/0xa8
 bind_store+0xd8/0x118
 drv_attr_store+0x24/0x38

The crash is caused by the fact that of_device_get_match_data() returns
NULL (the bound device has a different compatible string) and this is
not checked.

There was a previous attempt to avoid this in commit c9d80e861034 ("phy:
lynx-28g: require an OF node to probe"), but the mechanism was not fully
understood and it only covered the case where the driver was bound to a
device with no OF node.

The issue was found during Sashiko review. Elevated privilege is
required to override the driver for a device, so the real life impact of
the issue should not be very high.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v3: none
v1->v2: patch is new
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index cacc128dc96a..1f5cb02931f5 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -1477,6 +1477,9 @@ static int lynx_28g_probe(struct platform_device *pdev)
 
 	priv->dev = dev;
 	priv->info = of_device_get_match_data(dev);
+	if (!priv->info)
+		return -ENODEV;
+
 	dev_set_drvdata(dev, priv);
 	spin_lock_init(&priv->pcc_lock);
 	INIT_DELAYED_WORK(&priv->cdr_check, lynx_28g_cdr_lock_check);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
