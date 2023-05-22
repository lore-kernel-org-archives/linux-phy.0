Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D741BC7EE23
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 15:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62IMy/W/0lEIeByFl3wT5cn/ohOkB7n5SLcxZ3hHjSU=; b=y7y9JkD5iXXBb4
	2I6wjX0biC6jV/d+91TFCV6gcmdGX7r5x/cnSjI458VNrcuIeffBYNIiiX5Yc/MfHUVc9Ed/rSvoa
	N6fHWq75I+KETEGui3FHW1vGpVM5FVGrVksMXagB0qIVW580rexYLH3HMaoG/+Q9XELqtvk0f23vd
	Fj17YvjFIlLE+mtbB8YcoigXMAqHC/jfo7FN4p4SBdHrCsiw7nj85u9fooqVQeJioePGNpUMORu7T
	tf2G8Uk4mTmkY3FdR2y0WK4UADORyHPGsQfFmzVT88+9VyT/Pl1clKPc9cCWsoIhFmeJ+YSNZnEpf
	TIytJTz0ZlbRQcSqP7sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q171U-006vTH-1U;
	Mon, 22 May 2023 15:00:32 +0000
Received: from mail-db8eur05on20617.outbound.protection.outlook.com ([2a01:111:f400:7e1a::617] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q171H-006vKp-3C;
	Mon, 22 May 2023 15:00:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hsIXfpFc22j9LApHjHpOwcNpZkmGG6sUWn7G6Iwyayp+ves8003hr58N7WgMDqCSsHkn/inJ/3A9FbjfUWSmUNzkzpq0fEls8f7L/CwHrWbxGMyP5pyammwvnctwo8MceJ+5yNUEb4/Ooqi1js0QB1LjOUTrL1VeMVVCVMyfy7MGu/SJnZpqUO5cV2O6MqmGkap5daULVqrnANgDB6domWKhMPEiVCoxN1XOk3/dGvde0GQD/k2e0ugexeYnG8S43eD8vOxxYaSnRb9OQ/xt0m4EJPhzU2FMTsukAoAVxpDNYCVqki16M68s1lS8bntfvT8970Ivfx19aDpbdzLa/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EB71iksn3qiV/RSIqRzeMbEh4hotab3QdoJm2tor1yA=;
 b=HjA39FFkAi1JT/adn9RoRPZ9OKYAviEybiFAHB+7L+58qxlb2ZFxQ0zE19wFouhzImjiz34izgsL5GUKQ8+Ot8h1G76Y6+HyohpWwjj8UkgmCDEP603TcUy9LJ2Ta2YvS9Y/0dwQS7koksfHncpfNcpCzGVIJdagN643ZHMx9fIyOIi6YRB3P9dhFL0KNDYZH0wyY4yWe0b4PZXHEXt1QyMdocAHrJaOaeOgc7TOhY4QA8lvQsvcae5XH9AT7UNXcj2iiwCN1i3f9w3w6rQD/5afiv99WsHV1e7ZTytVNI7hIS2qvMbXptcoKcWMMpwX0aaEyiHM7CgMQGHPCCtpxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EB71iksn3qiV/RSIqRzeMbEh4hotab3QdoJm2tor1yA=;
 b=fxK+MF7VuVOPdBXBcRHPvAfaegNKmjhDLa5FG/Xw+9Cz9IXZXfKO6zsWfhePQqAseUNRl9u7SF0fYgIGgyMRfpNIpGpYLIpZH8G9GWHpahpR3SjgmMTDNigiVSLla3QwDlUMz79tsx8H0Pv/Zw5761gI67VdxtywCLN6zPYcFn8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AS8PR04MB7670.eurprd04.prod.outlook.com (2603:10a6:20b:297::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.27; Mon, 22 May
 2023 15:00:14 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::b027:17aa:e5f5:4fea%6]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 15:00:14 +0000
Date: Mon, 22 May 2023 18:00:10 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	Madalin Bucur <madalin.bucur@nxp.com>,
	linux-arm-kernel@lists.infradead.org,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	linuxppc-dev@lists.ozlabs.org, Bagas Sanjaya <bagasdotme@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	=?utf-8?B?RmVybuKUnMOtbmRleg==?= Rojas <noltari@gmail.com>,
	Jonas Gorski <jonas.gorski@gmail.com>,
	Jonathan Corbet <corbet@lwn.net>, Li Yang <leoyang.li@nxp.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH v14 00/15] phy: Add support for Lynx 10G SerDes
