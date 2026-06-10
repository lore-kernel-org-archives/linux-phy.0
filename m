Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5B5ECD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VwzFx0I8nNaF8R1F1Sgx9krwfR0I3jiJPDhR658zfc=; b=pWSp++5NdTl6t9
	hKtnTF7S1lcGjdXIhkpJUnt2fQB1x2xMOSUkobvBT7gJhL+FtKvyWJdvD+JMv/484lHHITwzp+Kpk
	dbCAagAFByvDWHmtwkfqSmyGxbubPdc8z/HwynN+dtyZ/OkrZmTfCJa0fk0VdAF4hhgyHKa1rEywd
	CrvbmgjE/uaZo+N++gquUcUF8D2AdtV/+lL12cn3Vt1BZlflEQCgE0GbzxxcLZvT1xsxgS5xI8dDR
	JM/CKVB7NcFES/5mpY5x0Vf7LWJJPaAVsi8vkUF8hZT9R3ielwlBbDzG/yCg5JVCoADEcT1+1UoBS
	RTTI/xki7Hs1UocoeuZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKiv-000000080RX-1hnr;
	Wed, 10 Jun 2026 15:20:09 +0000
Received: from mail-northeuropeazon11010036.outbound.protection.outlook.com ([52.101.84.36] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKit-000000080P4-3ZJF
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:20:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=onXjicgOpYI49feudd0qRblfKFu8YKB681FnCmHA79UdeXuTolSNCcO16hdBHbkPVlBFpjWDGWahimsx2ZgrvGB5yUbE02pQEZ9D8wq08P1h+fPSzTZ9K+hqHaKtJb9BNkjI6l3chTgvoo7anCBi92jfoN6fcCcoemZ8YUKBE4NBCbNLCTzNNReR2Ta8lIUTh+2gn3q/SyOUe7eEM+EcmYWIXMYQcy5rVHNm5hQdWM1TQuoE2AYqrnB1GAOF6QMZJmLKveqyln8Ykeh6pkon628kdBtoKyKWvDIuTBX7+6+Bkw6Zm084FrpOWEKs5LI3Y9h5Wok7M+pB9VHW4s3/lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZK0wJ8/p0e5X8vGChL+Ycdj53fveYHbIV8AnKWNzHqU=;
 b=U9lYuaThXsGiL3ehvBG3+hGL5qnEaVx+UHb+wFLMH1nvaxOQ78XMO+ZzYMp1EQzq6QnAMMI0sZmFGaVBvtQlOvdg3pD0M14uyrya8zetHVzcfytcmj1P//4sclp2DK9sBw5JKGzs/jtIc/3b4Nn00POwdSVtV13wkVH9L2hWEPiYmMZQctSjBOyQVqc5njFX+Yov7lxuiVREf4y5gZElZ9QpijmAcvKQQ6stVa1ICdtwPzdMQy7UiITIVkLKJlQmAr9/Hlddmqz2okKliLXM+QU+gEUDT69kuuTQNtauzTXCxy4ytscfyRPZLP2AyMXCoJZhzF0JCcC0Fi71mvdboQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZK0wJ8/p0e5X8vGChL+Ycdj53fveYHbIV8AnKWNzHqU=;
 b=cg9sGbWSV9+VQ0F/FgCtr2KsRgLf2KfqOAxq3tYlX5CkL+M8SPdGq0H2avgLtqTyFUE6ms83+ELoTocNP7+aUZmR8FIxM2/D72YZ3B9GXrcECPw5uyUOqnGCLYJbjonP74w8RwQAakHKr6FO80ROosSHNYXNFWultCziVEOKDCeb1FsvjfF5CDkk/dXoVU1vyA1sEkCo/TSeOyiBPARh5bFBLzL5duqZ76mUkZldMCNIP7NwglsCwI+sEzU0ydgUfYsda/z5MrCPZFJBjb7CDmW2h8wupFSuL2nipvmyk31bKMMxjoYUkKxeUwRIJWzB9l7Kv70Ce7AmTVUOSemYOg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AS4PR04MB9313.eurprd04.prod.outlook.com (2603:10a6:20b:4e4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.11; Wed, 10 Jun
 2026 15:20:01 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Wed, 10 Jun 2026
 15:20:01 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy-next 02/16] phy: lynx-28g: reject probing on devices with unsupported OF nodes
Date: Wed, 10 Jun 2026 18:19:38 +0300
Message-Id: <20260610151952.2141019-3-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM8P189CA0013.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:218::18) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AS4PR04MB9313:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c49727b-d009-42ae-bba7-08dec703bd4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|23010399003|376014|366016|22082099003|18002099003|56012099006|3023799007|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: FPSBe85CWDtJQerX8oDru4tZBe1V3PjD/N1xz4BD3QnFx6Bbfdc8jwZ8QFPKU4hhgHRy8AkeTJaoJXsIwndenPdeGVN6QCuYbH7b+j2RxP7HON0LjzDPVUs4nJpKMCLeC7hyAIrwKzOEkfkHFRDlojwcL04X2x3Jl+CiKn0Ly75ycbDG6bE/nzixlCcisEiKmj6dpNcUceLbtJUDRVXkbPZoUcYvN9p5vL1xPWu7DRLs9nHCZt1kv5lA0DkQjwTN9WLI1LBKxDtTwkCEVcfN+QfJTtkIcLHVbqyNe6flLZAnfvwkDSrRx+aSIyg53+hHv8Ul1I0/ratxkzooEQ0p0HVewhAELI6JJvnlgsfII+80RjejhlYo1kc6Ayozng6312MbpxwRH0DAaEDBwKYDGF9BBNwCfW3sZ+l7lj5mzE1Z6Jp5H6bxxsOG0PI1kG3cB18i2kj/Ebl9uCH5FiVO5F298jShKHaRS+I9ddDu+B1MASpebfPX9SXxEt/LtwK4oPOe5JXCI3ig5qyPb3/Ip90w4LwvjwHfcv9RWGHmv6angO7+TRjolD1+OoeZPgx+5OxeQJZpeOsN9Db5dpaKIVErfn332ryuuJ4ZldX5lJaxyamuN76kGdYvGqg6quqD8oBliutxvKB3070UqlFyMGZJSv3YIKf6nVCBCJav2WNuTOZk2Nh0Mh5EwEeYuR3J
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(23010399003)(376014)(366016)(22082099003)(18002099003)(56012099006)(3023799007)(11063799006)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?U2XGhQNBj7Va9kBgslKQTlXz35ZTdOGYDnrRrEPHRTVU5U1rVQpRw1x6ErCy?=
 =?us-ascii?Q?G1vXin4uUERkf+SS4MFu8PJK7KAlBv3bBK0JHKq2XRSDcp1+hivqdfseg/zR?=
 =?us-ascii?Q?6ofXurDOmhdpBcKd/33lxsotYKrbUZOlg/3YdMA+B3s2KZc5k6ZGnLouW8WY?=
 =?us-ascii?Q?MVnU50rGwqPC36QljVIKEm8esJOGt289vZxi+NDXHqm82l/wuyfkvksvpARx?=
 =?us-ascii?Q?iydpHIB8Mr8oVvi/JnJ962B81m7jYNEBelPVN7CDcxAwqrT19sYPm689vK8I?=
 =?us-ascii?Q?gMgCDM/db1Itmouv8BGycnL3REY9xP+YyvdFzNj7j4QEzpxgSLa7m2uKSr2b?=
 =?us-ascii?Q?bIxLZnyhN+ifXN4jenrlwHMEhBGtDrIofa5AwwJ4aN/YrkYL/oEqQfsZOuR7?=
 =?us-ascii?Q?TTLyI3uefp5xCGcTMN+fyOm4BqbDfCF7Kp1005YPMcLllFkXua9Mnu8Qer3z?=
 =?us-ascii?Q?KsS0LaH65CK/RC++bFmYoI/ml0qdhai7wCuOz20UYSKDw6IcOkUpF7Q4Zb9U?=
 =?us-ascii?Q?1ODa+D5t4pMny2ef5A6ectsClwb71JrOCGB6Za5GTmzDK7kqr0G7Ndjgqmv+?=
 =?us-ascii?Q?rtR6eI95WYmqxr+0CkNoa1Mx9QNetBNbGhSweD4UeDw3mTarz9KjDtHK3saS?=
 =?us-ascii?Q?ZhaMZ7S77NH8E83mVxzR69mmm03922X+WfPI1Lv45WK5bgFUYjvEfCoZqIEH?=
 =?us-ascii?Q?iR2AJs50lx6N4KebLtsRghW/nWd4bL82PY4NRvSpS6Zp2nm6IbRe+bQ4f0F1?=
 =?us-ascii?Q?tpPpyTP0hsGJwhAFcQFOh1e1Kc3Sc345Fx5XBOHTxXFnt5aODvpTZFjo2jQg?=
 =?us-ascii?Q?A7rerq8uaW2zNPdszRpNTuyWppoo69oCR8rYjtEiIjVUmLDakxODUYkIpIzB?=
 =?us-ascii?Q?dSaHsaAsLdBcUuKhHONKUVAczMcAANvvf9m3xg17kJpmQLqk8RFP7vqrpN2i?=
 =?us-ascii?Q?Bk1ojQ23l6lhZYTkGg4aPPfYGDKPgehaO0nAvK0aXnMrHhFaYZgauwLTk8R9?=
 =?us-ascii?Q?5E/eFFunCN2/wkxWV7+I/z4N+vjbXLqCSH1c6M1b2YZ4aaTV3l9iIk0DLp/i?=
 =?us-ascii?Q?IbawFaQTng6v1VTCzxEjjNFq94O4ZSKVA5VY/h3TvS+lIxb7krgX+j2w1JxT?=
 =?us-ascii?Q?Fw8SQtkPNouANIEA4kuxPFt1RCpKk812X1jS4/Wna/yRwU7xz8/QEP/yy2AM?=
 =?us-ascii?Q?q4Df8e/LCfSg5tPONxHSKE1PEgPdhOJ42rnAmZ4dq3AJdPMKQIMp70PeF6Xy?=
 =?us-ascii?Q?2nKAzuLUBcq2P9NPRTjvpJHxlFN0xvE/d77MHOzrDpneK0cZtXO1U9fWUQrb?=
 =?us-ascii?Q?0laC4oEHM7OMDCdsYzrImt8neSSnpY1D6h5AimK/dCDghr/iudbspiAaGdM1?=
 =?us-ascii?Q?IsPF/RcbGgjxcQ7MYNFRVrWRqBqlQObwAykUrQ0kg8P4zYgSLwIddVc2ZgVA?=
 =?us-ascii?Q?Khm5/jJWVMDOT4kC7m6lsf070HO1x6LzzIzBUSkTCVGDFoCt9y2eJXf6lqh/?=
 =?us-ascii?Q?4EfQ1FVQqh/bTG+4+JEhU5qYnWGqJ6hc3UQ3LRxdZYrWPNszvnwmMbvCrU66?=
 =?us-ascii?Q?UIFfjTtaSPATRq3qBWYSPmPczh/RACK00oWgnigUJXJ2SHDU7Voxsae1gZdS?=
 =?us-ascii?Q?YgFuZ0kxBsk4xQpPpQi6LscPa/iULlYITWbKbCsH74X1dXXmIYxCeqMAFtg6?=
 =?us-ascii?Q?CEvLqwLzHxW5XNWXmwxWQER7+TZGIlFy+cHNbozFDJLF6P0UdascRvtYDfNk?=
 =?us-ascii?Q?rIPG0dmebQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c49727b-d009-42ae-bba7-08dec703bd4f
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 15:20:00.9501
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qIHJL4/rd42x3Z/oWA0uCxG1UllnTSmzvsuM8EE6sTN+3BxKSq6LEuJP5ip6UOSFKOHSZNE4rrD15Ho2aaMIqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR04MB9313
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_082007_890303_01E8DED0 
X-CRM114-Status: GOOD (  14.79  )
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
v2->v5: none
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
