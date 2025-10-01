Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33221CAC5BB
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 21:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=muM9piEzMXKx9kEpvBTGZvj2RUKZ0tDjV+E/eMrHdbM=; b=2y7fOf1rPTZWj/
	UY0nYPcmdQw1x/A+/xd5Tf6PHYzcAxY7jKO9wCaa0Ov8s4SSgf54e7nNa2Wg2vduw0D7OTcBSzUo9
	mBQabYMgihWK+kT2reN+h4N6AJKjYjy3uYPeVRvhsB9sbTbDBsv5XulYRkkWJISkEuDsohsRXXMAI
	7yhQckB7N1WC5dWYdUEx8VkYBD78weTYaucxXl5p6w6+j9Dv5IKFCyqus75+Bu94bnGWwbK+aC9Md
	6x8DdSyffuZFOvWxoLdpeBu9TeOpcpwOzrYWSnYsgkjKUWcPe8sPMPJcYTUu+YBNmbkxHWCxUM+KD
	ucAE0aipiJwMm9UMvaYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44Nl-000000093NV-3vwF;
	Wed, 01 Oct 2025 21:29:05 +0000
Received: from mail-japanwestazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c407::1] helo=OS0P286CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v44Nk-000000093L5-0nXn
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 21:29:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j7q+V8/163V8BdVCUsgMBTHmyviTDmRKgwS5IbXdZOwev0QUiL02MWHunjr2hLMU8DoIbC2MTifN3XpRLSwZrLomSejFStpgGGSs7uyUWdexILa38CStnXgBCRX4oK6dSCz3xup4Y4N6Jubht+JeHZzM3W+QoVZu4ir6/X2Mm5No/1//kAZhY/setI0RBrST4yIB2I2+cjRty9v0IIvNCj3fyngRjla2y0wFEVCsoGUakfpCMyOyws/ZMBMDRzhdBqjyQCA9tyF12FQdP/aY/ogPHV4e2zXzis8skZK+ptR0Xgkis68sP0ALMzTc2m05qy/Fd8OT7BfqZadF0bYsWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cO53aMnkgQD5feh6jXxCt1jLw2YGIAz7f52/c8etKSc=;
 b=iAJLJGogUX/garY+LPocdacMU0BsIRXnKlGzcLZ6mpaHiJEYjtL/hGvXJ2c8MATAcDZMWmnLybWdvJpPBiekrv5BxvSUG3v3SCP1OUZ7hM1LQl1M99pucSXX120c8RstXZwJx+jQkeuaxPrhSKOrm2a2cFOzenNczYH6J8HOouGrULBLWZ9uWfFKyVJ42DA5+G2FayNSWt0vligxDGSSa204HIz+1ibKclCmyzieh3522KrWl0lDXxnJS/rJureDz2zYpBqO8x5pepbjBe2KRmAjzA0mzB7lgXljhqtrZwgeScxVBI0w/2uMj5AcMzasRgBCVzwkuULjBkoWg0kGuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cO53aMnkgQD5feh6jXxCt1jLw2YGIAz7f52/c8etKSc=;
 b=AJcBMiKvLxr+iQd1MAsloGUcukQ+58v0+iX9nCWaf4i+rblmG9DrwwpqfxEHWVN5a8uQU0vQt3yxWwiTvUJSdsqVXMXs4V9VDgKcBcF5mPrIVZFabzqHYDmaY9eoJL9T+4AKbk4+eLv7ue+OmAJ62mdGCVhPVJFCo9XLLSBfJgg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by TYWPR01MB8332.jpnprd01.prod.outlook.com (2603:1096:400:161::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Wed, 1 Oct
 2025 21:29:02 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 21:29:02 +0000
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: tomm.merciai@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 13/18] arm64: dts: renesas: r9a09g056: Add USB2.0 PHY VBUS internal regulator node
Date: Wed,  1 Oct 2025 23:26:57 +0200
Message-ID: <20251001212709.579080-14-tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
X-ClientProxiedBy: FR0P281CA0134.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::18) To TYCPR01MB11947.jpnprd01.prod.outlook.com
 (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|TYWPR01MB8332:EE_
X-MS-Office365-Filtering-Correlation-Id: e6b83625-3b7d-4606-106a-08de01318a93
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?083IqIecFlJR8AmnKSbhtC8U6m23Wt/qvu/mq8NsNhzfOkDrgivwRgRx+uJF?=
 =?us-ascii?Q?p/HnVrRLUAp43GtHaOe5Dl6XkqRt4vPTSph3P1s/qOqJHoNBCsHvuYzQxy69?=
 =?us-ascii?Q?jKk/oGRHmDWUSxzOOdCTVWWcx/ioZDsQwwOUtMzCiGUBvZpdZSFPh5NGILGw?=
 =?us-ascii?Q?+uyPUZbagMyv0zdM5AgTBdrP/pGQ8Kc/CD/GIiGGiIbeqsBuivv5x5GW0IHS?=
 =?us-ascii?Q?gZcBR7uJm7yLXyOpa5m56IyewMgDypwIw0EW11ImJO8RdKfwTsJGOhYsdVI5?=
 =?us-ascii?Q?CL3suX+8cltv81XMWyFKFzyNf2KzNazE7LKBAufC4Adk7vtcAchICrWV+JXw?=
 =?us-ascii?Q?UecMKxuu5Ug6Zet4ano7/voYDEJl3V1vssMpSa5Fj/GeiUuXYS5mNSCdEJhE?=
 =?us-ascii?Q?JqiuFb1ce9BdMxIDg9Eg3J5bqVilkAhWG2By+rCner1wodvGi46+5NnUuLgO?=
 =?us-ascii?Q?5SjFuMt5oifw4xbVPjtEOwr9bl8sYtcivA8tngKCSYbWDAgekv9lGweyo5So?=
 =?us-ascii?Q?9ymzKoMLmPH5dnccITg0WwpLl49tafv9qeiT6+8XJZJzuR9du6anZdLtHCnn?=
 =?us-ascii?Q?6lT+ktqMV2kK5TkbUKb6TEzUZtm24u8FPem6/N4Ao8cIcVP7U/DoioKphMSD?=
 =?us-ascii?Q?nRFHgc9VplGdQPChSVMMUjTLjHA2I9DcmbVWzl7YfKemPzns2ns5GEExkJHK?=
 =?us-ascii?Q?o1QuBBUJHCtl4GdMD5dF6Qe7Wk5GmrPTLYO1tUkTjKuhbX98AbNdvgF25ufe?=
 =?us-ascii?Q?Er9ePy1kSmidBCjFUD1yZug+5gEtz1fLo/71onn+kCj+D29pW7ByVWPsNYJI?=
 =?us-ascii?Q?p/9xzx//0s+wFPbjaf47LuhGkwlT25yPws8Q5XgRb0clCOp+zoQLF21RaDNO?=
 =?us-ascii?Q?3Ghg/v1Kl54nrZR5Jkss0W2OqudI0qy6hV+m900JYuZA99bhFVD3MTdDOe5E?=
 =?us-ascii?Q?EWsbMc9f4/YCn0J3QoR14Swpf5rWpknnpFuIXdCbyYrF6htoMAh9MGhI/UcY?=
 =?us-ascii?Q?x4wiaV/BOzDGj1+U3HClReegkmYNdDjkQyQXJt8BfksTv6pKaSR8MKHM6w+u?=
 =?us-ascii?Q?uQ2c8g4AdGaABEnuN0Og1NSmriOa8NnMf8bLlFE8xyRH9GFVr5JjR/10BgSW?=
 =?us-ascii?Q?9hYjoP/5JDXVEDodt2/3D2ulChrXqP9iT0i5G1Ns38cWrOYJmVrBolCFTckz?=
 =?us-ascii?Q?vt9GLUkRyKtdTwg7ZAixrTbAJaPz+Z49FSMsiWy7tpfez/zl9sKKv6mML3Hl?=
 =?us-ascii?Q?/hWUSCNbEraqnHAdVQlxINPvIDsvHft7eMkWx4yHhzemV6owPwkpaZJ2cXDc?=
 =?us-ascii?Q?wF7oTpllednY49DzMRMvERPRB3zL7VZ/6fsSpWa3bUqFqyPvRE+ONNqC1Z57?=
 =?us-ascii?Q?jfr3JoGwWt67Ehk5Rkq3AUynQA4j2iFOHVv43DoCyo/EasPvSzkKe4S6jM/L?=
 =?us-ascii?Q?z/Zkqd93OItxIAf8oBYJxb0SJ9bLQ/IlYJxPeopI/JunsjLNVVeaeh0nlvi2?=
 =?us-ascii?Q?GvK3QeT+jwCGbKceaAT4iSfIrvmVPronaw/D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uPKKPW6T2UA3nhwk+782ssve69kUjCmNM4r6w1Rw1pZcb+/JrOoMEZ99612u?=
 =?us-ascii?Q?IeA1ljpStR4cfHx2SnyfIudrrOR76Q0uWm6NUHqCFTxx/g4SC+aC17rf6ytd?=
 =?us-ascii?Q?J0tUw6yjUrFXC6fylGjdITbY6T3zIHJBgPTXXGinGopcKdcMVOJLeLY4lUwI?=
 =?us-ascii?Q?lnm29T+vxYnI9XJIruWYY36ScMJvKtzxXbiNLWJGr9WV2C3YbcBfd1mnml7X?=
 =?us-ascii?Q?pC06tLqx227p4vzJfn/OwC/wXUXSySITmj2WctGqJSEuOj0tbRR2wBP8tFyP?=
 =?us-ascii?Q?3d43Mw45GzsskK9fm+BEPuOHYrstHxa6HxJHRA7qASNfiVLaPe1eRYzHaik4?=
 =?us-ascii?Q?L67Y7ihME3UytYUNbLqry2pE7nnTesyWXXU1rhOKUNGWDycp0j7p/YtDMWVi?=
 =?us-ascii?Q?YbPnb07FQz1CRPV07jjt5CodDVh2uYdapSbDPy0ovAoeqC0dfAvkFFp7h/Uq?=
 =?us-ascii?Q?RQe7KuHzOFsBLprXZSrRbx+3tNjx6hBJWqB7+Lt8ULpzqOPLQ0Yg2uIkbxNa?=
 =?us-ascii?Q?4xQhjUe8F+ilDhzI46NdRu826BGCHp2A5J+j55kQLTqY8OyZjHO21A+ZhAly?=
 =?us-ascii?Q?AwNkx+9g8ERNi49n4TI8NeoI6bNVMQiGTqUJ6rO7nem4mhkT/SeGVKQ6kKfB?=
 =?us-ascii?Q?bSEWEsOYen8wc0/HtKvcZ5eQlKHA0l346EO60FFq/NqkSDHvY3i1tyzp0uMW?=
 =?us-ascii?Q?pPoM64XU/J0WBmqCVRWcUADUIrGfAmHppHMYwn1Rt0r3SuA5G/YR/6ciR1O+?=
 =?us-ascii?Q?IAJvGucVjK5p7mVDAdcdcqZTegxBBQLxyfedmntD9F2sTekJ1MxyU1t67T9/?=
 =?us-ascii?Q?MIn/DejfNa6IxXXnagfJht52KdrBmuFBZcf4hvDbGwKZBNpAUDssTbg19UGy?=
 =?us-ascii?Q?etff26hAv6brQ9tYjPUL6wlTtJGVNQDlyiEp18a+YQJ6FL5kQaQrLFDyfzaq?=
 =?us-ascii?Q?7TbdiSOJ0a4xekXyZxNVBFJAnfto3ylX89R8I7RnWPHFPCEd1KsD5qcPnNdj?=
 =?us-ascii?Q?bg/Y6CbWeh+rQsWuQGETX6FZE/sE+YUDObFt48PmCj1wG7ATqHV5w5FfrB7p?=
 =?us-ascii?Q?dBQMYjbtctaQSDeNgCf2mo++c7mSXMB333AgLMHs+I+az2cOjvkHxyWpiI81?=
 =?us-ascii?Q?2PravzCK8CtB64Y2foLxV7LPIbm0sWZIdP+5FUJS0oNiZLu8ASiTjUQMJx21?=
 =?us-ascii?Q?8l7CcqsVAD4g1uTunx2WQ9Ks0prseWZjOSooYk/VI8nEBWQlOdQ0eYu4XaOs?=
 =?us-ascii?Q?IkhzoUBWocvvYeq9pia+Dwx4B1ykWYtgwNf0XrNiRGimVBpdPxWiyaigM1mw?=
 =?us-ascii?Q?+WN20COXstWD5S3fNIX0BVSFsQeRtIVbUNFdtIg3vYXm6M92w+SZfrUkB+4f?=
 =?us-ascii?Q?uP1WX38vb6ux8TgFQg42v2V2rWhL+NEcKKM+BjR5W2ucM3t3AHb2SDsVrjvZ?=
 =?us-ascii?Q?QLMqtZsRlzgYu0eGlZgjsd4RotjA6FHE6J1OZ7vSk6ieaTWj/rmHlW8Hiw8d?=
 =?us-ascii?Q?XzcoS6eRhLydgF6AGlLcs4WUPSJ1N0SefPzxG6swQZYAjjNCxUw/TQTDvt3a?=
 =?us-ascii?Q?5hqg7wdMtxncBTUUkkdQYcOmJqG+GtScV4oVaYjuGXS+AUDwNUj2ER1hKIYZ?=
 =?us-ascii?Q?zWIOVPy6W4V+gl4a95IafRs=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6b83625-3b7d-4606-106a-08de01318a93
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 21:29:02.7463
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DsteVuDJ2T4ELBCKElhS2G+WHH089Cxn030cHNaSSrRKQgnCIHbfyIMNEBw6UlyhbTR6Q2r3FHh0Ust2p2rib0uNKwRTjFcY8Fftcs3gZGaFHf0w5hSAVwweokug1i3/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB8332
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_142904_229702_F24ACD03 
X-CRM114-Status: UNSURE (   8.83  )
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

USB2.0 PHY of the RZ/V2N SoC can drive VBUS line via the VBOUT bit of
the VBCTRL register.

Add VBUS regulator nodes (usb2_phy0_vbus_otg) under the usb2_phy0
node to describe this hw functionality.

This enables proper management of VBUS for USB2.0 OTG devices and ensures
compliance with hardware requirements.

Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
index 887110878906..1cd489e3df52 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
@@ -659,6 +659,12 @@ usb2_phy0: usb-phy@15800200 {
 			#phy-cells = <1>;
 			power-domains = <&cpg>;
 			status = "disabled";
+
+			usb2_phy0_vbus_otg: vbus-regulator {
+				regulator-name = "USB2PHY0-VBUS-OTG";
+				regulator-boot-on;
+				status = "disabled";
+			};
 		};
 
 		hsusb: usb@15820000 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
