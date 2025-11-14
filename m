Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02C37CDE027
	for <linux-phy@archiver.kernel.org>; Fri, 14 Nov 2025 08:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ouhJmmg8s5fRYZgFWDrPqb76uB44+I9NXBc9ULLSv7Q=; b=QfzANlX1oUix/s
	DCfPP/IVVKBoVmlNwv37svUytmPgySNbij86BRTRNrBkqR4IqL7MnhsVHMME9hSpZj4XG1SVpctMe
	wXqAaBW3rcF1P5mc0x1yi+Jj/GEiIUByFTmsAQcPXIptHJvooa6K0bUI2uLRcQLxxEhjmmKB7mI3m
	ib7n3xKCzT+ah25T/F6DwbW3nGCXJp+KRQ8o9gkIDEENfrrDbM3K003zZgPusl0G+9uJQlwxkQ85Y
	Nf79q60l/eRW5tW89QzZnkenDF9dT7OiA9rAKFBbsInT1B25LlVbXObouWlVJG5xpFUgEEWEqmasr
	jhQdD7vvUj3snaz5L5Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJp3x-0000000Bnpl-2m4O;
	Fri, 14 Nov 2025 08:21:45 +0000
Received: from mail-japaneastazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c405::] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJp3u-0000000Bnoj-1MdX
	for linux-phy@lists.infradead.org;
	Fri, 14 Nov 2025 08:21:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d1d5Ty2HukvCizxN2CY3Iz8SMWVw5cZJqejN02u5KhCe8WcxXMCKL15lc9WuFTZCfG/fMTTCJPWioq/3J8UizDfhbM2bG/EDwS18AsigEt7jtabKJKra/ZsB2vSWFyxsosiiFCS/Y0cOcJQzMxQtFibXsaWgiwUw42Z0GzPp0biOo/fuJzVFShkHDyKn6Z+ZC75ocej+LAf/cb/LxdHQf5g2L9kI7HS2NCLMIWqtUwiIG1NmgSHG1DW+AeA04jfGaVgcKEbVHDeUQamj0y0l1G7ap/XaiJ848idtQnYUM/XI5q+sOV7DYt+ZdyZQVS/0CUH6pdfOHImMNQZnhGOc1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0vHfqv//86Qpu8Bmtj8x8l+xkBKveGgWMWjVlI8apQ4=;
 b=oLTrtXFgjgKpvKlQL5Bsoy4TXKUfDcX9LRteW2aURHB6FiIwyo8qaVGpW+AF8CuPd0+GIPj6xWMwAfpMbOJzNnRr0qYavLS0R8QY4HhZsJfMjNr7Iee4voD3hL2BL2bYZ1YJVePXVE5SndFiFXYEZOHRVOlh2JietPhATdHhSHVJ2ORAmfrYjaKVoeDLLO8PCg2eJMQnhYO1boqF3aGes0yXF9P4gN3Gi3en7RWoWw2xwb3aif2zTJWfrXvq7L2CqYkwliyDvS0G8ftW7nviCH3OyTebvuBjBN5BUAwmjV9qD6r3Szz05WptaVUjQyBvNAvcz3D0A0BGbDo4x7PuwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0vHfqv//86Qpu8Bmtj8x8l+xkBKveGgWMWjVlI8apQ4=;
 b=PzjMH/kt84PBGkgfanQKwwB9aY1gqtzJw7kz159mD1ia1M+B5pHwH0CaJNE6DL3QKuqmbQMwcyZCvNxOZKPHeeX2mJ8VISqnaf1R2OIX2mNvVnkwW/UI9cWolgq9BAgKzl457q5AogBzK6YYtP/PsPIV23VkTaHJSORcMwd/aew=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by TY7PR01MB13646.jpnprd01.prod.outlook.com (2603:1096:405:1ef::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Fri, 14 Nov
 2025 08:21:33 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::63d8:fff3:8390:8d31%6]) with mapi id 15.20.9320.013; Fri, 14 Nov 2025
 08:21:33 +0000
Date: Fri, 14 Nov 2025 09:21:16 +0100
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com, Vinod Koul <vkoul@kernel.org>,
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
	Magnus Damm <magnus.damm@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 10/21] phy: renesas: rcar-gen3-usb2: Use mux-state for
 phyrst management
