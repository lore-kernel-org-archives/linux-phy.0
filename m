Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD638C48BC3
	for <linux-phy@archiver.kernel.org>; Sat, 17 Feb 2024 13:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rAwZQaDQegN9tRNAolQuOCgS3xfpbXZDXp5RIdf45+U=; b=foFq00KZk1ZtAJ
	FYHP0N7A2mfHGxbJp18Exgrew3vziP0w5gaBtdXBcjj6EtxLgJsCIrXLEKHOwnznL3v4E4fGg9MHM
	3CfXHKMWuajAWLe5c6knJUKUQqJBrrLxA523vb5synUssfcXiMNiLXI4/+wHAS9jmXrKOHV8bh/sJ
	Vf6kf2j4BhDPeosk/5pT+io/4qddZfkmOVwNRo9tdyFE0a58xZvPVBbM2y18Jr0uu4HkkdB+ZpXVS
	ErWaVXxM6VeDlcb2iV+4+84v2sp/HimS+E2XwX4wFajZO1sktNNgHo5y+foDX0BWU3hpK/msUjmFA
	6EMp3aue55zTzoPNy8aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbKvP-00000005l4h-1LEy;
	Sat, 17 Feb 2024 13:40:15 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbKvM-00000005l4A-0Kcm
	for linux-phy@lists.infradead.org;
	Sat, 17 Feb 2024 13:40:13 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-55c2cf644f3so3882632a12.1
        for <linux-phy@lists.infradead.org>; Sat, 17 Feb 2024 05:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708177210; x=1708782010; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HGNCofLugqlZyC2Yzss6Pd9EV+Orj4VOX1RB8jZiSMs=;
        b=WzZkoMdmoYIeLrUhP8ud0JlF9ikE3/EC51HL1K+roHQOSHFgeVRX3HebZfydaJaOpK
         19fRI045OA7SxIaj1VNZYkMwnE+Kckti3jsXlE06IbUvpd9UDPRzAKZO5tFZS6Sfon9P
         bf5x7oTu6K3SfMVCp2ocwb3iDICqYUTn2T7OKdal4Nf36m3SrAdiQsjDeprezUvs0sQP
         ktWdsNmUx5G/og4KOQXW5tEJoCWy4yUXveDQJ1yQfm42LrJEcQiLEhoD7+tYTEpdBkWe
         cC+Cxe6Dn/ZtIj5iHe5QlBs5cA67ZW7CzBk5oH/3qkwaU7Hv/L+uOZMqBtHrODMWSviL
         BTbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708177210; x=1708782010;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HGNCofLugqlZyC2Yzss6Pd9EV+Orj4VOX1RB8jZiSMs=;
        b=DuWBZDpXEYiRZQaqRBEXvipSN++yjcYGLa/ZnLJ8UMGt+eraVxkiGwSuJTWfT6Xoxr
         Sx3fDj35tYPuvv62YnJY6jAnbhrBA5tFYf0/duGm6+JcMyIchceLxJA+s/w4bb2TynYQ
         46wW0by6/I/FwWClRAOOrvSYRkSrjvrwKpMF/LnMCPcJlolvceRaIIr3IaV9yPwT1z5B
         J4VKNfp3ejpx3uMHJpzGJQfKwPqjma02QH5Pz8PijtkhKYCp+RefxUiJ3eamaSfHo+k8
         aEwNEam8RYcIjP7Rajvo/LxpEN9xYL+eZCNC+YyRcEqPP8OHa5cuky2kstbtLqVEpsaq
         VJvg==
X-Gm-Message-State: AOJu0YzZv/i/EhrLi33UGKXEAvUhuHFNJCqQTNAx+E/QPc3hdzyoSppm
	aDqlh+5ainTYPcPs/qIah6R4v695FG4Fz9DxONfmc/vxUS0eI3NDpaFexRgXyD0=
X-Google-Smtp-Source: AGHT+IEyOztav6llDybOLYDtCqnaHRLV4e8V+LlJgdSWOGaV7NM0slYf3+nnJ5AzBI6hArPdUAvYxA==
X-Received: by 2002:aa7:ca4d:0:b0:562:7705:57c8 with SMTP id j13-20020aa7ca4d000000b00562770557c8mr5666282edt.34.1708177209940;
        Sat, 17 Feb 2024 05:40:09 -0800 (PST)
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id bf2-20020a0564021a4200b00562149c7bf4sm892560edb.48.2024.02.17.05.40.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Feb 2024 05:40:09 -0800 (PST)
Message-ID: <ed97be2e-4a3d-4be6-9a57-5c77d5fffc9c@linaro.org>
Date: Sat, 17 Feb 2024 14:40:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/4] dt-binding: phy: hisi-inno-usb2: convert to YAML
Content-Language: en-US
To: Yang Xiwen <forbidden405@outlook.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Jiancheng Xue <xuejiancheng@hisilicon.com>,
 Pengcheng Li <lpc.li@hisilicon.com>, Shawn Guo <shawn.guo@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 David Yang <mmyangfl@gmail.com>
References: <20240216-inno-phy-v1-0-1ab912f0533f@outlook.com>
 <20240216-inno-phy-v1-1-1ab912f0533f@outlook.com>
 <63b3eff6-49eb-46f3-a6d9-878eddf6de53@linaro.org>
 <SEZPR06MB69596C83014B1A424F0B376996532@SEZPR06MB6959.apcprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <SEZPR06MB69596C83014B1A424F0B376996532@SEZPR06MB6959.apcprd06.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_054012_169304_8569686A 
