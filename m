Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50CF3C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 10:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dbX5Tsk9uqNBtzkx63VL78RvVd5hSl4aIBWvc2P3Mc=; b=nGdwjBSqt+MXCI
	X4SRg2sskJsWXLRa9PDwD5qWQ3WyWxzTmLmaCya/2cm3F52oWz2LNAf0Gpu+2E6laxzSrDLLYkwXU
	17+L5rRxvN4enxK6+KYdK91DOEgX+dOr/TUvMf7VF6rJtV+bK9C7ehQFk+2JNQu3Wr9vdALwymME6
	FoY0R24PA1t1kX0CDo/+sMf+4SM66wQjSMuD+4KBUITptLftgV+JpHmfVTEvKxuFfzO/pULU/FSd2
	fn1DPIr3DRZJh1QoV/+Vm64dRJUfl2JbD6EbzjNyNfy2lkZg7bMtnmRhNdA7+/KXPxn7B5t/BXkZ0
	ETT+Ee0HGdjZ0BsmDjuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLat-00FIml-8j; Wed, 01 Jun 2022 10:28:51 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLLC-00FBnj-Ov
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 10:12:40 +0000
Received: by mail-ed1-x534.google.com with SMTP id x62so1470679ede.10
        for <linux-phy@lists.infradead.org>; Wed, 01 Jun 2022 03:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=OGHEh5EflFJ5JP3LQKty6QMpN7VhyP1gug8Yda8OW5A=;
        b=RdNA06eZU3yur7GOEDYb/UfDCCZsD85cyaXv5fd/COilGbz32N1RnyYy1z8gcwDzkY
         mAVL49ZJa57+GiLqP6rh2AGmpF8gqhrRsXiys799/vPHu0F2re5olFzUntYNr45K98Of
         IvfZ0COVWTtulHvL2/uNU/wARd3MbMn8PJMnhD9FDes0cd4hB4Fm01kmWpL7n/2TsKN1
         6Y6UL1QXpu5HgehbvpAToUxztbyruB1E0Jw53mKfHg9a4gGeZcz4G5lMKLn67rO8ipla
         QAu5clsvjq2bNfKqwPAXMTT8nA1D22YnF30L1q5El2UGtHD+vSF1E0cIoVf36llXBhl3
         ff2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=OGHEh5EflFJ5JP3LQKty6QMpN7VhyP1gug8Yda8OW5A=;
        b=wn3DH/UkKqWAnHzVfjzN3/Mx6FOXZic8TD39PCsumCCXisoceiH+UaA85teyYO0sX5
         VSTLZfDdK+/t/6fSaIziUQS1Xa/iXQGfg8jsT9RoXbpugpks3fwyW1MTnFhFHBrj7wlw
         HbOdLdSdTiiv6olihLJ9B3y4fWVUif0Iosf1dPvShTZlmP7d679YkUBSpCKjeCiQC7SD
         k+NPen/ClvD0mXlVIhhyfHGh8LhU5dwFM1btfMXTdROzLMZAHFJ0CQXnDo0VDQ7r//w5
         sMJCcF0zTVulzdeipgoxTMNUQN7SnChnLSDSUwzFZHfjLCo/DMHCwEEtqhOuWWgDsY0w
         NpOw==
X-Gm-Message-State: AOAM530DRSlB+Zi5lygUtN0zbQn4re7LNHJSLmnToEdmYSbo9WGvg29i
	7X72zw7Wm7PQhvR+eTptPFKy1A==
X-Google-Smtp-Source: ABdhPJz1Iw3aklyf+Hl4aU2S4N3wtkB5v1M5a6xE+R+Ctu54ed/8biBVX/Tgf6wfycHD4EafkrobCg==
X-Received: by 2002:a05:6402:424b:b0:42b:3871:75fa with SMTP id g11-20020a056402424b00b0042b387175famr58104048edb.92.1654078355157;
        Wed, 01 Jun 2022 03:12:35 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id e26-20020a50ec9a000000b0042ad0358c8bsm721575edr.38.2022.06.01.03.12.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 03:12:34 -0700 (PDT)
Message-ID: <c6b6b255-0793-c833-8af5-2e2c98c71db7@linaro.org>
Date: Wed, 1 Jun 2022 12:12:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 10/17] dt-bindings: serial: mediatek: add MT8365 bindings
Content-Language: en-US
To: Fabien Parent <fparent@baylibre.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, qii.wang@mediatek.com,
 matthias.bgg@gmail.com, jic23@kernel.org, chaotian.jing@mediatek.com,
 ulf.hansson@linaro.org, srinivas.kandagatla@linaro.org,
 chunfeng.yun@mediatek.com, broonie@kernel.org, wim@linux-watchdog.org,
 linux@roeck-us.net, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-iio@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-serial@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <20220531135026.238475-1-fparent@baylibre.com>
 <20220531135026.238475-11-fparent@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531135026.238475-11-fparent@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_031238_859843_7E1F35EB 
X-CRM114-Status: UNSURE (   8.86  )
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
>  Documentation/devicetree/bindings/serial/mediatek,uart.yaml | 1 +
>  1 file changed, 1 insertion(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
