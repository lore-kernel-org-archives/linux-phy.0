Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0B35CA0EE6
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 05:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GRRoNW9AEfZxvY5v1qsUO9yZpL5n50Kisdi1P9NOFE=; b=MFaORfwytO+04c
	l8YomPwi8nYQHU7gKAJSWb14aJ4WLgqOapQL79uILgZBrfU7zBR57/2tks2crI7qkI1Q7yp4Ckkpt
	8hzt19WM6Om5H7Vl03Ih+MjZNdIXniYS6mmlPx4TerufsIzSC9Zw0MakFHaZtpCM8BfO2YC//6/oM
	Vlin7p496GdAL3IPrJN5Y2tJpR4iSTygVuboBAwNNWD1pJwC9G7mU079g19kbm8aQz4HarqGX8O6s
	aWUJMWeVwgMHsqJnOA6HwWtq+QVNsiqiZF6ghALPH6KddalSTVD8lYCprHxg6Ya/w8TL9wLBokP42
	pLp2sryx43zZk7yX+02g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoEmf-00000009QPc-2E0a;
	Tue, 19 Aug 2025 05:21:21 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoEmc-00000009QP1-3DJX
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 05:21:20 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-afcb61f6044so815176466b.0
        for <linux-phy@lists.infradead.org>; Mon, 18 Aug 2025 22:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755580877; x=1756185677; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dEbBJBOCsv8FoKMcsZux3iuZl2krc57rvNsAxShKVFs=;
        b=caxdKsEX8O9AVL0QSRMjU7AvEDZ1kz+PBqQCupGCfk+hUZ2KJz1HZkuC9G/+ASrN32
         669zyFJtHVNKu6T6/5rcytcG0QBLi4rcOAYjjMf47KRD5ZDQvZLaBpAMVxtQ2b4irl7t
         rD2cImQfQ3Eeq/XWvY0V36JWESHpnmRVaouqaTIcChfkJxTHmSBpyzSW9kJ2o3RUvH2S
         nakPkfpNsyXNYk9qQcPRF34vEtrheOyyMBjrSiSxYeTJgGfdAViG7+ox+nHmJs5HDCHv
         GJl6+Ofj/KgDDmwMfN9OAtU14eb+PeZdbzuL+aJbCsCZ6YnPmBo/EM+LT87JhEnxDZK1
         tx8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755580877; x=1756185677;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dEbBJBOCsv8FoKMcsZux3iuZl2krc57rvNsAxShKVFs=;
        b=NalalG0s51xacNb/I4VuTrq9JoZsrfL3IaNGFeXOah+WesQ9ACKdmv56Ok8RK16pPV
         ep3mEc5UgnEEm+Iv3VM3dLAmqlI0qzFtAep0QESH2q/fY78Tk/K6mgqBB2KZU+RIeoRB
         ltzl3nSed0zG+4upEJMNCGtsnYqcpUH2SwEwmNpYIwC7MF6ZoYAjaXJT2vmmvXUFAYY4
         QHhZwFL8g6YI/tR2lg8PQhO94xjfIVluGf5+yaFZZWt7PoKlbv95sdR2PgX6eClvlSbG
         l44jfJAKia7tarjd2II0Uvo5TBr+n4psS3LqllMuX/smD7ZFQYJQblskUKOItNcN5flG
         DUyA==
X-Forwarded-Encrypted: i=1; AJvYcCWCcsuVkFc6DJdORcygXDyZedmQwlH5ViskqRruRLUHi04Hf4+u0xikETtt/7/6xy8dN8dpIyoOPoc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/qyHtVVrvKqa2xJmE1XYfdyJdvcQsLVng9VriwnZ+/jE8cx66
	clETLb6M5oHwVGfWFE8IgSODqfrGZWo4uwbbwQk20go/bFhYoEH33aLa8Ql+F2Xa5Sc=
X-Gm-Gg: ASbGncvy2L3VTkq/vst2IdRdlm0QAySqf6LyetB0AXMs16zg1u62ZRK/dF7OrAFnoSV
	rYIOx3drenmMyMPxZK97kg73cyTsAxaQ4gQJFS9uk1uxhIR/8L+wA7hvNVJDGPS+LQiP/PXLovo
	S5tPDaZapciSRDElw4Lb9IO77NSzoaFPJPKzK+wuuivylMe2mrtnvE8xJEiP04oCebhPlTm7VRG
	s3q1Q4WYnvoG01K71P/7Z+kSUGIFS//63Ni4Uxl7xx17s6iCeuksnCI0TYz0E/2vAuZoGflsmgu
	Tde7c+ERXUrAQpE4EWEoaXaFxpyCujxhPL+7qCCp0/gZxko8AYG7pncSXDAssJPXOFzKNDTybYn
	OQohmt8UPs3gd+vqUOOTvEoAGNmxxklmjxh/Kj0IpSJXm3Pf/Q7ztZ+5vqBGeFIvSfFTIoyhPBG
	wKuA==
