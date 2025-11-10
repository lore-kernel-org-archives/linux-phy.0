Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 436F3CCF9E3
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 12:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zovKn+Bicd6/5p7HjMiHwbFV3rN103QGE89FTYF/CRw=; b=M4PRW1YigOEBUU
	i2oGHFgdTjTRtbPLLpL+lwnZYKyRfhUlIq0j5f+VsbzVwt7/IXNNhR/w5Klwx0t9D//7GUPwaonPz
	iFmTk7QF5FKzyB4eHSrgPQSkkt2XgLRtq9uzKEWGkllKBZHw3uz7eJbZahShiySkCt09SrYtYWZeS
	yKBSGs6St8zNvR15DCh+BSrAeVB/DgSllk1cM+r8KRo/s7ZCMUhRs2wBZ1+kVl3CzgeB5s4RPYjGA
	j9PRiGtJ0sVN2+WZ+yontmbSxGyvFK5zYUuzZLpywGG4UAg3+UuyOQFHVVZUWYu4+JgyTqSWArvTQ
	2BrmIQc8jIIko/zOclZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQkD-00000005Nu6-057k;
	Mon, 10 Nov 2025 12:11:37 +0000
Received: from mail-japaneastazon11010032.outbound.protection.outlook.com ([52.101.229.32] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQkA-00000005NtF-04rS
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 12:11:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tXg/fegk3bLk6qC6KfEQlWO0N++9N4Bz2aflgd2rHJkxpC9zCYEgDsv+OQ8fQYMK5vKyi+deSD3Kumwk8cvklBW+vxTPXikANLO1sTb47pFKgr3ujUjYAAPLdmSQk9oRnvcok0Mi7aWS0gf/DsCL+FltV/RX33TlTZiY8UK5kgLThKB8APDuUwc9m1O350GWkb9em+UVAPz3M05YpC3uTgDLMluoVLxpAm3/nVY1ipilApLmHXDI06CJjRqAL386O/dGTstWUZhsWcVNLeScywDbFFMr/OgtMKNvR752PBwlj7opQ2oRU/njQO+qclMBs2F2SZrDXqx1YiG2eZqseg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UqsjC6PYrwfl26NSAeSKvmlf6xE9yA2XoX+WNeeZOp4=;
 b=ymoFV7HB/XNZTCkaUgRQwT49gB9HuATxcfcPk078Xlpy8ujqd5UHP/prGRQlnyRJ6gphp8m5C4xu5YkukjOx+Pww9ughUcKgLHEs4CcnNUC40e53HZOR4CjQQskp4GFjyEer0n0g5xMMKx4s3bP/vFxwyQOtUEKlZMgHQoh+IVqaF7EtoetkVXN4w8FpK/aX2BqoP+IFC/YOeVk9LUB3nWSzQjyOdsI026eQ51nW7PE7/Lr+y522RgMpF6jVqvvVJA4uCb2Xy7LXlC9WwOK4b81I1hu/sU919f75QIFKBFHtg4r5dsuFQiO/PuuoXvo0EQEVQ2SJUqGDzqF7Jngv2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UqsjC6PYrwfl26NSAeSKvmlf6xE9yA2XoX+WNeeZOp4=;
 b=EEm8ofrliG4wiWijN68BJTQ2Fy1bPNpIUUZyteMT41xOb9VrJrwNPrjLeoflQ9KIfqMFe2G5WnRu5CVEUL8L/Z+RLoZ/FVIPlwQ+z+hwitq6MTy2zBygauwvaDyL3zaUo8dcwqpeEigVDb/AWEmUIdjBuozu1U7+h1paQkTWEcg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by TYCPR01MB11558.jpnprd01.prod.outlook.com (2603:1096:400:37e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.14; Mon, 10 Nov
 2025 12:11:28 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9320.013; Mon, 10 Nov 2025
 12:11:27 +0000
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: tomm.merciai@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Peter Rosin <peda@axentia.se>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 21/21] arm64: dts: renesas: r9a09g047e57-smarc: Enable USB2.0 support
Date: Mon, 10 Nov 2025 13:08:21 +0100
Message-ID: <07e34121ccddb715ac6f9800b5ed242b5d21c7c7.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: MR2P264CA0176.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501::15)
 To TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|TYCPR01MB11558:EE_
