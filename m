Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61D58C6FA83
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 13:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:In-Reply-To:References:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iMj7y6m1MJmfCsdau3OYPZVzW0CsmAvnoSOfXsPwoeI=; b=3+/s3RM5ve8I5X6eIyc2wsl8rL
	cp36viG4pA06ziA8TuMYGxuNMh3j5URTNL2ykGIS54ZoLVGxiTr27qycDBbee1k49Y3hcBMW2ZMf0
	z5eHQ+CqlluER2bmnTmLdRZSEJxnTKoKUve3WFFdBuwjWTsmQ/7OS4jzG6fsS+HcS9bOH2PnjbtMi
	fG85OrfVA/FPo+t+t1ZavKXQerEQsCSEIUCfZaqOPLd6PxfdfEiGc5jESg1yr5vNXCcllP5//jLEN
	B9y3Ufg1mn+MR/kgk4FaZBiauu9Qdbobxk2JTH8NFc0htz6IvHVds4+QrYiNoAoz+aSGhL6bR0oal
	1LkUwyWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odB2u-00B7R7-Lw; Tue, 27 Sep 2022 13:54:48 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odB2h-00B7MO-HP
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 13:54:39 +0000
Received: by mail-pl1-x632.google.com with SMTP id jm5so9112364plb.13
        for <linux-phy@lists.infradead.org>; Tue, 27 Sep 2022 06:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date;
        bh=5qwETXszsJHRG+KNZAfDuGy2+IIkJBoKDnABLfH60tQ=;
        b=f6CmSv0OlzXmED5tWFMSEinGTJEbhs3apO2o1WVlHEn+fFfXX/l+1/NWVY0KujLper
         X/2WcJl9nH8Xw5kR9mL+LHRjOMu43tSGWSUwpvW9zKPDPXKjDOCRlWV7xlNA4fU9O3uO
         EMLs8HS8JsxOPDDfvIp20W1TauC+8dKOsL0XnOUFHRZiSa+Zbjqid1dyRpVlomKM4otZ
         zh6z3rpfTqgJ1FKaCaI+uRceIOXR7ELINnOEvNzy5OSpCn6dwVULSLU4AeDcDUINb9b0
         wiTFGntz5cRLbyKXTdNoLvrKQdmT7WT5bwZGjE1l5eZ42VfsffuzvLg2MDN0nikd2ZHZ
         OhNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date;
        bh=5qwETXszsJHRG+KNZAfDuGy2+IIkJBoKDnABLfH60tQ=;
        b=74lO/Zl+fVGY21xxEVkPiDYXCD/61enOp8eE5VyZi7d0rbLGwn1oIEtzczxKEUrWbO
         OsIKynd4RBE+/q9dii56GaeIh8M4jmCHNFGC7VR+fO4+BGPYhJBVx79DaIhORAuWVBRe
         np/chQUmUCOGvsg4E+71PhCnROUidObse9rAVbIZumg4WL1xWGynmKoFuxNsBBAlSm1+
         A0cIR0XVa1tN581uXbKtuMoNC3vWlb1J79XPf0+wAOjxFCFEXazH9aIDadm2bXO6jP4L
         nVryfQcc1hY0VzP776N7r8qb1asOs6v19QhuRG68NMrGRcEcBKZjKt3MbUKRHJc5ryRM
         Shdw==
X-Gm-Message-State: ACrzQf2tFxcbjLS9g7d5hjbnuBT+vTWXk2+m6xfcv00k7aYuEes6UWUR
	Hd8PIJAxufIGnl1riN82xEo8MySi0EiflsNJb5TDHQ==
X-Google-Smtp-Source: AMsMyM4+x7J4OZ7W3bVeH4hHPFvWPmyfihQv01BR+E1ukDBABSgNNIPaY8dNmMrk3y51NserN90WcMrsVcQRB6ZIwYk=
X-Received: by 2002:a17:90b:3807:b0:205:d746:93a0 with SMTP id
 mq7-20020a17090b380700b00205d74693a0mr3837620pjb.188.1664286873871; Tue, 27
 Sep 2022 06:54:33 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 27 Sep 2022 06:54:33 -0700
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-4-4844816c9808@baylibre.com>
 <260bb17f-efc8-1287-3e03-f9b8e79a6e31@linaro.org>
In-Reply-To: <260bb17f-efc8-1287-3e03-f9b8e79a6e31@linaro.org>
MIME-Version: 1.0
Date: Tue, 27 Sep 2022 06:54:33 -0700
Message-ID: <CABnWg9vifOaAgwr7tkELUqbQA_1f-FfMFZ9o7sjZCaneo_FUmw@mail.gmail.com>
Subject: Re: [PATCH v1 04/17] dt-bindings: display: mediatek: add MT8195 hdmi bindings
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
	Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
	Jitao shi <jitao.shi@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@baylibre.com>, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_065435_583420_4839CD8A 
X-CRM114-Status: GOOD (  20.64  )
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

