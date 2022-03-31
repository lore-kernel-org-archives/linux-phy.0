Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4208FC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 31 Mar 2022 00:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SuCRc0dPc91Mvx92E4oIR1UhW8T7fcCkIVBCYpVFyj8=; b=vklc2PsZAEGx1P9aSFR5I7c4T2
	fxhmEJKlpgKbFhHoQ9af+dx8RNnP/+mfcDcvUH2db0KDaQUmRUQRNK8Da01DZuWAJF+cy/d9eEo4a
	vB/I1MJNdkXqKZSP7XS4FQ8HejUel3i3edqpvu5zAK9BL3W8BJruqxi0/f5a/1fhSvC7LoBgP81f0
	c42I6tarSlSU9XxZGR1/2CxyogQHSR29PQknKU2epPrkoL59enslIQTAuT6bA7bw0v93elDb1jcyF
	wibErGPJ6CFUG9c2RkZWRkJTLZrqvFU4FTCD+m5ATqcD79Zu2G01D7G+l+V/mY31skyqM/C58yc1H
	syOQJp4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZj1m-000Dfd-Db; Thu, 31 Mar 2022 00:51:06 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZj1a-000Dcm-FM; Thu, 31 Mar 2022 00:50:56 +0000
Received: from unknown (HELO kinkan2-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 31 Mar 2022 09:50:52 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan2-ex.css.socionext.com (Postfix) with ESMTP id 7C28D2058443;
 Thu, 31 Mar 2022 09:50:52 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 31 Mar 2022 09:50:52 +0900
Received: from [10.212.183.63] (unknown [10.212.183.63])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id 9083BB62B7;
 Thu, 31 Mar 2022 09:50:51 +0900 (JST)
Subject: Re: [PATCH v3 5/5] dt-bindings: phy: uniphier: Clean up clocks,
 resets, and their names using compatible string
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1648637715-19262-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648637715-19262-6-git-send-email-hayashi.kunihiko@socionext.com>
 <a784ed61-965a-5c68-c2dd-3340cf18c7b5@linaro.org>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <d32191fc-1302-89e4-8b24-40fe33867b98@socionext.com>
Date: Thu, 31 Mar 2022 09:50:51 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <a784ed61-965a-5c68-c2dd-3340cf18c7b5@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_175054_794104_DDAD7046 
X-CRM114-Status: GOOD (  21.55  )
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

Hi Krzysztof,

On 2022/03/31 2:40, Krzysztof Kozlowski wrote:
> On 30/03/2022 12:55, Kunihiko Hayashi wrote:
>> Instead of "oneOf:" choices, use "allOf:" and "if:" to define clocks,
>> clock-names, resets, and reset-names that can be taken by the compatible
>> string.
>>
>> The order of clock-names and reset-names doesn't change here.
>>
>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>> ---
>>   .../phy/socionext,uniphier-ahci-phy.yaml      | 90 +++++++++++++-----
>>   .../phy/socionext,uniphier-pcie-phy.yaml      | 47 ++++++---
>>   .../phy/socionext,uniphier-usb3hs-phy.yaml    | 93 ++++++++++++++----
>>   .../phy/socionext,uniphier-usb3ss-phy.yaml    | 95 +++++++++++++++----
>>   4 files changed, 251 insertions(+), 74 deletions(-)
>>
> 
> (...)
> 
>> diff --git
>> a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
>> b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
>> index 1bbd164f2527..21e4414eea60 100644
>> ---
>> a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
>> +++
>> b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
>> @@ -34,30 +34,12 @@ properties:
>>       minItems: 2
>>       maxItems: 3
>>
>> -  clock-names:
>> -    oneOf:
>> -      - items:               # for Pro5
>> -          - const: gio
>> -          - const: link
>> -      - items:               # for PXs3 with phy-ext
>> -          - const: link
>> -          - const: phy
>> -          - const: phy-ext
>> -      - items:               # for others
>> -          - const: link
>> -          - const: phy
>> +  clock-names: true
>>
>>     resets:
>>       maxItems: 2
>>
>> -  reset-names:
>> -    oneOf:
>> -      - items:               # for Pro5
>> -          - const: gio
>> -          - const: link
>> -      - items:               # for others
>> -          - const: link
>> -          - const: phy
>> +  reset-names: true
>>
>>     vbus-supply:
>>       description: A phandle to the regulator for USB VBUS
>> @@ -80,6 +62,77 @@ properties:
>>         required for each port, if any one is omitted, the trimming data
>>         of the port will not be set at all.
>>
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: socionext,uniphier-pro5-usb3-hsphy
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 2
>> +          maxItems: 2
>> +        clock-names:
>> +          items:
>> +            - const: gio
>> +            - const: link
>> +        resets:
>> +          minItems: 2
>> +          maxItems: 2
>> +        reset-names:
>> +          items:
>> +            - const: gio
>> +            - const: link
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - socionext,uniphier-pxs2-usb3-hsphy
>> +              - socionext,uniphier-ld20-usb3-hsphy
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 2
>> +          maxItems: 2
>> +        clock-names:
>> +          items:
>> +            - const: link
>> +            - const: phy
>> +        resets:
>> +          minItems: 2
>> +          maxItems: 2
>> +        reset-names:
>> +          items:
>> +            - const: link
>> +            - const: phy
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - socionext,uniphier-pxs3-usb3-hsphy
>> +              - socionext,uniphier-nx1-usb3-hsphy
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 2
> 
> Why minItems:2? Is the last phy-ext clock optional?

In an SoC with two controllers, there is a controller that requires extra
clock and a controller that does not. For example, PXs3 USB3 controller 1
needs "phy-ext" clock, but the controller 0 doesn't.

This difference is related to the phy configuration, where the controller 1
requires more clocks because it shares the phy with other subsystems.

So I think the last phy-ext clock should be optional.

> 
>> +          maxItems: 3
>> +        clock-names:
>> +          minItems: 2
>> +          items:
>> +            - const: link
>> +            - const: phy
>> +            - const: phy-ext
>> +        resets:
>> +          minItems: 2
>> +          maxItems: 2
>> +        reset-names:
>> +          items:
>> +            - const: link
>> +            - const: phy
>> +
>>   required:
>>     - compatible
>>     - reg
>> diff --git
>> a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
>> b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
>> index 06c957d52d23..4c26d2d2303d 100644
>> ---
>> a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
>> +++
>> b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
>> @@ -35,34 +35,89 @@ properties:
>>       minItems: 2
>>       maxItems: 3
>>
>> -  clock-names:
>> -    oneOf:
>> -      - items:             # for Pro4, Pro5
>> -          - const: gio
>> -          - const: link
>> -      - items:             # for PXs3 with phy-ext
>> -          - const: link
>> -          - const: phy
>> -          - const: phy-ext
>> -      - items:             # for others
>> -          - const: link
>> -          - const: phy
>> +  clock-names: true
>>
>>     resets:
>>       maxItems: 2
>>
>> -  reset-names:
>> -    oneOf:
>> -      - items:              # for Pro4,Pro5
>> -          - const: gio
>> -          - const: link
>> -      - items:              # for others
>> -          - const: link
>> -          - const: phy
>> +  reset-names: true
>>
>>     vbus-supply:
>>       description: A phandle to the regulator for USB VBUS, only for USB
>> host
>>
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - socionext,uniphier-pro4-usb3-ssphy
>> +              - socionext,uniphier-pro5-usb3-ssphy
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 2
>> +          maxItems: 2
>> +        clock-names:
>> +          items:
>> +            - const: gio
>> +            - const: link
>> +        resets:
>> +          minItems: 2
>> +          maxItems: 2
>> +        reset-names:
>> +          items:
>> +            - const: gio
>> +            - const: link
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - socionext,uniphier-pxs2-usb3-ssphy
>> +              - socionext,uniphier-ld20-usb3-ssphy
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 2
>> +          maxItems: 2
>> +        clock-names:
>> +          items:
>> +            - const: link
>> +            - const: phy
>> +        resets:
>> +          minItems: 2
>> +          maxItems: 2
>> +        reset-names:
>> +          items:
>> +            - const: link
>> +            - const: phy
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - socionext,uniphier-pxs3-usb3-ssphy
>> +              - socionext,uniphier-nx1-usb3-ssphy
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 2
> 
> Same question as above.

This is also the same reason.

Thank you,

---
Best Regards
Kunihiko Hayashi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
