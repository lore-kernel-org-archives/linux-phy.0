Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FD93C77B6E
	for <linux-phy@archiver.kernel.org>; Thu, 13 Apr 2023 16:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uJYkLngcG6PkoHOCeUO8bWcpQDbgbX2fBkO6WAvkzlY=; b=kmspQcB1cJxSnB5ipHFwYoLYHU
	XwqJwDky//cR22rgyKJnFJfuq8r4wbCjFOA7a1g23Ax9pKW3WwjxWl43SlIyu/rhutz5eBdORqTJ2
	l5mMy8Vvys8iuq1JJCnjQ10SCTmLwi/8J+UfB6mwWr6WlCSDapBhd+jdlUYf/Nq1MiKLvOF5EwUD1
	6QXeEDMJyNmX+R9UCmWZUnb8+SVEebl12ZPdN4AhYM8g4xF01jVTmmflYvx05gpnhSUkHXiyjnjvK
	81KAy60n+lvPd+6yGZd9a1G+IC77j293K7bqTyry7JJUcQth8S6GO/2+6dj9SBiAx5WgDuhSXevR6
	i/gAMsew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmzNT-006YAR-0i;
	Thu, 13 Apr 2023 16:00:51 +0000
Received: from mail-am7eur03hn20315.outbound.protection.outlook.com ([2a01:111:f400:7eaf::315] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmzNO-006Y9T-2N;
	Thu, 13 Apr 2023 16:00:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1o6eO9AyHpg8fLI7uLH1x0GDM3hiqBLmkTNaR9raDnY=;
 b=JOgnrEGGKhVDIccDedewCr/k/hKI28UjeJR/g0PPcLgrMLaQMrOiLrD/ahxdt80s6NVJT8SGnYtY8eoNuK9621VfVgfSHsthTQuiooyChZUpm0uY9SG2d7ONio13GKxWLrUNv9D4fMx9hHV/JM+cZULUZ5dZBmjH8/7RxoB3rGPZreWuHSJwdoE4gwwfhvT+QxFWGKejykmxf0XK6i8T9UPhRA/eGfjW+aH83o+RRqLihQX9HlLlbBV5/WJqmLR7FCYsQlrPPXo3GevwgyS8GnWSRgJqyfx58Pqfgd7G1DtlzBnxffBbE5ly2EG4PlyIDis5pctTwYCnKPDW3jRtZA==
Received: from DB8PR09CA0001.eurprd09.prod.outlook.com (2603:10a6:10:a0::14)
 by DB9PR03MB7690.eurprd03.prod.outlook.com (2603:10a6:10:2c6::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 16:00:42 +0000
Received: from DB8EUR05FT067.eop-eur05.prod.protection.outlook.com
 (2603:10a6:10:a0:cafe::8d) by DB8PR09CA0001.outlook.office365.com
 (2603:10a6:10:a0::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.32 via Frontend
 Transport; Thu, 13 Apr 2023 16:00:42 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.160.56.80)
 smtp.mailfrom=seco.com; dkim=pass (signature was verified)
 header.d=seco.com;dmarc=pass action=none header.from=seco.com;
Received-SPF: Pass (protection.outlook.com: domain of seco.com designates
 20.160.56.80 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.160.56.80; helo=inpost-eu.tmcas.trendmicro.com; pr=C
Received: from inpost-eu.tmcas.trendmicro.com (20.160.56.80) by
 DB8EUR05FT067.mail.protection.outlook.com (10.233.238.176) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.32 via Frontend Transport; Thu, 13 Apr 2023 16:00:41 +0000
Received: from outmta (unknown [192.168.82.135])
	by inpost-eu.tmcas.trendmicro.com (Trend Micro CAS) with ESMTP id AA0B02008026F;
	Thu, 13 Apr 2023 16:00:41 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (unknown [104.47.17.176])
	by repre.tmcas.trendmicro.com (Trend Micro CAS) with ESMTPS id 594EC2008006F;
	Thu, 13 Apr 2023 16:01:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OIHNbHpovov/YUWy/0nNmWupseieanfZDRA4pvQVckhfE1YrXgMWTysRwGG627EREYgGJLgNiOq55jK2zl2e0ENA30AD6VkNI54EDqkbySxPo1wAV74HjLP32t9RdifdqoctHLa51CzIlxoGpk1gMvU+izQszsXA0VuW0Z3uYrh3Axy7wQsFXxeO8pyt3QPrpI+VtZaWKDK1H+EaCYe2KretxtCMvwNo9Zam+b48OwNoHEEBRrroYYIydnW73ZxcqojhP5pHcJE3IWJP2vFrWcWquRx16+QiHcce61jliBcmTaSnGOivlXwnuSLqfHESubsVR0pe3iXNHGUiPUba1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1o6eO9AyHpg8fLI7uLH1x0GDM3hiqBLmkTNaR9raDnY=;
 b=crbWJOH4R8VfO1KWrcEGsgB+869ZKgvQBc5XPgMlvyCBME6Q/KECn+jbkgm++e3xtraOtxdG5wYDlxETwysaQ89tGGrEa3Oy9HHzOPeFrComvZOUDSPHl8AAs6RVizDTmvUF5KbGtnV6Y+cWX/dFA2BopUyUM67rf8sAo7PFpvhFYseC6C2i8HFpEg8OTO2WAP3Un/21vLWOct70vUZHADwQbxZ7sXCVnNLeo7PaR469amSH2aRtcEHYRdr01Yl+GIx31wE6ZwepwGCj1jekpQbOM1KuFVZ/i27mVgrAWp86qD/x0rmRNzhUTr+k17O9RmnYAjhhNhSJGZPZFpT0hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1o6eO9AyHpg8fLI7uLH1x0GDM3hiqBLmkTNaR9raDnY=;
 b=JOgnrEGGKhVDIccDedewCr/k/hKI28UjeJR/g0PPcLgrMLaQMrOiLrD/ahxdt80s6NVJT8SGnYtY8eoNuK9621VfVgfSHsthTQuiooyChZUpm0uY9SG2d7ONio13GKxWLrUNv9D4fMx9hHV/JM+cZULUZ5dZBmjH8/7RxoB3rGPZreWuHSJwdoE4gwwfhvT+QxFWGKejykmxf0XK6i8T9UPhRA/eGfjW+aH83o+RRqLihQX9HlLlbBV5/WJqmLR7FCYsQlrPPXo3GevwgyS8GnWSRgJqyfx58Pqfgd7G1DtlzBnxffBbE5ly2EG4PlyIDis5pctTwYCnKPDW3jRtZA==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com (2603:10a6:10:3dd::13)
 by AS8PR03MB9557.eurprd03.prod.outlook.com (2603:10a6:20b:5a5::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.28; Thu, 13 Apr
 2023 16:00:34 +0000
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::2226:eb03:a8c:a7e5]) by DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::2226:eb03:a8c:a7e5%2]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 16:00:34 +0000
Message-ID: <ca621582-a0c8-ac43-3260-9ebd5178019e@seco.com>
Date: Thu, 13 Apr 2023 12:00:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v13 03/15] dt-bindings: Convert gpio-mmio to yaml
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-phy@lists.infradead.org
Cc: Camelia Alexandra Groza <camelia.groza@nxp.com>,
 Bagas Sanjaya <bagasdotme@gmail.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Madalin Bucur <madalin.bucur@nxp.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linuxppc-dev@lists.ozlabs.org, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, =?UTF-8?Q?Fern=c3=a1ndez_Rojas?=
 <noltari@gmail.com>, Jonas Gorski <jonas.gorski@gmail.com>,
 linux-gpio@vger.kernel.org
