Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F59AC624A4
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 07:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DE5MOqUCp9gf8mq8Qbx0y8uL/ZKhI9QvZrrtehsppww=; b=cOYeLMRQzjUJQu
	ob8oxIgaI9PZqP2rB8EmYTzfFX6ENOaMY5EUO0E+uqHv7jrFAWdvnSPpxBtxTVASoKGSC6aJ3cHi6
	unnVp8ERVnF88eT8WwdqhLLbpf2wA3pcjff6sy+C5ZCCWwqGMOPAf7vk9Tpz3SN/qqXX5xSyCfXj0
	6OQbql5/sFVsLI0q/Mqw1uIwI/IpuNahgDQAs57D49tgUdPJMX1y3hg+UfvLP2WIhwR/Rzt5d51dG
	mY66AuoKS8aeOVs8Zb3bzQrFOSDbJepwbt9UvwK6+YXw9VbN7yaNt46VytQRMtaBgyZoBOwztFukW
	o2YpjZpPLiN7aM5rMARA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21bO-0000000GXMg-3BA5;
	Thu, 03 Sep 2026 07:11:14 +0000
Received: from mail-eastus2azlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c110::1] helo=BN1PR04CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21bM-0000000GXKj-0ggO
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 07:11:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B7TF4kA94aZQrLKY8XgjXevCZmWS0dcPR8sjqZYvHZ0UldEPPocoIq2wLe1VJ+7oVJ1QYDNAQ/Rw8Tl0Ubec2GNKohEAblkwtanEtlrYP/87QqKc7R0YDC8AhTvOxwWV9zFtH61Klin+ILU6GBvbUOu9Y1gFQPDA1FKXldKbU5f6EiX+jYZ7RSUR7LLoppwpZhLRldFM2xiFXF6myxqoxjSRso6S6q/U+uzPtaKANoLifOV604YJbXhcpbeuUHVwm6ynof4ZcRijdFYCET8C1peK4wFvWKyXy4cpIvlN5ODcLQXKNnoDYppH8OxGPeZ1z5QpuUsiArGH56+rUK3gLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oEiKRIEN4yRg1vZhPUdmSWyKa+o9dGB7E1CeuzoLOTc=;
 b=MqfWHKph7tsz/ZmFKXF3jL+lSiybQz8SzrCoOVuLPriZtC+xa/dWeQcXfvRC9Z+yn/7NpeOCqVHk2bNvquK4ThG0FirbPSNLsgQG4kBd4MQbc3KjjGQWCmU2fo7MUe9gPxRXvuwrgtwxLyCNIlUM0l1zTembyOp6DIPlPh+CO3pjL4xCfsxXXwtbs55r0awiw3OzBRaIwBMBSaO5afXp+pkN+SPNplMQfqnLmhbZC6aoYoodrRmRPnTEHEijnQ1TiwuMNFRwtY5HfNa2LkF5H3Bz+XmZ2LXfbXnyt/0wBjVwR0C8ULsyHqX4BsMlkYXqP0tzADiE7j8cX+eMi86JCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oEiKRIEN4yRg1vZhPUdmSWyKa+o9dGB7E1CeuzoLOTc=;
 b=BePgXKq7EsEwz8vU9PNDLxZwsLgv+9+QbcCh/hOX5AzG03lvZGxl1H3SBLkX9e/VQyGOsr7XqrU/IxCF67stZEvz9NTXniH5rfHGK38Po+bb4/1voTsjQ1iZuc14YpENqVLBfV5VivL4+29Jd9L8WdPN+M82pifTnTZeL03Yt6aa1QC0x/pBj9hYIgNiD2Fo3rHxHpMXSJ3Lm+wS+JYdIlqhr/tey75f+coHkJHGCpA8qeysSRybhUW9P4yj6XMU/yFEFQ9muPpcl4PGeGPut7H8d18Fa5yNqO0gC5KJSnfEd9m4Vr/WYjZF58vN3cxBuc+oxkOiCvCJL/OoSmZzDA==
