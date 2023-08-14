Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5E07C001B0
	for <linux-phy@archiver.kernel.org>; Mon, 14 Aug 2023 07:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=czUoK0cRgLd5RfQYudUBLGxT4+CgJBH7Lx9ED/1NTjA=; b=07p+n2zZ9dXuFY
	0x7QQHyrywUkQuDR/kZXEnvzjkhf3nxGecHDjl5d3MvNnFJgzVcPUACfHlZ3SKuTqB4i3L5QMF7hc
	7QOGQg3HG6mrRvXFEiymG+QKulIj1pKi15oyD61B7nqY+ECX3TQ3SWfC8+n5c/ciLZsdoTKrGIbSY
	/fUzBfj+pqy7S8yKW2VwqiTTgig09NqTseil7UCL21pl1juW8gJb5eg1VmkG4rhAZAl/8PT0q5QSt
	zOW5wQl5deM921L2KdutXL/qrIMIbdnRHEhJGrHy10YZgtT7RZD/KzJqkKqxwZP/4E/Viwb7OmvNX
	ak4RNWYz6x7KAVhQ4hbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVSGY-00GPAT-12;
	Mon, 14 Aug 2023 07:45:30 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVSGW-00GP9A-0i
	for linux-phy@lists.infradead.org;
	Mon, 14 Aug 2023 07:45:29 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-99c3c8adb27so546947366b.1
        for <linux-phy@lists.infradead.org>; Mon, 14 Aug 2023 00:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691999123; x=1692603923;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i0RzompxTvywufBTvryBAp+xHgguon69NM49gXVj2tY=;
        b=YU/OXGa3oNljg0ndQEhTRYyn7MKCIiEGORXQvQTmuL+1L7+uL0Qu3Ep7Pis9Az4L5i
         lgHyZNsED0f6S5fGxgn2lFZuORLXAKvW4QRson98YbYnfkGyk4aga/ypBfFxlK/Tyoma
         cW5jJtCp44+I8ty9JeRv3jZgG3s0Hv8h8TL8I4P4xhAhsqpNq8BOjW4QhRdxIDr8wz6L
         g66xq8VwJPsRF/vXvJD9oe+eVhda9TEbOwLb/sl+jNJ4q6yjFNyB33vQUK+fyo7DsjzY
         wOHb2jDzTHkGtBstgQt6ti1KCBXcNTo6g2K1XxMf+k+GZCuiWJ3AAcW+50v6wxrfAufC
         WbPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691999123; x=1692603923;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i0RzompxTvywufBTvryBAp+xHgguon69NM49gXVj2tY=;
        b=TohKdMEFP+NAvuD4OWK0HaLjK4seIRJM839ofXqXHY1ja51vMvblL04NT3MDAjtD2G
         jIjvzBiwUqcFcSR1vhK09FFH1bFibaLGO5sNaTbQ3Sub96kBFMQ5dSbB6UD6M/TLOv5z
         uzsGnQRmAonLtF+CQOyV7gsgF2N6+ieXK4W1M3eth6Gv8BwQUvvKeO01AHQWoF/T9c5P
         gzRdDEP5POivL6Sph0paDotpjY0EENL6PB50cBCn6f67WZDpbqk0GfCpQxazRFtDSQ7i
         OUE5Tmv18sA5H4wSFtiORNMng8iosAt8dmh4B6bkZo/xiyAGzPYsfO1pxZ9zUV0yHrAU
         0QuQ==
X-Gm-Message-State: AOJu0YzzRDgJ6qnEMwI2qdBUjiyG/ONVxUU/b70nhE6vwS6+fRHOkF41
	Oj7i/gP4NP5a5Xi5WAGv0qLPDA==
X-Google-Smtp-Source: AGHT+IHWdwKpTqcFMWzaLZxzjqDug8Tt6bFNAgMUiArQu9WAUJbthnZRqnuQi/uOsAjWPq2c70hVWQ==
X-Received: by 2002:a17:906:1041:b0:99c:ae35:8cd with SMTP id j1-20020a170906104100b0099cae3508cdmr7472922ejj.43.1691999122978;
        Mon, 14 Aug 2023 00:45:22 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id kk9-20020a170907766900b0099cc36c4681sm5360241ejc.157.2023.08.14.00.45.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Aug 2023 00:45:22 -0700 (PDT)
Message-ID: <8b41456e-3394-9b5d-1f94-a257a443dfd6@linaro.org>
Date: Mon, 14 Aug 2023 09:45:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH net-next] phy: amlogic: meson-g12a-usb2: fix
 Wvoid-pointer-to-enum-cast warning
Content-Language: en-US
To: neil.armstrong@linaro.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Andi Shyti <andi.shyti@kernel.org>
References: <20230810091310.70231-1-krzysztof.kozlowski@linaro.org>
 <13491021-d849-da84-f1a2-a94401118de6@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <13491021-d849-da84-f1a2-a94401118de6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_004528_278231_1A72ADFD 
X-CRM114-Status: GOOD (  13.83  )
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

On 14/08/2023 09:43, Neil Armstrong wrote:
> On 10/08/2023 11:13, Krzysztof Kozlowski wrote:
>> 'soc_id' is an enum, thus cast of pointer on 64-bit compile test with
>> W=1 causes:
>>
>>    phy-meson-g12a-usb2.c:322:17: error: cast to smaller integer type 'enum meson_soc_id' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>   drivers/phy/amlogic/phy-meson-g12a-usb2.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/amlogic/phy-meson-g12a-usb2.c b/drivers/phy/amlogic/phy-meson-g12a-usb2.c
>> index a628c59e5cf0..0e0b5c00b676 100644
>> --- a/drivers/phy/amlogic/phy-meson-g12a-usb2.c
>> +++ b/drivers/phy/amlogic/phy-meson-g12a-usb2.c
>> @@ -319,7 +319,7 @@ static int phy_meson_g12a_usb2_probe(struct platform_device *pdev)
>>   	if (IS_ERR(base))
>>   		return PTR_ERR(base);
>>   
>> -	priv->soc_id = (enum meson_soc_id)of_device_get_match_data(&pdev->dev);
>> +	priv->soc_id = (uintptr_t)of_device_get_match_data(&pdev->dev);
>>   
>>   	priv->regmap = devm_regmap_init_mmio(dev, base,
>>   					     &phy_meson_g12a_usb2_regmap_conf);
> 
> I believe the net-next is wrong here, but whatever:

Yes, it's a history-copy-paste mistake.

> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
