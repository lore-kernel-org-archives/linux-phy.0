Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56C96C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=boymvMTbnag57HU1Hm6qkvJZkzi7fJbD/w5o7vfrWmQ=; b=iCa6a1MsEuxpmD
	RTjBVuVtAPN4Z1Uxu3DAPQg9bk1AYYsKmZ0wumoAPfJSp+7s1alYv8+bXZWGvAE9WmjywWgKu0Oi/
	exq8opMlrcaHj+87PzJAUBIoliTgEK92yluK8Fylo0C0+yaeM1TyOtu9VWou9/cnoDkGNlsSUDfIJ
	KifKQQ9JvBbPsvW42glbzc4KyCjfgnqpwXorn2Itmz1vVr1UwrdQG9HClOWtLtDgmxeGu7JbGXhYs
	JJSQ4yE0vaVHCbWdNlHuwMUN+c4ViIhyBUvfELRc4Kt9iCUQXguAI1clsyv9TG5rgqnqEVwXIRQnX
	s1Pn/SPKNNxIwx91/vGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLbs-00FJBy-G9; Wed, 01 Jun 2022 10:29:52 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLLl-00FC0D-EV
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 10:13:15 +0000
Received: by mail-ej1-x62a.google.com with SMTP id rq11so2737149ejc.4
        for <linux-phy@lists.infradead.org>; Wed, 01 Jun 2022 03:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Z9kPEnmi8rJKpB3/e/9VBnwIHSYiTOXGx6udirKdD3M=;
        b=AgWZPwEKZaFLn8RqKLc2KNNc5Ox5awSlJ1Eo3iFQUpbH54qkNKGdSA/oYmRwN7jNeK
         UHHTIWONRqxe62sbo+bKj8ofX1yCVF+sZoXI2RmEEHsHeACpURK0tSI7rJrAfo3nvkCu
         1hzevQKrNh/cy4d+o9QNlxatZi8oxvhsb5M/pZ9wTacDiFLJ0w8w/do6y29F0n3ezP7f
         PusoBRPPTModJOvPw79D0hlUfXJ8/xbQXLFE15SzI/+az0xO7/RPWMItwnxXktCevnSx
         OLNaLpn5TqbBhnQUYchiuK2sM+9xl0TOHE2TOnTJxsHBl/jlsI1TsEGmERigH774u85v
         /Szg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Z9kPEnmi8rJKpB3/e/9VBnwIHSYiTOXGx6udirKdD3M=;
        b=TqDaaLboLdF2JKohGIYdKgdKPXampymiy47KA4bWjWFf8bsACcz03WvNBI6C6Aieby
         7hqO1hcSdyAGb3+BX+jfBgLVcOdTtsD76FIt6taPFav6XgUvdeRYH4R3Kg/VuF89BQSq
         Flw3VelUngxrpkKbqdq6f8p30OjkUa6Zgzwu0PMdY4NEjAtf+bbZWp+2X9E+29ffzo5B
         AIMr2ZgDuwlzxrFEnkIqwqPhQSdC+6+7JRWExMc67WueNYbXiSPyn235Obcobun32dtw
         /OUMkqn4Fl6duurLKjYHFjNwjjVKzBHtleGa2+QTbp6Dp1n6uJbjaSASQbk+kLcIbIOJ
         HUQw==
X-Gm-Message-State: AOAM531GR5Ob0FN+Q6/sMUa3fqHvKJkoNoHsHlFmeuZuNxrRHBTVTD+k
	OtWslYQRckos5MD+hsY0+w1cxg==
X-Google-Smtp-Source: ABdhPJwTzfmxEZcB2H8kpKINmFdrBQHA4UJBWrYbb8yNl9INvi7rhzKhj+8nTc3PJwiLlFid6G5pUQ==
X-Received: by 2002:a17:907:a0c8:b0:6f6:d3e4:49a5 with SMTP id hw8-20020a170907a0c800b006f6d3e449a5mr57330364ejc.644.1654078391803;
        Wed, 01 Jun 2022 03:13:11 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id bk2-20020a170906b0c200b006fef557bb7asm523130ejb.80.2022.06.01.03.13.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 03:13:10 -0700 (PDT)
Message-ID: <b7eb2f9f-9604-3f05-59c3-e4c790068967@linaro.org>
Date: Wed, 1 Jun 2022 12:13:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 11/17] dt-bindings: phy: mediatek,dsi-phy: Add MT8365 SoC
 bindings
Content-Language: en-US
To: Fabien Parent <fparent@baylibre.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, qii.wang@mediatek.com,
 matthias.bgg@gmail.com, jic23@kernel.org, chaotian.jing@mediatek.com,
 ulf.hansson@linaro.org, srinivas.kandagatla@linaro.org,
 chunfeng.yun@mediatek.com, broonie@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net, Kishon Vijay Abraham I <kishon@ti.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <20220531135026.238475-1-fparent@baylibre.com>
 <20220531135026.238475-12-fparent@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531135026.238475-12-fparent@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_031313_558954_645ABBFE 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
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

On 31/05/2022 15:50, Fabien Parent wrote:
> Add binding documentation for the MT8365 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml | 4 ++++
>  1 file changed, 4 insertions(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
