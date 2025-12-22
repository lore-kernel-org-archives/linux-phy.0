Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19023E674B1
	for <linux-phy@archiver.kernel.org>; Mon, 22 Dec 2025 13:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FB5TjG71secZJh5d1/dAu2Lv7Y4e9oxTjFDUcUp70Nc=; b=QiANSgdRj9cCrD
	Q3/EoXhiI0JgrfmC+tH3sxaqBtkt3gr1wkP3cWHzYaGawrhd/W7D3bx3g8a/Ewe0zJBh9zqtg4HvQ
	dDnc0rZNrQQJVtw8bgfOBaJfrlFebPRGC6NkfEI9qQZqWEWeIbCYjjzuh/0pkueh9KrQBnassG3tT
	SJ5k/HpVqNRI5OkqMoT3b9vp7ZDcR3iuh4HAWszEwnOoo7nz5iv9NRQ2vckKUXf53uaGy66Gf7JDf
	7jC/cO1AkEYG2q+Un4E2NJsV0yYsFGDcG5UGb/G+mDoxqeh3N+F4ZcfzvWOwk4Y3n+dIFgqpJgQ0p
	zSBrtGxWUvvejsfs/I0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXgDJ-0000000Dpmb-2nk0;
	Mon, 22 Dec 2025 13:44:41 +0000
Received: from mail-japaneastazon11010068.outbound.protection.outlook.com ([52.101.229.68] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXgDF-0000000Dplm-1h6s
	for linux-phy@lists.infradead.org;
	Mon, 22 Dec 2025 13:44:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=is05JBmcEhYzDocgFwKDTN4ehy529vGwhADkVoDZxOcfKT2yYFAQHyff2zHiBp2K7zusVXTyXmp9JJVjDtKNeuoZqFZCbCyo3d2soc7g2NSusOsuWwRqqs+A82MyaavDF5HqMLYlce0WBGFHc5AhG1lnDpCHt1GuSyrpmWrNB3rLnHeAwvQC5Ad79XYkf2H9cM/nIm3R7JV0dblUYj6kWe1tI6oxSBDdMl5vqf25A0bpGWE3BUl4bKwRu3xlspif3y0XiLVA0orMIa8L8SYOPwqn80wmm0Q3LdK2PA1M/XO1R5tb4JEPxqH+CcXEPMglEqcsnPOf04nOjUb0JUAgGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iRJpbSTlUPUEOhMTQbbN5Et10atwt7cYFAmDbnPjyUg=;
 b=rMEzgvVALNjr0T3psnyxDWLN3j6iHN7Th+RdNJzwFvErltrPj1pU2sWwN/Tni8A0uHNJwuKD427b46O+yajICVlFZFAVqEMkUEtAqeAPoj4IAZIW9GeuHr5ZwOtNJvrqPO4s8dZlGDuRp+CBf4oEdXSXI47T+bEGWGw23yLmpbGdTRBNvlHxilDCm3A9wM3yP+hxvDIGcjzT6mvIByQOIAzPBLwGzVTsIW1ft5BN0L7Th0XLj5QPZpqVFqvTggGeIqe84Yv6pc7R8uDeMYS+nCvD+J0ngbpoVV4eo0eSw/sODtvF+jFEFBdJ/aEhUdvTt4a4P5L11a0QSnwCpn8RAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bp.renesas.com; dmarc=pass action=none
 header.from=bp.renesas.com; dkim=pass header.d=bp.renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bp.renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iRJpbSTlUPUEOhMTQbbN5Et10atwt7cYFAmDbnPjyUg=;
 b=iXgKO3YTc2uorsdoyvoF6tOf/pU6ywndB6Dkpe9ITUhPvt9VkUUDoabBJsWXJF8H4mTs8dzLU6hpj4Lr25O5RJHD+v01zA3RAFtO/J/RZFN8HBPDb/FSsg5QMkOmqYn8ou/lxvaEUrQuPiLsarZjbFWs1Ks788D8UccgeJgT7pM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=bp.renesas.com;
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com (2603:1096:400:3e1::6)
 by OS9PR01MB14304.jpnprd01.prod.outlook.com (2603:1096:604:362::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.10; Mon, 22 Dec
 2025 13:44:25 +0000
Received: from TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8]) by TYCPR01MB11947.jpnprd01.prod.outlook.com
 ([fe80::33f1:f7cd:46be:e4d8%5]) with mapi id 15.20.9456.008; Mon, 22 Dec 2025
 13:44:20 +0000
