Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7949EECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 11:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Cc:To:From:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r0YnwBvnrsB9cml168VyelgOOMEkdUZDnoAulFzK/aQ=; b=Hh4qRDVlsFnlimA41/9bn3Ikl/
	Sn5c3e9U1lzM+V87JYwbq1kpLUQ2oOfWM6BIhWG7OF5OwW0fpOHClKWJ3ZDE0xmdjMq4X56IyWXty
	fwJ+vndtIfd7kzXCcHerjYFQ+rhja9EFo/Kfm1gIjBCl9seM8NiQh0DqodYV8SfDG6sARuGEwThGS
	f8qlKKDVOJZ6rT9uMoqyoFaG5Mlf+CZjNDjQFrAZW2f1G4VnA4H4hTEQghHpSWwfwU2+oBoo2cu1B
	Pet60nagkVHv9YkcM2aJ29yZO7V+XT71ptQkxmW+Tg3aGAX7Potc9WUYbfjTdpNapqQw06SjvLQR8
	VdzGRcig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooNDX-00GseM-Uh; Fri, 28 Oct 2022 11:08:03 +0000
Received: from mail-co1nam11on2062.outbound.protection.outlook.com ([40.107.220.62] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooNDR-00GsZx-5g
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 11:08:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AZ1zvcIkYBt9w5C9Zy4OvltiR3Gmc1Qav8Y7Kg1s3+r3uXlZ1KU8VdzH+2Rtk9PMQLRFy4Ipto2xJAGct9chj2ejn+YAQwwsvWeP/r+wDYRDoAvTB7hffNzRgc+QnY+RhsB6fM/A8dTM5uiFUYvK3Js+pEOP7yLAiltUxQWvcOkb6wuoU3PcaDgkxw0ad28NurNprppxB1aDZOqyya1iQbnBO1uT1z80jcjxD9lMJlJKOIx7omM6eDqiRWvZ4MCXCdXEl8F+5eJHpnrwOEVntVdcjcNMFCnDy0BtS6E91h7w01I4vgWRVu/plGEGKFDPo23IRI416hnTeS7d8O4gNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lApyejVqt6hHtcvALQK1W3KoOuUJgix1T0U4LEADEic=;
 b=V7mHueBbs+fA1tZHFSBfL7X0KBdaERm2e4XBNi+DgwKotCmdsVhHvUDvJUYzBelsyU/M+i81AofGeYXMxV3raV/cZSIN5p3uHRcEsaZsU4pztYlUZsS1ghQ61BNAf9Gei8ZeYxpvu/pNldl3HBjUXAuZbJoO+jUQ2lH5hOoBVrMLFwylDQf5TeRAH4y+hRbp82HdcUeeXx7j9pKZIhGUecIVbDo+dw1yBn55STzcNdbCMnayQYzDHZDwG/1Xan/TLIMzZ+zO5K0XMTnjNEdjkFkbvjA0bj8ZexUKk9/6E/u8O8E1UWa/mj0Ooe7gUa8m2tHc1H9gi5EgCz7QMHCmcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lApyejVqt6hHtcvALQK1W3KoOuUJgix1T0U4LEADEic=;
 b=lC6Tccdf6jGfzu3OZqO+J3zfx6oZTjWTnh05Q9B2zOTfPVl6EJlaCHpjSUafP1mJb0kkFkiYu3eBAUUwJZS0VwLJU78wuKi1j9tSz2mr0UTEqPKA2zhV4lZflOmt4tY/sd/qqyteMVzmiK44J4x2FEqE9HQ4Yb3ei900fSPGG5L82I8m7zdEDnv5w1EdQjXpBn2tvs3oHdJjFfnQLbumTqVRH9mV3dVkHOkDhVhhEpzSTZeE5cneVgB6kqwr1sKZwa2+XFhKw0b6q1g0DfVA2rpkAoGKjgReA5Nx6yzbYObnhPARQ/97SUVKHRdpScinuQnTW8GpzCSFRO4hQnPJQg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from CO6PR12MB5444.namprd12.prod.outlook.com (2603:10b6:5:35e::8) by
 PH7PR12MB6563.namprd12.prod.outlook.com (2603:10b6:510:211::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Fri, 28 Oct
 2022 11:07:48 +0000
Received: from CO6PR12MB5444.namprd12.prod.outlook.com
 ([fe80::c0e5:f111:3e59:7c66]) by CO6PR12MB5444.namprd12.prod.outlook.com
 ([fe80::c0e5:f111:3e59:7c66%6]) with mapi id 15.20.5769.015; Fri, 28 Oct 2022
 11:07:47 +0000
Message-ID: <8194796b-9845-cd02-a542-0bc0d66b4617@nvidia.com>
Date: Fri, 28 Oct 2022 12:07:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 02/11] dt-bindings: usb: Add NVIDIA Tegra XUSB host
 controller binding
Content-Language: en-US
From: Jon Hunter <jonathanh@nvidia.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Wayne Chang <waynec@nvidia.com>, Rob Herring <robh@kernel.org>
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 Thierry Reding <treding@nvidia.com>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "heikki.krogerus@linux.intel.com" <heikki.krogerus@linux.intel.com>,
 Ajay Gupta <ajayg@nvidia.com>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "balbi@kernel.org" <balbi@kernel.org>,
 "mathias.nyman@intel.com" <mathias.nyman@intel.com>,
 Jui Chang Kuo <jckuo@nvidia.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sing-Han Chen <singhanc@nvidia.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-3-waynec@nvidia.com>
 <20221024145446.GA1763588-robh@kernel.org>
 <52ae737e-eb4f-9eb7-8b79-d58251062276@nvidia.com>
 <f5d2c979-a61c-e0d4-7a08-5b6f5b38dffb@linaro.org>
 <c8039494-9fb7-c72e-a852-8bde13c0a61d@nvidia.com>
In-Reply-To: <c8039494-9fb7-c72e-a852-8bde13c0a61d@nvidia.com>
X-ClientProxiedBy: LO4P123CA0467.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1aa::22) To CO6PR12MB5444.namprd12.prod.outlook.com
 (2603:10b6:5:35e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR12MB5444:EE_|PH7PR12MB6563:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fca6933-bc77-483f-0ddb-08dab8d4a559
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	dQ7VviA+XcIobKl8Ly9omMgTzBgVYY61YiKAezYGgQl1jUUYVTyTdTvwnHrcJiK0V4qmkL119p2sd75Q/EDNBnkhRcN/Dp/sh/6lubGgE1Sdh1yMWCq86OpGQKKqQrk+uwVdqE45af/rzavPytg6IOUcfxlXHIuIEN2T4qPfrBi3Esm0HebVtcjvXyrkRnXLo3zm+8xM9zsa+82DP8H5z57HiAopi9ZrYKV81ro/5GEsyYM12z2OYIisTSQwZGAGvzJT9ZfkmD+1h+lrE+IBEtaXLcN8vs8UHFHllNIWPS6nGn6Vp5Mw0gbSoiubM69dtQvYXmk0ucXbIUKnNc8uBtlBVSKI8+IBSuUGwFX/92W0R1YebA5YEy3NHafMgd9P5U97OhqgodGpkCO8gBB+JeZb1xqCPB/Mzdn4xezdPzM87ZaDYQ0lYY7rEkoI7WYLuxz2fqPYa5isJSCqV3eUivaJ0Lmn/OUc4JW/EpSKEmTigG0oeOd+I6l88PTxw4e6vacbdn5sfuYVVNLWcRyHIoXxLA3r0qB/MuTMTwGy1ob1o1N+Scj0nIn1HFQy9iSawbDhRe06pWjzsIsUBfLoPAoQTP4yWy/vFRbalN6rQz1TcdnMpvuWn96NbuVfycqexNEJqxchq4LFL7zglTAzEeEO2FkouZP9VRGzWOtBqqxpFWC7QTeNnAjmC7Z+tyebcZK6bKzmuFzPQS4A/Qu1GifqjN8kFjWR+safJEyFYKQAH9EXqymLHADOgsbbFh3OxMbSBowxwbzbavuYimsU/OY4sM+5FGhF7jXmPFH0s6clvGZbO2tNT6orJpaWT+oiYj0CcwgtS/VS1ugmG7BLXQbTzjtbHfv8V+dghQF4VKdEsI3KFH77VS0cAz5fGi3f
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR12MB5444.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(396003)(376002)(366004)(39860400002)(136003)(451199015)(4326008)(966005)(8676002)(53546011)(2906002)(41300700001)(66946007)(38100700002)(6666004)(5660300002)(54906003)(6506007)(6486002)(66476007)(110136005)(86362001)(66556008)(316002)(31686004)(36756003)(6512007)(478600001)(2616005)(8936002)(31696002)(7416002)(186003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?ZFpVVU5NZm4rYXNsTjdIZUZCNktweW5za3h5SDFnQzk1cHp6Ujc3RDk5MUJT?=
 =?utf-8?B?N1hpMEdKTE1lclYyeUNIYTBaREwvS3Fmd2sxcmdRdE1wZzNqR0haUjFTU3pQ?=
 =?utf-8?B?aFVUdGZxZDIybk11K0hUTkcyYnUvOGVGYkl1b0lxTXcrT0lORkFKSXg5NzFk?=
 =?utf-8?B?N2VOSVBUVDFiZTVBb3FocWZ5UllnY1cyWSsrNWh1ZUliM1lyUFNnb1Jzc3Rk?=
 =?utf-8?B?NWFIeGlPc3lZQ1JFZlJVR0pHdU01K0JIbENsTjgxTFcrRmtYZ3FOTGl1ZVMv?=
 =?utf-8?B?QXVheU9qZXhWTjYzYU5wc2d0ZmlxczRuVFE0dHNtcUc1dmplWkk3MFdodTQy?=
 =?utf-8?B?S09teXA1b3M1alVCMncvdFZCRmQxbTViQmpMN0VJWFBKQzUzNUJ6UDgzUmtU?=
 =?utf-8?B?Ylk3WW9oNDdXeFdjOW5zcXJsdDVnaDhUN21xNnVWOWw0MGZxOGhjZWREdVRN?=
 =?utf-8?B?YTRSNC81U1h6cjFLT2FTQmI2aDM3dkhvRzRsV1huNFVsRmJrdlRtRlFWcXcx?=
 =?utf-8?B?ZzNDcmRZaFpGZC90bDl5Zk10WnNLRTVnbmdPZE52VEZQMWp3WCtVejZYZXJO?=
 =?utf-8?B?VDA1MWlyMU5hckF2Vys4MTFZV0RETlBWUDN2cE1mZThSdXpBN2cxZDNTSW9T?=
 =?utf-8?B?d0VIQ1pkTzBZVHVzcDF1MXNrYnZYK1ZYZXp2U0t6ZkRvWUxjaXV2TmhEM0pD?=
 =?utf-8?B?M00veUZ0Q3VOSmY2UDV5ZVMxV1FNMGdmKzNHQ2FUN1I2dHIvSERCSU9DV2Z2?=
 =?utf-8?B?eVZWR1ZTdjZ3MWJVSmFQTktuS09LaEVWTHJVYko4UUM5enVRclU1MUtJZFdu?=
 =?utf-8?B?UVFqaGpVR2VhSm5pY0NRRnF2NURnbWpxSDlTTVp3azhvL0c1WTNwUisxS0do?=
 =?utf-8?B?ZlRhMXdtYlZucCtLbytDd3ExWDl3ZG1TS24zaUtnalBkaXk3aHNWRUFLR2lS?=
 =?utf-8?B?N254OTFBaUdsZENyaDhvWFBYZTRQTzBZRDhwd3V3Yk9TM1FCRmhGQ2grcG1u?=
 =?utf-8?B?bnVOY2pWMnphWVVEZXNLc2thTmdSc1NETklIMllTelJHRjJsVlhGT29Dc2tW?=
 =?utf-8?B?emlOTFdpOTRCZCtRUDd5RmtIak9pYUxUaXRCcGRxYkxpWjN6LzFHUVlVRzhl?=
 =?utf-8?B?YmNoQmF4S3Jsd0hId25uc2EvTjFob2ZXdFdTNUpiNytLd0J5WURaSDY1M2hh?=
 =?utf-8?B?UzlLYzdwL1RRMU5ZQ2QrS2p3UVB6YmQ5aENWMzdZOG9zaG5tOGduUGZFQnli?=
 =?utf-8?B?dElxSEdwMXNBWFlxL3FxQ0ZjdElCVk51dXpwT0FlajlxczRlMFBuNDEzclFl?=
 =?utf-8?B?LzJMQVJqakNwRWF0RFo1enZEb0I1R0tqK25yOHNpSkM0elA3L09Za0MzV214?=
 =?utf-8?B?dVBzMG5FYUJqNkVNa2xYbnp1cy9PSEV1QUhDVW9uVmwwSkxXd3psYjlrZEF4?=
 =?utf-8?B?cEQwZ0VFODR6OWxsUUM4anJoMFBuMU5qSERNSmdqZE05bUtud1lieWV1SUts?=
 =?utf-8?B?MTgrV29MZ29rRXArcmdOUTc2YWNzYlZ0RkhydGsxOWRTWkE1OGF3aENiVXov?=
 =?utf-8?B?NE91M2swdkVLeGl2SWdMSkkxZVdXTGNxNjArZkhPakdTdDFOZjlOWjd1Q1FZ?=
 =?utf-8?B?U2dQUGpQOHBRSlllV3JVU3I4b1V1MVNlTWN4cnZoM0tDUit6VS96OFV0b0ta?=
 =?utf-8?B?cUI1UGNYckhKb3FVOWdSRlpwanNOdGhnOGsxbTNzNzljV1FsYkkyc0g4cklt?=
 =?utf-8?B?Z3VUQkZlR2lsa1h0V2laNXBLc1B2U3ZiMU5NcEM1Um5JWUpmbFkwb3NPTW1u?=
 =?utf-8?B?SXR6UHJ6eVpPdldnV1pFL0dHbzBVS0M5LzBxYldQanpCRFo2TVNaOEUzYld0?=
 =?utf-8?B?MFM1SkZuL3ZaN2dUSzFDb3ZUY0dsZ2tGMnc3QWxXWm9DL2grc0hqMllvZTVT?=
 =?utf-8?B?ZWJoWGJGMkM2ZWsrYXVQUThVOUNPS0xsRXZxY0ZNWmhpT3Y0SHo3UC9LYk5y?=
 =?utf-8?B?dlhXbmFUTHFSaEZVczRxcW9US0ZaWEUzR2ZmQUtERHRzVDFQeThaRUZjOFU2?=
 =?utf-8?B?dmNneWw5UTR1Q0lsQmZHSzdKb2JaRWdCMDVmTHdnQjVyaDBnYjBsbWRZbFJF?=
 =?utf-8?B?UUpNTnE3TTc2elUvdmhSSVdrczluRlgzZmpveWpZZEUva1A5RGNmZ1hOOHdz?=
 =?utf-8?B?L09jS2F6NVdPMFZ4b3lYQ3pWcVhtSm4rWXpHbXZLK3NwR2E0L2pYaWdPYzE5?=
 =?utf-8?B?clcvMVhHR2RZMFNkbW90ZHlKRmtRPT0=?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fca6933-bc77-483f-0ddb-08dab8d4a559
X-MS-Exchange-CrossTenant-AuthSource: CO6PR12MB5444.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2022 11:07:47.6593
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8S59g0tsClJqUc3Vqw2JsqmOrGaY0PuB5cDGg3fjSQog5FMnTeohEQc5iGa03Vi8GQbdgVfJjwMn8mjeWCcmrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6563
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_040757_253490_E6E72B1A 
X-CRM114-Status: GOOD (  11.47  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIDI4LzEwLzIwMjIgMTA6MjUsIEpvbiBIdW50ZXIgd3JvdGU6Cj4gCj4gT24gMjgvMTAvMjAy
MiAwMzoxOSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24gMjUvMTAvMjAyMiAwNDow
MiwgV2F5bmUgQ2hhbmcgd3JvdGU6Cj4+Pgo+Pj4+PiArwqAgcG93ZXItZG9tYWluLW5hbWVzOgo+
Pj4+PiArwqDCoMKgIGl0ZW1zOgo+Pj4+PiArwqDCoMKgwqDCoCAtIGNvbnN0OiB4dXNiX2hvc3QK
Pj4+Pj4gK8KgwqDCoMKgwqAgLSBjb25zdDogeHVzYl9zcwo+Pj4+Cj4+Pj4gRHJvcCAneHVzYl8n
Lgo+Pj4KPj4+IFRoZSBwcm9wZXJ0aWVzIGFyZSBjb25zdGFudCBhbmQgd2UgdXNlIHRoZSBuYW1l
IHRvIGdldCB0aGUgcG93ZXIgZG9tYWluLgo+Pj4KPj4+IMKgwqDCoMKgdGVncmEtPmdlbnBkX2Rl
dl9ob3N0ID0gZGV2X3BtX2RvbWFpbl9hdHRhY2hfYnlfbmFtZShkZXYsIAo+Pj4gInh1c2JfaG9z
dCIpOwo+Pj4KPj4+IMKgwqDCoMKgdGVncmEtPmdlbnBkX2Rldl9zcyA9IGRldl9wbV9kb21haW5f
YXR0YWNoX2J5X25hbWUoZGV2LCAieHVzYl9zcyIpOwo+Pj4KPj4+IHdlIG1pZ2h0IG5vdCBiZSBh
YmxlIHRvIGRyb3AgdGhlIHh1c2JfCj4+Cj4+IFRoZXNlIGFyZSBuZXcgYmluZGluZ3MsIHNvIHdo
eSBkbyBzYXkgdGhleSBhcmUgImNvbnN0YW50Ij8gTmV3IGJpbmRpbmdzCj4+IG1lYW5zIHlvdSBk
aWQgbm90IHVzZSB0aGVtLiBJZiB5b3UgdXNlZCB0aGVtIGJlZm9yZSBiaW5kaW5ncy4uLiB3aGF0
IGNhbgo+PiB3ZSBzYXk/IERvbid0Pwo+IAo+IE5vdCBleGFjdGx5LiBIb3dldmVyLCB3aGF0IHdl
IHNob3VsZCBkbyBoZXJlIGlzIGNvbnZlcnQgdGhlIGxlZ2FjeSAKPiBiaW5kaW5nIGRvYyBbMF0g
YW5kIHJlcGxhY2Ugd2l0aCB0aGlzIG9uZS4gQnV0IHllcyB3ZSBhcmUgc3R1Y2sgd2l0aCB0aGUg
Cj4gJ3h1c2JfaG9zdCcgbmFtaW5nLgoKClRoaWVycnkgYWxyZWFkeSBoYXMgYSBwYXRjaCB0byBk
byB0aGlzIFswXS4gU28gd2Ugc2hvdWxkIGZpeCB0aGF0IHVwIGFuZCAKaW5jbHVkZWQgaW4gdGhp
cyBzZXJpZXMuCgpKb24KClswXSAKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtdGVncmEv
MjAyMTEyMDkxNjUzMzkuNjE0NDk4LTMtdGhpZXJyeS5yZWRpbmdAZ21haWwuY29tLwoKLS0gCm52
cHVibGljCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
