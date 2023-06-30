Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99C16EB64DC
	for <linux-phy@archiver.kernel.org>; Fri, 30 Jun 2023 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oi16G5V11P5CVgfXBhD92Ywn73c2wo0UHMfEpgLGz7E=; b=UlVkgRKyJwD63t
	Ru4M3Xy00QOQCS020v0y+sEfX/p+6EHRGDzr0dlzuoOzo+FIk5DII6KBMClQ+wwTLKuQTZBTUfPAA
	Y27ZnHjwu/HSGR4ujPYYh/1qNTDdZLQJUUWWY+oLuOhze5TkImE/4IdPUsAM2C5SabhM3pG72C1bU
	/005Qhpbd0JkqvSOaKDu37gJL95Xlej0sewsdo0so9WC+O2RUUwiDTgACvn2I00aPINMRuG9XChqV
	NW96jsPlv4joDAEZlSJKOKOenjYtu7IZ/EFeQIlyKPdE1G+iDbe7RzkEsXnfWq9oR0uDD0DEb5TIb
	DzubNDDMbKC3PyGgFp7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qFHYD-00496e-0z;
	Fri, 30 Jun 2023 17:04:53 +0000
Received: from mail-io1-f44.google.com ([209.85.166.44])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qFHYB-00495r-1m
	for linux-phy@lists.infradead.org;
	Fri, 30 Jun 2023 17:04:52 +0000
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-783546553ddso89061539f.0
        for <linux-phy@lists.infradead.org>; Fri, 30 Jun 2023 10:04:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688144688; x=1690736688;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bDSvITIumvxU+9FeXxHNbJLwhZGzlxTTZldXnMbbHIk=;
        b=LELpiKA0m1CAQACbmUpONmuNFtRov0eSs6p5whFu1/GKkHtX9/qP0mA4HTSRWZxqec
         vr0sxdHHnzoHbmsaj0YaiOyoezXpRx0MmdV2tDUZzYgILLLBD85y7yQNjSLu8/prIST7
         2DRIaSx15wnthxIPTHv5MBlhnSEcAjo5veA8lvYSsr9CiseSwqgaFPf07KD0Rji0C678
         RTicnKBXMDrYuLuBX75H9tXNs+plKr5NmLtbPcwhCjrYMnKJSI7q8rhiKqTqh9b+SPgi
         /vkEv2Gmhl7g/Gsbyoy860pmWB+9SiZJTpIavImodM/6OQrgjCkvj5C6w0/bLCSr6i6D
         Zd6w==
X-Gm-Message-State: AC+VfDy4aJCwnBooPzGFYkEBAgmZ7161NjKhXvarALzzwVf0pmzbp2BE
	e5cIC8Cs3bejdiNPbt7O9w==
X-Google-Smtp-Source: ACHHUZ7YVGW6lKVvg7C24o8CcDQqjgMElHyuoGKVnJCWvqYKZlQzdchG5JVGPC50uiHB8TDngxV6bA==
X-Received: by 2002:a05:6602:19d1:b0:783:5209:c01 with SMTP id ba17-20020a05660219d100b0078352090c01mr3305594iob.17.1688144687999;
        Fri, 30 Jun 2023 10:04:47 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id k5-20020a02cb45000000b0040bbcee6b57sm2373025jap.133.2023.06.30.10.04.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jun 2023 10:04:47 -0700 (PDT)
Received: (nullmailer pid 1908824 invoked by uid 1000);
	Fri, 30 Jun 2023 17:04:44 -0000
Date: Fri, 30 Jun 2023 11:04:44 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>, Dipen Patel <dipenp@nvidia.com>, Tony Lindgren <tony@atomide.com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Vinod Koul <vkoul@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Alessandro Zummo <a.zummo@towertech.it>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, Dilip Kota <eswara.kota@linux.intel.com>, Mark Brown <broonie@kernel.org>, timestamp@lists.linux.dev, alsa-devel@alsa-project.org, linux-watchdog@vger.kernel.org, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, Alexandre Belloni <alexandre.belloni@bootlin.com>, Thierry Reding <thierry.reding@gmail.com>, Oleksij Rempel <o.rempel@pengutronix.de>, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, linux-phy@lists.infradead.org, linux-spi@vger.kernel.org, linux-rtc@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 7/7] dt-bindings: watchdog: restrict node name suffixes
Message-ID: <168814464489.1908194.10092224539849073775.robh@kernel.org>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
 <20230530144851.92059-8-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230530144851.92059-8-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230630_100451_584303_D3AF8E55 
X-CRM114-Status: GOOD (  11.36  )
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


On Tue, 30 May 2023 16:48:51 +0200, Krzysztof Kozlowski wrote:
> Make the pattern matching node names a bit stricter to improve DTS
> consistency.  The pattern is restricted to -N suffixes to decimal
> numbers.
> 
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Cc: Tony Lindgren <tony@atomide.com>
> Cc: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/watchdog/watchdog.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Seems watchdog patches aren't getting applied... Applied, thanks!


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