X-CRM114-Status: GOOD (  18.55  )
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

On 17/02/2024 14:14, Yang Xiwen wrote:
> On 2/17/2024 6:14 PM, Krzysztof Kozlowski wrote:
>> On 16/02/2024 16:21, Yang Xiwen via B4 Relay wrote:
>>> From: Yang Xiwen <forbidden405@outlook.com>
>>>
>>> Also rename to hisilicon,inno-usb2-phy.yaml and add this name to
>>> compatible lists.
>> Please use subject prefixes matching the subsystem. You can get them for
>> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
>> your patch is touching.
>>
>>> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
>>> ---
>>>   .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 115 +++++++++++++++++++++
>>>   .../devicetree/bindings/phy/phy-hisi-inno-usb2.txt |  71 -------------
>>>   2 files changed, 115 insertions(+), 71 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
>>> new file mode 100644
>>> index 000000000000..73256eee10f9
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
>>> @@ -0,0 +1,115 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/phy/hisilicon,inno-usb2-phy.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: HiSilicon HiSTB SoCs INNO USB2 PHY device
>>> +
>>> +maintainers:
>>> +  - Yang Xiwen <forbidden405@outlook.com>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    minItems: 1
>> No, why? Compatibles must be fixed/constrained.
> Hi3798CV200 has only the first compatible listed in its device tree. But 
> you are right i can add it to hi3798mv200.dtsi so that `minItems` can be 
> removed
>>
>>> +    items:
>>> +      - enum:
>>> +          - hisilicon,hi3798cv200-usb2-phy
>>> +          - hisilicon,hi3798mv100-usb2-phy
>> This wasn't here before. Not explained in commit msg.
>>
>>> +      - const: hisilicon,inno-usb2-phy
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +    description: |
>> Do not need '|' unless you need to preserve formatting.
>>
>>> +      Should be the address space for PHY configuration register in peripheral
>>> +      controller, e.g. PERI_USB0 for USB 2.0 PHY01 on Hi3798CV200 SoC.
>>> +      Or direct MMIO address space.
>>> +
>>> +  '#address-cells':
>>> +    const: 1
>>> +
>>> +  '#size-cells':
>>> +    const: 0
>>> +
>>> +  clocks:
>>> +    maxItems: 1
>>> +    description: reference clock
>>> +
>>> +  resets:
>>> +    maxItems: 1
>>> +
>>> +patternProperties:
>>> +  'phy@[0-9a-f]+':
>>> +    type: object
>>> +    additionalProperties: false
>>> +    description: individual ports provided by INNO PHY
>>> +
>>> +    properties:
>>> +      reg:
>>> +        maxItems: 1
>>> +
>>> +      '#phy-cells':
>>> +        const: 0
>>> +
>>> +      resets:
>>> +        maxItems: 1
>>> +
>>> +    required: [reg, '#phy-cells', resets]
>> One item per line. Look at other bindings or example-schema.
>>
>>> +
>>> +required:
>>> +  - compatible
>>> +  - clocks
>>> +  - reg
>>> +  - '#address-cells'
>>> +  - '#size-cells'
>>> +  - resets
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/clock/histb-clock.h>
>>> +
>>> +    peripheral-controller@8a20000 {
>>> +        compatible = "hisilicon,hi3798cv200-perictrl", "syscon", "simple-mfd";
>>> +        reg = <0x8a20000 0x1000>;
>>> +        #address-cells = <1>;
>>> +        #size-cells = <1>;
>>> +        ranges = <0x0 0x8a20000 0x1000>;
>> Drop the node, not related to this binding. If this binding is supposed
>> to be part of other device in case of MFD devices or some tightly
>> coupled ones, then could be included in the example there.
>>
>>> +
>>> +        usb2-phy@120 {
>>> +            compatible = "hisilicon,hi3798cv200-usb2-phy";
>>> +            reg = <0x120 0x4>;
>>> +            clocks = <&crg HISTB_USB2_PHY1_REF_CLK>;
>>> +            resets = <&crg 0xbc 4>;
>>> +            #address-cells = <1>;
>>> +            #size-cells = <0>;
>>> +
>>> +            phy@0 {
>>> +                reg = <0>;
>>> +                #phy-cells = <0>;
>>> +                resets = <&crg 0xbc 8>;
>>> +            };
>>> +
>>> +            phy@1 {
>>> +                reg = <1>;
>>> +                #phy-cells = <0>;
>>> +                resets = <&crg 0xbc 9>;
>>> +            };
>>> +        };
>>> +
>>> +        usb2-phy@124 {
>>> +            compatible = "hisilicon,hi3798cv200-usb2-phy";
>> You can keep only one example, because they are basically the same.
> 
> It is listed here just because cv200 (and the upcoming mv200) actually 
> has two INNO phys in the SoC. And coincidently for both SoCs, one with 
> two ports is wired to USB2 controller(EHCI &OHCI), while the other one 
> with only one port is wired to DWC3 controller. The example here is 
> borrowed directly from hi3798cv200.dtsi.
> 

I see the differences and one difference means they are basically the same.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
