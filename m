Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 059C8CD8CA8
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+hmpruIet8KSkYvNRIAeQpxQT4OQvRCJo4airAB7O8=; b=LSIxRVkpQ0EZg5
	5JZVsqEVZ3Qg2N3E5kW9uKLQUQuCH1IVyiehvjVxFPNwCeXFHqz13vSCvzDtbgQ2xeyKOXqfT9cBK
	Kw38jV7RiCOfBc8cg9jBBy/Qsqb+6Ug+zxBrThNkhO/lhhC3QmFZS4o7VS3h3dj7QGjPidypOyCSg
	liALp/3PfMhyC2Ai54ULSJkb8QLyQovq/PVGg3XXz32XX0a339HVEldWetfPooj1LxrcOSe12i/Cu
	KMx3mC1v04Z1Oj2EjVYzvXRXqf5QQIqqYmvOK1CipKCrNlrArbBBDNl6xNfIqbeKY0jes6uwut01h
	Ldl2Etj9JJ05Y65QoWFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiIA-00000004UDM-3F9M;
	Mon, 08 Jun 2026 22:17:58 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiI8-00000004U7x-1sng
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:17:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wffFLKm5wWPQwe0DIfUFaklbx2+CrPqGLABg1bIMLsX6RONSn/vX97uA70MDc742FVUgClrq1cS8MDX/6esNmmVq4OFjuNx8srC7fdBeiAH9WxA0V2MusJoLSv6ALj/zMFcwtCks8PScAjzb3ug/46PH8bv75UJhXwVp/cPNS4L1iZ9R/1yCrSCasRJ+3w3xj5eHUja/dNWev/vcDQjONLr+/cRJ9NhhpQQqt5XSEovdgM8FJZgboQ3kLtHgKEA+QS1bjBVwC4aHZP3Sh4qHEUjgwLGHrrjmib50hov8ws83faI0KMhw8fqbiCfxVSmbudQFN0XtSlgORChEmXhXoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b/EFdZB+TD15ajAKu/n3njz8iZ2GPsHspgcKkQyIfTg=;
 b=Dg/8VOgdReg2Ja6Ca0Yq6z0beGSKE7IV45rzrPmJTLKuI+5MWWXAxT59gVII4nluV7v/JxqkWRJgGpRtcThJ01g9067ueDxAiViTPzlZQBfDftyHH1It+lW3SxVdr9Iz4oBgLB1hQw1Rd201Pb1uhSEEgAlIFkAOJV2BeoR6vs/y3jg8QpbC81H+QJvMKGq6chpwP+pwxJy95MKhZEwwMKopfQ0dZuJsBx7WKc9llbsjRL9lwwxH0UH42tAZhDXhSjMqC+wgnD653h0FmtNvYvRRJUdl0UhG3YR5oAvHW4WCChypTNsDKqbiN5kt7Mf97xaYW/oABSQ//I0GRQ9VJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b/EFdZB+TD15ajAKu/n3njz8iZ2GPsHspgcKkQyIfTg=;
 b=BBcNRxeHop7gAHtOmKp0Uto/8LnI61xXwc8G1DSXwjtOwQJIRjfbhWQuCvPGb0QEstdsuYtB5Hte6FPUuoByUTjn2ayPily4S430a4Jc///RZloJ6lCayTTxexSnwLZq0dj4CxRfK+NPxPBHdYghizVpLRQs78ZFS6evLFkWrAAW8miO1vaTPGJVt75bJ/bUkjr0taw3e+4d3iZbV9W4e3wIx/3uf7akLybbONqMRxqCRBxu0QRiaCSAcwokGrtVPu/XwTyT6gjDkBTWoZqYSdyXeDTeNn4knXniGclomEl9TLamceLF8pL5W/mGUQW6itFW8nGjMlAzDIeDMJChfA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by MRWPR04MB12070.eurprd04.prod.outlook.com (2603:10a6:501:99::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 22:17:52 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 22:17:52 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy-next 13/16] phy: lynx-28g: improve phy_validate() procedure
