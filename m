Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D34B5CCF9E3
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 12:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UwSX1kTngrz4bM8V3Z3snxaILrmGnMjjkPKHYcfBSmw=; b=isdr2JOpYr08A/
	bJa/G+o2YszI3CGwfdkS3F1b8WQpnAP5yHxzRhFAkUBIj6fsRjPJZifHJ07Ltd+ZS2QC6qmPqph+U
	xFWL1tSoCkzMYNZsvEphsIitMrZqUZBHqVtXp0Z6ZD2quBd96ECCtPBRu3NilrW3WKy3ewa92j//I
	/p7shREmMLWZwLummsEl2qRmoILYsRq1tXFzrvsvIn0rI88hhETH3Ti/gGMe/lb0owZf28jeYJJ3M
	A8MXgkFqAFP9Iatk33dSGLzvZAb1/IHLbji7+0lCjWxq/404TTjFJa4bpJqk5W2g6aZCipmkO95+2
	n80jDBQFxH1Kd+nxpTSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQjS-00000005NjO-2X6Q;
	Mon, 10 Nov 2025 12:10:50 +0000
Received: from mail-japanwestazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c407::1] helo=OS0P286CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIQjP-00000005NhH-0O21
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 12:10:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iUwD4aPQpFhsJQnw0a0KeGlvvFWek2GVLqusc9a2qvqLEUuK4P6q8rwXZIZ4vKwMsx72tyTBHtVsX8Bb6mPcHB+GX0nW679exI3bw/rdrSvv9ve2LfKbiDiaKmIKQ7QQ/Okp5LUyc+88AEWQdWoUij+M3Fh3wrtpFrztNTJ46fdWieSRvArgo3qLBCC15305iS1T6ASYmfm/PxCLSniD+smb6kQ3Us2XV0mr/lMs42yuRH9EYefQdHQPiEU389Gv4Hy5r28aJL9xuOUYqIAtZmSPrIWTfjyHOZ019RhXV8C6EOpgi2N29pxeGptj53vRqgJxqrbcJcBRqsr5rdkvng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dHmFvi5gT8Zr2XInRkHkTQpT+/9NVBy6LTZqkPfVjpA=;
 b=p8jhr3XFk0Kr5hsv1rMYk50kxU6oTra0Rhqu/2CSlRw1+zVcWtH6wlXJMJ60v/Pnnw7qoK+JS6ILHLdugCM+W5P8gadgwUH3sKeQPHzkDXbSy5+N78ytTs+bAd8y7TamP3bI+BqjXxfLh/87fvw0dX36CkyD+vREHnfaHGxK5fucl0AVDr1UV7Vklq0cq6gKtYANuinEZiWg1qPFaTBXn4B/YJ7kas2GOm7b3W8KXXRTueMehWcGJoQ3hBo6QSiKCDZJ84s2dzmCNIAkWVLl+52z2XewGLyFSazeouZ0r56jcrGXMyA8oRTK1CBG2FUmsgTbGqPD8OWdrWQlgZAAYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dHmFvi5gT8Zr2XInRkHkTQpT+/9NVBy6LTZqkPfVjpA=;
 b=IKULGJnZlMAveryxPhPVJtgnjT9B7ykvJrhw3LGDMzmEtFcv57vGA5G5zsVo6hkIVifoLFyvWQaLIeweOdFWyl7U+n8ozFvV4hqSe5l1l/8EPca4ZmugHrnwvDWlTteZNw3wxhCJ4H2L5RyGPUDK6dJeDNAlq2oXLQAmDYo+SLM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by TYCPR01MB11558.jpnprd01.prod.outlook.com (2603:1096:400:37e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.14; Mon, 10 Nov
 2025 12:10:45 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9320.013; Mon, 10 Nov 2025
 12:10:45 +0000
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
Subject: [PATCH v3 15/21] arm64: dts: renesas: r9a09g056: Add USB2.0 VBUS_SEL mux-controller support
Date: Mon, 10 Nov 2025 13:08:15 +0100
Message-ID: <08c02ca8b1d01e1b945b7416fe52b6ea173dcce5.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
References: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: MR2P264CA0176.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501::15)
 To TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|TYCPR01MB11558:EE_