References: <20230411184313.3679145-1-sean.anderson@seco.com>
 <20230411184313.3679145-4-sean.anderson@seco.com>
 <848f5e3e-44ca-3648-2d6b-7e06ce7b5cda@linaro.org>
From: Sean Anderson <sean.anderson@seco.com>
In-Reply-To: <848f5e3e-44ca-3648-2d6b-7e06ce7b5cda@linaro.org>
X-ClientProxiedBy: BL0PR0102CA0057.prod.exchangelabs.com
 (2603:10b6:208:25::34) To DB9PR03MB8847.eurprd03.prod.outlook.com
 (2603:10a6:10:3dd::13)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 	DB9PR03MB8847:EE_|AS8PR03MB9557:EE_|DB8EUR05FT067:EE_|DB9PR03MB7690:EE_
X-MS-Office365-Filtering-Correlation-Id: 941c2db7-dc38-41b1-c9cc-08db3c383baf
X-TrendMicro-CAS-OUT-LOOP-IDENTIFIER: 656f966764b7fb185830381c646b41a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original:  Wn2mHHyAZjf4pQ3FgrzibXODc61lYLNPWDB8IuAUGMc1PyMccYAal2/xdhnZVsXLk4GjnMsPlDqfJfx6xJ8ozlhU2vvnK985ahHjcNuulqAMQEdKxq9I+0n3yyezjHXk3wmgR2kkuzfPibyflFbdEVJQywbr5Q9a3WbQcoHhrbkSFMlW7B/gJ1G4zHZUXUzsNbI6Iz96foCcRumbJTielQ0nU68Tah7JEMGL8vWgFiM+zkPaUpgF0zqno6L8LlKe9cjDhVK/kwqHnwJbJ71tIlAGAcU+MQKXDvrMhTbE67KvKgc3l/R7zEcf3qgyNgHtpMagW4bITkLlr/t7j/ZcBTh/ojuTLONpZDNeF+c8li/EMm/5fMcG4yt0u5d0Hcxc0Yu3PG6Pg3dj5Nj+16cAilk5bFxITr0I9ewi64UumJc88w+H36/Cd/PVGYzyWBmD3/5U4Ld6CccRVHtM8ToymcthQalcrIKGubyKb+Bh2i1ZrkucSO1Ff468VPewzL7+nyxLX82jnrsGJVMHFJrV0Nlyx2Jt148EbIZ3GO4CEfmiwVKH4wUrZ0HUaYBWad4t9uJrKWIse6zcHfJ8/NonyHOQgxrdpBzA0uElZd+65ZLxO38as0nmXVi6gvDfg2h6A77Im4/VM/e33O1tUrpd04RjD0FvdNszy7UQ/6GCf9yhCHfh95WAnlzF5bt980B7
X-Forefront-Antispam-Report-Untrusted:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR03MB8847.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(136003)(396003)(39850400004)(376002)(346002)(366004)(451199021)(54906003)(110136005)(316002)(6512007)(6666004)(6506007)(26005)(53546011)(478600001)(31686004)(41300700001)(83380400001)(2616005)(6486002)(186003)(66946007)(52116002)(66476007)(66556008)(4326008)(5660300002)(44832011)(7416002)(8936002)(38350700002)(8676002)(38100700002)(2906002)(86362001)(31696002)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB9557
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:  DB8EUR05FT067.eop-eur05.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 	1a7325ab-637e-4191-8030-08db3c3836ca
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	0OF+U3ETzGITsUJgQG1Htw2ktz/GMPCK7OzqJejkOTUsSxbPOpZmxCZc04Xs0s1+n9JtXXIltZT660hubn1kp4E9wh5cBtsGSTFtP0QP0RPGIIeGk9IMysPQ+5CDG3LH14IDfOt3A2Tg0fIrBPiTnRYBWKsvLvkSWLONg9C//k/32WwbRo8XUdwr89v1UtkfoRYFzpbS8B9Ar7Cm2vGdM0Cr6fp01hxCHjRSwSugDtDgilHLmWSLIKyXUWk4NEDq2p1afaXIhddL1tqES3jn8ufS32PA91jpMi1LzhYwZ/CcWzB+YTrxEjw02ZhCj0x5MhFzE8b7kbxI/Gx1fVk+xygoZmN0su+JcxQl9QrzeVl1KTYQf3+6cmbvmeWUCJJ2Ie2hohDSs2vgnoODloTaK6TPEkXzuVb/C1qDvI0sHfd4Pwu9jevLK2ln8rCTDrWMn3veJH+1MAzD5dmsEQ+mxHNSzRTBUI8VGQRnSIJTgJmomZGW36inlOyGjHDpsGuRxxg/sOowJqWaADQtI07RqI3W2AlZWUr6zXSRkp3chronsP8QGC3Tqj8MQE4aM1e9ULEvAY9MmUNHSSdc9x1D/dJ/noowFP+Y33lrfiRRCxVxNHHkuQZRRVxeoWvxlOriccRntuQNNUM3T+Vy8hBejPeBr33qAn+ZImVk82rQ4yKTTonMLuYAI9bLOkXj0yC1fU8JOQDCjAwmsihUiLhCqpW5JhMVEhjUwRSdvbNJzmNxd+o/Ky333LVnvLV7jLevo+hcIIpVc+Py0PbDACxxV7wj812LWBau2EemocjB3t4=
X-Forefront-Antispam-Report: 	CIP:20.160.56.80;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:inpost-eu.tmcas.trendmicro.com;PTR:inpost-eu.tmcas.trendmicro.com;CAT:NONE;SFS:(13230028)(376002)(136003)(39850400004)(346002)(396003)(5400799015)(451199021)(46966006)(36840700001)(40470700004)(86362001)(54906003)(44832011)(110136005)(7416002)(40460700003)(34070700002)(7596003)(478600001)(7636003)(356005)(316002)(41300700001)(82740400003)(8676002)(8936002)(5660300002)(70206006)(40480700001)(70586007)(31696002)(53546011)(6512007)(6506007)(36756003)(26005)(336012)(31686004)(186003)(36860700001)(4326008)(6666004)(83380400001)(2906002)(2616005)(6486002)(82310400005)(47076005)(43740500002)(12100799027);DIR:OUT;SFP:1501;
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 16:00:41.9331
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 941c2db7-dc38-41b1-c9cc-08db3c383baf
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bebe97c3-6438-442e-ade3-ff17aa50e733;Ip=[20.160.56.80];Helo=[inpost-eu.tmcas.trendmicro.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DB8EUR05FT067.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR03MB7690
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_090047_111525_9C5BA32D 
X-CRM114-Status: GOOD (  13.94  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gNC8xMi8yMyAwNDowNCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAxMS8wNC8y
MDIzIDIwOjQzLCBTZWFuIEFuZGVyc29uIHdyb3RlOgo+PiBUaGlzIGlzIGEgZ2VuZXJpYyBiaW5k
aW5nIGZvciBzaW1wbGUgTU1JTyBHUElPIGNvbnRyb2xsZXJzLiBBbHRob3VnaCB3ZQo+PiBoYXZl
IGEgc2luZ2xlIGRyaXZlciBmb3IgdGhlc2UgY29udHJvbGxlcnMsIHRoZXkgd2VyZSBwcmV2aW91
c2x5IHNwcmVhZAo+PiBvdmVyIHNldmVyYWwgZmlsZXMuIENvbnNvbGlkYXRlIHRoZW0uIFRoZSBy
ZWdpc3RlciBkZXNjcmlwdGlvbnMgYXJlCj4+IGFkYXB0ZWQgZnJvbSB0aGUgY29tbWVudHMgaW4g
dGhlIHNvdXJjZS4gVGhlcmUgaXMgbm8gc2V0IG9yZGVyIGZvciB0aGUKPj4gcmVnaXN0ZXJzLCBh
bmQgc29tZSByZWdpc3RlcnMgbWF5IGJlIG9taXR0ZWQuIEJlY2F1c2Ugb2YgdGhpcywgcmVnLW5h
bWVzCj4+IGlzIG1hbmRhdG9yeSwgYW5kIG5vIG9yZGVyIGlzIHNwZWNpZmllZC4KPj4gCj4+IFJl
bmFtZSBicmNtLGJjbTYzNDUtZ3BpbyB0byBicmNtLGJjbTYzeHgtZ3BpbyB0byByZWZsZWN0IHRo
YXQgYmNtNjM0NQo+PiBoYXMgbW92ZWQuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBTZWFuIEFuZGVy
c29uIDxzZWFuLmFuZGVyc29uQHNlY28uY29tPgo+PiBSZXZpZXdlZC1ieTogTGludXMgV2FsbGVp
aiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgo+PiAtLS0KPj4gTGludXMgb3IgQmFydG9zeiwg
ZmVlbCBmcmVlIHRvIHBpY2sgdGhpcyB1cCBhcyB0aGUgcmVzdCBvZiB0aGlzIHNlcmllcwo+PiBt
YXkgbm90IGJlIG1lcmdlZCBhbnkgdGltZSBzb29uLgo+PiAKPj4gQ2hhbmdlcyBpbiB2MTM6Cj4+
IC0gRml4IHJlZmVyZW5jZXMgdG8gYnJjbSxiY202M3h4LWdwaW8ueWFtbCAobmVlzIEgYnJjbSxi
Y202MzQ1LWdwaW8pCj4gCj4gWW91IGdvdCBzb21lIG9mIHRoZSBzYW1lIGVycm9ycyBhcyBsYXN0
IHRpbWUuCgpUaGVzZSBhcmUgZGlmZmVyZW50IGVycm9ycy4KCj4gVGVzdCB5b3VyIHBhdGNoZXMg
YmVmb3JlIHNlbmRpbmcuCgpJIHR5cGljYWxseSBydW4gZHRfYmluZGluZ3NfY2hlY2sgd2l0aCBE
VF9TQ0hFTUFfRklMRVM9Li4uIGJlY2F1c2UKcnVubmluZyB0aGUgd2hvbGUgdGhpbmcgdGFrZXMg
bG9uZ2VyIHRoYW4gY29tcGlsaW5nIGEga2VybmVsIGZyb20Kc2NyYXRjaC4gSXQgc2VlbXMgSSBu
ZWdsZWN0ZWQgdG8gcnVuIGl0IG9uIHRoZSBhZmZlY3RlZCBzY2hlbWFzLgoKLS1TZWFuCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