Date: Tue,  9 Jun 2026 01:17:07 +0300
Message-Id: <20260608221710.1572971-14-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR06CA0188.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::45) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|MRWPR04MB12070:EE_
X-MS-Office365-Filtering-Correlation-Id: d8eb1e0a-3cb7-4ba4-7ad6-08dec5abc878
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|10070799003|366016|376014|6133799003|3023799007|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: X2+EfWXfHtI7RJEpfbfZAqkJLJm6VFrmCQUo5sxCc3yX7t2EfJ7ZUMmPx12bHHKXT74OXS+DhApwELV8NAuVVI0VlldBAog9jpdtuShqwqbIPolVZnyB6qr9t/o5D6OUkplyHTHW5uEe6qCiumLqcO5v0EVv4Wm7LBgIsuJD3GS0qKsM9lOevNt6Wcv44da2eXOTYMXD5Vvgr32F2VNfreVkDb+7bZbmTS+BeHclQFfx3PTQfAB2V1e2EZwWJYcI7f0BQy5ew5pY2IUWt+Ny8FfUuz9JcCPnV5Vm8jdwlli5vB0g99MNp6vJhQO7wLeYWpRTHT+TpnDvUfdkEws34HDcaDozyyC2gYElEQSTy5AaMuydbIldY+wGT3SZo/CMnICXF1mipjfy5npC2c2+PbCQzVlGfi+bwjEsvq26rTA5KHkVWn5c1rvgbCAY2Gjq3KtSyXNrpJ9i1NqCMGa18bqpO1jjf76N1GvvzeTU/1/Iyw/XsTwG5xw2wLz34Ng4Wazz8HU42ekhyZIrnL64kWwv5ynX4kXUv8Sw4RJHB/nXQKDpJ6UHWwngJYzhicCklEIwQo6Aq/ME+naBY722Dkg3Tqq8eNDSILeN6i/OJWi1EpLfLo6WLUfUdYz9iuMuG7IcUbJslhU1DLFFL2pHMC6BbKar3akryplU/hKE/J/dHv6NaECK7Pu1Cf4fRB5s
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(10070799003)(366016)(376014)(6133799003)(3023799007)(18002099003)(22082099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IXa+CAqvjy42t7OZXpZbb6LjxsiAiSBHzWG5Wz2a1hdUxlEXGfsyvVZ7AePu?=
 =?us-ascii?Q?qZq+WBrqu3ofqXhiCWFcYM20Q/liprbQ13jbgdJDt0NsODxNCrB6Jgths4EM?=
 =?us-ascii?Q?lscqH8hQ9ehA2e1z6TuRyrSVWMaB+Jav2eOD0oTpZe66RAGd9LrQXXZJAkfo?=
 =?us-ascii?Q?NMZB/uvEE5MPKExI9gz94A8eP68f92uIX+CIfUKDC+B1mmYk/cTZ0tKGiLRE?=
 =?us-ascii?Q?ip3Rqw16DwYYdSC4HZBzszF0E6QNbj1z6rk8ALugHQ2PF6RHs4LI5SVGzwSC?=
 =?us-ascii?Q?o2DqZobWUDB1AfbN5xxTJYwnlGirM8gM3Z0o7ug9XhyhXDxzcjV1QeE7oXNF?=
 =?us-ascii?Q?Ejocu6cQtMS3Ay0dm6fqclZPcWZEKJQ4H4eYgRQ/bEgdE2pZANmJ5feHqfE9?=
 =?us-ascii?Q?VXsxPCJhak4YldyxO1dZz85Tw+AP+4G0O224BmbWw07RtLRYz7LC7qnjeXJ1?=
 =?us-ascii?Q?PLrkYgEsMv5VvLTfAlUqixkFzX3TpKsvQdfbLcCesfOm9xDbdbBhvhtOZhTg?=
 =?us-ascii?Q?AI8zbOMBhURvUNa9yvmtQ1Z4ObNVtKgBWYrrGk9QTQRraoCrEG3E7jpgbe2p?=
 =?us-ascii?Q?Ugz0Oy5hj3BKzTP4uOdoNOfvwgBwiVpQ6vwlbq9YPotq4d2amddWkWwcKiLS?=
 =?us-ascii?Q?5n3vvFS2UR4RwkadcC1CR7B0fHNeuw/qv/5PMXkOX2TVboecNmlWLTno1+a5?=
 =?us-ascii?Q?+IdmwsKCrPeDRAkpnTS1n2vpWaJTh+Bi6VIXe4DRkjquR47Nt4jOe2lyXMXr?=
 =?us-ascii?Q?ZK1Vqu3MtQoRvztoTbq/+8IETFXWJ1z01mFodmFEEie7PxN3OdanZyG2XOCU?=
 =?us-ascii?Q?cXVldkmeeQvYFgvTUwyxngdsRzM7JUDZtlcdQKkfnYwJSQVqH/jyBvuwRzWC?=
 =?us-ascii?Q?oAkja3DKmPNIn+X9ADAvK7QWbU8H1xEABgLEPi/9KNU08/uVzgSikD6pEqcm?=
 =?us-ascii?Q?1OBfAKpNbXNpiTY+dbt1rtoPnfhlGUFzd1GaCSBM5vNxR21VX0blqNRNuIHb?=
 =?us-ascii?Q?b9JOmJKJEVnNd6CAp+8TcR2ryVKv4iNSv1yXXAuodKGNpge9ueoeMgTUTy0j?=
 =?us-ascii?Q?S5RyK/mF21y3YUNqvKM3otFOE1UV6tbphb67pL/0r/RDoLhHfscoupYNbrU9?=
 =?us-ascii?Q?vKwcVRao+qrRxSniNi/4QXWsw07uofwCn5WbdZ9n7rQa4HX+rJJ+n0ptqlyg?=
 =?us-ascii?Q?BwrVmcDvc9Thpg3rHpOXb1R+avn0GynlunY4b/L6Dxz5NgeJwpi2VqJ/0UPj?=
 =?us-ascii?Q?Excl2VB5G0huZJd+lUEyV1JBeZyCZWiUs1NsxAWyViIeQrt9/auYjDsHbdd0?=
 =?us-ascii?Q?cIhNGv/pJ6pJuMPpBUhi/7+xb5DTZvBeGtxo6ralm2X0Re9HbQr1VdFqfpfV?=
 =?us-ascii?Q?J3f6GqPR/gB0fbG721JkFa7Vnhd6ubBweh/lU0ZYV8L+RJPQ1S60/KF7Dg/O?=
 =?us-ascii?Q?VihCsEMrDeJmtVK31LPaJnAIjoVBrppBYkgo5y73ZBNVxUlBtXgAu0M5fC+N?=
 =?us-ascii?Q?juU7zUN/EtZgr//sTKgJn9ovT1X1Y8MoB391jXnwpbbF41Yvh/6u5lgpBT25?=
 =?us-ascii?Q?4Wz2yQQswlJDVme57lw3ZtKJIytzdr3p+nWO5+0kn8K+jzmLqvT7Yb9oiLq2?=
 =?us-ascii?Q?GTMObFyU5+1WrMa/TV67obQdqcw6x8OftXZg91NJZspS/VcIa5IQuK0nrmk/?=
 =?us-ascii?Q?oSVl1X7oCW88Xz50DEl5PQuxZDgiPLWxZ0yMxitLEj1PkrJDCsYYSWrsrWfr?=
 =?us-ascii?Q?Rza6S6BdrW7I7/O4foZZ/TtseiTQTQrLSF/ueITLTPJZpRS9vacf?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8eb1e0a-3cb7-4ba4-7ad6-08dec5abc878
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 22:17:52.7842
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gdBIR/VeuFfXw+G5SLJLc0CTvk+GBZFRx2cNPNB42iSoKFBMcRYkSL03ZEHybhw1aijkhUfDwH/33lxdF7QXHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRWPR04MB12070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_151756_492000_B92A7E16 
X-CRM114-Status: GOOD (  20.00  )
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
v2->v4: none
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
