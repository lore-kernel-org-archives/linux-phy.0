Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A76B0C433FE
	for <linux-phy@archiver.kernel.org>; Thu,  3 Nov 2022 11:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KjJoDgnZH5sh0jM/dCiLuqAYuxrT53K/VfQjIdk3Z+k=; b=Qawwu1RSOTotsP
	JilCPgRNitwc0J+GQrOr6g6JSX2GY+3ZF4B8S3hzTXDAKJkfm/DMP0tsPILUPmFCRJw1YN9p1ynpJ
	zgbzPunBngtG+4ArIyDkgYF6n8NWx8sCi5n+GWXdIbRpXLTMODimKCzFPbh7iAyh/7KML1iAxgRBY
	8FhTpBI0vG+ij35arCIRDLWxE96qbkPBM8WrD5hDgcELLWuo1iXUIRRGJLSSaZvQGb3QSjThVKo6X
	d+pIGHRMxjgjSWXap94uKd99fDzQKC+v5grxdT38+5FAlDDTS1fUwKApbHvQBxhMybF9/pIXhWUQM
	cruXysTK7lySVe9Akw2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqYcc-00HEuf-3x
	for linux-phy@archiver.kernel.org; Thu, 03 Nov 2022 11:42:58 +0000
Received: from mail-sn1anam02on2058.outbound.protection.outlook.com ([40.107.96.58] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqYcZ-00HEtz-D5
	for linux-phy@lists.infradead.org; Thu, 03 Nov 2022 11:42:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z4JzsaQGC1MqNnHIsMWmj56icaqQmQPwSj0o4jcUibTS1tm8jvyZe41dDj+V7db2kvL3GtnXQIfbR5cVRTknJLLgpogroKN84nZ89IYQo3J/D7IhyemwfLF2hagjkIGo1w7QIEeSMX8L3MdiURqX+tSMdvl7+2AZksqGwtw0EtHi69F2Ifag0mFAswFZHk7UxkW+1rG35c1f0wPDM+V+IUFDUS1FwdqAVp1mXL5ntORdzfcrurgiSOoloZJC2HLKDKRLNkVG3RftWp7j0jkvdWS99pv4kXpEMi3ppNFEFaCKw38lrEC3skbIa+lM6ESXlzQIgyzMGuS/AKgTPH7CYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cyayE3M7sXK9ILdmkBUdZBXks9w8++6emQBYgC91VJ8=;
 b=bXGX0n819ORR89hENScVdeRwVjnRrHzekeV4dDup+y9tQTv5OnmfuhOlA67aH7H/7W2XTwMpjOLqtRfl5Po+AcnXT5378f9qTXqEiD4rM/ZQ1sb5NNHD+p12p5eIILZhYp6JDorN6/YW1a83swFL3QsiNKM9hM44GUZSn5ikxhVfHdrfvt35IFVMamnlqpeUljh0da38ejeeTxhs8GalKkdeqYNJo+xPYn08edahVRp1uxHdxJOFENjxs6WDqqTie6oz5KGvAI9zDvSMuoEFRI2+8gISG4PoDZmGZtwq+q+4mJw0YT7uThEejwntA1NyDn+7Po73z0jPVN3Viu3drw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cyayE3M7sXK9ILdmkBUdZBXks9w8++6emQBYgC91VJ8=;
 b=qyyGxejSV3rt+Rb/ccp8+vLhW9IHwiADlskN9+SfaVKojcCxK7/+FZnb8bXml9Gw5EtbmJJ8ldszf3MszqjfakcgaWWz9W1wvwXy2KWiIqcidMGJ4LRQq+NmvvYFTigbg56p++PQINTrzMPTolswSJWZqFODQn+7XDOBZGCjLO+u3BuktbOociF3FRnZ1wliF3cF8reOjuW/uqP6/j/kT0vhpT+PABLHyqtUQtIK2m1Vt20hICIGyeFSi5Sgxm+ZvDRGClagpSuOmQK9Cy9HIbiBex1/Ur7PIEiffjiMdrlh8HywQsi1pjYaEIVwDqXdOXRQBScpMUzIay8C2V42dg==
Received: from PH0PR12MB5500.namprd12.prod.outlook.com (2603:10b6:510:ef::8)
 by SA0PR12MB4397.namprd12.prod.outlook.com (2603:10b6:806:93::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Thu, 3 Nov
 2022 11:42:51 +0000
Received: from PH0PR12MB5500.namprd12.prod.outlook.com
 ([fe80::ac8c:eada:77a0:e2f0]) by PH0PR12MB5500.namprd12.prod.outlook.com
 ([fe80::ac8c:eada:77a0:e2f0%2]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 11:42:51 +0000
From: Wayne Chang <waynec@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>
CC: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	Thierry Reding <treding@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>,
	"heikki.krogerus@linux.intel.com" <heikki.krogerus@linux.intel.com>, Ajay
 Gupta <ajayg@nvidia.com>, "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org"
	<vkoul@kernel.org>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"balbi@kernel.org" <balbi@kernel.org>, "mathias.nyman@intel.com"
	<mathias.nyman@intel.com>, Jui Chang Kuo <jckuo@nvidia.com>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Sing-Han Chen
	<singhanc@nvidia.com>, "linux-i2c@vger.kernel.org"
	<linux-i2c@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-tegra@vger.kernel.org"
	<linux-tegra@vger.kernel.org>
Subject: Re: [PATCH 09/11] phy: tegra: xusb: Add Tegra234 support
Thread-Topic: [PATCH 09/11] phy: tegra: xusb: Add Tegra234 support
Thread-Index: AQHY53wnn6Y1wFaZgEa22emDiBKXH64jyowAgAlZSQA=
Date: Thu, 3 Nov 2022 11:42:51 +0000
Message-ID: <a4879d38-a50a-2e21-c51d-e28e39aec838@nvidia.com>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-10-waynec@nvidia.com> <Y1vRmGss43zEcN/I@orome>
In-Reply-To: <Y1vRmGss43zEcN/I@orome>
Accept-Language: en-US, zh-TW
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR12MB5500:EE_|SA0PR12MB4397:EE_
x-ms-office365-filtering-correlation-id: 8a3deb40-7625-4386-80f6-08dabd908a1a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:  5hMLuI2wmGyDN8eieUv+IgPJRrZRSTnI5FQPwE7s9Xhptb4q/Yr26omA8Rv1htM0IMjMiEDIpUu6Zijpf5t7Iu65M/EXdMGMNy/L0rFJI4dWnGBgEq6xN2HEP1h48r5DvISee5BbjI3k2Bvsbic0o5FrblLLNLUJefisp2AYWrL03KlgqG+PQ6OuPz8FaUQF/eDhjihHhFhy0BYC0H17kltp5oIoJST0XSpVo3dV9MvnTGiK25+xBnJPa0HViLwBe10dCl1tSqBV5SHXYHWdO+qFthecqJcc4e0NhJns1gRYRGvpVqPKTvA78ymSPolrMGxfABgmahCpih4c/otfWSpIIA3//0BWEriKVH4jxXCcP6oxIQBQNJWxh4Qu2reRjyH5NznMWYhKN790QsdqYpnU+ZtORMK25sknXLMaFYDOGQgcrm1aRR9Fs26SHnNJOY4GROFC2RoUl/qCyvEcs7gmTyicH4H5vuC6Xl7aIdGn7bNzzObML9ugwZf3e8a/mWu3AJ7pysp0vkXHaN2WhhtuVjFhQ4YHbmcnHffvCMRItZIh+hB2kvWs9CZ5E/pFqZl5CGjE9SO3jT1GOrk9s5AJtJ1CcgSTWlPotakbamWdFdDXvBrFv+zwFMKQPK0giCamyuQqW7GQkE0vKOixEiWhfR1qJhvjDeBZ/3prNyXq7BODxA+fUxiE+7q9oU7DG2g+BrNjGIH/66LmOBVZbFc1E9nfeKgmkSQyr3XN+zUV68tJCNI01MH+1oZ8tp8u1vSFZZaLRBfdwd56bY5L0wqdF+HhD4FMMK9qjTRtMG0+PjWtbWqy4UD4lK8Bg4oNlHWYU5pTNqxEh6d1+X2q6A==
x-forefront-antispam-report:  CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB5500.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(39860400002)(366004)(396003)(376002)(451199015)(186003)(6512007)(2616005)(53546011)(6506007)(31686004)(83380400001)(71200400001)(6486002)(478600001)(26005)(316002)(64756008)(41300700001)(66556008)(5660300002)(66946007)(91956017)(4326008)(66446008)(8936002)(6916009)(8676002)(66476007)(76116006)(54906003)(38100700002)(7416002)(36756003)(122000001)(2906002)(31696002)(38070700005)(86362001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:  =?utf-8?B?alBBellHeDhIcGFHUHJLdENTeUxWbm1BVndMYkhUbWRPcG5UQjJjNWcyT0Jy?=
 =?utf-8?B?L2NJWk5WME9raE9NMGorQWFES3ZGcUp2KzE5TkN1MGhDOHJ2UXp4dE5ZYW11?=
 =?utf-8?B?cXp0V2loSTgxWHRvSVhUVE9QK3cvd2JXdkExMWc0ZkdSY1RMOFUrb2JuSnZZ?=
 =?utf-8?B?cUptQVpCZVRybytPRDhvWllpbHlSMjZONWxvR2J6OGtCMDR2elc5K1hhTFZI?=
 =?utf-8?B?RmJybElGZy9VMWtYWGZXcnVpbnVKZGpFTDJreXpoajRUOVMzbTNDdWRhRXRB?=
 =?utf-8?B?K2pOeUVzQjhxUUZ6bWcrbEtZWisrVi90UTNRSFAxekZjaDNDUE9IS1RML09L?=
 =?utf-8?B?KzNIV3NMeDJIUjZENjJWZUkzMG1qWllBeFllc3NKM1lsemdlK2xZd0dCODB5?=
 =?utf-8?B?Z1lLaTF4SUxtckVZVTVLaFRaR0xXTTdBVW9WOGo2L0d3eDl2NlhST0xJYmhU?=
 =?utf-8?B?dHRDbEsrMkxZakw1WXBWNUg0bHpWWXgyWDcyU0VqZ1NjTGY2aXYvUCtMY3RL?=
 =?utf-8?B?TU9Bd3hnWmdlRjRPUHN2ZmtUOEE1bUhUTUUycU1uSWxzdERqb29nNFJxNSty?=
 =?utf-8?B?TEtoY0pUMExqc0Y5TWowWUxmNjZGTXNnaVRQeU8xYnNaVVZlWEl0cGI3MEdY?=
 =?utf-8?B?MThKSWFJS0VLQmczS1VPdEFsdW1CMjF4T2lsMnJnenVBNC9tRW8xczJJdFFp?=
 =?utf-8?B?azV5ZGtseU1zTGdlcDVNNDkvd0Z4amlzdXZKMGhiMkZCZ1hZeGJyanBxc1ZG?=
 =?utf-8?B?OGdvZVZuU3VRY3dkeEJSREpZdm9aK2FxU3JPalE1S0ROQSs4eXBZTGo1WTFW?=
 =?utf-8?B?QU5SaUNuTS8zTmJwaXJJZkw1enJONTFvM0ZDaStXVTZlMGtNUjBQeFZrQVVl?=
 =?utf-8?B?TXJSM0c1VWRtNElZZVkrd0pjUGw5QkZzb3dsdStUZjhsaDM0SkQrbVZ3cGlS?=
 =?utf-8?B?VmNQWEwzeHJBaHhwWXFsUVBNQW5LWTVyajBkTi9Fc2tKYUhSam1UakUwTVpV?=
 =?utf-8?B?TWx3V2d4cHRsZnE5clVyV2ErUldtSjVuZFZ2a2NkckcwcHA5d1hldm5lOGhK?=
 =?utf-8?B?WkxtUWNObkpOQ2Nubkc0MXhrRWtDc0I4SGFOdld1K1hKeEIzZmZyT0J0ZGhH?=
 =?utf-8?B?THk2Q3JaVHdsb2VWeTF6ajVPYkp0clJucCs1TExRVE1hMWw3Y0xhbzdxRHpX?=
 =?utf-8?B?RjgrMEltVkErSGEwVkFYRGgyeHA5bHhzMlF5dWZ5akpEcHdiSjBzaTZzeGU3?=
 =?utf-8?B?ZEp3YTNzVUNTS3VzMXdZc3ZqSnFPVjdCc3BIOUM1MElJZzJQRjFNbmo1VGhZ?=
 =?utf-8?B?Z0dVMVlqUzNpY2dpZzF4UDJmWEJzdGJjdkl1Mkhoekp6WTdtYnloVmU4SWV6?=
 =?utf-8?B?MHoxeU14Y3hDZ2xkVWVKemUwRVhoaVV1US9CNmNqeDJnbTgra1dST1duTnBO?=
 =?utf-8?B?TkxvMFFGeWViVS9DbUhRNUF2QUVsVWtBNUJHcHZBRVI5YTdPdG9kamdmSWhw?=
 =?utf-8?B?RjZ2ZzRjVzBnd0JLc3cyaWU0aUhILyszS3F5NFhyZGJLMFNIV29CcUdQOWwv?=
 =?utf-8?B?RFM3d2hsZzVuWTAxZzhpNTVzeU5UUFY4U2U2eEVUT003K1FyZnNmNDVSenV5?=
 =?utf-8?B?dzVlRDBmWW5oOERpZXAxZkNmcGJyOFF0REJOalA4U1VHaVF2dXJBZUFRdzYv?=
 =?utf-8?B?bGV3ZGFJQ2ZOd3VJczEyNmtnLzBLdmt3MFdXMGkySkpVY1pqK20rUVlleUpR?=
 =?utf-8?B?MWg3b3hiSkthQjdkSmZadFFPSVBMakhxQzFvMG1OQnYyQ0N3Wkx4VTJHVlJB?=
 =?utf-8?B?eDVJSmxFaHdsaDVjYWsyWElMbnN3K2RmUlowOTZ6aUlnQWJ0eTR5TXg5VTB0?=
 =?utf-8?B?ckNXcTZBSWgvV1VGM2lUZWRtYlVSdnMzS0ZwYWdKZUlHZ2w0OVdXN2NEK1pr?=
 =?utf-8?B?V3dRak1iVTdTaHphL1pPSzk4bkpheDI5eGpBdmxoV2N0Q3JUSTRueHJzekVY?=
 =?utf-8?B?ZXJmTy9DMC9OWWlOVEQ2WmJpZmdRS05zbGg0SndQbGwwMU1RZ1hqRlFZeFdW?=
 =?utf-8?B?VFNNczBQQzR3VWhiRWE1NW5OcmxoOUk3dmJuZEQ1YmM0RjUyZ1hNTlNTMFRH?=
 =?utf-8?Q?QQsgXi4V/HKJ4BpuRhe9QZEdl?=
Content-ID: <896BCD653007A14FB794336D8F08D44D@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB5500.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a3deb40-7625-4386-80f6-08dabd908a1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2022 11:42:51.5654
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pHNEngIRetBffMyqkp7e7/LaBOjmgDjD1C+qQubmMU6/QMxKM+yxDe0kO63LWmE+4SgN8FZStBTz5aDDt9ypEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB4397
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_044255_516974_3CF23485 
X-CRM114-Status: GOOD (  19.91  )
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



On 10/28/22 20:56, Thierry Reding wrote:
> On Mon, Oct 24, 2022 at 03:41:26PM +0800, Wayne Chang wrote:
>> From: Sing-Han Chen<singhanc@nvidia.com>
>>
>> Add support for the XUSB pad controller found on Tegra234 SoCs. It is
>> mostly similar to the same IP found on Tegra194, because most of
>> the Tegra234 XUSB PADCTL registers definition and programming sequence
>> are the same as Tegra194, Tegra234 XUSB PADCTL can share the same
>> driver with Tegra186 and Tegra194 XUSB PADCTL.
>>
>> Introduce a new feature, USB2 HW tracking, for Tegra234.
>> The feature is to enable HW periodical PAD tracking which measure
>> and capture the electric parameters of USB2.0 PAD.
>>
>> Signed-off-by: Sing-Han Chen<singhanc@nvidia.com>
>> Co-developed-by: Wayne Chang<waynec@nvidia.com>
>> Signed-off-by: Wayne Chang<waynec@nvidia.com>
>> ---
>>   drivers/phy/tegra/Makefile        |  1 +
>>   drivers/phy/tegra/xusb-tegra186.c | 65 +++++++++++++++++++++++++++++--
>>   drivers/phy/tegra/xusb.c          |  6 +++
>>   drivers/phy/tegra/xusb.h          | 23 +++++++++++
>>   4 files changed, 92 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/phy/tegra/Makefile b/drivers/phy/tegra/Makefile
>> index 89b84067cb4c..eeeea72de117 100644
>> --- a/drivers/phy/tegra/Makefile
>> +++ b/drivers/phy/tegra/Makefile
>> @@ -7,4 +7,5 @@ phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_132_SOC) += xusb-tegra124.o
>>   phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_210_SOC) += xusb-tegra210.o
>>   phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_186_SOC) += xusb-tegra186.o
>>   phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_194_SOC) += xusb-tegra186.o
>> +phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_234_SOC) += xusb-tegra186.o
>>   obj-$(CONFIG_PHY_TEGRA194_P2U) += phy-tegra194-p2u.o
>> diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
>> index f121b4ffbbfd..cc02cea65a21 100644
>> --- a/drivers/phy/tegra/xusb-tegra186.c
>> +++ b/drivers/phy/tegra/xusb-tegra186.c
>> @@ -89,6 +89,11 @@
>>   #define  USB2_TRK_START_TIMER(x)		(((x) & 0x7f) << 12)
>>   #define  USB2_TRK_DONE_RESET_TIMER(x)		(((x) & 0x7f) << 19)
>>   #define  USB2_PD_TRK				BIT(26)
>> +#define  USB2_TRK_COMPLETED			BIT(31)
>> +
>> +#define XUSB_PADCTL_USB2_BIAS_PAD_CTL2		0x28c
>> +#define  USB2_TRK_HW_MODE			BIT(0)
>> +#define  CYA_TRK_CODE_UPDATE_ON_IDLE		BIT(31)
>>   
>>   #define XUSB_PADCTL_HSIC_PADX_CTL0(x)		(0x300 + (x) * 0x20)
>>   #define  HSIC_PD_TX_DATA0			BIT(1)
>> @@ -609,9 +614,32 @@ static void tegra186_utmi_bias_pad_power_on(struct tegra_xusb_padctl *padctl)
>>   	value &= ~USB2_PD_TRK;
>>   	padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
>>   
>> -	udelay(100);
>> +	if (padctl->soc->poll_trk_completed) {
>> +		err = padctl_readl_poll(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL1,
>> +					USB2_TRK_COMPLETED, USB2_TRK_COMPLETED, 100);
>> +		if (err) {
>> +			/* The failure with polling on trk complete will not
>> +			 * cause the failure of powering on the bias pad.
>> +			 */
>> +			dev_warn(dev, "failed to poll USB2 trk completed: %d\n",
>> +				err);
>> +		}
>>   
>> -	clk_disable_unprepare(priv->usb2_trk_clk);
>> +		value = padctl_readl(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
>> +		value |= USB2_TRK_COMPLETED;
>> +		padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
>> +	} else {
>> +		udelay(100);
>> +	}
>> +
>> +	if (padctl->soc->trk_hw_mode) {
>> +		value = padctl_readl(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL2);
>> +		value |= USB2_TRK_HW_MODE;
>> +		value &= ~CYA_TRK_CODE_UPDATE_ON_IDLE;
>> +		padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL2);
>> +	} else {
>> +		clk_disable_unprepare(priv->usb2_trk_clk);
>> +	}
>>   
>>   	mutex_unlock(&padctl->lock);
>>   }
>> @@ -637,6 +665,13 @@ static void tegra186_utmi_bias_pad_power_off(struct tegra_xusb_padctl *padctl)
>>   	value |= USB2_PD_TRK;
>>   	padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
>>   
>> +	if (padctl->soc->trk_hw_mode) {
>> +		value = padctl_readl(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL2);
>> +		value &= ~USB2_TRK_HW_MODE;
>> +		padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL2);
>> +		clk_disable_unprepare(priv->usb2_trk_clk);
>> +	}
>> +
>>   	mutex_unlock(&padctl->lock);
>>   }
>>   
>> @@ -1560,7 +1595,8 @@ const struct tegra_xusb_padctl_soc tegra186_xusb_padctl_soc = {
>>   EXPORT_SYMBOL_GPL(tegra186_xusb_padctl_soc);
>>   #endif
>>   
>> -#if IS_ENABLED(CONFIG_ARCH_TEGRA_194_SOC)
>> +#if IS_ENABLED(CONFIG_ARCH_TEGRA_194_SOC) || \
>> +	IS_ENABLED(CONFIG_ARCH_TEGRA_234_SOC)
>>   static const char * const tegra194_xusb_padctl_supply_names[] = {
>>   	"avdd-usb",
>>   	"vclamp-usb",
>> @@ -1616,8 +1652,31 @@ const struct tegra_xusb_padctl_soc tegra194_xusb_padctl_soc = {
>>   	.supply_names = tegra194_xusb_padctl_supply_names,
>>   	.num_supplies = ARRAY_SIZE(tegra194_xusb_padctl_supply_names),
>>   	.supports_gen2 = true,
>> +	.poll_trk_completed = true,
>>   };
>>   EXPORT_SYMBOL_GPL(tegra194_xusb_padctl_soc);
>> +
>> +const struct tegra_xusb_padctl_soc tegra234_xusb_padctl_soc = {
>> +	.num_pads = ARRAY_SIZE(tegra194_pads),
>> +	.pads = tegra194_pads,
>> +	.ports = {
>> +		.usb2 = {
>> +			.ops = &tegra186_usb2_port_ops,
>> +			.count = 4,
>> +		},
>> +		.usb3 = {
>> +			.ops = &tegra186_usb3_port_ops,
>> +			.count = 4,
>> +		},
>> +	},
>> +	.ops = &tegra186_xusb_padctl_ops,
>> +	.supply_names = tegra194_xusb_padctl_supply_names,
>> +	.num_supplies = ARRAY_SIZE(tegra194_xusb_padctl_supply_names),
>> +	.supports_gen2 = true,
>> +	.poll_trk_completed = true,
>> +	.trk_hw_mode = true,
>> +};
>> +EXPORT_SYMBOL_GPL(tegra234_xusb_padctl_soc);
> I'm beginning to wonder if we perhaps went a bit overboard with this.
> These symbols are used exclusively by drivers/phy/tegra/xusb.c, which
> ends up in the same link unit as xusb-tegra186.c, so the export should
> not be necessary.
> 
> Not necessarily something that needs fixing right now, but certainly
> something to circle back to eventually.

Yes, exactly.
OK. We will refactor it the next time.
Thanks for the review.

> 
>>   #endif
>>   
>>   MODULE_AUTHOR("JC Kuo<jckuo@nvidia.com>");
>> diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
>> index 95091876c422..23d179b1a5b5 100644
>> --- a/drivers/phy/tegra/xusb.c
>> +++ b/drivers/phy/tegra/xusb.c
>> @@ -71,6 +71,12 @@ static const struct of_device_id tegra_xusb_padctl_of_match[] = {
>>   		.compatible = "nvidia,tegra194-xusb-padctl",
>>   		.data = &tegra194_xusb_padctl_soc,
>>   	},
>> +#endif
>> +#if defined(CONFIG_ARCH_TEGRA_234_SOC)
>> +	{
>> +		.compatible = "nvidia,tegra234-xusb-padctl",
>> +		.data = &tegra234_xusb_padctl_soc,
>> +	},
>>   #endif
>>   	{ }
>>   };
>> diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
>> index 8cfbbdbd6e0c..ec0b5b023ad1 100644
>> --- a/drivers/phy/tegra/xusb.h
>> +++ b/drivers/phy/tegra/xusb.h
>> @@ -8,6 +8,7 @@
>>   #define __PHY_TEGRA_XUSB_H
>>   
>>   #include <linux/io.h>
>> +#include <linux/iopoll.h>
>>   #include <linux/mutex.h>
>>   #include <linux/workqueue.h>
>>   
>> @@ -433,6 +434,8 @@ struct tegra_xusb_padctl_soc {
>>   	unsigned int num_supplies;
>>   	bool supports_gen2;
>>   	bool need_fake_usb3_port;
>> +	bool poll_trk_completed;
>> +	bool trk_hw_mode;
>>   };
>>   
>>   struct tegra_xusb_padctl {
>> @@ -475,6 +478,23 @@ static inline u32 padctl_readl(struct tegra_xusb_padctl *padctl,
>>   	return value;
>>   }
>>   
>> +static inline u32 padctl_readl_poll(struct tegra_xusb_padctl *padctl,
>> +	unsigned long offset, u32 val, u32 mask, int us)
>> +{
>> +	u32 regval;
>> +	int err;
>> +
>> +	err = readl_poll_timeout_atomic(padctl->regs + offset, regval,
>> +					 (regval & mask) == val, 1, us);
> Do we really need the atomic variant here? The function that calls this
> already uses a mutex for protection, so it can already sleep anyway.
> 

Thanks for the review. No, we don't need it to be atomic.
I'll update it in the next patch series.

> Also, do we really need the helper here? We use this exactly once and
> this doesn't make the invocation more readable, either.
>

Not at all. Removed. Thanks.


thanks,
Wayne.

> Thierry
> 
>> +	dev_dbg(padctl->dev, "%08lx poll > %08x\n", offset, regval);
>> +	if (err) {
>> +		dev_err(padctl->dev, "%08lx poll timeout > %08x\n", offset,
>> +			regval);
>> +	}
>> +
>> +	return err;
>> +}
>> +
>>   struct tegra_xusb_lane *tegra_xusb_find_lane(struct tegra_xusb_padctl *padctl,
>>   					     const char *name,
>>   					     unsigned int index);
>> @@ -491,5 +511,8 @@ extern const struct tegra_xusb_padctl_soc tegra186_xusb_padctl_soc;
>>   #if defined(CONFIG_ARCH_TEGRA_194_SOC)
>>   extern const struct tegra_xusb_padctl_soc tegra194_xusb_padctl_soc;
>>   #endif
>> +#if defined(CONFIG_ARCH_TEGRA_234_SOC)
>> +extern const struct tegra_xusb_padctl_soc tegra234_xusb_padctl_soc;
>> +#endif
>>   
>>   #endif /* __PHY_TEGRA_XUSB_H */
>> -- 
>> 2.25.1
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
