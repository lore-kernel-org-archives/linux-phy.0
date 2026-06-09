Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6FA0CD6E79
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 09:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trkdIJ6VG6WY3f/1la+DN/BmLzznGg5AKPRzSu8adF0=; b=LjH1+0O0M6hDQG
	xm0F09U7kaBaSoRDtCx6vl/182zf2dVUhmafu/9gYXAm0y0bRtMWbbze73DHPxYjzBLYkBk7fi+DV
	nefnoVUiI6HuyRhn2lE68dWHvPXFgLF78agjP8rdiT5w7h5xrsc/t/fQOIOfiNXY7vCW3/6rS3ahn
	wmrq0Jrf2jWTMQ421DTbx2ktIE4wj4p80e1mzputsqh8r23EQz9cLDjfA00jfkW6wTQz0rCSJLzjq
	nRQPBk1y+J5tJAy8LWT4LLi4lDpm5uP3hi+zU7FjKPFIjhWv19g25m+Ou/hTjr0aYP3ENUtfh1l9u
	6BPgOZ18TKy2mu4CwnGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWsYE-00000005B76-1tk0;
	Tue, 09 Jun 2026 09:15:14 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWsYC-00000005B6S-3KB8
	for linux-phy@lists.infradead.org;
	Tue, 09 Jun 2026 09:15:14 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-36bcf3d2565so3768904a91.3
        for <linux-phy@lists.infradead.org>; Tue, 09 Jun 2026 02:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780996511; x=1781601311; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0o0LqIeARHGVNWJRSz7OmbFxoiBCC04C/bpvJasunoc=;
        b=YpGosZRvN+HqeafjurwMqYnwrh1lPEnG0gj/vvTleNRB6OAvXw6HGB7LAfJIaJo3od
         DJhQlj871l2vwPkPi9eJ+OeWCrtMl1POwq7bjdh78ZxdttlGzWnNBmNpYptw8kq6CfpE
         8vq1Z7Kirj+Z26StjUGd1uQgBZA2vKiK+Ezhz7RO8STOyPq/UAScR+MEDqHBmG9IfRP1
         i7GlFzTZ891ts/i9ze+SzacU9jlwGp2VQ6/PYxG3GZdhdvp/Amlm5Clbse15+OLf9xG8
         khaXF7Ul3MbLHBcv/qznvVQ9zNM0wDnjBzWqNYVZI+Qm5Yr4Rmx2yicNVqzV5mYU714x
         GJcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780996511; x=1781601311;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0o0LqIeARHGVNWJRSz7OmbFxoiBCC04C/bpvJasunoc=;
        b=BCSZ8bPofu1gjaVH2Zcd4c8cHhbYeUUV2LNotb7r+49M1B5K1XVpQT0FlYVQVwpZqW
         75O5ynx4/WzhNBLPVwCkkGObk7dWNG6P6N9INhka80P7cPJgh+5GnIrDCDoRTLdRW1SL
         vA7aLOoKoB9eOcamOdPRnSGDQtp8AGoa0hoODpiQp5qVcqoUMVTDp5wdAH/PDYKNy55n
         o+eOkpXui8tkP1q2QaK4fAZxO9XcKny2TQZZpQl5bnf402q5ezj0yx6hCIuoWygnpVaO
         WDowk8a2SBM/gho3vtug/Cx6EtkcDpUL9Nsg2zaPKV1L0ffHg/o/+hSApVLpb2nmirPn
         YFbQ==
X-Forwarded-Encrypted: i=1; AFNElJ/4eYvswJgTj15AY4bUUQMik4cMBeJ1yjDyNzcxBd/reaLrr8FO81FZCjI4h6DTSIIkBfRV0B6lpHo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzqwPqGAXL9DhDKtfk9Tawj6UbvNlzC19dD9RgHHI5ZSGr16nu0
	rPb6ny2bj4Ps9C14dcKE8XCLtho1vzcDsUh5tuvEx35ilwg0l2ACAxyk
X-Gm-Gg: Acq92OHXs15Bh06G4+1yN+eV8P/G2SYx9d0NtLc3zo4gawmGoreaiBDUQ6mOawDmVen
	+Oy+m90VZSMlaS8oeZONbGQud0TEWh/p+O5O2rSVhKE8DB9Ldm9PQB7kAM4V/mtrxX/xA5iKfG4
	FdHBmebGrVsfbFAclMBl7gjDZeyKRCL4KGMnA+4eORoZ+Fb80l3rIp5w+9zBAEVxkwU0YIohmGX
	bGL8JlVO/JLM3r0CWNCCPhQtlKCQQTH4LF/Kd5Y2VbM5zGaQXjwnGMJAdeqntCr7VN8jNlwDbqY
	mTGjNIB8c0RhXDs9oqpqLXqGXgvyoa6e1g7mfwuyNws8OuaTL00ZFgWxijIOJ7lK5lHpbaQAs0g
	GMryUL0BX5U/aZU5asWA5HxD9CLC1JQAXnk+biU5twCdP0oUA+U4/mv4rOQ6dZP5OpmFQeVuRPx
	tWiMnuE5cSs4sbjv/yT3i60qGPWpAJOc7uNtvDWl+3bzXqSfKLhxH//OcawRf7ACsw+CA28aDGt
	Bp384+uYU7Pvn8=
