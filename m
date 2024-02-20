Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A754EC48BC4
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 12:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a9qk7d5RyMQKLV28+jIFpoO9TCMy0411/Ii4+SW0cDo=; b=mIUnU5OSSkU+raafbrztm86E90
	W1cGnmw7WYQtc2H9G6VdMmG4Q+BLHK3hruO4AF1CDGbiJI/LhwY8CKG2Elbt1Ek8ITINKN/ZEEzAS
	HNEbAdzENWfvkoF2bwzLhZeDh2uqZEd4u1WJh1pK32wrOvdVxAWhHnPtdrQKy/wW1cPQl+v7Yyzpw
	G8vqBnAOeq1+OUMWmqDXlyZ7Fe2Kfn48cfpZfFTLitbn+izXWGaIqo+5k96drS7iWbwIX9v2ifO7s
	tYglCe/4J6dlXTdXCP0Z5leelW/+FWPoQBy7ctqgmKvYuJAx/10gUXpeL299MtcDbYpNL9HokPojX
	DJ/onjNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOz8-0000000EcV0-0b05;
	Tue, 20 Feb 2024 12:12:30 +0000
Received: from mail-sgaapc01olkn20814.outbound.protection.outlook.com ([2a01:111:f400:feab::814] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOz3-0000000EcTO-46Fx
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 12:12:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BvEFFiKLM4chmRtewW+LwaKMOu7GpRpGcYxEDYO3ztxD5xXQw57jS1qTbK039BHDGI9azSgtzKP7iLebv5EEUmHoBuIzKuRHaI3Af9jtXNeZh7cRl0VpZ4IBw5BtnAbIs5aY0Yq49cdJmFLwJbTDY2SvbVlllBA4NnN5cRch5bq9x+gogPrdKBuXei9kXB3HnYcx6GQnSGAskVBlZHo3Yy2vYxAfecunfd5ZJ+2Cqq65PnmoF4DYwUrCJHnDL2q0e7P0+msHnFwhEuIPdAVje68BF+c6YrYntPaHIV3DgqZ8/D63xX2i6Ue5PXDDZrZLiI274syFdv6udApu1lwApA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=raQHX+0L+uuBWbE2hxUpIYXCXEe1Ni2adMOQbhLH4O4=;
 b=A+uQeS+yMcsL6cR7BfaQY6IxgsC5sanX4kze7gF6KkZ1Su1pIxefEm19sem1KIxiOWZqxfGq4NT+/Y7i553E9yv1u2agBrhfP3OWDScaDBXSg3LK8aWgLpurjt1Sv2PMbBvu4OEP+IH1hG4DY5iZwNXmaCWt5bl9WxWOMOwPNtgBx/e7KQl8Z13bJccNI7SuhioEKlWTxMXYWqTW+xHIdHB37QyLt+tpqzQiwkOZeEnlljHBYVj4SvZx7ZQRfMmMgyQwBTOFlzZf5EUh0Ytf9TfOhaQi87qh5qyv4o9buSPypuguHCYQLKgK5m6eHrCGZwYyNplSK8sOKzCQUruhLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=raQHX+0L+uuBWbE2hxUpIYXCXEe1Ni2adMOQbhLH4O4=;
 b=MTYgmKfGET/RRJ125qisdL2laJ864Jf9iwjFGAucU/Aa1f8O3IKWSvzoKyJ7wUpZ/7GGVaT4vfsri/YDNfQvQUlLg4CfKCGhEbg4fotpax8nN4xlzSFpDFwF3fxHav+ELjjgts8IO2fldvG9B4f86x0DHp7IWqY0FcW+t2aWre1Y7N5+FWa25M1s27qFOSBEOGWWC7rJ/fiOtDnrWI7sz8Wi34Z9H6DkSkNRNLVtiHbQpo/MiaBJ0mTHxLUsWpJ0FwSAna2ZItqfBXaBWYhCPgACUz9zn+0ozs5XZMRRrpmvG4saxXSlv96WZYlYnMUWma8EuJ82mpUjB2cl9LHWQQ==
Received: from SEZPR06MB6959.apcprd06.prod.outlook.com (2603:1096:101:1ed::14)
 by SEYPR06MB5515.apcprd06.prod.outlook.com (2603:1096:101:b2::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Tue, 20 Feb
 2024 12:12:16 +0000
Received: from SEZPR06MB6959.apcprd06.prod.outlook.com
 ([fe80::53da:a8a:83cb:b9ad]) by SEZPR06MB6959.apcprd06.prod.outlook.com
 ([fe80::53da:a8a:83cb:b9ad%4]) with mapi id 15.20.7292.036; Tue, 20 Feb 2024
 12:12:15 +0000
Message-ID: <SEZPR06MB695943CE42B3A91A22E70DD696502@SEZPR06MB6959.apcprd06.prod.outlook.com>
Date: Tue, 20 Feb 2024 20:12:11 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v3 1/5] dt-bindings: phy: hisi-inno-usb2: convert to
 YAML
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Jiancheng Xue <xuejiancheng@hisilicon.com>, Shawn Guo
 <shawn.guo@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 David Yang <mmyangfl@gmail.com>
References: <20240220-inno-phy-v3-0-893cdf8633b4@outlook.com>
 <20240220-inno-phy-v3-1-893cdf8633b4@outlook.com>
 <62221084-247c-4a0b-a030-e12cb2931411@linaro.org>
 <SEZPR06MB6959AAB6B43F3E1F5E1C526596512@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <6f3f22f6-f659-494d-963c-544cf5f44adc@linaro.org>
 <SEZPR06MB69592FACB1EF1B9FEDA89E5996512@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <9a5e9363-79eb-416c-89ae-c826062350b5@linaro.org>
 <SEZPR06MB69594A5036F122CE6C14043C96502@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <bf4ce87a-51ab-49e1-ac70-c463d8008a62@linaro.org>
 <b4fe5565-9378-4786-8c55-113f9088f34a@linaro.org>
From: Yang Xiwen <forbidden405@outlook.com>
In-Reply-To: <b4fe5565-9378-4786-8c55-113f9088f34a@linaro.org>
X-TMN: [e7BEmipHcWRwVWlIux54ASXYdDNVfLsLVvPQVdlsCEny46cM+tTOS0JyxfSRSucS]
X-ClientProxiedBy: TYCP286CA0236.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3c7::12) To SEZPR06MB6959.apcprd06.prod.outlook.com
 (2603:1096:101:1ed::14)
