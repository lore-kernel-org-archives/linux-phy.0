Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36E6CCD5BAB
	for <linux-phy@archiver.kernel.org>; Sun, 24 May 2026 10:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rUYHsB+nmcM4AAV+FpefORexGnegYLR0BHJ1BLVVP0=; b=f9UzSdig7JKr3k
	wXMrYVxz7FkgCuKdMmPP8Ls7NFoxvUJTko8Euvwkj/ELUH7jkDVzdFVNrqkHSYK1zVG83sLps8vFY
	PB5cmxQ0PkwdUsAn+O5TuJoLPq9dL1lMpXQOrzc29RSGfzYL4nPqb9WVTtr28ZwvbkACTEvpU9Xjw
	3l1ojzit/iTRq9SQ9xhb20csv5kif9rPw4tW2KJXzAAgBk9dKs29vXEmLEjvWC3Fvp0OzsO4zjfJ0
	azAQwcQ2JwpTPortDGckCVigrSROQzdQ65snWnu/54E4eLBn2wbHBmOIU0pQAVgvU5H8MKREpaMIm
	TT+XHUdvWt1fL/FJz/+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wR6YC-0000000EqrY-2GZe;
	Sun, 24 May 2026 10:59:20 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wR6YA-0000000Eqqr-1R2J
	for linux-phy@lists.infradead.org;
	Sun, 24 May 2026 10:59:19 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-49042aeeb75so31793455e9.1
        for <linux-phy@lists.infradead.org>; Sun, 24 May 2026 03:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779620355; x=1780225155; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7s/WuWNL9ddRgnnG+HfLCLif5sg1VJxBqglIWP1cQXQ=;
        b=XMB6FN6Wf9inH3W9t8P7ba/e/KaKjvMnlK96HaXykkZ88V1TIFvYU73cPLyyhGH+09
         xunW0xQNR3KydrJPgW+WKRC5rjb5dy2SJgmbo3ez1vET1p8JVxYe68vLC4uqW/knTd/5
         LklPvqvils2xcQp25Olf/50HOMkEQlEB5zpln/y7wvU7Pwfr/gl3nPyb4XwtxNW+p7CL
         B35CqVWOEVCLC1mrXeSn1srk4ZFEv1GB4N++UUuZKzz+xUHpKlryf62iWrRMiNvezNF2
         HOTHC0vQSqthF50+odKDvzLEsYq9zGFEn8sa4sxG15cUpfHoMJ6Mrfrx/F0xlgtYMrWF
         M8ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779620355; x=1780225155;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7s/WuWNL9ddRgnnG+HfLCLif5sg1VJxBqglIWP1cQXQ=;
        b=gKhaOl1ZBTBjXQCiObw7qgvAjuWZPf23+REOkjL9CdFCsKZXLTZ7cuAhQ4GQEWoPoz
         JDxQsremLQwvCxTF9XUZGR4xT4DTYhJnHd1K5YXyzEjk518P8a6Di2KEeyWHW+7e8TAq
         X2aam4kyH81Z2BKUmqM0JJ0Cg92AWrEs6UWo/aSDKCliaS9g6n7gev7UNjpGwcjJgCrT
         SoR1Bn9CV2yLfNNMIkQlGkdYN4w5mVi3BTEyYacxG6BmlwOZKp/iuccbzG34ZEUruAOi
         z5WNd0g0FjR4/TPlca7EcL5XXKFWEtbuoGV0JUE1nXoEnXSZZP80VV/960UTtOnOZL4E
         KJCA==
X-Forwarded-Encrypted: i=1; AFNElJ9GddnOSZSm3vEy95V75E1F66TpS7hxUHok/EQ1hHJ9h4lFKti+0EYqbaE+A2Q4KWYQ++V0vDQt3Dc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyyZDgUf8a0q1UcuOnSW7/QcT3LXjq4xU01JeQ+FcchGvp+NwuA
	LsXHaQxZ+dN5evDZkDX7+rEXw5fOIYRAnI/oPm8ocbZGujzfuimaNSK62gy2/pwLsNba7Rg4Ntt
	kWEB6F3w=
X-Gm-Gg: Acq92OHfQhxcyiWutbt4IhxRwcZaJp3+nTdVNaz597FU3+/N+HdXs37z45zf4O1/txt
	bnlHXyaaV88+z8cfheYQxm9O50AEvgH7mpLKwh7mXY7iwVFPxOR/jKULpb+0WRBot9omnN1EGyt
	EGiAwLDEfIP4Ozf4Nr7jjE6egIqp5xV8HWnLscKRXT6UEWGtFgGey7byazNb45WXMwG2qonSXML
	XZELUJWiLO9XPBhyrMbHpRwGjFgH6HdQNXbTkMTuwyS/CVFECp9Ch+obEZ7w1j0kYeiUnDq3MxG
	MGCrQXhgmcfzEHbg15Z7xbY1DYygkmizZAmrrXbTPYm4BypglCqNG8R4xOFMig/6x1kAKRLyzOJ
	N7S2PeWNNt+vpcyeRMpmDrnoizsvlctW1CbsIswJW3pHSWgZAIofJQ2MAOCt7FmyJMKwS7JuDUg
	Eb+abp0geETY1D/5otFtJjowiJ1F0g+hEP81KU669QPxo=