Message-ID: <aRbmfIb6UvLJMT0B@tom-desktop>
References: <cover.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
 <160371c0c5edae1fd3d66355f0b0afdb34de9387.1762773720.git.tommaso.merciai.xr@bp.renesas.com>
 <CAMuHMdW3+78AL5F09PU-cENJAqma=QCTmRCSe0KzANK08QJRmA@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAMuHMdW3+78AL5F09PU-cENJAqma=QCTmRCSe0KzANK08QJRmA@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0316.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:eb::16) To TYCPR01MB11947.jpnprd01.prod.outlook.com
 (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|TY7PR01MB13646:EE_
X-MS-Office365-Filtering-Correlation-Id: b24d481a-4b6a-40c1-c28f-08de2356d214
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|52116014|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sGL7hwAm1qssn6tJuLA/Li3G+8rxFTbrewyyllUr7lMuqSWv6m8d6qsMWQxc?=
 =?us-ascii?Q?9oAbI6MDZmdsZV2+/nZRZKkb0fb2Y8coX868nCx3i3cr+Lym72ArzpCNO+CT?=
 =?us-ascii?Q?KGSnLCIg6re17AF1H748yOr1w7vEvETslsXbOcV7KS7fvaNQARYboHp6rjsB?=
 =?us-ascii?Q?YFCEAWmLJHJ3DcqdNBAe4fos21W4v6VPZr3USJji/jrzoeVF+TNan7LKpihe?=
 =?us-ascii?Q?4tdvTqWLx5ad8XPiJr09g0LQ/7Md0UcgWq/f3WokcVDuxHafsEMpxXrzE32I?=
 =?us-ascii?Q?IVThkpQizIfYCoBZ4sfDpXRITZr4xUy7w3v9fIobAJYlbM8mf+x40S5QLNHr?=
 =?us-ascii?Q?22mZ97R0NPOEgt1ZmAAaI+F53o7Xu1MfJbXoc+XC5hsdAmTqV6I6ILC1dhdt?=
 =?us-ascii?Q?YdDjfZqcd7MueFvHIuFde4HVXm2CHcS7AOLXU53XRbp1U+qg8zWiZGPIhZXl?=
 =?us-ascii?Q?Pa/ioSSW/xjzLu5D+NBnWLw7Ky1hIXoI+XXLq2/o4l/AWco6s29RuoMOMA4Q?=
 =?us-ascii?Q?X1gOw9R5swHso7Bz5rcuFyeXlOMRDh8bC10xzi3lIyRrP0QeSam/PUebI++K?=
 =?us-ascii?Q?RnLbYU0CltMUu1dZmOvllJbQgS+vbogL6gCJ9pnZR89aKIdS0GBwaZoEXQrw?=
 =?us-ascii?Q?lYm9ESuJCdAk2Z9YoEPJpzZwzxAuALTIEmreSRmDbqXRyKUBVdMknq+hBrFJ?=
 =?us-ascii?Q?AabELptstU5Jn2OPo6nq+K70yZDMecYNHZ7Sj+hg41+s1MdnSqEDuFsxfsB7?=
 =?us-ascii?Q?Okc292H/rnABmrgczWqmehXDQyIN/wK+VKjE1hawAK4o3DbZeUPbwLDbcRJO?=
 =?us-ascii?Q?HA2qrwAemxzPj0sXOzj7YboqXi1VKmrxTKbxhm9tXQH+g4BaQlagbIZguIjw?=
 =?us-ascii?Q?hhXjtkFUCOf1+V3luP5VngEonM0Fg/2Hyc76PYLkY8BQ+3wYdfQNe60rKQgc?=
 =?us-ascii?Q?0ZkbQrUmcz5oUWUpSjZOdxH6PhlpBRy9qJYy3mJMVLJF9gyyzYCQhviITokP?=
 =?us-ascii?Q?mA+lPKdJyCI7uSRT6jfWAr4+4qNEKYTv/znY/I4D+/F0MUm5XAuNvOpIomjG?=
 =?us-ascii?Q?VLkSh1kC70vpqweQf91uJ7dwoF2K0Th0SA3jflFvl0nR0tetMpsU7jqocJuu?=
 =?us-ascii?Q?qhsUw4PwqR5pu8dn9uAMAb0y82bMJwJd//cgEHDFYlzLK+myRxp+CGcIYm9K?=
 =?us-ascii?Q?CNwtfCFq68/Tn3jY8wrQI0WPa0GyuNWcE14bOO/SqOiQQfdXkG4TZUj7McY5?=
 =?us-ascii?Q?pXb6XLfOPAlpfwlhX1BfNSgxPTkRqodPUdLKxeE1RcJnpl6sj8p/NfEMYLoX?=
 =?us-ascii?Q?EdC/qY6fc1OHoz9JdvUyiZq13UNWI/0XYaaqFgU7mED6yNgBloBP9hAFhrZS?=
 =?us-ascii?Q?E28jVaIDOp1B29fYAVMoqaAUmNilHIYFqrRAnY61nLAcybToz7A6yP+a5i8q?=
 =?us-ascii?Q?pm6DDwxIwhiskoyKEtpBORUAtqStacBQ3nMNwSHqICtZ2/QxGH1oJB0MUhfC?=
 =?us-ascii?Q?p4jFke6rsvZ1NCH0KPvmxydbdGul01p0AIFt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(52116014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7i6CHIqJ+ERu0AhnKgj3e/pYTL2xFU98aV7C9SydsVmCAQuJ8tIySLiEqaXo?=
 =?us-ascii?Q?/ECfBdjQn8fcFAtEezJ1C8JafmBQhcqyB6f9wScXETAT8dcF3hZeLXdSNIN8?=
 =?us-ascii?Q?nyVpD4qVbWPKcsPiC2Yxokhq/B+/vlgOaBNmlbBxHew3AmNIZFVjnzEb+w5h?=
 =?us-ascii?Q?Uk6rxB8hy7vdIOA3ceWenXi0vB95/eKnBGtFcd3MyHte8CsCaCR6jPyVHVMa?=
 =?us-ascii?Q?erpfdKWWWxQgMxlmEsk6uLTu1pcqqKynXQHCYuZ85/gp9EbMdLZyr5pS1EaR?=
 =?us-ascii?Q?VF44ugT0/PUGVGicazPpyXiXSfAkfZfK5Ag1ARc2hXAMGjkNAZU3AvuXqDWA?=
 =?us-ascii?Q?l4m5tExyNOzv/0w4gOXn5hYxlxN9Yr167jKD39aTYq2Pm7rdpHnFLFPx/BCD?=
 =?us-ascii?Q?CkW+47yr5+h7L4kht2U36KILBpX77Qo4oAn5go7j0WB0YcdJ7uSjqraNolIy?=
 =?us-ascii?Q?vidwjwt1gNSc0vWkey1iIiAJBRPZFXJDoZLPae4i4SoFqcfgbLK4brhkmnr5?=
 =?us-ascii?Q?+cs5DuCPcaHzPn2a4QZBXq1ggKpHIoDPEHl9+CdBH3vRy0JsroJjeO1Z7tSk?=
 =?us-ascii?Q?rbWMX9XrdDD/MCN6n4zRzBUR1bRgpDqpawkDMcHkixxV0f/aI/01hY6m/1tR?=
 =?us-ascii?Q?3ZOGrrn63AJCquEgc7NSV0kRsfNXxQ/ATmnN5ccIwcovZv/TGgUYGOIAZYP4?=
 =?us-ascii?Q?0UNi3EZQxLq3JzfCWplT1452oGhcac//5FMFgb+caO4TLszXtSHJOP0irJE1?=
 =?us-ascii?Q?7p78S/009+ScfQBxenrvfd2goUBT4nBS2dMFyV1b1QL/3pOo6V9jLg6RwBhC?=
 =?us-ascii?Q?dahQhH8jGhGvHDiALwXoBzOzPbnfy7ipBK265nnERDeezkjONgi4ElpDeGbH?=
 =?us-ascii?Q?fLFxg0LcWYo3IjuQrZYkk+aZN9MKXJpb2rzBirdFBwQz7eH/cRwvOyFhbwiv?=
 =?us-ascii?Q?wcz+hKav+yG7aosX4dLs3tgM4vxLGm2aYP8z2hqjpQL0iCtOkr/c9N2xHScr?=
 =?us-ascii?Q?RMhlxRT9wbPp3I6mAvvz+Xi8SBVVO1CYnPWCdnZri8HthNHSVAenk9dRYQBE?=
 =?us-ascii?Q?31nz5qyzRsJGipZ6nMGGo+hzU100CyrGlH8b5Y2g6+N2I7m9Z2sBkc5IoWUs?=
 =?us-ascii?Q?C7RcK0E0QQokIUuhPdQQFZx9xpuRHh0zdcNCJxJvgB4J4xaUvEudFmr4khVB?=
 =?us-ascii?Q?QgIal0LQaAjrrJSo7j5mPvj4q6C3F+Ui8tt6k0edB3DbKyTRx9F8GZf/6tch?=
 =?us-ascii?Q?0QFYy8aGmD1Z68k8h8fou3TX7bcS/lltsd0brRNUrOm+feDP1M+ftScaQXez?=
 =?us-ascii?Q?sjZu4AhMaPvzIO7X91ckwn3+otR8l0GwmLfDP923mwWDptsl35EvQatdSuJT?=
 =?us-ascii?Q?YyvPb6uxlWtZ0IB5rj/CVzv1HASWHuFJdtt6+6pUkRsjeHkeaTc1dxenEDNq?=
 =?us-ascii?Q?k1tXpBiJValetA324Pw1J/ePbBmSfGWy1boAi+CX5XccaSD29kihK5wMzQoZ?=
 =?us-ascii?Q?H2pN2OfmOI9dz2x3AjP9nxW2z8LH9pPuA+Dl7uVqOY54oeZx9lSaUyruMZcJ?=
 =?us-ascii?Q?pST16dLddb14IOCECYG30wTaYI8fb1P4Gqe6Hh+Hvlrqly8J5jJ5Y+bvZK5Z?=
 =?us-ascii?Q?513tfT13jptr8OvyXrCKeok=3D?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b24d481a-4b6a-40c1-c28f-08de2356d214
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 08:21:33.5096
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UkUhmTrMsKaBPkBVFVNTVq5QnTFR3XKUQTrcHiDCbZNSsWrDTBYGZaO7TLgq0ThDKCrI/3gWF54BKI4IbhOYWjgd9kTqeAIcmaY4LdXH/UKzualoJQJJAULjQZl/PVBf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY7PR01MB13646
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_002142_711025_B50EC41C 
X-CRM114-Status: GOOD (  29.31  )
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

Hi Geert,
Thank you for your review!


On Thu, Nov 13, 2025 at 08:27:43PM +0100, Geert Uytterhoeven wrote:
> Hi Tommaso,
> 
> On Mon, 10 Nov 2025 at 13:10, Tommaso Merciai
> <tommaso.merciai.xr@bp.renesas.com> wrote:
> > Add support for selecting the phyrst mux-state using the Linux mux
> > subsystem in the R-Car Gen3 USB2 PHY driver. This ensures correct hardware
> > initialization and integration with systems utilizing the mux-state device
> > tree property.
> >
> > A temporary wrapper for optional muxes is introduced until native support
> > is available in the multiplexer subsystem.
> >
> > Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
> 
> Thanks for your patch!
> 
> > --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> > +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> 
> > @@ -948,11 +949,27 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
> >         return rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(channel, enable);
> >  }
> >
> > +/* Temporary wrapper until the multiplexer subsystem supports optional muxes */
> > +static inline struct mux_state *
> > +devm_mux_state_get_optional(struct device *dev, const char *mux_name)
> > +{
> > +       if (!of_property_present(dev->of_node, "mux-states"))
> > +               return NULL;
> > +
> > +       return devm_mux_state_get(dev, mux_name);
> > +}
> > +
> > +static void rcar_gen3_phy_mux_state_deselect(void *data)
> > +{
> > +       mux_state_deselect(data);
> > +}
> 
> If CONFIG_MULTIPLEXER is not set (e.g. shmobile_defconfig):
> 
> arm-linux-gnueabihf-ld: drivers/phy/renesas/phy-rcar-gen3-usb2.o: in
> function `rcar_gen3_phy_mux_state_deselect':
> phy-rcar-gen3-usb2.c:(.text+0x37c): undefined reference to `mux_state_deselect'
> arm-linux-gnueabihf-ld: drivers/phy/renesas/phy-rcar-gen3-usb2.o: in
> function `rcar_gen3_phy_usb2_probe':
> phy-rcar-gen3-usb2.c:(.text+0x7d0): undefined reference to `devm_mux_state_get'
> arm-linux-gnueabihf-ld: phy-rcar-gen3-usb2.c:(.text+0x7fc): undefined
> reference to `mux_state_select_delay'

Ouch thanks!
I miss to add:

	select MULTIPLEXER

Into drivers/phy/renesas/Kconfig
Sorry.

This fix shmobile_defconfig build on my side.
I will add this in v4.

Thanks & Regards,
Tommaso

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
