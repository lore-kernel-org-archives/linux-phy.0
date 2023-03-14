Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22A63C05027
	for <linux-phy@archiver.kernel.org>; Tue, 14 Mar 2023 18:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1ZljpdpNEb2tLofiJ/x1aI81HZOwQTJGZMnVmpFu6KI=; b=3gj6ybTwxbmfyMJ4VMXDdwL8Fr
	ZALoeom16JTZ8VAy/H710HjB5A9R0C5r8IWnCQMSJrByROwUT8FM1DV/3pTR6kYCpHU3Flj6+eOvj
	LizfE8P3bcZ/Y3PePX1J43B16EmidakikQL2jcz25PTMmozywd62AhOyIHgh2I0F17W28lLprlqh2
	LTm0MvG8pYIzrzSYjDYUc6ojZWWU3G2OWVa4GMz6Sk7ID+4tYlGGY2b+vOI2ePo/zJd06dOwlnXHt
	v7kddHVsxoNJ3FvfJ+t2O8pDgKoAsdUVswy7a0RnQdc8L9bfDOcdFINVsCLIdnT7LaKZSlKKcRJn/
	oxbL/ntA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc9jt-00BFZ5-0W;
	Tue, 14 Mar 2023 18:51:15 +0000
Received: from mail-dbaeur03hn2030f.outbound.protection.outlook.com ([2a01:111:f400:fe1a::30f] helo=EUR03-DBA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc9jn-00BFXd-2r;
	Tue, 14 Mar 2023 18:51:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VLGcYkiiYF4doTj2qCswPYQXZC+6ClCjEmjxsdngwLs=;
 b=oRrBs+3YqRhcdY5yX4oskCdRGQ2+QjMPuh32DmNUlCkmbkweaZ9qN1F+N8eQutJygerKqBr1CZc3UNIUCAjLxPDfgEnEfUpZbc7a8Mg+yOvibkSyrPoOnfMwOzil2RwjXQXVdXua5ci7sRylQ3ifiBoJSj0SAv+oqUq6owSu7KXm2zGOJHpBFY8ZdfhDkhREt1eVrSv2VYr26nkAFhFmKfoAFJrKtjqjaI1UPp5HwPjCAa295cT8y1emdqIne8eLGUZjAO26N9OgxlndHNrPH6vCMITE1Na3Oo6sMfFfkGGMHQcgwGrqQUuhAvWZfHxcG7L1GReMxMDvt4mmcIN3kw==
Received: from AS9PR04CA0128.eurprd04.prod.outlook.com (2603:10a6:20b:531::10)
 by AS8PR03MB8975.eurprd03.prod.outlook.com (2603:10a6:20b:5bb::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Tue, 14 Mar
 2023 18:50:58 +0000
Received: from AM6EUR05FT059.eop-eur05.prod.protection.outlook.com
 (2603:10a6:20b:531:cafe::39) by AS9PR04CA0128.outlook.office365.com
 (2603:10a6:20b:531::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26 via Frontend
 Transport; Tue, 14 Mar 2023 18:50:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.160.56.81)
 smtp.mailfrom=seco.com; dkim=pass (signature was verified)
 header.d=seco.com;dmarc=pass action=none header.from=seco.com;
Received-SPF: Pass (protection.outlook.com: domain of seco.com designates
 20.160.56.81 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.160.56.81; helo=inpost-eu.tmcas.trendmicro.com; pr=C
Received: from inpost-eu.tmcas.trendmicro.com (20.160.56.81) by
 AM6EUR05FT059.mail.protection.outlook.com (10.233.240.99) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6199.14 via Frontend Transport; Tue, 14 Mar 2023 18:50:58 +0000
Received: from outmta (unknown [192.168.82.132])
	by inpost-eu.tmcas.trendmicro.com (Trend Micro CAS) with ESMTP id 2BB3A2008088A;
	Tue, 14 Mar 2023 18:50:58 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (unknown [104.47.18.112])
	by repre.tmcas.trendmicro.com (Trend Micro CAS) with ESMTPS id 303322008006F;
	Tue, 14 Mar 2023 18:49:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XrVJ+5eyyLeKSTG1TrREdSQ2pq5ImXR0QqA79WDCQTwjCXMLUsEpViw+MviCkZ1Sb6z4f8Kff3pEBmsOzI4rNSDQk7ZKyiK6uiyJNNAslWd+Kms57hUrHU5NtJpDo/strNZIwZvYHy6mje++Sg5wf1z9AebQqbsuvDHp+9qOemZ2FceU0BWLa12p1Qq2e8BvEgQ/d/S2EJ/0S2n7I+MWygcSaiRriljSs52ja7ELJ9NYToveU0ygiVRrnJBJ878KLXzz2K3d1bE2Tv/ulq5MqkH3Rm2IyfasTxjuusNQAwg8KHesQRbY2QUBWzy/ktLZ1pZcXdbbv9uzsWorTfMDMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VLGcYkiiYF4doTj2qCswPYQXZC+6ClCjEmjxsdngwLs=;
 b=F8BYQbdK8UR7g5TimwEqYi/n+4BEiHCL7xlrHrRKKAf15bPVs4CqwfwiUpeTcw7mzEgZGHot9rVmL1e/LViKG+619JF4GUb2RpIPFJgTT9nBru29dl55XikK4HzutHRz3bh0OWHsoYoIQHijnzL1+bE5lWC6GvDF9E+7RKxRFyslzOIVTm0dEKS90NIbAqnc7DY8VE3tmG+RThfe3Zy6KUUuXNh5LK3LLANQFN5uoK1jz7zFfLDV/dtDxiWozAnvdxoxxwWg+n1vxOqzUoa23hie2ZaGOQJJm4+KIfSWeyEaiKrepI0sr8Ya/Y0ag5lNCQX/PFcx7jl8YCPCZpL86g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VLGcYkiiYF4doTj2qCswPYQXZC+6ClCjEmjxsdngwLs=;
 b=oRrBs+3YqRhcdY5yX4oskCdRGQ2+QjMPuh32DmNUlCkmbkweaZ9qN1F+N8eQutJygerKqBr1CZc3UNIUCAjLxPDfgEnEfUpZbc7a8Mg+yOvibkSyrPoOnfMwOzil2RwjXQXVdXua5ci7sRylQ3ifiBoJSj0SAv+oqUq6owSu7KXm2zGOJHpBFY8ZdfhDkhREt1eVrSv2VYr26nkAFhFmKfoAFJrKtjqjaI1UPp5HwPjCAa295cT8y1emdqIne8eLGUZjAO26N9OgxlndHNrPH6vCMITE1Na3Oo6sMfFfkGGMHQcgwGrqQUuhAvWZfHxcG7L1GReMxMDvt4mmcIN3kw==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com (2603:10a6:10:3dd::13)
 by DU0PR03MB9055.eurprd03.prod.outlook.com (2603:10a6:10:47f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Tue, 14 Mar
 2023 18:50:53 +0000
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::dbcf:1089:3242:614e]) by DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::dbcf:1089:3242:614e%4]) with mapi id 15.20.6178.024; Tue, 14 Mar 2023
 18:50:53 +0000
