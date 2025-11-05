Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35E87CCFA0D
	for <linux-phy@archiver.kernel.org>; Wed,  5 Nov 2025 17:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g07JhLisAtfBmbwRQrB9QPRM2WrpSdCvDVFduZ1H4/o=; b=YMfDsnrPz6xTpR
	zaywj3+V8P5oY6GsRlb2KMbziTajmHo68C/iEMffhPqpWN8c6Csc4TzxiYzlGyoYGi8QYFlSF2fxg
	m6aNxdqD9HLAv2eA2Rk1m3yM2DFpIUif2Qv9HK48qkI0s6iS17ZJmtF33ZL+BXJR9EwWIc2vQQDuT
	5XU7TdVJCLFIM3GUB99uxkjXYFcUC0iWLlkcdpmT1N2sfGP8KxIaCyC/AOXVfP11VqFBxZzRdmRgz
	X6EnymW15nWQMaGZA3rLLbOT6zFR9Une2cZExA//pXOwTi5RV1TzQllJRf5d9MBJtdCPQFCjfupNy
	GRb/xedmY93xiObvKVEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGhFo-0000000EA2J-43M2;
	Wed, 05 Nov 2025 17:25:04 +0000
Received: from mail-japaneastazon11010035.outbound.protection.outlook.com ([52.101.229.35] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGhFk-0000000EA1K-3xOJ
	for linux-phy@lists.infradead.org;
	Wed, 05 Nov 2025 17:25:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XB1m7rLYBUCN7B4GpLJJM3ZLTKP0d7Aevh2gUjxcAsvukKwtxqPCkl4QIy50/JNklR+nlC0kCQijPY/3tIyO6CDmII77pvj/mh9dTVPAes6yUwKmsfwukN5wUfWWbV6rDJ57LlBJtEct3I5Ry5keMdouIVWcgidUb1AVkcooo7n/zbn7BAhAZOUqci4IAunPv826XkR5H0fHw41QlwehZ0NXUQFWlV+7aegnpxB+4tleKolie9Qzdmu0t0LUB87tFCYfVhOmGhWIYHM2He3J0hGa6lqt1UHCcAg2TcBx1L99nfr3cA7o2rmCrYtH4fPeXdBR+zybJgc2Z9ZCDAfAFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JJ6g4AyZAldEfdp5LIvwsYgF9HOymOyE3sb5UmYF3Ks=;
 b=ONfQrGJk8Euyh78C1AnE6a2TMiJTtrSmordxxifhGneH0xr/wjku5HeDU/fmsrOZptmx2qLYCNY92ntqj0HG9ncsZeSMpzSgdDlO/R0tXUUZtHw23aUdJivS7IKW0jv/cQdY2wHe0HLv27holeG7/v3KIsiGc75iD/y5iyh3JZxplapr5Vyib7wvAGJ1RMS2V9iy+HoSFt6xk54AI5rpZZzM3i+miorgxx4Si+gVOy7MvlMRygDKnzYio6Vd/rn2Gv9zBYfHaLuHoA1K4WQWJdDNVeih3NuUKrMEWY87NQ0lbaLWtdFCCYNzXkA2XPhD0ENTeCLxtboOV7gT6VmjGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JJ6g4AyZAldEfdp5LIvwsYgF9HOymOyE3sb5UmYF3Ks=;
 b=qOHYfPkzT0wa5H+70pm/QrWtZJiHua7cixqQdZglR31JJwPAAlG1+lubPn4p5+PRw3Q/2sTRGxWZO4J0J/8O+yPhC8xlyIzVaXsJxQU4MCKGeS1/gI1LDnRcCtzCFIdyKtkq1BtwRBnJvYWVul3+Ydwcr1cuS299f44d379qPws=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by TYYPR01MB6960.jpnprd01.prod.outlook.com (2603:1096:400:d7::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.8; Wed, 5 Nov
 2025 17:24:54 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9298.010; Wed, 5 Nov 2025
 17:24:54 +0000
Date: Wed, 5 Nov 2025 18:24:35 +0100
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Peter Rosin <peda@axentia.se>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 06/21] reset: rzv2h-usb2phy: Add support for VBUS mux
 controller registration
Message-ID: <aQuIU9C0A_JMEpAn@tom-desktop>
References: <cover.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
 <39923e450f1ce220cbca28dcf6b215dd9fa79dde.1762354366.git.tommaso.merciai.xr@bp.renesas.com>
 <4857ace4d241d3a0de4fe7247312ff07c930b11e.camel@pengutronix.de>
Content-Disposition: inline
In-Reply-To: <4857ace4d241d3a0de4fe7247312ff07c930b11e.camel@pengutronix.de>
X-ClientProxiedBy: FR0P281CA0144.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::19) To TYCPR01MB11947.jpnprd01.prod.outlook.com
 (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|TYYPR01MB6960:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cd4ab1e-b4d4-4c18-7d57-08de1c903bf1
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|52116014|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rBRlR0eazI7rDdFGFdk53hVtwcCxVTXb9vA9c+0sSxdII1KMMx5bJWusuVtD?=
 =?us-ascii?Q?2cFLDmk1UDMsVFQXJMZ3iHHtpQ5jWvOjFxmPpcBoLCD1RLn+TVRDZ5Oh0c4o?=
 =?us-ascii?Q?cj8zwHs2u6tdY0u7dPfP40svNLE1PP/Y6BGMstPGUmx2KA6/J26Bbtqsmoob?=
 =?us-ascii?Q?0V1tx4JrYx54Wkc6BdV4N0HyGvW5NAmysK883SDe2G9mzp8x/50qJIY87TRJ?=
 =?us-ascii?Q?1IT0CEhmfEVbyDugrMn6Xxxkvv2Bg4U/6aBPla4hD41B0Wcu0p81qrka0gl+?=
 =?us-ascii?Q?M2mtncTFVU050/m/rEMUOjv5S5cV2XUUdkK5YYOFUIOtdnptbaqgALAh3gLt?=
 =?us-ascii?Q?HennRDoZqIMJEDfLNL+aFy5tbPwmCF+U9HH4wlYbT2gku1gfzwI/jMox9ncY?=
 =?us-ascii?Q?VZwO/IV++IxW09oPZuI7W1es3BFBFNCeNzBBzF89DNPU2CVAJX5F/9bSNCta?=
 =?us-ascii?Q?IJaxJQzyZFD4paMKY9g4aS/TMbqEPgdQEqoH0ThH+KQYq8kjvw3R8qAUBkNa?=
 =?us-ascii?Q?S7Gof1a6HdsoUOqcBlr+dKQukSFQmdco7+lyQB1nOAT9yOa4jhRKikW2POZP?=
 =?us-ascii?Q?e6uNkKBxeA7e7tDpzosmqz1383/3jzBX8UtOTa7oYGlnQVrXpbKE+rp02sw7?=
 =?us-ascii?Q?wngzBUKCmvUV9zk0dKGxNPVW3Qn5OhXbKTVEyIlRXGcTfyVGM424BomBAyP5?=
 =?us-ascii?Q?EcnjinrLKzrg2Nlw/R8UDeBGG203g80I0e0E4PfNRyNDav1roOG0oPImtDZt?=
 =?us-ascii?Q?nMx9b/vg5hBEEdAHfL8933A/ArTGqee6TMuA3ycyY+0iDrSQlXgPiV3dDRAA?=
 =?us-ascii?Q?EkONXoRahdoFYJRp+Q1woSPyQpqI+5eINRSnHoem9YGoy6/oktNOt+zqk8Yo?=
 =?us-ascii?Q?bGq80zCTeNVW7IVL6+LUD+L4BXvI71YpqVQ6K8bv6mx1sjddNsaaHemOrfSK?=
 =?us-ascii?Q?/F4daXnZxd75y0qdatKzos3VZZaC28XGuWyZuAyAQOKi8LqQlM1Osdl2D9FH?=
 =?us-ascii?Q?TMx3R2ZD7LvDaZSNm9HpLV++SdoHPwN8IdPTaE8AU5CIRLfQYiDwTUHMbt7j?=
 =?us-ascii?Q?j5u4JtM/qxyYcaCoD5Zmm8JWPruh6WLl4AmB3dSO8CjkpyFju13kIq+wmlVG?=
 =?us-ascii?Q?VovvXpzE3V4M43U7oDdEWA/yMUhm4kMiAfzbKBltchgeLYHbgm94DhoSNOQp?=
 =?us-ascii?Q?wuwHqecrYvzQ/75gAJIBMjZaen6XyxHtNG3nU2No5hRwCXWON7kDr4JsAcUO?=
 =?us-ascii?Q?w9VrMKrBoyvcUG7AcBWzI+iRI3exsQo9THMCaF7gkRlVBoQCA4my43CE7/c/?=
 =?us-ascii?Q?PFW3cPVAj/MLg3XPi3oKeKvyBVopNK/2bTFpU6PuJkn7az5owN4DBeeR96xz?=
 =?us-ascii?Q?2kt8/LmlL2UA6K7B1j/vkvMOUwuL3zF5aBCy2Fb0zbJr1Z6Ywts8OPRNvQQw?=
 =?us-ascii?Q?7ecqkfoYFoIT5eNeRBV/vFtkEONw7w+Xj5RiuHpLyYoDxL9pIGe+jPL+JUeI?=
 =?us-ascii?Q?asVc4iMIskLhxjla5GLMW3Y7vaNJlMh2bcFV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(52116014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qK+K++fwHqe5xAbN1JhIb1+kcZvmIgpv929gGnMsH8RnP3jAI1bxBhF36mBk?=
 =?us-ascii?Q?wLKxDfCD6iEN8sCJR9yfs6fmBueJMPE/Lw8BF0UZzoSTDIbrGCInwbUekEUt?=
 =?us-ascii?Q?3tEOFIuAPAyuh28+fciqhP6wPJS7yDDD0n6CawlwyWwvZzT/uiuUR+baBcIZ?=
 =?us-ascii?Q?GsUq+TKXs8WJlmxumNWrgOPzrfDawDmmY7glmDNJwg8/TmXevReSa+qOe8QA?=
 =?us-ascii?Q?ZHcifK6D2RzmiZqVvj4K/Xxm5wCVuEDWNhhieBFmxuC8bjhiea2k3cSI9u+h?=
 =?us-ascii?Q?ZQjdl3ohV7SWvwSiE7zqbJvnX80OO6ndiqoHmuDmstlTEdaF2Qr9Axezg/Bd?=
 =?us-ascii?Q?zxcNE53Bz8Po3TuYvygYsDmb84VmMec1WqTjG3CKDTA4b1ZXX8Q2qCW5mkTG?=
 =?us-ascii?Q?Y9HwMTCaJ697wJ0YBiMHOKpk9+lzduK+PKdC0E94Fl73bekabmBCUyk3YGrA?=
 =?us-ascii?Q?aPKyb/6ryjWvphtwjfI4dxdVsjvSv3IfHkrECaHSdyiTCk2ZnagzimyzajE+?=
 =?us-ascii?Q?XPyF+Mt9AYEPM2sTpaRlDrBB/rUq7tNbcEZlOEMusUV/RQEbmncPTyLxLngG?=
 =?us-ascii?Q?2D0YwPhgN3qROlx9dtQ+k5251swb8wlY515xHskniegm79PCONiylen2G1Sy?=
 =?us-ascii?Q?4X65jHAzNZBrIulEHuBu3uG3S/B2ZrcE5/1/ChYRJEhOgHW5omQ/HntTO5nd?=
 =?us-ascii?Q?COK/c+mrHD6zSL+EZ5UzWMlUXg3NQc+uMzqBs270hNrjEC6ho1E6R9T/h2yY?=
 =?us-ascii?Q?PkcAZ0Z/9wjDOfD3P43jqhnrkR5VSUmR1jG3CR8sN9zzvOu7o6eh71tPVyZB?=
 =?us-ascii?Q?hao+Ec0BM++i166koA/FpnHYlDGBxNzHnWBdBXKDfNBqxa8rM49ldjfZUGtW?=
 =?us-ascii?Q?dj08tIv2S9y5BSAlgzSwiA7InUvne8qUSWUBFRKbtbcB3CyKah1USPuv9s1P?=
 =?us-ascii?Q?8fJ9+Qq+ZL6N2DsJuVlop+LgpmY/G4i/R2LPklamMFIeYrr1E8dwGml3iXud?=
 =?us-ascii?Q?xF9qi/+4d32//qWC1VeWGs93C40bgB67I5tqMYPbpn+Z+vxs9q5swAa3vmbt?=
 =?us-ascii?Q?bQDwOfhEu7JsRzaNEAS5W1VDsouGpsqvUO/dUzgwIgf3F2Nqc03SPS6RatOv?=
 =?us-ascii?Q?x62lzCWmAMOnxKuaX7Mi+SFztPkXYM2E09efGxovjiF4HT/pEZysL+GljQye?=
 =?us-ascii?Q?pwvrnclGO3K2N8shuImxGYcgAdbvccfsyU1hlWwt81ksB/res63HToL0DivX?=
 =?us-ascii?Q?LVfLD4jJ/xawziXbNMFNJfLeHobs/g42lOHcbZWa51v87TxkVVdFZGcFuPXa?=
 =?us-ascii?Q?rPPUFenfIJxUf1qdO8IdKK01D/wHlRDAlHV1FJsCDJ4mm28/XZzTT4xXb96/?=
 =?us-ascii?Q?Z5VMMHCV1MTUiTLD6Oe43mkYsC6xb/Z2mF8bNxmCG5Eu/MLlFlcEVeFdLWMw?=
 =?us-ascii?Q?QqQF1zOpbOuRpXydzOOChuq/Lk3qFq4b7M3S9gDh3092eD2m9XfABSXPLr/z?=
 =?us-ascii?Q?7LfVMDAczStpbKEHEfMsTKrsCPQL2rOl768st908PXpLQaMD0ohnzRDqCC+B?=
 =?us-ascii?Q?1MtcafxTsUk0HYw6s+rJnR6iKRpKDI/vz7Nv7b5aKomAXb7TZ6dYvuKB29CM?=
 =?us-ascii?Q?CWTgAT3ftCz3Q39x5/vN1b8=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cd4ab1e-b4d4-4c18-7d57-08de1c903bf1
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 17:24:54.3209
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RLRrY5sbVg31AAaqX3FsaAvIqIeMGb8E70yAA2BZSDj85OTlh6GTwpG+VaM0NxupbIWP4HhrM/2EF/N9JO7NgsW7JSesDB7NFFfGrf04NRHf+ndF3jdyUpcmnyl2GDs+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB6960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_092501_355736_B8A8F320 
X-CRM114-Status: GOOD (  27.02  )
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

Hi Philipp,
Thanks for your review!

On Wed, Nov 05, 2025 at 05:04:54PM +0100, Philipp Zabel wrote:
> On Mi, 2025-11-05 at 16:39 +0100, Tommaso Merciai wrote:
> > The RZ/V2H USB2 PHY requires control of the VBUS selection line
> > (VBENCTL) through a mux controller described in the device tree as
> > "mux-controller". This change adds support for registering
> > vbus-sel-mux auxiliary driver during probe.
> > 
> > This enables proper management of USB2.0 VBUS source selection on
> > platforms using the RZ/V2H SoC.
> > 
> > Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> > ---
> > v1->v2:
> >  - New patch
> > 
> >  drivers/reset/Kconfig               |  1 +
> >  drivers/reset/reset-rzv2h-usb2phy.c | 65 +++++++++++++++++++++++++++++
> >  2 files changed, 66 insertions(+)
> > 
> > diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> > index e1ae624661f3..f54e216ca7f6 100644
> > --- a/drivers/reset/Kconfig
> > +++ b/drivers/reset/Kconfig
> > @@ -255,6 +255,7 @@ config RESET_RZG2L_USBPHY_CTRL
> >  config RESET_RZV2H_USB2PHY
> >  	tristate "Renesas RZ/V2H(P) (and similar SoCs) USB2PHY Reset driver"
> >  	depends on ARCH_RENESAS || COMPILE_TEST
> > +	select AUXILIARY_BUS
> >  	help
> >  	  Support for USB2PHY Port reset Control found on the RZ/V2H(P) SoC
> >  	  (and similar SoCs).
> > diff --git a/drivers/reset/reset-rzv2h-usb2phy.c b/drivers/reset/reset-rzv2h-usb2phy.c
> > index 5bdd39274612..6074aa8cc13a 100644
> > --- a/drivers/reset/reset-rzv2h-usb2phy.c
> > +++ b/drivers/reset/reset-rzv2h-usb2phy.c
> > @@ -5,8 +5,10 @@
> >   * Copyright (C) 2025 Renesas Electronics Corporation
> >   */
> >  
> > +#include <linux/auxiliary_bus.h>
> >  #include <linux/cleanup.h>
> >  #include <linux/delay.h>
> > +#include <linux/idr.h>
> >  #include <linux/io.h>
> >  #include <linux/module.h>
> >  #include <linux/of.h>
> > @@ -14,6 +16,9 @@
> >  #include <linux/pm_runtime.h>
> >  #include <linux/reset.h>
> >  #include <linux/reset-controller.h>
> > +#include <linux/reset/reset_rzv2h_usb2phy.h>
> > +
> > +static DEFINE_IDA(auxiliary_ids);
> >  
> >  struct rzv2h_usb2phy_regval {
> >  	u16 reg;
> > @@ -104,6 +109,62 @@ static int rzv2h_usb2phy_reset_of_xlate(struct reset_controller_dev *rcdev,
> >  	return 0;
> >  }
> >  
> > +static void rzv2h_usb2phy_reset_adev_unregister(void *data)
> > +{
> > +	struct auxiliary_device *adev = data;
> > +
> > +	auxiliary_device_delete(adev);
> > +	auxiliary_device_uninit(adev);
> > +}
> > +
> > +static void rzv2h_usb2phy_reset_adev_release(struct device *dev)
> > +{
> > +	struct auxiliary_device *adev = to_auxiliary_dev(dev);
> > +
> > +	ida_free(&auxiliary_ids, adev->id);
> > +}
> > +
> > +static int rzv2h_usb2phy_reset_mux_register(struct device *dev,
> > +					    void __iomem *base,
> > +					    const char *mux_name)
> > +{
> > +	struct reset_rzv2h_usb2phy_adev *rdev;
> > +	struct auxiliary_device *adev;
> > +	int ret;
> > +
> > +	rdev = devm_kzalloc(dev, sizeof(*rdev), GFP_KERNEL);
> > +	if (!rdev)
> > +		return -ENOMEM;
> > +
> > +	rdev->base = base;
> > +
> > +	adev = &rdev->adev;
> > +	adev->name = mux_name;
> > +	adev->dev.parent = dev->parent;
> > +	adev->dev.release = rzv2h_usb2phy_reset_adev_release;
> > +	adev->dev.of_node = dev->of_node;
> > +	ret = ida_alloc(&auxiliary_ids, GFP_KERNEL);
> > +	if (ret < 0)
> > +		return ret;
> > +	adev->id = ret;
> > +
> > +	ret = auxiliary_device_init(adev);
> > +	if (ret)
> > +		goto cleanup_ida;
> > +
> > +	ret = auxiliary_device_add(adev);
> > +	if (ret) {
> > +		auxiliary_device_uninit(adev);
> > +		goto cleanup_ida;
> > +	}
> > +
> > +	return devm_add_action_or_reset(dev, rzv2h_usb2phy_reset_adev_unregister, adev);
> 
> Can't you use __devm_auxiliary_device_create()?

Ack Thanks.
We can do:

	adev = __devm_auxiliary_device_create(dev, dev->driver->name,
					      mux_name, rdev, id);
	if (!adev) {
		ida_free(&auxiliary_ids, id);
		return -ENOMEM;
	}

Then we can get base rdev from auxiliary driver just using:

	struct reset_rzv2h_usb2phy_adev *rdev = adev->dev.platform_data;

I will use this into the next versio.


Thanks & Regards,
Tommaso


> 
> regards
> Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
