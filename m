Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F026BC61DFD
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 18:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z44Bx/Rx9zPzRXCUGrQJ5D4RHwpVZBuqAH2V763Lx4A=; b=iWzmKXQ9oczzhD
	Gu/qqeB7Gj0VscsUvugcipmI93ffdVJNAWn/pwPzHThQUFhDqRHCABDWmIM/PAisLapl4n3JtVrOL
	4xVgPTqe9ciGZ2Ie0RdI6RMcm7OQZM5icM+21s/mYKhqQjpwsseOnaAJst7vNvKrJ651bvs8JI7FB
	9Sc8MDZomGF5ooeiBxUPuxHGidvklepj8BVrChdnHidlsitP1xlj3YbvwID7cwdgVBPFxhP9N4wOY
	2N+Q9AoY5qBecuN7ETYCThd48qAmk7jP7kD6zWADpVK/LlBNL8kcg7epaVXj5PeJVBHEVYw0P0r4z
	GEES2zD2LTg2DHN4E7yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x16rO-0000000AISo-1va7;
	Mon, 31 Aug 2026 18:35:58 +0000
Received: from mail-westus3azon11012014.outbound.protection.outlook.com ([40.107.209.14] helo=PH8PR06CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x16rM-0000000AISO-2XC3
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 18:35:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mpJtE2O+PLLCtdfCddlCDPBNnsS+LUt2IDLzR21ezJcqftbwNxPEIMRxR46Szt8aMz7RjpMAyQDpQ25x8qEFv51T1fvVr9Fp95j5flwHyuE9pkauxpcd2w8wnTvVhSrtWUsZlUIQAcssVvH+xsTBvn4gQCxFpRxSJYgKKVgRd5c+Hj/gqcPGZLIWpkTTO/D1t0FrobEEpzlZVzMPcGzrhJy1bBsuQVyBL/PvbmYgmmlN9+ni0XuxeoNpW8b0fmiOta08+jnMFlSsmEkZ2FJPw6ToX5iJuEA54VGR8tSSgKfX1nIBxpTUlneCe0PS0nwZSpmXYwXjG2NOWCkE0lWFUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iRQb9Ndntcu+wPpVqaBp+2W4QrF0VvsAezGuqwKE+lo=;
 b=qGf/XEZU4UHeV1FRuIrEFpRbzZTdnq/Onm9Nu/cMhhhJeZAEiFsT45eH92ZqhdGB+1gpMetlPhD3H/nqu0MifXHjdu3S/ead/0DdsooxIlYvvahqm8vyf/qsfVQc9jwAOSUUN8GagqtaspXwazGj3cXvcuwGHUBi/sv3UixyiFKmL74OLraXV9CtBoDQXHw6WOBlZ6Cihu/cmEv/UFYP1gbvFYnFQj8qjgQR9ADZZ0Cq5B0RbDbUAUWkgXtwxR/tWzsZDXdjOhcvAU888YkYsoRw/fRebQPIFXmHH+XwTtX84nhyf5sA1CGaAmpRYKaBAgMu6svmgYQ041kevdKI7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iRQb9Ndntcu+wPpVqaBp+2W4QrF0VvsAezGuqwKE+lo=;
 b=SWdmJAd+i7K1+UixTH+SJl9Uf3aW5x5DYVvrmCH7QF9svBvJJyS695R67DmpqW/slQZdDrZgct97KeC225xTNOLHLhmcNQEOXIi80EnjsVYeBtpapG42+C8HdS0X1bYxC/vsfotNHP1tMEvJkt4fSfUkYsOe+V24NmHx81XzfH3clnx5o21Z08/yCR+kQ8IiRcIxc8k4YgdI8BDrwO0FfdYbcN2dfTPxzbJawXMh9pt8VyHIVKxQjxQ4HId44wGxIfwx8LddW2a9S4ODg9CPOok7a3g5cSSWcVw38GAGJVemouoCEvJNQ5btfj9s/zQDv/l3vB9jRBYpu7jIHLQRRA==
Received: from DS0PR12MB7512.namprd12.prod.outlook.com (2603:10b6:8:13a::5) by
 PH0PR12MB8800.namprd12.prod.outlook.com (2603:10b6:510:26f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.360.13; Mon, 31 Aug
 2026 18:35:45 +0000
Received: from DS0PR12MB7512.namprd12.prod.outlook.com
 ([fe80::2b77:2cc3:d751:6b75]) by DS0PR12MB7512.namprd12.prod.outlook.com
 ([fe80::2b77:2cc3:d751:6b75%5]) with mapi id 15.21.0360.008; Mon, 31 Aug 2026
 18:35:45 +0000
From: Wayne Chang <waynec@nvidia.com>
To: Conor Dooley <conor@kernel.org>
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
Subject: Re: [PATCH 2/8] dt-bindings: usb: Add Tegra264 XUSB host support
Thread-Topic: [PATCH 2/8] dt-bindings: usb: Add Tegra264 XUSB host support
Thread-Index: AQHdB6qDjweEdyyPD0OknHXvSwLWj7ZVpoCAgGM5OwA=
Date: Mon, 31 Aug 2026 18:35:45 +0000
Message-ID: <f42ce89d-a026-4d5c-935c-fcf595010e4e@nvidia.com>
References: <20260629093406.1118594-1-waynec@nvidia.com>
 <20260629093406.1118594-3-waynec@nvidia.com>
 <20260629-primal-refrain-1eb04745384f@spud>
In-Reply-To: <20260629-primal-refrain-1eb04745384f@spud>
Accept-Language: en-US, zh-TW
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR12MB7512:EE_|PH0PR12MB8800:EE_
x-ms-office365-filtering-correlation-id: 7f3ab6ac-74be-432e-ef32-08df078eab65
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|7416014|23010399003|1800799024|366016|38070700021|10067099003|4143699003|11063799006|18002099003|22082099003|56012099006|3023799007;
x-microsoft-antispam-message-info: /xWL8xLkV11PUg0E+LgwrGJODVWPWQi4pP3bbPJPjB4oFS8mkU/dKwH2kiYJNhIhScbb0Xi7eE7cqh1A2ti0f8/nhH5ljGxirosr8UaJqGHU9NUZ3UTuAxR6oEGNFJWQdK9qG0fM+NJd8zWHbXbuG4N66K8Un4HrnTvp7roYMhu8lgtuc4NCwlbdIjvrlUMxbuh3BnTZ9Z72rdYu0L3tyed3L5d7XmFBfJc8hJJw1GijMq5Atq5mVVjJBAf19zwdN2MocyciwAYrTxDIAdRBpfxyhscmGgPjCGbu4jmJ1f6lqUA3tUsrDYklPTO/pyUxY9ZyLSq9ZZpWj/V4NNdQs9nWjYPVlexAxJlRtrOWtOZptwWXTSAT4qr/BuGkUnNDYdAgMTVWZh2gjKaswMICGvbbusT/MfzRG30VGDqBybzXssjNzTAT0mplO5vl+Rl6sRunTY2vVvNDUn8r8zINlFdai9Y/ZwxYMgc02jlMD+rJbPvQB+Ha3W2uEN3baJEpLFP4tg2dV3Sf9FTxCXr8F1/Wr5hllHA6Pj2KisUqOZFIZviMy0/kiYdRWLK6AsX+EdpKf9lIBbW+A1WmGTrsIVCZMBx/L3TE+H0XDb9k414zC1fPDiHhZNAiWjqVrQUm7liFonzTKmTQKaG5tekdE/RuZFIETJa3pbrm8c9tjbcJUB2l7pWP8Wu19fxuKGkD/kruVLc0BLbOdCzVurYlsoO0H5U9+FD1Fj1sVZF8pj8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR12MB7512.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(23010399003)(1800799024)(366016)(38070700021)(10067099003)(4143699003)(11063799006)(18002099003)(22082099003)(56012099006)(3023799007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bkc5am9rUmZwZzY0NHNNVThtN2NzSGtmMC9qY3d6ZUJkcWJFdVJOMmplUnBo?=
 =?utf-8?B?enFJdmtQLzVpejdxU0VzYWN2NUZCNm0rc2N0ank0RVVWVGFRUUxwZE9MMC9Z?=
 =?utf-8?B?YjUwWUZkeFR2elBFeGxZZEM2ancxREhhZkdaVjREbjg4VFl1ekVhRXdnYlVi?=
 =?utf-8?B?ZURJdm9mNjB5dGlCbi9qUnFadVJGQU5vdWJtRzYwdm5WK3JMM0JXSi81SzRE?=
 =?utf-8?B?VzJHblBQZGk3K1h5djcvUENyQTFqUllMY1NLVkFDbkh3dDBlN3NGVlJ2RzlX?=
 =?utf-8?B?NjJtVW9CYWs1a25TbTJOSU00eXF2bnpHc1JoOS9veWYwT0JqSmtvQ09vYk5N?=
 =?utf-8?B?VisvZG43a1I2WEdKZzF5WVV2VVhudzFOUUJSU2pMQ2JiMEhDY21FNWN6eFhF?=
 =?utf-8?B?NFB0SGhKS3FtMmRLR0o4dE9TVDBRMCtVSFV3N3JaUUhwMnZtR1dBUU1SUGJD?=
 =?utf-8?B?NXhDcWMreE54L3VicGFrZURiWlhkd0NsYTkzQ04yRmFtU1dLblk4RVZxQjQ1?=
 =?utf-8?B?K0toZTBQNVhmbU41dzdZcmlhSkFVRVBtdXFzZG13YTVEZ0RKam9KbGpvQTdl?=
 =?utf-8?B?UGhFM244dytCZy9MUkpSQzhTc01hSnRNeENjcU56RkR2SFFNQ2IrQm1qMlR4?=
 =?utf-8?B?MFZSVVR0TVkvZVN0N29pNkJmbDd6eSs5TkJCS1hqZDNVR09qelR3cUFPRTQv?=
 =?utf-8?B?d1M1dk56clFZNCs1RVhRVmJFWGpJaVRJTEF5elptdFJpSTBpMVlaRlpsdERR?=
 =?utf-8?B?QkZGMGMyMXZSS0padVBmbnhSWWIrUTZQWnowS1ZMNndVSFhTMzh5VmtqeExs?=
 =?utf-8?B?QjVnQ0xqMWo4azVidVN2bVVyWENwV0xTWWJxL29HWmNxMnVTRjFUL0o5V2pt?=
 =?utf-8?B?MG5QS1M4bGRiWW5EODc2VlhsNWtyaCtXVkprNElXVGJHbEw5WW5DdVg0aTFU?=
 =?utf-8?B?VEhmd2JUQzhDVStjTHBsa3RMb2xXSFF1czR2OU1kSmc1cUFubGJtdEtJL2FU?=
 =?utf-8?B?dFl3YmxUMnpaV1NveGNjTmJiWlFTbjlxU2wrZzdkQ3RSclNnWXpVZlE4WVBv?=
 =?utf-8?B?cndid0I5QmhMYnNBdTJtTjZvOFFzM0pmWTVua3NiNlRTWThSU0FMSVVpMXc5?=
 =?utf-8?B?aDBDR1dSMW1oeTMyMElqdXIyTC8rS2c1UUNCUjZDWGhVejhpdzNIMTNibSth?=
 =?utf-8?B?ZVVoQ3V6aFh5Tm5hUjMwQjVnSjlQanU0aTVSbWwwa3lRNjBQV3FLdDNrZVdP?=
 =?utf-8?B?WHVoUSttSjA2VWdHZ2lzN1V5cFZHclNBb09VVzBWRTgvV1htWnk1V3Mya0FZ?=
 =?utf-8?B?RTdxN2xyUDUrMmZmdUdwcU1Za0xaYnU5b3VQeEdtTU1MS2t5TWVtait1ZXJU?=
 =?utf-8?B?Ulc2Z0RjMG9mU00zZnRPS2hHWTAyUGhKeDZPTmVLTEVOOGs3MXd1SjdoL3NU?=
 =?utf-8?B?dEw1RzVoZWhPeXhxN1RjQ1pVRjlpWVJCZ2lUOEtMS1U3OTZhSEFXOFljVTdO?=
 =?utf-8?B?K2VWNndIUFAxblJ1eHIzRDhqSkl3M3NFb3hTUkFSeSt3Qys0ZWhudlJUTFdS?=
 =?utf-8?B?YWl6K1Q5K3o1TUlKRVRrMG1LRHJ6Y1daVkRJL2tFSnBGZnFQRWwzNDJXd3FO?=
 =?utf-8?B?ZUJBelVtQ3FnckVDY3E3d3RKdWZWU1MzcVZjTGhTQkI5ZFdWME10R2w2a01E?=
 =?utf-8?B?RUdWOWtiOVhTTDAwSE9ZK0x4RFBEemo4OGFvZmRSWUYvU2k1NUlGSmZwUFBZ?=
 =?utf-8?B?UDBLR2J4elpZWGp3bkFJQll6c2dJanlER2pHdVlVMGRQRXF4T1dLQUFJbE1W?=
 =?utf-8?B?aTFQYXo1M2hNeC9XR1ZQS3g0WXdNMkpQTTkxNEdMKzh6a2oxZG5UWGtxUGE5?=
 =?utf-8?B?RjI1eXR5QWdJSHdlMzdyaUxoWDZYakRNYmZXYTI2V053S1JjQU9yNWc0QlJ4?=
 =?utf-8?B?N2UwVGFIUk9uVjRtaE85N1o1MDZzZWpKNjFpdzhBTkxCVW1hbFpxVXhqQStQ?=
 =?utf-8?B?TDBnVG40YkYwNXkwS3JkQjdieFhmeGViVXEvc1BUV0UwMEV2ZGluaFhTc3Qv?=
 =?utf-8?B?a2hnczVMejFXbXdmbHFQN200Zzl2WnJPdGlFcytPQTc3OFp2ZlhqMTJ6cDBC?=
 =?utf-8?B?MkE2YXZNcXdvd3dzeVZ5OXVOQTNXMzUwWnZMZU9NTkpCVnMvSlA5M2ozNTNq?=
 =?utf-8?B?eXlKV2lxamFqS0Zrc3NSZGFIZkNqbmpUZ3FMWGFVdFkxVUFCRnJSMzZnUlNC?=
 =?utf-8?B?OHFkU1RtVFowL1NacGZBbDd1YUpMM0lKWXVjRlJac3o0TE1PZmR6MFA4R01P?=
 =?utf-8?B?eHkrMUtDSllGdzlLZW1JK3VYcDN3NkJvUmNHb05VeHZOWDhEZzNNZz09?=
Content-ID: <D7D2B2C1FAD4DA42A6ED334D83621167@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB7512.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f3ab6ac-74be-432e-ef32-08df078eab65
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2026 18:35:45.1678
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xOU57P8nJTlES6aWfL4+L3lCgs/sf7t6vD1L8/3kG2RrVwOezwOpDiulpHjcFYyAqnFiwRCUxyHFUa+uG+yXGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB8800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_113556_669875_0E36FA8A 
X-CRM114-Status: GOOD (  23.86  )
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

Hi Conor,

Thanks for the review and sorry for the late reply.
I addressed this in v2.
One clarification: clocks are identical between Tegra234 and Tegra264.
The extra entries are one USB wake interrupt and additional IOMMU
stream IDs on Tegra264, so iommus is not forbidden on the new
platform.

thanks,
Wayne.


On 6/29/26 23:21, Conor Dooley wrote:
> On Mon, Jun 29, 2026 at 05:34:00PM +0800, Wayne Chang wrote:
>> Extend the Tegra234 XUSB host binding to cover Tegra264:
>>
>> - Add nvidia,tegra264-xusb compatible string
>> - Document optional USB wake interrupts for Tegra264
>> - Document Tegra264 PMC wake event to port mapping
>> - Allow up to five IOMMU specifiers for the additional XUSB host
>>    stream IDs
>>
>> Signed-off-by: Wayne Chang <waynec@nvidia.com>
>> ---
>>   .../bindings/usb/nvidia,tegra234-xusb.yaml    | 115 ++++++++++++------
>>   1 file changed, 80 insertions(+), 35 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml b/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
>> index ec0993497fbb..94b1dbe2b02f 100644
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
>> @@ -31,37 +33,6 @@ properties:
>>         - const: fpci
>>         - const: bar2
>>   
>> -  interrupts:
>> -    minItems: 2
>> -    items:
>> -      - description: xHCI host interrupt
>> -      - description: mailbox interrupt
>> -      - description: USB wake event 0
>> -      - description: USB wake event 1
>> -      - description: USB wake event 2
>> -      - description: USB wake event 3
>> -      - description: USB wake event 4
>> -      - description: USB wake event 5
>> -      - description: USB wake event 6
>> -    description: |
>> -      The first two interrupts are required for the USB host controller. The
>> -      remaining USB wake event interrupts are optional. Each USB wake event is
>> -      independent; it is not necessary to use all of these events on a
>> -      platform. The USB host controller can function even if no wake-up events
>> -      are defined. The USB wake event interrupts are handled by the Tegra PMC;
>> -      hence, the interrupt controller for these is the PMC and the interrupt
>> -      IDs correspond to the PMC wake event IDs. A complete list of wake event
>> -      IDs is provided below, and this information is also present in the Tegra
>> -      TRM document.
>> -
>> -        PMC wake-up 76 for USB3 port 0 wakeup
>> -        PMC wake-up 77 for USB3 port 1 wakeup
>> -        PMC wake-up 78 for USB3 port 2 and port 3 wakeup
>> -        PMC wake-up 79 for USB2 port 0 wakeup
>> -        PMC wake-up 80 for USB2 port 1 wakeup
>> -        PMC wake-up 81 for USB2 port 2 wakeup
>> -        PMC wake-up 82 for USB2 port 3 wakeup
>> -
> Property definitions should remain at the top level, with the widest
> constraints and list of entries.
> Conditional sections should just apply restrictions. In this case, only
> one additional clock seems to be the difference, so conditional
> restrictions should suffice.
>
>>     clocks:
>>       items:
>>         - description: XUSB host clock
>> @@ -96,9 +67,6 @@ properties:
>>         - const: dma-mem # read
>>         - const: write
>>   
>> -  iommus:
>> -    maxItems: 1
> Same with this, conditionally forbid it on the new platform but leave
> this here.
>
>
> pw-bot: changes-requested
>
> Thanks,
> Conor.
>
>> -
>>     nvidia,xusb-padctl:
>>       $ref: /schemas/types.yaml#/definitions/phandle
>>       description: phandle to the XUSB pad controller that is used to configure
>> @@ -137,6 +105,83 @@ properties:
>>   allOf:
>>     - $ref: usb-xhci.yaml
>>   
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - nvidia,tegra234-xusb
>> +    then:
>> +      properties:
>> +        interrupts:
>> +          minItems: 2
>> +          description: |
>> +            The first two interrupts are required for the USB host controller.
>> +            The remaining USB wake event interrupts are optional. Each USB wake
>> +            event is independent; it is not necessary to use all of these events
>> +            on a platform. The USB host controller can function even if no
>> +            wake-up events are defined. The USB wake event interrupts are
>> +            handled by the Tegra PMC; hence, the interrupt controller for these
>> +            is the PMC and the interrupt IDs correspond to the PMC wake event
>> +            IDs.
>> +
>> +            PMC wake-up 76 for USB3 port 0 wakeup
>> +            PMC wake-up 77 for USB3 port 1 wakeup
>> +            PMC wake-up 78 for USB3 port 2 and port 3 wakeup
>> +            PMC wake-up 79 for USB2 port 0 wakeup
>> +            PMC wake-up 80 for USB2 port 1 wakeup
>> +            PMC wake-up 81 for USB2 port 2 wakeup
>> +            PMC wake-up 82 for USB2 port 3 wakeup
>> +          items:
>> +            - description: xHCI host interrupt
>> +            - description: mailbox interrupt
>> +            - description: USB wake event 0
>> +            - description: USB wake event 1
>> +            - description: USB wake event 2
>> +            - description: USB wake event 3
>> +            - description: USB wake event 4
>> +            - description: USB wake event 5
>> +            - description: USB wake event 6
>> +        iommus:
>> +          maxItems: 1
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - nvidia,tegra264-xusb
>> +    then:
>> +      properties:
>> +        interrupts:
>> +          minItems: 2
>> +          description: |
>> +            Same as Tegra234, with one additional optional USB wake event
>> +            interrupt. USB3 port 2 and port 3 each have a dedicated wake event
>> +            interrupt on Tegra264.
>> +
>> +            PMC wake-up 79 for USB3 port 0 wakeup
>> +            PMC wake-up 80 for USB3 port 1 wakeup
>> +            PMC wake-up 81 for USB3 port 2 wakeup
>> +            PMC wake-up 82 for USB3 port 3 wakeup
>> +            PMC wake-up 83 for USB2 port 0 wakeup
>> +            PMC wake-up 84 for USB2 port 1 wakeup
>> +            PMC wake-up 85 for USB2 port 2 wakeup
>> +            PMC wake-up 86 for USB2 port 3 wakeup
>> +          items:
>> +            - description: xHCI host interrupt
>> +            - description: mailbox interrupt
>> +            - description: USB wake event 0
>> +            - description: USB wake event 1
>> +            - description: USB wake event 2
>> +            - description: USB wake event 3
>> +            - description: USB wake event 4
>> +            - description: USB wake event 5
>> +            - description: USB wake event 6
>> +            - description: USB wake event 7
>> +        iommus:
>> +          maxItems: 5
>> +
>>   unevaluatedProperties: false
>>   
>>   examples:
>> -- 
>> 2.25.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
