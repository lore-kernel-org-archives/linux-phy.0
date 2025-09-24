Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F723CAC5A5
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 15:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRJVFceXeLdfJjQMcMM9Z0iHJEGINI8RHvS1BPEvITM=; b=1Lxv1CQDrAaq5H
	v0bBn4oPkaY+hM3Y1D9fluafNKkCQ+ZAxSHYWZ/8k9aOjVP1mmVHRZVwyE/iV+ifwQpGLUT0jSORN
	SakV0TaJetJg9NBwv3ao/bABYfuF2AsFHPDP7HN2szVpNRnTTUXTSxfzPlE4TYk/VGU0JUpmVrDag
	UWDIRhHu60wMwQXh3Ey7adN2cbNs712xmFnEqDOpT1ggve1GeDTarWDyKjX77yzpb3ZANseUWfpHL
	NeJToRJ1FC0XeQr10GltA0mzI2w3VMSyhHF7gLEVhk1cuXPZWTy6SZzuQ8k98Tpp3zcC4ShAP3K0f
	RfbH+9oy4Qkslqm5sAhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Rge-00000001PkX-05Mg;
	Wed, 24 Sep 2025 15:45:44 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Rgc-00000001Pj0-0quP
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 15:45:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lt/2DbZpDnvZPR8ZjGEgjXn+msGiO9FZPXqJx0Bt50EwSCRsktxYWZ1kU6nyIY3ZM8WM0/D98QzUq0QIPA7EXrj6kfLh92DB/hN3p5GUhNAr54Hejv2U0Z1PsPC1KpCaOHiTBUJFA0FEWNnMSse+byxi72UejIcFyJ8l2J6MYl/lsoauBbRy9BC8kWVKP/J6/n2fcVqzylJHH0YxpJsHesq0eJAB1ke/wyT6MJB5iudo2liWiadc0HU4TDxWpVc4ig2A//dsUicXm0Ii4cxO0DwYyE9apIw+UAe2lFVPyjIRVzIm8qO5gGqZhxQmS9QciYctSu7rUhdSuqz1miuMwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NHF1GnCGWXlIz2IrbSIG7q48hdLRrwQ9+i3dono8cAg=;
 b=orbbqVhmM7JurjnQ1wD9tC3NRq46zrtnOUUmhmrWfGlQ31LobIEqUnlsIp4BYIuWSqpNAoHLb+FecuwermN53QAgaDvjbM6nmqt2DHKGN9PokQSBbpWKuJYVnnJM7BxBFeGn0LiN5G5qBsotPfNjklsDAF/P2jseEGr5sgpmT/aCUJ9LwSW5f83uU9YFgYwKMrACpQIKeQ9x/8fktT/e9tYs4hpv0lMo7ANsl1BagIhOu/RIlUD6+KfXRf8VZEmGPPUdWBCEeI2KWoYAGbIwbMV6qj14H1IMd08gdC6+H+Rl3HWwlwgDDVEPUhqDoEpIflooMvsvaHRo5J7qom24ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NHF1GnCGWXlIz2IrbSIG7q48hdLRrwQ9+i3dono8cAg=;
 b=bQlNaaiXmMLtU/SxdMmO6JjJJHo4ihwyzDw/GE4fJlQpElDDSE5POmC39QYfKtFGw+Mk2WD5yomqGeeu5TAuwnB4hSCgOo6MptPaVpq4xfHO0FPn0tI1zpAw6xszsW2/HJ+AdeWiFrzynfey601KM5i77vLszsTb275/KdIqZpRvpSU1WOVrfLEWPYdLBioIw7D6LeRIBhoV1wbdvraF0aw0G/9e99p12XV2qOLn/7JFSmGMyQX0+f/YZ3lWJb3W3vLJJHdZ9fQF2Uy0l1IUSvYbrY0KrP4sLgjUHymB4CXeMZ/59EazmAcUOgc3WheVxO/MN/EE+vZdqOrIq0wFww==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by DU2PR04MB8584.eurprd04.prod.outlook.com (2603:10a6:10:2db::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Wed, 24 Sep
 2025 15:45:37 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9160.008; Wed, 24 Sep 2025
 15:45:37 +0000
Date: Wed, 24 Sep 2025 18:45:34 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Rob Herring <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 phy 12/16] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Message-ID: <20250924154534.cyyfi2aez46iu2sw@skbuf>
References: <20250923194445.454442-1-vladimir.oltean@nxp.com>
 <20250923194445.454442-13-vladimir.oltean@nxp.com>
 <20250924135429.GA1523283-robh@kernel.org>
