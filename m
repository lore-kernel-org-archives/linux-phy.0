Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99B9FCD8CA8
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TrG6l5Xyg4pLyqlZTy/T5muxuBh90rimC9MUNKQRrlY=; b=s0q8npV3tCsrd7
	QOmNyW0xylGP1e30UE1UOwupGUMB3JVgwHoZ59V7Ghp6FW3W7I3RJvQt1n33/kiH++p0jxScKttOv
	ZcMMPbQfj/wQlWufvBRDz92Ftq8OuZD4AcaxeD9y4jqb+zrOgt6ntz5aRxtZ+acNau6x3TeFzy6ZH
	GTHQzC4YU4jB5JllikJv+HGCmCBDeRNg9yDaZvMaax38YIjr15XlsdYrDWAhTL1nlqv5K/bnGT+TB
	Si6+JobJPGmwSQFj/eWwvnqqjx+c2tWWcMT5luPK14p7bDDPrNhgSQ0BcOaoo+6MkrDv9JTx1RT0k
	P093j0xzoxoMHZH6dLcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiI3-00000004U9J-1bpC;
	Mon, 08 Jun 2026 22:17:51 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiI1-00000004U2a-3Kdj
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:17:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UyC6k+YtQR5ZymVc2JxUsNQqbmMowopbX36vieeupCSvQuw+DWR4cklyrvJbdhDcwUzpmsS42RPcqPjyeB7AMRL8WP2P2u0ziZJsGmG/ExH7y+ahVBG9OFLpl5ImJRw1gIizXcRF9UY1diX2eXnXqE1OvG/ZwLPJQYHOq6KQtV24LiG8ip4QR18y9RQoA0OFWA0vAh9Ww8/dUQUspYibEqOLbt1LOqWYLeKIK/9IVYtQjtSY1UsSrpogxNFgICI788Obeqw57krze1kSe6BRx+7/3jZrTdi4lFBRH/hhLg9u62gugfGgV2jgh6/f0wlJ0BHAeetI5PMJWDgfCmbBzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gtqrvi8yzeVonfG+tOpjOsTJZxCiNOWdle0VXCTpI8Y=;
 b=M8NmgrS/LcWw1bmnFs4gVpEqmQEbuLkXW1Newn6D0vWGJqUy9NdY5S34vGDoUXZaq5j+xd2UtMrDHjqr8pujaM7UVG3qp/u5MMVgiJk0S0aqE1qclvyNTt2XgQTEDn6rMIQuimrcc588i8sLCvHCt16g8qn1hBFdeLNCcmKf//a0e3M23EwoPp0B2rPu7ip+1SaF7IQuvgo8LpQppictToI4ucggCxNXLxkVHu60Cr2blaPoxvoqksvwpskhQ1i7vZOui0skkuanlZQjOssmQZC4h5xfr/ZdWJnqrGReTWpFS6/30COTZVeGckNZNgVA1GhZIxoBK0n2feVJg1lABA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gtqrvi8yzeVonfG+tOpjOsTJZxCiNOWdle0VXCTpI8Y=;
 b=eZyvWVBWCGi+thZLWwf/HzeZD4KCDaxuE3bolJD2si4E5C7M5OA9Ce4FYDB/+dARV4yNHqH08YLGTkomGBQb4Hok0puZIKMZVuis2wEbz3sitBar3ImmZWS53Baf51EFZNHJ3b+9qeNebQIi2+XebURugPWOFVfuF6qqYzP6boYY/XMP/gfgFuSqsyCg2AhGR/o9zXBLvZmtvLuAQ8mlR3p3N4oJ1gzTIobBDQ2gv4ZZn8Sjqr5R9J9tRExKHPWaVXgQybPeU7FgmlsM5rH9W+odVnSAJ/q4BWdh8QF7qoAgq28RJCiDHZ8O/ZDHa96Vt8f4ayOx5Uxokh5zlve7WQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8338.eurprd04.prod.outlook.com (2603:10a6:20b:3ec::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Mon, 8 Jun 2026
 22:17:42 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 22:17:42 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy-next 07/16] phy: lynx-28g: provide default lynx_lane_supports_mode() implementation
