Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E26C9C43334
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 09:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zf5nGfY4YwdM1Gdxa37BnyG6BfXN/cSKAKwiwr1cr90=; b=LnJ36HaFip1VBc
	Updj58O44FgzoBDMtwQeB8mkCRYZtIrcZlb0zVAGu6RbLi7G39YZ7eNCs1S4j1Hfx0ROGhljypjYp
	ebSSuFtuS+lYqHa/uEiQ5GqGgcIFFptT/yKcup0r91HDWGcCMkQJNxul+bwWl+vPbgw94DYdbov5d
	WWid14hd8Lgl4Ud7S9j+5wPDoD3huC6dcUws5IQOOWOK6Wyx2keR4K0VcURhHpAvOd9sx/KEM0cjx
	9x7teNzIHDlfxr8nKJ/nfNnda44I7SnGT+Wu/3U/U+RhtmZfTY/4nfZe1MGmCJ8NuC12HChGaTXva
	aJDutsDPPz6iZvKTn7hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwhEK-002UaO-Ax; Thu, 02 Jun 2022 09:35:00 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwhEI-002UZb-4f
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 09:34:59 +0000
Received: by mail-ed1-x532.google.com with SMTP id er5so5474689edb.12
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 02:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=wyoF638EbARH0sNnissy0uoI8l86SU1ciSSOUZ5ajbc=;
        b=vC/lPXYlQKQCRWvnO+dwsPxV0IBdwfu+FGat/4eaqwyjYZlkNA8Q7kWCy35O3jRLSY
         vgVJRmLYxSJ/UsAxDFfKqxzROuhrA08m5zRLq7GgVthpVELzdfsLrZUGqR5uEFCzl57E
         hOuI2APRMWnU4TUOz/GbnCBSHDgDfamULrI+DqrsTItaRiutFEYLuDb5qSQwABVrWcYU
         UcOwm/MHtug7bxMemRNw3PWMnHAf5bv/e2TXGX3kJCU5L/g2ydH3tGXzaAXfpj/jdZHM
         1xmY1VDu2La1avwgq527Cxr20pKT4AquHUfpakqV7a3CFpd66NYwHNhtOGeyMhM3FFuD
         w03g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wyoF638EbARH0sNnissy0uoI8l86SU1ciSSOUZ5ajbc=;
        b=P8rL6pD4Fy63cDMhFMAebgGXs0DJ+lH/ISPIDpEIVTY5IB7VIRGsk8oQmj3W7r8BRt
         CEL/nzh1QmEJolWeoiQ6At6zysZJtr7BX/kj6puclEXNG228rCIxnkuQdfVZG0beGa0H
         V8SnvZ1SwatUOM8g0ED4LlihXBa3oJblBQoJYZXwVyulCoIAxnh+u02i7AMaW9OsR56J
         zboWKrKqNNgdhSVd2+6oKnz2uy/kGjAh/uGIJmRX5+iX2cIimzdKGxsBBadLhpuJPLbx
         jpYrwrcbuKdTRSlOfFdnQwoCaYu5+wRrrR1cx4PrTjb2mf6gBMmEz/icJC+dG3mOm1nh
         jc1w==
X-Gm-Message-State: AOAM533TsIG5BA9wzCiA/A8XtDNLjlzeRDovLslbpGd8OjhN0Tb+JcLk
	59cSpjSUxCYcAkx9056ag9hiow==
X-Google-Smtp-Source: ABdhPJzjN7cmR9MX0Q1VRsFNcfISVEPshK1uHFtZjtnqfk81TisLcbq3RvXrPTHivGPhu/w9r5XYmQ==
X-Received: by 2002:a05:6402:1857:b0:42d:bcd6:3a88 with SMTP id v23-20020a056402185700b0042dbcd63a88mr4399524edy.6.1654162495560;
        Thu, 02 Jun 2022 02:34:55 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id h10-20020aa7de0a000000b0042dd1584e74sm2157302edv.90.2022.06.02.02.34.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 02:34:55 -0700 (PDT)
Message-ID: <44fceb66-fd33-4b2d-fe8e-9a1a5837a51a@linaro.org>
Date: Thu, 2 Jun 2022 11:34:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 1/6] dt-bindings: phy: samsung,ufs-phy: make pmu-syscon
 as phandle-array
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220602053250.62593-1-chanho61.park@samsung.com>
 <CGME20220602053329epcas2p4c2baca2d161814f5d51dc48722f904b1@epcas2p4.samsung.com>
 <20220602053250.62593-2-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220602053250.62593-2-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_023458_254476_641FC914 
X-CRM114-Status: GOOD (  13.10  )
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

On 02/06/2022 07:32, Chanho Park wrote:
> To support secondary ufs phy devices, we need to get an offset value
> from pmu-syscon.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  .../devicetree/bindings/phy/samsung,ufs-phy.yaml    | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> index f6ed1a005e7a..d0ba92aa578d 100644
> --- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> @@ -40,9 +40,16 @@ properties:
>        - const: tx0_symbol_clk
>  
>    samsung,pmu-syscon:
> -    $ref: '/schemas/types.yaml#/definitions/phandle'
> -    description: phandle for PMU system controller interface, used to
> -                 control pmu registers bits for ufs m-phy
> +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> +    items:
> +      minItems: 1
> +      items:
> +        - description: phandle for PMU system controller interface, used to
> +                       control pmu registers bits for ufs m-phy
> +        - description: offset of the pmu control register

This does not work... Please test your bindings with different cases.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