Message-ID: <7c7311ad-fbdf-3c7e-dab5-28a562fb7e8d@seco.com>
Date: Tue, 14 Mar 2023 14:50:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v11 03/13] dt-bindings: Convert gpio-mmio to yaml
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-phy@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Camelia Alexandra Groza <camelia.groza@nxp.com>,
 Madalin Bucur <madalin.bucur@nxp.com>, Bagas Sanjaya <bagasdotme@gmail.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, =?UTF-8?Q?Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 Jonas Gorski <jonas.gorski@gmail.com>, linux-gpio@vger.kernel.org
References: <20230313161138.3598068-1-sean.anderson@seco.com>
 <20230313161138.3598068-4-sean.anderson@seco.com>
 <684eb04d-aeaa-07e1-34d6-783e85e379f0@linaro.org>
 <3c19e6d2-4df2-6187-36d5-98ceef07235a@seco.com>
 <ad56ca5e-03f7-5e3d-6547-91c64fdb08d3@linaro.org>
From: Sean Anderson <sean.anderson@seco.com>
In-Reply-To: <ad56ca5e-03f7-5e3d-6547-91c64fdb08d3@linaro.org>
X-ClientProxiedBy: BLAPR05CA0032.namprd05.prod.outlook.com
 (2603:10b6:208:335::13) To DB9PR03MB8847.eurprd03.prod.outlook.com
 (2603:10a6:10:3dd::13)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 	DB9PR03MB8847:EE_|DU0PR03MB9055:EE_|AM6EUR05FT059:EE_|AS8PR03MB8975:EE_
