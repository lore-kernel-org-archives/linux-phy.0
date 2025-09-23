Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E055ECAC5B0
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 19:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYInKak5HoEL8Ix/QbWVma+KLejvIsv5yT5oVOfWEBs=; b=T7NBDigKFgbELc
	+YxY7s5UPpYS6LP0pAfVQkcUz+sqwAYPzh/jiQ1fSGW3on6E0a8h6Ce0c7awCaK4lys8ZUUH2fwHT
	bDTl7h126i4p97lbAah6mcQcQltW9e/D8AFEQIzfz8l5mapvp3IcEYGodFLBLbcpz68t/Pw7rf3ac
	PX9Ho+hjdfGabG1uyxRq96PZQyZFRMihRucN0ck1Dl+R3rde4R3f53qAWzhV++XQt4X+GX3aTSwvS
	QSXkKnfFo3s1J1dlxhRw37h/KkJjb5n5oQp+mFaxSSBxvYrBoBA74untx2NWM8XHL17lgqYQE2vnH
	GJy2eMkqEdLaIxjH4xDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v18x7-0000000Eh7V-2na4;
	Tue, 23 Sep 2025 19:45:29 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v18x5-0000000Eh0T-0K0b
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 19:45:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qRiCwylzwkngUko9OKFk2iHjtldvRrrN6nTu0Qsan+uUGT7iTTLFoXYuENLyjD/MzsfR6BvAVCUlaAqgPwq7w3ZU76b5wQrMKDlGXyKs1aBf3w3kiMMoWvZBQslPdGpsQL03OqgcdV2T2qgvSm9aXhbfmobtASVMSo9+zv0e2igZN16qshnfvIrykVWi+bGTizrfMNYjNgK35ogg7QvrHCdUS9N1qGijbyGAADMAKXXIMGI+OXqjofdknEpOtvK1iOh+CW+YopIapI53tHhxBRUw51v/2n78uleNuO/29JIvoQJDzMbo12C1YwgeR/QT4YRDvDXcks6oboqPTXOC7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rnQdx5n07Pkzk6JYlW+jnbzE4IShmUoMr2fjX6dhXzY=;
 b=wA6WEu9M5CIb17oTJR0XAjgGQhP9+fqhsW4t+4T8yGwU+FRDjTuGRF3IBbN+Vul8ZyKKC6qVnJ18kRxsP23nU4Nd9Wu/fw+hjWpU4jCSYNOdNzraV/3x4hTES/rmpx8Beh4AOP6wCHoTViz8BVcHg7uEk7O/dYATgwrhljH2UdgNiVXo0I27+W5KVT9K9gN4LbqC2r5DpTeWSqReqjS9sdFCuY26XL6pv9ZNuSg2860wHlq2bs9HceGJ04EZrEdrXWrg5rDJb7ZwBlXtZEWpeOzUA85kFyfs2D3xIKgRMBrRgT8BM8jMZq/kLQdaetUWRRFwpWZ6qW/LoPpaP49Fdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rnQdx5n07Pkzk6JYlW+jnbzE4IShmUoMr2fjX6dhXzY=;
 b=J23yWzm5IKE9z9XjQStEPKQgIaGrMu6Fr9K1sai6r/6t8/3Z4B662WZpAEMdAWu0tGhspB4Sl1JDvfei546x3Hb+KjfMDZL4QByf90tH0vhBwFxPd8xveIl5Chnm7uFH0MW9Ir5sqmOb2vEnriTs37PnXJbGU37OihGdfDjwsmQpzeNg8cwrqMGbPBGnTC9smJKbEr9n2yaLZweFqtOysGOzujdnuBeG54LQU27qw9cVu1M7bz8G8iRgO4a+DNOheOFhxqRHDeQaPF2LtJOQsTMDbc6QM28Mts9tOORjiGh3dlebJk2DzEyv86t3TvPTatFseB+wP0rzjog5o54euQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by DBAPR04MB7352.eurprd04.prod.outlook.com (2603:10a6:10:1a8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.8; Tue, 23 Sep
 2025 19:45:15 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9160.008; Tue, 23 Sep 2025
 19:45:15 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy 09/16] phy: lynx-28g: configure more equalization params for 1GbE and 10GbE
