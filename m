Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAA77D0E6CC
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 11:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DwI8AJkc0Aw6Obn6gYHZiAYAGVkvfxaVLut7cPUoFD0=; b=ie4dwVd8T9co7D
	9WTZpc4DQ2BC1Ww0lmrLTSViWcOlLQxYTHQ8LjzzrKVrTywY1/gJd3UTqY/FxSIppE4tn8/ChGN7w
	nvg8nKNjlx3P2bLPCl/iHJt4VKecK7suNuYjDvdtZPD0EAJoGL/Rkkfcp2In3yGuX7uFfM74xHgYx
	82XsFQmIrwxLsdXc/2eIUXZ0Dl4bH8lEPkqL+KnoK2DwQWteqG34EqH+eKRMfrCiDbY3ZNntqibMW
	9hfyCwd0HjAGNLBVE1bnBCBvQ6ZGgXmZ2KRqEfr8XgYrTj4qdYF/K7CEZbMLFlTdoCqMHfW3uVCMU
	H2OSQVOGHJlESP7/yz8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYU-0000000DFEr-2Ist;
	Tue, 25 Nov 2025 11:49:58 +0000
Received: from mail-francecentralazon11013008.outbound.protection.outlook.com ([40.107.162.8] helo=PA4PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNrYO-0000000DF3I-3Dlm
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 11:49:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=httJspFrXb6t08MdCcRlF7ldhTZ1HpAXu7rDlsX41KwwKNRrtm2EypgkfTA5pmyJT1eKbtURx+5FnypxznYqkX3oBMr1EM90JjcN8/JnZ8LwCRMBi+z3t+brRIL2VeslSS4sErAG/DiWCerLyeqFNfXkZqVPaGcAYCzYhKvMeBdmM+FPu1leJQ1XcAmILG29YAxHRQIXatEZdibm4eOQ3WUAiyTEF6Ixk9mGbwzPPZyVDufG2HHyrTnRD82LdTznFp6fWNlJHeigBfR2yt8RvUJYtf9k+wK6pxZe1Dc3bidD1HtrlSa/fTE5uX83oqHGFzJAKj5/OxW83O4Ie/1zzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zGYMnDLPgyUHcxpxeF8ASZidImapKQEXL8/mvCIhlj8=;
 b=TnufzgUGCVSy36wTPbD31X08SbrVdnArsXGuKAKMklB/JEtXnjlvvx/FXJHDDIwWjQUie1oNC5AhbqmoCg8UmvWV+2Ss4obQktpBk5zgtbUyF1QMYUhSy5cMaiNo4OgfMyrCIS8XOzxBDdU3UEgMHyMhp2KQK6fBrpDinYFILwlDP3y+Zcz/u4Wz/Im3XO8lS4Rg1p81hWMndNo5t5PR/kdZCOrPtVuFLo50+7AP4EucIGtlM6OdF63qdBkmEsARbYFK0oOnFytjvW86ASvqQJtRMtdmy2FDbuZs5ZQxzG0MOvrOmD1aZr1kLa9EXHWcTTEgi0uQKFpENMPCP4wYjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zGYMnDLPgyUHcxpxeF8ASZidImapKQEXL8/mvCIhlj8=;
 b=c9vr4Wkijyip5TVVWXavs33ZvylYt9DplbRlWr9AkpUM6fVT0AXDt6ufQffscLiQAXVRIGAY0Ig+hjDG8JcCBqQS1tmGNV0+DSxs4eeDEeFdbIshULhY1Fs+iypBiPE0fwv5B8/jfFlg6un+vmUCZGtiKX4BjRqcd9EISh/YpHZQqczlw/iCyoUMfSBcSqX/BixK+ZoIiFuxWUqyW5EuGn633IZEtUOinxu7IMMSjwYggI9RJobqNZ78Q2ekJPp2/zoGXagCHpWhOkZB517GAtwZ/RZ2y/H6Xeew2qlBqHRIU1otDaLVNpYD7FRs20As/5zFsOWpOk4YN0ylYcf+Sg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PAXPR04MB8271.eurprd04.prod.outlook.com (2603:10a6:102:1ca::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 11:49:48 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 11:49:48 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 phy 11/15] phy: lynx-28g: refactor lane->interface to lane->mode
Date: Tue, 25 Nov 2025 13:48:43 +0200
Message-Id: <20251125114847.804961-12-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251125114847.804961-1-vladimir.oltean@nxp.com>
References: <20251125114847.804961-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P189CA0047.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:659::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PAXPR04MB8271:EE_
X-MS-Office365-Filtering-Correlation-Id: 72a76843-8c71-475f-7a6e-08de2c18bc2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|19092799006|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?d1bb27OvZYxaB7SvfwuBbWjgEY/HlW33geQ/xEsZiiMa1wHwLXJOPsWIOLAk?=
 =?us-ascii?Q?zDP+t4N4M6Cm2hgyXKbA8CRE65DViHaVD1nqiQLIxIbGe7SxwwzWSnDYEUi/?=
 =?us-ascii?Q?TDqDbJyD+9t/scH+RTQrhcL41YtciFgQO0J8x4gQ7eAf2VCMUF1R8fBgegaD?=
 =?us-ascii?Q?GS0RNEHAz/T2VwXWf00D+NQx61Wr+azTe5Aedd7kcu+PEv5BJHJvZ3D8T9dK?=
 =?us-ascii?Q?mAj4uwKIIgoaPq1EUn89UOD/DjtQfsK2yzvopkq0+0YfD+sosUgfkG6XSQeZ?=
 =?us-ascii?Q?5pbIBHLZmsCRsjHnhVAOlU63HR+ESmSWx05V8HeK3lF22O/HnjhCizhRTgCF?=
 =?us-ascii?Q?OWycG5R5ps8ugF82EPtEF9wpQZAAkykDep3euJT9yru2EcU2Rim1uz2p2tDb?=
 =?us-ascii?Q?qlwVCmVpHY1eel0awVrI6VZ6FucsDBRfU1rRtOsae3I2Q8JZRRN/m92xUB/d?=
 =?us-ascii?Q?oiXNIQ2s/70MfsUWxC3T1nv86DTGtmQZvnhtvIWxsV7ZIPirLmILHHIcmaO4?=
 =?us-ascii?Q?H0vCrD8Ppq9IOeftSSHCgf8k+ts/f30QNtnrduw4nEP6WvQeqmKlItShZWYq?=
 =?us-ascii?Q?k8FBKDD4OxrdG/567B7ckn5u0NLgZEOhEVdiBDgfFVtX7iDzvyHQU2riCPpR?=
 =?us-ascii?Q?H8dSZ/qG/mHkpEeXTASLqKuD7Xlj8FzPn9c/8DCKYgOpZhmjgW89Crv3X/8H?=
 =?us-ascii?Q?FDXq2zEGPAxsSjbVnwE0tG+CHCgpNFuiFOi9YwsJudAcqVqTPYpiaKKJ0Q7c?=
 =?us-ascii?Q?HycxocJpwu9YfVliCMDOyBL62QHzmdvsMyf4txtS/qeq8mNDAZ6nHASU02ZW?=
 =?us-ascii?Q?vu5C110f4P+XB1fOFPw+JkqtHMepi4UqKHzv6ts4rQt5Tqk9iFV5ev8W84cw?=
 =?us-ascii?Q?Is+h5I/qXj8bNLDPJoYVohWNpTSCZRsdNE9oMO2lUzvO691h3vZyg1A4HMQm?=
 =?us-ascii?Q?KFgaac9cEDrwEtNA78qmBXIpMYrYlzpn8hhPrdthOGZeJv5/LZ8T/ucnVOPB?=
 =?us-ascii?Q?wzqLHedSR9jXDrf4w4N6QytKWprC+IDTkhxUL/foY6zkggut/o8x3g8F0/Hc?=
 =?us-ascii?Q?DTGTin7B1GhlI3EV6ziS/d5Jvf53TrWwaAUIu+qYv97Q+XC+z0tux0H5eBtb?=
 =?us-ascii?Q?yy3pbGyIFvjQpdmzrrm7SGsFESj+DETllu1l4j7IQAjPzCVwAx0SdXtPP77Z?=
 =?us-ascii?Q?yyUrL6S4fNU0IS8w4Uzhz0ena8BKxxFY+dKxqOMpuPLG7FUUlyBUNPUGNQoQ?=
 =?us-ascii?Q?AqFv1Hd5wA9UBDip6R0qmkRKoZ6fricBmWSbUdtwNvMC9Cuvy0DK/jdk2Bxl?=
 =?us-ascii?Q?asGIXgG5Qs8PvSLaMWuZjYVvwR6961PMC5y71FCYxeosT4N46DbNqffXVQuS?=
 =?us-ascii?Q?7rurzoM+lnY8hnUFIkD8JGkW2N3/vDERIhb2blrfyjz/VkTFZPjxW9uKy4Xy?=
 =?us-ascii?Q?rfAcnQtBTSJaFfAe7aEcjXz84WTO8n+l?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(19092799006)(10070799003)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?58YpPd0+mJyj973NEfcCe/Gx0UtJ0lJi1Oo7WWx3W4bYbYXn6MTI1e9Ty/a0?=
 =?us-ascii?Q?eNVzfwYzg04lCT1gUi/fYbt+KC5wY6iYhs4CWjeiNFW/nXkaIZ/l0L5a2866?=
 =?us-ascii?Q?Q644A4nH08qEEORV66icl8VvZZc/9yzVqWf3DgHpAITbOP8ZmioHghVZtYtj?=
 =?us-ascii?Q?Buf7kAsdayA1cskhwojLqFmAfHtA0vdYjMwFkw0QAblJdhfPN2+iWzs5LVwW?=
 =?us-ascii?Q?pccOtDBpW++jYN3mhFUJ63wwUzFsox9sTaJ/oZkwlXL5wypnExNWZ05j4e5Y?=
 =?us-ascii?Q?OvgS/SE1XxwSrCIiXRyA53MFg+T0gS38dMHEf20FnA4kcQGoX25C46Tzdu3t?=
 =?us-ascii?Q?KHos7+HBUuAZk9+5MOw5Jfi2Xe5+VG/cw9cE8bYZhM0bkh3r1DoeI7t7V1FW?=
 =?us-ascii?Q?ncNyE0Avq2qyJHEy+EOPwnTgYrG19GKP5R9ENZkiM0KOOBEY1zSLxIA9xeA0?=
 =?us-ascii?Q?RxLqCY0awxzQx8OLJTMlcJMc+Fv8fR7PloliV6Wio4C8/xq8wM1HkpaP2k59?=
 =?us-ascii?Q?mLtWedxk4YzGY6nKpPnx2dG5bEKeLqr5ksZcZJFFAyPrkA0DXs/1zwbe3KmY?=
 =?us-ascii?Q?dK7jwYOTmgrG+WkHtaBY1Qmj8zYxnZ+3yt0CteO1j75luVhhNc3hdiG97SMK?=
 =?us-ascii?Q?QxrQOC76cuhYCOinzQHoO83/Tgjlj8Mc7Pv7VJyiqvlLBP9YEq+biY0253yo?=
 =?us-ascii?Q?F8/LgcF3sj6J/fXnt215Hs3qnx1SidmzDdZQp+rfvoiDpOhhGYfQlImeX2R+?=
 =?us-ascii?Q?467+QVeBkNaNhSKLgp8P2++lb4+anxI/EWaHF3+yiARE707PHXIYm+dGQRYu?=
 =?us-ascii?Q?Y2LYzlQUhsazpz3MxidGNHxFTFYs7m2DrjDu28zwaoMuukp+fWcY5IfrYOzT?=
 =?us-ascii?Q?pS3zYUhkhy6b95eurTPTvWpzbYUmjIqX5sXQmleXNw2nXjWTLP+6SNEGcSJQ?=
 =?us-ascii?Q?8RyrswnsfLMcaa4dKy+nNsUGgIteL3D+USv6zKdrUfzbFkrgH4IUxta2czO6?=
 =?us-ascii?Q?8utApasoSELqDldenLVk3kshnAb5Jn1sSqLbzje9tec8Bg/eBCJWX8Xr5KOz?=
 =?us-ascii?Q?dUhqUre+IkIIuTLDJdD+TckfVrbtd/VhCvzhm5+FLvqhKAMY6IXvMSXXLAnK?=
 =?us-ascii?Q?l8WEdtxd5p91Snof4bVZfWtD774h0Nc9oX8RU+PiIASJxbkdXTNjmIUtADTf?=
 =?us-ascii?Q?MnD4qqKT3bnPJn8yyqvwotuEFlIPb+NPN0yzZj00SPvpJhJcoy3LP9nTwJqd?=
 =?us-ascii?Q?LnrxRicu3CgsR6GP5LZ+i+0+N+fWQwRfrnqa9Q8/Ntfi1Olpjw44bfNEgmGQ?=
 =?us-ascii?Q?kwO3sI0TULSengjFFLA0en7rUcagTKMUcximMR+XpGLnpkPUh3+36sHsj51d?=
 =?us-ascii?Q?KqJwu4+4xtucjTTwsQewGJyeZNW8DXYUVqkbx0soKpldIkaXXOebsWuHUS+6?=
 =?us-ascii?Q?OLGtW6c4R+ERJkKQpZ3Gi4naptxWjeBaGlA2KD2gpVPPRN//7jUg6M1lgHcT?=
 =?us-ascii?Q?7lORZ8vmdg6aw9KLxvDFiw3AnYW1vinRUeTaG8ucDMC6GON9cJoId3wkPGPT?=
 =?us-ascii?Q?jjDUoaHwJFrAjcVVRgOPgTlLa42Yfnm2wg9kskDOZjZ9TmyMnwrtJkU9PKai?=
 =?us-ascii?Q?bgVujBn+F23MbfFqVMtBeuQ=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72a76843-8c71-475f-7a6e-08de2c18bc2d
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 11:49:48.4838
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0RmRGBGT4HAAkmYBxOM9tZCWbt4S6MPD8br1EBVCWALUq67S2XgszJlVfXfdL1ntL3eYD+uYCHIO4a5a+s59Cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_034952_861382_028C6344 
X-CRM114-Status: GOOD (  18.97  )
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

Lynx 28G is a multi-protocol SerDes - it handles serial Ethernet, PCIe,
SATA.

The driver should not use the phylib-specific phy_interface_t as an
internal data representation, but something specific to its internal
capabilities, and only convert to phy_interface_t when PHY_MODE_ETHERNET
is selected and used.

Otherwise it has no way of representing the non-Ethernet lanes (which
was not a short-term goal when the driver was introduced, and is not a
goal per se right now either, but should nonetheless be possible).

Prefer the "enum lynx_lane_mode" name over "lynx_28g_lane_mode", in
preparation of future Lynx 10G SerDes support. This SerDes is part of
the same IP family and has similar capabilities, and will reuse some
code, hence the common data type.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v3->v5: none
v2->v3:
- fix lynx_28g_set_mode() by using lane_mode instead of submode
- save lane_mode to local variable in lynx_28g_set_mode()
v1->v2: none

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 208 ++++++++++++-----------
 1 file changed, 106 insertions(+), 102 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index c4bfa0ce7726..29ab7213a35d 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -243,6 +243,13 @@ enum lynx_28g_proto_sel {
 	PROTO_SEL_25G_50G_100G = 0x1a,
 };
 
+enum lynx_lane_mode {
+	LANE_MODE_UNKNOWN,
+	LANE_MODE_1000BASEX_SGMII,
+	LANE_MODE_10GBASER_USXGMII,
+	LANE_MODE_MAX,
+};
+
 struct lynx_28g_proto_conf {
 	/* LNaGCR0 */
 	int proto_sel;
@@ -280,8 +287,8 @@ struct lynx_28g_proto_conf {
 	int smp_autoz_eg1r;
 };
 
-static const struct lynx_28g_proto_conf lynx_28g_proto_conf[PHY_INTERFACE_MODE_MAX] = {
-	[PHY_INTERFACE_MODE_SGMII] = {
+static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
+	[LANE_MODE_1000BASEX_SGMII] = {
 		.proto_sel = LNaGCR0_PROTO_SEL_SGMII,
 		.if_width = LNaGCR0_IF_WIDTH_10_BIT,
 		.teq_type = EQ_TYPE_NO_EQ,
@@ -309,35 +316,7 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[PHY_INTERFACE_MODE_M
 		.smp_autoz_d1r = 0,
 		.smp_autoz_eg1r = 0,
 	},
-	[PHY_INTERFACE_MODE_1000BASEX] = {
-		.proto_sel = LNaGCR0_PROTO_SEL_SGMII,
-		.if_width = LNaGCR0_IF_WIDTH_10_BIT,
-		.teq_type = EQ_TYPE_NO_EQ,
-		.sgn_preq = 1,
-		.ratio_preq = 0,
-		.sgn_post1q = 1,
-		.ratio_post1q = 0,
-		.amp_red = 6,
-		.adpt_eq = 48,
-		.enter_idle_flt_sel = 4,
-		.exit_idle_flt_sel = 3,
-		.data_lost_th_sel = 1,
-		.gk2ovd = 0x1f,
-		.gk3ovd = 0,
-		.gk4ovd = 0,
-		.gk2ovd_en = 1,
-		.gk3ovd_en = 1,
-		.gk4ovd_en = 0,
-		.eq_offset_ovd = 0x1f,
-		.eq_offset_ovd_en = 0,
-		.eq_offset_rng_dbl = 0,
-		.eq_blw_sel = 0,
-		.eq_boost = 0,
-		.spare_in = 0,
-		.smp_autoz_d1r = 0,
-		.smp_autoz_eg1r = 0,
-	},
-	[PHY_INTERFACE_MODE_10GBASER] = {
+	[LANE_MODE_10GBASER_USXGMII] = {
 		.proto_sel = LNaGCR0_PROTO_SEL_XFI,
 		.if_width = LNaGCR0_IF_WIDTH_20_BIT,
 		.teq_type = EQ_TYPE_2TAP,
@@ -379,7 +358,7 @@ struct lynx_28g_pll {
 	struct lynx_28g_priv *priv;
 	u32 rstctl, cr0, cr1;
 	int id;
-	DECLARE_PHY_INTERFACE_MASK(supported);
+	DECLARE_BITMAP(supported, LANE_MODE_MAX);
 };
 
 struct lynx_28g_lane {
@@ -388,7 +367,7 @@ struct lynx_28g_lane {
 	bool powered_up;
 	bool init;
 	unsigned int id;
-	phy_interface_t interface;
+	enum lynx_lane_mode mode;
 };
 
 struct lynx_28g_priv {
@@ -429,7 +408,34 @@ static void lynx_28g_rmw(struct lynx_28g_priv *priv, unsigned long off,
 #define lynx_28g_pll_read(pll, reg)			\
 	ioread32((pll)->priv->base + reg((pll)->id))
 
-static bool lynx_28g_supports_interface(struct lynx_28g_priv *priv, int intf)
+static const char *lynx_lane_mode_str(enum lynx_lane_mode lane_mode)
+{
+	switch (lane_mode) {
+	case LANE_MODE_1000BASEX_SGMII:
+		return "1000Base-X/SGMII";
+	case LANE_MODE_10GBASER_USXGMII:
+		return "10GBase-R/USXGMII";
+	default:
+		return "unknown";
+	}
+}
+
+static enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf)
+{
+	switch (intf) {
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_1000BASEX:
+		return LANE_MODE_1000BASEX_SGMII;
+	case PHY_INTERFACE_MODE_10GBASER:
+	case PHY_INTERFACE_MODE_USXGMII:
+		return LANE_MODE_10GBASER_USXGMII;
+	default:
+		return LANE_MODE_UNKNOWN;
+	}
+}
+
+static bool lynx_28g_supports_lane_mode(struct lynx_28g_priv *priv,
+					enum lynx_lane_mode mode)
 {
 	int i;
 
@@ -437,7 +443,7 @@ static bool lynx_28g_supports_interface(struct lynx_28g_priv *priv, int intf)
 		if (PLLnRSTCTL_DIS(priv->pll[i].rstctl))
 			continue;
 
-		if (test_bit(intf, priv->pll[i].supported))
+		if (test_bit(mode, priv->pll[i].supported))
 			return true;
 	}
 
@@ -445,7 +451,7 @@ static bool lynx_28g_supports_interface(struct lynx_28g_priv *priv, int intf)
 }
 
 static struct lynx_28g_pll *lynx_28g_pll_get(struct lynx_28g_priv *priv,
-					     phy_interface_t intf)
+					     enum lynx_lane_mode mode)
 {
 	struct lynx_28g_pll *pll;
 	int i;
@@ -456,27 +462,27 @@ static struct lynx_28g_pll *lynx_28g_pll_get(struct lynx_28g_priv *priv,
 		if (PLLnRSTCTL_DIS(pll->rstctl))
 			continue;
 
-		if (test_bit(intf, pll->supported))
+		if (test_bit(mode, pll->supported))
 			return pll;
 	}
 
 	/* no pll supports requested mode, either caller forgot to check
 	 * lynx_28g_supports_lane_mode, or this is a bug.
 	 */
-	dev_WARN_ONCE(priv->dev, 1, "no pll for interface %s\n", phy_modes(intf));
+	dev_WARN_ONCE(priv->dev, 1, "no pll for lane mode %s\n",
+		      lynx_lane_mode_str(mode));
 	return NULL;
 }
 
 static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 				    struct lynx_28g_pll *pll,
-				    phy_interface_t intf)
+				    enum lynx_lane_mode lane_mode)
 {
 	switch (FIELD_GET(PLLnCR1_FRATE_SEL, pll->cr1)) {
 	case PLLnCR1_FRATE_5G_10GVCO:
 	case PLLnCR1_FRATE_5G_25GVCO:
-		switch (intf) {
-		case PHY_INTERFACE_MODE_SGMII:
-		case PHY_INTERFACE_MODE_1000BASEX:
+		switch (lane_mode) {
+		case LANE_MODE_1000BASEX_SGMII:
 			lynx_28g_lane_rmw(lane, LNaTGCR0,
 					  FIELD_PREP(LNaTGCR0_N_RATE, LNaTGCR0_N_RATE_QUARTER),
 					  LNaTGCR0_N_RATE);
@@ -489,9 +495,8 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 		}
 		break;
 	case PLLnCR1_FRATE_10G_20GVCO:
-		switch (intf) {
-		case PHY_INTERFACE_MODE_10GBASER:
-		case PHY_INTERFACE_MODE_USXGMII:
+		switch (lane_mode) {
+		case LANE_MODE_10GBASER_USXGMII:
 			lynx_28g_lane_rmw(lane, LNaTGCR0,
 					  FIELD_PREP(LNaTGCR0_N_RATE, LNaTGCR0_N_RATE_FULL),
 					  LNaTGCR0_N_RATE);
@@ -580,17 +585,16 @@ static int lynx_28g_power_on(struct phy *phy)
 	return 0;
 }
 
-static int lynx_28g_get_pccr(phy_interface_t interface, int lane,
+static int lynx_28g_get_pccr(enum lynx_lane_mode lane_mode, int lane,
 			     struct lynx_pccr *pccr)
 {
-	switch (interface) {
-	case PHY_INTERFACE_MODE_SGMII:
-	case PHY_INTERFACE_MODE_1000BASEX:
+	switch (lane_mode) {
+	case LANE_MODE_1000BASEX_SGMII:
 		pccr->offset = PCC8;
 		pccr->width = 4;
 		pccr->shift = SGMII_CFG(lane);
 		break;
-	case PHY_INTERFACE_MODE_10GBASER:
+	case LANE_MODE_10GBASER_USXGMII:
 		pccr->offset = PCCC;
 		pccr->width = 4;
 		pccr->shift = SXGMII_CFG(lane);
@@ -602,13 +606,12 @@ static int lynx_28g_get_pccr(phy_interface_t interface, int lane,
 	return 0;
 }
 
-static int lynx_28g_get_pcvt_offset(int lane, phy_interface_t interface)
+static int lynx_28g_get_pcvt_offset(int lane, enum lynx_lane_mode lane_mode)
 {
-	switch (interface) {
-	case PHY_INTERFACE_MODE_SGMII:
-	case PHY_INTERFACE_MODE_1000BASEX:
+	switch (lane_mode) {
+	case LANE_MODE_1000BASEX_SGMII:
 		return SGMIIaCR0(lane);
-	case PHY_INTERFACE_MODE_10GBASER:
+	case LANE_MODE_10GBASER_USXGMII:
 		return SXGMIIaCR0(lane);
 	default:
 		return -EOPNOTSUPP;
@@ -616,14 +619,14 @@ static int lynx_28g_get_pcvt_offset(int lane, phy_interface_t interface)
 }
 
 static int lynx_pccr_write(struct lynx_28g_lane *lane,
-			   phy_interface_t interface, u32 val)
+			   enum lynx_lane_mode lane_mode, u32 val)
 {
 	struct lynx_28g_priv *priv = lane->priv;
 	struct lynx_pccr pccr;
 	u32 old, tmp, mask;
 	int err;
 
-	err = lynx_28g_get_pccr(interface, lane->id, &pccr);
+	err = lynx_28g_get_pccr(lane_mode, lane->id, &pccr);
 	if (err)
 		return err;
 
@@ -638,13 +641,13 @@ static int lynx_pccr_write(struct lynx_28g_lane *lane,
 	return 0;
 }
 
-static int lynx_pcvt_read(struct lynx_28g_lane *lane, phy_interface_t interface,
-			  int cr, u32 *val)
+static int lynx_pcvt_read(struct lynx_28g_lane *lane,
+			  enum lynx_lane_mode lane_mode, int cr, u32 *val)
 {
 	struct lynx_28g_priv *priv = lane->priv;
 	int offset;
 
-	offset = lynx_28g_get_pcvt_offset(lane->id, interface);
+	offset = lynx_28g_get_pcvt_offset(lane->id, lane_mode);
 	if (offset < 0)
 		return offset;
 
@@ -653,13 +656,13 @@ static int lynx_pcvt_read(struct lynx_28g_lane *lane, phy_interface_t interface,
 	return 0;
 }
 
-static int lynx_pcvt_write(struct lynx_28g_lane *lane, phy_interface_t interface,
-			   int cr, u32 val)
+static int lynx_pcvt_write(struct lynx_28g_lane *lane,
+			   enum lynx_lane_mode lane_mode, int cr, u32 val)
 {
 	struct lynx_28g_priv *priv = lane->priv;
 	int offset;
 
-	offset = lynx_28g_get_pcvt_offset(lane->id, interface);
+	offset = lynx_28g_get_pcvt_offset(lane->id, lane_mode);
 	if (offset < 0)
 		return offset;
 
@@ -668,43 +671,44 @@ static int lynx_pcvt_write(struct lynx_28g_lane *lane, phy_interface_t interface
 	return 0;
 }
 
-static int lynx_pcvt_rmw(struct lynx_28g_lane *lane, phy_interface_t interface,
+static int lynx_pcvt_rmw(struct lynx_28g_lane *lane,
+			 enum lynx_lane_mode lane_mode,
 			 int cr, u32 val, u32 mask)
 {
 	int err;
 	u32 tmp;
 
-	err = lynx_pcvt_read(lane, interface, cr, &tmp);
+	err = lynx_pcvt_read(lane, lane_mode, cr, &tmp);
 	if (err)
 		return err;
 
 	tmp &= ~mask;
 	tmp |= val;
 
-	return lynx_pcvt_write(lane, interface, cr, tmp);
+	return lynx_pcvt_write(lane, lane_mode, cr, tmp);
 }
 
 static void lynx_28g_lane_remap_pll(struct lynx_28g_lane *lane,
-				    phy_interface_t interface)
+				    enum lynx_lane_mode lane_mode)
 {
 	struct lynx_28g_priv *priv = lane->priv;
 	struct lynx_28g_pll *pll;
 
 	/* Switch to the PLL that works with this interface type */
-	pll = lynx_28g_pll_get(priv, interface);
+	pll = lynx_28g_pll_get(priv, lane_mode);
 	if (unlikely(pll == NULL))
 		return;
 
 	lynx_28g_lane_set_pll(lane, pll);
 
 	/* Choose the portion of clock net to be used on this lane */
-	lynx_28g_lane_set_nrate(lane, pll, interface);
+	lynx_28g_lane_set_nrate(lane, pll, lane_mode);
 }
 
 static void lynx_28g_lane_change_proto_conf(struct lynx_28g_lane *lane,
-					    phy_interface_t interface)
+					    enum lynx_lane_mode lane_mode)
 {
-	const struct lynx_28g_proto_conf *conf = &lynx_28g_proto_conf[interface];
+	const struct lynx_28g_proto_conf *conf = &lynx_28g_proto_conf[lane_mode];
 
 	lynx_28g_lane_rmw(lane, LNaGCR0,
 			  FIELD_PREP(LNaGCR0_PROTO_SEL, conf->proto_sel) |
@@ -775,21 +779,20 @@ static void lynx_28g_lane_change_proto_conf(struct lynx_28g_lane *lane,
 }
 
 static int lynx_28g_lane_disable_pcvt(struct lynx_28g_lane *lane,
-				      phy_interface_t interface)
+				      enum lynx_lane_mode lane_mode)
 {
 	struct lynx_28g_priv *priv = lane->priv;
 	int err;
 
 	spin_lock(&priv->pcc_lock);
 
-	err = lynx_pccr_write(lane, interface, 0);
+	err = lynx_pccr_write(lane, lane_mode, 0);
 	if (err)
 		goto out;
 
-	switch (interface) {
-	case PHY_INTERFACE_MODE_SGMII:
-	case PHY_INTERFACE_MODE_1000BASEX:
-		err = lynx_pcvt_rmw(lane, interface, CR(1), 0,
+	switch (lane_mode) {
+	case LANE_MODE_1000BASEX_SGMII:
+		err = lynx_pcvt_rmw(lane, lane_mode, CR(1), 0,
 				    SGMIIaCR1_SGPCS_EN);
 		break;
 	default:
@@ -803,7 +806,7 @@ static int lynx_28g_lane_disable_pcvt(struct lynx_28g_lane *lane,
 }
 
 static int lynx_28g_lane_enable_pcvt(struct lynx_28g_lane *lane,
-				     phy_interface_t interface)
+				     enum lynx_lane_mode lane_mode)
 {
 	struct lynx_28g_priv *priv = lane->priv;
 	u32 val;
@@ -811,10 +814,9 @@ static int lynx_28g_lane_enable_pcvt(struct lynx_28g_lane *lane,
 
 	spin_lock(&priv->pcc_lock);
 
-	switch (interface) {
-	case PHY_INTERFACE_MODE_SGMII:
-	case PHY_INTERFACE_MODE_1000BASEX:
-		err = lynx_pcvt_rmw(lane, interface, CR(1), SGMIIaCR1_SGPCS_EN,
+	switch (lane_mode) {
+	case LANE_MODE_1000BASEX_SGMII:
+		err = lynx_pcvt_rmw(lane, lane_mode, CR(1), SGMIIaCR1_SGPCS_EN,
 				    SGMIIaCR1_SGPCS_EN);
 		break;
 	default:
@@ -823,19 +825,18 @@ static int lynx_28g_lane_enable_pcvt(struct lynx_28g_lane *lane,
 
 	val = 0;
 
-	switch (interface) {
-	case PHY_INTERFACE_MODE_SGMII:
-	case PHY_INTERFACE_MODE_1000BASEX:
+	switch (lane_mode) {
+	case LANE_MODE_1000BASEX_SGMII:
 		val |= PCC8_SGMIIa_CFG;
 		break;
-	case PHY_INTERFACE_MODE_10GBASER:
+	case LANE_MODE_10GBASER_USXGMII:
 		val |= PCCC_SXGMIIn_CFG | PCCC_SXGMIIn_XFI;
 		break;
 	default:
 		break;
 	}
 
-	err = lynx_pccr_write(lane, interface, val);
+	err = lynx_pccr_write(lane, lane_mode, val);
 
 	spin_unlock(&priv->pcc_lock);
 
@@ -847,18 +848,20 @@ static int lynx_28g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	struct lynx_28g_lane *lane = phy_get_drvdata(phy);
 	struct lynx_28g_priv *priv = lane->priv;
 	int powered_up = lane->powered_up;
+	enum lynx_lane_mode lane_mode;
 	int err = 0;
 
 	if (mode != PHY_MODE_ETHERNET)
 		return -EOPNOTSUPP;
 
-	if (lane->interface == PHY_INTERFACE_MODE_NA)
+	if (lane->mode == LANE_MODE_UNKNOWN)
 		return -EOPNOTSUPP;
 
-	if (!lynx_28g_supports_interface(priv, submode))
+	lane_mode = phy_interface_to_lane_mode(submode);
+	if (!lynx_28g_supports_lane_mode(priv, lane_mode))
 		return -EOPNOTSUPP;
 
-	if (submode == lane->interface)
+	if (lane_mode == lane->mode)
 		return 0;
 
 	/* If the lane is powered up, put the lane into the halt state while
@@ -867,15 +870,15 @@ static int lynx_28g_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	if (powered_up)
 		lynx_28g_power_off(phy);
 
-	err = lynx_28g_lane_disable_pcvt(lane, lane->interface);
+	err = lynx_28g_lane_disable_pcvt(lane, lane->mode);
 	if (err)
 		goto out;
 
-	lynx_28g_lane_change_proto_conf(lane, submode);
-	lynx_28g_lane_remap_pll(lane, submode);
-	WARN_ON(lynx_28g_lane_enable_pcvt(lane, submode));
+	lynx_28g_lane_change_proto_conf(lane, lane_mode);
+	lynx_28g_lane_remap_pll(lane, lane_mode);
+	WARN_ON(lynx_28g_lane_enable_pcvt(lane, lane_mode));
 
-	lane->interface = submode;
+	lane->mode = lane_mode;
 
 out:
 	if (powered_up)
@@ -889,11 +892,13 @@ static int lynx_28g_validate(struct phy *phy, enum phy_mode mode, int submode,
 {
 	struct lynx_28g_lane *lane = phy_get_drvdata(phy);
 	struct lynx_28g_priv *priv = lane->priv;
+	enum lynx_lane_mode lane_mode;
 
 	if (mode != PHY_MODE_ETHERNET)
 		return -EOPNOTSUPP;
 
-	if (!lynx_28g_supports_interface(priv, submode))
+	lane_mode = phy_interface_to_lane_mode(submode);
+	if (!lynx_28g_supports_lane_mode(priv, lane_mode))
 		return -EOPNOTSUPP;
 
 	return 0;
@@ -946,12 +951,11 @@ static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
 		case PLLnCR1_FRATE_5G_10GVCO:
 		case PLLnCR1_FRATE_5G_25GVCO:
 			/* 5GHz clock net */
-			__set_bit(PHY_INTERFACE_MODE_1000BASEX, pll->supported);
-			__set_bit(PHY_INTERFACE_MODE_SGMII, pll->supported);
+			__set_bit(LANE_MODE_1000BASEX_SGMII, pll->supported);
 			break;
 		case PLLnCR1_FRATE_10G_20GVCO:
 			/* 10.3125GHz clock net */
-			__set_bit(PHY_INTERFACE_MODE_10GBASER, pll->supported);
+			__set_bit(LANE_MODE_10GBASER_USXGMII, pll->supported);
 			break;
 		default:
 			/* 6GHz, 12.890625GHz, 8GHz */
@@ -1002,13 +1006,13 @@ static void lynx_28g_lane_read_configuration(struct lynx_28g_lane *lane)
 	protocol = FIELD_GET(LNaPSS_TYPE, pss);
 	switch (protocol) {
 	case LNaPSS_TYPE_SGMII:
-		lane->interface = PHY_INTERFACE_MODE_SGMII;
+		lane->mode = LANE_MODE_1000BASEX_SGMII;
 		break;
 	case LNaPSS_TYPE_XFI:
-		lane->interface = PHY_INTERFACE_MODE_10GBASER;
+		lane->mode = LANE_MODE_10GBASER_USXGMII;
 		break;
 	default:
-		lane->interface = PHY_INTERFACE_MODE_NA;
+		lane->mode = LANE_MODE_UNKNOWN;
 	}
 }
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
