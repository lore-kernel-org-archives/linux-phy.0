Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98F65CD6E4A
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQDM5oZxN5VlJ6Ntd+m0nr6PVWzkrQIi+f0lomfHfFs=; b=aEfz/I0BpPAkNv
	cunN9ft92DBfkmkpKSe1YcmG8n1xSz698T3BKoE5DdETYXNFEND7WX5fxmuzfYh3R2QB8welogd6T
	CqQT4Z53Quh6yKGDoZZw9cO+OKZw7PpQVouX7npfECK5EHp2EHmiyMvtlHHNEj899R8KxoTOlu2Or
	/sb3Y9DSasyMAddqdLrK0Fhivsj6b9ADA1RYXW9GMjUMZkA98HP8c6ydiKks6szRtTmqgKPVecekJ
	Sau/xr5s+AzfU1Y/8MY60tVBhPKbjntiqx44rLcJFSfUOGzsGx9Y2HpVMjm/7NXKsMzbCuDQ5EvrK
	mzFDdwmoLT8YstXPf8hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlWn-0000000FANa-1aIw;
	Wed, 03 Jun 2026 13:21:01 +0000
Received: from mail-northeuropeazon11011044.outbound.protection.outlook.com ([52.101.65.44] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlWk-0000000FAM3-3WeM
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:21:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FHtTLrW7ty6n5DEH8nDWCCEhItdlp0ZVK9A/wJrSVeXpZBDtMaUaDoyq5XMjWDjraVlUkUkT3JTxKxIgQyp5grAPIFgExuE+ueBcSYOHm6wEFQphYGcxD3oq5FRaA/TFp5YL/Derfj2iX5pUXZ+Qy98GsmRfxVExv/huLGmuaplLCkjDnPtdtHD2iV5RGAwh8WNIBECmW956cIKekX0EKWj5Z1OzGdj4GLMcbpC8ruYada9wXTaKeDKLKKaBes3aQGANqT5BMc4nzA3YMzr5thiwADvghQlXnH1ZUoLP9S4UC2wOXruIR9iEcD4LfFNFgzr5SbRyMmqOPiXGjdLLPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Obm7ZfGQpwKBJwz5Eqh4ibtcW887fdOZLUvGLUUE3rU=;
 b=teta92B0EoULCZ25jvKxMYVxjEmW47xiZ3b4juokyqIXaPUyzMj2tn1cRWm5AwAnbreFUObK+3ETGO1jAoEUKAqyrBJXmU6fNl8hJhPJSipNSl5Y4f7nMApL/8305UomZ+V6dpFlzBJk9R3bl79cBEadLSV0B7a/EJ60WodDOALo/H6nWHHkpo3BRLiPyhrgCoPU77m+1IwjBXdq9w1br2LKHEfpfpsQh0C0u1r0D38C7QF4t9rBH7YCoArx3uqW318B/A2LMa1XgX9Y3gnqYB9YK+hMcOXqQDhxp7kLPcPf9yy7BxZAGXJWNp4bGsK9UChxjDfz49+wjcfwl0P9Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Obm7ZfGQpwKBJwz5Eqh4ibtcW887fdOZLUvGLUUE3rU=;
 b=TjdoQdEdAvVv5x5s8x1Pv76pJV9xg+YRE5s95zzarfkdAcrUtLv4kNgSeVCVELmjEWJG4x2gSpA1USf9xif5sK7R43GgxBxrDTfbdTsVwNdv/GbEpgwndDK88uZExoSCxWFbiVnbo1xWlyQWRgw2VOE4f4nOddsbjTNIkKHRxMoP1lRwpK6l9s/OSR/5gOn3+7dFMDoc+Wj7B8Bdjjrf4nBcK43a1k2CW3gb2Geyipi63tRrbrvVowyiYXcJ+byCFsLksWXRutzYzjQIT0tKNSEbzMYAzAXPB4VCd69BYjS3QBCWRfDgxQSSO+9rOtglFBbjEOMvCpxmB+X4ZaUmEA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by PA1PR04MB10225.eurprd04.prod.outlook.com (2603:10a6:102:467::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:20:55 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 13:20:55 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy-next 13/16] phy: lynx-28g: improve phy_validate() procedure
Date: Wed,  3 Jun 2026 16:20:50 +0300
Message-Id: <20260603132050.503490-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260603131914.503053-1-vladimir.oltean@nxp.com>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P192CA0028.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:5e1::13) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|PA1PR04MB10225:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f558f3a-a7f1-4037-2f79-08dec172f11a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|19092799006|366016|1800799024|11063799006|56012099006|3023799007|22082099003|18002099003|6133799003;
X-Microsoft-Antispam-Message-Info: oCX1whyryeFolEc/3BAtZLVhMofCIlvfYG/Z3fo221WGTgQiYZU2HY8OjIjg20u+r//O5jnMntKXBxfVWd8PSnajYHZor3hCMfBLSzgmZSQ+LxWrLKMKpnrXnmcg+mNeuexIsRgBLI1nGYDtb0AjsPsG+e7D/U4tIa5tGhqaQBjbsWg1SAwZU174pbRI6wLCpKK49MhHtpuaFqqMMU5rbF8BZpG08Ygtmv9XT1MJE80pgI/jyRglWCFPUZ3LgmjHY73QUsYrgwWsDaTQSYpfJ8RnlLsh1z2ERmScEo5rjbJHxZtH72G+HnCp0ppTWroWdIQeTQ2KreA6xqbwFHSWSW0sKDnvrdrBjeAEj3PHHQfyVZNJwsS/HPecCyJeYu4kYfiAZT1XLf9vTY/uK8fQWtmwT3Pdo9wHziTIZmmqDxbszciWjHWN2R6dBZeT1Hucg5+GWmk0YrD+kDWI5/zsnOHauUEeeUbInvq1fvsIr+Bhlx8ZRRhDaAlRrzoAvkjP3cEIAf/q/8MkIIiVpoOAfq5x9ks6Vl/xmXS1I/IF7cS8mVi/A3mWxK1bLZmiKeglXg0H/Qlmn7qKQbiCc4ogsaiBQvz/8DILOH2/VShibUtdPnzrUhB4OGRZ+aXTYiiuyahiCpTRk3mUHYM871udm1wti0tiCIkB+imw5aIPd/fg2nDOFPTuB3Tbl9OG7niF
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(366016)(1800799024)(11063799006)(56012099006)(3023799007)(22082099003)(18002099003)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?g6z5XWuX3jb3J6bl3It58PmSMqU6DEurGAin2TMtWsRTI7YAdKdpyrFIAndf?=
 =?us-ascii?Q?JZ1NQ+uys+sfDkQEz/MgqqDMeBAUAUND6bQDxU/jtfFfCHgEO4C7slNMLmxk?=
 =?us-ascii?Q?fxjAAVNXmym0ewPiz165OZoi1dqel1oXHJHNhxZpoANi2LhYkMjS+xsBinRi?=
 =?us-ascii?Q?mIoaYMZN5AIA1nqX+R6CubXpMSpzYDg1L6UlaZ7019Aq7PidBJrM4FRMQFyK?=
 =?us-ascii?Q?q1cU3re/ouV9IJf4w/vU8tli2L1GeGUX1C0Bn66q3fe6+SNGw9ESGFyBwLTO?=
 =?us-ascii?Q?U7fMpn1NlaaYLiq8f+1F1f+WROA+bVoZ4e1wGwuAJYqnl478bsDOVhVgBuHu?=
 =?us-ascii?Q?RoqPTuuzQnCz9IaonxezJfk6Jo9OevOw2DG2RnJWjqrfIOEIi8VwD7gclhG0?=
 =?us-ascii?Q?uK2P89MBB9rbcfCriMiTdO46O2WQnu5/yhFQ/gaLcyJ4ngdZC8KPG3/pM5dU?=
 =?us-ascii?Q?guCOzmgUEqsSjku8fI1XDuMu+knuNd4bAro9PLZyhQJAhB1La+arcpkZ/+cY?=
 =?us-ascii?Q?T8Y5BR9W+v2akOch1320MldP1wA9RhEUqSSWTdMHhyVvrbmGFYOnNXka/q7a?=
 =?us-ascii?Q?lB8/Q07nZRq1zJ5NWzhAKP/y3Aq5BCYHlsJfUtNL+8TB/BTOgilGIGkbOm4L?=
 =?us-ascii?Q?bMDBvjZu8amhxywRuMX1ZD+wsZdR4eetu1OLCvHY0woAmraN9Sm/V2iEIkR0?=
 =?us-ascii?Q?2MsxRrizEuvoLgfSs3cEKicVRG5v+WqzqlmmPi22N5Wsz/GIKeYpoF9uXazC?=
 =?us-ascii?Q?iACZ4eBIo/sfekogwVtjIZDjTXSNP3PFVu9FXmxhg3ga7l1yfG7hArD2mcth?=
 =?us-ascii?Q?uz07NtQ2Bi85ida9BS2BE23aa7pjw3veq0FeURwsAbme1HZ2n5FgYnfnjaX4?=
 =?us-ascii?Q?oERz9AKaoVyfMjj4IJkhWrgdpU7/wUt57UAgzanmVz8WSd6THdbOrZ2U71Qw?=
 =?us-ascii?Q?7s5o1Z5+8wGf2h4sFlYPfIDPqsaYV6bUVBInmbI6hipNDMfATH4PASCdDIpH?=
 =?us-ascii?Q?6D0eE77PZeO1FhSwUlx45nFZtWGwOEYx2oolrCSL/FuiPxhPAoEAV+cliOur?=
 =?us-ascii?Q?nual5W6IuTGC6VE6i9BmNn0sGioBRsMxGoxdq5M2tDZW8VM8tgjVtfEUMPBL?=
 =?us-ascii?Q?y032+fydcoDR7OCjjDU/8lS5TOnGN6srs5yValZESRx4w36GgFN5Gv5/mj0E?=
 =?us-ascii?Q?CnhCIPJgtK+pQwNhmjNlhZsKoZHAvCnfSh+5ko/MQQHs9YUpB2o0qq7M0geR?=
 =?us-ascii?Q?vQ7UhkHu/RiLuAmRhJ93Ehwi6eKVFrDZnB/5DZkL/6zWskxok4sRnR2Zocl3?=
 =?us-ascii?Q?3kBW5Zk8ZHNZqAAuDZ4X4Mk8Sd45ZhjFyExz16Hc9yG8TqSrfNTFW5W4OsDp?=
 =?us-ascii?Q?IEV2iNFAzE0F+thZYFVIDE+2L3L0zjpCDB8eXbfYS+vBOSDRKZf1M3+IXXUZ?=
 =?us-ascii?Q?bxbVLl5RG6d+sZUPRg7XZClHh/E1P9WF1/551pc9IOct6BArzQoWwzWL7jhz?=
 =?us-ascii?Q?93Ty12eiS7VXd//bPE1GLO2l5QwotXg9V2j1XMAApQLwr3tlefYVhBTMIWoU?=
 =?us-ascii?Q?oe49cJsMCqq7HDvWa0JXq/ozjr/2d9aEgdWpQ7Larz/8A6qrJu8CR3G0uNZ7?=
 =?us-ascii?Q?42Icqp7R7er46T3ssc/UcN42bn1j9gwJhJD8/JpuYI44JXTywqzhEquvdLjc?=
 =?us-ascii?Q?ZQpag0PjHEWn98d2PXfCQ8ylNH8NoazF/gPc/Vju/F/3X0u2kKs5I8F4bZKm?=
 =?us-ascii?Q?GoKK5krjHQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f558f3a-a7f1-4037-2f79-08dec172f11a
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:20:54.9523
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dt5fbRJCbi9HqaFYSB112tNxnuhSJL7UdQVEOseZ2Z1FntcsOnr/ijVZshku6vv4nOkg4LIs4Ob1rsjcwMGq6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10225
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_062058_889627_072197D6 
X-CRM114-Status: GOOD (  20.80  )
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
v2->v3: none
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
