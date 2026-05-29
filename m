Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF99ACD4F54
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 17:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=px0ZX5QeOEw8wylsa+QO3DNXjfeGu58pMRr2dUB7wT8=; b=MzhXgcbqrbqlS+
	gyrKx5ar4uNnthVzE0wXDmTbfClkiFMndFPyrxPsxcj3K1jw/cKfDOPw9zQsTZaSMtfV0jGiKYhqf
	vLWx53sHKF94xuy4umRUGL8+i9Sw0ZXCXQsgvKrYAZJ0qkS0lku+LtdXJ5VfB1Uk0Lrxvc79rJypx
	33bTntzY7AMmqAVJj3Erc87AHx92CMrQbnp1E2yWIxXK6JD4ApJfWHGcG+Fh7kzMqaHXeYnfv5d/Y
	GGpt2NKF+JNLOuySZwNQQnPpLHL/jrx0t+Ji1d0HOquhKA3Ws6cIyUQikyyN7XQoxWfm2zeYzWCAG
	4QApDL5mtOb0YwR1OqDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0nr-00000007yFl-1EDG;
	Fri, 29 May 2026 17:15:23 +0000
Received: from mail-francecentralazon11013050.outbound.protection.outlook.com ([40.107.162.50] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0np-00000007yDh-1pso
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 17:15:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KEfpsDR2kkhiB/KLHjc7j0Mmwc2x7R2O9DoM7NxqtL2nCaBdxH1FFWcgG72XIldEGFxJLIn6O5mTf6OXS9DpVFSsHMCYnZeTgbjRkKLhbz5iY6yO1jMI/lia0K+UrvPZr4bqKsgksHCPUW5LKEFVLouGA3LitIEkNnR982irSYnKiJf0SVjmT7Q3tWe1SSQv3gDXznljPC/UmP+Nmy9GIjik4F18LBTdpEYh6XKMNDFtNfUIJPrQijIMkBrmZiuxOJ4EFPps2un/Zu0T5jKqhVoxMwG97HHY1dRA7KBCkjsDr75oh5HQshb2ZJJ0mm1uqoMGojxxR3RnUCiKgXX1Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zKseQGEkgCPgdYBHwSXHoEnFwp/GuTI8Mim0lX1QuGM=;
 b=bp35DbOHDVO2dETSFFjWOLLmVGY+mVnz4km3xvN7egvfAbRVX6w60OwHvm9iDMghmF9rGbAOZedD/6K4xSEoiohIRvi0OeQnqX6Au2b9HnVZdQE1ZJw29Km+fnubabOojh0pMGz504E1rkKqsqzno/gD24vF7BBQzHJuPbxTzdnHdL7eaf+muEy6kfmemIEkyvfPSB+suVesWb7VxV/gyGtXkIcg/i8nHL7lRDad/0jYSo8vNG0qFDGhftNUCiVEgTI/vzFA/Sdxz0HPV2mUdMBQHPOL7sdfr43sgCi1iKL6OpDZutE9pJ0WksAwwKl0tpecm2AHLSF3z6+h//e9+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zKseQGEkgCPgdYBHwSXHoEnFwp/GuTI8Mim0lX1QuGM=;
 b=fxSVzlvKKws1trrbICVuIavdK2fHA6E4JSVYPncDFh5XM0Md3LjrfRNTvKnSk7vCup5RrUlaGk0NC6ydX+1yYy7vb/NSS1QaxO7a53pwJEjoiKHdxEAbOjPCpap2IChFUCdP18ud7kV3Z1ZfwLb4K0j9H6L5HTaIAT1LQLB67fLAxYPZBbK9clPLgemqIuZaParmDU6/7shv77uppCk6EHzHh45kYPDARY6yKtsfN3PsGLbeeC0fkJwC0ZGASvPFMOP3I8ojUmWXJff7cFtNrtyfyx37xhZz8Vi5m9aJUkbimY3N63LeoGBTQt8/S2/NjSgZqRJ8gDeBkpi/LcxnHg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PAXPR04MB8960.eurprd04.prod.outlook.com (2603:10a6:102:20f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 29 May
 2026 17:15:16 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:15:16 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy-next 01/15] phy: lynx-28g: reject probing on devices with unsupported OF nodes
Date: Fri, 29 May 2026 20:14:55 +0300
Message-Id: <20260529171509.1163787-2-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P190CA0020.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d0::8) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PAXPR04MB8960:EE_
X-MS-Office365-Filtering-Correlation-Id: 861600d3-3f24-4a8b-ba6e-08debda5da17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|10070799003|19092799006|22082099003|18002099003|11063799006|6133799003|56012099006|3023799007;
X-Microsoft-Antispam-Message-Info: sLPIiyYupL62JM6/1fJYmEUTMfgCpBMm1BVW9EKsNtMkElTdggy3cfWtSseVGmBeECTZkDHrwZjiAUUiQeMdihSDLeYdhlUKZAmbQG8RTQDQXCbfy6k6H2l8NBOzcqScP6DdB/NcHSdTsEz6AvwuLF3KByDkMaQGcD5zDk7G5lhk3HHsgrIJcljDh4E45AWsiNCRa4v+KVHzAEEOSIJnI1/b3vsn/+xP+iEqybFN4CrpuvahcggyDRQOtFTIAzXCuyQe9xezzxsrv+5zjWUkv4FEo3PuhMyKxXVJbDox5bihY1nvj+xVQGnzjtjVEVwjE+ikqX6Cej2qTKtwpjPPAOUrBI1TQGT6c8krDv1MZqmLM8qgEGRZUV13QQZAmEMHhFRK0jR797GPItfYZoA+RXYD0GDTBb1HJU23sSUMyMTzhmAM0d65OG196ESjWK3NTfNc6L2oJiuIPUIWzol8b6+l6d/mu4jTZ01Yyap+AksImhTqrvOj3qylmMFsnPC+fJfOj8zQTKdHeNvF4AZf9Us1N2oaSSRPcFTmsYp7jJTpljcRxDGouUQmngl2rAFVshFtVMKFQrx+CuyiSzJV8HtmuSnu1EQeGe9vsa2gICqscHnkVJ1kti1PK+9oSYFPdztlerMUybQ+XKFTJYM92GKfvikmJkII8AT99iope3RjWJWO67DBnSD9wwgnvpue
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(19092799006)(22082099003)(18002099003)(11063799006)(6133799003)(56012099006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VSM7nbdqOzYizGxGM5uQ5mT3/GoU4GCLi7rEZ+HOo8JglYynbW/h1FrgGQ/x?=
 =?us-ascii?Q?fOkrzIKVwzz+mVqP93hp3Wvx1FReV4CdHvHvrQMOhqrst0NUvlFI5mhm5sgI?=
 =?us-ascii?Q?ICS6z8W6Wq7+AC6iQ2vuVO9KNq+X7WoI/ivc3gD6vSG4fSpXLv1txwYGpYtX?=
 =?us-ascii?Q?HdWOxkliKONXN0w8M5PgBfqZyle9vZrVZM0p38mJL73+tcbdf98VsdDCw7Hg?=
 =?us-ascii?Q?HwvragYnREA4sk9ppoTt/SHAvKYBXXInGZaIhggGA6h0qZyXPHIDjlBMwSEe?=
 =?us-ascii?Q?1AacY8ksvWcjAqItLg1rRYBzYmfXluABtDcmqXBd8fIJNpxNG6isABNrBpnn?=
 =?us-ascii?Q?H9KnPNz55n/L2xjKHfjZI2tQaZqD0CVPqPPLPx2FJ2C8zatbUcNrF+ptpXiO?=
 =?us-ascii?Q?Z5sGDeb/7nVoJY0vkV2itR2ISO98KZBbF5M8cLyR1UTVSf+fOGo/U1rohjtS?=
 =?us-ascii?Q?eB3wJ+eFhghlyUwi10AEi0qAO4Jbu7Z0W0mpD545MSwdQdNrt2UCUlvjmupS?=
 =?us-ascii?Q?inwFZRMhMevyVGTHkCho9xJyfhbAloaoXLlUjadagPi3XXK+NGMpk1Td9m8w?=
 =?us-ascii?Q?aPjlugUv4sE4KtXdVumYUdTCL0qsF5m0Qxyl5W2LXQJafkgoJBG7gZlWoB/+?=
 =?us-ascii?Q?+qeYz+OL2mVg2iMDN+02JHMcHLsZYIHgoJaawsmuB4pcBbeq94LjI3ObWSl6?=
 =?us-ascii?Q?LSO974FM6P56CxnDoQjpNHGBOnigTEziG13jDoh7amsg9hh/N30xHJ1Tcui7?=
 =?us-ascii?Q?h4ddfgQUnBzdfcUfs45TvCXE2NvPLhFK9RY5sVBmZDN6w6WFUeC9OPPaIE7q?=
 =?us-ascii?Q?/Txyjog6ZQK8tWTwHcfWcRRqODcNcxbmYjjOLZNa4D/DcfkYfnl7jxnd1Iyu?=
 =?us-ascii?Q?V0WEddKVwBUmxDvZr1ifEu4as/UeMwmqU/nydZfyMXpe2ESTbU+9hmCUjWW1?=
 =?us-ascii?Q?rOmIrxUZm5tSePlLCN8sgDGG2t9EE5wf9CrQ/3xvdmTClFxCTzk6vCA/dMvm?=
 =?us-ascii?Q?z76cNI537j9/LdZjHhxTf35Fvi4ECZAQCDflhaa4sE44HucpD8sCXs414dt1?=
 =?us-ascii?Q?+l7HWMywRIp2uebjFuf7J03dP93ZBOjyjSfrXImp6faHhGjfxuAtZYPrEg9W?=
 =?us-ascii?Q?1EgRwPI6U6cn3Xmpw7Y8V0g0miDlrnzjXfNEWhlAkw7HnPNHlz/QUOQVt9sT?=
 =?us-ascii?Q?/jjMuA1wnGFh9zBS161iDYrMa9jBL9amzS5KewRMcO0ZRgfHAhc6Z5B5yy/U?=
 =?us-ascii?Q?mQOic8CMN/oRJ/wfwfOnNHVdtLdIKsygMQ4DZnrGa/q25kFbXgNwD3BJLqGG?=
 =?us-ascii?Q?W8oE9y6xmlsnVQAEqW2orsbPD1x7hBaHwxQZZPmYD1LCHBYrBsSc8MGw0fKO?=
 =?us-ascii?Q?HAxlzKyuawGnu/x6oqobQUSnOAr/iI4TACNPvasdG2jltPUoBfnle4o50WTU?=
 =?us-ascii?Q?HNpaLe5cg1crPiL9f89q2Q5kiEifZVqQvLFu+9btPe9jhPTuvsZiZqLf0dCd?=
 =?us-ascii?Q?/Fx0Av4ku1ecHYtVVNTqfy6ZJrQSclPm65uUZiiTuADAnY4uV45cvbePl5oY?=
 =?us-ascii?Q?l80NCWjF80lkLzVACXIgLcU8m4yWwBwQEMbebw1IcRhew3Gwt3cOc2FwIXpH?=
 =?us-ascii?Q?2dWGDpIDjyiHxlKqxap608o6eN1CdRLPGW+W3UE42YavhK6431SGDgoQ92Is?=
 =?us-ascii?Q?EOqm22KOaNaR9bXJBJSqMzNbPt2kY6UHm5l+GGx2nXYTQ0RPcrolQSa4X6ON?=
 =?us-ascii?Q?w/8id5jB61tP9P0sIYg4vUA5QemfQ4OH/+7oE4UiRWhis7ISf62d?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 861600d3-3f24-4a8b-ba6e-08debda5da17
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 17:15:16.0608
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ma+apvg4450BawUq+N6suxZrd/NuOl8+QcRI7gWEr2UisJQt+FxbeZz29Oy+vBGv54IKPsjhDRVhaTThKco6rQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_101521_476060_F633F982 
X-CRM114-Status: GOOD (  15.20  )
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
v1->v2: patch is new
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 92bfc5f65e0b..4461b47a16ad 100644
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