Received: from DS0PR12MB7512.namprd12.prod.outlook.com (2603:10b6:8:13a::5) by
 CY8PR12MB7492.namprd12.prod.outlook.com (2603:10b6:930:93::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.360.13; Thu, 3 Sep 2026 07:11:05 +0000
Received: from DS0PR12MB7512.namprd12.prod.outlook.com
 ([fe80::2b77:2cc3:d751:6b75]) by DS0PR12MB7512.namprd12.prod.outlook.com
 ([fe80::2b77:2cc3:d751:6b75%5]) with mapi id 15.21.0360.008; Thu, 3 Sep 2026
 07:11:05 +0000
From: Wayne Chang <waynec@nvidia.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: "mathias.nyman@intel.com" <mathias.nyman@intel.com>, "vkoul@kernel.org"
	<vkoul@kernel.org>, "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"thierry.reding@gmail.com" <thierry.reding@gmail.com>, Jon Hunter
	<jonathanh@nvidia.com>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "linux-tegra@vger.kernel.org"
	<linux-tegra@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
Subject: Re: [PATCH V2 2/8] dt-bindings: usb: Add Tegra264 XUSB host support
Thread-Topic: [PATCH V2 2/8] dt-bindings: usb: Add Tegra264 XUSB host support
Thread-Index: AQHdOXrYCVy0Hewxx0ybB+fZ7PfAOLa5gUEAgALyjoA=
Date: Thu, 3 Sep 2026 07:11:05 +0000
Message-ID: <babe3a6d-987a-4a27-9270-dac214b7b701@nvidia.com>
References: <20260831185835.3732707-1-waynec@nvidia.com>
 <20260831185835.3732707-3-waynec@nvidia.com>
 <20260901-solid-uber-coati-381d2d@quoll>
In-Reply-To: <20260901-solid-uber-coati-381d2d@quoll>
Accept-Language: en-US, zh-TW
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR12MB7512:EE_|CY8PR12MB7492:EE_
x-ms-office365-filtering-correlation-id: 444017da-7a47-49b6-b87a-08df098a8542
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|23010399003|366016|22082099003|56012099006|10067099003|5023799004|11063799006|4143699003|3023799007|18002099003|38070700021;
x-microsoft-antispam-message-info: sQEcrTaf7/lqCYtrVd0E/TpaocY/68DGlJAVGR4xItSpLz5w1k7mpstGw55HGSLd8DNQ4Lsjji2wScqdrhYFqUwoJStJE3MfdPKy9gaR+cJaRAj9Nc0n5xEecupk4mdFYlCBAa7/uzZUXKyo5xCLIhGFTcJiwgB+L3cLQ6dH/yuOTU7/Vvp7sJIlSh2e3+Oag3XLxDNHiQxUXFZ+cS0oXwzgnPIPay7W/S7wCZhS1oGgYQ4PiopaEpzm8bVZjCzo5vfdejR5r8+bmf4VQAc49q+k1kRGGVoXDWBPMjP3xqTgfzLDoxo2kY2uHAOx+GGECekhxvCb7CDjIibUwq5cqNDMB65g+1WtovMH0+4z+KtkcwaRDQ6h+LICdVeHcxDXWotlpfOtGkchzFTSGni5nLLjVeuOzHTur4ixqrQI8Er16CMFYidrzVsErHf3vhx5lA1e/bMChRJMnKUJqyUP42wRV20ZKQRzX8K6XVOOfA5o3BBz+0/0ntG6Hroo9ZRCvePAoC8eVWopieyZYkZH5CawmZlpQDWXTPBp+XhcdSisbs2LIU45KjOc5KWtAy/h3Hn3zJ8QK+BsyMfR9FPhxN66st0ajinXpDaEBbhmEZ41sWqJiP+nO3aUc6bjxTZB445L2Sh/ADFhSwP9Etpa76BPZv9cXzu9NTphcs94ZlTCN/DNzCUBupYe9ptY7wlDlVMSPZemGgXzjGFlwELzEn10p4A7jhsXNpzv5hZ4n+E=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR12MB7512.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(23010399003)(366016)(22082099003)(56012099006)(10067099003)(5023799004)(11063799006)(4143699003)(3023799007)(18002099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SUlzbkVBWEYreUFIUkZDakczeG9uNEwzcklsWHhTcnpEcHBTVGVyR3pXZHJy?=
 =?utf-8?B?OTZIOEZBVnlCSjgrUi9raFd0bmU1ZWhrMUxhQnVYQ0hOejcyVWZDVTU2REtq?=
 =?utf-8?B?RWVkazZXY0hlRllYKzBIbU5GemV5RXAvcVZPR254YXFGZlF5UVBETDNYR2tx?=
 =?utf-8?B?cnMraDRpYnBaS250ME13QUR5cVFyNmlTRjRlZlpGVE1Ndi9pcCtaMjM0Nzky?=
 =?utf-8?B?eEpBUGJkYW0yWWtQRWdaQTMzSGtxYjhnZnV3L3VkTklHOTB1bEZFaGhwZ1No?=
 =?utf-8?B?NFRNcW5GbGJGdHFQWVJocjB2SGtJdUxLcis5aktKKzVLUEdzSUdmcFlvMVBx?=
 =?utf-8?B?TXdkRmxJU2dQZzF3Tk02cnd4NUorcDEvVkNFdUF1WitPeEVoU1NFcXM0ak5a?=
 =?utf-8?B?b29hVlEzajZURHF2bGlZaWZMQytsVmRzYTkxWGZUU0xGZ0hvdU9zSVFjMTJJ?=
 =?utf-8?B?b0tRMDZYZ04yc3p6R053QTlld1kwL2M0UlZxVzhUbllCTHE5Y01YKzJXS21t?=
 =?utf-8?B?Zi9BYzdtdTc5NFFSYzgxTGVUQjg1V3RJam8vNk5jSC9yUlZuZGQ0SzlPZkFL?=
 =?utf-8?B?OVRQQ2hhck5UTDdFR0lCMWVBdCtNdmM0U0d2STl0K0VZWmV2QWMwaE9pUFYy?=
 =?utf-8?B?dWR1NEFya1ZuVzVwNUphMWltNC9YRWFIRU5CWERxNTI5QjNvYnZET0NQY0tu?=
 =?utf-8?B?UUp3Mnl2aUdFN1NIUUQ3c0NJcXhYb2M1M2xkbUJrVVEyeUxpYnNYU0R4TDBi?=
 =?utf-8?B?c2w2YjlZbDVDWFJzZlNOcTVUajdMa3FOc0lGS1VMbW1QNEY1eVJiQyt4UlF5?=
 =?utf-8?B?L1VFTmt5VThNek41RjNDT3dGVWk1QWRCUzVkdW9PVVJyZW1oOTJaUHJEZlZC?=
 =?utf-8?B?RkxtRlNmNUdNWDhsdC9vbCtKTmQ0ajhVWXIzNmZJSHFHK2ZiSkFiZkk5c2dE?=
 =?utf-8?B?Q1pJRFZ0U3ZwdGR3TjhwajQxckNuTFFRSXUxRXljSDVYVlZIYUNXWnhydXFo?=
 =?utf-8?B?L056Y0p2dmVnNjBab0ZtWEtxZERRTWUvWW9vdmplNnRIeWxRS2Q1YTljVTU3?=
 =?utf-8?B?bm9ad3h1YzhsdlVSOVMwbkMxMnUvcGs5c2R4YXpxVGZSYWNYYllQZGE0bW1K?=
 =?utf-8?B?aVlXVCtEdC92VEdod3ZzZ2t6UE1Lbys1M2xFaDM5QmlKZGtONi9lL0xDdWw2?=
 =?utf-8?B?V09uUXRHUlppdm5RcTRQQ09GK212VkJTYVh2RW9yeVUzOGpvajBNSmZyTDlJ?=
 =?utf-8?B?NlNvTnYwdW04RldxenVNd0lSRlNPR1lUVVM5K3FrS0lLdkxGQUFoMmRnVVVn?=
 =?utf-8?B?eXFGTUl4ZVYzUDNPbmJ1QkxqTk9HcU8xRERtdElFa0dXL0duZVJqZFRDYXlL?=
 =?utf-8?B?c3RnU0liUGVQS3NtbUxESDIyV1FSNjFPUlh2NTk0R3krNFhlOFU0QUhiN3Iy?=
 =?utf-8?B?OGtZNHFBUmhPMVo0Mmk5b1E0dCtoRDRpRzBoN3c2dG1seTJuclp4bzJrY2tR?=
 =?utf-8?B?cTNCUUVyeUJTdkZjM293OGpjK2VxLzNTQmlXTFplT0pTeEJEYms5T3cvN1FR?=
 =?utf-8?B?RkFaT3k5NnlwT2xxSmU3Tnh4VzF5U1E3UWZvV1pscXYrbUVGM1RITlBLY25u?=
 =?utf-8?B?K1ZWN21vb1BzQkM2N0dUM3ZpaGRhWlpHMFZ1bVdEMUpjdHJ1OVp4N05OTUxs?=
 =?utf-8?B?N0J2eVhPTEVnWEhpeVQ0d1F3WDJSTG1XNGRtZG5KdzVXYkpsVlJ4QmdmaGln?=
 =?utf-8?B?c0owTkcyU3pYMERLcjJVRnY2TkV3RDl2Z2I2aERKeE93SDViZ0xSbVJFalJC?=
 =?utf-8?B?UVAzOWlyRnhUZmV0dlFnbjEvYXJqSXd4Q3pOdHA1ZmF4N1p1NkZOeDArVW0v?=
 =?utf-8?B?YnFUQ1owVmZEbnBEK0F4QlA3YUxWSzNDQU5tUFBPb09HQml3MFNKS1ljL0I0?=
 =?utf-8?B?dDc5MjlBS0E5dk1QaGVUY29hSXlhSGI4VVE5OGx1U0I3OXpOeHFIZURvWDV0?=
 =?utf-8?B?SHNmaW03SmNlb2d6dHFIVlRsejhDTVBpdk1iNnFKeVB4eDhyZkVPTFRWeEww?=
 =?utf-8?B?TlpFMTBzT1ZtS2kzWVZ2M2ZZTCtncVZkUEl2aVU0WGN3dmpSZFloZm8wM0R6?=
 =?utf-8?B?ODEybzRBNnlERExxSFovczYxK05UbFhtbmVDQklmTXBVYnlKN0swcnFKNHRR?=
 =?utf-8?B?WmNnVVhWYVNzU1NGaVBjRldIanN3VzY4NExwejcxQzdzV3c3Rml4YjVuTXhn?=
 =?utf-8?B?ZGRwM0pWSWw2TUtsd01KbWxKT2Q1dXBpNmg4RjNtSlJaRHFYZnpGVnVqZlFC?=
 =?utf-8?B?eHArZ2R3RFdLRHBnUkYzZnhNdTJyMnJLZUpjNEppaU03SDNKOWtZQT09?=
Content-ID: <365B6222BABF3E4382C2523700BDE079@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB7512.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 444017da-7a47-49b6-b87a-08df098a8542
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2026 07:11:05.4669
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TTO/tI815dPHUWS5B4AMI64UOwB+5pVsndnLGO3GJGrFAGdxprJiZwQ0ZnCPztannXdmf4NJOnsIxz3BLQ+BHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB7492
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_001112_268872_8C075D51 
X-CRM114-Status: GOOD (  23.50  )
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

Hi Krzysztof,

Thanks for the review. I'll split the changes into three parts and 
address all the comments.
- phy: tegra: xusb: dt-bindings/phy + drivers/phy/tegra
- usb: host: xhci-tegra + its dt-bindings/usb
- arm64: DTS enablement

thanks,
Wayne.

On 9/1/26 18:10, Krzysztof Kozlowski wrote:
> External email: Use caution opening links or attachments
>
>
> On Tue, Sep 01, 2026 at 02:58:29AM +0800, Wayne Chang wrote:
>> Extend the Tegra234 XUSB host binding to cover Tegra264:
>>
>> - Add nvidia,tegra264-xusb compatible string
>> - Document optional USB wake interrupts for Tegra264
>> - Document Tegra264 PMC wake event to port mapping
>> - Allow up to five IOMMU specifiers for the additional XUSB host
>>    stream IDs
>>
>> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> Why are USB patches mixed with DTS and phy ones? That's like three
> separate subsystems, of which Greg explicitly said many, many times he
> takes everything or nothing. Please read submitting patches in DT.
>
>
>
>> ---
>> V1 -> V2: Property definitions are back at the top level with the widest
>> constraints, The allOf conditional only tightens Tegra234 to interrupts
>> maxItems 9 and iommus maxItems 1.
>>
>>   .../bindings/usb/nvidia,tegra234-xusb.yaml    | 35 ++++++++++++++++---
>>   1 file changed, 30 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml b/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
>> index ec0993497fbb..d63f0db4224c 100644
>> --- a/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
>> +++ b/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
>> @@ -17,7 +17,9 @@ description: |
>>
>>   properties:
>>     compatible:
>> -    const: nvidia,tegra234-xusb
>> +    enum:
>> +      - nvidia,tegra234-xusb
>> +      - nvidia,tegra264-xusb
>>
>>     reg:
>>       items:
>> @@ -43,6 +45,7 @@ properties:
>>         - description: USB wake event 4
>>         - description: USB wake event 5
>>         - description: USB wake event 6
>> +      - description: USB wake event 7
>>       description: |
>>         The first two interrupts are required for the USB host controller. The
>>         remaining USB wake event interrupts are optional. Each USB wake event is
>> @@ -50,10 +53,9 @@ properties:
>>         platform. The USB host controller can function even if no wake-up events
>>         are defined. The USB wake event interrupts are handled by the Tegra PMC;
>>         hence, the interrupt controller for these is the PMC and the interrupt
>> -      IDs correspond to the PMC wake event IDs. A complete list of wake event
>> -      IDs is provided below, and this information is also present in the Tegra
>> -      TRM document.
>> +      IDs correspond to the PMC wake event IDs.
>>
>> +      Tegra234 PMC wake events:
>>           PMC wake-up 76 for USB3 port 0 wakeup
>>           PMC wake-up 77 for USB3 port 1 wakeup
>>           PMC wake-up 78 for USB3 port 2 and port 3 wakeup
>> @@ -62,6 +64,16 @@ properties:
>>           PMC wake-up 81 for USB2 port 2 wakeup
>>           PMC wake-up 82 for USB2 port 3 wakeup
>>
>> +      Tegra264 PMC wake events:
>> +        PMC wake-up 79 for USB3 port 0 wakeup
>> +        PMC wake-up 80 for USB3 port 1 wakeup
>> +        PMC wake-up 81 for USB3 port 2 wakeup
>> +        PMC wake-up 82 for USB3 port 3 wakeup
>> +        PMC wake-up 83 for USB2 port 0 wakeup
>> +        PMC wake-up 84 for USB2 port 1 wakeup
>> +        PMC wake-up 85 for USB2 port 2 wakeup
>> +        PMC wake-up 86 for USB2 port 3 wakeup
>> +
>>     clocks:
>>       items:
>>         - description: XUSB host clock
>> @@ -97,7 +109,8 @@ properties:
>>         - const: write
>>
>>     iommus:
>> -    maxItems: 1
>> +    minItems: 1
>> +    maxItems: 5
> You should list the items instead. Flexible array means now the order
> have a meaning.
>
>>     nvidia,xusb-padctl:
>>       $ref: /schemas/types.yaml#/definitions/phandle
>> @@ -137,6 +150,18 @@ properties:
>>   allOf:
>>     - $ref: usb-xhci.yaml
>>
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: nvidia,tegra234-xusb
>> +    then:
>> +      properties:
>> +        interrupts:
>> +          maxItems: 9
>> +        iommus:
>> +          maxItems: 1
> And the new device has flexible interrpts and iommus?
>
> Best regards,
> Krzysztof
>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
