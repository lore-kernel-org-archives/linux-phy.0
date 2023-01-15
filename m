Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40778C63797
	for <linux-phy@archiver.kernel.org>; Sun, 15 Jan 2023 14:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJt3+T9jhYMm0gRmR6Kj3IK3l38LLdGQ+UCUjj5MQbY=; b=x/sSCm3tEhnkJj
	sq6MjeABVyK0mOqN4BSDe3NLfF+fE8qf9euc6Py0jqxoAmDIukhcjgKR20u3hWgADcU0QBRK/NCJr
	glRFvpP9wv8yCCFup9+dtA93a4Dm69RE5SDVhlVFC8zDLJTCJH4GM5x1eHwvT2IAVreZgtQlvQOwU
	8KgK2CsL2vYzD9DwECI2qR0FJHf10nknwk85G5hNWWvLutWnKf1cwayBhOo17ZhjZ5k7f2OLsK0mF
	7Ef8x82LdbAZ/Ddp9WKH6gaa8d9k6Wyb8buW+akrqmN80cTECMk+iABsxK7ZHyANH0vPtI4M/AUKS
	M0LURma34kS3Djoe72XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pH4NK-007VBt-Jn; Sun, 15 Jan 2023 14:52:46 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pH4N8-007V7o-Rk
	for linux-phy@lists.infradead.org; Sun, 15 Jan 2023 14:52:36 +0000
Received: by mail-ej1-x62c.google.com with SMTP id u19so62583156ejm.8
        for <linux-phy@lists.infradead.org>; Sun, 15 Jan 2023 06:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2Yj3ZCXHbKRPY/verkHqKVV2Cn5cPlwC4PAo4402Q4Q=;
        b=iqw/8vxRAV1j4K+vf1puxs69rRZZNOsLn3Po3Wvob635y84Rs88b1q0Ve23rtKwAB8
         r5xL8BwntUVtjZBWb9lc61CHWl1mvtapmmTQv8NeXwhccnXIcYf5oZ86M1kasRckLOjb
         JgJAwgE+aR+Xs2ReBo6ya+2WjLg72YcuVnjGfFyonGFcYoBoY0QVTA5HaDUdRfB0wScK
         8TFXggBJej4KB6FS2Kl2lqxltiJsWdWa4jk9u2oBgkSnz1vYSh+qjhlQPt73I9DAdq0R
         r2NlSUOnLha9yMDDEE4/iN9J/W/KehPIhLSrhAXiPh5y6t+8KIHVNtIM8c9N6IAVP4bm
         yZXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2Yj3ZCXHbKRPY/verkHqKVV2Cn5cPlwC4PAo4402Q4Q=;
        b=sO91xDy9iipPsuWxDVM89vn0AbeqbvpXshuMNBznSAP9zSMBPt0a4sHZIyGAiP3OxN
         QjCXUJxELPzDwF7VanruUwhx5t/mf4Y2qfIEzmQH66Qc5LOcE8hiKdjtAdO8zxe2Nsh2
         yybnb4M9Bs9zeUhKSAWmCzWeZJ+V/7L+YCGj0Wv5HTmBfjAqeoUc9lAiBP38mLaJjhf4
         MY0Clrl/7dyo1qinjWvHDJ7R08e0qPN1bxdjPODIFIX9gvRCyqQKjhI9ja8f2TdFYyWv
         i7NunrQYu21dYsX+xs2MHamtw1l25I0bVATacIBgWmDuTVO+eiR2m1DxXbVRZDrtKp8i
         TO3A==
X-Gm-Message-State: AFqh2kok06zk5kq4TsRmCk/c9waUDyQcUBCiM0c1nzypkSSyvcagQ23T
	XpR1IGItczDn6F1/MEL/qZLOXSjmTTeG87GO
X-Google-Smtp-Source: AMrXdXuiaVUL8PexVx8yHacmbIi/Aj8XME5c4Vcpg+doICTMFKAbvOswIjaRnFD+v5hTB7YgqWHpKA==
X-Received: by 2002:a17:906:d9cf:b0:870:ac36:268d with SMTP id qk15-20020a170906d9cf00b00870ac36268dmr202177ejb.35.1673794352254;
        Sun, 15 Jan 2023 06:52:32 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id r1-20020a17090609c100b007e0e2e35205sm10852102eje.143.2023.01.15.06.52.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Jan 2023 06:52:31 -0800 (PST)
Message-ID: <3d81a196-3b45-222d-a22b-4fb5a98f0ed8@linaro.org>
Date: Sun, 15 Jan 2023 15:52:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] dt-bindings: phy: g12a-usb3-pcie-phy: fix compatible
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
References: <8f1b2db3-f17d-f192-c28e-cb34dfcaf63d@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8f1b2db3-f17d-f192-c28e-cb34dfcaf63d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230115_065234_944100_483F5747 
X-CRM114-Status: UNSURE (   8.08  )
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

On 15/01/2023 15:24, Heiner Kallweit wrote:
> The compatible string in the driver doesn't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.
> 
> Fixes: 87a55485f2fc ("dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml")
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