X-MS-Office365-Filtering-Correlation-Id: cb322ecf-3d21-4dda-ba30-08de20522d3b
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?FjYSyiolihe/8mQkTzBVd5KdlCFyR1bsAuxz9mRxsNRK5ljZJfQ4zlTMTbZ3?=
 =?us-ascii?Q?uFSoJbOiQ0qY+u5OMrb8Y8EOJp+VkfE7+iuoE9R0geVWaejc/5yvGq3HyJRf?=
 =?us-ascii?Q?ighs+cr5XopS/w4zlelz3LzmFDbBLpfmf8yMr+3aeceiM+P2dcl71laLYE9+?=
 =?us-ascii?Q?/Nu+kgv5WC/9oATcF/3YjGFRK+kh22KauVVgDsfYmvLd3owNAZhcyxJxw87D?=
 =?us-ascii?Q?pyHzYC5e9qSrYFVO/+zGgZko8uUvlrcqDnfC3DaI1CsHIpOay03dSPOeHuU5?=
 =?us-ascii?Q?gdJ/fecpNU87kpEno9JT8X2rPlweQYT2IkDRIyI0od416jqPVAyMuk1++qjU?=
 =?us-ascii?Q?0DizgWtap1b8qrIU32+T4JIKpGJBmbWEWKE1tTbBgQidPtQZzuiTfdIlP+fY?=
 =?us-ascii?Q?IRbHEANz1BYR4aG6Y7ryG7RlaM/KX2yPJPHv61HFZhnFQy6GebrDC/nz1XmT?=
 =?us-ascii?Q?8EeWisCciIFPY7ybSYRj1LtxPl7D2plC0XHHabz1uDiGNDtQY2HnYKRTJHOW?=
 =?us-ascii?Q?C7+XkTbUZRNrgMrYUZ9aO4x4/q7RTuVnhL6z8RjKl4KlniqdCi4dhCz+/ARX?=
 =?us-ascii?Q?7dKIAmhu1MIsRRfwiVbnS5H91omc+Rz2FIfQl+7Y0y0+p/4u5Wa7MhgFV3U9?=
 =?us-ascii?Q?h92srG/q/vuphJq+LCmJZjc/fHagnxEEaYIU2L8s/iuwGfmYA8Znnv2d/Lrv?=
 =?us-ascii?Q?jOCUsyzUArLePJntYgFGQED+Fcnmmd2U00a02urpuyWMbAkVo5EmXl2t7gZO?=
 =?us-ascii?Q?oyxgH4ptcj2jDxdVVGy5vg9T5yV0m8DlbdOfFw1dThAFiUMbGGqwceA+Jywq?=
 =?us-ascii?Q?oEWX1TwGLwBGc0W07c10eOJ0C3idc/NSl1AemGjXn65AJsmH/fQIBbXUTStt?=
 =?us-ascii?Q?jlcQPCfuceV3YKkURNWF8XD89TkK6kKaZwDGMqigikRM9QrMmbEPFs8dwLDe?=
 =?us-ascii?Q?ExtDJMzvOE4wgjUe0chJ62wTTQu55ThjoUZOTshZN9LiwkxSo/CNnAGiXzQq?=
 =?us-ascii?Q?EfHwYUSNv3GEFj74Y1Xsv8qKWHa7YztN8nanjrbrEfCfv2827hStrezGTSRe?=
 =?us-ascii?Q?IUFdqdnkCB2vt8to29Y550FDTYPL+xm6KSKkXknUXSIS0GEImtqxjQ26PiNZ?=
 =?us-ascii?Q?kcvtPlETWiwWZO2ZlUtT+NmHtC0HfI41VkMQoMpTdZTueGisdMLcCEXTaD2+?=
 =?us-ascii?Q?cP3pMx/+uUn12vI2jSoGtfywyXk55HhKTo84J+EX0/7WfHCyO7wWJt8OBUgL?=
 =?us-ascii?Q?eVnPwFuZrYUaCmaznKZvHrrnLaETjvKu0ssA9yTIJBANx3VNPUXnB6XomWQE?=
 =?us-ascii?Q?IXR/WSQ0E01Ja1xQa8QsBmvN9TkgVmoAcX/dnbR/mSG2xwnA22UxdtxJWECp?=
 =?us-ascii?Q?ar6R5OaIlSnUTnYCGBY9bgo8lYyvh4pVAXeZyzFe1jmXErjtEfjbShMkTnZ3?=
 =?us-ascii?Q?HUsiDpboUs2yZoFrKWU/w/PnLIVrQNoe6955t81CDNTUsDoGeE4Dq1IwdXCz?=
 =?us-ascii?Q?xTeZ70XejCedFj0jwcPQYlhil0u9Kio2sevr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RRoF6pfVhdy1ILmIuVHFZMAcq4zGw5IRJbWY0I9l2HNGlkpdTuTmT8pAvqB8?=
 =?us-ascii?Q?fIKtZgZKeQMbfpdj4hh7udhLM1MenyLKq0nDDv9w3XjGQOmD86/2EJJWo67l?=
 =?us-ascii?Q?tDuTczAsngFqB+OamUx5GMu6bwyhdJnaNmoDjW0pUVw0BHiEvTzhzfAHCQ+J?=
 =?us-ascii?Q?51qOHy+f73saBPT8H8T1KNxGbj9QBwH8eboGWmSEVD0IOSqSOBL2HBnKMe4V?=
 =?us-ascii?Q?Q9ij6mfL/aTcSAUZg4pU/f3J0LRBoFxf/q7m903bj3cbePi1MNiFKOVzdy3Z?=
 =?us-ascii?Q?3AeOMZnv+QX0gqqMlktdIT/8ryt2G21VWBGpQZtE2u+0wNQak4hlOPcw/18a?=
 =?us-ascii?Q?5I10HpX5fOiSpwkgGtzAwPnIwyBsFOPzDQQvIlUp+3oEB+LwJq4BuQ17a+h8?=
 =?us-ascii?Q?8M3rABsdDei5/QW9ysaI4mCfVtZ4Wlc812CDOKOOi1j+Pzqecd5tnzjrbGM+?=
 =?us-ascii?Q?lagAzLI/LVmZtBUZDKtKysNky+lEyQb+GKQ5f4skfoNn7qC9DRZPo8HL96gM?=
 =?us-ascii?Q?cavPYhZ9CBD8RDHgLP9Av5tapWipSWhYZyAzHdojjGgOGHPgZuH3ixxpVs7a?=
 =?us-ascii?Q?JeqQZ875qkqnOtavtrqNpZygHqk1dzCEA6tjEXN9Mt4OTKoxBI/dP4+tETGi?=
 =?us-ascii?Q?SyJsNbn/cghrhUeRmR0q4Sp40r7AvXSSLN47IWLboEArKOyIootYB/S9+0fB?=
 =?us-ascii?Q?lcpnK9P4gr0Qk9dAjFpCIrP8NqJVMdBYnDwVU7dEKilGVeaByOK11cFZSKsV?=
 =?us-ascii?Q?gFfVrrG3IIe6n+dl9qwAXRQf0LGz0LrHQJ9jxRvLu8a1mq+H7K9nKnIGlmMd?=
 =?us-ascii?Q?LiPyxIAhsMmIDjSkLw/ZN8OfXytfJSgIkYEQ34EDeSTBnE1lznYGH4Oj9NpV?=
 =?us-ascii?Q?5e4F7fGn6AlwF1kOjbIml+tMVOc88rtST0txFPmSFjamid4sEaGO1B72ptGs?=
 =?us-ascii?Q?3yUhkhAr4Us7Y4lHGy3p3lFaevTbBefufkJp9lke5Wiabmt/rJpUJB9zuEO4?=
 =?us-ascii?Q?aIldhQ4cx2i4ZFPWwcShJhM5Cs9HaFHUz4F4ePtBYzKwUyz2CMJi/1BhtyGl?=
 =?us-ascii?Q?ixWVVxFTh+FU9+SuSjZcYg1bVkQuWhiyjHIT6c3OnzJCGBHvFINm5COVk017?=
 =?us-ascii?Q?RJAGPPiU8xopDPUmkfd2AKOJY2Z2/nG4+WfdaBFnNc9cZjBi1WpUiDFYnmsh?=
 =?us-ascii?Q?Bj2Gl+CDXA/Oz24THupH4epQXBlODZ6Yj41ZjfqqzWjFhELvN+me1NrPdlwa?=
 =?us-ascii?Q?pwYMlpGdLY74uyVPJ31ZwjV59EVgWzjKEIHc7S8hAMxv60o8koOPKs07Yf+t?=
 =?us-ascii?Q?Uk7wd2oxCbQBmo/rDqaSGS7j8TcFNUXQO7eNOLbx9fum3Llw+IoNib4MBUpv?=
 =?us-ascii?Q?XrAswvJfCX89b3ZtUx7x3Sy77y2JtDmgmoeBJihiqLlrYsYcz6BekaAhnWG1?=
 =?us-ascii?Q?k4MObrAokBFU4RKNtGUzJDtzID/VDXgXhIZbyS6VdR9z4+DHF8PijH+JX1p1?=
 =?us-ascii?Q?xAgCXDdlXAN+1KYrqBT9lh0hrzoXqxieRHyVy/NWpCmOfPhVDejABy3UxZxI?=
 =?us-ascii?Q?Epp1ugFTX6VV2HVXs+HxATt38xKvvyBBpZV7xkJx2vOvXbvrzu5Ii5jdqMhz?=
 =?us-ascii?Q?Eq2yBJUL5q7XFT7gYd4wpsw=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb322ecf-3d21-4dda-ba30-08de20522d3b
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 12:10:45.5336
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A1sea0WrfFL2lBzOS35B6mO2UeOEPcOWxkdL4ayXFq1dNl5c+VYLhQrmwyt49Ywxh62sreXxPuAf0osqK9d3S72fEMpJ3JQz4rFhi499d4xveT7p09HbtLh7vi0wd8Ol
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB11558
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_041047_129094_A568A086 
X-CRM114-Status: UNSURE (   9.76  )
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

Enable control of USB2.0 VBUSEN via the VBUS_SEL bit in the VBENCTL
register. According to the RZ/V2N SoC hardware manual, OTG channel
require VBUS_SEL set.

Add the internal mux-controller node to the usb20phyrst reset node.

Set the required mux-states in usb2_phy0 (OTG: state 1) node.

This enables proper VBUSEN management for OTG channel.

Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
v2->v3:
 - Manipulate the mux controller as an internal node, and update
   commit body accordingly.

v1->v2:
 - New patch

 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
index 8781c2fa7313..205fa37d04ef 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
@@ -663,6 +663,7 @@ usb2_phy0: usb-phy@15800200 {
 			resets = <&usb20phyrst>;
 			#phy-cells = <1>;
 			power-domains = <&cpg>;
+			mux-states = <&usb20phyrst_mux 1>;
 			status = "disabled";
 		};
 
@@ -692,6 +693,10 @@ usb20phyrst: usb20phy-reset@15830000 {
 			power-domains = <&cpg>;
 			#reset-cells = <0>;
 			status = "disabled";
+
+			usb20phyrst_mux: mux-controller {
+				#mux-state-cells = <1>;
+			};
 		};
 
 		sdhi0: mmc@15c00000  {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