X-MS-Office365-Filtering-Correlation-Id: 01cff897-203a-45f0-34c7-08de2052466a
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?x7jbxf34vMytEHDy4dFrG1RVXz+aBtxi9SXQm5LQL+DUIX2n/HyW3C24Z1L/?=
 =?us-ascii?Q?5m4W2Mh9vbDWCH2tjjFH5U5DiOPUj0kx7RvPFnIjFBKwZjN19t9mEck6xHKz?=
 =?us-ascii?Q?X4UZtFXI2hvBOGyllq5/R0HlZ/uKPz1/Ox/FOuB6xIImxxmCiQEOu1mkUwD1?=
 =?us-ascii?Q?+AfUym4SvAfp8HNWWK2/i87aQ0rd5sERR6HCKX3NZ/4bCPN+/wb24v25A9d+?=
 =?us-ascii?Q?6Yr72sXaSDAgn1pMb78OusisqUTZIqqcTIFehofrC4qV7ssSPOvu2SIj7sGY?=
 =?us-ascii?Q?LYrDNF6v4Cx4VFlm8PoYbFTfSg8cjK1J1cPUHgs6I7+BKsR/gOqN7ANk8FtK?=
 =?us-ascii?Q?uFdPQ/U/cuOpN6sw3cDQxlKhoZnGokrR0G7wNAR2isphWCh+pMiHf2NhB6C0?=
 =?us-ascii?Q?MoFkzGSXfSyI0/YG/T/4q+cq9NhWUkrY+BXWXDu/qPKQdCjjcClGqFGck1Ro?=
 =?us-ascii?Q?t4vywrDLK0qYslARMx89QrkRa/h4cyd4BiEkn+4IoGMy2QKzv7iQ2cSXTeeD?=
 =?us-ascii?Q?NXSUrEyK7bgAmMHR4Hzt/xYEBqVjAkKZpur47UK/Ew49HPuLItb+VGrPgqVK?=
 =?us-ascii?Q?9x0yjAoLepwa1WotNlHIaccHKH61UhaqDy2HMEdGJzO378FgxdDblsDCorLI?=
 =?us-ascii?Q?1VCH/BETDN6uJfzLx5Qc9uwpcu4628bFkRJAiKouhmRcqK6DXkSfd0Sz5m0R?=
 =?us-ascii?Q?vRMvRGshob/Z0GdUdwKLjacaMTUBrMYkBEhXiS8JUEi6bJgqoI7r4iw33//S?=
 =?us-ascii?Q?NDjdWVojiZCr6wLk6DEa+HTGoKuDOyYgp4g00gyKOMyGUKlJW4MG9NavqY1E?=
 =?us-ascii?Q?2jWabVzo40MX/KhIX7ieOtPbhiKx62WqPHM5PdTWQ6V2/e53P0zTjqN4/+Nn?=
 =?us-ascii?Q?cuFz+smgC8YCraBI1K1K+0wdDAxv3sp21YrIThFTrI2Zi/ywfRTTo9jt3xsN?=
 =?us-ascii?Q?j1ai3ZPYQMLbqjD1yH4wRB26BtrpcvH2qVxgQFsvZOniddJ09Q+hoOa+CJMk?=
 =?us-ascii?Q?7eIBk8Rhp++j4l+lkpi0jMjfzxIat0/nCNBtpGtnPGTXK4io0dM6Lx9c57e1?=
 =?us-ascii?Q?FaqoqOc9R6QieKGaHJuXi3wluuN2cf9eWlA9PiOLBKETrrjJmCJLBXRepZUG?=
 =?us-ascii?Q?A4jsYmN/WuNfgjoVRGHu8ngaukdq+F5uymwu0+Jt2QM+PQYS4xG1cdSiOVPW?=
 =?us-ascii?Q?pDu0iHHldFKXvX6LUOQ3z/SSmBxDFAEv8Vpe0m/yb6Hrmv+fcqo46I+/0coV?=
 =?us-ascii?Q?ZekfGyGVmlCusSndwPTpWhzDPuZ35AY9qa3oyC4ErRkMSS4Aea62vkSI4RBv?=
 =?us-ascii?Q?dh3qxNMcaYc+IOXhoQx5rrDs4lG0SarCBAfhOluz7P2WIOo4/fnIgTuBptfp?=
 =?us-ascii?Q?OE6HxkIbgEtirS3Pjo2O3cyMQTBti6BeKeOfD+nZeTAI0a5wVNoaEej+T3bl?=
 =?us-ascii?Q?tBhnLtuCYEW+kxQAhKwc8rNlLATcLJ36kGuTsXrDGg8leDzkAktYRGyzN2d8?=
 =?us-ascii?Q?e6wsvYGK904Fw00ILTwF4BJhX0nIBWJceSzi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dvXOpqYu0IZXNRSDch4Hy34gM5KNJf9X5wKPz5IvlQEcLSs6jpWIeqRNUTkw?=
 =?us-ascii?Q?q0bGWFv/v+H2U5JMjvdiJ2PClu6x9+DXTDAUZ45if3rEmWeRKlUqy5PHI2DK?=
 =?us-ascii?Q?PUJlFzJjLbCui+O5FnM20GYFgO5TsiSkLZNVZM5lb6FMCPOg8tYjVIpfjYiV?=
 =?us-ascii?Q?BJHJvG6pKAuHq3Iyip/IHp8d+DD/nPTSsOsIb5olelAFBkqMMBtE+D2B6cNH?=
 =?us-ascii?Q?d2YHMyJKrmszv3rKV346rBq5hwI5CPGewN/gjpLd3+vCgnGiIhBECNrgcrqi?=
 =?us-ascii?Q?yoPduy4o21toNHfl5PwtxDJoLQx2wG94eoCHxYTEkVEbkqKQiFGMtvcD2/7j?=
 =?us-ascii?Q?NjTXV266FFZsrA2sQRd2So7ABxW5ADLgiOFdYUFrOoOhbWhHVq9qc+ir+dPQ?=
 =?us-ascii?Q?HdqnkuFYg0NDTrusop1TJfWg2vhd50qJH/8U8iwpd/IPdSTwNYnNrzMgcxzF?=
 =?us-ascii?Q?ZiYTzocmaF3ToyhT5McwRW6BzlBCD+mK1Nj0kdshtDZsHEqI0HVsgmRG59ai?=
 =?us-ascii?Q?XDihwUn04TOEkbpt2Z7gnQSELxKYMEhUBy1KenSiLfWgaBTg3AYGF4q6qDY5?=
 =?us-ascii?Q?KBEKxans8iFxAYIQierSdN1qQufxTMs06dZcgTQ82xqplrUHx1tq2+39N2hG?=
 =?us-ascii?Q?Dy1tXwy7fetilg0kj7F2RWmML9ZaePEEuzUNSiIx126xnZDOV4n9NIiyw7WA?=
 =?us-ascii?Q?JtKQw69WJPUHUlz60BYGEYSyGHHM7Fp78Se9uFc07CCLaY5dF7YHZZej4KUA?=
 =?us-ascii?Q?M0tkf+Jc+5+EEPCees8fkXhfGjiAzc2xJgfkVofQ1ChASs3s2Igv3eQTrZWM?=
 =?us-ascii?Q?5ONz/huKnhAEbYLgXoClTNhNSEJMvEQASDqfSKNmYGWCpLbKlhPPPc0jSS83?=
 =?us-ascii?Q?p/elKjhSfPvCCyLmEEhKDjRX4+4OSqeHS/DiXJCfJve0TBSNwv0v+Ercag5n?=
 =?us-ascii?Q?bYmqE8f246KZbBylhvIZ3YdZJU0WVbHWUPNE8El78tigqotDWzfLSs4jMIRI?=
 =?us-ascii?Q?in3ZVLqr/JRk1llfAKLyHI3h00qJD2iUoN2sQx3M3lvsWjmWmJgdsC83620v?=
 =?us-ascii?Q?yB5S0Fd99ckXO9mmKDDWpsg0MlaqnKUPE/jHBFZL6gxYRW4jybVM5JZ/7mqP?=
 =?us-ascii?Q?oUXFA6a4mNtyIOgxW91M87QVvKNo4rs/tK4EfMlUtJsDfSXdXeqwlZzzF2Ed?=
 =?us-ascii?Q?uzeY8wr3UWHxJrbSQlpYbqCE9MzLHt6i3k61BRkMYQsngDlGjq360mu/7R+4?=
 =?us-ascii?Q?JkzXJf1nEFX2KlhNmTNb1N+yc2LII9g1fJY/MdbauXSJiq9mtIQwet0ukTyS?=
 =?us-ascii?Q?XSZs6ddG2ZK41sDEmobsPLHTNg1LFFQfoGF+7d7jBFz+U8ETIfsG2Wx0Eard?=
 =?us-ascii?Q?OMy3Q3GFz613hAU1hnjUGTQlrbAAFD93Mi0EYoUnlG4mOscR6rwWZLAisuii?=
 =?us-ascii?Q?nDXQ3QZJ8ei2hhIyh9wCv3lTxObjIyw+WZQ19nx3A37A6DWNvCyhNWe653yP?=
 =?us-ascii?Q?bSp8kVPJcJJIfM6pXN+ty9SZeYnGIJFFExOvCqslCHA2BvyHesJIjRLDkqH4?=
 =?us-ascii?Q?DNuIrDJU+eV25FKjeYi7DrqVEqeRzdDaLsu+ihJui0HhCbs4QW28UUZysaTE?=
 =?us-ascii?Q?jPVcc4V4FxDM+JvcoXiJs0M=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01cff897-203a-45f0-34c7-08de2052466a
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 12:11:27.6978
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yXDcM7nSSVpbzHyPEg/O3WcTTRpCsyMYCkAbpawcvrUhhOad+SdIT9FZMff1zUawDqaEoUbF1wL0Syw3NEwBVNQrTPShT+J8FTQ4cWxxWOBe+bfCt7CuFu/zAH4T3nI3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB11558
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_041134_064752_9E8EA75A 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
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

