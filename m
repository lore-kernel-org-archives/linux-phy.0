Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C20C6C87FDC
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jun 2023 15:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eN7qqgcJWgYbH7kVkTxEPTYI4JPNh/ZIQO7MTww+5nc=; b=o52ugdicVcuJ6A
	3Y67Z6neVL30F9POuplLNZCxm6KQLbgJy8GoWO41WNq/xcSmuNnZ3jJdh+JaANV/VLAwIx4NML/bO
	aQJzoIOcxxMBx0oVTmJZPYRUTooNQwD34nCrJ+gvbeT/dqV5bQNafLU/buSfSpgIcY8v0d5ZHlM+t
	SWgPvloJtH602fVEj5BCHW0V5inUJHC8zD7/LkNqRO0MZ9G+K0hELjjwWHBBkU9RUYycJllvSEv4W
	LSW0qyczNdtHkDhr3l4RljSRdC4DOgTfkJw+tgHOQtACWWVhVZGkaAN6Nlt0wS1/ozwaEfGlOr8dp
	0jMMCOtWxsKL7mOCmBkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7dm9-00DO5C-15;
	Fri, 09 Jun 2023 15:11:41 +0000
Received: from mail-il1-f175.google.com ([209.85.166.175])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7dm6-00DO4T-10
	for linux-phy@lists.infradead.org;
	Fri, 09 Jun 2023 15:11:39 +0000
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-33b921e4e8fso7583235ab.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Jun 2023 08:11:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686323497; x=1688915497;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i9Rb1e/uOkSXDB72S3Pmwrp86GlxpbraRGVRQBYFa9A=;
        b=gWyLtAxluMzqwQQgQppJVPg+knHLfCJjcUultYP+1UfrXauL5w36bDcmXCXnX5S3B8
         slpvDnwtlnpCpXxuFqNyiyUlJc2hkOzqtWyp5q9C47EXeawySFTYanKo/zy4vorbigJy
         K6FazIylO0Y+FjmJ4Z1/87FomQTkB+lqVcKz881q0QA0ekkUL/Lr/pHaRWONFzXlblW/
         7phkbSQeN/08zWgwjxexGUTE3r/QtxJJ30//w9BG5fHdOdYP/zNCQM85lvMaFAs+XQ7+
         KC2DOone045nSyNM0P7nggGQPKOdnYW1+hq/ZzLR5BqS+29VDuOFDsZd7fxvRSPn4OJw
         bNIA==
X-Gm-Message-State: AC+VfDzY5nBlSrDCRGJRAI88ux7gzNwI33+i/wPshague7gOCPxO8waH
	QtCBdOP7nnGCX2pfL+MOBg==
X-Google-Smtp-Source: ACHHUZ601MkzpccdrAQ864iVAYxlzaAgWUES/WkMk0l539+cvMHRtzNzn5Ol1LJOZoG08+96U43ndg==
X-Received: by 2002:a92:c98d:0:b0:33e:7269:bb7b with SMTP id y13-20020a92c98d000000b0033e7269bb7bmr1650478iln.3.1686323496915;
        Fri, 09 Jun 2023 08:11:36 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id y16-20020a92c750000000b0033e62b47a49sm1124240ilp.41.2023.06.09.08.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 08:11:36 -0700 (PDT)
Received: (nullmailer pid 999255 invoked by uid 1000);
	Fri, 09 Jun 2023 15:11:33 -0000
Date: Fri, 9 Jun 2023 09:11:33 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: alsa-devel@alsa-project.org, linux-spi@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org, Tony Lindgren <tony@atomide.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, Oleksij Rempel <o.rempel@pengutronix.de>, linux-phy@lists.infradead.org, Dipen Patel <dipenp@nvidia.com>, devicetree@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>, linux-pwm@vger.kernel.org, Mark Brown <broonie@kernel.org>, Vinod Koul <vkoul@kernel.org>, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, Alessandro Zummo <a.zummo@towertech.it>, linux-rtc@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, timestamp@lists.linux.dev, Dilip Kota <eswara.kota@linux.intel.com>
Subject: Re: [PATCH 2/7] dt-bindings: pwm: restrict node name suffixes
Message-ID: <168632349292.998946.17372740217811972226.robh@kernel.org>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
 <20230530144851.92059-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230530144851.92059-3-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_081138_366549_939AAA29 
X-CRM114-Status: GOOD (  12.44  )
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


On Tue, 30 May 2023 16:48:46 +0200, Krzysztof Kozlowski wrote:
> Make the pattern matching node names a bit stricter to improve DTS
> consistency.  The pattern is restricted to:
> 1. Only one unit address or one -N suffix,
> 2. -N suffixes to decimal numbers.
> 
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Cc: Tony Lindgren <tony@atomide.com>
> Cc: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/pwm/pwm.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