X-Received: by 2002:a17:90b:6c3:b0:36d:6308:12fa with SMTP id 98e67ed59e1d1-370f0386f18mr21294469a91.18.1780996511281;
        Tue, 09 Jun 2026 02:15:11 -0700 (PDT)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f6c76f55asm18560817a91.7.2026.06.09.02.15.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2026 02:15:09 -0700 (PDT)
Message-ID: <c480d9a9-9489-4801-ad7d-33ec4ffc3242@gmail.com>
Date: Tue, 9 Jun 2026 17:15:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: nuvoton: Add MA35D1 USB2 OTG PHY
 binding
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jacky Huang <ychuang3@nuvoton.com>,
 Shan-Chun Hung <schung@nuvoton.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260604101220.1092822-1-a0987203069@gmail.com>
 <20260604101220.1092822-2-a0987203069@gmail.com>
 <20260608-demonic-horned-honeybee-4f6bb7@quoll>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <20260608-demonic-horned-honeybee-4f6bb7@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_021512_842169_F2CE8055 
X-CRM114-Status: GOOD (  14.23  )
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


On 6/8/2026 6:45 PM, Krzysztof Kozlowski wrote:
> On Thu, Jun 04, 2026 at 06:12:19PM +0800, Joey Lu wrote:
>
> A nit, subject: drop second/last, redundant "binding". The
> "dt-bindings" prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L18
Understood. The trailing "binding" will be dropped from the patch 
subject line in the next submission.
>> +properties:
>> +  compatible:
>> +    const: nuvoton,ma35d1-usb2-phy-otg
>> +
> Where is reg? MMIO is expressed with reg, not via custom phandle.
Understood. The PHY node will be restructured as a child of the syscon 
node, with a `reg = <0x60 0x14>` property covering the writable PHY 
control registers (USBPMISCR, MISCFCR0) within the parent's address 
space. The `nuvoton,sys` custom phandle will be removed; the driver will 
obtain the parent's regmap via 
`syscon_node_to_regmap(dev->parent->of_node)`, which looks up the global 
syscon list by `of_node`. PHY instance selection will be expressed via 
`#phy-cells = <1>`, with 0 for the OTG port (USB0) and 1 for the 
host-only port (USB1).
>
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  nuvoton,sys:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    items:
>> +      - items:
>> +          - description: phandle to the system management syscon.
>> +          - description: PHY instance index.
>> +            enum:
>> +              - 0   # USB0, OTG port (shared with DWC2 gadget controller)
>> +              - 1   # USB1, host-only port
>> +    description:
>> +      A phandle to the syscon node covering the SYS register block, with
>> +      one argument selecting the PHY instance. Index 0 selects the OTG
>> +      port PHY (USB0) and index 1 selects the host-only PHY (USB1).
>> +
>> +  "#phy-cells":
>> +    const: 0
>> +
>> +  nuvoton,rcalcode:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    minimum: 0
>> +    maximum: 15
>> +    description:
>> +      Resistor calibration trim code written to the RCALCODE field in
>> +      USBPMISCR. The 4-bit value adjusts the PHY's internal termination
>> +      resistance. When absent the hardware reset default is used.
>> +
>> +  nuvoton,oc-active-high:
>> +    type: boolean
>> +    description:
>> +      When present, the over-current detect input from the VBUS power
>> +      switch is treated as active-high. The default (property absent) is
>> +      active-low. This setting is shared by both USB host ports.
>> +
>> +required:
>> +  - compatible
>> +  - clocks
>> +  - nuvoton,sys
>> +  - "#phy-cells"
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
>> +
>> +    usb_hphy0: usb-host-phy {
> usb-phy
>
> And drop unused label.

Understood. The node name will be changed to `usb-phy` and the unused 
label `usb_hphy0:` will be removed.

Thanks for the review!

>> +        compatible = "nuvoton,ma35d1-usb2-phy-otg";
>> +        clocks = <&clk HUSBH0_GATE>;
>> +        nuvoton,sys = <&sys 0>;
>> +        #phy-cells = <0>;
>> +    };
>> -- 
>> 2.43.0
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
