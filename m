Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8462EC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 14:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJ5PSmxSlksO0ZUUro2cuxyic/dtyq4LioArZAVPCcY=; b=LkSANvnCitmJEq
	LEk2lek32vmyhDBUpeVXOycP6mCn9RoTg014S2f/QuZLMZRnOGuwcKv5k1KNX+P2z/gRmZSIvsd5w
	q+RIVgvQ7ga4icEu9CYKpKYy80+/cSd05Z5ZMl+s/4/IbhJhn884MM+I5l7DdMt3Lcy0ptoVZHYyw
	a5tTDrJ5cKHLfnEt4cWJuh9vtVKDffvK5bT0ijlJnpGIOGWHPeWS6aSbqlyNME9frlDKWcZaYJ5aM
	77TMfZr9mTztN4JsCqnjiVB8Fjh/UOfPNP+SA64ogR/+oxnFjNXPsuy1Klp46TsCdQrY+/cRQcqdD
	8tT+27Zzx7ka4eeA8Gmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2kz-004ew8-JA; Fri, 18 Nov 2022 14:54:17 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2jK-004e0e-2I
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 14:52:35 +0000
Received: by mail-lf1-x135.google.com with SMTP id l12so8562236lfp.6
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 06:52:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XKTObKEL8gc5S/Q51M+L8voEMredlLnbihUYlLO76vs=;
        b=gMK7qVcD+/wXm6dGhENohbvUGU846z0Znfnyn4YkIaWmMt7X1/cw5naSy36DVIxHYk
         uZVj98I4oB6xd9bZLUQf19Ph1O9dDQPRXIfyTYw7E6xdNwIF1NhCnr/5k2PO705Nc5k0
         XQ1QiUNA3VL6Ip1u8qqtVQ7z8uICNwotEUJYWA+QgjTBfmuihMV3qsZhFJ+lRubn1aKy
         070XoR3LZfwbwMUH7Ky7T1eOGmByPNFlfsvaWR9IGBsggX8t4Eo+ZmpB2Exc/X6bY3JA
         gWZH4YYoZmpnbfFNMeuBEXtm68vEAQ3zeK3h6H7/zWrLl9hhTz0jCBxLBOvQFXbbLTV+
         vM4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XKTObKEL8gc5S/Q51M+L8voEMredlLnbihUYlLO76vs=;
        b=by/RM1mnybHd6rLIRtnI8iMxXtnADHAhBPNnwtgfPnZuIlYxgFa5I8kvNYv4sa38T2
         jshHyaRe/JbDyptgc7YNac4wjqhLllENyJQdvtpYwg+U8QG3w9t60JuMNBOiHcNAn4Gm
         +0jIORgJPO7JHFNMPyVGBU2y+id3aEFFqPz3PZ2e8NRMJSRV7MH2tkCjicCTB8aJ0DPY
         4Sf8Kt9eGRdadYWfDUJ38+rfXoTMNI/nDjMeGGNgscJoUxQr2y/EAIJmRBanfTfQx4/B
         8nKVvHxdiehf1uVBxI/osoRGZKOdmHqeWzPLlFiWVLeAyQYBfJkTWfMvpRIgowKHnwWm
         S1hw==
X-Gm-Message-State: ANoB5plRsFe95c+24LfJRi4AfyauVSAxoV+pb6vG0zYAdfeqL6aedqCE
	9JtIwlALGZn/tyelLRo898XPwA==
X-Google-Smtp-Source: AA0mqf74ROBTKaMUlZ8NEw2cWsCNjWuZzHLL5P0E9Dx63d7vUFRfCBhAqltBWgz7cA7TlfbXf1i4BA==
X-Received: by 2002:ac2:5281:0:b0:4b3:ff4b:80a2 with SMTP id q1-20020ac25281000000b004b3ff4b80a2mr2379143lfm.281.1668783151407;
        Fri, 18 Nov 2022 06:52:31 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id be34-20020a05651c172200b0026bf43a4d72sm676049ljb.115.2022.11.18.06.52.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 06:52:30 -0800 (PST)
Message-ID: <15840da8-bae2-3bb2-af0c-0af563fdc27d@linaro.org>
Date: Fri, 18 Nov 2022 15:52:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 07/12] dt-bindings: power: remove deprecated
 amlogic,meson-gx-pwrc.txt bindings
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
 <20221117-b4-amlogic-bindings-convert-v1-7-3f025599b968@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v1-7-3f025599b968@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_065234_137436_809929B4 
X-CRM114-Status: GOOD (  12.04  )
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
> Remove the deprecated amlogic,meson-gx-pwrc.txt bindings, which was
> replaced by the amlogic,meson-ee-pwrc.yaml bindings.
> 
> The amlogic,meson-gx-pwrc-vpu compatible isn't used anymore since [1]
> was merged in v5.8-rc1 and amlogic,meson-g12a-pwrc-vpu either since [2]
> was merged in v5.3-rc1.
> 
> [1] commit 5273d6cacc06 ("arm64: dts: meson-gx: Switch to the meson-ee-pwrc bindings")
> [2] commit f4f1c8d9ace7 ("arm64: dts: meson-g12: add Everything-Else power domain controller")

As of next-20221109 I see both compatibles used, so something here is
not accurate.

> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/power/amlogic,meson-gx-pwrc.txt       | 63 ----------------------
>  1 file changed, 63 deletions(-)
> 


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