From: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
To: tomm.merciai@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>,
	Peter Rosin <peda@axentia.se>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Georgi Djakov <djakov@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v6 00/14] Add USB2.0 support for RZ/G3E
Date: Mon, 22 Dec 2025 14:43:34 +0100
Message-ID: <cover.1766405010.git.tommaso.merciai.xr@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
X-ClientProxiedBy: FR4P281CA0324.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:eb::14) To TYCPR01MB11947.jpnprd01.prod.outlook.com
 (2603:1096:400:3e1::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB11947:EE_|OS9PR01MB14304:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a19db3a-0ba2-4cf4-e44e-08de4160351d
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vC7E+9MoiulPrTElyBHxRF+nuKzamOT/AMmGnCovD3RfHj69w1uXVO1sJaj/?=
 =?us-ascii?Q?pjCfqOw4nFUrQy34vuK4MqiK+N2eBSXWFwrqv2uklVzEq1vNYVpgOv7fPEOp?=
 =?us-ascii?Q?/lTbZnAujHsJZlOEl1yUZvRZKFD39rGRNFLq0dpMeMbLL2K+6DG60q9QJZrX?=
 =?us-ascii?Q?UI2l90DY6ZpZCSpZKbf7KhaJTEOBTYRx3hPzGUss8kapSbOMjXXNknnGrCKd?=
 =?us-ascii?Q?bVpXLcLh4TgO526xzpCgup/xAPzGAmhxIGqNuQeaxgRe7qU7/bRrtJ2wW+Q+?=
 =?us-ascii?Q?V1Hcz6RLryr559ZXmp6xVA+aRpmf9HvB+6zqZKq8LPCa/g6hhK9RUuCjjXgB?=
 =?us-ascii?Q?YXszdY9PaID8DgyTafAuLAF8gfzwo+xCukx1luONzx1qbyMvKHpxwW3SrLDo?=
 =?us-ascii?Q?oqIo2/IlEWosXDH8AXBj39pDiOmPv75Ho/tIond+w02HH3A/xNaCTVqT+dhA?=
 =?us-ascii?Q?zgEkLnI1EvjMlyGVekLz8Hcjt4bfDChzMxp208PM+Qsg9umZDLtk7FkioIt+?=
 =?us-ascii?Q?Hl7csupz9d2b0vUO6AL4n25CrUEVOrfmlvkfpUfCXPpSb9bu2xQ810HXfnAW?=
 =?us-ascii?Q?B7EGkBk99ZIXSxs8yzc9rN16n8vZZbVvKfj2YF+pwBZfzWN/9PsZtK2KjDkp?=
 =?us-ascii?Q?9QFeP+FE0n9YTFnOk5YSZMpGelsOFW5N8wyg3Da/3ox8lAlgK/Jt1rWF8JXI?=
 =?us-ascii?Q?Uf0Ft4JirOX9NxcasetmP8iG6rV4SFMDsYOK7mqjH0NgDkF15suxFW+9+bRp?=
 =?us-ascii?Q?mUI4arL674htTwGPWgBTGT4c35XUqYpWyCkHgBq4ME1Ehama97jucp7xBdBX?=
 =?us-ascii?Q?Q2QwE5S3nKug2T4ox6FcQPSCIIWFxVZ9kCqN3JJqDbc5NOCTfnE5JR0rVILA?=
 =?us-ascii?Q?EEfwha7HYu5WwVAcvzAB5rdfot/pFY3BhRQgflv0FqIcVisV4IhH2yckBavO?=
 =?us-ascii?Q?H8vcbAYG/AZKMv6js/OIKsfPTXS1LOwYu6JWoOVP+XE78LqmpE36lCkHgixP?=
 =?us-ascii?Q?rzTeB+rpm+bj0RtDN3oVKL9vERN8iqoWgpXBEc6Qau1lwdP1QM7Llu+cM98y?=
 =?us-ascii?Q?pVTc3M5+LJcpM+aFsDdeRXXtepEXmeS7KZTKGnf2xUvs+hxGTyORFcKfN9SM?=
 =?us-ascii?Q?6OCRso09LxlMIuvYrf2DV2shDLCKsGDPLUq6KEy4RqTGyUF8eRfJycw11moP?=
 =?us-ascii?Q?Wk8zu4xUcNrKX223tEMU1bwFdbvR/RSwPNfHCL+5shR2qlXwSAZeWYoQsqMw?=
 =?us-ascii?Q?BWkN/eWtH123qmQCPRszS+hlPEyQrQAjIoHv6gIww3+yKbf02m4jdlsfVUC1?=
 =?us-ascii?Q?ndBXvwRg1U1HT9jdIRS1Mx+meGZYjTNurTARTkk6OPuMfCpojE1N0yJg/WOy?=
 =?us-ascii?Q?nGEZu7UFTvBqFGosXd3E/VLN1vGXrHkuikD3TB4TiuDT97RIBiG3DgydLIzp?=
 =?us-ascii?Q?wtXMeSa59SxMQMb6rnZXfBmPeHIoL3v3OHTeaCAtTMQbjFxmKBlsQUSzt7Mj?=
 =?us-ascii?Q?dAqBjeFHTDdWAZ7BHR2QXJHedKCC+HRGjZh+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB11947.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iNe2IcPRLD0phvCeddip6+EuqVshtgzQzcpLTudrgv+152GTE9dq7g6ig1tc?=
 =?us-ascii?Q?D4vFhsYhTUngmZzx2kyQBH1bHSZItARLwoAk/ULUQcgE86Q8oNTkhlEXB/HO?=
 =?us-ascii?Q?V0aomFbmRx0WaI+fSsqR6zboZVq5HxBGhz68IuTDwZXUGwKdBQC8CMvK7Jid?=
 =?us-ascii?Q?F5rkPDyfvWVkvsq25scKVHKinFA5F0v9C0ARsNO4qY9HSvegpto3RycwAcel?=
 =?us-ascii?Q?Qhq98BHmenXtbpO4k5YR5dRmxxbTrrthUWe5TxNFq3yfrENIAkeWsCPQm/o4?=
 =?us-ascii?Q?pAbuFqocWiXcINTW8DIu9OsdwQp20S9WU+jQSklSl1IgiSYm8nsGsE3zveJC?=
 =?us-ascii?Q?dbVKQloB3RPNLku3bdb0gcf/vrHuen4Q/fOEeo+hEka7OvoudSG4afb78c2b?=
 =?us-ascii?Q?36jrpy0VTizY3bD3Kwjg23HCQl9bp5LPtDBJlciCkqm8elwHmOPyAhoGpf5Y?=
 =?us-ascii?Q?8VZpiiXvkj4UaRbvvnWu9LWr0bBcCm6SOsApi6+9UHIHpA1jJ5C8/3uE+JCQ?=
 =?us-ascii?Q?lV+jnSK3zknOI2IE6GoiF1OhLEImPuksFwVFICT6u0t1rqQcKvivebYM9rnA?=
 =?us-ascii?Q?AzagXJ8JW39PdQ02EDkuxr+4z4xfGqmsJZT5YbBnRXeRp01xtthJqz5+OCio?=
 =?us-ascii?Q?J64ddGKTMpK7IsZ+TlRgJynRB+40zbZyvumfNdbBHkzcpfL++SfsHBicpsNL?=
 =?us-ascii?Q?RJ8uBxdtyPhxXqvXjqyE3kyNmrlTm1oPxlu/BsQAjosGmb3S6ctOUQNzEfak?=
 =?us-ascii?Q?BeIOZ3gHdvD3X5/5KtAYRdYfY70GsdqfFqDapD+ZeltATRmE6bsFkggPk95I?=
 =?us-ascii?Q?Ul35OljtuqwGQEQqD9HP0obxH/zPSX9VND8tv97phbvXV1Hnu4EJfKgd141D?=
 =?us-ascii?Q?qj/BeKAQdHUFr2YPCb7Hsvvl7xaBzlZNMK5OxHXG7wYSmRIi6ApDFAg1Oizl?=
 =?us-ascii?Q?TJrUOTCZaZAHLFVULb2OnXmt9o3CxU2/h7V2oIQFxuCroztPrT+C094Vggde?=
 =?us-ascii?Q?WDXLRZlqpsyje68LqPGSPPObFuZGlTSHUwmGdiUwErNJ2JUYJkm604TONrcZ?=
 =?us-ascii?Q?QnTltHE9eV5dvrlfiOGkFL35SiLyEcs8IppRBAzfQrAV2RrqZWmA3cdFdTP+?=
 =?us-ascii?Q?kJeXip0ScNmHEmvCUvOdTYnAxBww/z8xZLI2c8hotxvF7YZ/h4rIkezmjhzI?=
 =?us-ascii?Q?7PeZd865BBIK4Cxqlmxmf9SMP5Ox18d7dbFiWYyZMNY565mS/3dF0Rj2zD/I?=
 =?us-ascii?Q?ILAuZnlw14GjcZO0tE+1Sjpdjhyk9zjeWxVhbODf4pnC17KDXktdkSYwPxRo?=
 =?us-ascii?Q?f1NLtsy4ZZoD+NVGMmnJOOIXHoniAmReSij7ncOAOZgTuaY9ajJbMuCCgJiV?=
 =?us-ascii?Q?xtuxXZEOpGt3/31fVh9IAe+RER9iyad8rADLJiTIij6XBxTXMSTvih7B/KMl?=
 =?us-ascii?Q?vqas0qLTMZMlV6KCeEMuaQlz0Z9y85Rhh1rJSGX16oNI38r+b+apQvocmW8f?=
 =?us-ascii?Q?UKvffJr00BWwfFhEgPx/6ctvBZ/jKuj9Oobj3bNmfU6R3dlsrpbD/vSKSwAW?=
 =?us-ascii?Q?U5MBUNukZ9ILp6mT5XHOooArME/Y8J1ZUAAXzUJVsr3d/rTKpKqaz9UiUGk4?=
 =?us-ascii?Q?/5z2fnno505hNKGkmJ9UYNEhezCPvhxyDr3r4lt9g1BpchB7/wL3XV3JKYbD?=
 =?us-ascii?Q?4//lrpg9dNV1Psk8StV9DLDQj0UzdBx6Lk75JnEPsCOFuuM3zW4EsejYjiXs?=
 =?us-ascii?Q?6Z+fY0QqMgPojjXdaGVAvFMPoHRg/3xh9GRxk1B5Jw+Q7dzVVJRK?=
X-OriginatorOrg: bp.renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a19db3a-0ba2-4cf4-e44e-08de4160351d
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB11947.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 13:44:20.0239
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hXZvjt9QrUhJEjtbZ1DN9oHmGYd7mQh3QHjdiDwp8Lor6SUHvQGevhFGrBdlHXGzLTo3yD1fVuRILrFu/wPsufij8Tf16JXteczd1q2UIAMbHU8mmkNQV34xWsyFn3Hy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS9PR01MB14304
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_054437_777548_D09A2E7A 
X-CRM114-Status: GOOD (  16.83  )
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

Dear All,

This patch series adds USB2.0 support for the Renesas
RZ/G3E (a.k.a R9A09G047) R9A09G047 SoC.

RZ/G3E has USB2.0 IP that is identical to the one's found into
the RZ/V2H SoC (R9A09G057).

Merge strategy, if any:

- patches 1-2/14 can go through the MUX tree
- patches 3-6/14 can go through the Reset tree
- patches 7-13/14 can go through the PHY tree
- patches 14-14/14 can go through the USB tree

Note:
 - Reset driver (reset-rzv2h-usb2phy.c)
   has build dependency on Mux header file
   (reset_rzv2h_usb2phy.h).

Thanks & Regards,
Tommaso

v5->v6:
 - Rebased on top of next-20251219
 - Re-arranged series order per subsystem patches.
 - Patch: 3/14: Collected tag.
 - Patch: 4/14: Fixed commit message.
 - Split from dts patches will send separate series.
 - Added merge strategy in cover letter.

v4->v5:
 - Rebased on top of next-20251127
 - Patch 01/22: Added Reviewed-by tag from Conor Dooley.
 - Patch 06/22: Changed file name to rzv2h-usb-vbenctl.c and Fixed
   Makefile, Kconfig, function names accordingly.
   Changed driver .name to "vbenctl" and fix auxiliary_device_id name.
   Updated commit msg.
 - Patch 07/22: Update mux_name to "vbenctl" to match the driver name.
   Updated commit message.
 - Patch 11/22: Fixed if statement for mux_state error check.

v3->v4:
 - Rebased on top of next-20251121
 - Added patch 01/22 to remove nodename pattern from mux-controller schema.
 - Switch back to v2 implementation for mux controller in patches
   5/22, 15/22, 16/22, 21/22.
 - Improved commit bodies for patches 5/22, 15/22, 16/22, 21/22.
 - Removed mux_chip->dev.of_node not needed in patch 06/22.
 - Collected CDooley tag in patch 09/22.
 - Added missing select MULTIPLEXER into Kconfig in patch 11/22.

v2->v3:
 - Rebased on top of next-20251110 + [1] + [2]
 - Add missing Cc: stable@vger.kernel.org in patch 03/21
 - Patch 03/21: Added missing Cc: stable@vger.kernel.org.
   Improved commit body describing the removal of rzv2h_usbphy_assert_helper()
   from rzv2h_usb2phy_reset_probe().
 - Patch 04/21: Manipulate mux-controller as an internal node.
   Improved commit body.
 - Patch 05/21: The main driver is using now __devm_auxiliary_device_create()
   then update the aux driver accordingly.
 - Patch 06/21: Use __devm_auxiliary_device_create() to create the aux device.
 - Patch 08/21: Improved commit body and mux-states description.
 - Patch 14/21: Manipulate the mux controller as an internal node,
   and update commit body accordingly.
 - Patch 15/21: Manipulate the mux controller as an internal node,
   and update commit body accordingly.
 - Patch 20/21: Manipulate the mux controller as an internal node.

v1->v2:
 - Rebased on top of next-20251103 + [1] + [2]
 - Reworked series to use mux-state for controlling VBUS_SEL
   as suggested by PZabel added also mux bindings documentation
   on phy and rst side.
 - Collected Conor Dooley tags
 - Dropped unnecessary rzv2h_usbphy_assert_helper() function from
   rzv2h_usb2phy_reset_probe()

Tommaso Merciai (14):
  dt-bindings: mux: Remove nodename pattern constraints
  mux: Add driver for Renesas RZ/V2H USB VBENCTL VBUS_SEL mux
  dt-bindings: reset: renesas,rzv2h-usb2phy: Add '#mux-state-cells'
    property
  dt-bindings: reset: renesas,rzv2h-usb2phy: Document RZ/G3E USB2PHY
    reset
  reset: rzv2h-usb2phy: Keep PHY clock enabled for entire device
    lifetime
  reset: rzv2h-usb2phy: Add support for VBUS mux controller registration
  dt-bindings: phy: renesas,usb2-phy: Document USB VBUS regulator
  dt-bindings: phy: renesas,usb2-phy: Document mux-states property
  dt-bindings: phy: renesas,usb2-phy: Document RZ/G3E SoC
  phy: renesas: rcar-gen3-usb2: Factor out VBUS control logic
  phy: renesas: rcar-gen3-usb2: Use devm_pm_runtime_enable()
  phy: renesas: rcar-gen3-usb2: Add regulator for OTG VBUS control
  phy: renesas: rcar-gen3-usb2: Use mux-state for phyrst management
  dt-bindings: usb: renesas,usbhs: Add RZ/G3E SoC support

 .../bindings/mux/mux-controller.yaml          |   6 -
 .../bindings/phy/renesas,usb2-phy.yaml        |  15 +-
 .../reset/renesas,rzv2h-usb2phy-reset.yaml    |   9 +-
 .../bindings/usb/renesas,usbhs.yaml           |   1 +
 drivers/mux/Kconfig                           |  11 +
 drivers/mux/Makefile                          |   2 +
 drivers/mux/rzv2h-usb-vbenctl.c               |  97 +++++++
 drivers/phy/renesas/Kconfig                   |   1 +
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      | 261 ++++++++++++++----
 drivers/reset/Kconfig                         |   1 +
 drivers/reset/reset-rzv2h-usb2phy.c           | 108 +++++---
 include/linux/reset/reset_rzv2h_usb2phy.h     |  11 +
 12 files changed, 420 insertions(+), 103 deletions(-)
 create mode 100644 drivers/mux/rzv2h-usb-vbenctl.c
 create mode 100644 include/linux/reset/reset_rzv2h_usb2phy.h

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
