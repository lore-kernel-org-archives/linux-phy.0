Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E766C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 08:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbTPYn0HcALgDoUnuggyeKUEmd6edXGces4gUKOpRm0=; b=f5uz+PBp7zeRzT
	rFJzrQHB0auZ14jjQSDvdfZyFvFDMV8/t8cvUToHhCVkzJReo9KGlwbrC37Il8I+ThUAnC0cveunk
	yk2E2MR/BeH3oaYq9327uK/SELhT6fpCGOlEyWCAB4l20DGQYdoEZC8lbPuC5wVNuv/DKk4Hbt8OT
	cs0ovEORfgQ8xWqOgmuvoSGSecKXhujwE3dXC895Lxh3EOy/yUrIE2b6TMENe0EDvb/lXgZ9UCvMb
	J+zmGC5IINlKa4qRq8rEBSDBGDm3MuF97ri51S9YOaqqa8+7Pz2mkTQMsFN0aXqfyLZGkNMzZ11lT
	EiPG+xtVwXhSl0IxijMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZTSv-00EjCH-TP; Wed, 30 Mar 2022 08:14:05 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZTSK-00EirZ-Bk
 for linux-phy@lists.infradead.org; Wed, 30 Mar 2022 08:13:31 +0000
Received: by mail-ej1-x62d.google.com with SMTP id bg10so39883545ejb.4
 for <linux-phy@lists.infradead.org>; Wed, 30 Mar 2022 01:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=nRZKA6T0jUNwrROUPd9y6kJn8BOQ62nOT4hk3Y6l+nI=;
 b=EkzvN6fKET4X8OB7uUgPomYkRESjApXJvSKKV9YFpJ7q0S/OIjgJpwC59/N3w8I2yd
 Z9uBcC8dBFxJG3DaaJUdts5eeaUNLzbE56rCAUSmVRpgOjwsn7J+NE1rcRZupNrNdvH4
 AeCDDBfMq0UYFBp2XFuuXy1ux1xKh6j153LU2FFNCVlo3yme3QPVg2cVswRtrMGcUtd+
 96CX3ey1nTiAmKddLc1YGCKdD6jNc/EuI9SnmmGorLZiqv9+GVj2Dz1BKq9aZ6HJ++qc
 1gPjT7/nBYeo96B/ml3qMSYq9OW5xs2lqJCEZqfuukOzyNiX70DIWhoUS0ba9WKT4lJJ
 uHXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=nRZKA6T0jUNwrROUPd9y6kJn8BOQ62nOT4hk3Y6l+nI=;
 b=NvhzRnmRDhs9XTRWI0oEuPu5LImGl1TKzx2JZTq4p3vcO9f+xER1BlNpIoCgb4AuEm
 61xNwVb5azyfg3SoDtJaiL8wXkGBAyfGjG+9bYgs1Qk4U5QfinoFUvNc/5muQVLQPnu8
 7E2LQvi9BxtDsaGsHyPbNYeUv11dVg521Jz05gKnIgYYqvavy7Dhx9SvzPhSuw7Q0v+Y
 VV2DLH9D4+Miick1o/V9Xx+earJ7YwPovlAwfb36DcJHe5oCY1xW/hHQyP8vqgM9OKyk
 vBBF0D/SsJKwqgZrXm67iGt2rQ6rpjn6VsOa80+5nWB4JqSwPrdwv2/RLXGS3eWGxexy
 rQDA==
X-Gm-Message-State: AOAM532uB4/dVaIAEWZau0PAdnX/AtQ1xpkQRU1XBcyfIcAYcAFmlOnA
 CMQd0WWaExhMN0vphqGsEmHlnw==
X-Google-Smtp-Source: ABdhPJzF1fmIp0//f/EtnkUm/3SZLsTw7eMteeHdAxAYHa6r7GpwayTjwmaRzCHyvhuZECOCqICiAA==
X-Received: by 2002:a17:906:c1c6:b0:6d5:cc27:a66c with SMTP id
 bw6-20020a170906c1c600b006d5cc27a66cmr39754951ejb.650.1648628006852; 
 Wed, 30 Mar 2022 01:13:26 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 u19-20020a170906125300b006ceb043c8e1sm7968551eja.91.2022.03.30.01.13.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 01:13:26 -0700 (PDT)
Message-ID: <ecc821cb-4dd0-48e6-668d-45c178efbbf0@linaro.org>
Date: Wed, 30 Mar 2022 10:13:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 5/5] dt-bindings: phy: uniphier: Clean up clock-names
 and reset-names using compatible string
Content-Language: en-US
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648617651-9004-6-git-send-email-hayashi.kunihiko@socionext.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1648617651-9004-6-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_011328_426323_3D2F75A1 
X-CRM114-Status: GOOD (  14.67  )
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

On 30/03/2022 07:20, Kunihiko Hayashi wrote:
> Instead of "oneOf:" choices, use "allOf:" and "if:" to define clock-names
> and reset-names that can be taken by the compatible string.
> 
> The order of clock-names and reset-names doesn't change here.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../phy/socionext,uniphier-ahci-phy.yaml      | 73 ++++++++++++------
>  .../phy/socionext,uniphier-pcie-phy.yaml      | 37 ++++++---
>  .../phy/socionext,uniphier-usb3hs-phy.yaml    | 75 +++++++++++++-----
>  .../phy/socionext,uniphier-usb3ss-phy.yaml    | 77 ++++++++++++++-----
>  4 files changed, 188 insertions(+), 74 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> index 14f7579e7daa..61d9306e1852 100644
> --- a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> @@ -30,33 +30,62 @@ properties:
>      minItems: 1
>      maxItems: 2
>  
> -  clock-names:
> -    oneOf:
> -      - items:          # for PXs2
> -          - const: link
> -      - items:          # for Pro4
> -          - const: link
> -          - const: gio
> -      - items:          # for others
> -          - const: link
> -          - const: phy
> +  clock-names: true
>  
>    resets:
>      minItems: 2
>      maxItems: 6
>  
> -  reset-names:
> -    oneOf:
> -      - items:          # for Pro4
> -          - const: link
> -          - const: gio
> -          - const: phy
> -          - const: pm
> -          - const: tx
> -          - const: rx
> -      - items:          # for others
> -          - const: link
> -          - const: phy
> +  reset-names: true
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: socionext,uniphier-pro4-ahci-phy
> +    then:
> +      properties:
> +        clock-names:
> +          items:
> +            - const: link
> +            - const: gio
> +        reset-names:
> +          items:
> +            - const: link
> +            - const: gio
> +            - const: phy
> +            - const: pm
> +            - const: tx
> +            - const: rx

Constrain also everywhere clocks and resets, so here should be:
  resets:
    minItems: 6
    maxItems: 6

etc.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
