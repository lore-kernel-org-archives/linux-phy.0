Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EA9FCD8CA7
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=injhE3QukNDSBknkalnfLTh7tZvbtQjA59MgsVZJVws=; b=FyMZJ9IGXVXw6P
	fMXqvAl18kLkhMlr0MtTXlVhfpnYxxSLqSek/ggNMifxPKQR/igLzu8jHjbKusOAGTGjl7kY8Omwv
	afQUEU3giD187Q5eJH1KF3touI6X1dnS0FFReGqSHIOpbCMLVeDIRITgCv7m8AnZ81gSeVLSZBdMp
	x0wX7+UvAKDm5cQfzFF3vOl+0IKRqemYNSXOXFJkvAUa63AT1QsRgWJu4EYSodU6NYNHMlc2eUtGw
	ZsSpFt0cDNBUvvgn5xuneXXwAK4Eg0E1/D+w8XDxmEvK2r3E22Z1C6yMpJfbBJ7t7Wh8jL0xj6ptX
	ntDT/8zU/xQS4vNZEj/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiHs-00000004U3a-1J34;
	Mon, 08 Jun 2026 22:17:40 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiHq-00000004U2a-0IIh
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:17:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AYbRR438PJ3WlN9KtAlLEokYi0kadaZu4JU9Ia8lz7rbCSpBPw8pQfknRaEcTIrzio/zqsqXHq1N3uGj6OCraQ7CZjgPrINGaVX2JpfaZFssQTxsQZ3hvAtDHdFk9kcOKtNvfyror7B0GTFCEfQWK//4bkcPnDzPUVjhHJi/CWzZIaNi0/K4vMoONn1cLqbey6F5YK3ksMTH7jz9tPpCDsSjBRPRoRJrGsamh3dDHYQj6Kg1JZskWKjGrM0qCOhJ9M83v1nMIse+5QFVvlqw5Y5CRJw7Bdgm0PNV/Lx25ynBG5KWeBs2dA7tsvXS9e5gOOZQm9OzmBp4y6hZlNfNVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LxPnY0TAhUeZC603K5OH3Hjf69R0/xUgkl9KdK06etQ=;
 b=ItbmR8OEASyrieWdeYxIz4LsdKdUWnnk0APDPjBDMER0SgIlueHndeVFXTdI033Biyfvmeu7LVBBuN5yNf+6JZ911QzavVdLUlfMTlz37dtoobJkKuyvBBIAO7VvvEBMfpdy6y9P9bsTOPHRw+1JJLI4udCyUMiCZtqP8YwUzFY5V+6CiuMmviVgoRGqWHXIxkN86g9SQ6AXLREGArF7mdOAwxSFnjsyCg+NmWx0nKDo6ISCmN6MDiB5dQdzfPf7TvrKcLkxvB5P25hJKFWjBKcgcmOVyg7LLTQKr40fx0IPBIcvK5j8sJlqM4Q+mQkBAaMGM/N63PYTb+lQsb97JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LxPnY0TAhUeZC603K5OH3Hjf69R0/xUgkl9KdK06etQ=;
 b=gAh1MCzKF4Hoi7O3/maugelokCL3h9BGx0ArMH4iGiV2Ve4GKnFsH0pMjcYCyLUYsE5G3RRjfmJG6+XS9uEJ5UNtKY4KaqIcp76UR5pdiQtTSafyHk2Gmt1rr6fO7dNOX/jjzvWNEYxqII81u6KWCUhDOpVESNFFB8gmMOT52SXBqepsccT0Jjce4AtfnQ44Pk0mYP30OQ53HYNqC3F5Eq7u6yYqrvdtvbtTeZDz9jo3A+5YjwifxWUdj8k3kY5HLv18ij9lWE1G4304CfPp/NYuo4YBk0WmJn6VHWSINtBovjaQfTcy72rqXSjBzUNK0N3elk3L5GjVNktdNJPdQQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8338.eurprd04.prod.outlook.com (2603:10a6:20b:3ec::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Mon, 8 Jun 2026
 22:17:31 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 22:17:31 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy-next 01/16] phy: lynx-28g: avoid returning NULL in of_xlate() function
Date: Tue,  9 Jun 2026 01:16:55 +0300
Message-Id: <20260608221710.1572971-2-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR04CA0107.eurprd04.prod.outlook.com
 (2603:10a6:803:64::42) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8338:EE_