Content-Disposition: inline
In-Reply-To: <20250924135429.GA1523283-robh@kernel.org>
X-ClientProxiedBy: BE1P281CA0152.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:67::20) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|DU2PR04MB8584:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c210f35-3372-4b50-aaa5-08ddfb816848
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|19092799006|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2SHo7HV8Ang8qY5+rjO/djLb7gFTaJP302M7BPL2xO4OK5iw0yQLHQwx2U2/?=
 =?us-ascii?Q?CXYIJma6bHMcyqyuH59B1/pO/aRqybqLlo+UrKYQSQSVaYu1CmUlpcbyIX+g?=
 =?us-ascii?Q?6yt49eOnf0HGIUW7LRmQIaP+xcCSjFkl1OOLH4HwAdgpbxY230V8dgIBohqk?=
 =?us-ascii?Q?WAGDn1xTjTpDfiFvEmsIonpHBMRhpi/vdkyt3EqR7ZE1Lc6Xh3OXdUICa4pz?=
 =?us-ascii?Q?XJzh6UxbKlB9cNzrZaRhD9TsoEE4PRnpvv8e2CW33bfHI9W2CX2SR97Zw4FJ?=
 =?us-ascii?Q?tbuZnbatBPTdEYK9RNh4wSz/t6+bHIxXPqxmF8ergcc+qpOiafTO8AC++mPx?=
 =?us-ascii?Q?H3n8vdICCrOcSmbk1wYW7DKphrwFlI/6iY7JAjr7CVo1rDSRev8JEWZQVMdQ?=
 =?us-ascii?Q?a2VKcC/CGV2l6Y5WvPMBBLZP752btTyFqKmrLFrd9o7QV7UewoO7dLbu/9K9?=
 =?us-ascii?Q?zNAwUBQJ4cQCzJ4BvITUkZbBio11uIn0YgIYacbIgEcgrJbfPDesKy7cptQQ?=
 =?us-ascii?Q?WuKLQ0lmpmKf9cKilzSEZaa6Tt2S1sCwIJuupwR+hRcS4+iMmoG01SYLQBjd?=
 =?us-ascii?Q?W7t0sioh8JqMJXT4z/ai4EzKsjtUjU9lo6/mCwjEcK+4+e/4jo/srpDfm936?=
 =?us-ascii?Q?b/cN/vBrl4S6Vh0s+Of43l7b1d/LZXkx49wUq18j3ZojCF+VXkg8YIKpso/L?=
 =?us-ascii?Q?FbtgVhuBmowqrc0TrR6kYAIGRx+6EiBuMiARfbXVLtHqAQ+Go8JwHC0zm5mO?=
 =?us-ascii?Q?tLbTNdFpfjLmEF50QzzFDVNfFr/aar75Lgaw2x+lZNOWrp3BxoirvFoAtXar?=
 =?us-ascii?Q?myzbS2Wyw2tlgcM+nJuVcB7xC/tdEmYOeFtT+m88D+hIS8I1C69RL6+c9gq8?=
 =?us-ascii?Q?srogcSAv54WOk6l9P3gGt2WVsqAYnS4BlQk5pshG61md4jGKbXy7SuwxEBzI?=
 =?us-ascii?Q?OGD+kHXWAZNkKt7vc3/bj7IyvdSV/fd8mb+7omEhpBnLGGNQ2S/QDEZ9GBG/?=
 =?us-ascii?Q?vSRrq1jIEo82YmXjZLMPQTqPJFFnati2/aAFF9sq4ip8E5mytgDv9YUnf/+g?=
 =?us-ascii?Q?mKb2AocpK9IM2Vj6j1tK35GJKQKJk0uEJIu7WMw73n7gnkbBtRTo/yPZMHyc?=
 =?us-ascii?Q?KkCyBrFUuH9fB4ZbD+FZQP7NFSeToUrl1z/7IUX1cVL1vhIYgpXzTLEXti+B?=
 =?us-ascii?Q?gpgBeCA694NlNQfPbSge03waJFiCVKrEDBylMavqFyQ+b4VFG1OquK9Z0iOh?=
 =?us-ascii?Q?kIcNuz5VjAajHlDy3WPdNtNWinhxDQlVewATUmjc59J2rC6cuMaYVB+gE1jE?=
 =?us-ascii?Q?Bc4MzsaiuCKyP62y4SU60yGvZGQYy4MW/fGi2U3p95QKdiNhzRIQEAe1OuYD?=
 =?us-ascii?Q?mBLPaFcqHPMFe5eaJj2jD8JwONHTm6P5E134ZgzI5aDBuzh730ptgpB74A8s?=
 =?us-ascii?Q?iBlX4UWdtyI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(19092799006)(10070799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZAU+CraN3DycAXeEzKcmpRWPxor7SNRVsuVb6ySrXMEoUAV8WY2EK0dlmWnr?=
 =?us-ascii?Q?PZED7LEaaBRZI2H+ayVS/8BWS6j/lpmtVkvL6XYB5rI0I8GUP+PWR2R7cuN3?=
 =?us-ascii?Q?M0JPDrZIe8hPsJ2Y55Akt022Pb6gnl+HyxKgsBQqGH2SjnBRO3lb6nBxcKv+?=
 =?us-ascii?Q?JHGhbWoMX9lhd8X83Xa73qi7G+9gXAh+69oji4M/uKdaGC5/J+l0gHFjEjqc?=
 =?us-ascii?Q?5QJt4TsuyPdD3sFgIKV1EFBpi0k9WinqWk0FtmEXlOSirpPBwuku46b028Yp?=
 =?us-ascii?Q?P3sHh0nicP61zzqKkhTFpZPern/JvRH3OyIL/5Gz0MtTSSRFsVsPjAa9yX1N?=
 =?us-ascii?Q?wX/xO1gh5KPkLx3UL/MSMiDqkdhC2QjYgmI3gPvOwfgMWflj7b0QMgc4wKrF?=
 =?us-ascii?Q?meSHVzRhXaYbRA77lJlXxCLpc6OKlfcKhOo9FRsMbeUAXKGXlHEpWoC6MODs?=
 =?us-ascii?Q?uJqcyA7/oTd7tOWxeU5l9NMfoZovPp8RKGc20Afjb029I5YXxViN8moRJ0JI?=
 =?us-ascii?Q?CSdyHaftCUpmVc2HwVbBR5wqTL40kyoWFuc2eX/t79MaTwn2TA50F1QzkSzK?=
 =?us-ascii?Q?xLuY0iNZZWoKktY4dlclbG0pl19VyyhsoMeVfiZwdCaSpY/i47GPvFNHy4mx?=
 =?us-ascii?Q?gpJXn3DsyjADOiBBCyiQtPFY45X0T0V2XxdEwMFg+1dtohzbd1WDhQyHYsCZ?=
 =?us-ascii?Q?FEgLtxb12wzFDbr0RwajtwHPX+kcUBHdwPmKUGUfMVGFqS1Td+sKjDTXTSQG?=
 =?us-ascii?Q?ryuOm4DpbzmZ8IQnyYUCw9ZAq0pY6onwCDnt0VbkuE3DFgASk/Mkmate/RcI?=
 =?us-ascii?Q?185JgBxa6EhPhTc8dBZAaWH7faohhJ7N/0i5WUYzEABhXs1ju1p64A4UdSa4?=
 =?us-ascii?Q?u/jEiChQ0+8JcTEkShVnxPJQRvVjX/JU70pXVBxXBwpQNLr5TN+2EJwZEOkl?=
 =?us-ascii?Q?Qtl4OV8lxjOdtCTDBUtcfZQYHuP9eqGaONepWHVZfSc+gINgjoKgIK7ZEpgT?=
 =?us-ascii?Q?HPGO3RIsC21d1Nk7T+27JaYYkyWg4hCtUgiNNt9TTl9I80jhv0ASDP7/HBQQ?=
 =?us-ascii?Q?1B/UMT5ScsnEGTiuXJGbJ6mVeyyWZKYLUCD+QIFKMn665Mpes1UkXdmjG4FZ?=
 =?us-ascii?Q?bC8ZLBqGzF49kTLv2kGKrqOI4Pt9Ndr0RpgSStZJU2bEds1H1ObZItn8T0La?=
 =?us-ascii?Q?WL5Fvmzq6DXJ0ndGp248x9nXZC7/xW9Ds+3iOiL0fVQ17sys44u0Z/MP90qk?=
 =?us-ascii?Q?VgEu/fs6MRIXtQZirlO5XP2NGoSNq/iNAjJ6zg8hgC7ZpYM62Vf+6jYZfM/9?=
 =?us-ascii?Q?Drzrp+s/mgJAHfhxFI/OGynK0DT0p/qrvjfNNZIKZl2j2avm/qErXZZwCOS8?=
 =?us-ascii?Q?1Qa67nfBO7oRiJp4RExzp3L6qfiYHvCgx0uSx+G+fBAp3vtZi+22SCMHoM1q?=
 =?us-ascii?Q?M2mhiqBar48+iwdMuBrKif34KWWVTG0OIwhzlMBqfCszdMHKemRLS5B7RVQb?=
 =?us-ascii?Q?SvrvU8cRundjK47b9CxtegcUO4tJ6PpEd1qmy6ZyAIivqOO2AUa7QsKVOUZV?=
 =?us-ascii?Q?LBOPESvg98/iLQbZhWNKLDQ+B3FAkeOOsjRfqaaGVDPrfqGdhUFgm1jvxiUV?=
 =?us-ascii?Q?9liq5Fk+Q0mk6PcO5v5GsvxgspUy4a6IWRp2j/NXCknR53yjonq5+zC61L7x?=
 =?us-ascii?Q?vrx19w=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c210f35-3372-4b50-aaa5-08ddfb816848
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 15:45:37.7868
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7Uu2IOB+3C4v/Wc94lF1LtL9JoVvD8910APf93GpUakvhXNEqZiftS2OIa/q9J9uxGIvMfpa54rVfAJ2qMRW0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8584
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_084542_242840_D8DA3690 
X-CRM114-Status: GOOD (  20.48  )
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

Hi Rob,

On Wed, Sep 24, 2025 at 08:54:29AM -0500, Rob Herring wrote:
> > +description: |
> 
> Don't need '|' if no formatting to preserve.

Thanks, will drop.

> > +  "#address-cells":
> > +    const: 1
> > +    description: "Address cells for child lane nodes"
> 
> You don't need generic descriptions of common properties.

Ok, I'll also drop the description from #size-cells but keep it in
#phy-cells (less obvious).

> > +
> > +  "#size-cells":
> > +    const: 0
> > +    description: "Size cells for child lane nodes"
> > +
> >    "#phy-cells":
> > +    description: "Number of cells in PHY specifier (legacy binding only)"
> >      const: 1
> >  
> > @@ -32,9 +124,51 @@ examples:
> >      soc {
> >        #address-cells = <2>;
> >        #size-cells = <2>;
> > -      serdes_1: phy@1ea0000 {
> > -        compatible = "fsl,lynx-28g";
> > +
> > +      serdes_1: serdes@1ea0000 {
> > +        compatible = "fsl,lx2160a-serdes1";
> >          reg = <0x0 0x1ea0000 0x0 0x1e30>;
> > -        #phy-cells = <1>;
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        phy@0 {
> > +          reg = <0>;
> > +          #phy-cells = <0>;
> > +        };
> 
> There's really no difference between having child nodes 0-7 and 8 phy 
> providers vs. putting 0-7 into a phy cell arg and 1 phy provider. 
> 
> The only difference I see is it is more straight-forward to determine 
> what lanes are present in the phy driver if the driver needs to know 
> that. But you can also just read all 'phys' properties in the DT with a 
> &serdes_1 phandle and determine that. Is that efficient? No, but you 
> have to do that exactly once and probably has no measurable impact.
> 
> With that, then can't you simply just add a more specific compatible:
> 
> compatible = "fsl,lx2160a-serdes1", "fsl,lynx-28g";
> 
> Then you maintain some compatibility.
> 
> Rob

With the patches that have been presented to you thus far -- yes, this
is the correct conclusion, there is not much of a difference. But this
is not all.

If I want in the future to apply the properties from
Documentation/devicetree/bindings/phy/transmit-amplitude.yaml to just
one of the lanes, how would I do that with just 1 phy provider? It's not
so clear. Compared to 8 phy providers, each with its OF node => much
easier to structure and to understand.

This is essentially what the discussion with Josua from v1 boils down to.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
