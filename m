Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA6ECCD98C6
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=It58HIToA3rU4ntmlBc7/quf1nljhN5LJNpnsUSAd8o=; b=WqJTmmCQyEO4ej
	KkXcFoqZ7e9avDolK0l1bDFkc3SvGI6eLiJ7jRjqSBCUU0vqRp+Zg7aKYweNYBL3qDBTx/NzP1D/2
	eHeLRWTHV37qIbHmGdoYE2PIt/Hkbmpi2XQ2AsOoVpKr3OejSHkKX9tVnDTYVPvaysWEb3lzHUUuF
	p3elEfHUwk7AIx2B2n6B7mfIQ6xkw7F9E21N5Si4hx8/TPMtN6GOWs3SCIh6Wdr+uGyC3/ThCzzUy
	FlKekHR545yEWW7Z2tqegk+228rkVPQJtcWVK+zb5R/hjiajI3mJ/fSkCd+rTCdrR7fvcYXkv4oXC
	99///H4DSfjhwOIpo5qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKjE-000000080bo-2amn;
	Wed, 10 Jun 2026 15:20:28 +0000
Received: from mail-westeuropeazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c201::6] helo=AM0PR02CU008.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKjB-000000080SM-44U1
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:20:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oYIs8Q0vSjHtTLvs4Wt2oQRNkCknAizeo5w8/KuO2CAPd5ZQT8WszK1arVO0FsmOO/i+zVZmgNIojy+GTFmTUUDQYy015KjY/X2p1lPcPLLQstPAO0sq5c2x0BUpm5iKmpFOFv+ZXzpxP8LatwvErDtFe/l/T2lX1a5cZN68JkbZEhuyB5xytyMXDP3oOJx2uaiS1MW5L5BeaFVnqxoL6CJis1AQiW1APoK2A+u/c9kzcXbFDM7vtIDUEuNmwr1Uy1BDsU5pWJQgf7Qp5XEBDaxnt485ROtn4WpygbFt+Ee1v+WHbsJIsFGowExmt4cyZ+VPdTIkniqdyFxBpnDG/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iifpCkjM0qo/x0HfgKuKGyoJAGaYNrp1KFdLOWxi/CA=;
 b=AKbnSQO8Ldz8B9QSAaEfbJndOq15BsY3dCrrsaNPybAWLm9AzasMEYYucWL7YrrzT7LfLYK0sgVabo120irOOhlIpaJemzQGNhHipB6p7F1qtnaOzHu+CQO9dtyg+ElwbOHomOl6vfQ3eZis0NFDhp+v8tnINvKBOcNj08Xw3ZPIoKIWy43AlHe7kFZlYF1V5iQ9D+dTB42p3A+cSm9b0ENZRc92MsYiB3E7XJkyJyBepPXS5JReHJWJhOxJgSxBfcghkMq71IehgfTDo0I226XS1zpU0SjGG0KGo/+U4OCKiOv55UQ8i73PsXK5LSZLDN/JyPy/Ipd2ssD1urnncA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iifpCkjM0qo/x0HfgKuKGyoJAGaYNrp1KFdLOWxi/CA=;
 b=Q8xbpm0zFYWOdNgHVJE8SuGUMWlFNgTcyOqPXMQpS4ogwqst7ebugWCEoCTIKstcCZ6+VrtrF2yxcVFww10mritYwJFuFs3tf0z7O1ld/9oiBRS+Je+WabdqCC9ZYjpESiyk/HyF2EjOBKGiSLiPa2ue5uPEyOIEOCQdmHnockLjTkliEGso6Fz9VF3cW3lx2e/HEC2m7WKhnPHvH9kwy2QL4DnRb+o2D/YOEO7Z5YQM4WVJa25v31f5XVlMDa6AvV7p3vaGn0m8Fo1NYooXl1vEOSI6FfiroOvTkKDmaQIekpJadmwltzVEIgPls9HwoGjLTLGzQI8DR5m5HHttZA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8844.eurprd04.prod.outlook.com (2603:10a6:20b:40b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Wed, 10 Jun
 2026 15:20:20 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Wed, 10 Jun 2026
 15:20:20 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy-next 13/16] phy: lynx-28g: improve phy_validate() procedure