X-Google-Smtp-Source: AGHT+IEsAxLjtuxFrd5xwHWqn7m4ZVS5u3/PVQsGkPC7Jx1JsTOvbmLGxcEv8DcPfcOnvXJsChzMvA==
X-Received: by 2002:a17:906:6a1d:b0:ae3:ee3a:56ee with SMTP id a640c23a62f3a-afddf019718mr100922166b.3.1755580877167;
        Mon, 18 Aug 2025 22:21:17 -0700 (PDT)
Received: from ?IPV6:2a02:2f04:620a:8b00:4343:2ee6:dba1:7917? ([2a02:2f04:620a:8b00:4343:2ee6:dba1:7917])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdd0107ecsm915013566b.86.2025.08.18.22.21.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 22:21:16 -0700 (PDT)
Message-ID: <f71ba698-6c8e-42c7-ac04-3b67cd774784@tuxon.dev>
Date: Tue, 19 Aug 2025 08:21:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/8] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl:
 Document RZ/G3S support
To: Rob Herring <robh@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
 <20250808061806.2729274-5-claudiu.beznea.uj@bp.renesas.com>
 <20250813232100.GA950521-robh@kernel.org>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20250813232100.GA950521-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_222118_811014_7AA3D716 
X-CRM114-Status: GOOD (  20.30  )
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

Hi, Rob,

On 8/14/25 02:21, Rob Herring wrote:
> On Fri, Aug 08, 2025 at 09:18:02AM +0300, Claudiu wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The Renesas USB PHY hardware block needs to have the PWRRDY bit in the
>> system controller set before applying any other settings. The PWRRDY bit
>> must be controlled during power-on, power-off, and system suspend/resume
>> sequences as follows:
>> - during power-on/resume, it must be set to zero before enabling clocks and
>>    modules
>> - during power-off/suspend, it must be set to one after disabling clocks
>>    and modules
>>
>> Add the renesas,sysc-pwrrdy device tree property, which allows the
>> reset-rzg2l-usbphy-ctrl driver to parse, map, and control the system
>> controller PWRRDY bit at the appropriate time. Along with it add a new
>> compatible for the RZ/G3S SoC.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v4:
>> - dropped blank line from compatible section
>> - s/renesas,sysc-signals/renesas,sysc-pwrrdy/g
>> - dropped description from renesas,sysc-pwrrdy
>> - updated description of renesas,sysc-pwrrdy items
>> - updated patch description
>>
>> Changes in v3:
>> - none; this patch is new
>>
>>   .../reset/renesas,rzg2l-usbphy-ctrl.yaml      | 40 ++++++++++++++++---
>>   1 file changed, 34 insertions(+), 6 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
>> index b0b20af15313..c1d5f3228aa9 100644
>> --- a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
>> +++ b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
>> @@ -15,12 +15,14 @@ description:
>>   
>>   properties:
>>     compatible:
>> -    items:
>> -      - enum:
>> -          - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
>> -          - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
>> -          - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
>> -      - const: renesas,rzg2l-usbphy-ctrl
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
>> +              - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
>> +              - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
>> +          - const: renesas,rzg2l-usbphy-ctrl
>> +      - const: renesas,r9a08g045-usbphy-ctrl # RZ/G3S
>>   
>>     reg:
>>       maxItems: 1
>> @@ -48,6 +50,19 @@ properties:
>>       $ref: /schemas/regulator/regulator.yaml#
>>       unevaluatedProperties: false
>>   
>> +  renesas,sysc-pwrrdy:
>> +    description: The system controller PWRRDY indicates to the USB PHY if the
>> +                 power supply is ready. PWRRDY needs to be set during power-on
>> +                 before applying any other settings. It also needs to
>> +                 be set before powering off the USB.
> 
> Where did this odd formatting come from?

I formatted it like this by mistake.

> If copied from somewhere else,
> patches reformatting them welcome.
> 
>      description:
>        The system controller PWRRDY indicates to the USB PHY if the power
>        supply is ready. PWRRDY needs to be set during power-on before applying
>        any other settings. It also needs to be set before powering off the USB.

OK

> 
> 
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    items:
>> +      - items:
>> +          - description: System controller phandle required by USB PHY CTRL
>> +                         driver to set PWRRDY
> 
> Indent by 2 more than 'description'

OK


Thank you,
Claudiu

> 
> With that,
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> 
>> +          - description: Register offset associated with PWRRDY
>> +          - description: Register bitmask associated with PWRRDY
>> +
>>   required:
>>     - compatible
>>     - reg
>> @@ -57,6 +72,19 @@ required:
>>     - '#reset-cells'
>>     - regulator-vbus
>>   
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: renesas,r9a08g045-usbphy-ctrl
>> +    then:
>> +      required:
>> +        - renesas,sysc-pwrrdy
>> +    else:
>> +      properties:
>> +        renesas,sysc-pwrrdy: false
>> +
>>   additionalProperties: false
>>   
>>   examples:
>> -- 
>> 2.43.0
>>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
