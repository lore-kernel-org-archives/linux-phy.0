Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05103C6FA82
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 09:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/FvCNGPR02H4v4AupOCb+alErrYd2SRUmXMFgpT/Po=; b=xRq0LeyI+YQ6GU
	2840+0camYel47+t/lE6eo9kvp05KBRoHs4BXYCRDs1+TRQ9jjnqq4qVJchQ6i8CDbPtoATTyGbBC
	xpadMrLmHurtaQSqMa46qW21kLSI3P46ZdgJxe4eAUMqQ/e9soZxLzR83y6YPNAIjMvkWHx4UTXlL
	oD88rSDToiVPYag0o7aSDsc27GWklJeECqiAxOED6CdyZX3BTc7kkrIDva0luO5A1r6Qm0eieT7u+
	HXHfVCNPTntiRnln2zn8sPV1ras2TBf+0kp3bUjZZlxpLTJo0Yg0Y0ToP6+zliA7PYZn3SAKZNvUc
	afnhxEr+d3qu13HzhN8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2CI-005B1y-UX; Tue, 13 Sep 2022 09:27:15 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2CE-005AwE-DO
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 09:27:11 +0000
Received: by mail-wm1-x330.google.com with SMTP id d12-20020a05600c34cc00b003a83d20812fso9101264wmq.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Sep 2022 02:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=A4LqlvJqTCL3K7F8VdDe86oF1VVPopXq7gBGt91lvWY=;
        b=hG+a7+eAc1zS3/eRlTBCKgxZTUc0mspGCSwL0YIhLdJb4l+3+qrMBkdZZ0rhHBSl9c
         XkAsLl4GHX1icsnSpDk6+e374y3DUGw6rtTBlAVvKfv59hYc8DRZUhMonOcZPLyUiTVw
         NvqGHxHzvabcynkcekZ/NVToPkrquGRP+kvEGhKgp99aR+RKr2ys+aDj8nphB1HBtQO+
         qQMKzMId3x+Qf989VuCKdwPt3VKjCIqMjqHzJFW3vi00I+dTmz9o+XIIpKJwj8DzIDWH
         LH3nMjOICAfYY5Fc+7LvyAbSKhptGuhTZ9wKlzIQ6zgd8QRlBiPxBBs97Jy5283NkKZ+
         l6bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=A4LqlvJqTCL3K7F8VdDe86oF1VVPopXq7gBGt91lvWY=;
        b=KMEF85NYRaXxPxGaaZNtMV0RJ0lUnP/avtsi94VX17o5YjkjzSOTTBRXtIT1VnGFKm
         mf/G40yGwTfTPqr98aINyBCEHvAjtgKAZ1DAsCblu/xTJ/k9LK8JZOrQCEUV5LahMAJx
         Bp9vpTaAYcPZlOmOlQVNztnpkspewQ8wv3IxI81c1ulTInkE4UYK1DcAozzDOri6gbhe
         KsHux2QZvzReEIZPAfN5NAikv2tjAgueBWeyFC/aK6rb4ahnqEcVB5OGRcJuo6M6Wc8d
         bd0mWElM26okFFTWYxOMUJXQv38XJRywvOvmjk2jRDh9DV5c0B6j1UZjJOD0OoaT8m6j
         AX4w==
X-Gm-Message-State: ACgBeo3RqbCmZkBeov2oZ7GtkM9spQH24HG7DFHTphp8dPijkJKlV22r
	Mvh4ZvCaNeu9My9kn5LCQR5NQQ==
X-Google-Smtp-Source: AA6agR5p/qbPuVvy9m1Yt1iIXxn5YpCz5ncjcdjDVD5Pt0QNGXf/4iK5GiwHzR06XFGIWqe9dELkLQ==
X-Received: by 2002:a1c:7916:0:b0:3b4:7575:d2f9 with SMTP id l22-20020a1c7916000000b003b47575d2f9mr1653598wme.27.1663061229054;
        Tue, 13 Sep 2022 02:27:09 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.70])
        by smtp.gmail.com with ESMTPSA id c16-20020adfef50000000b0021f131de6aesm9884628wrp.34.2022.09.13.02.27.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Sep 2022 02:27:08 -0700 (PDT)
Message-ID: <7a673b7c-9e04-2a23-98b9-243696597bba@linaro.org>
Date: Tue, 13 Sep 2022 11:27:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v5 2/3] dt-bindings: phy: ti: phy-gmii-sel: Add bindings
 for J7200
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, robh+dt@kernel.org,
 lee.jones@linaro.org, krzysztof.kozlowski+dt@linaro.org, kishon@ti.com,
 vkoul@kernel.org, dan.carpenter@oracle.com, grygorii.strashko@ti.com,
 rogerq@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20220912085650.83263-1-s-vadapalli@ti.com>
 <20220912085650.83263-3-s-vadapalli@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220912085650.83263-3-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_022710_552280_C44280C9 
X-CRM114-Status: GOOD (  12.29  )
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

On 12/09/2022 10:56, Siddharth Vadapalli wrote:

>  required:
>    - compatible
>    - reg
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> index 016a37db1ea1..da7cac537e15 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
> @@ -53,12 +53,25 @@ properties:
>        - ti,am43xx-phy-gmii-sel
>        - ti,dm814-phy-gmii-sel
>        - ti,am654-phy-gmii-sel
> +      - ti,j7200-cpsw5g-phy-gmii-sel
>  
>    reg:
>      maxItems: 1
>  
>    '#phy-cells': true
>  
> +  ti,qsgmii-main-ports:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description: |
> +      Required only for QSGMII mode. Array to select the port for

Not really an array...

> +      QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
> +      ports automatically. Any one of the 4 CPSW5G ports can act as the
> +      main port with the rest of them being the QSGMII_SUB ports.
> +    maxItems: 1


You say it is an array, but you have here just one item, so it is just
uint32. Do you expect it to grow? If so, when? Why it cannot grow now?



Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