Date: Wed, 10 Jun 2026 18:19:49 +0300
Message-Id: <20260610151952.2141019-14-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR10CA0018.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:17c::28) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8844:EE_
X-MS-Office365-Filtering-Correlation-Id: 48ea5f36-46c5-4860-f3c7-08dec703c8e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|19092799006|1800799024|23010399003|56012099006|3023799007|6133799003|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: t8KBYUnywQy43btlRTM+sGSHWGT1X3ryAS9CR0+03DVmDuUe3O3lSk3quOFxdOWIZjTySbeCj/UmIJKSVjM3SmuBmeSs0oyOYXn5HDt+GuFrc7C5bLwtdqijfuThe78V1GgpCJAo0f4mEo72ApI1MWMc9ZeL0c1vLXkRLXvBwne6euQ+0NsuLGA2UHcnBwwol24UzEgSih5aa0nW18OjJ1fLmD2Z1EICzsQqMJdBOsGF/oPGfetRSPMqkBvAJl97PRpGLXXYp1RYNC1Jlh6qeaEq+5nApwAi3GTHdB99+OR2oq7d2e5sBT684h2af/CgNJ8n1Tsm0BrHaUo/IbGuhH35FeIeuOUkMSGzvVQSOB3u+jB0rBZfOM/RUz4238vvG+2SI3LayH/EEcH6tBEKkw4g4Y/d31HTqh/W14Uwuf19EytMybeWSay3yoA8r4Ey3BZGInk7pppLb7/l3sqj7ns/Pt8BOqbgaAJ04BsUjv3IsxVLkq0xsS0J8nx3rRPmNXwI8jLKptjjjap7PfaphPwAiu7IiPGP5zphEmCSQi2X+Zc6czzpItJRkkXfD06ke53YrZLDRlZuy64sASkwhJw9hngOVyqjvRKwwLEpK92lCP2q6hUYiOTp2YDT9+1+WUzrtsF1nIGPGcXxUR7euitL0tVbZRZNbsJkQ+ORYGC94WU4YitlkMRmnV0nbzmu
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(19092799006)(1800799024)(23010399003)(56012099006)(3023799007)(6133799003)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2PhbRYYK2R97ei3LpaaXivBx5loZBsPXaE6nD27/VPhlIqujqlJirJt3CRxn?=
 =?us-ascii?Q?MXu1pVUxrmo7775RHUB0wbVpck++Q0NmlTlWlAokGif5riixxbmBecC84aDz?=
 =?us-ascii?Q?PQjgDnK/NF5GMIN/9DF2KdmSRRdX5dPbONNQE/3Wc0RHDffD11dqBdSM60wQ?=
 =?us-ascii?Q?HbSwG9SJ8o6imnzi3+sw84mdqY6g9B35/tKygnRFozWlDpRWoS4cTaQYgwOp?=
 =?us-ascii?Q?n5578a63961ndKH+RmTFWhlnc+cr3Q+ZI93d4C8hNQOlrTNAY13xn+92Vprv?=
 =?us-ascii?Q?puadKkq6pQnfgdKMrFk61j2+fNIwA5AMPdm13nHNUOIs5gR5rl6d2Ax9/8OR?=
 =?us-ascii?Q?oM/OfCcuRX8V1Xi0u0XllXwk/xq9Xpds/K/9lO5eYdKhOeG8aUZ/ph7ETWQx?=
 =?us-ascii?Q?gppg8jImGGYuqxlqNYpJiPmp3w5lZqrF+m8qtXI7Ba0tCSICWDAEGcF+/nGk?=
 =?us-ascii?Q?6LLlUiU0V1sx6Vjih3K/R2ko/emt33Y4OMjCnksYtOSgpoJX4i5AJZorPFi1?=
 =?us-ascii?Q?B1Ez4tnDFA8tm9IjaUJLSoTf6FSJLKRhlJcmiw+JY/2Tgjn0eLmrxOaPaspD?=
 =?us-ascii?Q?MO6Go3sisaF/wmTImfKKySwln3XDT98p87EDd9ia7jgOxd9bwQUZ8azGkI62?=
 =?us-ascii?Q?6RIUCe5y4ybZGJYn7It9V58SRgs8A476Kc+4YXMyVVIWwsx1Pdpug20JTjJT?=
 =?us-ascii?Q?0sa/+NEX0vMeSFskWP1k16cANKavisPPhE0J3uUv/9cCLukIbsPSNWg6t2TL?=
 =?us-ascii?Q?kg84lvD+5bm63OzjYkuEaOjiv8VcCWgV8dP6s4WB8HtOpWlgF6cgoqqEaSWb?=
 =?us-ascii?Q?9aiHlw2R50EFcuBa+Rw3my3WIYv+sCRd0SruXxo0JZlHzatod/ClTPZBSQQM?=
 =?us-ascii?Q?ENsPkxuReX1P+nspo7AMCamSAC0i11JNddVQpGmIeh/VIgwn+GLDG0pB2+ST?=
 =?us-ascii?Q?iExmJTvOKXsR0TLG2skDTF4UFZlXml1VehkVLYsy+mR3tIdZ1mN+tc6Bb4HO?=
 =?us-ascii?Q?X/b1Cud/1dDIyJnjAqhc9b1K36e1+hj9+K/IzGaasSj40Vwd63FuksXrD331?=
 =?us-ascii?Q?vfI9z7ytbuU35S30lKGu/KLG9PvrGSfpvuweqFHjZGvg1mrzf7ePn9pIyivL?=
 =?us-ascii?Q?urfY/0ZnqRtHriLDGRCCYWxUdhxIdWR1EPiI+LApPGwzYia4FwUHIVCX3vju?=
 =?us-ascii?Q?7q3oiW119jXrQTVfoAPZamc4HQHtNr8GSENK4XRThZk+lglQNNwZitUQ8GzY?=
 =?us-ascii?Q?8hNNtjHlEyQDMfROkgG43sZvm95eswoHgI7aaXW0WaU3LbfsVyHUFXrYHtCu?=
 =?us-ascii?Q?XeFP8kGhmKy5E2xHgAmxrDcjyJmCeONYVcD0LDrWCf4EqW9RVfgYPePZJB8O?=
 =?us-ascii?Q?rcv2n93mD/Kt9/Ro7yj2SwR2MR0/5aRGM+QmqyDxejJcgCNzEMx+hE93QbjB?=
 =?us-ascii?Q?Ajbw+/UBRD7oJXXvY2K9Ge9F7w5b1ZQbhSG/TCv/oWj/e/0mTrtqUV2X58xH?=
 =?us-ascii?Q?pmDyHBW7c3fag0zhobEkcNNlQOU+Hh2VM2vATGhDU4qs/LOJMXuZyMCh0muf?=
 =?us-ascii?Q?BG8FJyDRM9Fcu1jP5PApJwXoiBHP2RBsU4zLUHO6sxDmpArAGq/2N6mFzkeC?=
 =?us-ascii?Q?SKI/JYti2NTcVMqDJQKJnskTUU3Ap+HnsmrnFSTHhhGyFMclFb4rqKxib6vD?=
 =?us-ascii?Q?e+Ibdsfl8BuIcJOScy83+Ru21AaYLp5iadJ+59LMOiB9OUcRuKMfey1GZEJq?=
 =?us-ascii?Q?hHyHC+x3gA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48ea5f36-46c5-4860-f3c7-08dec703c8e4
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 15:20:20.5467
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dDO+D/G8vbPsSUriExocA7Xmz03UA4IIG5L1/sy6btX33ereXOEg8ssB3MP9ffrsFtLuJLgBzd/qNzAN8ojKZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8844
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_082026_014241_E40DEDC0 
X-CRM114-Status: GOOD (  20.40  )
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

