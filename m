Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46214ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Sep 2022 11:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CrtLXPKCHRb6DdcINhZtGRcWK0BkG6tMct20E4kUdI=; b=BNA7FxJmECGsaM
	AW6eRsAgwop+TZsVLexNp0RQayL2hM+YddNkEpn41A0iGeT/BHwA3myDsm+jL/2EfVZOp7wAC7Ngh
	ES/vv+6lgB5ltCeSq7GogqujBNmKft8loOKGkyhhmpjv6mZajmGuJoEtPg+PdAvdotrZWHojv5oTF
	EyDLw4WWK3n4fCHw930F0fg/b3ajJWB9k52iU+NMlkmy36WCcheGi/iy/wlR4RLYPInqinKBljM0B
	5dZnJ3dKszMtouFFL/br1qUVKc6OVxu/s5Mcacf3LaIZ8b0m5ki6Bl80sPON7Ot9pWCHuKi+LoevP
	ZqbRnnx3crkni8O39MJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXhHW-009972-8D; Mon, 12 Sep 2022 11:07:14 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXh9x-0094xo-EN
	for linux-phy@lists.infradead.org; Mon, 12 Sep 2022 10:59:27 +0000
Received: by mail-lf1-x12e.google.com with SMTP id i26so14171761lfp.11
        for <linux-phy@lists.infradead.org>; Mon, 12 Sep 2022 03:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=CMrXYaGd9ZuPwxoNdr3XH/ga8t3rjLvzGOmRkyTn3g4=;
        b=EewBJK9lJIVVIFZKkl8dLluz2Rdy1ntj1KjhRquGAFJS+M1ds/Xwvtbd+2yebKnSY/
         d3kTQ+Vz1KIH4DhRg8Cw8xACvbVVXAsvID4WBMm/nkUZP2npSatCoYOXaRoa9kc/Tkt7
         /topHc7fSV4h6p58PvDBiDHJNpY85eULd6TZwcJN44bJW16l4EgHp2oBXlYwVLpZMI5H
         XmtjwOs8q7SQxC/rUL8HwxjfrquHiU6zH+RK6YFhHltQFV5gNhNeW+VNoqh438fAl01q
         yzTFzxjOVwTsCnebCWWYsziqICUrMR8b9sPuf3yg7UzElZ7936iArGpJJkMOlTHMkQqM
         wdGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=CMrXYaGd9ZuPwxoNdr3XH/ga8t3rjLvzGOmRkyTn3g4=;
        b=P6BnwGWUIMyAmQfw3paU+mg78wDk1jj4MnX5LaLI3bMKS6jtmk52YLRbZx5nHUzVEb
         sqQi4vdxcdJ+7Ww1kMQErnKdTpAmnqa4Cg97ep1UPEM86HhFMfDG7cwnUpAui4Apd6tY
         X11LYa6Up1KLC8Caoplqg1vp7R8JhtH7f//uZEaM1t4Ogdu3lpZukrNe2CE5VHFHq3OO
         ggMkB4EGTmZ01kB16iIy+wchFv/PXzmTNMKdWZerSlKDZdjWk4CsrklNLSyGQJmme5Z1
         2yslOIcGn2yPMDzEm1Bqj36vYpAmveeaVz5JBNVTtK743rAnIOtCBdcs2u7a3mcAWIs2
         7LHA==
X-Gm-Message-State: ACgBeo2cxR21DYEaMkkFmwqcj/+BYpvIyekc+1OKhVb+2W31VTLtRb7P
	MEZe6giOPoDiSo+8syASB07V5Q==
X-Google-Smtp-Source: AA6agR79u4VfbHvM2AGUDo4UiTk9vFf7uaAXP5srMfNWlWtZd7B/cZLyZS3VkamXHLZWSSjOiS3nkw==
X-Received: by 2002:a05:6512:409:b0:49a:eadb:5ec9 with SMTP id u9-20020a056512040900b0049aeadb5ec9mr622074lfk.253.1662980363641;
        Mon, 12 Sep 2022 03:59:23 -0700 (PDT)
Received: from [10.129.96.84] ([109.232.243.34])
        by smtp.gmail.com with ESMTPSA id be30-20020a056512251e00b00492a0f02758sm1009117lfb.28.2022.09.12.03.59.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Sep 2022 03:59:23 -0700 (PDT)
Message-ID: <b372688e-8e4c-f726-667f-b79f1bb2bca9@linaro.org>
Date: Mon, 12 Sep 2022 12:59:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/7] dt-bindings: usb: Add special clock for Allwinner
 H616 PHY
Content-Language: en-US
To: Andre Przywara <andre.przywara@arm.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Karl Kurbjun <karl.os@veroson.com>,
 Icenowy Zheng <icenowy@aosc.io>
References: <20220911235945.6635-1-andre.przywara@arm.com>
 <20220911235945.6635-3-andre.przywara@arm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220911235945.6635-3-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_035925_569985_737BAAE1 
X-CRM114-Status: GOOD (  11.62  )
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

On 12/09/2022 01:59, Andre Przywara wrote:

Thank you for your patch. There is something to discuss/improve.

>    clocks:
> +    minItems: 4
>      items:
>        - description: USB OTG PHY bus clock
>        - description: USB Host 0 PHY bus clock
>        - description: USB Host 1 PHY bus clock
>        - description: USB Host 2 PHY bus clock
> +      - description: PMU clock for host port 2
>  
>    clock-names:
> +    minItems: 4
>      items:
>        - const: usb0_phy
>        - const: usb1_phy
>        - const: usb2_phy
>        - const: usb3_phy
> +      - const: pmu2_clk
>  
>    resets:
>      items:
> @@ -98,6 +102,21 @@ required:
>  
>  additionalProperties: false
>  
> +if:

Please enclose it within allOf: block. Helps to reduce indentation
changes later when this grows.

> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - sun50i-h616-usb-phy
> +
> +then:
> +  properties:
> +    clocks:
> +      minItems: 5
> +
> +    clock-names:
> +      minItems: 5

I assume other variants do not have this clock? If correct, then:

else:
  clocks:
    maxItems: 4

and the same for clock-names

> +
>  examples:
>    - |
>      #include <dt-bindings/gpio/gpio.h>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
