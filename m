Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20B63C3DA78
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 11:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24VJlMZcn1vVon3IQ95aaE9dHILZG6yTOTijLJWy1i0=; b=YBXjDxTdN8Kf92
	rX6TxFMNJ1i3lm8g4XL4Y57ydd+yqBGbyy6gzWpAth5Lpyktw/MyGIQxzCoqjB/8WGbaf8a6FgeGS
	TFqYbe4/NwnsL/Jk/w83/yPbF1FTYGoNoA04TAMBoanI+2eM88r9Y37H9nR893yufwjCpo7PLFaju
	fo8riElzCzEGq6ba7ViMzP4rUZ+sOM7HntF2smnr5mywb83GwqmoWNhBECIMdSAKP5RrbnwAcmIHC
	3JdpS8koytSXghOiouNuHPwxhr9Jb/zmrxD3cULl5bs7BLbH2Wnf3GNBDXDDYi5ry40hE0s6RVmvH
	a3k47nNqIKs6be9hta3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjsY-00DxRn-CL; Tue, 17 Jan 2023 11:11:46 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjsV-00DxQC-PS
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 11:11:45 +0000
Received: by mail-wm1-x332.google.com with SMTP id j17so3407408wms.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 03:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1URupxNkkQ6nwEeC7CDBNm2xIHn6oEX5/tof7O7mRAk=;
        b=y9aZusuNGqbDOTNH83k4SycSt94Tw953zLUGwwV1D5OGiUPe6WcJMlvE1XGVqkFazK
         lHcIym3mqiNZBxWqQmtDqPAt6JVQFcKHDUqhz++UPBEfgVDu9eWknowhzGjW88rasICj
         P7FiX7u6MjJkwxNnpcqjsNLWUGVHuOxRdwtzsHqYyqp5U3yfSbGLBQbx0LEtW2Q458Nn
         5Jv3SJzkGI2A04U4w9kueCOG61I1Fa+IzWMjXZo0kWLOhlrrYcYHm/5UAkqrjA021cxs
         LgN48YfJtdGsZks42/F1lk6S88EC1M3Gra+ANcf6Tr8jC+zJo9HSLikN18/ih/BBz+La
         M+Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1URupxNkkQ6nwEeC7CDBNm2xIHn6oEX5/tof7O7mRAk=;
        b=qSxOMccOopoqPGwGp7rmVojLu9wGpOEJ06FVii7hxw17GXDSZJ1wnD+TVOUyXUXtWa
         H4J4M4HEsHRb8vvUi95uxflzxj96j9EF2joWhSeInVH++Ku9g25wgeJ37o9U/TZAZbKI
         JffqbHm8ACLdE4Xz0NF5+FL4Z3awFcW3wGwKiTFzsiRQUeCQQIEkeJxfnrL1AHP5J/TZ
         1Fb0sfeGO5JAjBxAWiVTNqENjiopMviEX07Joelk8FLIYR7I/BoY0auR9YVUuJa4A+Eg
         5E39X8J+7oNftNvKOrzsS5W1Q9YKoN+bUuA++jm6DTpEeE1VeR/eKCc/obxjkNqlbOHL
         ENLA==
X-Gm-Message-State: AFqh2krR2LzWGscTRanzTvr9dWV7Duosc5QaEG/LLuILp5m/fb7TreYt
	jbc7WV/ucRljkw/rekT+et1s0Q==
X-Google-Smtp-Source: AMrXdXvUbsEJU4Tq3rQTaPgknItqfI6wQpizQ0tSS0tS7+wxUmVTWHC2RYmatSgnkwU2PwbZpMyIOg==
X-Received: by 2002:a05:600c:4d06:b0:3da:f0a:83d7 with SMTP id u6-20020a05600c4d0600b003da0f0a83d7mr2655999wmp.8.1673953902540;
        Tue, 17 Jan 2023 03:11:42 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j7-20020a05600c1c0700b003d9f14e9085sm11033822wms.17.2023.01.17.03.11.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 03:11:41 -0800 (PST)
Message-ID: <ccf7f144-12d1-4fdc-2b03-ea2e60912691@linaro.org>
Date: Tue, 17 Jan 2023 12:11:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2] dt-bindings: phy: g12a-usb2-phy: fix compatible string
 documentation
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
References: <8d960029-e94d-224b-911f-03e5deb47ebc@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8d960029-e94d-224b-911f-03e5deb47ebc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_031143_879234_20F56863 
X-CRM114-Status: UNSURE (   9.62  )
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

On 16/01/2023 21:17, Heiner Kallweit wrote:
> The compatible strings in the driver don't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.
> 
> Fixes: da86d286cce8 ("dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml")
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
> v2:
> - align $id with new file name

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