X-Microsoft-Original-Message-ID: <a78a161f-7c45-489c-a1dc-c1f915f55c0c@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB6959:EE_|SEYPR06MB5515:EE_
X-MS-Office365-Filtering-Correlation-Id: 474c2ea8-a576-4478-418b-08dc320d2d62
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TCsHoZUK6ztrUwcSS2ES/S4GcAdp1ApKBVIekKPBV6g39vSDo45ptle1U2Cp38f+mbEQ4r/WrT5KGqaaQV5Gxi7C9y8vaXW8qxC46DnCkKoyLHlWr3SuPqLRAUYHMF9lnAq+A9TFTgll9dVdiTtlFiVDdyyuGOoZKcOTSMR0Fs42Mdyxn5rPVYBeft+lFBdIp2FNLpuGf2Lxgzy6lRPnGtX33kgb5AoIM/6WQYeGTZ8jf0pYtzR4FunBAvl8OG9mfGdMq/043FqEBwj35k5pjLgS51349N2Osd4uhYIWH3XotihTwhnr7JUORg2y2TQGA9UbezvOHTuWATXDzvHAjcR7AzLsngGv1PYFK2r2es/B4QOgz1f94CfEj8Cfu3aVue1yLSJ4C9TT2H1NvAfZVglgSurgtfG+yGpTliYhtOiR5EgGduWVa9r/VoqngPAys8crLizzs7f3QUzy8svbrVtSnb2DKbyyf7lDx5WIemr3u3Cv/a8pAeXasd+iDRfLH+ghv73Zu9/UCjZt7HrZ4/PGhglUJlMozbUYZXeWAZA+qQ0fR++32134iVohwqNw/FOIufyU9hSEvGgjP7mGnWZ2eDvf0B11qFJejsBQCHA=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1ZNcDhGN1VEd0I4K21JUkpwQ3FGbjNWYUZuUnNGY3E0UXBxSjE1ZHRUMG9t?=
 =?utf-8?B?VnBreEZydTRtWnJSRjNJVnN5U3FWYjNITWpvYUtXKys1WlpDMDE3cHBOVUQ5?=
 =?utf-8?B?YjRscXZXcFdGVTBVNXFBMFNnUmZMOWRuYTFvYXh4bkxhN2dieTc3VFM4NmRO?=
 =?utf-8?B?N0N3NUhYdlc1bC9JUkVCYk5hU2I5Q0dmenU5azJHVFRyQUwzT1dpZ1JjdnIx?=
 =?utf-8?B?cFRUUlVLVHRqSlNKWlN6eEd2UVFGWENxOWhWM1I5cE4vbUtCOXNCUTFQYmU3?=
 =?utf-8?B?ZWdnS01BbE44TXdlTnFUNFBLSDFKMzI4RDVUT094VkpUVHJQbDc4VjJKS3FC?=
 =?utf-8?B?UjVrZXdNWUlZR3AxVW9YMVE3OGxOZ1psUktMV2p3d1JBSG9RSzZGbU1TaW0z?=
 =?utf-8?B?OGpVUFllSUdwZjc2MXdpTkJZeU5Rbi9MUkQ4NThtdVA2bVNnWitoS2NjdTNw?=
 =?utf-8?B?UCtiMEZ1VDE1dWVEV2ZCYVRDRnVYaXg0d1dOUXNkU2QyWnZpOUhDSlFxcm01?=
 =?utf-8?B?Q1hDaEwxVzJJUTBpVnFiMlBEUDVRVGthODVjQXNmdFJtdGxhM1lDVk9sTGhy?=
 =?utf-8?B?enVhR1YwZ1IvdmJmYnhsQTh5OGtobU14WjBwZnd2dms5WmpWMUZhWjZINnJR?=
 =?utf-8?B?U1VQcnhTS0pIOUFqN1k4Y0ZJcTh5M1RBWC9wUlJ3aFYyeGg5a0NQZ0ZjaG8r?=
 =?utf-8?B?S1grWHN3Vnp4MlQ4cHNWWU1ScEZHb2xnWnlSQjFaZlF0QmlEanNVTnBSa1R2?=
 =?utf-8?B?NXlDRkxDQnRBelNDTlJXbjVOS2Y4OVFSMWU5MDBHSDltMTd3SXVlTk13b1JC?=
 =?utf-8?B?Q1FjaSt4cFp3ZENxRXo3SElUdFZFbUl4V0NqTlBPZHJPOGI3aksvSU5udmth?=
 =?utf-8?B?WmdzNGlKdklTYk9YTnZ1dTdFVU80MXFuQVoraFMya0R3TjR3djB6UjdWWnZm?=
 =?utf-8?B?dkFNMXZkRk4vZm9CQVJ2VHlXaVRKSTVydHhCaUJvdmMyQ3ZXSTJra1c3WDll?=
 =?utf-8?B?NWUyUjYwWXZFSVBXTi9RTWc5SzZueXBRV0pmcEtvT3RGVVVnZyt4ZkptNWlv?=
 =?utf-8?B?ZFcreUJjQllyVm1yYU5FY1kyOWloL0I5UVIzOUxXdW93ZGJaN3h0bWNhTmN4?=
 =?utf-8?B?TVdwSktFZ2hYMFNoZU9nTXIzT2lyUWRUS3BKdlQ1YUVaVkNZVVNvNlJ5L0Q5?=
 =?utf-8?B?bWgrR2xMVjdhMnVZMytCcDA5aTE1V1Rzcm1OM0JRQUVvU05BOVRWejl3UGhh?=
 =?utf-8?B?WGwrMTNjbmMydzdYcTUyR2ZUQnM5TGlhNXBtdGxsK0wrbVZlRzBySFF5SjZE?=
 =?utf-8?B?aS9kQTljVE9SdUtlZzhYdXpDaHF6NEIxUHNmanozcnIyWkNqREl1TnNUTlZs?=
 =?utf-8?B?cDBaSVVMRVJXRm8yYXRBaXlVTHRvNTNSK0x4RG1LT3lJSjNZaXhmUHhiZkUy?=
 =?utf-8?B?dG5VMW9ma1hiM2dEaEpCV0FTV3JBVXUra2VZM2RSa3pobVVwb1BuYVNUaFBo?=
 =?utf-8?B?TlZIZW9NQXdnU1VRUWxBNG1UOTlKMXlwbFZWWXNrZGVwSElmbE83T3A1c0t6?=
 =?utf-8?B?S2ZYVk4xOEs3VmVzUzZRaUxjaGxuOUkva1J4QmYvdzBVQlBOTjl6bEJUUTRn?=
 =?utf-8?B?Q0JYK0ZwNnQ3eHdRNEJsOTdmT2gwVk4wWjB4L1Y5bG1aUE12a2FHOTBzRURz?=
 =?utf-8?B?NzRMK2FNREJsT3ZEZlJPRm40UFhKMWJuckppL09XdFkrcHozNGFiTDRaR3Fr?=
 =?utf-8?Q?0Dgo1m2RQu1xdYQTeTNRUfwcAMKwZQGPw/O4vPc?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 474c2ea8-a576-4478-418b-08dc320d2d62
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB6959.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2024 12:12:15.8496
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR06MB5515
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_041226_128684_1386D6CD 
X-CRM114-Status: GOOD (  22.53  )
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