lynx_28g_validate() suffers from the following shortcomings:

- Changing the protocol should not be possible if the source protocol of
  the lane is unsupported. This is because lynx_28g_proto_conf[] only
  covers the register deltas between any pair of supported lane modes,
  but that delta is probably incomplete if the source protocol is, say,
  PCIe (which is currently assimilated by the driver to
  LANE_MODE_UNKNOWN).

  lynx_28g_proto_conf() does refuse changing the protocol if the current
  one is unsupported, but we shouldn't advertise it via phy_validate()
  at all.

  The phy_set_mode_ext() call should perform the exact same
  verifications as phy_validate() did, in case the caller bypassed
  phy_validate(). So we need to centralize the logic into a common
  validation. But lynx_28g_set_mode() later needs the lane_mode that
  this validation needs to compute anyway, so name the common helper
  lynx_phy_mode_to_lane_mode() and let it return that lane_mode.

- Future core sanity checks on phy_validate() will want to differentiate
  the case where this optional method is not implemented from the case
  where the mode/submode is really not supported. So we shouldn't return
  -EOPNOTSUPP from lynx_28g_validate(), but -EINVAL to signal that we do
  implement the operation:
  https://lore.kernel.org/linux-phy/aY2lFTIALH7qEJmM@shell.armlinux.org.uk/

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v5: none
v1->v2: patch is new
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c  | 38 +++++++----------------
 drivers/phy/freescale/phy-fsl-lynx-core.c | 30 ++++++++++++++++++
 drivers/phy/freescale/phy-fsl-lynx-core.h |  2 ++
 3 files changed, 43 insertions(+), 27 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 50b991870edb..38afcd081a2a 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -968,22 +968,22 @@ static int lynx_28g_lane_enable_pcvt(struct lynx_28g_lane *lane,
 	return err;
 }
 
