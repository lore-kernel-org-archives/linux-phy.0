Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3524AEE01F3
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 06:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHu8DXmQxgmRc5tglKCGjj7AX51TwLxoJp3m81OH1V0=; b=PLFpiWQXLHsby1
	F8w9ITuglPcGAMxog9kljwETQHhogFfkJaDuym2Gf75cdEUj8ONBXZ9zokfhlvVKgMb9y6PQbhUXX
	oryUoRKOjj3GbphfemkqKKKR3sNpVvG47UkdN02vafoVTl6j9S7Qe0RzWhlCGPDzBc4XhKrt58bmi
	dhk49+5+230BZvmCjosZhCGxsFYY0VT6BGh1+imfKxSXrUfgntKJHBOUE24H+kVYrCg4WBGDoKgPT
	e2TFuuz1Ftcp16ngKmMVrMRlhkLWaT1IrKPwp+LTqk+C0AktHop2VcQc5Dtf+coSHyzkFpBiNclr1
	uDvyWSwlf2M1N64WdtDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soGfg-00000008FJl-3un3;
	Wed, 11 Sep 2024 06:17:44 +0000
Received: from mail-db5eur02on20619.outbound.protection.outlook.com ([2a01:111:f403:2608::619] helo=EUR02-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soGef-00000008FCd-3UIr;
	Wed, 11 Sep 2024 06:16:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tM3qD+82H0iKqoAOmQLBKpCzoQq39ua2b+hRhsKJ/I6VAAZYCiBop2dBAXXip/QsIMcR33qqYVo2+js1fAB6niNMWH4jWSqexZaOVWOTGICwlgeNuYkec/xACHb5qEJ9VH6V7rFrE/vMZEnFbiEie2Qn2tVhW1INEutcOgwq+KYx5Ym3/dcV8907wUjlS9Uuu1uawrWXi1VHiUkuxwCyjJ9atpD/1GQ5VEHssKkj5Rxn37efldAyCEs6dhnkmCdFFDUcIKFQW2sYbw1vDTzIUHy6Iw2+sxUuQWUfGLWE2fm5byWEUteAHlI+eDmoMu2uUDjcnU8SgeGM0Z+O4d2YCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5w+FOBCIpnBGrufAJOXY9hayxyY98hwCXhCsROkvEp4=;
 b=PrSHOBbzItUJP0/WndpmDkoTyBR3oOWaRLxb6prgJWfLjbsja1hKxpdiGXCi0VAH0hvKVWbtPjcXocZNW7c+SIV+kFq2HhUrXcJqvEdzq/Gcktmc19y1PC6TzvIwVV3SNUKeeF+Uh2Gb/8BF7r6LFxhzIhZZ4j2oApT602M09B8lDkIUCwOX3fMbr+p0zjZrmYGRjbYb1Ny5avuSfLlXaa1AVcUAq2y7rASzvP0oYkJpmPQjS4Z5bzzf2CpMLeNZtiTe9+vtSfCCs3B+Yh1WSdfzsfrtD+MCifDpMB9MJaV/bI6klCCGWDZkLROREg8WOYRcLv4FQi4LF61X1dbuCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5w+FOBCIpnBGrufAJOXY9hayxyY98hwCXhCsROkvEp4=;
 b=TAhAvhNSqK3ZdSR4JwN1XmNmQsH9nkfGV87QPvQgWHawex/8oGTxmcC3RMBntSOQ5/NP4od+kgdlzPwBYONel3OvxJm6Wfvx69R03EQV6/fwujEvqXIBUjspHyDtCq6nUqaySYdzoWInMWKYNkE2/X8mefk030RW91Satyw3J5rPVYEA92Q4K+4opM+gNJ0VA2fbqIyYFc2zxMhJa3/6dZ68U6RiMABi4xcb6kcMtluWQuDBNRZZOM6D39wBFYgYn5sdiutfZfMRHkPZPMeuWIxxuHsNxUxeiMKukCkdpEuZRqHTbT4ff+xoPhxuOxXHVsfVH8g3cPgHGlyiQSw/pg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com (2603:10a6:10:2e1::11)
 by GVXPR04MB10561.eurprd04.prod.outlook.com (2603:10a6:150:227::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.17; Wed, 11 Sep
 2024 06:16:38 +0000
Received: from DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7]) by DU2PR04MB8822.eurprd04.prod.outlook.com
 ([fe80::4e24:c2c7:bd58:c5c7%4]) with mapi id 15.20.7918.024; Wed, 11 Sep 2024
 06:16:37 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	gregkh@linuxfoundation.org,
	Frank.Li@nxp.com,
	jun.li@nxp.com,
	l.stach@pengutronix.de,
	aford173@gmail.com,
	hongxing.zhu@nxp.com,
	alexander.stein@ew.tq-group.com
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v5 2/5] dt-bindings: usb: dwc3-imx8mp: add compatible string for imx95
Date: Wed, 11 Sep 2024 14:17:17 +0800
Message-Id: <20240911061720.495606-2-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240911061720.495606-1-xu.yang_2@nxp.com>
References: <20240911061720.495606-1-xu.yang_2@nxp.com>
X-ClientProxiedBy: SI2PR02CA0033.apcprd02.prod.outlook.com
 (2603:1096:4:195::20) To DU2PR04MB8822.eurprd04.prod.outlook.com
 (2603:10a6:10:2e1::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8822:EE_|GVXPR04MB10561:EE_
X-MS-Office365-Filtering-Correlation-Id: e0897205-6ddd-4494-c530-08dcd2294b0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014|52116014|38350700014|921020;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?P+2MrJNal7B9Qw8bIZPALvn3Em2OXHMQ4Yfx3axi6IGf/WWsz92FaZOWYwoW?=
 =?us-ascii?Q?q91TO9A+K2TsQxg8fCGcSllfWPS34TyHndyjDAhRZ9GYFN06j06i3iC15TXF?=
 =?us-ascii?Q?0h+KeTO6L+eP8BPmkrMk2slJrvUzIE3yeee0YTMEnxuD0LaGg9cg+ZF14uUv?=
 =?us-ascii?Q?EzIkdRMHkdmT7jREqd3M6lwkx4ik861YFM/cedaX4XOsmICDZtQ9H+kGO8Wi?=
 =?us-ascii?Q?9ZkxvAGgm8rckFfS4IPJa4a8m0cwMrLDGwSENv905RCgW17z7/IyWVKhKlHh?=
 =?us-ascii?Q?54XKMs8lYPoFWZAQliEVaDFLbUi3eUcAlLFUci+CBgFMdPG7H3T4wy6ZpBp4?=
 =?us-ascii?Q?DpIoNUdKW2Vr4fw43Mi3Xu2Xn6jTZ9pd88N1ckyK+uFhJZWL2aGeEk/1trAM?=
 =?us-ascii?Q?YZ6dtT2Wzs4nQDMmATtFYBzAKYBESv0z6j8ZTUub4qMZDcF4XiNB6xvLRHYm?=
 =?us-ascii?Q?bAuctlO4n7E8Ldc/ZSICJvPj04xxIbtAL3w+p4f1XullOZVBTN3j39BEcER1?=
 =?us-ascii?Q?f4Id6p3SANk3wdEVOrcDVO94m8yt9zYxvGBWSrpqbNP8P7AK7218QtACUwMS?=
 =?us-ascii?Q?94VTOilMnLIqasLXh5bKy+hzBgseHV7agvGn6jupHMll5oxprkxq7kxLqpTN?=
 =?us-ascii?Q?J3KSD8CIYuVmC4B6NaiwO8h/903arw1WnIal9uGi7E56cU+naHHq54lEEmJr?=
 =?us-ascii?Q?iZUXNI7l/7T6fuCrSJ2F5lcWz7PyIEQMZ0y6zpY8yJtLAYpRhDv+fRIp1Op+?=
 =?us-ascii?Q?2bCqp86gsSbVsFn29MWSoKR55p3Lld2899r7DWbldwxHaZ3sHniwi7i7J9Xi?=
 =?us-ascii?Q?vF82Mi5+rVbUh45UACZOdkgeUIdyFD+aY1jg8fvkFr7U2kBOvPNndpCVJmjS?=
 =?us-ascii?Q?/CsHlWOKN440VIwPwLKhVsGennMGTAdaskrSTQvHxbdSA5HH08u1/C77EGur?=
 =?us-ascii?Q?U+P4bAsUdh3BPWA6TnweCF5G88G3TwKwhmulyxA2LuXJoCcyKLnpeRsU36bR?=
 =?us-ascii?Q?MQhng/PXe+zPpoeLlQ6Ac9AAKEn9Yw909/EawJFBs8lHgRyEaOmWCFBj3Xwq?=
 =?us-ascii?Q?EETqOpJWY5lvMpFKHg4ntBCoofdTcUDbcxMtBar+hv5KdpmV+L/odXpDuq2x?=
 =?us-ascii?Q?ltvqccueMT4/KbCEdT1D5EsbmvRaJ7AiyRA9QBQr1G15RWkgZjwUdVOsZydW?=
 =?us-ascii?Q?Nlb1+SQgNSHmRkRAN6iPNkWt8piP36B/abGiWzmP27all/PyxQ0s2S6/Jxkn?=
 =?us-ascii?Q?EtY+xs86RQIoaoQqo86dl8+ZoUcwkUnTlTufd3UzFJjAHOWH8vV1F6z01Ijl?=
 =?us-ascii?Q?OETHQWuqVWuc4pxrDrSLKwvBXhlyVbUuzv9sIiRXjt3xNXrJEaUQ+YzLrm3S?=
 =?us-ascii?Q?gceAw7AcpHaHE3HTCygyGiP9K1iGLyqYOB/48T6scMkWVlssbJPzzfeTZ5kC?=
 =?us-ascii?Q?JRWV2QQDSow=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8822.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(52116014)(38350700014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PSut086YMPW7ADmPukEKmM/adqZGdQhsxxN1Yc2XN98Qm/a4m/6DBUM3cr39?=
 =?us-ascii?Q?/8M/xJkdr7Ex7sPM627DobfKQ5sJREdckhRnTyM8ttNmvcyDBd6s5f1G6ctC?=
 =?us-ascii?Q?GRSpk5lnlKXQSEBOCQcMhgcAR/Hnl5fVUAW6QjLnw6YU4WA0QpNwuo9cQ5RL?=
 =?us-ascii?Q?ZHerCJE7iCYQycDt8J1QwhJRu4SP7FR/KVl+t1KyMbaIvuFK5HM7nps5FSOV?=
 =?us-ascii?Q?kUNBhDqsFr1oUKSMjJbhQciKg0Ncmcb6ijUXqfmCzEbn7r8kjxfJ2Zrrhb/W?=
 =?us-ascii?Q?nhxe2DPfQEzTFivrd7NibZo/xkyGl2/KeYseDpwmv8bydLQzMpY5JFQXtNB8?=
 =?us-ascii?Q?WlOKTJjgcWYK0+ArSW7Fuz4maNThUQGAYCzrzBnHzn9atr8tahMoNJs7Pr+v?=
 =?us-ascii?Q?5+wpnFvAISRk5FPFG2X905GLaBL+JWe5EszZKirLT1QQOhlntf0MbPz1E5tL?=
 =?us-ascii?Q?FMKplr3+vXqJQ927WiUZQvrqHwMNlbGqmfCQgPcu2j+j0Lbcb3MdRP/KsBjw?=
 =?us-ascii?Q?gpaYySYcsEHH7gWimvvRabkE/KNbNT/2OP80T/JFxLjQppzt6YBvEmXeGVkT?=
 =?us-ascii?Q?xW8LuiPv92mbp/xfYDHtT6JdxCvm0/VD3X7SXKTt1B6tvsuCJj8TP/FXnIcJ?=
 =?us-ascii?Q?Skc8FHF3PiJxdLx9p1JbZT+X5YboAJ6iaDKT74d0OQHDB/DIYh4UAP5Pw66h?=
 =?us-ascii?Q?/vlNgedf2UNn+BtC1OsCio7sYCPutQ2I0Z0D6jxV6td6XShqLVOhSOB5KGOD?=
 =?us-ascii?Q?RKMFPLMrO+2clyOv5hSK9T9y7AU9oxoYitPBFrLsUuOLUZta6w+dePUKLvET?=
 =?us-ascii?Q?RVfdlMo4KGy6O9ZXbPwqeYOz6OzdSrHshvWmGztbwVi7gOf+iYa9XU3+UZQ9?=
 =?us-ascii?Q?QSCF9pF3UIWQ/+zkRyzFbn+3yzJdZMVSNrEq7HmOKL5sNFUvIqyCwmLmQb5o?=
 =?us-ascii?Q?pGp8VJixvFcBmrcI53K5AhJq29Il2ng8goZzfGIPR9gVKv29hMf22ksll0po?=
 =?us-ascii?Q?71x2C+VY0BLmZ/xK9fR1ah+WXwrCr1/VveGorHEJ9QKtPYU10Ch/YeodcJUj?=
 =?us-ascii?Q?zf0NTPHzFOvmfS4RdSbuqPuj+reurkoYSXDs/0tM2Zpxz2qt2LbHzQJ1zRWp?=
 =?us-ascii?Q?8OfdsOhL/5bTjlop8x3e6ewcFkxLicOvDpzkuuPmHbeNa7B2APGgJ9nwD4Io?=
 =?us-ascii?Q?IDkvvtahf5y7ibN5p7EI4jdEpYVOG+vd8xBTkZz2qXsmAp0r4sdnLvqPtVtC?=
 =?us-ascii?Q?aOU7Z62zRGySBIftIXlCsCICWSQfzXInfDm9pDnIQlkiQIl5qsbV51cwP7LL?=
 =?us-ascii?Q?qNXZo+I6bP6ArA1JAsONT6U9z0H/9Wl4LT9DU1PtjZlSsCIQ6r/JTwOCsd6/?=
 =?us-ascii?Q?LvjJ5M3cmrI7NHcSfInPzCOWzkOHLJBu6FYNTE3PxkGlpqR5uNI22eUAGscA?=
 =?us-ascii?Q?vTh1d4I7I/Oeonmc+Ishu12wt2xqfRpfbygBz9+kiEiSF6JCSv+c7vRxxRlD?=
 =?us-ascii?Q?34UrlZ/oqBWwfWQwkAHFDoNhSElCC1MuGfX8sRrR1C5G0kTCKfmfv2+yHz7d?=
 =?us-ascii?Q?2C7ft+qMGdh6O4uAxY0jqdhs5LTR5lANB2w1vGIQ?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0897205-6ddd-4494-c530-08dcd2294b0c
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8822.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2024 06:16:37.7361
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +4g3PjldHbBhcvPxFKhywuEPNi95vd7/DreHS/nACIUlJ57zG7S9ZrhosZzjMTDhMsdWSDJ/QiHWRDDmT38u2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10561
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_231641_895961_8D574ECB 
X-CRM114-Status: GOOD (  10.81  )
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

The i.MX95 is compatible with i.MX8MP's usb controller. This will add a
compatible string "fsl,imx95-dwc3" for i.MX95.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

---
Changes in v2:
 - add Ack-by tag
Changes in v3:
 - no changes
Changes in v4:
 - no changes
Changes in v5:
 - no changes
---
 Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml b/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
index 9ea1e4cd0709..baf130669c38 100644
--- a/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml
@@ -12,7 +12,11 @@ maintainers:
 
 properties:
   compatible:
-    const: fsl,imx8mp-dwc3
+    oneOf:
+      - items:
+          - const: fsl,imx95-dwc3
+          - const: fsl,imx8mp-dwc3
+      - const: fsl,imx8mp-dwc3
 
   reg:
     items:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