Enable USB2.0 support on the RZ/G3E EVK board, USB1B_1A_HOST and
USB5_4_HOST connectors support only host operation and USB0_OTG
supports host/peripheral operation.

Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
v2->v3:
 - No changes

v1->v2:
 - No changes

 .../boot/dts/renesas/r9a09g047e57-smarc.dts   | 49 +++++++++++++++++++
 .../boot/dts/renesas/renesas-smarc2.dtsi      | 23 +++++++++
 2 files changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
index 08e814c03fa8..ca19e8628c80 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g047e57-smarc.dts
@@ -164,6 +164,28 @@ sd1-data {
 				 <RZG3E_PORT_PINMUX(G, 5, 1)>; /* SD1DAT3 */
 		};
 	};
+
+	usb20_pins: usb20 {
+		ovc {
+			pinmux =  <RZG3E_PORT_PINMUX(0, 0, 12)>; /* OVC */
+			bias-pull-up;
+		};
+
+		vbus {
+			pinmux = <RZG3E_PORT_PINMUX(0, 1, 12)>; /* VBUS */
+		};
+	};
+
+	usb21_pins: usb21 {
+		ovc {
+			pinmux = <RZG3E_PORT_PINMUX(G, 6, 12)>; /* OVC */
+			bias-pull-up;
+		};
+
+		vbus {
+			pinmux = <RZG3E_PORT_PINMUX(K, 3, 12)>; /* VBUS */
+		};
+	};
 };
 
 &scif0 {
@@ -179,3 +201,30 @@ &sdhi1 {
 	vmmc-supply = <&reg_3p3v>;
 	vqmmc-supply = <&vqmmc_sd1_pvdd>;
 };
+
+&usb20phyrst {
+	status = "okay";
+};
+
+&usb21phyrst {
+	status = "okay";
+};
+
+&usb2_phy0 {
+	pinctrl-0 = <&usb20_pins>;
+	pinctrl-names = "default";
+
+	vbus-supply = <&usb2_phy0_vbus_otg>;
+	status = "okay";
+};
+
+&usb2_phy0_vbus_otg {
+	status = "okay";
+};
+
+&usb2_phy1 {
+	pinctrl-0 = <&usb21_pins>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
index 58561da3007a..2daf437abb82 100644
--- a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
+++ b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
@@ -90,11 +90,34 @@ &canfd {
 	status = "okay";
 };
 
+&ehci0 {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&hsusb {
+	dr_mode = "otg";
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 	clock-frequency = <400000>;
 };
 
+&ohci0 {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&ohci1 {
+	status = "okay";
+};
+
 &scif0 {
 	status = "okay";
 };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
