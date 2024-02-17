Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22011C48BC3
	for <linux-phy@archiver.kernel.org>; Sat, 17 Feb 2024 13:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sfMhWAqNiPdvBpzisSBQaMMzcCMKG9PBFB+NMhOQmZI=; b=0ivBPRKd6hz2tnYSFdFcHPfrLv
	+WPR/PfV8fAQI5Zz7bF5n167l+KDeBYDK2jGt4DRn5ZabqXO/5b2Bc6KJZ73Z5KEtLtTXP2pr/fcU
	7gr8taxbeo93q/qhAvRJbYEV3XaXAbiHohRkoH04x0pgZl5WYdjBTZCfjYISh4B8ne89riJPaj7hV
	JWl7OD6XJriap2OzykXUXiEE4vOOVeVe5QnMdrO0YpmBDFjFNXsA+mhzN6Gx9EMvDxSfk2hr8j/Ay
	znFwPVsGVD2hf9G9XS7XaNapwxItpIjTZ7LBEA8XBuDGoktSi4fTsdKha119mXF5kZHla6syxYkcA
	0pdweK6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbKWe-00000005imF-29vV;
	Sat, 17 Feb 2024 13:14:40 +0000
Received: from mail-psaapc01olkn20829.outbound.protection.outlook.com ([2a01:111:f400:feae::829] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbKWa-00000005ikG-2INg
	for linux-phy@lists.infradead.org;
	Sat, 17 Feb 2024 13:14:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bu1loRGkx0RAWhXtXEkJzQVXnJk/aNdy0He+UOd5ww5To9HLMeEssGAXbKnPdKzUUjQYWpy4u0EKYCEjeL4zmFO7Wr2uE5+WM+I9Q3m+f4wc1mRlMOr+0gihvSMybdjfJDGtauBnPZZflGquwJqeUNJ4N9J9g2GRL8M1WQ4eK/AXBMOL7ykygQNzFzPaES+SD19ODi0lP0Nn+w2nOjsyMKCq8EFexXZzGoYieB5ngOZN11W3Z6o21AgspbKxcV+3LO/NGxBkJqh2bxgxx+VNdLg43GtuRfyEIdmWr7iyj+cgv5+KlHrPCBn3YnC1oiwYiyvVMXgTHqbRkuGRV6UMww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oIuK4SUUvgg3MqBgi2GogPtDv1gK9UXY6IAaAqAH7hc=;
 b=SZ7t8b0HBHD00yhoIMyWXPYq+0YkgeQpOApU6+dNm9lafbG46BFinyJ2Vho6xUtX5lPdqGOOK7ig7EuMVaDoTrK6p2o8sK76G8hxkHramaUhh7WRU1T2ZBadp7Iqzbs/oqBUrfAyRYwu3CJDJaQ05Kk82ghrjKuA8jbCnafj/Ex0MTzoymXse5Y7Okp4jelRNk7A/ejATyVqOl88hxCb7PqQ6ibX4cLp50OuBkXkxfso+sMgylbU/sKZlpcb8qAg+J2zPWHwxF+ddWaDw+mGHFPKId/SZuyAC9TngUkyKavzTQeZIMZuFBTVwQK2gxaLClGOGcMWI+MWZNQylyRJRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oIuK4SUUvgg3MqBgi2GogPtDv1gK9UXY6IAaAqAH7hc=;
 b=VthvSio0NdhA+YZJ9sAMEQzz7gkdkzxWxnxb+CN3DOAlJHzxIYgOl59aElC9+hF5DGdTTx/2fgynuE46agdS0lSJB1SII1jmIonkCZt0ls63Tbru3GA4K+un4VFU0wYwQ/vZftY2cQRflbke9GS2hz/KxHVAAyntA1G4fqA7r1+gkXdaxPeydZQg/xTpvj7KAxcrTozJgtvozN2iiulXDeyi8PjlBCcOSfPvhOdHd4Is4pQb8TkOzPWdZgv5kiSpcPpV2id9Tbfj4MSiS4tOemRtzA83VmPPZka0HEq64ezglmE9a63um9NByY3dsVzTU5jdfIY+tayQY+cGTC40bQ==
Received: from SEZPR06MB6959.apcprd06.prod.outlook.com (2603:1096:101:1ed::14)
 by JH0PR06MB6891.apcprd06.prod.outlook.com (2603:1096:990:51::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.29; Sat, 17 Feb
 2024 13:14:25 +0000
Received: from SEZPR06MB6959.apcprd06.prod.outlook.com
 ([fe80::9a6b:d813:8f4b:cba1]) by SEZPR06MB6959.apcprd06.prod.outlook.com
 ([fe80::9a6b:d813:8f4b:cba1%4]) with mapi id 15.20.7292.029; Sat, 17 Feb 2024
 13:14:25 +0000
Message-ID: <SEZPR06MB69596C83014B1A424F0B376996532@SEZPR06MB6959.apcprd06.prod.outlook.com>
Date: Sat, 17 Feb 2024 21:14:20 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/4] dt-binding: phy: hisi-inno-usb2: convert to YAML
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Jiancheng Xue <xuejiancheng@hisilicon.com>,
 Pengcheng Li <lpc.li@hisilicon.com>, Shawn Guo <shawn.guo@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 David Yang <mmyangfl@gmail.com>
References: <20240216-inno-phy-v1-0-1ab912f0533f@outlook.com>
 <20240216-inno-phy-v1-1-1ab912f0533f@outlook.com>
 <63b3eff6-49eb-46f3-a6d9-878eddf6de53@linaro.org>
From: Yang Xiwen <forbidden405@outlook.com>
In-Reply-To: <63b3eff6-49eb-46f3-a6d9-878eddf6de53@linaro.org>
X-TMN: [sAhtehMpm++r9mbuwA4GDYINhCfc5Tjvt3AgMzMc6bPc4nparPM9phP02yJlRZHDvXxQROp7I00=]
X-ClientProxiedBy: TYAPR01CA0221.jpnprd01.prod.outlook.com
 (2603:1096:404:11e::17) To SEZPR06MB6959.apcprd06.prod.outlook.com
 (2603:1096:101:1ed::14)
X-Microsoft-Original-Message-ID: <45ec009a-4591-4e0c-86a4-678e3a1bfee1@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB6959:EE_|JH0PR06MB6891:EE_
X-MS-Office365-Filtering-Correlation-Id: 31061f58-09da-43dc-6400-08dc2fba5cf5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z3oEQC+Z7kbhfzr3UAWAtZ4mHCpoeeiFc0pudYgcCXYuVNx/tN7FGo01XIX313ggbCze1GOlJNiDtF9NEoKYmn8MzUOWA8HX4wEbrhwzxuPz2vIbnqw+CVKXxoyT6AWid429t9ouy+oPSLk8eXwca/Ku+dHzoMfuGWrWhneYH6Xa+aXpcV1B3mQMEZwMNMDRpa/hvtw0TAt2zWBm4cI7HPCoHtl+o2PB8zBYmMVzFjJ1GExtCHn4CzmhJREiSePJsnIFA8m2WsHawOVLZztVKA3c7V6ejtra77O6MqWRSk5BDcbPzliqIxKlK5DIqgGKxAEpny84lvwZYLRu//UAFwLJMdU4TKv/L59+TQDThhyr76lLsmXaJDQDVTXmoCIJjB+IXSMF86SP+kwC2uRtygIC1kOZyf07H2hR1eDlqwgFL80w1qm+DriZHFg48+tGIjOqpDCSvq94Bki8KRbEe9WHc55nRRiC0aC5J1DMvvsLy6G+zbiUN7IsEUBafCTl59NhqQbc3G5/bgBrck94zEthKj9+MaDTGPY0astZkSeex9esv6NQ9xXreNTQYg3WKCh83g3B0MBKRP95oi0OayDEqxx1051rYwUZ3SPbSwmOPymkNPh00uCsdiCQbGFMNxx6vfGtvqevO+eS8mDiqQ==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THpZTVVaOWNicHhnZ3N5LzNxOHVRVFh5WTZOZGkyMWh4cGJ0TkkzazNYbE5t?=
 =?utf-8?B?USs0Vm9ua1E3dWJwdlpKbVZxcEZBOXJ1Zzh3N2grV1M4YkhQRUNJVy9aendi?=
 =?utf-8?B?d1dMSWhHNGluZTNJNHRJbGIvUmVsNEF3SnBQYUgyNmhGcEZJcVp6QmkwTW9q?=
 =?utf-8?B?RjcySkdJb0hoZkVUTmdRVHlXN0tBR2VLemdLOFQvUzRUMWlaYjVoY25VT3p5?=
 =?utf-8?B?RHZTZXlUMFJpUTV4TFM5T1lxblRDL2I0OWxGZGgwMjMvQXo1dUt6UmdOM2Yy?=
 =?utf-8?B?M3dGQXo0Qmdha3dxOVRzUzZuTjJSTmtVekE3bkR4MTdQM0Jnc1oyblNGVVlD?=
 =?utf-8?B?ZVQ5VWVpL0JReTNQbDgyZjlBYkJ3M1dWS1RpVHNKZlY4cWREVGpRR2xESnRY?=
 =?utf-8?B?ZDlOakNhUkF5cTBINzJRNXoraVprM01ORU4vVThiNHFkOXByUW85K3NlaUFh?=
 =?utf-8?B?U21YSlFhSDFVOVQ1aHJsREl0VXRaVWQrMFcrOFVVcDF4bnBnSWRKZ1NOUXhQ?=
 =?utf-8?B?Vk0xQ3RqNE5KOHZZSmhmemF0RlNCRFNKUDBVUUQ3WEF5eUc2eDlBYmxod3J0?=
 =?utf-8?B?OGlWWmtjZE10SlZTWTNuT2kvNmJ6WnZoajZyNmZZa1o5Z2ZVNmtwSS91aXNl?=
 =?utf-8?B?dUszZGdDVzBIS2lycXFMNzMwWnJUcG9IVTNvUVVtVWNlNk9aWVJrMmM4R1V5?=
 =?utf-8?B?dEExN2t4bWt1SEJ4Qm9waldTRFpOc0FLKzQ4ejUwY3gwZ3hDa1VXYXplTCtx?=
 =?utf-8?B?QTNoT3l4MXhGOEhwaTBKL01Oa3RzdGlTMDZ5TzFDR1F6TGQwMlAxMjBRSm1l?=
 =?utf-8?B?V2RacjZFRFZKOHJLQkhZZVRZRUJQdkFMLzVicmV5elF6bXF4aU9LUCtBYW5O?=
 =?utf-8?B?aVA5Z09jTWMxdGJ3VC9FL0ZpcFFtckVzTmxOOEtLeGxHRXRmWXMxSEtqRUdy?=
 =?utf-8?B?SE5HVXMwT0tyenFFVEVWTkpiZU5ZRk9IeDdzd1Zyc0loL2xwZm9lRDMrMkZJ?=
 =?utf-8?B?TVJGVElKV0dkVHVXcHphbTZobHl5bEJ3dmk3U0RwWjR3OFJLNFRmRWN4NmNk?=
 =?utf-8?B?SmVXMFk5TWtQdHNnTVpsdmVhbm9ieUVPT3hjU1ZDd2Y1VFZIa09XbHE3Uy9r?=
 =?utf-8?B?N2VWNmhsQlVjemJ0NzA4TlZ2QVhVUHZ2VTdWVmRWL0FEVTNCNDh0eDBmc09M?=
 =?utf-8?B?WE85MUZGRUJwRmxqRTRmN2dTVmF2b0JtSXNTM2VzQitzakhtMW9RMU1vZGtC?=
 =?utf-8?B?OHdJQ255ZUh3NHVOelhaeXU1UlZ3bVdJbS9PN0YzL1dGbXA0cVpuRkxWbjBL?=
 =?utf-8?B?UldzSkdmSXljSFlyRUpGM01uYTVLakVsQnpaNU5yZFFudzArcGJvajV6dHlu?=
 =?utf-8?B?QWJjZ1lrWUlIcnBPQXhGZ0JPcUdmb3dGSkFJSERrTy9xMVp1VFBJODdiNUJG?=
 =?utf-8?B?RHVMc05XWU1JTTFjeC9pait0S2pGaVA2MG1naGFUd0E4SHN4eFYvNmRMa3RT?=
 =?utf-8?B?UGxhSVFyVDg3SklFbzM0bkhlbVFaaXFsRkRDS0RjMVV4VzdwS0pscUZVWmRl?=
 =?utf-8?B?S05yNzZOZ0ZQRWlEcVZaeHlZSS9ITDFGWkNOZUxJQzRNYjZEUFNhN0czY3VL?=
 =?utf-8?B?RjloeDAxamtoOUxkV29DdWNCV1FIemlzYnF2Wnd3UWhRMFlVTytHYVN6TXRO?=
 =?utf-8?B?SHpKeG5IOGJ1YjBReStiZTgxUjVLK2VwR3Q5SlFzem5lYWJuTyszbEtONUFP?=
 =?utf-8?Q?f8VbvcwdsPvy+pTtL2VatWy/sLp4/gx5ymW/I52?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31061f58-09da-43dc-6400-08dc2fba5cf5
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB6959.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2024 13:14:25.1189
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR06MB6891
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_051436_645976_00C41D24 
X-CRM114-Status: GOOD (  20.25  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 2/17/2024 6:14 PM, Krzysztof Kozlowski wrote:
> On 16/02/2024 16:21, Yang Xiwen via B4 Relay wrote:
>> From: Yang Xiwen <forbidden405@outlook.com>
>>
>> Also rename to hisilicon,inno-usb2-phy.yaml and add this name to
>> compatible lists.
> Please use subject prefixes matching the subsystem. You can get them for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> your patch is touching.
>
>> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
>> ---
>>   .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 115 +++++++++++++++++++++
>>   .../devicetree/bindings/phy/phy-hisi-inno-usb2.txt |  71 -------------
>>   2 files changed, 115 insertions(+), 71 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
>> new file mode 100644
>> index 000000000000..73256eee10f9
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
>> @@ -0,0 +1,115 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/hisilicon,inno-usb2-phy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: HiSilicon HiSTB SoCs INNO USB2 PHY device
>> +
>> +maintainers:
>> +  - Yang Xiwen <forbidden405@outlook.com>
>> +
>> +properties:
>> +  compatible:
>> +    minItems: 1
> No, why? Compatibles must be fixed/constrained.
Hi3798CV200 has only the first compatible listed in its device tree. But 
you are right i can add it to hi3798mv200.dtsi so that `minItems` can be 
removed
>
>> +    items:
>> +      - enum:
>> +          - hisilicon,hi3798cv200-usb2-phy
>> +          - hisilicon,hi3798mv100-usb2-phy
> This wasn't here before. Not explained in commit msg.
>
>> +      - const: hisilicon,inno-usb2-phy
>> +
>> +  reg:
>> +    maxItems: 1
>> +    description: |
> Do not need '|' unless you need to preserve formatting.
>
>> +      Should be the address space for PHY configuration register in peripheral
>> +      controller, e.g. PERI_USB0 for USB 2.0 PHY01 on Hi3798CV200 SoC.
>> +      Or direct MMIO address space.
>> +
>> +  '#address-cells':
>> +    const: 1
>> +
>> +  '#size-cells':
>> +    const: 0
>> +
>> +  clocks:
>> +    maxItems: 1
>> +    description: reference clock
>> +
>> +  resets:
>> +    maxItems: 1
>> +
>> +patternProperties:
>> +  'phy@[0-9a-f]+':
>> +    type: object
>> +    additionalProperties: false
>> +    description: individual ports provided by INNO PHY
>> +
>> +    properties:
>> +      reg:
>> +        maxItems: 1
>> +
>> +      '#phy-cells':
>> +        const: 0
>> +
>> +      resets:
>> +        maxItems: 1
>> +
>> +    required: [reg, '#phy-cells', resets]
> One item per line. Look at other bindings or example-schema.
>
>> +
>> +required:
>> +  - compatible
>> +  - clocks
>> +  - reg
>> +  - '#address-cells'
>> +  - '#size-cells'
>> +  - resets
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/histb-clock.h>
>> +
>> +    peripheral-controller@8a20000 {
>> +        compatible = "hisilicon,hi3798cv200-perictrl", "syscon", "simple-mfd";
>> +        reg = <0x8a20000 0x1000>;
>> +        #address-cells = <1>;
>> +        #size-cells = <1>;
>> +        ranges = <0x0 0x8a20000 0x1000>;
> Drop the node, not related to this binding. If this binding is supposed
> to be part of other device in case of MFD devices or some tightly
> coupled ones, then could be included in the example there.
>
>> +
>> +        usb2-phy@120 {
>> +            compatible = "hisilicon,hi3798cv200-usb2-phy";
>> +            reg = <0x120 0x4>;
>> +            clocks = <&crg HISTB_USB2_PHY1_REF_CLK>;
>> +            resets = <&crg 0xbc 4>;
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +
>> +            phy@0 {
>> +                reg = <0>;
>> +                #phy-cells = <0>;
>> +                resets = <&crg 0xbc 8>;
>> +            };
>> +
>> +            phy@1 {
>> +                reg = <1>;
>> +                #phy-cells = <0>;
>> +                resets = <&crg 0xbc 9>;
>> +            };
>> +        };
>> +
>> +        usb2-phy@124 {
>> +            compatible = "hisilicon,hi3798cv200-usb2-phy";
> You can keep only one example, because they are basically the same.

It is listed here just because cv200 (and the upcoming mv200) actually 
has two INNO phys in the SoC. And coincidently for both SoCs, one with 
two ports is wired to USB2 controller(EHCI &OHCI), while the other one 
with only one port is wired to DWC3 controller. The example here is 
borrowed directly from hi3798cv200.dtsi.

>
> Best regards,
> Krzysztof
>

-- 
Regards,
Yang Xiwen


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
