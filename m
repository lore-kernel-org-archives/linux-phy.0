Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C64DC742A7
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 16:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8ifGQ0GCKXpy3GGq2/Eet13eGqWvpg4sucTIs0C7mK8=; b=WhXY/93OX8jsRn3i3SJOID41bv
	3HFXaquXZoLDm0mTnfC0dhrsS2SXeaniHhVsOn+Bp3w7aUpmAEWgSta5VfEXEHvL5ERyOoioPuLJ+
	GgaJpuSs+8HPLPqghUio0rLPYEc5SyHopM7/o7SWfDnwrqmRLOpO2V5WeslTnTv1TWujVALymhWbb
	6zi6WI6teA+XrQw6F9Jg698UxOKkYmdIG+jQJzLJKBOBoB4D/mKzi08c72i7ZNpIPDi7hnBZXzFGT
	qACxDgUomVL7RQrQDAU06ebSkTLmLJcl85eJwebB+H5tVyal4jvXcSbjAnWV9HdLSW1LMd1tssPxY
	qTxZw4vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paIky-00BAIo-9M; Thu, 09 Mar 2023 16:04:40 +0000
Received: from mail-am6eur05on2062d.outbound.protection.outlook.com ([2a01:111:f400:7e1b::62d] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paIkB-00B9T0-C4; Thu, 09 Mar 2023 16:03:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ALCbnx/smOEUD8fsEGhFxz5JxREqNJG20b3cNxCGL7L8tc0ytZEbIpN7r3RWwJ4L9l2akqeB3oUCjgOIF25M6bbe/Y3owLCzMwis0yZXgBXWxtmfgVDOP2NKjCTnxpexGcR4ggUEhUHI0OAB4xu4pmvrBJcsyMLW+yY0KCudZqOVYaUPl6slzvJGP3CZRIeVeJhbSYoqOkXf9yJnxFbWA3bvueOO6NTx8MSHb83kER8DRLfy6gubNeEoEfIDSip7t4wPW/OZJYo3RRKeN0udEKM+PyzQdYunIZ/JLt9zLZK6Oj8CclQaaAtUGx4GPJ/CqL4wd++Vx+jJsbXFOZ1Wrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MBzFW3D4ZBMThKsdB4MrbTfftRdYBzghjEmDWMVN+1E=;
 b=fC3R4OTBvaA05yd2hn/QBhIOI1oPhA+kNo3Qk0KVJmcOmjCHlEv5/0RAf1aZ8060LHQeEK+jYdge5OFG3uxn9qnnxCODTy6jLokFXFM4XzKtQgfF/7RxNGo3/CCf8QanrVuixDH6sylwB1G8VWriLZ8yjOmOYt/DqdEIzM+o6iD1LxXRQyFirGm7Z5tLsyzmQVmJBGTmRPZ5WqFovBvQUFzz6OswioGrBiDcP1dgOWfVsYsQOQzwWSkFU+GylCoFz2YRNmdrN9QhNSUBzxIlh92TBTq+oDsyxnIIWYMn7zrq+KwRathk2cfs5jxsOuiDSTQJtj17T9yhCyQT7kd45g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MBzFW3D4ZBMThKsdB4MrbTfftRdYBzghjEmDWMVN+1E=;
 b=EFI1fAnk8itR0y22u5ancy4ptW6WRGnz1IPSAwk22Cekpc0mvKWArqSQO54zaFJB8HScXQgSWlRWcOXBY/lr3L//ja0TZ6b6aSWeKz7bAp9uBSExY/tACedNZ+vawluBIN7fhtdxQkPV18ZAsRqKBLCNJ1ar9bpA4p/i0VHavPeuMTm8HlSOpcmd+u1evAHN9RIWX9J1+51/9O2njxHF3hirruK5t80WyBWUozoEfWU3lH5WT+vlk9ZrEUDQmwaTNBoPemRlB6e7tC2A04bkryyBRiL7V35B2jnTfHhpFnQSEQ5kzLY3gLjHYtlE16QZEnl97B6bRs5k+LgXv8YMPg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com (2603:10a6:10:3dd::13)
 by PAVPR03MB9211.eurprd03.prod.outlook.com (2603:10a6:102:325::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Thu, 9 Mar
 2023 16:03:44 +0000
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::dbcf:1089:3242:614e]) by DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::dbcf:1089:3242:614e%5]) with mapi id 15.20.6156.027; Thu, 9 Mar 2023
 16:03:44 +0000
