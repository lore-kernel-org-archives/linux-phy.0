Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EA2CCCA473
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jun 2022 18:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PIHcZHd8lK1F7Brxzu7mSi9mzN3KngzGkVaC2wPSIlI=; b=KI0L/j5/9GI2v8YHtoLnzvE6Ub
	hmbroPV6/8LD/f14Np72f9ALl4tPW4ic43JHBHkBciwpJu3AqEsSJJ2zgodnHsK8yShN4Gp13S2Or
	uFCy5mAk0yizfxf+9Km16At55Gs0HBzn7peEcxB8QrYYtkKUvLUzTPelmrpsYNcbYwpd4zJTTS2n3
	f31utvTpoGQnCNHxawLU34CRwL2QGKYTt/2zVW9Runqg11TAaxZiw8KybkGiAYnX8yZS9jiq/QWql
	TsIPjqTacUWDcnSBbwIHtb8rl3qA42n4fS+4ta9i5VYx8WRj8LTsCAk7ilLZwEz5PLnvVBbXOagbM
	+PBMv71A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6yiO-0011WM-Pd; Thu, 30 Jun 2022 18:16:32 +0000
Received: from mail-db8eur05on2070.outbound.protection.outlook.com ([40.107.20.70] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6yiM-0011V7-9T; Thu, 30 Jun 2022 18:16:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vne4qCIUoKXhUhoGqid3HGxlXOr4Cs838Fux3E4y03KuAnnKhGcZeivQUlcTqJjhJmNMA3Het0E+UTczqFVbujy3A0rOEh4baHu5SEntnRCqxJ2YRmEM1dvPqX4OpGkYdCtXepp8F0jTfKfcIwQMAzSAZTJpuOEPiQBTOMuhdnW+K0tO992EpdzkCpNgB44x3VL0uCAcJYfEHeWYuGpLcs3eFm28IloJQp1biwoJDerlKROYl46NfmY4HdvOq4bKypX+h1lNqJKP9UV8KyyIIFWIdKQskFj68tL9ZH3o2cf6IKT+u0jQOyWIk8Gmg/PkVICvR3YppnO6W9fKrHh1qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BOICn4qH9/D8aPei/PPXmQjacloYyubgARWZ74Yfdj4=;
 b=My6+oDWJtVYUQouimy9fCy9ilPeYORKy8pfWsLylxhRXRY+rbYg9l+UffHBTuapyr25X1h7Ng9Lo6ZhsKyFbFqoth57N64JN2N/J+Alvl4FKTudhYfUhDDXz+ZE79MzV/RTSE36H+qC8dy/Imke+7++du9KSIgkDSr2GzH+9j11PUN/7fVO3vQRGg1FwS+EdVZKKlYHb/lIciqIIjFhsE7twl8NTp86pI8JvKYUHkArFmz0qGV6P6MnWhV5c2v0Fm7W11ruUAoM+NR+cH/fi3XE+gbIKa3bdvYaGYMCMyCMB3M3d7EDCuGGYARxOpU++9DKA9ZGZqkGhMD8hbHlTfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BOICn4qH9/D8aPei/PPXmQjacloYyubgARWZ74Yfdj4=;
 b=Tu/QwyyfVfKcy2lyli5CUs2pwACinEjGPlal0U/toepodB/hjoOCWDF65GneySdt1ubFG+yn245hK6WgeH0GkGV4SdGQ7RMJ5kB1r/HrucxES8+sxjue9MT3XDdNBOj8fE8mgVsJ7b5cq2xck668acI+Zoi2egXfcEffUs0tEMQdF+gGIJsO8Yqy6h87DSY8W1o1w+gi6y6smuzS6ni23FpRzm8G9uX5jtxvYThIb3ZzxR3VxQO0r+fR0IA7EGgqZ0vHYWpnjqrJP/K31UtxWeJscHIWa7CYuY7esx813RhLh2S6bfRL5kOyKghAuR2cA9nLUDXcG48wTcTFG1AJ3g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com (2603:10a6:10:7d::22)
 by AM5PR03MB3027.eurprd03.prod.outlook.com (2603:10a6:206:1a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.14; Thu, 30 Jun
 2022 18:16:26 +0000
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::757e:b75f:3449:45b1]) by DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::757e:b75f:3449:45b1%6]) with mapi id 15.20.5395.015; Thu, 30 Jun 2022
 18:16:26 +0000
