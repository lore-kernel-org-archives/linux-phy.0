Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C78E6C7EE29
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jun 2023 15:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUwVCjXiSncVZCWJHAKVd3IsUlH8YNUQWFyCtsGXgK0=; b=cxseCum4OVdPw9
	wHA2I00zZa5jNHhQPnXtQRj44pKMxwt2IuILf/T9xGCVJduwfiTjsEebLLj6FxEnI1HdUyJRldIB9
	0wkRfwF2OgSobGK6tu43IR8WkZxK1eEGOmMn89KEjkbJWDLT3o7iBSij5FYLXrc3wCD5rCLRf5JWi
	5HFkeYU6CJygntG9kWov/tOaPWfQiybZHpbncEl41SFeZR/J7nl0CG8UslGr2Ed7jev1okNYCHeVe
	QVTfyh6DJNoGndAG6dvKOL1kNRswfCufI6uS0IlnoQcHogvuTRX1qE5i3shAW+ksV2VPDQIG1bsST
	fHh3z8Jl6NKUSCEmPdiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7dl9-00DNzP-1P;
	Fri, 09 Jun 2023 15:10:39 +0000
Received: from mail-io1-f43.google.com ([209.85.166.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7dl7-00DNyQ-0k
	for linux-phy@lists.infradead.org;
	Fri, 09 Jun 2023 15:10:38 +0000
Received: by mail-io1-f43.google.com with SMTP id ca18e2360f4ac-777b0cae9ecso84563139f.2
        for <linux-phy@lists.infradead.org>; Fri, 09 Jun 2023 08:10:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686323428; x=1688915428;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bgEA1Mw1A/5s3GKiOUjS2OVmsqKcYspaLT+4TG/YkK4=;
        b=kaJ5U7NFDVIhQqV9LPaYRG2M2hCTgbiJRx8Ns/XqLtkmELSVwfve/jCQwfCj740/dw
         LLzmTnLqrxZfAL0+crg7nleR1QJ+8+dYcaft4IZGk1YAwH3zWygBCcje82w2BV4MOzDO
         mn6pj8iSj+colURoTlhh1HJSuBeGZPm3DvzM6uF+mxI4fWmtI6QWwt+q1RDDc3ZeY1oR
         AyPhYSGilqx27KrDapAb5KpvClj9K+5562VtaHjtluMaomjA8U2vUtmjnvOdqoG+VqBn
         Odi25MdCqLJAmCoYtstOZyjbIFd3vIThal9PuKgnsx3MitAqfzbLUS3NdTfaDLOCnegd
         23ZA==
X-Gm-Message-State: AC+VfDxcHBNLvkRCZuPQSwTHjtNICxbsDpL12L3f+khBd+zS0blFtGI5
	dqVeVUwL0Qs1FVEf8J3rrvlwx9zcsQ==
X-Google-Smtp-Source: ACHHUZ6GLJF9xmiCznvrkvDAHStb1dFZWwEwBO0JSyNuKSB2A4EFN0t4aWuWCLrZCT/E+UeHUSc/ew==
X-Received: by 2002:a92:ce11:0:b0:33a:56d6:d9a4 with SMTP id b17-20020a92ce11000000b0033a56d6d9a4mr2155501ilo.10.1686323428407;
        Fri, 09 Jun 2023 08:10:28 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id l5-20020a92d8c5000000b00338a1272ce1sm1147336ilo.52.2023.06.09.08.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 08:10:27 -0700 (PDT)
Received: (nullmailer pid 986311 invoked by uid 1000);
	Fri, 09 Jun 2023 15:10:25 -0000
Date: Fri, 9 Jun 2023 09:10:25 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Mark Brown <broonie@kernel.org>, linux-watchdog@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>, linux-spi@vger.kernel.org, Tony Lindgren <tony@atomide.com>, Oleksij Rempel <o.rempel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, linux-pwm@vger.kernel.org, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Dipen Patel <dipenp@nvidia.com>, Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, alsa-devel@alsa-project.org, Kishon Vijay Abraham I <kishon@kernel.org>, Dilip Kota <eswara.kota@linux.intel.com>, Conor Dooley <conor+dt@kernel.org>, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, linux-rtc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Thierry Reding <thierry.reding@gmail.com>, timestamp@lists.linux.dev
Subject: Re: [PATCH 1/7] dt-bindings: phy: intel,combo-phy: restrict node
 name suffixes
Message-ID: <168632342399.985906.12431431892707276555.robh@kernel.org>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
 <20230530144851.92059-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230530144851.92059-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_081037_270463_A1A2E762 
X-CRM114-Status: GOOD (  12.16  )
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


On Tue, 30 May 2023 16:48:45 +0200, Krzysztof Kozlowski wrote:
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
>  Documentation/devicetree/bindings/phy/intel,combo-phy.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