X-MS-Office365-Filtering-Correlation-Id: e13c0c53-47fd-42da-97d1-08dec5abbbef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|19092799006|10070799003|22082099003|18002099003|56012099006|11063799006|3023799007;
X-Microsoft-Antispam-Message-Info: xrK3IHiD6m6wocqXlP9srEbB8ZB1vYZK554GNnQjV22WjPI6O5hkSBp36fglRQmd2H6Jna8oBWQlna8kMdMI4z4HQm4y2xzJVx27f1zoCA0Z2aokR6JTlvgqyMb4MWjC5iixv+zGf2KZ+D97cqU4Mp8zxX3rzK+TBTqZhhwwC8Snfk5bPyuhOs4cFt2zgiv61EVuuMQbp2H7qjoG7NRLvJP5e6I0lds6xzKlWe7ixL5TAom2M6DNShrSxo0MoGVPV0eFqwxzqI1dXEieFSAygWSaFTDzbeZRgaH1wx2oSAvX+BsHUqC3TMRE1iWmg9mR8RV+zm8HGvRcuBEt68xbp634MJQY7eCafjw9q8GWydeMcqKuP0ET9s2M1hpXOeajfUiEqGXAWbBWj94ue4ypfBw+NdCLlTQiBZ+dDaSr+GW+RPE7rVKVxVbx0inZeG7rCfYPfOcpyIMe5fGzZv/ph1o5B8jobxPrnnQLHHCqJSNNAdgbPZnAdsFWBT1ZT0dy3xSSul1OfA8nXEoVV2DO9CgjJ3u+WY9eG6jfP5ZKdiZiokHGCejcC2rajSgB0b/t5W2SEpeWap2wdUci1/O73dPvQQC/+NrZJPdACKPSCgSliSkRzUSKLhcVnRrqAHuyXLzaVnn5gL68j+gtAk8IoD9Q/xB5n6r480XZnf6i+vdNqO1C/te06jeqAMhe6d9g
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(19092799006)(10070799003)(22082099003)(18002099003)(56012099006)(11063799006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+VHn+kjcWi0IuSEXBUPoF10i48fCLjxiHNp7sMXahs1aWyiLrHuPL7wfpcDb?=
 =?us-ascii?Q?erbKGOCJ1tIdqguzeEpdL00KMqVvDQ//cVLuKMINYpA11kbHN63EPhmI4+mA?=
 =?us-ascii?Q?TgjCEnsz6WeAKPlWGX69PNqQpaD+quugU+Z5anr9TScguQupYBtslc/domhk?=
 =?us-ascii?Q?VSiSoFhp1SFn2weVsYJcIg30AE6HMK9M49UFoQfZX2fJibPY4EwHMvJ0WhMK?=
 =?us-ascii?Q?FMUSkZ5kNWjRgpdioLzr6v5RkYPJ2v3bZd8teotQghHDBELQGh0tV04OyajU?=
 =?us-ascii?Q?hH6UN5C2cYDlxjK6OPIusT4DX2/YGvGzHk2cvAYp8zEcWT6dYMfytqYZak3L?=
 =?us-ascii?Q?Ha5mSDxkc64Aqxh/8dcEGZeqxnjRy8NijGv2TqJ9nCYrcnSlr7zu7ccUKjmA?=
 =?us-ascii?Q?eTiT0dTg8OKqPr77/J7lipGhqC5g+/Xu8fzJ9tIzQd7eY9Z1DYIw995sRg4C?=
 =?us-ascii?Q?+f5ivTPSvIvkZMbs9hDtmq0xNRAmJhdcotmMVLf05if2N6LK2weHkluHk3T0?=
 =?us-ascii?Q?ArgjbgmDQccHCdIP5DYz6KWcOgVpA5NGbAJCmNPiJ9mAQsh+3PCbylnMnZtg?=
 =?us-ascii?Q?Rr9BIovtMr6KBnW2av3NjH4Yo4skobk9ccKGyFB05rAlOnU4HjarVj8WRI54?=
 =?us-ascii?Q?foCodZSwX7jCYXG91OolZeunsVHnPdV6yukNLylI0EtPiGYpS+szjIRN5pKY?=
 =?us-ascii?Q?HOy4rmDnXfLseY81O7HmOcwPkPb43OKXt2CxlgpXAZBIU6G9SY/lmqJ98wRV?=
 =?us-ascii?Q?E3xbgwjwdlUT6tRPQvBfS1VUKGgk9MlYqXSi9FSwNstRgEYtNaRKT1xQIwVA?=
 =?us-ascii?Q?oMpHPEZf6qgAttzWOZQoTLywfeERhwQGOWqonQBNfmxjDJplXAhv/ZWjzi6E?=
 =?us-ascii?Q?jxFIxDylGAsbniLOPYonFU+IkywYVE/YnvBlZm5hSp0KyiBo0QMlI79w65qf?=
 =?us-ascii?Q?121Vq+0vsgbQazMRJLYI7D06SptsV0CHqwR7yViddmSxlvPrbvBhM2JoA3Vo?=
 =?us-ascii?Q?XBDJU25kaqEyh8iNJ06Cy1lIrmPTjplKNU5BYxxbPerA4kFyX5EUBov8aEE4?=
 =?us-ascii?Q?07xofkpGkOLivG4M0PXUCaZY1cLHq1q+3kQwwOANG3Fdwy+2oHQ15enZj84Y?=
 =?us-ascii?Q?vgV10iq6RA5RtLbsqLEm2pcayuQ9YvtyAUxopIWl9evlhCBwK8YmhaFrwb6j?=
 =?us-ascii?Q?ENnfuAvCY1aQ23jpa5/Q0W7JuFozMnXe3C9gj6a3ZTqH+VwIh4QArlCcHN8H?=
 =?us-ascii?Q?W3RJVFnSS+UjiJhRuHM7Mu9foWOr6PKbgaC/40KRVk5G1Iu3bIh5z7uBeo+B?=
 =?us-ascii?Q?bYQEdnBB2u2+Ojo7q5d92NpQTBEk9EGp9SKPHwgD6oShmFHn4cxiXyD1Sumk?=
 =?us-ascii?Q?Dm/agbyfg7sQ1XWCU8gp4MrQxkrK5uZPFHLCbbUZuu7pLdISVAkGSVc+Zg68?=
 =?us-ascii?Q?X0AbokLsZGxlBn///Smz+t5SNBnGlLDTuqoc+iAqPBULGMfig9Rd37RLr7zC?=
 =?us-ascii?Q?c6FvrGKqcEzFToFEbM3DI9RsqDm01/r9kUOkW8cKLSinzlh93/xJyJPBH/hV?=
 =?us-ascii?Q?DSRoTiaYke2Zqd+/RrwpVLySHdmxncX8IHGR7wU1M1Ml5ojt9Y/e5Jku0Ev8?=
 =?us-ascii?Q?3YY7F5tCExf5gZ1bZiFjjDlROZYb/5bSsI09OvnfyWeaom6nkVRuGhLlLimW?=
 =?us-ascii?Q?HWSXF+SX+eDkjhCmdgtLE+WBA3Fj7OVW8w3jCfhvh0c8frv6utxI0pTVHV6a?=
 =?us-ascii?Q?JwcQyt+90+EhSai0GOUhPHfQ4fE0ZRU+6tIomE699/qO1Iy0bt5q?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e13c0c53-47fd-42da-97d1-08dec5abbbef
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 22:17:31.7240
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZillTSBin5puJ1LOANVIoBggtR2Oj2ZR3WOvM5s1glCOjSvNiFmTGNf5FHKkIsKrzQd7ltXdy0ZnkKreI1BokA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8338
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_151738_111174_C4655FED 
X-CRM114-Status: GOOD (  12.76  )
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

Sashiko points out that _of_phy_get() does not support a NULL returned
output from phy_provider->of_xlate(), just a valid pointer or a
pointer-encoded error.

When lynx_28g_probe() -> for_each_available_child_of_node() skips
over lanes which have OF nodes with status = "disabled", the
priv->lane[idx].phy pointer will remain NULL.

This NULL pointer may be propagated to lynx_28g_xlate() if the device
tree contains a phandle to the disabled lane AND fw_devlink did not
block probing for the consumer. In that case, the PHY core will crash
when trying to dereference the NULL phy pointer.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v3: patch is new
v3->v4: none
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 92bfc5f65e0b..cacc128dc96a 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -1435,7 +1435,7 @@ static struct phy *lynx_28g_xlate(struct device *dev,
 		    idx < priv->info->first_lane))
 		return ERR_PTR(-EINVAL);
 
-	return priv->lane[idx].phy;
+	return priv->lane[idx].phy ?: ERR_PTR(-ENODEV);
 }
 
 static int lynx_28g_probe_lane(struct lynx_28g_priv *priv, int id,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