Message-ID: <4fbd84ff-8a0c-669c-2f27-d542640ded24@seco.com>
Date: Thu, 9 Mar 2023 11:03:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v10 03/13] dt-bindings: Convert gpio-mmio to yaml
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, linux-phy@lists.infradead.org,
 Madalin Bucur <madalin.bucur@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Camelia Alexandra Groza <camelia.groza@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Bagas Sanjaya <bagasdotme@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, =?UTF-8?Q?Fern=c3=a1ndez_Rojas?=
 <noltari@gmail.com>, Jonas Gorski <jonas.gorski@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org
References: <20230306191535.1917656-1-sean.anderson@seco.com>
 <20230306191535.1917656-4-sean.anderson@seco.com>
 <20230308231018.GA4039466-robh@kernel.org>
From: Sean Anderson <sean.anderson@seco.com>
In-Reply-To: <20230308231018.GA4039466-robh@kernel.org>
X-ClientProxiedBy: BL1PR13CA0386.namprd13.prod.outlook.com
 (2603:10b6:208:2c0::31) To DB9PR03MB8847.eurprd03.prod.outlook.com
 (2603:10a6:10:3dd::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR03MB8847:EE_|PAVPR03MB9211:EE_
X-MS-Office365-Filtering-Correlation-Id: 50de237c-7647-434c-bec5-08db20b7dbc9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	83O6ltIldWTsDkxp0qFDA5Yk/RwWUyCZOdXTssY1ubVcX9nUB2x/NX7oOpcMxQw02uwugujGPafK/68MxGy/Dzo6VfVYByWjFQDU3PMvXSHvPaZvt0G6zkpRdTMH+P6f3cVUUAoogA1gZDPaXnatd/YeyynyCvUR2RCEN81RpZIqI1cP2KkXHtFDrqQcgtQt9JGqzQdmo70TXjRJP1UyWdP7JBHvvIQ7IHGa5T1R+6vrFsoFumcbhUtwETFj8tz+LDV+fIdd4nwpRubC3l2VhSorUuq6LCWxR+QXOXyDzEeIMN93LNUWhAXhLltfWHlcuc9QJToy4jbIVOI5WRQvBXlG8BtneQ7P9rGK1Gl7OAS1lL7hHVX/PKlyKGDC+/IInCRrkOIzDHt0O/yhVc2ijqNbxM3gacXrtzv2IseGmAGMTQUqYOP2+YzWpcdu/HEJ8RbzpxslAyg5HnMMwGevhcZZ/sYGmdegivdtDn7a02rh9/5h8qo13ggImnsVcMIO51wCqraSj5f0IQU4UOlc63FJ2YIyb+RK4t8U6TOxHIt46MPVo68BOoklL+Marl76iDLfsf/0OJMDfKEG9yM1W/Cp/+RiEsxKXFCovn3Ng9TdU/JukEWZbWYld25uCcSz5DyZrowHsQIEAdZ9wEp7s+PmaP3XuIotZotkF+4hoegJzK4lNRWxb5WrSTArwdCU7TIr7pl8XWiJyeJCvbvbsMg5/PMbIf/PTfoTgGzkjrc8OCUM4iNObv8E8F4fisUk
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR03MB8847.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(366004)(39850400004)(346002)(376002)(396003)(136003)(451199018)(6506007)(54906003)(316002)(2616005)(83380400001)(31696002)(66574015)(36756003)(38100700002)(478600001)(6666004)(6512007)(966005)(52116002)(86362001)(38350700002)(53546011)(6486002)(186003)(5660300002)(41300700001)(44832011)(26005)(8936002)(31686004)(2906002)(66946007)(8676002)(7416002)(66476007)(6916009)(4326008)(66556008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?UE1MMGRyZmZMZk03SW8zN3lWQzVLa2thNDE0bmhqV2RzcXY3Qjg1OGFMaFRK?=
 =?utf-8?B?OW1HTkl6Ri9NMjFkcWxXbFMxd3NQd3BMOU5sdlZpRHdJbGNFQXdkV09CMTRI?=
 =?utf-8?B?RGs0bWswWFF6anVMTnpWWVk3OG41QXVUOUVoSDYvTVRUdkJKcENkcFlUeUk3?=
 =?utf-8?B?ckRwS1lXbzhOcDR1Z0RPeHEyZDhrZG54dG1FRm1LKzRySVJGRVY0emRuWEVF?=
 =?utf-8?B?QTZIYnlqcGhZNmxmM01SWU1MalVWZkFBekxtenRMa2lxSXJvVEIwaCt4WDhq?=
 =?utf-8?B?c1pqd0JvOXdLTGVGd1p0U25mZFlaVWd5WWJobEtNWTdPWmFVSTVlRi9SQkdI?=
 =?utf-8?B?c3FYeWV3ZWZBYnUwS25DNjhCSEhhMkpKNWJoRk04bVJkeGRuL3J3UkZ0TTNi?=
 =?utf-8?B?QUFKQUxFdnJ4Vno2NnBVQ2JqNCtBUTNKUERGU0R6RmRESVFXSWlOVkVjSUVC?=
 =?utf-8?B?OE5KYzlPd29aZ2crWkdweExhU3lkSGpDMHQyY3RIUHBET0VwNnlzZi9iQjhj?=
 =?utf-8?B?OVc3QVVhaEYyNy9pSG9ZMmVKVXRxa2VvbnJ1bGcrQ0JIWmQ5NEUzdGhuQVlz?=
 =?utf-8?B?VlRXT1pYZUxKdGhSdE1PN2tLekV6Vm42dndzRFJXdEtQdCszQlc1VUN2RXdC?=
 =?utf-8?B?NjVBS2lKK09QcDBBVjVYdnloa09rYzBoZSt2dXpBR1dHb2VxKy80b08xNkxr?=
 =?utf-8?B?N0ZHK0NQR0s2ZTVaK0JwL3pXbXRtMUVwN0M4czF6dUpzd2E3b3ZqTHZTY05n?=
 =?utf-8?B?K0RXS3E4Zmoxd3p0ZjJIMlBqejlDUWlac2pUTlEwWkNFc2tMSGluTUNEU3R0?=
 =?utf-8?B?ZHEwaXowemU2K0VOT2VkUUhFNWptd3dlZDloRjI1MDd4VTR1UnY5RDJxNndJ?=
 =?utf-8?B?cVJzMjBqVnU4b1p2T1N2SkhlOHI1R1crOFI4Z3Q5T3ZsTVZGbU9rSXdvUWYv?=
 =?utf-8?B?RjNXWmZEdkRBVHdnSVc1YmptazExTDJyRWJ0OElZd2FBOFB4UE9PdW1LY3Rp?=
 =?utf-8?B?S3RRUmhjanN1ZWdLT1llNmtyQTl1QndZM21FVHozWi90VjBUWUE4aU5naHJm?=
 =?utf-8?B?cVM0WU0wd2RKdnJtamt5VlJTQmtSbXJqTStnaGZpL2ZDeW1rMjhkS3JFOEJq?=
 =?utf-8?B?QzE5RXRvR0VJUys1Z1J0VExYRHQvZENlQkhxRXVnc2xUZ1VINDNUN214d055?=
 =?utf-8?B?RS94NEJBRFo5M2FOZ0RDQlB0ZDhsU2FTaFcxcWhnbzdDdkZ2Wk5lbmowKzVK?=
 =?utf-8?B?aEprbll4Y2M3ZG9lUnhyWlppMnNjUGVna01OU25aMWNKeDJEaEQ0cTZpcitz?=
 =?utf-8?B?UmgvZEd5U0lkLzlkU2VwV0QrY21wL1dUWmlMOGFCSEhQUU8xSmFsR3hoWEpU?=
 =?utf-8?B?MUpJMVUvcUprSmFNaVYvdHNSNlNBU01FUTJsZHVtUDlqQzZSd1RjZ1pZa1d1?=
 =?utf-8?B?a2tBS1JxVmJpc0pZdk9MVjRubzB0QzVraXZOUnU4RGE1c0JqMFFwWEI1a2pB?=
 =?utf-8?B?eUMxRU5CYnc0T1V4VWtEbFRja0lJT3lkdTk4OUYybjVNVDRHQmJmNnFaYW5T?=
 =?utf-8?B?ajYxQUlndzJORlFQUGNVSnphNStGNjljY1d0eXdSSkZISEIzOXNFa0hrb3p3?=
 =?utf-8?B?MHUyL1RsRGh3ZDBOSUlMQUQxcjJrNDBEOW5NR20yMEtGTlM5OXhMcWgwb3Jh?=
 =?utf-8?B?c29xR2JoeHA4UkFRdVppWXU2K1ViUEdaZE9mQURTM0hRb3Z4VVlmWEtyNGFj?=
 =?utf-8?B?SlRmZjJJcE5mTXFnb2EvQmZEdXBOK05sdHZhWkhNUnRPTm9uQWYvRkJPWUcw?=
 =?utf-8?B?emlCTXRuMW1KckU1RldyQjJ0YXZVZlEwZ29wM1gycmRWb1JNd0tjMmFZSzhT?=
 =?utf-8?B?ZmtwZG1ZTUdqTkZRZFRVVkJ1VnExcDVNdG5ENk1zOXlUSTVMN2M1bUVmK0VG?=
 =?utf-8?B?NnoyY2pNamprMzZSSGtLamJTbkFGanl1VFZLVDZXSUxyUjdCdDU3cGZLU3ph?=
 =?utf-8?B?TDZydThxOFBXQUlRUXpSeG5jTE1HNVRKM0tZaUJKTk1ickpIQ2xBNFp6Nmlw?=
 =?utf-8?B?TDkxbkhRaVRYYlpZME1MN0NjM3FtNjErSG9HTmdDUlFWT3o2cy9NSGl4RERv?=
 =?utf-8?B?dWhjOWxNaEtIUk13aC94MHJ4a0J2eDdOcjRHejdMcFMzeGh4SmJxMmluNzdi?=
 =?utf-8?B?b3c9PQ==?=
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50de237c-7647-434c-bec5-08db20b7dbc9
X-MS-Exchange-CrossTenant-AuthSource: DB9PR03MB8847.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 16:03:44.3623
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vpxjVuQMjpDNELPdFubUJlKWrhUb5iij9K0988IUjUjlWodH4e5+qrNK1L3wz90SnvkjX7kMhHTZRlXZUmasrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR03MB9211
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_080351_953423_A1B747C4 
X-CRM114-Status: GOOD (  18.00  )
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

T24gMy84LzIzIDE4OjEwLCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBNb24sIE1hciAwNiwgMjAy
MyBhdCAwMjoxNToyNVBNIC0wNTAwLCBTZWFuIEFuZGVyc29uIHdyb3RlOgo+PiBUaGlzIGlzIGEg
Z2VuZXJpYyBiaW5kaW5nIGZvciBzaW1wbGUgTU1JTyBHUElPIGNvbnRyb2xsZXJzLiBBbHRob3Vn
aCB3ZQo+PiBoYXZlIGEgc2luZ2xlIGRyaXZlciBmb3IgdGhlc2UgY29udHJvbGxlcnMsIHRoZXkg
d2VyZSBwcmV2aW91c2x5IHNwcmVhZAo+PiBvdmVyIHNldmVyYWwgZmlsZXMuIENvbnNvbGlkYXRl
IHRoZW0uIFRoZSByZWdpc3RlciBkZXNjcmlwdGlvbnMgYXJlCj4+IGFkYXB0ZWQgZnJvbSB0aGUg
Y29tbWVudHMgaW4gdGhlIHNvdXJjZS4gVGhlcmUgaXMgbm8gc2V0IG9yZGVyIGZvciB0aGUKPj4g
cmVnaXN0ZXJzLCBzbyBJIGhhdmUgbm90IHNwZWNpZmllZCBvbmUuCj4+IAo+PiBTaWduZWQtb2Zm
LWJ5OiBTZWFuIEFuZGVyc29uIDxzZWFuLmFuZGVyc29uQHNlY28uY29tPgo+PiAtLS0KPj4gCj4+
IENoYW5nZXMgaW4gdjEwOgo+PiAtIE5ldwo+PiAKPj4gIC4uLi9iaW5kaW5ncy9ncGlvL2JyY20s
YmNtNjM0NS1ncGlvLnlhbWwgICAgICB8ICAxNiArLS0KPj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2dwaW8vZ3Bpby1tbWlvLnlhbWwgICB8IDEzNiArKysrKysrKysrKysrKysrKysKPj4gIC4u
Li9iaW5kaW5ncy9ncGlvL25pLDE2OTQ0NS1uYW5kLWdwaW8udHh0ICAgICB8ICAzOCAtLS0tLQo+
PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvZ3Bpby93ZCxtYmwtZ3Bpby50eHQgIHwgIDM4IC0t
LS0tCj4+ICA0IGZpbGVzIGNoYW5nZWQsIDEzNyBpbnNlcnRpb25zKCspLCA5MSBkZWxldGlvbnMo
LSkKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZ3Bpby9ncGlvLW1taW8ueWFtbAo+PiAgZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL25pLDE2OTQ0NS1uYW5kLWdwaW8udHh0Cj4+ICBk
ZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8v
d2QsbWJsLWdwaW8udHh0Cj4+IAo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2dwaW8vYnJjbSxiY202MzQ1LWdwaW8ueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL2JyY20sYmNtNjM0NS1ncGlvLnlhbWwKPj4gaW5kZXgg
NGQ2OWY3OWRmODU5Li5lMTFmNGFmNDljNTIgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL2JyY20sYmNtNjM0NS1ncGlvLnlhbWwKPj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vYnJjbSxiY202MzQ1LWdwaW8u
eWFtbAo+PiBAQCAtNCw3ICs0LDcgQEAKPj4gICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3Nj
aGVtYXMvZ3Bpby9icmNtLGJjbTYzNDUtZ3Bpby55YW1sIwo+PiAgJHNjaGVtYTogaHR0cDovL2Rl
dmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4+ICAKPj4gLXRpdGxlOiBCcm9h
ZGNvbSBCQ002MzQ1IEdQSU8gY29udHJvbGxlcgo+PiArdGl0bGU6IEJyb2FkY29tIEJDTTYzeHgg
R1BJTyBjb250cm9sbGVyCj4+ICAKPj4gIG1haW50YWluZXJzOgo+PiAgICAtIMOBbHZhcm8gRmVy
bsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Cj4+IEBAIC0xOCw4ICsxOCw2IEBAIGRl
c2NyaXB0aW9uOiB8Kwo+PiAgCj4+ICAgIEJDTTYzMzggaGF2ZSA4LWJpdCBkYXRhIGFuZCBkaXJv
dXQgcmVnaXN0ZXJzLCB3aGVyZSBHUElPIHN0YXRlIGNhbiBiZSByZWFkCj4+ICAgIGFuZC9vciB3
cml0dGVuLCBhbmQgdGhlIGRpcmVjdGlvbiBjaGFuZ2VkIGZyb20gaW5wdXQgdG8gb3V0cHV0Lgo+
PiAtICBCQ002MzQ1IGhhdmUgMTYtYml0IGRhdGEgYW5kIGRpcm91dCByZWdpc3RlcnMsIHdoZXJl
IEdQSU8gc3RhdGUgY2FuIGJlIHJlYWQKPj4gLSAgYW5kL29yIHdyaXR0ZW4sIGFuZCB0aGUgZGly
ZWN0aW9uIGNoYW5nZWQgZnJvbSBpbnB1dCB0byBvdXRwdXQuCj4+ICAgIEJDTTYzMTgsIEJDTTYz
MjgsIEJDTTYzNTgsIEJDTTYzNjIsIEJDTTYzNjggYW5kIEJDTTYzMjY4IGhhdmUgMzItYml0IGRh
dGEKPj4gICAgYW5kIGRpcm91dCByZWdpc3RlcnMsIHdoZXJlIEdQSU8gc3RhdGUgY2FuIGJlIHJl
YWQgYW5kL29yIHdyaXR0ZW4sIGFuZCB0aGUKPj4gICAgZGlyZWN0aW9uIGNoYW5nZWQgZnJvbSBp
bnB1dCB0byBvdXRwdXQuCj4+IEBAIC0yOSw3ICsyNyw2IEBAIHByb3BlcnRpZXM6Cj4+ICAgICAg
ZW51bToKPj4gICAgICAgIC0gYnJjbSxiY202MzE4LWdwaW8KPj4gICAgICAgIC0gYnJjbSxiY202
MzI4LWdwaW8KPj4gLSAgICAgIC0gYnJjbSxiY202MzQ1LWdwaW8KPj4gICAgICAgIC0gYnJjbSxi
Y202MzU4LWdwaW8KPj4gICAgICAgIC0gYnJjbSxiY202MzYyLWdwaW8KPj4gICAgICAgIC0gYnJj
bSxiY202MzY4LWdwaW8KPj4gQEAgLTYzLDE3ICs2MCw2IEBAIHJlcXVpcmVkOgo+PiAgYWRkaXRp
b25hbFByb3BlcnRpZXM6IGZhbHNlCj4+ICAKPj4gIGV4YW1wbGVzOgo+PiAtICAtIHwKPj4gLSAg
ICBncGlvQGZmZmUwNDA2IHsKPj4gLSAgICAgIGNvbXBhdGlibGUgPSAiYnJjbSxiY202MzQ1LWdw
aW8iOwo+PiAtICAgICAgcmVnLW5hbWVzID0gImRpcm91dCIsICJkYXQiOwo+PiAtICAgICAgcmVn
ID0gPDB4ZmZmZTA0MDYgMj4sIDwweGZmZmUwNDBhIDI+Owo+PiAtICAgICAgbmF0aXZlLWVuZGlh
bjsKPj4gLQo+PiAtICAgICAgZ3Bpby1jb250cm9sbGVyOwo+PiAtICAgICAgI2dwaW8tY2VsbHMg
PSA8Mj47Cj4+IC0gICAgfTsKPj4gLQo+PiAgICAtIHwKPj4gICAgICBncGlvQDAgewo+PiAgICAg
ICAgY29tcGF0aWJsZSA9ICJicmNtLGJjbTYzMjY4LWdwaW8iOwo+PiBkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vZ3Bpby1tbWlvLnlhbWwgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZ3Bpby9ncGlvLW1taW8ueWFtbAo+PiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmZkNWM3MDU1ZDU0Mgo+PiAt
LS0gL2Rldi9udWxsCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9n
cGlvL2dwaW8tbW1pby55YW1sCj4+IEBAIC0wLDAgKzEsMTM2IEBACj4+ICsjIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPj4gKyVZQU1MIDEu
Mgo+PiArLS0tCj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2dwaW8vZ3Bp
by1tbWlvLnlhbWwjCj4+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hl
bWFzL2NvcmUueWFtbCMKPj4gKwo+PiArdGl0bGU6IEdlbmVyaWMgTU1JTyBHUElPCj4+ICsKPj4g
K21haW50YWluZXJzOgo+PiArICAtIExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJv
Lm9yZz4KPj4gKyAgLSBCYXJ0b3N6IEdvbGFzemV3c2tpIDxicmdsQGJnZGV2LnBsPgo+PiArCj4+
ICtkZXNjcmlwdGlvbjogfAo+IAo+IERvbid0IG5lZWQgJ3wnIHVubGVzcyB5b3Ugd2FudCBsaW5l
IGVuZGluZ3MgcHJlc2VydmVkLiBFbHNld2hlcmUgdG9vLgoKT0sKCj4+ICsgIFNvbWUgc2ltcGxl
IEdQSU8gY29udHJvbGxlcnMgbWF5IGNvbnNpc3Qgb2YgYSBzaW5nbGUgZGF0YSByZWdpc3RlciBv
ciBhIHBhaXIKPj4gKyAgb2Ygc2V0L2NsZWFyLWJpdCByZWdpc3RlcnMuIFN1Y2ggY29udHJvbGxl
cnMgYXJlIGNvbW1vbiBmb3IgZ2x1ZSBsb2dpYyBpbgo+PiArICBGUEdBcyBvciBBU0lDcy4gQ29t
bW9ubHksIHRoZXNlIGNvbnRyb2xsZXJzIGFyZSBhY2Nlc3NlZCBvdmVyIG1lbW9yeS1tYXBwZWQK
Pj4gKyAgTkFORC1zdHlsZSBwYXJhbGxlbCBidXNzZXMuCj4+ICsKPj4gK3Byb3BlcnRpZXM6Cj4+
ICsgIGJpZy1lbmRpYW46Cj4+ICsgICAgdHJ1ZQo+IAo+IGJpZy1lbmRpYW46IHRydWUKCk9LCgo+
PiArCj4+ICsgIGNvbXBhdGlibGU6Cj4+ICsgICAgZW51bToKPj4gKyAgICAgIC0gYnJjbSxiY202
MzQ1LWdwaW8gIyBCcm9hZGNvbSBCQ002MzQ1IEdQSU8gY29udHJvbGxlcgo+PiArICAgICAgLSB3
ZCxtYmwtZ3BpbyAjIFdlc3Rlcm4gRGlnaXRhbCBNeUJvb2sgTGl2ZSBtZW1vcnktbWFwcGVkIEdQ
SU8gY29udHJvbGxlcgo+PiArICAgICAgLSBuaSwxNjk0NDUtbmFuZC1ncGlvICMgTmF0aW9uYWwg
SW5zdHJ1bWVudHMgMTY5NDQ1IEdQSU8gTkFORCBjb250cm9sbGVyCj4+ICsKPj4gKyAgJyNncGlv
LWNlbGxzJzoKPj4gKyAgICBjb25zdDogMgo+PiArCj4+ICsgIGdwaW8tY29udHJvbGxlcjoKPj4g
KyAgICB0cnVlCj4gCj4gZGl0dG8uCgpPSwoKLS1TZWFuCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
