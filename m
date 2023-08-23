Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F20EEE49AF
	for <linux-phy@archiver.kernel.org>; Wed, 23 Aug 2023 06:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SH2OpmFNEPjeLgJYpmtmI4km4AdksAT9NcTwGhpLkrY=; b=Ku1w8eNoCxnzOX
	xl9qdNklbH6I/MXRXhF2PqNqnEu5NDoi0XvfsffbR+R2GWgelHljGpUcAMC8nG5Y5W2ztW88JD1oS
	V4UtjeBag9Qxm1ktmbcJZ8Gv75FokRmTFGu6+abZzg3JbkyJTKOg09GqNLtmPz+MMp5M8lG2cXUJL
	petkYJDkY4HQlJKX17N/PpwEwWD9X7ROAfrn6bwjcz5DUV87KGKsID6R3hi1l7akfwEjHA5aSthLI
	pr4gb349joJS0ihQAuyauBzwBTig5UkhbbTp1LY9cscREGyF7mNrM6TnomWDBSZEKM6qW4Q3MXIhK
	7LLhIIrg/n8KfeAA6M2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYha9-00HPGL-0M;
	Wed, 23 Aug 2023 06:43:09 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYha6-00HPFu-1B
	for linux-phy@lists.infradead.org;
	Wed, 23 Aug 2023 06:43:08 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-52164adea19so6754401a12.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Aug 2023 23:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692772982; x=1693377782;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yjfdfn7zDJ3oY0yqLMbQnYLs8oP53jkHaZtBrJK4aZY=;
        b=clCAQ43e2P1ecZ/RHHwnOjy23p2CWLCMPRZuubOPgwmfugY+Qmp5MKuwSoMbTz8xeg
         R/tYKnKSkT1NNACwkOA8cWkpFr2HO6OipzVezx4x3EeKiMH8rOuK0gVB8ZVSbR4bAGBM
         IWr35nhxyLLDxQr8njIZDpxPWgOTkFXLzmYeEAqoykZ76QgVCF5uU1wPS9nzTZwr3ftu
         pcYfSVUeRMIFfR/+1AKYG/Sq1OC/0WxCg8zjeXw3cxYKf09e/8a4SzPLE2dK/fNkeZEh
         QMYtD49xfo3ohWOgndKx2b8aPc/ChtmeFf7vWsJBLat3kaKcy0n/KYZsVIZpugzbhW0y
         aEBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692772982; x=1693377782;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yjfdfn7zDJ3oY0yqLMbQnYLs8oP53jkHaZtBrJK4aZY=;
        b=hY1Mike64P2eq2V4hStCNpwxnoEszBKeMCx5ad5K48TuVYxKEVzd1Em8jkzRl+dHc+
         ClV1uLBX16EtjIRrTxLe2dMfP90wT5dXAivfpjdPRErPWj9TR+ILDhoYAmfS52vmpR7C
         e+Ma9Bi9Qd1vyRImaJ3qB7mNNBlqp7zorZS0PpNLZi0sME5KjFhRdwlWhhWntVi8XGYg
         Dki7l/XgvT8D+cKJcxSnCub0t0B/gW/iH/B0t1oWM/PN1UQnZN2xlmzk29kJqs9/QhNK
         R/E9tlM6R1NOBBQLCUSh+sr7drwC9kN9AC5fgPqlfWkKS7d6FjTIpe7k/MILStSpMCzC
         G2IA==
X-Gm-Message-State: AOJu0Yz+HtqCCLjMAVZSBFvrQCWiut3UwpGcwriPEKpbioCDKOLNxy86
	A6QznmXnLS9FCJUd0Jk14ubN3Q==
X-Google-Smtp-Source: AGHT+IENUkqAb+iFYYvNG2ra9eusUsjreUWka/VKl+pIiILy/fuSTu/KFS+CCx0yjOSRt0Zs+4d98w==
X-Received: by 2002:a05:6402:2025:b0:521:ae63:ee63 with SMTP id ay5-20020a056402202500b00521ae63ee63mr9587307edb.16.1692772982441;
        Tue, 22 Aug 2023 23:43:02 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id bo20-20020a0564020b3400b0052569cb790bsm8874713edb.89.2023.08.22.23.43.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 23:43:01 -0700 (PDT)
Message-ID: <88ebbb45-7407-f30a-94ca-f4947e887d01@linaro.org>
Date: Wed, 23 Aug 2023 08:43:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2] dt-bindings: phy: st: convert phy-stih407-usb to DT
 schema
Content-Language: en-US
To: Raphael Gallais-Pou <rgallaispou@gmail.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Patrice Chotard <patrice.chotard@foss.st.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230822204321.54716-1-rgallaispou@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230822204321.54716-1-rgallaispou@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_234306_414394_344FB64A 
X-CRM114-Status: GOOD (  13.52  )
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

On 22/08/2023 22:43, Raphael Gallais-Pou wrote:
> Convert the st,stih407-usb2-phy binding to DT schema format.
> 
> Signed-off-by: Raphael Gallais-Pou <rgallaispou@gmail.com>
> ---

Thank you for your patch. There is something to discuss/improve. Minor
change needed at the end. While at it, few more nits (which I would skip
if not that change).

> Changes in v2:
>   * Removed quotes surrounding $ref
>   * Removed quotes surrounding const properties
>   * Changed 'st,syscfg' $ref value to phandle-array
>   * Changed authorship to my oss email addressThank you for your patch. There is something to discuss/improve.

Nit: Drop "driver" and any other driver references. Instead, focus on
device.


> +  (when controlling usb2/1.1 devices) available on STiH407 SoC family from
> +  STMicroelectronics.
> +
> +properties:
> +  compatible:
> +    const: st,stih407-usb2-phy
> +
> +  st,syscfg:
> +    description: Phandle to the syscfg bank
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle to syscfg
> +          - description: phyparam register offset
> +          - description: phyctrl register offset
> +
> +  resets:
> +    items:
> +      - description: Phandle and reset specifier pair for the whole phy.
> +      - description: Phandle and reset specifier pair for the port.
> +
> +  reset-names:
> +    description: List of reset signal names.

Nit: drop description, it is obvious.

> +    items:
> +      - const: global
> +      - const: port
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - st,syscfg
> +  - resets
> +  - reset-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/reset/stih407-resets.h>
> +    usb2_picophy0: usbpicophy {

Drop unused label, and make node name as: usb-phy or phy

https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