Date: Tue, 23 Sep 2025 22:44:38 +0300
Message-Id: <20250923194445.454442-10-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250923194445.454442-1-vladimir.oltean@nxp.com>
References: <20250923194445.454442-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM8P189CA0028.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:218::33) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|DBAPR04MB7352:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a92792d-8526-4393-2648-08ddfad9b72b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|52116014|376014|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?uz21OxmVRfP4QGa8UnVXvxJUiZBjee7Iqj32hTzaeA2ODvkpF3iCVXwVOgaw?=
 =?us-ascii?Q?f2SE3x1AMsidArqzsjqFdpEVwKGWBvu9XWRhKW5riBzUE7aTJH26EEYdz2w4?=
 =?us-ascii?Q?a8Xs5VEOww+NnmRAOc9gfP6hPidDig2fjvyX/FYxTfyuUpu++12EjdOJAeSe?=
 =?us-ascii?Q?mBCtd6Tgav2GxdGeT7K+jCfKJaJf1+W2frp8VOZvvyAFsobyjofx+9baduyd?=
 =?us-ascii?Q?BNR0kewPU3ul0E2DBRfJzbW48idK6mRbX9eCxllb0JczMdSUTyoLPcZr6rbX?=
 =?us-ascii?Q?EUFXvdYIflQRAV7IgByd0VJ4RkLNzu1HX98/o8eTwj0JquGpjAyEYhCMOkcX?=
 =?us-ascii?Q?ION6A0KJYScE/gzjCn8BjdwCSdxSveeaYK5RnbNe+3QYGWaHCb+SHBDU9Srs?=
 =?us-ascii?Q?Ak1r0xHczpnXOJyfYHgIbH1JNpxaAaw8PrUyF9Rylp2JY0QDFnwJmr3f+mvy?=
 =?us-ascii?Q?SOvKOBzbvzhYHwvmGxPTmtrtBFnBdilN6PJ5qdVYBBTrtISXnFs/SGcZQ3jm?=
 =?us-ascii?Q?eTFdhBTTLjvtl3L3QBOtOPIC0h8iIHWRITsSWlsf4Gd6EMORaQzJ3GEuUnLP?=
 =?us-ascii?Q?e1QE7+gazKbBgc9SzuxB7i6NMPZ8hHnrnhnEXEwx2S4m5Vh6y2igNrc4NJIv?=
 =?us-ascii?Q?oW4+r45iy7TUyVtwQhDOF+7RRs4hR+EoA3wQCcYVct0QXpykebZhADPdFmGl?=
 =?us-ascii?Q?ugkDTv/i74jYs/QWi+ooeX0Uy9ZhRTMV64pp+peFdtfuuTZVUCkrAebSlzG+?=
 =?us-ascii?Q?YoFOuWM/IhzfvjKL41xt2EY/MCC4yVCpgWQYfkoAKypy2fyIYcgwBBPz/wAy?=
 =?us-ascii?Q?VYEzvMqofwr4W2S2Hx/MaxzJxtE5jSDnOIo94vp4TMDCesF4P+cX9kMoWWs1?=
 =?us-ascii?Q?hI4Yl4Su7rPOKmCdjZ1YOS1UrIwNfYzymWrGwBEzzrvpTtaJbhqWXLvYRpLy?=
 =?us-ascii?Q?ns8scqUFzex5CjiVYE2JNSmnuWiGEBTN6/R73O/JFHoVgXl+CBX0e+y18xSz?=
 =?us-ascii?Q?U3iJF82ZJMckIjiMKYPzBPboFayMbtB/H88Co3vcGP7dxqVxvG6ibpNtU/qy?=
 =?us-ascii?Q?wkxV9kTHZEzpbPDaxAnj/8Ucl3pmSXK5rKyQE2wlAwiUWWTew8aP5wz/Orcw?=
 =?us-ascii?Q?Q/CaBROLH3Q9da3fjZ7BxLJWq43UXgdFLFjAT2ZkxZ+iSNpd36nmvrJi8NTa?=
 =?us-ascii?Q?ZZ9LG8aWZZ/j6R4e7u05XUevCIOqqEVbMwvcRcX+hOITInsxZg130qoQC6kz?=
 =?us-ascii?Q?dXZuYl1GPTIUpxbfk6Wnha2JMZQ11Mr80lmsSzpK9PPAVbqYd0ubU+iLBRmQ?=
 =?us-ascii?Q?+bA/9hUCgr9wOFnPQDl12r3UYVlzmbo5FmeiZl02advUSBfk6VCatljIuWO3?=
 =?us-ascii?Q?ePZ0Bxc11/zIjtdiBwW3Cu3bXXWkx+I6P9O+sHRaWrSCSjBvQ5yffa7IK2ml?=
 =?us-ascii?Q?r2XX2sRb0m07QToWTR4sKDZZkOGcePTZ5HMjsI3LDGwuUIOO3FmKEw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(52116014)(376014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YFVX46ogbb6CtfsSZyqxo2rRokcvhNq6ID3hzQ2WRp6lFoDbaiPYd6AJFliy?=
 =?us-ascii?Q?+Q0VbXxoDC07llv4d4QpIVwJ1FkLakrqf9i4pkQzFqCNbUSTRnls2CcLQSjS?=
 =?us-ascii?Q?1eXYBoXuj66fUlOiwItlgUKFxkuYkLS3Py7iz0leHn2qM291Ra/fqkNs+gFM?=
 =?us-ascii?Q?Gj97cWqx5YunvLiPA0JN69dvgV5Dz+nSZq+uUhYADLWF1OMMemUIQkCaNm1N?=
 =?us-ascii?Q?Rp3MvRyCOTRtnaiPXEcr1Y03mtAtA6ymHU2ne1xCJwXCpxKuCu9nOE2uaOFf?=
 =?us-ascii?Q?Lz0wRTlOLZVkXTBAmzwyP1q6i7zfCKqoZtb3UPLaLTE+8nm0HxQa6iROldM1?=
 =?us-ascii?Q?rSJr9bTIA85eitU3Sa9tP5p+5Rn4EoOqzJ0FvArjClIiFEHyfl5g4yYi8Srf?=
 =?us-ascii?Q?BcXM/6IQCorw01sIUx6npWYtYIPaJquESdK+okV9UAl6w/GzlV6fIbfd/rI3?=
 =?us-ascii?Q?Md+8cwM/KmyaHN846IWiewdoDPOkE4zA/Q5OgoEJI1XlXR7n13kufVbiC6Kj?=
 =?us-ascii?Q?hMn4lQXOL1CLZsKZnOndFrPGHEy5fnyGEoj0q45x/bvIfRP1NQwDef2yj9vs?=
 =?us-ascii?Q?0U46uWxFrFgnD+aRc+Hv8YYKnmOLCxeEC2OgUtMwZA71XF54e8xmRGz7ys4l?=
 =?us-ascii?Q?YmB75U4C/ZvPFe1In/c4n3AQ6HZdJV4wzl5JDi3SzsKjvTbWsCA7V7U3rcQN?=
 =?us-ascii?Q?6BVldZv9BpVpmo191RUfnoeoAfxc3uIo3j2119XzxyqupP2btQpxZ73AEnLH?=
 =?us-ascii?Q?+n5Ol9SXQld17FQP0zCK5vljk4GT7gW2eQBi7uWsfC143N5CSsuFFHlBRCvZ?=
 =?us-ascii?Q?x2xC/ekBnqmkznjSBe1wdBGQJWuHMgy/Y/IXQ+Sf8P+1DpmJWYyIKGWmfA4C?=
 =?us-ascii?Q?sdFxzukdDK9vPihJ5wSnCXSOHWUtdNud1ea09Le48En2NTCG3JtGCaa+HreQ?=
 =?us-ascii?Q?hsCGWQeNo7nsvySuFUfES4NZgsPFlvitmP1XLgANNqGrTDG4bjsNhaAHZMmA?=
 =?us-ascii?Q?8WTyTf2zyVYAQxs07s8rtsQgRuvAzwnxlFwn4Nb9/ILDe/bOyIotHDXA7cV6?=
 =?us-ascii?Q?G2Sy2w4w4MBjRYAcNSzQuDUyje+q3NanpPxCmjIvNWSN4QFzFq3ggBBiaEmW?=
 =?us-ascii?Q?TL0mTKjn0guPgCQ+2drfijl9U6Hd4eHIKs0waTRvPDZyqOlOZeCo0qCnRJ8Q?=
 =?us-ascii?Q?/7dywXV7fo5dsIiODpWopTAAlXzu1YoBlz34ro4eaHFg/aeqbOO7OktM5OOp?=
 =?us-ascii?Q?snAGP09Zx2hpN+rwQh/uvYLOgtX1V+G8lyfcnJGs83s+IDT5Qlgi8pgDh0NX?=
 =?us-ascii?Q?URkVa8ZD+D5UfSlZC0pXbb+EcGsFCdSkbsxbolEJWmkFsFaxTTGTFpvZuGdf?=
 =?us-ascii?Q?YBZ5Vnnl/QkGyMunYScUWbbPMkn0A6TB7IJ49NBReavp4zNhJ+Nra42OgaJM?=
 =?us-ascii?Q?jVczlVfynwG2ELjwqwoOeXTj5aoisBBOE86Ioa7D37OHb23DoyUsTQ+BmxAh?=
 =?us-ascii?Q?2pURYyZKgB/WiSU/7ryC+Zw3vZwG42Az8iH5BOC7+gCpPEm5n+Qg+OIKaxnB?=
 =?us-ascii?Q?fYJsRbg9K8z5vzCGUzM7lPFI8GcllvudsUJJTBMGmbyWjA+1SxpRBm+gxPBE?=
 =?us-ascii?Q?Ow=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a92792d-8526-4393-2648-08ddfad9b72b
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 19:45:14.5835
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Tmg62kf/eOogKgWPe2lFuaMy8BlPq6tblvNgUwOeYmOWP2RoH2irAFhRAfZ9RVCdnAHowcwVPmOkairtE5+cQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7352
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_124527_134724_56B29A72 
X-CRM114-Status: GOOD (  14.91  )
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

From: Ioana Ciornei <ioana.ciornei@nxp.com>

While adding support for 25GbE, it was noticed that the RCCR0 and TTLCR0
registers have different values for this protocol than the 10GbE and
1GbE modes.

Expand the lynx_28g_proto_conf[] array with the expected values for the
currently supported protocols. These were dumped from a live system, and
are the out-of-reset values. It will ensure that the lane is configured
with these values when transitioning from 25GbE back into one of these
modes.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v2: none

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 37 ++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index d27a46cdd86b..1c126276394c 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -166,6 +166,18 @@
 #define LNaRECR4_EQ_BIN_DATA			GENMASK(8, 0) /* bit 9 is reserved */
 #define LNaRECR4_EQ_BIN_DATA_SGN		BIT(8)
 
+#define LNaRCCR0(lane)				(0x800 + (lane) * 0x100 + 0x68)
+#define LNaRCCR0_CAL_EN				BIT(31)
+#define LNaRCCR0_MEAS_EN			BIT(30)
+#define LNaRCCR0_CAL_BIN_SEL			BIT(28)
+#define LNaRCCR0_CAL_DC3_DIS			BIT(27)
+#define LNaRCCR0_CAL_DC2_DIS			BIT(26)
+#define LNaRCCR0_CAL_DC1_DIS			BIT(25)
+#define LNaRCCR0_CAL_DC0_DIS			BIT(24)
+#define LNaRCCR0_CAL_AC3_OV_EN			BIT(15)
+#define LNaRCCR0_CAL_AC3_OV			GENMASK(11, 8)
+#define LNaRCCR0_CAL_AC2_OV_EN			BIT(7)
+
 #define LNaRSCCR0(lane)				(0x800 + (lane) * 0x100 + 0x74)
 #define LNaRSCCR0_SMP_OFF_EN			BIT(31)
 #define LNaRSCCR0_SMP_OFF_OV_EN			BIT(30)
@@ -180,6 +192,15 @@
 #define LNaRSCCR0_SMP_AUTOZ_EG1R		GENMASK(5, 4)
 #define LNaRSCCR0_SMP_AUTOZ_EG1F		GENMASK(1, 0)
 
+#define LNaTTLCR0(lane)				(0x800 + (lane) * 0x100 + 0x80)
+#define LNaTTLCR0_TTL_FLT_SEL			GENMASK(29, 24)
+#define LNaTTLCR0_TTL_SLO_PM_BYP		BIT(22)
+#define LNaTTLCR0_STALL_DET_DIS			BIT(21)
+#define LNaTTLCR0_INACT_MON_DIS			BIT(20)
+#define LNaTTLCR0_CDR_OV			GENMASK(18, 16)
+#define LNaTTLCR0_DATA_IN_SSC			BIT(15)
+#define LNaTTLCR0_CDR_MIN_SMP_ON		GENMASK(1, 0)
+
 #define LNaTCSR0(lane)				(0x800 + (lane) * 0x100 + 0xa0)
 #define LNaTCSR0_SD_STAT_OBS_EN			BIT(31)
 #define LNaTCSR0_SD_LPBK_SEL			GENMASK(29, 28)
@@ -286,6 +307,10 @@ struct lynx_28g_proto_conf {
 	/* LNaRSCCR0 */
 	int smp_autoz_d1r;
 	int smp_autoz_eg1r;
+	/* LNaRCCR0 */
+	int rccr0;
+	/* LNaTTLCR0 */
+	int ttlcr0;
 };
 
 static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
@@ -316,6 +341,9 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 		.spare_in = 0,
 		.smp_autoz_d1r = 0,
 		.smp_autoz_eg1r = 0,
+		.rccr0 = LNaRCCR0_CAL_EN,
+		.ttlcr0 = LNaTTLCR0_TTL_SLO_PM_BYP |
+			  LNaTTLCR0_DATA_IN_SSC,
 	},
 	[LANE_MODE_USXGMII] = {
 		.proto_sel = LNaGCR0_PROTO_SEL_XFI,
@@ -344,6 +372,9 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 		.spare_in = 0,
 		.smp_autoz_d1r = 2,
 		.smp_autoz_eg1r = 0,
+		.rccr0 = LNaRCCR0_CAL_EN,
+		.ttlcr0 = LNaTTLCR0_TTL_SLO_PM_BYP |
+			  LNaTTLCR0_DATA_IN_SSC,
 	},
 	[LANE_MODE_10GBASER] = {
 		.proto_sel = LNaGCR0_PROTO_SEL_XFI,
@@ -372,6 +403,9 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 		.spare_in = 0,
 		.smp_autoz_d1r = 2,
 		.smp_autoz_eg1r = 0,
+		.rccr0 = LNaRCCR0_CAL_EN,
+		.ttlcr0 = LNaTTLCR0_TTL_SLO_PM_BYP |
+			  LNaTTLCR0_DATA_IN_SSC,
 	},
 };
 
@@ -829,6 +863,9 @@ static void lynx_28g_lane_change_proto_conf(struct lynx_28g_lane *lane,
 			  FIELD_PREP(LNaRSCCR0_SMP_AUTOZ_EG1R, conf->smp_autoz_eg1r),
 			  LNaRSCCR0_SMP_AUTOZ_D1R |
 			  LNaRSCCR0_SMP_AUTOZ_EG1R);
+
+	lynx_28g_lane_write(lane, LNaRCCR0, conf->rccr0);
+	lynx_28g_lane_write(lane, LNaTTLCR0, conf->ttlcr0);
 }
 
 static int lynx_28g_lane_disable_pcvt(struct lynx_28g_lane *lane,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