X-MS-Office365-Filtering-Correlation-Id: ec775a9e-45d7-4b68-5021-08db24bd0cad
X-TrendMicro-CAS-OUT-LOOP-IDENTIFIER: 656f966764b7fb185830381c646b41a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:  Q3L1DzmApxWxrbNWF6Sz9PBBv3LUsn9fcSEdGF2PDn/rG08cpyQ57MMn4gqEyTP6uBg73L0lalhodcr+5t+QpFJThVWUGvKKVLqFZPCNd3i4bWoeDCyff36SL+G/s75kJNkUkD6+iCwLtuQOmUGewZD64TYlL8KSOeKEmGYToBgG2K2BY5SzXkOz83rqMhSaRvQGlOuzt55wiy08ZCDZMu1ZpEr0o5KrRLXuBVvl5hHmm58OmZZhbp3wTKaNkgsUa4bpAfLdzI8u89SUM4f9HI/Ug8ZWH1bIhZ28EwFl672Ya0VCH1DlC0ubrTsWTWhhLiva6ezT5DyTNZ+LbL/cx6KosXeNLGxr8olfxGPoH9o//8x1bTOR51akMePK5Upoywn7tI14e4jOypeHyV7qHyxPclH2eg4xyI/8xKAsEJ/PdJCvMwnWoDnkWp+jeNAjv+SXxUFeljiR0ITMgqgyd0Ds3xBp1rcubDHnzDM9DqVcxGIP1AEDF3RyZ+Xr57faQT0iAg7UDvxSQFDpX8GY1SEx1Oq1QF61jESBaDJ+P33paLj6tAgO2TGI09iTeGqH1gSpjIrLbYmlOobopl4Hs2H05woTIdNxAlBJzEIi2VhiZfQGpFk5MGwhj4ipxMSa6qAwywbmBmn7SAGAlCp1/tE0gthxsgSTiSWUMPfPaZHp2vJ5bQeOXfUwuIQbZFHDyQraz+CN05hI7XRfwk8MC1oSM2lZgg5fGM7SJNLlzvcuSsIrXUfipGZ/gNLDmPZ4QoxDXILgOCEAmIILLMqgXg==
X-Forefront-Antispam-Report-Untrusted:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR03MB8847.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(376002)(366004)(136003)(39850400004)(396003)(346002)(451199018)(31686004)(8936002)(4326008)(5660300002)(7416002)(2616005)(26005)(6506007)(53546011)(186003)(6512007)(41300700001)(31696002)(36756003)(86362001)(44832011)(83380400001)(2906002)(66946007)(110136005)(66476007)(8676002)(66556008)(6486002)(6666004)(52116002)(316002)(478600001)(54906003)(38100700002)(38350700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR03MB9055
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:  AM6EUR05FT059.eop-eur05.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 	7b27363c-9408-4958-b651-08db24bd09ac
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	t2/ri4tOPr5bDVx4Fuc373mgRtukkDeKY7OcazYBqy8SoPHfQab9CiwRpBddB75OCAenvKul2NhhpytZPltU9kr7KlrGj4JF1YX+BunjjrpnN3cPfU/1pxeSSQzPVzrVRV0tDgDqMWoVUZ4Y0DGqCYHN2B/bwyP9sBbZRNQwp0RsJGrNFkEgd4ydVgwBRyB9rUtFxpFTzQeAZ2WdiSnfMdTa1S43IY5jUZa36fYeM3GjkmSpkD1As4otoXzN72EbDxwvuHto+cJYwCD1KCuQ12p8NU0rfsncVA3n7SyALQyoTcCAu1B2BW2o/KEQ40jMqs/17hIu2gOyOEJcCfFuQ9sWESkyI5b6IWSSJLN28Oa3FJVBAwuYNFosE/S+9XyxLZ5ZwisAEgp+X3uDx70LGTesON2lBoPjBWHPkcTJzmX6oxGVX9+WkK/YZhxT41d4YpanhF/ZhYt8usP1xjSu6G2Dww2bi/aSWW6ZxxJQKeVJa5uokoItyvoimmlTHP6en1EvzKd8k5rCeh4N+8PhoqE2CmjVYaTce6nKJZ5DTkTk9uLWZjvSHxMJ7vCti3LokVo6UtitXQWQM+9KbhZSgbL8nDP5E11VYjPcK1vF/X2gUvguiHnRmo+RoYCm+YmMCgTDu+yOfkW14Y9XRTWAcMP/sjmUpRw/G/8iHJypSu3oEQgMKlwrgepL5Hetzu6/Dhm0UYtZpL2WKREex0YCgw25fDaHOruLwCBNsERb/zqjJTrvPpZK13MbHw0u1OIAAXawX/O8xN/9UAn4JnqYizmMpNANr4TsEqbL0c6PMes=
X-Forefront-Antispam-Report: 	CIP:20.160.56.81;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:inpost-eu.tmcas.trendmicro.com;PTR:inpost-eu.tmcas.trendmicro.com;CAT:NONE;SFS:(13230025)(136003)(396003)(39850400004)(376002)(346002)(451199018)(5400799012)(40470700004)(46966006)(36840700001)(82310400005)(86362001)(356005)(31696002)(40480700001)(36860700001)(7596003)(7636003)(34020700004)(82740400003)(36756003)(40460700003)(110136005)(54906003)(8676002)(4326008)(8936002)(70586007)(70206006)(41300700001)(478600001)(6506007)(316002)(2906002)(44832011)(5660300002)(7416002)(336012)(47076005)(2616005)(83380400001)(186003)(26005)(6512007)(53546011)(6486002)(6666004)(31686004)(43740500002)(12100799021);DIR:OUT;SFP:1501;
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2023 18:50:58.2848
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ec775a9e-45d7-4b68-5021-08db24bd0cad
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bebe97c3-6438-442e-ade3-ff17aa50e733;Ip=[20.160.56.81];Helo=[inpost-eu.tmcas.trendmicro.com]
X-MS-Exchange-CrossTenant-AuthSource: 	AM6EUR05FT059.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB8975
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_115108_229230_5CF82992 
X-CRM114-Status: GOOD (  12.90  )
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

On 3/14/23 14:32, Krzysztof Kozlowski wrote:
> On 14/03/2023 19:09, Sean Anderson wrote:
>> On 3/14/23 13:56, Krzysztof Kozlowski wrote:
>>> On 13/03/2023 17:11, Sean Anderson wrote:
>>> +  reg-names:
>>>> +    minItems: 1
>>>> +    maxItems: 5
>>>> +    items:
>>>> +      enum:
>>>
>>> Why this is in any order? Other bindings were here specific, your 'reg'
>>> is also specific/fixed.
>> 
>> Some devicetrees have dirout first, and other have dat first. There is no
>> mandatory order, and some registers can be included or left out as is
>> convenient to the devicetree author.
>> 
>> reg is not specific/fixed either. It is just done that way for
>> convenience (and to match the names here).
> 
> The items have order and usually we require strict order from DTS,
> unless there is a reason. If there is no reason, use fixed order and
> then fix the DTS.

The items do not have order. That is the whole point of having a
separate names property. The DTs are not "broken" for taking advantage
of a longstanding feature. There is no advantage to rewriting them to
use a fixed order, especially when there is no precedent. This is just
an area where json schema cannot completely validate devicetrees.

--Sean

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
