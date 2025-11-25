Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63BE3D0E6CD
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bhaF4L4Q56FfyN4t1xUrwJO7YIzD1bfCJNkC04jBHO0=; b=vMRYMfy9Ud7jjI
	tSfIy1WkOyNd/68eZuijH28zMHVLfMRkX2ymxaEk2XOg0aqtpJYvi3DRH8oGBG1tCneLtUikr1cHw
	9qjw8v+xsVAMFmdYqzBxBLuuuP1/7UQexuyY8bPTSXP5kUbFFEVR0R/djx1tWmGB0QeHbMuJLKJsU
	s5zfOS+j10qdTMwYbX9TsRkWjwPw3oWphaJUNYuGsojlMz8NTIkRFWqrneeVV29XwsJWofBqyg9+D
	HoAXuvwpjMZUujZYeLCA0NTns18M2g1whyZHRN/yPshRHIBOF+D7jtAKypod4NTAL/WDFS8z3iU67
	NOP/DXFo1wj9BvoJchFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYV-0000000DFFT-0Rqn;
	Tue, 25 Nov 2025 11:49:59 +0000
Received: from mail-francecentralazon11013068.outbound.protection.outlook.com ([40.107.162.68] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYR-0000000DF7R-3qXK
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:49:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zRcEAydQ0Rc25m+2lXcvqsVX/zjLRrRAHmqFHxKaWUxNsx8tw2t3mnXdNqusIFqbYeGX2L5dgI6wFjjrCCTgAwVI8RropUn2BPLKpDZwx9nqD4H5IpbHIdcJ4KqWRyl+LJDCai68lHFql3vIruabekC+k8/oPg5OHFssUpJpV2krZ033OLFqzmrO8NruejcTgNCqrmOLJXelr1GnqHbPDl7L10jEc796Czb5MGxxJlvjY1sOoXHChKcP/HxsLZ9diYqpXVLEdvPau40JRUFcQgyRNqj234EVFEfF9VyDOB6F31uGFUdrrD7lmKbCJ5q7O4lqQEaFwVdxPrKXyit23g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MO5oT8G5/vmLKBzS8DEmmTxUhKY/bW6oAN8BrxM7vEw=;
 b=A2HPO9bmvU5SoYlK11PQbm7yKyVbFQAyyf4NjoMel45esJryUN27Szt0JRu3goM8/WMdZfI9condIlMZp9u5nLEYD5s1OF3GNHMedc43yJ1nuh7W/hWkqUoyWYO2HEKHxNmSliL2XS2ZuAd+O6Dki9Z+OclPfIA+Wrjs+hyWpSWFL6LNF5QKwiEwpB18gp2h9lWEXuRN5pZsA52FYltuFbtOw40YpHYcuKMAJKxEU4clchYJTgKC9L37er+lBS4NmO9S+SO1WGQq8MfOosTYIbAr/RNVSGjm6VQS2Jr3WlaRrdJat/SzfVPvujN8az5Tca8Wi7hJR5xq09XIuRwHDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MO5oT8G5/vmLKBzS8DEmmTxUhKY/bW6oAN8BrxM7vEw=;
 b=XhJH2wZluuJ2xQy7Dk4fsk82RAR1jIeoON4yWmnOEzLMgZCPiasSusxQ7xMvhxaXYO98uDlLCwN0HO7UcGs1PNHkqbULcVlYwj+J3KwpH0Nip2giExQmSWxYTwzPiPNZbJvCnWd2gSKDIT7xmqyydrrXDBKazr7/LRK4DBDeXzG3tjJKU7nzgcW8G/7R8WJYHhZCIyK43pAF2NZDqycIOx1oH28jjJkhmd6gnYrF+mEbKfPH47VBQ/2/0UHpymH2HbPx04Afp7AS5RoEl7pftGpW3UhsHKpdCAlI4HH7vJJzrPrcRHjS4Mh9jJyzKXjofAkp92y844exNBnQiSGlEg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB9201.eurprd04.prod.outlook.com (2603:10a6:102:232::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:49 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:49 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy 12/15] phy: lynx-28g: distinguish between 10GBASE-R and USXGMII
Date: Tue, 25 Nov 2025 13:48:44 +0200
Message-Id: <20251125114847.804961-13-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB9201:EE_
X-MS-Office365-Filtering-Correlation-Id: 72551ec3-5f8e-435d-8c67-08de2c18bcdb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|10070799003|376014|52116014|366016|19092799006;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?IGlzJxOuWD4g6XN7XI2AJAVASspe0rYv3mcDCunHNccJRLws6L7V96+fjLSc?=
 =?us-ascii?Q?OLydJsUDJDGmRVrmXCM4yJvBr7Reg4l0Sk3CCsO5qxCxJr5e/ZbJqpmcFN+R?=
 =?us-ascii?Q?pUII3jzPPgnwvesyKh6yl2q5I6eyIvCxTg4lPmJGau2Ee2pV2zDWFiGl1dMx?=
 =?us-ascii?Q?SDovs2UcxS//ntsOFAvAQBVvGkSnjj5UJoXVvksDe7h2f/BcXrHJPZtp7ztL?=
 =?us-ascii?Q?xg6O0MzWMzKKQXFrQA5rrC3dq1u5GQVSygEw8WjBIaEx0r9YBJSerx97Ozv9?=
 =?us-ascii?Q?SJ3UmdqMvNgKYlmyXCPAjlsKPZfDnaElUukwHx5HShOo2uv9XofuWZpRUg/o?=
 =?us-ascii?Q?tgDJGXvPT1EhFPG/Q92hxyy41/1zTi18pIpzm8d80ORUWSRFJ4uTYLuv2+UE?=
 =?us-ascii?Q?fxnEnLAD6s3OLJoXnZhfDLujxzTJ6kwjdEZIcB/i8/NSu2c/FnR3j5JYve11?=
 =?us-ascii?Q?dFok8COAa0pKZPXfifdYi6ieP+QHwrvIZjL3UfeG7f9l41wyHmrSWOo/VMIO?=
 =?us-ascii?Q?8iswEDu6VhnUEpnFmYenljNrEZ/+U4vA0Pbu4Pj/GpvkplPijR+dvCjxdvp2?=
 =?us-ascii?Q?pfa4xRUtqpNLpHbuesUG4DXnuPz44QQ2mcRCXHo1Ll9rT2+xNbhS8aWL40pe?=
 =?us-ascii?Q?MOn4sgW5UnqEFjIlPEs0aqpeq8PrnzATk6u3KeLhRIZWE5ONjQnfSQ4YIYfk?=
 =?us-ascii?Q?GeQPFEB67nVHvMyE0gFY5u621eWqfacozmVQD+rEn51eLdAHBFStv2hFhx0t?=
 =?us-ascii?Q?hbzseWZzi6m4Aq0Ua/vhEjSxNQtfkkpGYdQ8zjZo63KRqwQFaMrCW4avshmY?=
 =?us-ascii?Q?jaofQ5Vbo/N++gN9JYdO6PXROAc/bh9ZTxd0S/TZooQm7u98pSFOiBxk/rg1?=
 =?us-ascii?Q?b+xZm2wB5xithotn04/gjE/OgCHQ4oft0fFSnIfKINWT2IkhYp2iTUGdkS6w?=
 =?us-ascii?Q?l+EQ0gxdsKnu7yozqm//LqdmveaKA38JN5OgZ8K3i73oY8xy4+KJKI4l5dli?=
 =?us-ascii?Q?ZxUs1AdnJoea7TmuxDVIP7IuLIBOIiVud7b1Z+6vDIWT0XxUs/bYS7XwYCKt?=
 =?us-ascii?Q?xG4B5FMgEXhPIDSI0dD/sh8liZj0aU+9CovE8WmKDUICCB/VUzUTva5KhqSv?=
 =?us-ascii?Q?4uR498qMSCizr/SpOUP1Ew97b75kZUsM583WK7hz2Qbd8gg/ERF9NpUSkK5f?=
 =?us-ascii?Q?RogosUiWp8HlttTTZdU8+AicHekadRiLm092hYgMfqcmO9GXTwIIr0AXQ+uc?=
 =?us-ascii?Q?y5xvxx2eWtAJfq5m08lqojlrT5TJtU1iSlW3SalzjtdfVllMhTnNB3QZalsl?=
 =?us-ascii?Q?J7Q+bMs9KBw4GdVzusdesOJoc47lV55iJDL1SHJsfg2DvQs9UYZBeT5jC5do?=
 =?us-ascii?Q?62/O0MTrdYRFdti/zjIyAV8ylE9tJq0zjCWH+LRPqjsnQaKaN7/rCKBxY9yg?=
 =?us-ascii?Q?wBEJHuE7TcyAJbBLEEA9QaqlxP8s9KP1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(376014)(52116014)(366016)(19092799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5jjGksl6lmi4j2l57O3tVv4+L4m7AIl+qKnnxuncREralvJuqBj5f0AABaum?=
 =?us-ascii?Q?LjtaomXRmuCIMJJFIve5GxPFsMPOOg33aXzhyf5w2lSTCXTRd4+ObIqzkUBu?=
 =?us-ascii?Q?v9FjIUkTV1jyE+ltv4hUNI1AAzJEtrtTXBwr4gwlFaXKqudEzR07YHk8T+0y?=
 =?us-ascii?Q?PrgLxvPm5gE9vA7MRnz9aL5fIwmHAaZjHaCHodNeGeCAyejOlZ2Y3tSbtVp9?=
 =?us-ascii?Q?BxapBK9tH9mDNsMWrc4Ml4GhvUaWI497AHt7QPY4pRdAjIsHD7UBIxP34Khz?=
 =?us-ascii?Q?ZncyCUC37ldhTMBinZEHZVwcoQNvKu2eF/UCL+/Ati3LIHmlIBJxciRaDPAO?=
 =?us-ascii?Q?RGB0Kvafk0lDQyGWfqlsTP+wV6P6QL+gUk+NrQdcB87PspZIWr6zIqZSw1Nm?=
 =?us-ascii?Q?FIln4zie4I4rLj1paHGT7IFbtPX+fx0MhSctUAA/DsV8NVKYCdiddUTWaays?=
 =?us-ascii?Q?t5IoFcopyXBFFRfLWEKPaAdUzw+RJo/8gktpaT607h8luzBsm5uCzAG8Em+p?=
 =?us-ascii?Q?AmDhfiidSfDgdhARDtQMLYimu9oKIt1a10xoJ+V9FjDxhJRY4Vyy7EN5BDFP?=
 =?us-ascii?Q?Va0dO6H/m/zvA5L6Iv2WRjqzuxd96pSLBXPPKiLTwJLysymNXKqKTOhRcMAR?=
 =?us-ascii?Q?xrRH5kEXixYt/UfnRVIAfpqyBwBenHdTplxWgCFVnku7RBCzkDHlUZu/p63a?=
 =?us-ascii?Q?bX4v3jfUmFsb5Kb2iFHmB/BzMkGY1ZfOarb8XPsWxvhqydI9oArQRutDUHcW?=
 =?us-ascii?Q?VwogY3hCkGqRobGWVyYLcu+VeWiMyGAVnGWyix9TiHhNng/wMUQHJdklUhFc?=
 =?us-ascii?Q?J/+22weyCPbHqv3lQiTYzlxYI+HeCNZPYQ63/J+e5U8xyW0nuq4JOczYDf/s?=
 =?us-ascii?Q?tmE40W683BRFuRNh072uZcQJpbugeDWUR9U1OnTUGlFuw5TljigpH3kpEQB4?=
 =?us-ascii?Q?cHAw17IbLsS91SBW2GrE7YeogBe53gfK3CJ4jAFPcK4r8c3qyqk/+2PuTgaB?=
 =?us-ascii?Q?cyWv9pKoebRhT6FmaItLUV8Db3AozhdYU75hhuPPsd97CuV6w5iL2BLn8CE6?=
 =?us-ascii?Q?M3jtmzatM7uhBA56uoIH3SOG66BMCgApVJ29Dm2nsDIZ1/pzq/zzbz8dTYFM?=
 =?us-ascii?Q?KFUo/5YnhWmCd88Ew8V/7RYgSPGu+bpAaRH+5CJ6fL9z/GyqNOM9dFvCEd3c?=
 =?us-ascii?Q?WLae1gDwoxNE193rbnje6YTHUL4WsKaXldmBsHH6qO+AYvLH7k/5Ixi9ol3y?=
 =?us-ascii?Q?LpyRO40i08+tqBtjM260twVJl0vFnMdOdbM4OZwmYcE+S3/0WLqO9XOKUctQ?=
 =?us-ascii?Q?/s36Xoq1SCclMafqJjdgpc2s2maVJ3Q+P02TReM2Ggk1EX2bAhJRRyRL3u4o?=
 =?us-ascii?Q?EpR/KoQbahFFmrHRwBu7PElnzv0ssZ/PPLh+LhDl+JvBotiabGzN+DeRXNZX?=
 =?us-ascii?Q?27z4huOd9nyzjs3cmNOyE6k/hnra5vFNPVw7xeE3YtLlJqTmaKKyKFnajA6/?=
 =?us-ascii?Q?kZJLV0a2qRIRjb0Gn/7GpgzFzWsRVxzukM5PlcCAr3NYX83BVxN3frrdKQV0?=
 =?us-ascii?Q?K9a2cMFK3uYrbtF8Ehw0coxs32XJCJ9cp5+S4HwCgHX4MpAAjN/bxyWlue0q?=
 =?us-ascii?Q?zOZ/F7dTyAUqEID4JPDCMW4=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72551ec3-5f8e-435d-8c67-08de2c18bcdb
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:49.4362
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z6390FKlLwJw3tdtIOU6J7t4H8lVwgrSPtODOyAC0m7E8a/PYg16qNLH5LjclcqxoTaMQ9Nj9zcXsVkkuQOxPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_034955_965099_F2093C80 
X-CRM114-Status: GOOD (  17.05  )
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

The driver does not handle well protocol switching to or from USXGMII,
because it conflates it with 10GBase-R.

In the expected USXGMII use case, that isn't a problem, because SerDes
protocol switching performed by the lynx-28g driver is not necessary,
because USXGMII natively supports multiple speeds, as opposed to SFP
modules using 1000Base-X or 10GBase-R which require switching between
the 2.

That being said, let's be explicit, and in case someone requests a
protocol change which involves USXGMII, let's do the right thing.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v5: none

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 87 ++++++++++++++++++++----
 1 file changed, 74 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 29ab7213a35d..01589a2bfe74 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -246,7 +246,8 @@ enum lynx_28g_proto_sel {
 enum lynx_lane_mode {
 	LANE_MODE_UNKNOWN,
 	LANE_MODE_1000BASEX_SGMII,
-	LANE_MODE_10GBASER_USXGMII,
+	LANE_MODE_10GBASER,
+	LANE_MODE_USXGMII,
 	LANE_MODE_MAX,
 };
 
@@ -316,7 +317,35 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 		.smp_autoz_d1r = 0,
 		.smp_autoz_eg1r = 0,
 	},
-	[LANE_MODE_10GBASER_USXGMII] = {
+	[LANE_MODE_USXGMII] = {
+		.proto_sel = LNaGCR0_PROTO_SEL_XFI,
+		.if_width = LNaGCR0_IF_WIDTH_20_BIT,
+		.teq_type = EQ_TYPE_2TAP,
+		.sgn_preq = 1,
+		.ratio_preq = 0,
+		.sgn_post1q = 1,
+		.ratio_post1q = 3,
+		.amp_red = 7,
+		.adpt_eq = 48,
+		.enter_idle_flt_sel = 0,
+		.exit_idle_flt_sel = 0,
+		.data_lost_th_sel = 0,
+		.gk2ovd = 0,
+		.gk3ovd = 0,
+		.gk4ovd = 0,
+		.gk2ovd_en = 0,
+		.gk3ovd_en = 0,
+		.gk4ovd_en = 0,
+		.eq_offset_ovd = 0x1f,
+		.eq_offset_ovd_en = 0,
+		.eq_offset_rng_dbl = 1,
+		.eq_blw_sel = 1,
+		.eq_boost = 0,
+		.spare_in = 0,
+		.smp_autoz_d1r = 2,
+		.smp_autoz_eg1r = 0,
+	},
+	[LANE_MODE_10GBASER] = {
 		.proto_sel = LNaGCR0_PROTO_SEL_XFI,
 		.if_width = LNaGCR0_IF_WIDTH_20_BIT,
 		.teq_type = EQ_TYPE_2TAP,
@@ -413,8 +442,10 @@ static const char *lynx_lane_mode_str(enum lynx_lane_mode lane_mode)
 	switch (lane_mode) {
 	case LANE_MODE_1000BASEX_SGMII:
 		return "1000Base-X/SGMII";
-	case LANE_MODE_10GBASER_USXGMII:
-		return "10GBase-R/USXGMII";
+	case LANE_MODE_10GBASER:
+		return "10GBase-R";
+	case LANE_MODE_USXGMII:
+		return "USXGMII";
 	default:
 		return "unknown";
 	}
@@ -427,8 +458,9 @@ static enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf)
 	case PHY_INTERFACE_MODE_1000BASEX:
 		return LANE_MODE_1000BASEX_SGMII;
 	case PHY_INTERFACE_MODE_10GBASER:
+		return LANE_MODE_10GBASER;
 	case PHY_INTERFACE_MODE_USXGMII:
-		return LANE_MODE_10GBASER_USXGMII;
+		return LANE_MODE_USXGMII;
 	default:
 		return LANE_MODE_UNKNOWN;
 	}
@@ -496,7 +528,8 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 		break;
 	case PLLnCR1_FRATE_10G_20GVCO:
 		switch (lane_mode) {
-		case LANE_MODE_10GBASER_USXGMII:
+		case LANE_MODE_10GBASER:
+		case LANE_MODE_USXGMII:
 			lynx_28g_lane_rmw(lane, LNaTGCR0,
 					  FIELD_PREP(LNaTGCR0_N_RATE, LNaTGCR0_N_RATE_FULL),
 					  LNaTGCR0_N_RATE);
@@ -594,7 +627,8 @@ static int lynx_28g_get_pccr(enum lynx_lane_mode lane_mode, int lane,
 		pccr->width = 4;
 		pccr->shift = SGMII_CFG(lane);
 		break;
-	case LANE_MODE_10GBASER_USXGMII:
+	case LANE_MODE_USXGMII:
+	case LANE_MODE_10GBASER:
 		pccr->offset = PCCC;
 		pccr->width = 4;
 		pccr->shift = SXGMII_CFG(lane);
@@ -611,13 +645,32 @@ static int lynx_28g_get_pcvt_offset(int lane, enum lynx_lane_mode lane_mode)
 	switch (lane_mode) {
 	case LANE_MODE_1000BASEX_SGMII:
 		return SGMIIaCR0(lane);
-	case LANE_MODE_10GBASER_USXGMII:
+	case LANE_MODE_USXGMII:
+	case LANE_MODE_10GBASER:
 		return SXGMIIaCR0(lane);
 	default:
 		return -EOPNOTSUPP;
 	}
 }
 
+static int lynx_pccr_read(struct lynx_28g_lane *lane, enum lynx_lane_mode mode,
+			  u32 *val)
+{
+	struct lynx_28g_priv *priv = lane->priv;
+	struct lynx_pccr pccr;
+	u32 tmp;
+	int err;
+
+	err = lynx_28g_get_pccr(mode, lane->id, &pccr);
+	if (err)
+		return err;
+
+	tmp = lynx_28g_read(priv, pccr.offset);
+	*val = (tmp >> pccr.shift) & GENMASK(pccr.width - 1, 0);
+
+	return 0;
+}
+
 static int lynx_pccr_write(struct lynx_28g_lane *lane,
 			   enum lynx_lane_mode lane_mode, u32 val)
 {
@@ -829,8 +882,11 @@ static int lynx_28g_lane_enable_pcvt(struct lynx_28g_lane *lane,
 	case LANE_MODE_1000BASEX_SGMII:
 		val |= PCC8_SGMIIa_CFG;
 		break;
-	case LANE_MODE_10GBASER_USXGMII:
-		val |= PCCC_SXGMIIn_CFG | PCCC_SXGMIIn_XFI;
+	case LANE_MODE_10GBASER:
+		val |= PCCC_SXGMIIn_XFI;
+		fallthrough;
+	case LANE_MODE_USXGMII:
+		val |= PCCC_SXGMIIn_CFG;
 		break;
 	default:
 		break;
@@ -955,7 +1011,8 @@ static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
 			break;
 		case PLLnCR1_FRATE_10G_20GVCO:
 			/* 10.3125GHz clock net */
-			__set_bit(LANE_MODE_10GBASER_USXGMII, pll->supported);
+			__set_bit(LANE_MODE_10GBASER, pll->supported);
+			__set_bit(LANE_MODE_USXGMII, pll->supported);
 			break;
 		default:
 			/* 6GHz, 12.890625GHz, 8GHz */
@@ -1000,7 +1057,7 @@ static void lynx_28g_cdr_lock_check(struct work_struct *work)
 
 static void lynx_28g_lane_read_configuration(struct lynx_28g_lane *lane)
 {
-	u32 pss, protocol;
+	u32 pccr, pss, protocol;
 
 	pss = lynx_28g_lane_read(lane, LNaPSS);
 	protocol = FIELD_GET(LNaPSS_TYPE, pss);
@@ -1009,7 +1066,11 @@ static void lynx_28g_lane_read_configuration(struct lynx_28g_lane *lane)
 		lane->mode = LANE_MODE_1000BASEX_SGMII;
 		break;
 	case LNaPSS_TYPE_XFI:
-		lane->mode = LANE_MODE_10GBASER_USXGMII;
+		lynx_pccr_read(lane, LANE_MODE_10GBASER, &pccr);
+		if (pccr & PCCC_SXGMIIn_XFI)
+			lane->mode = LANE_MODE_10GBASER;
+		else
+			lane->mode = LANE_MODE_USXGMII;
 		break;
 	default:
 		lane->mode = LANE_MODE_UNKNOWN;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