Date: Tue,  9 Jun 2026 01:17:01 +0300
Message-Id: <20260608221710.1572971-8-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR06CA0182.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::39) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8338:EE_
X-MS-Office365-Filtering-Correlation-Id: c414531a-5c7b-4944-75a9-08dec5abc23a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|19092799006|10070799003|22082099003|18002099003|56012099006|11063799006|3023799007;
X-Microsoft-Antispam-Message-Info: Yu7+PDRlcA0cfFw6MPIAXK+tR/w7TL0GiqZCKY0C6GU6DgfA+WEGuMaSMEVOrkXYCutqjQ65BofmedrmZQAdRCXfIWJekLrQbKKN2pnkFLE5Yc31+A5hZkXoR4BhlOOv/iptIUFycU9/fY63qb1V0eD8sO8iKgDCJAds72i/UMBnqaJY1bcO/d8oDv/F0335hIrHEFWGjQHuKwdVUxX51FfTFLINbrChqLFZOV2wQNBCdq8HqCuspx6/7Z8tMJEIGd8xcs15DKxDSBrzc4cIY76vjywaBAR12xI42US9X14lgBD4/Rhi5BfN+NHHO5Er18NRgGdQVj2eLGzoFdmsKHskIHeNpMmyYLnMTHmhcN1o1NKoSo02e7Bfxl+/iWhHS7vIhBgS44qs/EJvBQc3vYQZS1xn10Vs9Hzcq9ZhYpaNLLuUmNA4ShiN370DoOHbEhGTVQBfeJrV6CNnnsdDcTNOkEK2wH50RO/XKtTeHBNLa1Tl1Oz2vh6cYKLMb4+YYr00h2gn5ksECVnAj0CEeh4vOue5NQ+eTNf9KbT7hsP2eO+mjkJLuW/6mYBkr98XDIAd5b5utLREs3A9hYR72y/taZv43w9VHgXiL6RX3F38SmAvN30D3e3Xf6ncX/MAFxZhAtaEW7b1V2fjg28+ng8rw6nR8CQV3CL4v6/r4xUOVuOt4bYRus98zLramrXb
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(19092799006)(10070799003)(22082099003)(18002099003)(56012099006)(11063799006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CmRlzu6GS07jr4pyDq6Q95DMBvZfBejC35qF8gJBRaKlLVYUC5bfK8Qgms/D?=
 =?us-ascii?Q?Euh/zlLIQhkJjXLx2WFfXdBGNMABdBhALIvbYpn75358YLFqtQ7MBcGzl4qa?=
 =?us-ascii?Q?dI90nzjN6FvHou4wwdnHfgLEr1FbfTVvP7B/mqsS9loFmyvW+JkXikprka+Q?=
 =?us-ascii?Q?8wa16W3l+IHMaTEBN3UkLMUNlUdjj6Xh4+iwXa6E7hviDBZG81kS++aTNAEW?=
 =?us-ascii?Q?78n3OHrZJareEYb+bnnntIsshn6yaij8H5oy28xVoK9rO7D6/y8O8WygcCSa?=
 =?us-ascii?Q?BT+uPvCHsew/or4zOlLZJ4WegT1uTICZtPsrtyDPqKBWcShvjbOTCFys599n?=
 =?us-ascii?Q?1xWh5niFQE/Pu7OOrrw6AtYyXgVjllj51jahzPPXMphJaoXjHyT2rvmtkj2S?=
 =?us-ascii?Q?9DRyhdSFwWzxWy8hcth2hmARo+cEqdsvXS9jxIGkiyUcljEHT+MgHx4bRp9v?=
 =?us-ascii?Q?4dMRaegx0fWztKb833z4P1S1hdkuznzKM4avH2qj+sZp8rEnha/Ic2KfP/R3?=
 =?us-ascii?Q?m1ILWERCGADZYk+t273WC3u3KX0n/XS9d2ELzjRMZqq4BlvZPqLqOfwKOL3D?=
 =?us-ascii?Q?JKu9o1TFbnqcDHNHufmgkE31nm75OK9zBAS4K8zhXYr41CnX5fUlWrE2gC9e?=
 =?us-ascii?Q?0qXOLOnMsax9y0I1AWYzBr78b+r65akQ78NrTwWtRQ+ydfExxCD7H5AT5iQl?=
 =?us-ascii?Q?svKnB0V8qgKfLfqo5cRddHo3TO9+fjjImOIRQFL6pInC+eM0nhuGsJdvpxq7?=
 =?us-ascii?Q?ggFP0LrODRlVZcm2ysQpfQMKu0pHBy6rfiSKUt3TmpeMOmZhrUWwbGBhDZ9o?=
 =?us-ascii?Q?ounfQTWuR2fCLMu3SHV/Htb0kAGLp6H5XWO2y3Bd/W5KUwcjhtTe5k1j6H+l?=
 =?us-ascii?Q?lpA6G5GPDrpqmeEVx1RRzWaZ+8HTY6LRws+fYfHNna8xuwosyqQrvA+ottUQ?=
 =?us-ascii?Q?lAQ0+Wh0IoGheW+A3iQNlC7iwZguLjRem8dt8mUs1eoGV209S6rBH3t7ku6d?=
 =?us-ascii?Q?p5shLajtWZPAL2Z/HkS2l2kGMZzyqXbYwhTWpRYvURnARHQL4wf9lcEu9Hgh?=
 =?us-ascii?Q?oKh9jawK1wTf2VfN+AN7LmbkfzfRyifc1Ja43r/LIWqY8VqNPrbBB+Xj8hAR?=
 =?us-ascii?Q?4JbL/eh7/QCA8S47x2b52/jznQNBcB1Wmz7KamdloAUZnoGAhX3htSptTgH6?=
 =?us-ascii?Q?/mBloP3ht5VQ//JQyqCba7uN2hbvqw94t15PwrEe6ooV1AJQQ7SY1qyKwope?=
 =?us-ascii?Q?VljyS96zEvyRVrWcDiesN3G0oxflSKySbqtRs/eSJIgkzyftIWPWuP87UF5S?=
 =?us-ascii?Q?KUYetO+42yZKNw0IIZMQ5HWjJooe2bIzukLaTS/xuBCsLQzhWhITH4cbr79P?=
 =?us-ascii?Q?IMeaYELZSmqZcHFBXgluGIFQbA9NBumx/51BOpNd8hZi7Ivb30e9s8GiIeXE?=
 =?us-ascii?Q?c+ee56hJ1RXPQz2CeF62Q9OpbheNqVsPxZ0+yyZTROtRAO2w4uLEBOWFPp3Z?=
 =?us-ascii?Q?u67OtORDCRzQTkpBbqJa+WCX5IVpCKXLIolpY4UWoOk6DCZwB2VPvelTsPvC?=
 =?us-ascii?Q?fVqaTeI79MUcvjtuQvFydPJLkE2spZG3OcZWhuf/WE3m7BURdMEJ2Tq51xl0?=
 =?us-ascii?Q?BR8ojvLP/n3LD0HobQa7y7EVrNQc9+ltu0ECPw8P70oGYfZbMEDkapVw8Gc0?=
 =?us-ascii?Q?V60Bh4DpMLvS1xD2FOnJw+aYECgIcYmloqkw2zedRvZF4qGT003VI5MKk9K5?=
 =?us-ascii?Q?Em8TuOnbqntGiIQMc91BxHZNBZgKxwvSwI4w3asZE+8hIZwoO2V5?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c414531a-5c7b-4944-75a9-08dec5abc23a
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 22:17:42.3021
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5peKRPxTwfdJ0UWYoEzSKhOeed2cxIKuLvxKTfFr+vPr2bUl7Cn0x39EXp+lW1dGzoHSK8JVh3AMSFxeOoLBSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8338
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_151749_835624_0FB314BC 
X-CRM114-Status: GOOD (  18.78  )
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

For the 28G Lynx, there are situations where a protocol is not supported
on a lane despite there being a PCCR register and protocol converter
available:
- LX2160A SerDes 1: reference manual documents PCCD fields E25GC_CFG and
  E25GD_CFG and protocol converter registers E25GCCR1..E25GCCR3 /
  E25GDCR1..E25GDCR3, but nonetheless, Table 289. SerDes 1 protocol
  mapping shows no RCW[SRDS_PRTCL_S1] value for which lanes C and D
  support 25G
- when using the "fsl,lynx-28g" fallback compatible string, we don't
  want to offer 25GbE because we don't know if the lane supports it,
  even though we know how to reach the PCCR and protocol converter
  registers for it.

But for the upcoming 10G Lynx SerDes, the above situations don't exist.
There, if we know how to reach the PCCR and protocol converter
registers on a lane, we implicitly know that the protocol is supported
there, so implementing priv->info->lane_supports_mode() would be
redundant.

Implement lynx_lane_supports_mode_default() which decides whether a lane
mode is supported just based on priv->info->get_pccr() and
priv->info->get_pcvt_offset().

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v4: none
---
 drivers/phy/freescale/phy-fsl-lynx-core.c | 27 ++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index f49d594622cb..802e32dc6dca 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -40,6 +40,27 @@ enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf)
 }
 EXPORT_SYMBOL_NS_GPL(phy_interface_to_lane_mode, "PHY_FSL_LYNX");
 