Subject: Re: [PATCH net-next v2 01/35] dt-bindings: phy: Add QorIQ SerDes
 binding
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>
Cc: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski
 <kuba@kernel.org>, Madalin Bucur <madalin.bucur@nxp.com>,
 netdev@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Paolo Abeni <pabeni@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20220628221404.1444200-1-sean.anderson@seco.com>
 <20220628221404.1444200-2-sean.anderson@seco.com>
 <20220630172713.GA2921749-robh@kernel.org>
 <7fe84856-7115-b0f4-b0e1-0b47acbddb7a@seco.com>
 <db9d9455-37af-1616-8f7f-3d752e7930f1@linaro.org>
From: Sean Anderson <sean.anderson@seco.com>
Message-ID: <537d0c0f-8f29-ddb9-dc02-a9e9ad63702a@seco.com>
Date: Thu, 30 Jun 2022 14:16:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <db9d9455-37af-1616-8f7f-3d752e7930f1@linaro.org>
Content-Language: en-US
X-ClientProxiedBy: MN2PR12CA0031.namprd12.prod.outlook.com
 (2603:10b6:208:a8::44) To DB7PR03MB4972.eurprd03.prod.outlook.com
 (2603:10a6:10:7d::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8ca48084-c524-486c-d5ac-08da5ac4a576
X-MS-TrafficTypeDiagnostic: AM5PR03MB3027:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	H2TQyH0MhxsV3vL7Bg993yHBjArQcYQCQwMW38MLTLbNZ6Xv4R+JDeBlE2s6XsmPuyAMQAbU9n9tyylELvbWZDCBePinrs7Dha/8SJpphsO0ZtkmPySwE+TD0/ZloM2MMZB943XD+bP1VXrCEg4DHjgnOHAMKUZujCVWoJD7FSxi6R0DX7QBH91mVrskm/przpmzEhftDC9028tZ0EsfSwuKFJ03Pdd5SRbACxZ5++u4ZygC1hllWcRF9gVKrRjruZb972ljlooFUIkBRnGfcrFF3ISHWyPUTyZEZM862cWYh1idK5A76Fd+2vrgcJVYxPOy1NmOH04cnkd/UCy9ytebrhSRhTUXz5uMzafivRdQ41iJK26uMK0bNmzXPMiVGHKFUrKr1BzNX5hYBi5jxfnr1R1XwIhEqUgV3zEBkTqZIqBbYW1LepTPW1bfox0ymxx0z0i9lL0kwvhHssNXR4DSk652ZiVI6vAZ6Jz7ijopkdy8L0aYK5rIqY9evhk8xMuD1OOmA7WsYOuZ91mHSO31bJM60UNjv/MK/VbCIEjVT0luFfs1gTdzvMPQwN8j48CtMXUBh6eH0gD/NBqgbfGtZQjMHaexeEbBHCBfVCdhfqPu1TYJsXBIgTDpr1AP++7siiWPkVpu2lR8nneCQ3928/4LOv+txLDpz97iqqI5Aj3LiR6Or/SSjPy3ZAykvHuYOQcvUcuN6xFrTHdkmgS/K2vmqq0XzBcoPSuX7LtFJ2Cv/UM94z2vuyzr06rtOq37R83Y0rKoNYxQ+gPvZwe0QR/mJNIOEjBsXVdr7XP48SBexbeG84bocJrgoYuks7yHrd0uO+hvjPzQSdXM0KgeirYvgcsppkXwPRHluuQLE/mvBxpeBwCv5gzBW8gK57lw9oyDAKT4serefkwr4qXgp9xITh4EDClijGJPw6U1ZFpn0LjjsJYpC599WQYx
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR03MB4972.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(39850400004)(396003)(366004)(376002)(346002)(136003)(66476007)(66556008)(38350700002)(4326008)(38100700002)(8676002)(83380400001)(26005)(66946007)(31686004)(110136005)(54906003)(31696002)(36756003)(86362001)(316002)(7416002)(2906002)(2616005)(966005)(6486002)(53546011)(52116002)(8936002)(6512007)(5660300002)(6666004)(44832011)(478600001)(6506007)(186003)(41300700001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?T3RQRU5kTUVPc1hNUW5hOWR3NTlBbkRDaEpCd1RFaGpxWVJaemxydVVNL0Vs?=
 =?utf-8?B?ZFBCL2luTFF4emdjUXNhaVh1allkWk1KMk9pM29URDVjSjhkeVI5a3c3OG9o?=
 =?utf-8?B?R0Mrcm1xVTh5ZzhPc2pRNDRkVi9IOVU4ZXJYeHBFcnlEdGRLTnFYc1B0WmIw?=
 =?utf-8?B?VnQ5N1NPVm1VcnNVeXZmU2Zld3NGTXhrdFZ4Y1ducExyWVVKOEY3TWFQYlNE?=
 =?utf-8?B?Z3pQQi8vbDJvRUgwbG01d2Q1Y0xFQjNmQkNMUDgrZXNJN2h2NmVOSE1CZ2t4?=
 =?utf-8?B?Y3A4YStST01QNHBKQjE1K3h1U2ljYTZpQURRdk5ydkJORi95NEtNRCs1Nzhr?=
 =?utf-8?B?UjZVeWM1VzBhandhaUNENFJ1akhRMU1KZEhKTWV2Wmo0cFRjWnpxRkdhZERS?=
 =?utf-8?B?dlhyOW9QMncrTFFHMy9BWlFWeStrZGkwUnI5SzNIRlFSTnNpb1FldnI4RHBC?=
 =?utf-8?B?VEJNYkZqbjluS2xzK0FNN0RJTXN2M3dDV3pPd09zeHE3QkZGb1RXb3BsSU5m?=
 =?utf-8?B?WEloNzc0Wm02NWFJdW1WdEFKay8yZGZCZEkwUUtCR3pkdlQxUFNkR3hYRDVZ?=
 =?utf-8?B?RklTZWZtSE1oQWhzeE4rdU56SGRUa3duNnVpWXZjSUFBZnZWbkpUNm5hRmlO?=
 =?utf-8?B?Umt1UHQ1VmxjZjZNcE9tSU9uenZGc050Z0NOOXRmeHRwRVE0QUZycXhCM3g2?=
 =?utf-8?B?K2c3N3VXK3I0U0cyYTE4SlNtL3d0TDN4c3ZNOXArZjBZYStXSUVXcHZPZTVD?=
 =?utf-8?B?T28vT2VIZmpPY0o1WG9IZHRlK0tGbGs5QUozUnlwRnNWazFKdVZXR21WVUZn?=
 =?utf-8?B?cE1hZ3BvT2dNV2QyTjMzeGN6NVBvUnNNK3UyY0wxd1hISWN1SEZxKy9uWjQr?=
 =?utf-8?B?UWl2aGxPZkF3NDZnOUVLNHNzemNKOE9SQ29pU29PMFZIQ1p2YUI1cnE0YjB2?=
 =?utf-8?B?bE1MNGpEQkZDY2ZRRVJuQ0d6cWlyUUprclIvcXVTNi96aUhMOGROY21VVkRj?=
 =?utf-8?B?R3U3RTlNTXp1YmkxUFdueXhydjdnWGVSMVlUVXMwZXVULytqWmNUZ3RGdCtM?=
 =?utf-8?B?R3hBb2ZBTzVxQnVFK1drY3ZEUmV5RWNYd2duWCtBdEQxTVVYWTNLWkE3S1Ja?=
 =?utf-8?B?SnJoaFkyYnhMOFdpNVo3RG1mbndONXUzY2tzdVRiNlNaNHNhSldNTUxLUllC?=
 =?utf-8?B?WkM0VGFxUFNVblZVQzlaWGFBWGE2RytiSDJJblBkWXVLSWk4cjIrWkxGSytP?=
 =?utf-8?B?NHZLbFBzQ2t5TEVGai84RU85RFpEcXhuUVhoa2x6cGRUNFBobEd5cW9NeXpi?=
 =?utf-8?B?MXd0WlByU3pwUHdjVS9mT0cvZW81OXZVdUhwN1Q2aU1tRnI5d2I0NVNLTHJy?=
 =?utf-8?B?aU9zNWw1MlE5SGJCczEraElQTnBaSUpJNHVvcHBkWkVhMkpTQlRHeVp2ajdC?=
 =?utf-8?B?bjROK1RVNC82WnFQZTBDZGh5SFpUa1hoS2RUS0J3K3ZtYWVYSldNS2FKUXBC?=
 =?utf-8?B?S3J3YUhYR1hlNkN5SE81bk9HcHIzMmEzYnZBKy9tY3ZyV0hzRFp1L283SS9j?=
 =?utf-8?B?WDVKQ0VWNXM4MUhDaCtSVnRJT21vMmJ6R1V3d1dpVDluYmJDcTloNU8wdFgz?=
 =?utf-8?B?YVA0c0U2engrdCtJTzg3VUtVeTdGVC9sWlZpZlk1SmFrMVpoNEExMmNyNURJ?=
 =?utf-8?B?eVF4bkFNSTRUcU9kei9RbHRaOW9jVEMrM3dVTzU4am01NGZzK2ZKMlpNa1pP?=
 =?utf-8?B?UkNhcWxWWk5hUVlOalBlbSt3SFpPVDd1Q2NhbGRaZFVZbWh3VzZ5VHV0SVVz?=
 =?utf-8?B?eFNVb21RRU5aWEl3MGNMdnVEc0thZGlGVmlWREg4aEdWejhDSDI3dXJGZDVN?=
 =?utf-8?B?V0ZkMmF0OFo3SzVXelpQc2JrTnErdUlBR1hqWnpZT0JiZG1lWVJSUkMwOW9s?=
 =?utf-8?B?ejcrV2lMMUlidTJXdzB6ZmlSaEhlelBMbmFnTkVwbTU1YzNyQ1QwNi90dUlh?=
 =?utf-8?B?RC9CeXFrR0lKVE5lNFhIMTBXUGlYanQvbXNXWHNzZXQ5TStFZElCZkFjWU04?=
 =?utf-8?B?TmVYWlJDelZ4amhNQkZvOWU5Y2FsQ2FqYnpMMVdHMnp5Qnloa0pqM3lKSFNI?=
 =?utf-8?B?ZFNta1B4THRMZjV4UmZITGlMVHBjUXo3U2ZaU0lvV2ZKWmtsbEFYamRncUlW?=
 =?utf-8?B?Z0E9PQ==?=
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ca48084-c524-486c-d5ac-08da5ac4a576
X-MS-Exchange-CrossTenant-AuthSource: DB7PR03MB4972.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2022 18:16:26.4339
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iXrOju9w7gP1VWhcfSAfvlbMnk+AwNkuLQbwrMeE7WTeKwDbd8VOa65mNWEpp2p1XGjZ/Auvn4M7XT3GeMEodQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR03MB3027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_111630_388035_CD207763 
X-CRM114-Status: GOOD (  28.17  )
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



On 6/30/22 2:08 PM, Krzysztof Kozlowski wrote:
> On 30/06/2022 20:01, Sean Anderson wrote:
>> Hi Rob,
>> 
>> On 6/30/22 1:27 PM, Rob Herring wrote:
>>> On Tue, Jun 28, 2022 at 06:13:30PM -0400, Sean Anderson wrote:
>>>> This adds a binding for the SerDes module found on QorIQ processors. The
>>>> phy reference has two cells, one for the first lane and one for the
>>>> last. This should allow for good support of multi-lane protocols when
>>>> (if) they are added. There is no protocol option, because the driver is
>>>> designed to be able to completely reconfigure lanes at runtime.
>>>> Generally, the phy consumer can select the appropriate protocol using
>>>> set_mode. For the most part there is only one protocol controller
>>>> (consumer) per lane/protocol combination. The exception to this is the
>>>> B4860 processor, which has some lanes which can be connected to
>>>> multiple MACs. For that processor, I anticipate the easiest way to
>>>> resolve this will be to add an additional cell with a "protocol
>>>> controller instance" property.
>>>>
>>>> Each serdes has a unique set of supported protocols (and lanes). The
>>>> support matrix is stored in the driver and is selected based on the
>>>> compatible string. It is anticipated that a new compatible string will
>>>> need to be added for each serdes on each SoC that drivers support is
>>>> added for. There is no "generic" compatible string for this reason.
>>>>
>>>> There are two PLLs, each of which can be used as the master clock for
>>>> each lane. Each PLL has its own reference. For the moment they are
>>>> required, because it simplifies the driver implementation. Absent
>>>> reference clocks can be modeled by a fixed-clock with a rate of 0.
>>>>
>>>> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
>>>> ---
>>>>
>>>> Changes in v2:
>>>> - Add #clock-cells. This will allow using assigned-clocks* to configure
>>>>   the PLLs.
>>>> - Allow a value of 1 for phy-cells. This allows for compatibility with
>>>>   the similar (but according to Ioana Ciornei different enough) lynx-28g
>>>>   binding.
>>>> - Document phy cells in the description
>>>> - Document the structure of the compatible strings
>>>> - Fix example binding having too many cells in regs
>>>> - Move compatible first
>>>> - Refer to the device in the documentation, rather than the binding
>>>> - Remove minItems
>>>> - Rename to fsl,lynx-10g.yaml
>>>> - Use list for clock-names
>>>>
>>>>  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 93 +++++++++++++++++++
>>>>  1 file changed, 93 insertions(+)
>>>>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
>>>> new file mode 100644
>>>> index 000000000000..b5a6f631df9f
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
>>>> @@ -0,0 +1,93 @@
>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: http://devicetree.org/schemas/phy/fsl,lynx-10g.yaml#
>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>> +
>>>> +title: NXP Lynx 10G SerDes
>>>> +
>>>> +maintainers:
>>>> +  - Sean Anderson <sean.anderson@seco.com>
>>>> +
>>>> +description: |
>>>> +  These Lynx "SerDes" devices are found in NXP's QorIQ line of processors. The
>>>> +  SerDes provides up to eight lanes. Each lane may be configured individually,
>>>> +  or may be combined with adjacent lanes for a multi-lane protocol. The SerDes
>>>> +  supports a variety of protocols, including up to 10G Ethernet, PCIe, SATA, and
>>>> +  others. The specific protocols supported for each lane depend on the
>>>> +  particular SoC.
>>>> +
>>>> +properties:
>>>> +  compatible:
>>>> +    description: |
>>>> +      Each compatible is of the form "fsl,<soc-name>-serdes-<instance>".
>>>> +      Although many registers are compatible between different SoCs, the
>>>> +      supported protocols and lane assignments tend to be unique to each SerDes.
>>>> +      Additionally, the method of activating protocols may also be unique.
>>>
>> 
>> On v1, Krzysztof said that this was a better route...
> 
> I commented about "-1" and "-2" saying you have to make them properties.
> You disagreed and with long messages were convincing me that "-1" and
> "-2" is the only reasonable approach. I never said it is a better route.
> I explicitly asked in several places for defining these as properties,
> not as compatibles.
> 
> You are twisting the entire discussion now.

Sorry, I didn't mean to come off that way.

>>> We typically have properties for handling these variables. Numbering 
>>> instances is something we avoid.

But I would like to point out that for the phy subsystem, it is typical
to select using the compatible (or just write a new driver).

--Sean

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
