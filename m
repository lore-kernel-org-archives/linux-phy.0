Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61620C61DFD
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 18:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ti72yTA+tmRZKLpCyi6T51xOvttmI3xgH2Q+w3JPvc=; b=Ldxx47u4Buvm7K
	trqoSuLe54dEJKY/i3CUgWDEYmqP1COnVzlhUhXa9e4S9keZpUtoKgI+cNCs+iLYlFrdVjKRcj8pS
	gtKHuvTfKF7ColGVbT52HoH1jYog1pBv+CXVKOLqJWLa/ctnafE1NCwZggzChCSrAIQFpSOctP2gC
	9nUTpqpRsDLCRopKZGp0LKoEM4qxTsGMOQdwYBeA2JmdUIR6WRhKJHRFl/9+HNzyWjdOY43IEMJBh
	MVGMOVbeA2CuJjguVB+KE0UCImmOQKDHC8nqxh4C7+dcAmgoxqGutaugnYMxoMAhQBqihw4hieYPG
	9cgE/p82ERoFooTusXWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x16jz-0000000AHnr-3F0R;
	Mon, 31 Aug 2026 18:28:19 +0000
Received: from mail-westcentralusazon11010046.outbound.protection.outlook.com ([40.93.198.46] helo=CY7PR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x16jx-0000000AHn5-3m2U
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 18:28:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IPdc67kotDaYlgTeE30BUe3Zb8zsplCmpDMdkcyqN4Vq5Dq+heNESBuBbShKJUPvqQ9/EFRdGmNXdG+fUKGTWoL3eu05fz5OZkrQJk6+RPv1uSu45XphymsYvUO3R+6fg6bd93FmvKOoPXPaRlY2Jzf9BqrjEZv1z8f6EH076go5/M+b4qtI7OKuMdZSglK4MKZIYk+9BBJWsDd9EVQPsT0UCstdSjmMYZ4IXjmMr2AjYQUTcN8xjLjpXoZVJ4Gy6sM5MjWig7Nee0un4QIx0mXIBJGpQ22BmX7Vsa4+CD05mySkuBLDO2TqBO2oCKIsNgIXVBeRUsUyrdKlaFOtnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y1mx0yYoGZcfljU05b3k/OE3qPhfoOx76dAMSoV3+po=;
 b=psbV3SNhGKot7D7/DZAb+VmyU4+oleviY/3gAlIIgeGZhNR4DZZRiLHxF2VmUllOx+U49/QXiCXtXTcWP5a62tJDGHuK0bYY/sRrwEC+mVSa2+Cq0dML6cOKE+79DwYll+3vUj4NVZdH84uTC8knspKAOcQK4QUXOGT2H+zDDJ3IiB6esFvl0R3plDifNSJKC5s7efiTKFVV141rNLhgA5p6ADn+Oc7n2R459wvbqOlYE8JwOMOozdXXqbZnfzJkkCRz22L9jHb/ts3DzCtiUXEz2CBQcw+L59BNoMmm5DjZP3ohKYquVwSpz7pHZDh2goKo3GfeKReapFeWkbQSOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y1mx0yYoGZcfljU05b3k/OE3qPhfoOx76dAMSoV3+po=;
 b=uAYHX5aFba1lZpDiosnbwp1tOJ2Vxw3oeeL4+ikrOB62IhMcjnH71k0LbjmLYpBhAWuyWSJYOwd3muf7/zp5nuH7KVbhIazty0Vwfc/wWQnqWZ9ahgVFED+tHRr1MsNCXcbQT3x695e0W8O3vKlxaLsv7m/Okvgd65TxwFRP/il0a99pY8ucghI49wPB4XZ7fUW6jsL0pZ6xGRoub8TEv1QxC23sTkZi4FLV94OClQ72Xes2rGQFfenDSv2N+eZNuuswIishPVgcePodJ8oaseLza7i7sJmlx8po+cOeTMiH/+1JgGG2cvGNjtNNQVaa2Bv+to9y6OQ/1VPsiE/eyA==
Received: from DS0PR12MB7512.namprd12.prod.outlook.com (2603:10b6:8:13a::5) by
 BY1PR12MB8445.namprd12.prod.outlook.com (2603:10b6:a03:523::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.360.10; Mon, 31 Aug 2026 18:28:02 +0000
Received: from DS0PR12MB7512.namprd12.prod.outlook.com
 ([fe80::2b77:2cc3:d751:6b75]) by DS0PR12MB7512.namprd12.prod.outlook.com
 ([fe80::2b77:2cc3:d751:6b75%5]) with mapi id 15.21.0360.008; Mon, 31 Aug 2026
 18:28:01 +0000
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
Subject: Re: [PATCH 1/8] dt-bindings: phy: tegra-xusb: Add support for
 Tegra264
Thread-Topic: [PATCH 1/8] dt-bindings: phy: tegra-xusb: Add support for
 Tegra264
Thread-Index: AQHdB6qBWEacjEQ+cECDCasNXKpGMLZVpeyAgGM3p4A=
Date: Mon, 31 Aug 2026 18:28:01 +0000
Message-ID: <56187858-3096-4db9-8d1a-6fb7e72f2eb3@nvidia.com>
References: <20260629093406.1118594-1-waynec@nvidia.com>
 <20260629093406.1118594-2-waynec@nvidia.com>
 <20260629-baffling-gag-05e20c9d925b@spud>
In-Reply-To: <20260629-baffling-gag-05e20c9d925b@spud>
Accept-Language: en-US, zh-TW
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla Thunderbird
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR12MB7512:EE_|BY1PR12MB8445:EE_
x-ms-office365-filtering-correlation-id: 004e6e16-4bfc-4f05-df70-08df078d973b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|376014|7416014|1800799024|366016|38070700021|3023799007|10067099003|56012099006|4143699003|11063799006|18002099003|22082099003;
x-microsoft-antispam-message-info: Wor9LNnOhBhNMzntJweike3uTkgLBxyPxF2k6pzRjgKxoYm4nsoU2fjNyy+QY9wPjE3E+wpJJviFYid5+HJ2B/RV71Ml1uzWueF6ShhUwB4FZ1Drf+/76lUPtgglzjBcsOZXil2We6gn0fSSTfyFheQyx9b0nCCtrkEon4UNJHIWnPPPWJMog981S1eWzE/z7rq3t4/PIZoYDgRuX7ol/p04edZHwQnLiqmJl7BBj3IJVsSBxwAv94FtO23ewKl8/qpJ6Bn0E7nE+82ZKqvbK4oAUJPE4yAL4P9H/88RL4JUV52m+5q6UF81KjJTrnYROjIJbXXnoHSZVIImrVIgiHdLLMJ85Q0RrjkYY1rI8EAXYrY7gqGr0cvhARD6tQ+HSxV+1d5t6cQep/Sy+zAjRjTfmXO9jfvl+oMTZy/q1ZgoW6sVoUD54zEXKJLPTSYpROSRNILsZUUbESD/PewMUPYps7iqTQISR+sm3bQ1tK+kMi4XAb3zsmReQOyuOr73ft4gMWwMe1yx2uJo8qsJoBfoNmZkvac1rYfG+yADEQkcYbvT94YfNzS2020IFUXcKiHrwIKX7P2dxf6WZaEqcTChdjohY6QmV1v9PPIgfQ57z/m2T/AB2g7r7P513qkAVa669aOoIQCOVXLJR0RGRUVKf0s1dOdPVLB6h7RnM3ObbbyCYZ703YxU+t3Dod7AtiVp7xmPExTt02htEOHSQrIIL+9e4qOfITVz43V12A0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR12MB7512.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(376014)(7416014)(1800799024)(366016)(38070700021)(3023799007)(10067099003)(56012099006)(4143699003)(11063799006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dWRyaUZ1RmhOUlJuWktmZExVUFBxSURuZG1nRUNRVG9RaWxtRDg2a1h3b1VS?=
 =?utf-8?B?VDd5SjVtVENnVHR2bVVJamtUNTJQazdrM05XQkE2ckhTNXBzcWEvOHQ0bVRL?=
 =?utf-8?B?RG0zRVJheDBjSXRNd0l4K0QzdDR0QXViK3VuVklKS3RjQ1U4eTZjWGlEL2FZ?=
 =?utf-8?B?OTlFNDRhS3BOa293WXcybFhkWkFOMGw5cDhyclMzaXNhdWg4b3JkOVlZaW45?=
 =?utf-8?B?a0JmWnBwUmpqZVUxN3VJVUxKTnJnRmxDSDBDM1Q4b3Bvb0ZoV1NzbXdKU1BE?=
 =?utf-8?B?aTl2YWVTM0lXdmo2RGdJbVZCdkJ6N2NJZUF3T2hBOGE4V1dGZXR2SnRDekdJ?=
 =?utf-8?B?a2JrM2VEQXBEYUdLRGorM1IwOXNjK1FIek45OC9oZ2ZMSGQ5YSt6blc4ODVH?=
 =?utf-8?B?cVlCdldmY3g3S0xqQXM0UjZId3JoVDlzT1FObCt3SUwwSEhmSzltV2FKdTJE?=
 =?utf-8?B?eHJtUGRuajh1eGdLMEVZNEluSzVHYW00bWhDNEV4V1BaVFh1dXhTVm1nYUZ3?=
 =?utf-8?B?b3VYRjJhNE0vd1pWR21PM2RNdW5PMmRqbEhpek5EL1QremJVVGthRWxjK2hs?=
 =?utf-8?B?dnhlY1RPdjZubTYrQi9CYTFuUXFGZ0pqcW9mNVFmYnBtblRrSExFdkI0UGk4?=
 =?utf-8?B?WnRsUk9MaDI1Z282U2NDSTcxZmhHT1FXT0w1SThPMTdjK2RUN2dhd1Qwc2xa?=
 =?utf-8?B?SnVacGhCaWdNOHZGNE4ySlZVMG1Fem1LV3NrS2JIVnpLVVA1T1ozRFE0cHdS?=
 =?utf-8?B?cWlYNFg5ZHFCUXovS1BpWTh6UEJQYmlWdE5tWDl0UXZIQ3YwRmtGczF3aUY5?=
 =?utf-8?B?QWNuTkc3ODJ4eUxhV2kyeVJOcE40N1VUd2FxQVVXY1Z5YkM0SVEwSXdEL3F2?=
 =?utf-8?B?VmxVam5pbi9mbFpzQ3ZJVEdXby9ObmJJb3pkaTRmTFNWVkVkTWNVNUZDQ1Zt?=
 =?utf-8?B?MTBFZ2I2ZU54QjBRdTdEaHB2MU8wTTQyYlhTd2hpUHhjQ01zVHliS1hWYW15?=
 =?utf-8?B?czlJL0hrWkh5WnFVTzJYY2YyMDlMVnJ5eUdoQXh5RWlLQytxbkZuNXc3dysz?=
 =?utf-8?B?SERSVTJoQjdyTkhUSUdvaE5SL3lSNUFSZnExU3lWeWswTFpVMlRqOHpSUzBW?=
 =?utf-8?B?T25ubmVwQWhCT0lRb3M1RjlFcjBPUWlLZ3RSK2hBM0s5aWEvLzlDYTBUZmNq?=
 =?utf-8?B?b2dlTldEc2lLbDRvcUVBWmRXanI1ME53bTlRK2h4NFNEWFlOY3VSSmtEeSsx?=
 =?utf-8?B?UVN6anQxU0lyUGlwZXVwY0U1UmkyOHBJQjRvSk9JNWVpdXNxdWxnV2ozOGlR?=
 =?utf-8?B?cGdUeGNrTzlvdmtRS2dvK0RyQ0dDWmZhQW80cm5FT3VGK3Fjby8xQ2E5NDVO?=
 =?utf-8?B?VytVTzZWS0pFOFVwV0ZPazhPQ0hZcTNoQjRRcDk5cEEwMGZnRGllVzBUY2Np?=
 =?utf-8?B?eVNMeGhPZWZkRXR1alVGeXRucW9KbVM1RlJDVFdoNkh6bnBsdGphT3U5cjdU?=
 =?utf-8?B?Y0NMTmh6aEk4NmZyUEF6WmpVNk5SWDJjelQ0aUpHMTJlSWJQRnJReURZTWVF?=
 =?utf-8?B?d29tbHVBUjNNdFdIRTJ4NUpiSWVJUWxBVGJOOHdHNVdCOUcxTHdLdG9IMXFN?=
 =?utf-8?B?VGpCbTJkWWZNUmdzN3pINCtoRnp1OHROZGh4YjVMZDBoZ2VqOXo1Y1pCakhu?=
 =?utf-8?B?ekVqNTIrTEFKeWdlY1NlY3BoNUhFNmV4WU90bWxSSjBkZFUwK0lKRmFDcFpt?=
 =?utf-8?B?TXE1ZnRMS2RYOVExMnlsRjJXTUFqSDNCWk5sYnFtN2psMHdMSjRwVkJTOGNq?=
 =?utf-8?B?cFNiUzk5SXJUQVd2emdHVktRTlRvd3dlMWczVlgxSXpMZkQ0eVlJc1JsZFJK?=
 =?utf-8?B?MTVzM3dOSU5ubHZWeVhFcisvdEcvTkdQOUsyNU1oVDRLVStrL1h6eUhOYlF1?=
 =?utf-8?B?U3FCaEhMSkY3a0lLWmFocm1DVlRWUXQ2SUcvWWhsMEFEZ3l6dEZMZHFmZXp0?=
 =?utf-8?B?cjROUjVMbXVZUHhxYUJHVkwvSVlMNCtrTEgvalBIWUUzR3Bxb2UreXI1bTB4?=
 =?utf-8?B?NjdiZUVpL1pNcDFJS3B0ay9yZFNhQks5Y0lhak5xRUpFMHJWMS9tdGtySWQ5?=
 =?utf-8?B?bDMyblBiRU5lb3FmWlZNNWp2bjduWWtVNTFhdUxNSDEvb3dXQldFV254ckZ2?=
 =?utf-8?B?bURUVzFBMFE4L3FmY293UG9iSVRRV2JmNFI4Y29VN3BtNVpXYXczQmlvR0NU?=
 =?utf-8?B?SmM4aSswNG1FV3l6aGRTTnlzTldHWGh2NDBRSERvWmRqQ2s5Y3pQWDgvcGNt?=
 =?utf-8?B?N0hPa0ZiR0x2QlJJV1UxWmphVjdBRVVvNzI2UjltR05ES1pqSExjQT09?=
Content-ID: <EAD2C19A2BD5214FAA941F338050A463@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR12MB7512.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 004e6e16-4bfc-4f05-df70-08df078d973b
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2026 18:28:01.8350
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +cYXrtIQnZ70PbDDqN7b5cUbWs/gza1jd5Sn7ptUsWD/YrntMT3ic4Vj7mDbTVg2qbOlKnPQ3BPIym7Z8aWF1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR12MB8445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_112817_942545_9317268B 
X-CRM114-Status: GOOD (  15.60  )
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

A fallback is not suitable here because Tegra264 XUSB padctl is not
programming-compatible with Tegra234 (or Tegra194), even though the
DT property set is the same.

The driver selects per-SoC data from the compatible string. Tegra264
differs from Tegra234 in at least:

- Tegra264 uses hardware tracking mode (trk_hw_mode), while Tegra234 
disables it.
- On Tegra234, CYA_TRK_CODE_UPDATE_ON_IDLE needs to be cleared so that 
the calibration
values can be captured while the controller is still in reset. This is 
not required on
Tegra264, where the corresponding handling is not even present.

A fallback of "nvidia,tegra234-xusb-padctl" would let an OS that only
knows Tegra234 probe Tegra264 with the wrong programming sequence.

That is also why Tegra234 did not fall back to Tegra194 in this same
binding: the DT schema is shared, but each generation needs its own
compatible.

Thanks,
Wayne


On 6/29/26 23:19, Conor Dooley wrote:
> On Mon, Jun 29, 2026 at 05:33:59PM +0800, Wayne Chang wrote:
>> Add the compatible string for the Tegra264 XUSB PHY.
>>
>> Signed-off-by: Wayne Chang<waynec@nvidia.com>
> Why is a fallback compatible not suitable here?
>
>
> Thanks,
> Conor.
>
>> ---
>>   .../devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml     | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
>> index d8de900a4fce..f6fe3c90b5b0 100644
>> --- a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
>> +++ b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
>> @@ -45,6 +45,7 @@ properties:
>>       enum:
>>         - nvidia,tegra194-xusb-padctl
>>         - nvidia,tegra234-xusb-padctl
>> +      - nvidia,tegra264-xusb-padctl
>>   
>>     reg:
>>       items:
>> -- 
>> 2.25.1
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
