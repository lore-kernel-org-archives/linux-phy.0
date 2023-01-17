Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18732C3DA78
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 11:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUaoNmKJQdi+kVbYBKOGm2vAQ7I2Arng8EBrJ9oBFc0=; b=lZc7Ez7Mv6J2f5
	cEDWdAk78GR7MQofwu0DjJF4w+VkxzYVSspZ7IL9kYh7+0UrAg8l2NozJt56VSvNjSGDBtHdQLwDu
	Pm/AxBtrvLXIwI/8jdeMXrqbxnhDk0vSxWE1WhSuHH6eWmDJYiOadgCDiyFSn8zYRaR0DWRqz4dh7
	yf5//koffRaa2tADsBrJ82udsp0fcmeYWy0I/UOgDoA6lUbTqUSbL+E58p2jJXb3jsSmXcxWgdOpF
	zl9mE5ZVsWCVhFFHSCvXf+05lL8SipQ3RAeRvEKiN3yvEADR0hVDEuziCO+j7tuXTQA04xFVKJMvy
	QWnHKQhJMbTFcqlOuhmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjsF-00DxIt-Fn; Tue, 17 Jan 2023 11:11:27 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjsB-00Dx6V-TM
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 11:11:25 +0000
Received: by mail-wm1-x331.google.com with SMTP id k16so1297307wms.2
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 03:11:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eVVUT1Q4w+D+zjJ+MiLQ59DPUvO4ysJ+YcXuATrHiJs=;
        b=CXeZZRxS4jC43glzVH/2z0SjiwAkbUsBvimovm5amrSvyk17OPsSzKDm3JM8TeCz+Z
         gUnHOWsSe8QgkVUgSW3lVHHN8fDztRBI4D3HAdLkdUqIMWaLjUbLXR4xV7FIX7j2ATYn
         5LR9N3Idr349gXRCZQG02llwChla7jrApV4U9w5GjdnZ/2qs1R1bwsR+/coj83Yxs3ip
         1lm53QsAfktx1SEs/wk5hZXidzsZJu+HKwWeMTZfdeylwvlw53Wfxc5VKiYSx8P8GH0b
         XdKP8J3qhpsW2zPoZkgfoHUhdtUEpkue2OJJdjulm3A6IwfuiC6FTTNUCYmLbIQOrN8Z
         SsCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eVVUT1Q4w+D+zjJ+MiLQ59DPUvO4ysJ+YcXuATrHiJs=;
        b=XueeFLwqDSnOC5/HkWFcKssJoNWLnEJh5sbP9iTfiO0QewWmdYSZRjdJDxldGm7qGZ
         GOO7+qMgdaolkxG6QlQZAraHahIPJZbaVX/zuQiSeE5MNd9QAdHG0raR7jxFNvZm9t8P
         k6Q3zz/yEijwlD96qqAjBWhWwhpURBYMi7w64raEyC8Ux9l7+pm8tC95NN4E0pg5V3s3
         wBNz0CHxEKrv8NqSa+1uYrNzuSvdo3N+ONUKoHlRhszO97ZVvV15YSEe3G7y0yGJbpQT
         D1I2yFoBzAnEF+/9B5dxzwtc5J6uZmS8iQHi8I5RGhyau3H6L9nB6qI4EhAIgNn0SIy9
         5jdg==
X-Gm-Message-State: AFqh2korbuNCbkm+6LP0cVISGLEbeMG9wRhuS0Tl06dXVzyOvLhlsopJ
	V2GWgFHhNCmkCzEEW9aQcbvld38TtCZQiosB
X-Google-Smtp-Source: AMrXdXuUabHO5lLE6KouCS8wBlrsFWHoTEk3jyDJN0IOVg2Bw8mJLK0zsPjEjxwnd4RVjwRBKyFmkA==
X-Received: by 2002:a1c:7417:0:b0:3da:fcd:7dfe with SMTP id p23-20020a1c7417000000b003da0fcd7dfemr11450545wmc.10.1673953883421;
        Tue, 17 Jan 2023 03:11:23 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id d6-20020a05600c3ac600b003da0dc39872sm18839767wms.6.2023.01.17.03.11.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 03:11:22 -0800 (PST)
Message-ID: <503abc21-7122-b820-65ed-f99d2db1eb21@linaro.org>
Date: Tue, 17 Jan 2023 12:11:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2] dt-bindings: phy: g12a-usb3-pcie-phy: fix compatible
 string documentation
Content-Language: en-US
To: Heiner Kallweit <hkallweit1@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-phy@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <0a82be92-ce85-da34-9d6f-4b33034473e5@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0a82be92-ce85-da34-9d6f-4b33034473e5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_031124_011258_D9F26236 
X-CRM114-Status: UNSURE (   8.83  )
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

On 16/01/2023 21:19, Heiner Kallweit wrote:
> The compatible string in the driver doesn't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.
> 
> Fixes: 87a55485f2fc ("dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml")
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
> v2:


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
