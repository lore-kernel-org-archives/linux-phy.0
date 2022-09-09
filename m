Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06FB3ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 13:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3a5wjkV3DA0aFW3pfkYZTzkn9n2brmrgn3LqXSI8+Zs=; b=opmVGASZhZtAUM
	d4uU7fkvI0R7HclOyusba9VyZCSpj7zlLVrLLVAKs4i1dAawAfccqU/kei4i/NEWj2ZVNh2upSdJT
	eOM1LGi5PJ1+gd3tEAv1In+WLxrGP5UwCzMzfw/TyUGDp3n2isouVoL26IFu+YugvIvWuftDy8Nas
	WXgf4WXijpmOdA69fUNUK+4xk9PqMcD1BvAD/d33X1tiyQzcfyVaTT5kKRw7qemteE24dSUpiA8u1
	os/F/l6pBZH+MK4b/bCGTSlcRsl0kv67yAfK7aRLmpvc4idHRzg55OVyNYd7/mGGCcsc1lKP0HlHM
	qr7hgEJUjJmUN3xo0fSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWe5i-00GKid-DQ; Fri, 09 Sep 2022 13:30:42 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWe5f-00GKhc-Lk
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 13:30:40 +0000
Received: by mail-lf1-x133.google.com with SMTP id f9so1960703lfr.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 06:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=0iwWRUH0uVdaXEkP4fyReHjF9IcUCpvLt0X1N7qJbAU=;
        b=me7zJxjXe/dbRZGdMGLErW1K64o934AvJ0TcqsZytC6byxtY9fKM0CfQk0CsZnxy0I
         hygm0lYum5+lK4wNVmlkCjLgLui4+DqqRStO/AxBerJdRjy2Ti31JDHxj4TMLPqcdDCq
         +dlv3xeQxd36c+lItopodK6Qbh2+WiAi9/TpPPFRE8lq2dMxpncIl2ZezoaSqzCy6ovf
         GJr5KbBhe6Sx89Js6Y5Ezy+5nfgGD+iq/88eqmdVXmfSmdirvdfPOHrm35XpPUZEX+BL
         R0Fs5511uvb1tGFlWcEB6W7l4zwWCK+5AT8wRAjsRbwBW4+hxuIO9YFLq4QCP5u1j8qc
         N2Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=0iwWRUH0uVdaXEkP4fyReHjF9IcUCpvLt0X1N7qJbAU=;
        b=K00N5lX9jwOjOyBvdvIWSvNhb76t3Qtz7td2E8FmaKEfRjyQLY1m8DI03kQcGM7/NT
         oOGme+4/FNhkD9DZP9LwwlGXCqrFMquu59PUT0Wv2wdNwGlP6LCXabZPOl6eU6qIvo8q
         Xtx+asfr0PK62bBKgebbi+tGmeVqT7X7dU2JE8/vyqd1mMDbKXzR4J5Z2DFA8UQ1IFLc
         riDg488SLcih8T3ppSxfXaurx9i3damIxAKNo9rbpucR3w8RKOoAeE4AfnJqANGIZsiC
         gDK/Z8AXi/i2RZSFON82bE5pVv0O6GWbxlJ5ED1h0tfY3nw15JM91KjWr57MYz8rRkYv
         AmZw==
X-Gm-Message-State: ACgBeo0b/31coxEXSSJCKHiLev/BYH5ddN0+AEkSucS7ceCQuQKib9ME
	wFvZtM7Xmp6dnhIqOOi4+z1x7LGc75vafg==
X-Google-Smtp-Source: AA6agR7vnlhxULbMqWjy339Ll2KHSeX5XyixafcQzw/B5BqiTWG7Qjf+aajlF8XgVHs00A+7ADOxqw==
X-Received: by 2002:a05:6512:1188:b0:494:b306:c80 with SMTP id g8-20020a056512118800b00494b3060c80mr4802792lfr.390.1662730237402;
        Fri, 09 Sep 2022 06:30:37 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o17-20020ac25b91000000b00492f294f06bsm86512lfn.110.2022.09.09.06.30.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 06:30:36 -0700 (PDT)
Message-ID: <d72fc00c-85ba-8b48-1fcf-42fe9e8daeee@linaro.org>
Date: Fri, 9 Sep 2022 15:30:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/6] dt-bindings: phy: qcom,hdmi-phy-other: use pxo clock
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
 <20220909132010.3814817-2-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220909132010.3814817-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_063039_761426_7E479950 
X-CRM114-Status: GOOD (  13.21  )
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

On 09/09/2022 15:20, Dmitry Baryshkov wrote:
> Add pxo clock to the 8960 bindings (used by the HDMI PLL)
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../bindings/phy/qcom,hdmi-phy-other.yaml     | 23 ++++++++++++++++---
>  1 file changed, 20 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml
> index fdb277edebeb..2c21e120ff8d 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml
> @@ -53,7 +53,6 @@ allOf:
>            contains:
>              enum:
>                - qcom,hdmi-phy-8660
> -              - qcom,hdmi-phy-8960
>      then:
>        properties:
>          clocks:
> @@ -63,6 +62,24 @@ allOf:
>              - const: slave_iface
>          vddio-supply: false
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,hdmi-phy-8960
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 1
> +          maxItems: 2
> +        clock-names:
> +          minItems: 1
> +          items:
> +            - const: slave_iface
> +            - const: pxo

Why pxo is optional? Commit msg does not say much here.

It seems you also miss the DTS change adding the clock.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