+/* By default, assume that if we know how to get the PCCR register and
+ * protocol converter for a lane, that protocol is supported.
+ */
+static bool lynx_lane_supports_mode_default(struct lynx_lane *lane,
+					    enum lynx_lane_mode mode)
+{
+	struct lynx_priv *priv = lane->priv;
+	struct lynx_pccr pccr;
+
+	if (!priv->info->get_pccr || !priv->info->get_pcvt_offset)
+		return false;
+
+	if (priv->info->get_pccr(mode, lane->id, &pccr) < 0)
+		return false;
+
+	if (priv->info->get_pcvt_offset(lane->id, mode) < 0)
+		return false;
+
+	return true;
+}
+
 /* A lane mode is supported if we have a PLL that can provide its required
  * clock net, and if there is a protocol converter for that mode on that lane.
  */
@@ -48,8 +69,12 @@ bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode)
 	struct lynx_priv *priv = lane->priv;
 	int i;
 
-	if (!priv->info->lane_supports_mode(lane->id, mode))
+	if (priv->info->lane_supports_mode) {
+		if (!priv->info->lane_supports_mode(lane->id, mode))
+			return false;
+	} else if (!lynx_lane_supports_mode_default(lane, mode)) {
 		return false;
+	}
 
 	for (i = 0; i < LYNX_NUM_PLL; i++) {
 		if (!priv->pll[i].enabled)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
