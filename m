Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 583B5CD4F54
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 17:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgg5wMel32KLAE95+uSKeB+SlDtqamcVq/JEU8Ara1k=; b=UAZlWCDb+SfTM7
	ODxeVq3M/d8pDvSeYnjn3PDjX7UblfVt0wPyd9ANIz9M4kqZVGW+a38UIrpgwu5IptDSISUsLTAPT
	nFT/AWa0LcnNbQ9IFxeGILP89Xs5BKldKQOJphwoPkRfNUGmw/sOL/EcxK6Mb0eGsWLFPoHVPBqWP
	u2TCLJFCktGJPVNyNHBc5TeByU7D5hK6Iyx7GZW0pX3ZpUXquhGZsfRfX8ng9YcbL06Ti4rDjy3NP
	PlqKqXNzLLMieluaRq8tt33PamJHG8FCv3KKBgkn/sT3RRnWyZM0s2dZQ3Y0DDdEU57SbU8pTXOA+
	0gqm6rOKV5xXNJkqH6/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0oH-00000007ySD-0MMi;
	Fri, 29 May 2026 17:15:49 +0000
Received: from mail-francecentralazon11013050.outbound.protection.outlook.com ([40.107.162.50] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT0oB-00000007yDh-1f6j
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 17:15:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E2G5k7s0WgyoyKenf7pcGlqqeMhayq6cKlWfbdkIe2Y81r1IAqsixqkhKJi9Ob9KVFZIP6metwlVtdDgtZDzK8p+L5LFwNW4ChVTYDHBnVXU1htaVextfDleBdOG5nmRpEIinEMw0SLgk5PfXX9LbH1UyZH+mb7ZSrHzLl6+7/66aWzri00Cc9Fl50n6xV78zs917vs2Gfn4B2dRzOJCfbMdcdvU307xwTJ4+97nMRXXp+uwS9t+sfvHiwtHoT5htOMv9sbHMJg0obLE+FHpBI9oz9OtnfUQP5CMAEyuEhIzas+XSSLJbMBCuOQU/utU0VhnqudcEiqq85Bc11UQpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UTJcFDT7uHZJqbQ/AZdDmZNCqjsK8NkOKKv7Wl2tUXs=;
 b=ITuEBvevB00AELHG7wF/dAdXUqjd1mCtQd+WGIskLSPBurGCgr1p735HzMQXe0NMLz/sjbf6LynoAXPXR9Zz0KDfGr8APb/lFEyT6P4NJFijS9pj37GM9qCjzDq01eU+/Td5cIAN/YJURfP3ukLHwidm30gfnYYlARZ67D3QhtktJYLvCB9VodsnA3qSCozH7xZ+5gX49r9/ol1T43BhMMc54hrAbxbEpLemxNCCplfxICqfyTKF4vgK/p4GAWw4AG7643ozJIIyQL+H+taMG7/FUVPkBQB5MxDejEZGIHAZbxkIT52ZdypYRntDj5nTSQuDbH2QIsPdYUJO7u+yZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UTJcFDT7uHZJqbQ/AZdDmZNCqjsK8NkOKKv7Wl2tUXs=;
 b=VwkA5l0yBnKlpHSlUYLuqacnLuUtHlipRKhJD09KKIgTiZV1OdoD4GYBjroVAcwzOBqVNrai3VnyUgO4egBi9P32IE/ZD7JD30azgtZ8iqPKtTIPFAOflrUXvVowNtG2S95hGF7Ur37UTSItKXIXq8AequszWJvfFBKO7YHp05tfPlDnFo76XYKsxtMYZr5VpgHcfB2Kzd/Np72fo/3tEOQ2jDjUQP9P0glUNxZ57pAwMPm69Ov7PcYiTL0Pw1Qkj311K6oyKeW/jQaC8Gru/MbjrDoE0mMiBKlZ/azZ+vzAMuNIp4Lzx4DbH903XWC3NwcjamUOtgi3yQQ8v4VmLA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PAXPR04MB8960.eurprd04.prod.outlook.com (2603:10a6:102:20f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 29 May
 2026 17:15:34 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:15:34 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy-next 12/15] phy: lynx-28g: improve phy_validate() procedure
Date: Fri, 29 May 2026 20:15:06 +0300
Message-Id: <20260529171509.1163787-13-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
References: <20260529171509.1163787-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR10CA0056.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::36) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PAXPR04MB8960:EE_
X-MS-Office365-Filtering-Correlation-Id: 6659f117-5227-4feb-1c37-08debda5e4d0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|10070799003|19092799006|22082099003|18002099003|11063799006|6133799003|56012099006|3023799007;
X-Microsoft-Antispam-Message-Info: HWwqVMQ1aWHUSwqKpsLK25H+RZIqkZ/yxUrIus9XioMjydZEsdRiiApkn71+RWlzY35KCncHIXfIu+YvYnbxH8et4jo1N+SmwUsbbmyI6B/qpJZNuOBjIyjHN+VQTza0VzyFSj0RNcAlGMyJTXuC7+hOBYdi2lXfMwpbsiS5zAmhcVFZ6Vzg1Fc4sRiyNfxhUjykg2wUWXRVHRcN7b9CJ7s27ySj3KHOl7mhZsp/2wC6bfW3FRMvpogcf5HNXaBZlNrsHWMZMGOqc5ReP57dQVhbYT2bDncrPpKpNmjl7BTrjDGEZFU7SdpJbYZqznq6KI244mupFWG3fqQ2+tUPSK2g5KhcYW60OIElKJCS23SuNw6gGGQ3oE68CIT0vKovU/UxD+QelvOJVtUT5wEjN98HyPyRsY/FrAPIbY4G/gBhlrqoZyjvnCmsQEmwneU+cLpimJ+u5mPniDg+/Auc+rovzI0BkMpkOpmdUrO5e2lqNM440WqpRKmink6vfRsV53UAff/6AKsDvQtpDiFMEbQBN1t0lqSLdAI/aHutfIrIGNmcQIMQog5FzOjgBWpHk2XTotT91tfVmgvUVAFLjziwUZVK4Bpwc/LRiahnp7ch2sRnyBhKXCt7o16vgF5NtG6LragxgFaGSITyIudC8RA9tDUpUeUQqpAMh9pIrFihs3FH17D8rRQCoRre3TmM
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(19092799006)(22082099003)(18002099003)(11063799006)(6133799003)(56012099006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/b9vueQTpy/KQohQXkWmBkiSoCXxtUGZL+O48nq7vGYBUSAI4hmp0XofT/GD?=
 =?us-ascii?Q?tuIYf1HyUtFFlBoRy8u9w2jAhGrd/nydsxLZW+gWeIDlkyz9SQYHT8tDJOIS?=
 =?us-ascii?Q?VS96p7IXFhuEAoyni3LxttFBHrr5ZKWVFgPZG4zqDLtKQt48x4Oms0AQTDof?=
 =?us-ascii?Q?U7JQSrQc7P/a078+eP01qClpSAYYuIfK5ZskD5bRW9A0g0oOT9PVM6/Xe0oC?=
 =?us-ascii?Q?5BtswEL2xVJSXhjJex1YKzhidWVzZyT8RjqkTzx1nAH28/98HdU7KR6pOeaY?=
 =?us-ascii?Q?pwmkg5IgLUGx3gULilCzQJVRV3X4J0RItbLAhIm9aTMNUXYxMIlBp/iTyZDv?=
 =?us-ascii?Q?hj1weKTHNepGbJfd03Hwq/3Hux4Nq1n4abnZ8+MHOvTzRX8lq2C2W/on5HYH?=
 =?us-ascii?Q?N9vaXJuhZy5pYNbI8EpxSuEfkZqNyB7JUfpXb6RRiBKDL9S3ONui7Dh+6r1q?=
 =?us-ascii?Q?eWNYN4/Ff8dfgCJayfqwIDIVR+Vsz6NBKL+px02AQkVuDhm01L67BrbWK9Yo?=
 =?us-ascii?Q?m95cLA22uobATIwPKMqIQ1lC5svUS4zbH5YuZhg89BLfdo4l0UeEMMSOGbvG?=
 =?us-ascii?Q?GQgjFYfKCKicneZglqypz12sdmMW+m8eEZkyC3T6RCuSJn4KSO5VNG9Skc8v?=
 =?us-ascii?Q?OuKzoBB9DNMgUAYWeqo4tDFXW8gOKI94363tv7n1rNlP2NA7TnJOMiyudK+7?=
 =?us-ascii?Q?kV251b9FIOg+GN11zJPQCUELkz2SG6dNAh5d40jDA/fN4gDv2Unw8XOjPX2u?=
 =?us-ascii?Q?j3JSzZ+v1qjb8DjUXTON3Mbpr0VtwjKXmwnDsYUNUVIqYCLelbGYD3/04nlv?=
 =?us-ascii?Q?MM9PS6tOJHmtZ0cZBZoDO3e+fO36YN5oVTCT49a9k11yPwv9PFmzbtv9VSIH?=
 =?us-ascii?Q?OBy5aXCrD/gJnUk2qR2qHaqYWkwKs9DsjgXOs3CEyGKX6zzxH1BMNqy2R1vj?=
 =?us-ascii?Q?Hbs/JyI2vTtOk2L9y00aVbJOPRrCSRysprYRnP0il7CuCujU01qC5tfo8yrB?=
 =?us-ascii?Q?v/19q5k3nrNZEA5h2On8+YwL4EdXWFaJQfEUFXd8PLHZ2Dgq/fo3+94Dkwjy?=
 =?us-ascii?Q?228+G3HuCMFy1LVy/rU8bQ7SgbDNcDTGbhGPKzriTmhUROT4R3MPXQTUmyfX?=
 =?us-ascii?Q?VZbhFEmGR/86ySzVrBHis9Apa7Y293Dwq0rsi+C7qbbQnr7Z9XjYVP/NM07p?=
 =?us-ascii?Q?B9RfzC8CEHkpKU2GZraUnNO7AIIz0uL9ms6BCo1a4uYlVMXMyuONq+vEfI9F?=
 =?us-ascii?Q?igZOnmy//pAt6lRZQsFF56onfewct7NjNf3RZYWrFekNdnEWeJJoJ2ES+Gya?=
 =?us-ascii?Q?Oto+5wMGiO0p9QQo5Fwa7suC1Z82g81StILP2EXm45xqhh3fodazahZa9qen?=
 =?us-ascii?Q?jSIPkLw937PWNWh2YYmGDQR48qIC+hR1Ex5f4zUAEER2B9/cCoWFvXDsUvqV?=
 =?us-ascii?Q?vWYXPGiMqW762Bt2TEbFD/z6ZVAECXfDCSiVBmDrZeJMQCsQFZajsUUvG6L8?=
 =?us-ascii?Q?HJTHG1r1ZaLisLT8yvTZh8Xi93IdJoSeah7+LbVMDEeVIeyVMNZTBXE/Fo5w?=
 =?us-ascii?Q?IWrvQ8cFiCgMUubXCGOWc3wPG6nNTZ6LqBip/ajz5fe7oVPR5ykfCG4iNxQQ?=
 =?us-ascii?Q?fCT6fvKQV9AlxI240VFOBn6KFc93iK4Bk7X7d5hqr7LlIomoDChd0rL4xfMH?=
 =?us-ascii?Q?EDItEdH8T8M2IQQCb8QJzzuaNN9vFPerYW3qXPgVwVVS75dbIuLVcVwOgyqW?=
 =?us-ascii?Q?meUKQA2hAbSD/X8Bri4fGCgMCXoX+dvC55dYZdwBvonPJ8vrYCiL?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6659f117-5227-4feb-1c37-08debda5e4d0
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 17:15:34.0248
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MmC4362C2YB8oZB9WndpzLevFiXi/dn6CS3TyJV2i79/VuzYCtHjfuDurv3lmv+uq0HkSn2fqHYKE0ot8hKN1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_101543_712123_B5E7DFCC 
X-CRM114-Status: GOOD (  20.81  )
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
index 92f8c82f5b8d..a9fda85a7783 100644
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