+static int lynx_28g_validate(struct phy *phy, enum phy_mode mode, int submode,
+			     union phy_configure_opts *opts)
+{
+	return lynx_phy_mode_to_lane_mode(phy, mode, submode, NULL);
+}
+
 static int lynx_28g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 {
-	struct lynx_28g_lane *lane = phy_get_drvdata(phy);
+	struct lynx_lane *lane = phy_get_drvdata(phy);
 	int powered_up = lane->powered_up;
 	enum lynx_lane_mode lane_mode;
-	int err = 0;
-
-	if (mode != PHY_MODE_ETHERNET)
-		return -EOPNOTSUPP;
-
-	if (lane->mode == LANE_MODE_UNKNOWN)
-		return -EOPNOTSUPP;
+	int err;
 
-	lane_mode = phy_interface_to_lane_mode(submode);
-	if (!lynx_lane_supports_mode(lane, lane_mode))
-		return -EOPNOTSUPP;
+	err = lynx_phy_mode_to_lane_mode(phy, mode, submode, &lane_mode);
+	if (err)
+		return err;
 
 	if (lane_mode == lane->mode)
 		return 0;
@@ -1014,22 +1014,6 @@ static int lynx_28g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	return err;
 }
 
-static int lynx_28g_validate(struct phy *phy, enum phy_mode mode, int submode,
-			     union phy_configure_opts *opts __always_unused)
-{
-	struct lynx_28g_lane *lane = phy_get_drvdata(phy);
-	enum lynx_lane_mode lane_mode;
-
-	if (mode != PHY_MODE_ETHERNET)
-		return -EOPNOTSUPP;
-
-	lane_mode = phy_interface_to_lane_mode(submode);
-	if (!lynx_lane_supports_mode(lane, lane_mode))
-		return -EOPNOTSUPP;
-
-	return 0;
-}
-
 static int lynx_28g_init(struct phy *phy)
 {
 	struct lynx_28g_lane *lane = phy_get_drvdata(phy);
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.c b/drivers/phy/freescale/phy-fsl-lynx-core.c
index 226b2af2b599..1e411bfab404 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.c
@@ -89,6 +89,36 @@ bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode)
 }
 EXPORT_SYMBOL_NS_GPL(lynx_lane_supports_mode, "PHY_FSL_LYNX");
 
+/* Translate the mode/submode from phy_validate() and phy_set_mode_ext() to a
+ * lane_mode and return 0 if it is supported and we can transition to it from
+ * the current lane mode, or return negative error otherwise.
+ */
+int lynx_phy_mode_to_lane_mode(struct phy *phy, enum phy_mode mode,
+			       int submode, enum lynx_lane_mode *lane_mode)
+{
+	struct lynx_lane *lane = phy_get_drvdata(phy);
+	enum lynx_lane_mode tmp_lane_mode;
+
+	/* The protocol configuration tables are incomplete for full lane
+	 * reconfiguration from an arbitrary protocol.
+	 */
+	if (lane->mode == LANE_MODE_UNKNOWN)
+		return -EINVAL;
+
+	if (mode != PHY_MODE_ETHERNET)
+		return -EINVAL;
+
+	tmp_lane_mode = phy_interface_to_lane_mode(submode);
+	if (!lynx_lane_supports_mode(lane, tmp_lane_mode))
+		return -EINVAL;
+
+	if (lane_mode)
+		*lane_mode = tmp_lane_mode;
+
+	return 0;
+}
+EXPORT_SYMBOL_NS_GPL(lynx_phy_mode_to_lane_mode, "PHY_FSL_LYNX");
+
 struct lynx_pll *lynx_pll_get(struct lynx_priv *priv, enum lynx_lane_mode mode)
 {
 	struct lynx_pll *pll;
diff --git a/drivers/phy/freescale/phy-fsl-lynx-core.h b/drivers/phy/freescale/phy-fsl-lynx-core.h
index 3d9508dfb2c1..37fa4b544faa 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-core.h
+++ b/drivers/phy/freescale/phy-fsl-lynx-core.h
@@ -113,6 +113,8 @@ void lynx_remove(struct platform_device *pdev);
 const char *lynx_lane_mode_str(enum lynx_lane_mode lane_mode);
 enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf);
 bool lynx_lane_supports_mode(struct lynx_lane *lane, enum lynx_lane_mode mode);
+int lynx_phy_mode_to_lane_mode(struct phy *phy, enum phy_mode mode,
+			       int submode, enum lynx_lane_mode *lane_mode);
 
 struct lynx_pll *lynx_pll_get(struct lynx_priv *priv, enum lynx_lane_mode mode);
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