Message-ID: <20230522150010.q5zndfwcuvrb6pg2@skbuf>
References: <b7779674-c3ac-e0ab-3ca8-db1ec5953a97@seco.com>
 <20230426105140.t4yqv6irtjcwptm5@skbuf>
 <20230425195002.fls5cmwolyrslpad@skbuf>
 <b7779674-c3ac-e0ab-3ca8-db1ec5953a97@seco.com>
 <20230426105140.t4yqv6irtjcwptm5@skbuf>
 <7c7ab84b-3c4a-4e44-b5b5-4acf733a0246@seco.com>
 <7c7ab84b-3c4a-4e44-b5b5-4acf733a0246@seco.com>
 <20230429172422.vc35tnwkekfieoru@skbuf>
 <c81d23b6-ed22-0b37-d71b-ddce9d5d58eb@seco.com>
 <c2f928d2-25f6-0e31-9ab3-9d585968df1b@seco.com>
Content-Disposition: inline
In-Reply-To: <c2f928d2-25f6-0e31-9ab3-9d585968df1b@seco.com>
X-ClientProxiedBy: AS4P189CA0015.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d7::19) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AS8PR04MB7670:EE_
X-MS-Office365-Filtering-Correlation-Id: cd6f4d8b-8da7-4396-2012-08db5ad53fb5
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:  foszXlwfKuk2yurSmEzFeqnhdf9iE9hDoUOPBTEUp7CyzZ7VzZXHartFN/cO0opz57sIui8oUkSY12zIFsi7TqWaAvBv2Vo0NllKnvun6I/mI38SAKtV0ValsV5UoFp8Lfkyt+NKAQoK9ZdoUNmxyjFIHYHfBCBiZVNL7pg7Li3Si56mtG0OpmoRNd58nSKj3w6lEyQOwyxnpMokouAS2bdjRG0589RMfhESEsEtXN1IGhViToApaexoVo3J4OfX5/1+8bBmFNy6Lgp1QLpYf/D7l1JoAwHJrNSImCSfElBY8afd+wA5L+M8j/aEIdcjsWXITLG6dtABSvSmuiygWx8We8YeBv1v5RZj6+ESEUmCcYIvE+SCmqQab3y/rxPw5M4VOCs+0jAORGGk2yRq0DL2nt/zFL5Z5Y52Iy4uDAmHLNedLkYYmzv+8NK2x0H3MgainWRtdrNqBtrbBrmngSBTaFf8bm7AVPyO5akVOoLTWMzyDFXydRJCQUkp61hktW43uJODJNfnhYx7bsOCkyH4UUpAmTkYVJ4EVcqhvEM11J0CQ+h1a63bqoyLyBRB
X-Forefront-Antispam-Report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6452.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(7916004)(4636009)(136003)(376002)(346002)(396003)(366004)(39860400002)(451199021)(8676002)(8936002)(7416002)(44832011)(5660300002)(186003)(6512007)(6506007)(33716001)(26005)(1076003)(9686003)(86362001)(38100700002)(41300700001)(6666004)(558084003)(6486002)(478600001)(6916009)(4326008)(66946007)(66476007)(66556008)(54906003)(316002)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:  =?us-ascii?Q?s3v7KPkWB2B4nMS7Q2RVIg6K2MnDBWFfW13xRM3q4gyhnAZz1q4mNQ7P+tp3?=
 =?us-ascii?Q?GewXD2JCbyBidPxTTwJUuwkDDdoGDBG73KFRhFGMXbACNDvYVS89ueUuZMUx?=
 =?us-ascii?Q?ogwwwDYRUwRnEF3vKeZy1CqPkpokfPAeqgOM8QqLbN0FX370VvIf/UR8Kxpr?=
 =?us-ascii?Q?R67hPqsYo16XAq6jfm1WK2OvfJFIEi5kUFP07MJ+qwvuSVi0cIFsTFim02UK?=
 =?us-ascii?Q?OvbR4Ng1QNtrlF+cNxjfPTqXgQM6W3MfgATUFHvQoXvaXhuVnJcyuVMvPESi?=
 =?us-ascii?Q?tHOyR36jA9Vn5s0QykSIqmvLWLBPcSVNoO9bC5A5Sob2UQ6cCvwaWUX6kuPJ?=
 =?us-ascii?Q?dBGM5eyHXNfWcI1CsVKsbS1FTOFqlZNlx6ZWk6YluFuV3sNFf/xvdw5gR9XN?=
 =?us-ascii?Q?pqxIMpcbjmt/ZFeDPstwxA04Vk9EzGyqQZbApEw7VAcRSkp7fQvcmNbbju7t?=
 =?us-ascii?Q?y2ADfEYBJ/wfrV5Ls2hpCckc0egAIDgHwNkmEDIdlaqGPqllZBFhEtKC1f3O?=
 =?us-ascii?Q?dL02yvTVwBIAC5ulVS1Ye0fEYqbCpf11uueWH5Mvb+FNAlrs4KY/PHU78QeY?=
 =?us-ascii?Q?/39xTfhtC/whrzQx9w3xcb/rgwTnSL13V1Xl05QF0jmLGW129W3g5dV2tZH1?=
 =?us-ascii?Q?9JpFTLrAQxPDnR3SJHlb+ORB168pP1DspCmuBtWpais7bD7aJXH+i/WtXUZI?=
 =?us-ascii?Q?LevTokE3ciHSxKTE5HWNFSJlG6QeM07MfUPD98zFv7dZqRUzeWnZ+9iS4USz?=
 =?us-ascii?Q?7ei8VVXuqbQrg0ebaiRi2SJTNwfwY6/Jn8LhTP6TpnlXWjm4RSsX1KIXF0yE?=
 =?us-ascii?Q?COAlsNM6iDNoPuJELJD14UjxGjrXBVu3Me04Yi1YRt9VZcpmOUY0T848C3Ra?=
 =?us-ascii?Q?TORYhnRnG2R20UyKm4AtBf3xpHDbQoNZyhHAc7QgXe2ZREhQpsvlrMphb+W2?=
 =?us-ascii?Q?AVPzMFuGVVB27ePFJucRdBD53l3sa5ItKeADnDDZFrKW3/lDoK5Ip8ifH2hu?=
 =?us-ascii?Q?2zVchP0/PvTVWeBDvwneY3B0caYzEo9/8tfOK67F+ThYKzIHBVRXDjGTBRyO?=
 =?us-ascii?Q?LANn2JPttnRrYpUWcU1KDxsH6VOt6GCyoeWf5pE6tK/GFbFFlhHk11nGlVse?=
 =?us-ascii?Q?dfOirQg5LkA/cNXcRRn8CHeHU68Fe5/fy63QTnQYmeC8vBCCwatWw5y4LASl?=
 =?us-ascii?Q?5rAQEyvxJP7LpxudixxrFjiaKzML3wBYymsMOEADXnEySTVDEE/CVGsQn/4g?=
 =?us-ascii?Q?RuyCcRVAoYlvoZNz0sZooyYDO8eBiREvX8BPBoy5YEJDfOgS/jgEOVn0NWuQ?=
 =?us-ascii?Q?qdIOrOBoSyiUD2kG66e/DOXvzmIwqWyADPRXgbCtL4tZlm0Bqf5Mazb7vlAN?=
 =?us-ascii?Q?LVcP61n+TZLIADhQIXBQPFvMrK3/J2YDyAFejANwET378bdoTGg5rYQrBlZg?=
 =?us-ascii?Q?dLtgRo4DvbqCPBVL6w1IhmmyqktrJQr+/V2fptIob4TEtI+Ubr2MpoMKe7qn?=
 =?us-ascii?Q?pjf2BL99L7laWhw3IyevDLZb7IcNXKs7xFM+Yy2Vxk3kLs2A/6A+GiVohOmD?=
 =?us-ascii?Q?u6PUaB1Mcm+Tu0URfMfstiyhgdXEfiUd3UJX35xz30oObFwKdVLGprzov9gl?=
 =?us-ascii?Q?xA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd6f4d8b-8da7-4396-2012-08db5ad53fb5
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2023 15:00:14.8215
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AJ205IlLv9ZHXAEkkXMBhX32pGbzWUQQ81URgVJENksORwKoO3+t3pfoUq4q8VYgHFwZVQjkOqYDAH0pmWlHnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7670
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_080020_048227_15622DC3 
X-CRM114-Status: UNSURE (   8.02  )
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

On Mon, May 22, 2023 at 10:42:04AM -0400, Sean Anderson wrote:
> Have you had a chance to review this driver?

Partially / too little (and no, I don't have an answer yet). I am
debugging a SERDES protocol change procedure from XFI to SGMII.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