X-Received: by 2002:a05:600c:3b0a:b0:490:60cb:560b with SMTP id 5b1f17b1804b1-49060cb57b1mr22246205e9.28.1779620354935;
        Sun, 24 May 2026 03:59:14 -0700 (PDT)
Received: from [172.20.52.45] ([89.101.53.26])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490428e5adcsm66212625e9.21.2026.05.24.03.59.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2026 03:59:14 -0700 (PDT)
Message-ID: <8f19b1c2-8469-4699-980b-fbd3b3354169@linaro.org>
Date: Sun, 24 May 2026 11:59:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org,
 conor+dt@kernel.org
References: <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <20260523030420.045501F000E9@smtp.kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260523030420.045501F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_035918_428215_2FCD3BA6 
X-CRM114-Status: GOOD (  21.96  )
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

On 23/05/2026 04:04, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 4 potential issue(s) to consider:
> - [Medium] Using the literal `endpoint:` property name inside ports bypasses constraint validation for endpoints with unit addresses.
> - [Medium] The `data-lanes` property on `port@1` is overly restricted to `maxItems: 1`, which will break multi-lane DPHY split-mode configurations.
> - [Low] The example uses a non-generic device tree node name `csiphy@...` instead of the standard `phy@...`.
> - [Low] Mismatch between the `vdda-0p9-supply` property name and the actual 0.8V hardware supply used on the x1e80100 platform.
> --
> 
> commit 10936c65e44aeea784cc13676d51700996cf6559
> Author: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
> 
> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> PHY devices.
> 
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>> new file mode 100644
>> index 0000000000000..270375f949880
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> [ ... ]
>> +  power-domain-names:
>> +    items:
>> +      - const: mmcx
>> +      - const: mx
>> +
>> +  vdda-0p9-supply:
>> +    description: Phandle to a 0.9V regulator supply to a PHY.
> 
> [Severity: Low]
> Does this property name mismatch the actual hardware supply voltage for the
> x1e80100 platform?
> 
> The example later in this schema uses <&vreg_l2c_0p8>, which indicates an
> 0.8V rail. Should this be updated to reflect the 0.8V voltage?

This was feedback I forgot to implement yes.

>> +
>> +  vdda-1p2-supply:
>> +    description: Phandle to 1.2V regulator supply to a PHY.
>> +
>> +  ports:
>> +    $ref: /schemas/graph.yaml#/properties/ports
>> +
>> +    properties:
>> +      port@0:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        description: Sensor input. Always present.
>> +        unevaluatedProperties: false
>> +
>> +        properties:
>> +          endpoint:
> 
> [Severity: Medium]
> Will using the literal endpoint: key bypass constraint validation if an
> endpoint with a unit address (e.g., endpoint@0) is used?
> 
> Because the port references port-base, such an endpoint will pass the
> unevaluatedProperties: false check, but its specific constraints wouldn't
> be validated. Could this use patternProperties: "^endpoint(@[0-9a-f]+)?$":
> instead?

Not sure about the answer to that. Also feels like the tool could have 
made this suggestion at v7, definitely room for improvement.

> 
>> +            $ref: /schemas/media/video-interfaces.yaml#
>> +            unevaluatedProperties: false
> [ ... ]
>> +      port@1:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        description:
>> +          Second sensor input. When present, indicates DPHY split mode.
>> +        unevaluatedProperties: false
>> +
>> +        properties:
>> +          endpoint:
> 
> [Severity: Medium]
> As with port@0, should this use patternProperties: "^endpoint(@[0-9a-f]+)?$":
> to ensure endpoints with unit addresses are properly validated?
> 
>> +            $ref: /schemas/media/video-interfaces.yaml#
>> +            unevaluatedProperties: false
>> +            properties:
>> +              data-lanes:
>> +                maxItems: 1
> 
> [Severity: Medium]
> Is maxItems: 1 too restrictive for multi-lane DPHY split-mode configurations?
> 
> Split-mode typically divides a 4-lane PHY into two independent 2-lane
> interfaces (e.g., data-lanes = <2 3>). This configuration would fail
> dt_binding_check validation with a single item limit.

Not sure where Sashiko is getting this "typically" stuff from since 
split-mode is a qcomism.

But no in split mode port@1 is specifically restricted this way.

Is there a way to give definitive feedback - with a meta comment perhaps 
- that stops the tool continually giving the same feedback ?

> 
>> +              clock-lanes:
>> +                maxItems: 1
> [ ... ]
>> +      port@2:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        description: Output to CAMSS controller.
>> +        unevaluatedProperties: false
>> +
>> +        properties:
>> +          endpoint:
> 
> [Severity: Medium]
> As above, should this use patternProperties: "^endpoint(@[0-9a-f]+)?$":?
> 
>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>> +            unevaluatedProperties: false
> [ ... ]
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
>> +    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
>> +    #include <dt-bindings/power/qcom,rpmhpd.h>
>> +
>> +    csiphy4: csiphy@ace4000 {
> 
> [Severity: Low]
> Does this node name violate the standard naming convention for PHY providers?

In the example does that matter ? Passes the dt checker anyway.

> The core phy-provider.yaml schema expects node names to match the generic
> pattern ^phy(@.*)?$. The current name csiphy@ace4000 will likely trigger a
> dt_binding_check warning.
> 
>> +        compatible = "qcom,x1e80100-csi2-phy";
>> +        reg = <0x0ace4000 0x2000>;
>> +        #phy-cells = <1>;
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