On Thu, 22 Sep 2022 09:18, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>On 19/09/2022 18:56, Guillaume Ranquet wrote:
>> Add mt8195 SoC bindings for hdmi and hdmi-ddc
>>
>> Make port1 optional for mt8195 as it only supports HDMI tx for now.
>> Requires a ddc-i2c-bus phandle.
>> Requires a power-domains phandle.
>>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>
>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
>> index bdaf0b51e68c..abb231a0694b 100644
>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
>> @@ -21,6 +21,10 @@ properties:
>>        - mediatek,mt7623-hdmi
>>        - mediatek,mt8167-hdmi
>>        - mediatek,mt8173-hdmi
>> +      - mediatek,mt8195-hdmi
>> +
>> +  clocks: true
>> +  clock-names: true
>
>????
>Why is this moved?
>
>>
>>    reg:
>>      maxItems: 1
>> @@ -28,20 +32,6 @@ properties:
>>    interrupts:
>>      maxItems: 1
>>
>> -  clocks:
>> -    items:
>> -      - description: Pixel Clock
>> -      - description: HDMI PLL
>> -      - description: Bit Clock
>> -      - description: S/PDIF Clock
>> -
>> -  clock-names:
>> -    items:
>> -      - const: pixel
>> -      - const: pll
>> -      - const: bclk
>> -      - const: spdif
>
>Clock definition with constraints should stay here. You just customize
>it per variant.
>
Clocks are different between the two hardwares, so I've tried moving everything
inside the if/else block.

Is there a better way to express this?

>> -
>>    phys:
>>      maxItems: 1
>>
>> @@ -58,6 +48,16 @@ properties:
>>      description: |
>>        phandle link and register offset to the system configuration registers.
>>
>> +  ddc-i2c-bus:
>> +    $ref: '/schemas/types.yaml#/definitions/phandle'
>
>Drop quotes
>
>> +    description: Phandle to the ddc-i2c device
>
>Isn't this property of panel?
>
It's a property used in panels and connectors.
But since this IP doesn't use a connector per say, I've added the property here.

Which doesn't sound reasonnable when I'm explaining it like this...
I'll see what I can do to fit a connector and have things look a bit
more standard.

>> +
>> +  power-domains:
>> +    description:
>> +      A phandle and PM domain specifier as defined by bindings
>> +      of the power controller specified by phandle. See
>> +      Documentation/devicetree/bindings/power/power-domain.yaml for details.
>
>No need for this text. This is standard property. You miss maxItems.
>
>
>> +
>>    ports:
>>      $ref: /schemas/graph.yaml#/properties/ports
>>
>> @@ -76,7 +76,6 @@ properties:
>>
>>      required:
>>        - port@0
>> -      - port@1
>>
>>  required:
>>    - compatible
>> @@ -86,9 +85,55 @@ required:
>>    - clock-names
>>    - phys
>>    - phy-names
>> -  - mediatek,syscon-hdmi
>>    - ports
>>
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: mediatek,mt8195-hdmi
>> +    then:
>> +      properties:
>> +        clocks:
>> +          items:
>> +            - description: APB
>> +            - description: HDCP
>> +            - description: HDCP 24M
>> +            - description: Split HDMI
>> +        clock-names:
>> +          items:
>> +            - const: hdmi_apb_sel
>> +            - const: hdcp_sel
>> +            - const: hdcp24_sel
>> +            - const: split_hdmi
>
>Clocks are entirely different. I am not sure there is benefit in keeping
>these devices in one bindings.
>

I agree with that, but it was requested by CK that the driver and bindings be
as common as possible.

>> +
>> +      required:
>> +        - power-domains
>> +        - ddc-i2c-bus
>
>Blank line,
>
>> +    else:
>> +      properties:
>> +        clocks:
>> +          items:
>> +            - description: Pixel Clock
>> +            - description: HDMI PLL
>> +            - description: Bit Clock
>> +            - description: S/PDIF Clock
>> +
>> +        clock-names:
>> +          items:
>> +            - const: pixel
>> +            - const: pll
>> +            - const: bclk
>> +            - const: spdif
>> +
>> +        ports:
>> +          required:
>> +            - port@1
>> +
>> +      required:
>> +        - mediatek,syscon-hdmi
>> +
>>  additionalProperties: false
>>
>>  examples:
>> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
>> new file mode 100644
>> index 000000000000..3c80bcebe6d3
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
>> @@ -0,0 +1,45 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Mediatek HDMI DDC Device Tree Bindings for mt8195
>
>Drop Device Tree Bindings
>
>> +
>> +maintainers:
>> +  - CK Hu <ck.hu@mediatek.com>
>> +  - Jitao shi <jitao.shi@mediatek.com>
>> +
>> +description: |
>> +  The HDMI DDC i2c controller is used to interface with the HDMI DDC pins.
>
>Why is this different than existing ddc bindings?
>
This ddc is actually part of the MT8195 hdmi IP.

So it is a bit simpler than the mediatek,hdmi-ddc.yaml
As it has only one clock, no reg, no interrupts.

>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - mediatek,mt8195-hdmi-ddc
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    items:
>> +      - const: ddc-i2c
>> +
>> +required:
>> +  - compatible
>> +  - clocks
>> +  - clock-names
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/interrupt-controller/irq.h>
>> +    hdmiddc0: ddc_i2c {
>
>No underscores in node names. Generic node names.
>
>
>Best regards,
>Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
