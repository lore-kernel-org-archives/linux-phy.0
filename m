Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF2E7C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 15:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBRdWFy6edoDpPlasw5Qej1CphkJJ8TfQzvmNSfEvks=; b=o/4KaCKuejv0BM
	W+11A69rsdjuFm6JjZY3L7M6AHIzVmcrC8cq2biTRvWabpX8r1l6MxZ2uGVT9iOAsSjMH+iPeITji
	z/KWexAd7dK3llL3tkGsNZAqHCVGpLLRm5bQyeAkRTd7B5Q7GyUQaU4r69KKrALGbgIszAdcWfMgJ
	N4bkhWB6AvNW1Nra39D7+2p02vV/9jEXO/pU8n/OlDmS3/NRoxFq7lEJS4dzdj3iv86FsyIyom+SQ
	SvT53d5oORq1aZxyuh5tY6SqAT8Lie5OKlHH8EgSbAq+R08zchdqrWfhpeoUAvyafqiTL8Ye48rWP
	kSRolIRZ9lmddYO/vdoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2vB-004kIJ-Uh; Fri, 18 Nov 2022 15:04:49 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2s6-004iim-8R
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 15:01:41 +0000
Received: by mail-lf1-x134.google.com with SMTP id s8so8601883lfc.8
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 07:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R7TWkSJ/hx81gtV+a6PhaVBLJKsxYQYqI5eUl3Szinc=;
        b=j/3MVELwdtussoOTiXKys6US9Dr5tQo0SoTGQn8bGvxWrz0tFuxmQ543ppCgG+kN30
         Z3Pfh8duuB/4uykPkPVgjAz/8k7m+E+ITaL5Hga0Cws7BtdrNpA/Mm9OhPmFfEC8sGly
         Vw1mX1v98hZbJKQkbLg84eIRNLZn1H+hmAVNRC76+4zld5gY85vbYG77+dYQ7O7FTzN/
         kttgS1GafDIjwY76OzhNYd3qZaZD3OO7Yrx8sv2Qg+sBFgxcIbzXPotWBeNvqz3KH6x3
         uFNf2f0zICpU/NZuYUPznYGuSxSVrTAtOBZfra7pLxrn+5arIGhlKNKYCvs2X+v+rnRH
         arIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R7TWkSJ/hx81gtV+a6PhaVBLJKsxYQYqI5eUl3Szinc=;
        b=DqosTJDmMcQw+BnLzxrqlo4OhFtl3I3/xsObEpasN4VbrAGAP2w5lVqWfD7e8ALzQd
         sTskGnp3sfGuSzBvZTDQRD9pMXg3klmBcOfqERNB/pHBY6Cxh+knKOd7vL69zsTY+tZl
         7WKLCm5oxOgvCNVSNiLjfGTPcaYU8wcGoUeGmvifWjzliyWqT7sjPl+HhjpsVI56aFtr
         qlvH/9lz3RqhgpMbJloXzEtrXkxesNLQSS3Jnh54UjJX8EzW/7K6mChuGer9kxLwJZ/Z
         xF7QsQFaApUKlPGGvps12j21F4TAu1gUoGTPq7gQNTQAGrRHx3Q+cCGzHmVk+4bgzfLp
         B7wA==
X-Gm-Message-State: ANoB5pkzlAA9f6i08UwoK7dmCQAx3lVW0bj+B+he+NKnZPBYrJpHW168
	ix6m7xChWDJAyi6seGlfADJhOw==
X-Google-Smtp-Source: AA0mqf48B7BNJlyBwsNIX6Pen1gn7zinZSors3wc73qrZIvgC8vJw/vtgG5rZ5N/qRtYBkDzU50VhA==
X-Received: by 2002:a05:6512:15a6:b0:4a2:3d2c:34ac with SMTP id bp38-20020a05651215a600b004a23d2c34acmr2427522lfb.41.1668783694993;
        Fri, 18 Nov 2022 07:01:34 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n25-20020a2e9059000000b002770d8625ffsm683071ljg.88.2022.11.18.07.01.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 07:01:34 -0800 (PST)
Message-ID: <c2d8521c-25ff-d411-1a7b-eefc2ad5957e@linaro.org>
Date: Fri, 18 Nov 2022 16:01:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 12/12] dt-bindings: net: convert mdio-mux-meson-g12a.txt
 to dt-schema
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jakub Kicinski <kuba@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Alessandro Zummo <a.zummo@towertech.it>, Eric Dumazet <edumazet@google.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Kevin Hilman <khilman@baylibre.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Heiner Kallweit
 <hkallweit1@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Paolo Abeni <pabeni@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Cc: linux-media@vger.kernel.org, netdev@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20221117-b4-amlogic-bindings-convert-v1-0-3f025599b968@linaro.org>
 <20221117-b4-amlogic-bindings-convert-v1-12-3f025599b968@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v1-12-3f025599b968@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_070138_348129_2BEB3396 
X-CRM114-Status: UNSURE (   7.67  )
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

On 18/11/2022 15:33, Neil Armstrong wrote:
> Convert MDIO bus multiplexer/glue of Amlogic G12a SoC family bindings
> to dt-schema.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
