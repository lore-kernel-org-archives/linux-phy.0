Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7286C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jun 2022 06:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUWmIS76XwQO6pn9oq3F/opJTn3VtC1pCcJ9hQxcf9E=; b=YDi+PHnOZ4bOcG
	hhpW6s2LVw6kJ3myl6/uGHOGvkECfgk7RtWG6ygd3tSxPAgCJh2GIKdAT4lsG3Tvi+BJIIOrctDLx
	DMcMw5UKsXqX840dbP1ya0vPQn+pOUdBil6HEws5ADt0GktpRUC+118qyh/ktUVB6CIwC7z7HkG2F
	TrFOdZhRv7teUcJibjklWadTp887h/JPqiuH7/ISE8WEt8lgabh9Zcvg9r6OatXBKKYGiMK6SPcOE
	j78l3uINOi2d2r5Y9kLJZt3PUQZX9SF810XKVpv78oYzFgyL7oqIEUhbwzho/MaVFiUtIQ+zQ2PCm
	WDm0Mv+LJvckRhNw2D8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RGP-009nrF-2U; Wed, 29 Jun 2022 06:33:25 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RGN-009nqd-6U
	for linux-phy@lists.infradead.org; Wed, 29 Jun 2022 06:33:24 +0000
Received: by mail-ed1-x52d.google.com with SMTP id cf14so20766676edb.8
        for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 23:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=uEtzjuPdWRp5nN4ODrTO9P43DISR/p8u6Tj+99fvmYg=;
        b=Eqf7+M/Rozoa2hcKD4htdJ59DzLzYsTKK6P9k9pKfoiXFestJGV7MyYpuWjsUqGair
         IgKYC9r19yvRn/ceJ4cRRJUMyT6QcGY7KhBEqyY250LjwoeOtFlgSitJkMJ+DZjP7/z+
         GMX51tjt6vam5ZKSE4rjVz4Y/y76eZ0QsDuXj6C3paf+fHUwo1w1BCzZj6qqtuDbQ0Jq
         o3leItsBxtuIWrjhsdMk+HpAftujRnhkGalVveDeuZdIfEgfDvzV9P5F71mUWbXy46lB
         LD286F17zEI5zCrfLFAMwbpT/T+GwPC/x5SKrqdKtKX55rl5xk7pqIrfqnKESt5xABIk
         Nhgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=uEtzjuPdWRp5nN4ODrTO9P43DISR/p8u6Tj+99fvmYg=;
        b=hqijP0KbF7hpVzdE/OC+AD4TL2oiAjSKZlsaujP6hkQZLgkswHVGTTm+ufKwrXcV/m
         p+EZb9l+88NZgMGmng2wlAI2nAqI57U582ETVUMBpPkuqZRxA1O5J+6wbLFI62wre2TX
         2JnFNa1Vl27Zm75i6TKEQvhSt+fg5ffQbvrIG7iQowQUcQVdWKZM/1hO6dZC8h+MSSrC
         et3OYUDx08XGnzcOsahHu11sGoPSwxIyZZaGHvoGvRWP/4gGLaBy0oFnF4qXOMLCtrku
         v7SjrqCjOpWrtCIjmCZeZ9IuLDmN04pDwj/EEJEuTTG4xWXOV4FN7pQoD6YsIz8DMa1P
         +/uw==
X-Gm-Message-State: AJIora9PEVzEmX89F5iFtrKXuwt/PRULbfboMmjHyIynSm7cjh22whQG
	/a4np+LkpRaGj2iG2Mtn9ZAxLQ==
X-Google-Smtp-Source: AGRyM1tKvhsMukZkWc/oVEQkL2aYx3zGzUcwIOjCgYjLJ+HmZ3D9YrslTZegAyZD5mm9BSEYNKtCCg==
X-Received: by 2002:a05:6402:1459:b0:437:9282:2076 with SMTP id d25-20020a056402145900b0043792822076mr2117591edx.6.1656484401954;
        Tue, 28 Jun 2022 23:33:21 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id k14-20020aa7c04e000000b00431962fe5d4sm10849901edo.77.2022.06.28.23.33.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 23:33:20 -0700 (PDT)
Message-ID: <a7b1f595-0d04-4ba7-8bc3-e2cab3315003@linaro.org>
Date: Wed, 29 Jun 2022 08:33:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH V3 04/11] dt-bindings: PCI: tegra234: Add schema for
 tegra234 endpoint mode
Content-Language: en-US
To: Vidya Sagar <vidyas@nvidia.com>, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, robh+dt@kernel.org, thierry.reding@gmail.com,
 jonathanh@nvidia.com
Cc: kishon@ti.com, vkoul@kernel.org, kw@linux.com, p.zabel@pengutronix.de,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
References: <20220629060435.25297-1-vidyas@nvidia.com>
 <20220629060435.25297-5-vidyas@nvidia.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220629060435.25297-5-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_233323_288348_1E9EF4EE 
X-CRM114-Status: GOOD (  16.71  )
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

On 29/06/2022 08:04, Vidya Sagar wrote:
> Add support for PCIe controllers that operate in the endpoint mode
> in tegra234 chipset.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V3:
> * New patch in this series
> 
>  .../bindings/pci/nvidia,tegra194-pcie-ep.yaml | 141 +++++++++++++++++-
>  1 file changed, 136 insertions(+), 5 deletions(-)
> 

All comments from patch #3 apply.

> diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-ep.yaml
> index 4f7cb7fe378e..11778eb92c47 100644
> --- a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-ep.yaml
> @@ -17,6 +17,7 @@ description: |
>    in they can work either in root port mode or endpoint mode but one at a time.
>  
>    On Tegra194, controllers C0, C4 and C5 support endpoint mode.
> +  On Tegra234, controllers C5, C6, C7 and C10 support endpoint mode.
>  
>    Note: On Tegra194's P2972-0000 platform, only C5 controller can be enabled to operate in the
>    endpoint mode because of the way the platform is designed.
> @@ -25,6 +26,7 @@ properties:
>    compatible:
>      enum:
>        - nvidia,tegra194-pcie-ep
> +      - nvidia,tegra234-pcie-ep
>  
>    reg:

(...)

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - nvidia,tegra234-pcie
> +    then:
> +      properties:
> +        nvidia,bpmp:
> +          items:
> +            - items:
> +                - minimum: 0
> +                  maximum: 0xffffffff
> +                - enum: [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
> +
>  unevaluatedProperties: false
>  
>  required:
> @@ -174,6 +245,7 @@ required:
>    - power-domains
>    - reset-gpios
>    - num-lanes
> +  - vddio-pex-ctl-supply

This is unexpected and looks unrelated.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