T24gMi8yMC8yMDI0IDc6NDMgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMjAv
MDIvMjAyNCAxMjo0MSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24gMjAvMDIvMjAy
NCAxMTo0MCwgWWFuZyBYaXdlbiB3cm90ZToKPj4+IE9uIDIvMjAvMjAyNCA0OjE2IFBNLCBLcnp5
c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pj4+IE9uIDE5LzAyLzIwMjQgMjI6NDksIFlhbmcgWGl3
ZW4gd3JvdGU6Cj4+Pj4+IE9uIDIvMjAvMjAyNCA1OjM3IEFNLCBLcnp5c3p0b2YgS296bG93c2tp
IHdyb3RlOgo+Pj4+Pj4gT24gMTkvMDIvMjAyNCAyMjozNSwgWWFuZyBYaXdlbiB3cm90ZToKPj4+
Pj4+PiBPbiAyLzIwLzIwMjQgNTozMiBBTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+
Pj4+Pj4gT24gMTkvMDIvMjAyNCAyMjoyNywgWWFuZyBYaXdlbiB2aWEgQjQgUmVsYXkgd3JvdGU6
Cj4+Pj4+Pj4+PiBGcm9tOiBZYW5nIFhpd2VuIDxmb3JiaWRkZW40MDVAb3V0bG9vay5jb20+Cj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gQWRkIG1pc3NpbmcgY29tcGF0aWJsZSAiaGlzaWxpY29uLGhpMzc5
OG12MTAwLXVzYjItcGh5IiB0byBjb21wYXRpYmxlCj4+Pj4+Pj4+PiBsaXN0IGR1ZSB0byBwcmlv
ciBkcml2ZXIgY2hhbmdlLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEFsc28gcmVuYW1lIHRvIGhpc2ls
aWNvbixpbm5vLXVzYjItcGh5LnlhbWwgYW5kIGFkZCB0aGlzIG5hbWUgdG8KPj4+Pj4+Pj4+IGNv
bXBhdGlibGUgbGlzdHMuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gRml4ZXM6IDM5NDBmZmM2NTQ5MiAo
InBoeTogaGlzaWxpY29uOiBBZGQgaW5uby11c2IyLXBoeSBkcml2ZXIgZm9yIEhpMzc5OE1WMTAw
IikKPj4+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFlhbmcgWGl3ZW4gPGZvcmJpZGRlbjQwNUBvdXRs
b29rLmNvbT4KPj4+Pj4+Pj4+IC0tLQo+Pj4+Pj4+Pj4gICAgICAuLi4vYmluZGluZ3MvcGh5L2hp
c2lsaWNvbixpbm5vLXVzYjItcGh5LnlhbWwgICAgICB8IDk1ICsrKysrKysrKysrKysrKysrKysr
KysKPj4+Pj4+Pj4+ICAgICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1oaXNpLWlu
bm8tdXNiMi50eHQgfCA3MSAtLS0tLS0tLS0tLS0tLS0tCj4+Pj4+Pj4+PiAgICAgIDIgZmlsZXMg
Y2hhbmdlZCwgOTUgaW5zZXJ0aW9ucygrKSwgNzEgZGVsZXRpb25zKC0pCj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
aGlzaWxpY29uLGlubm8tdXNiMi1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvaGlzaWxpY29uLGlubm8tdXNiMi1waHkueWFtbAo+Pj4+Pj4+Pj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPj4+Pj4+Pj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uMWI1N2UwMzk2MjA5
Cj4+Pj4+Pj4+PiAtLS0gL2Rldi9udWxsCj4+Pj4+Pj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L2hpc2lsaWNvbixpbm5vLXVzYjItcGh5LnlhbWwKPj4+Pj4+
Pj4+IEBAIC0wLDAgKzEsOTUgQEAKPj4+Pj4+Pj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPj4+Pj4+Pj4+ICslWUFNTCAxLjIKPj4+
Pj4+Pj4+ICstLS0KPj4+Pj4+Pj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFz
L3BoeS9oaXNpbGljb24saW5uby11c2IyLXBoeS55YW1sIwo+Pj4+Pj4+Pj4gKyRzY2hlbWE6IGh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+Pj4+Pj4+Pj4gKwo+
Pj4+Pj4+Pj4gK3RpdGxlOiBIaVNpbGljb24gSGlTVEIgU29DcyBJTk5PIFVTQjIgUEhZIGRldmlj
ZQo+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4gK21haW50YWluZXJzOgo+Pj4+Pj4+Pj4gKyAgLSBZYW5n
IFhpd2VuIDxmb3JiaWRkZW40MDVAb3V0bG9vay5jb20+Cj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+PiAr
cHJvcGVydGllczoKPj4+Pj4+Pj4+ICsgIGNvbXBhdGlibGU6Cj4+Pj4+Pj4+PiArICAgIGl0ZW1z
Ogo+Pj4+Pj4+Pj4gKyAgICAgIC0gZW51bToKPj4+Pj4+Pj4+ICsgICAgICAgICAgLSBoaXNpbGlj
b24saGkzNzk4Y3YyMDAtdXNiMi1waHkKPj4+Pj4+Pj4+ICsgICAgICAgICAgLSBoaXNpbGljb24s
aGkzNzk4bXYxMDAtdXNiMi1waHkKPj4+Pj4+Pj4+ICsgICAgICAtIGNvbnN0OiBoaXNpbGljb24s
aW5uby11c2IyLXBoeQo+Pj4+Pj4+PiBBY2NvcmRpbmcgdG8geW91ciBkcml2ZXIgaGlzaWxpY29u
LGhpMzc5OG12MTAwLXVzYjItcGh5IGFuZAo+Pj4+Pj4+PiBoaXNpbGljb24saW5uby11c2IyLXBo
eSBhcmUgbm90IGNvbXBhdGlibGUuCj4+Pj4+Pj4gQWgsIGkgZGlkbid0IHBheSB0b28gbXVjaCBh
dHRlbnRpb24gdG8gdGhhdC4gSSBzaG91bGQgcmVtb3ZlIHRoZSBlbnRyeQo+Pj4+Pj4+IGZvciBo
aXNpbGljb24saW5uby11c2IyLXBoeSBpbiB0aGUgZHJpdmVyLiBTb3JyeSBmb3IgdGhhdC4KPj4+
Pj4+IFdlIGRvbid0IHRhbGsgaGVyZSBhYm91dCBkcml2ZXIsIGFsdGhvdWdoIEkgdXNlZCB0aGUg
ZHJpdmVyIGFzIHByb29mIG9yCj4+Pj4+PiBhcmd1bWVudCwgYmVjYXVzZSBJIGRvbid0IGhhdmUg
YWNjZXNzIHRvIGhhcmR3YXJlIGRhdGFzaGVldCAoYW5kIG5vCj4+Pj4+PiBpbnRlbnRpb24gdG8g
bG9vayB0aGVyZSkuCj4+Pj4+Pgo+Pj4+Pj4gV2hhdCBJIGNsYWltIGlzIHRoZXNlIGFyZSBub3Qg
Y29tcGF0aWJsZSwgc28gcmVzcG9uZCB0byB0aGlzIGFyZ3VtZW50LAo+Pj4+Pj4gbm90IHNvbWUg
b3RoZXIgb25lLgo+Pj4+PiBXaHkgbm90PyBPZiBjb3Vyc2UgdGhleSBhcmUgY29tcGF0aWJsZS4g
QWxsIDMgU29DcyBhcmUgdXNpbmcKPj4+PiBXaHk/IEJlY2F1c2UuLi4KPj4+Pgo+Pj4+PiBpbm5v
LXVzYjItcGh5LiBUaGUgb25seSBkaWZmZXJlbmNlIGhlcmUgaXMgdGhlIG1ldGhvZCB0byBhY2Nl
c3MgdGhlCj4+Pj4gLi4uIGhlcmUhIERpZmZlcmVudCBwcm9ncmFtbWluZyBpbnRlcmZhY2UgbWVh
bnMgbm90IGNvbXBhdGlibGUuCj4+Pj4KPj4+PiBQbGVhc2UgcHJvdmlkZSBpbnN0ZWFkIGFueSBh
cmd1bWVudCB0aGF0IHRoZXkgYXJlIGNvbXBhdGlibGUsIGluIHRoZQo+Pj4+IG1lYW5pbmcgb2Yg
RGV2aWNldHJlZSBvZiBjb3Vyc2UuIFlvdSBhcmUgY2xhaW1pbmcgaW5uby11c2IyLXBoeSAgY2Fu
IGJlCj4+Pj4gdXNlZCBmb3IgaGkzNzk4bXYxMDAgYW5kIGl0IHdpbGwgd29yayBmaW5lPwo+Pj4+
Cj4+Pj4+IHJlZ2lzdGVycy4gVGhleSBhcmUgYWxsIGVuYWJsZWQgYnkgYHdyaXRpbmcgQklUKDIp
IHRvIGFkZHJlc3MgMHg2YC4gSW4KPj4+Pj4gdGhlIGNvdmVyIGxldHRlciwgSSBzYWlkIHRoZSBk
cml2ZXIgaXMgYWN0dWFsbHkgZG9pbmcgdGhpbmdzIHdyb25nLgo+Pj4+IENvdmVyIGxldHRlciBk
b2VzIG5vdCBtYXR0ZXIsIEkgZG9uJ3QgZXZlbiByZWFkIHRoZW0uIFlvdXIgY29tbWl0cyBtYXR0
ZXIuCj4+Pj4KPj4+Pj4gRXNwZWNpYWxseSB0aGUgY29tbWl0IGFkZGluZyBQSFlfVFlQRSBlbnVt
cywgdGhlIG5hbWUgaXMgY29uZnVzaW5nIGFuZAo+Pj4+PiBjb252ZXlzIHRoZSB3cm9uZyBpbmZv
LiBJdCdzIG5vdCBQSFkgd2hpY2ggYXJlIG5vdCBjb21wYXRpYmxlLCBpdCdzIHRoZQo+Pj4+PiBi
dXMuIEknbGwgZml4IHRoZSBkcml2ZXIsIGJ1dCBzdGlsbCB0aGUgUEhZIGhhcmR3YXJlcyBhcmUg
Y29tcGF0aWJsZQo+Pj4+PiBiZXR3ZWVuIHRoZXNlIDMgU29Dcy4KPj4+PiBQcm92aWRlIGFueSBh
cmd1bWVudC4KPj4+IEp1c3QgdGFrZSBhIGxvb2sgYXQgdGhlIGRyaXZlci4gaGlzaV9pbm5vX3Bo
eV93cml0ZV9yZWcoKSBpcyB0aGUKPj4+IGZ1bmN0aW9uIHRoYXQgZGlmZmVycyBiZXR3ZWVuIGRp
ZmZlcmVudCBtb2RlbHMuIEJ1dCBmb3IgYWxsIG9mIHRoZW0sCj4+PiBoaXNpX2lubm9fcGh5X3Nl
dHVwKCkgaXMgdGhlIHNhbWUuCj4+Pgo+Pj4KPj4+IGhpc2lfaW5ub19waHlfd3JpdGVfcmVnKCkg
c2hvdWxkIGJlIG1vdmVkIHRvIGEgc2VwYXJhdGUgYnVzIGRyaXZlci4gSXQncwo+Pj4gYnVzLXJl
bGF0ZWQsIG5vdCBwaHkuIFBIWSBkcml2ZXIgc2hvdWxkIG5vdCBjYXJlIGhvdyB0byBhY2Nlc3Mg
dGhlIGJ1cywKPj4gU28gZHJpdmVycyBhcmUgY29tcGF0aWJsZSBvciBoYXJkd2FyZT8gV2UgdGFs
ayBhYm91dCBoYXJkd2FyZSwgbm90Cj4+IGRyaXZlcnMuLi4KPj4KPj4+IGJ1dCB0aGUgYnVzIGRy
aXZlciBzaG91bGQuIFRoZSBQSFkgZHJpdmVyIG9ubHkgbmVlZHMgdG8gdXNlIHJlZ21hcF8qCj4+
PiBBUElzIHRvICJ3cml0ZSBCSVQoMikgdG8gYWRkciA2Ii4KPj4gRGlmZmVyZW50IHByb2dyYW1t
aW5nIGludGVyZmFjZSwgc28gbm90IGNvbXBhdGlibGUuCj4gQWx0aG91Z2ggbWF5YmUgSSBqdW1w
ZWQgdG8gY29uY2x1c2lvbnMgdG9vIGZhc3QuIERvIHlvdSBjbGFpbSB0aGF0IGFsbAo+IHJlZ2lz
dGVycyBhcmUgdGhlIHNhbWU/IEFsbCB0aGUgdmFsdWVzLCBvZmZzZXRzLCBmaWVsZHMgYW5kIG1h
c2tzPwoKCkkgZG9uJ3QgcXVpdGUgdW5kZXJzdGFuZC4gSSd2ZSBzYWlkIHRoZXJlIGFyZSB0d28g
cmVnaXN0ZXIgc3BhY2VzLiBPbmUgCmlzIHRoZSBidXMgdG8gYWNjZXNzIHRoZSBQSFkgKGkuZS4g
cGVyaWN0cmwgZm9yIG12MTAwIGFuZCBjdjIwMCBhbmQgbW1pbyAKZm9yIG12MjAwKSwgdGhlIG90
aGVyIGlzIHRoZSBQSFkgcmVnaXN0ZXIgc3BhY2UuIFNvIGlmIHlvdSBhcmUgdGFsa2luZyAKYWJv
dXQgdGhlIHByaW9yIG9uZSwgdGhlbiBubywgYmVjYXVzZSB0aGUgUEhZIGlzIGF0dGFjaGVkIHRv
IGRpZmZlcmVudCAKYnVzZXMuIEJ1dCBmb3IgdGhlIGxhdHRlciwgeWVzLgoKClNvIGhlcmUgd2Ug
YXJlIHRhbGtpbmcgYWJvdXQgdHdvIGRldmljZXMuIE9uZSBpcyB0aGUgUEhZLCB0aGUgb3RoZXIg
aXMgCnRoZSBidXMgdGhlIHBoeSBhdHRhY2hlZCB0by4KCgpUaGUgb2xkIGJpbmRpbmcgaXMgbWl4
aW5nIGFsbCB0aGUgdGhpbmdzIHVwIGJlY2F1c2UgSU5OTyBQSFkgaXMgdGhlIG9ubHkgCmRldmlj
ZSBhdHRhY2hlZCB0byB0aGUgZGVkaWNhdGVkIGJ1cyBpbXBsZW1lbnRlZCBieSBwZXJpY3RybC4g
QnV0IGl0J3MgCm5vdCBob3cgaXQgd29ya3MuIFRoZSBiaW5kaW5nIGlzIGZvciB0aGUgUEhZLCBu
b3QgZm9yIHRoZSBidXMuCgoKRm9yIG12MTAwIGFuZCBjdjIwMCwgaXQnczogY3B1LT5wZXJpY3Ry
bC0+aW5uby1waHkuIEZvciBtdjIwMCwgaXQnczogCmNwdS0+aW5uby1waHkuIGNwdSBhbHdheXMg
YWNjZXNzZXMgcGVyaXBoZXJhbHMgd2l0aCBNTUlPLCBib3RoIGZvciAKcGVyaWN0cmwgYW5kIG12
MjAwLWlubm8tcGh5LiBCdXQgaWYgdGhlIGlubm8tcGh5IGlzIGF0dGFjaGVkIHRvIApwZXJpY3Ry
bC4gQ1BVIG11c3QgYWNjZXNzIHRoZSByZWdpc3RlcnMgb2YgaW5uby1waHkgdGhyb3VnaCAKcGVy
aWN0cmwoSGVyZSBwZXJpY3RybCBhY3QgYXMgYSBidXMgZHJpdmVyIGxpa2UgYSBJMkMvU1BJIGNv
bnRyb2xsZXIpLsKgIApGb3IgbXYxMDAgYW5kIGN2MjAwLCB0aGUgZGlmZmVyZW5jZSBoZXJlIGlz
IG9ubHkgcmVsYXRlZCB0byB0byBwZXJpY3RybCwgCm5vdCB0aGUgUEhZIGl0c2VsZi4gRm9yIG12
MjAwLCBwZXJpY3RybCBkb2VzIG5vdCBpbXBsZW1lbnQgdGhpcyBzdHJhbmdlIApidXMgYW55bW9y
ZSwgaW5zdGVhZCB0aGUgcGh5IGlzIGF0dGFjaGVkIHRvIHN5c3RlbSBidXMgZGlyZWN0bHkuCgoK
SSBkb24ndCB1bmRlcnN0YW5kIHdoeSB5b3Ugc2F5IHRoZXkgYXJlIG5vdCBjb21wYXRpYmxlLCBz
aW1wbHkgYmVjYXVzZSAKdGhleSBhcmUgYXR0YWNoZWQgdG8gZGlmZmVyZW50IGJ1c2VzLiBGb3Ig
eDg2LCBwZXJpcGhlcmFscyBhcmUgbWFwcGVkIGluIApkZWRpY2F0ZWQgSU8gYWRkcmVzcyBzcGFj
ZXMgd2l0aCBgSU5gIGFuZCBgT1VUYCwgd2hpbGUgZm9yIEFSTSwgdGhleSBhcmUgCmFsbCBhdHRh
Y2hlZCB0byBNTUlPIGJ1c2VzIGxpa2UgQVBCL0FIQi9BWEkgZXRjLi4gU28gcGVyaXBoZXJhbHMg
Zm9yIHg4NiAKYW5kIHBlcmlwaGVyYWxzIGZvciBhcm0gYXJlIGFsc28gbm90IGNvbXBhdGlibGU/
CgoKVGhlIGJpbmRpbmcgbm93IGlzIHN0aWxsIGJyb2tlbi4gSSBhZG1pdCBpdCdzIHRydWUuCgoK
Pgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPgoKLS0gClJlZ2FyZHMsCllhbmcgWGl3ZW4K
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
