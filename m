Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5818C8300C
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jun 2023 15:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjltnSzmPIa9jtS1FAXVpd0MnzGjlpFvxN1kkwSxYRE=; b=PVfGofxom88sZQ
	4ryH3HQPs28hRlyBYvBg+jw8/1KVfW5Ka3zHjg9SFVA4hMBYeErGgZUq6Pd8yDQ7rVrP26tJdGBDN
	4BV31ODpvflV9tThP2H+CXGmmxgac0gRyv75RaWa7ZZYxETXH0sYMwTtJDU6MWJoP5YnxCr93cTGR
	4roQH9aXLMhx+3HlMCFFmcBg3ARj75sNUpim9a490vzoIukxZZsf5TsYI+tE+MxG6g5rXaMCVRSzA
	G+cykzleCSDK4woboAYRyTBLr2Jq3WII8GotkoM1vvk3nFJmz8BlcCXBoiqiDlMosX5nqFUEehvPn
	NLa4paOKUx9Jnd/m5UCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7dox-00DOcN-1R;
	Fri, 09 Jun 2023 15:14:35 +0000
Received: from mail-io1-f53.google.com ([209.85.166.53])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7dos-00DOZb-0G
	for linux-phy@lists.infradead.org;
	Fri, 09 Jun 2023 15:14:33 +0000
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-777b4716673so60604639f.1
        for <linux-phy@lists.infradead.org>; Fri, 09 Jun 2023 08:14:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686323665; x=1688915665;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EkAejDhVenOljts+lEgATyY0mjLSL4+xG2fSzob05cU=;
        b=Fb552qCyg/wjIGTadu3+4o5JruOztugZNhj2eCGLwTVbyFiWygpmSBRGQgjPZQsVk7
         Z+uBx+dikNo4wKUtjGZcBY4vxHwXPMtdOlcTFwS/GhyNKs2GmfNmwm/jLxQDa03PVNXQ
         1NywvUJAdMlWTAez5lXLAW2DxoKwIDbI1b3id1b6HV6hkjMRvCzH36rP8kUkxnky99E/
         0yMulDJJCBPt5eeYtp1XJEWYxctdmS3seB/NVHO5o2i4N99TLTQLk/LxocAcMUoNM7yO
         T6k5HpdP3sCMRFngflp7zFXkxxJ6EHBfFOV7bs7tqiQYWvXlinBAGYSufJrKvR3gufLC
         zoig==
X-Gm-Message-State: AC+VfDyYVR94f2OcianuEuot/Hha1OlS0W0iE5rna5aRYhLkIRN4xGkX
	amGVKZfL9LHXsdJfp4Xr0g==
X-Google-Smtp-Source: ACHHUZ51hC0FqW26G3ZZ/1x1kW04DJ7QhraHlAzn2ctcSO3HfuegS6P1MdA5ofiYZJ2F6gytcZ0bbw==
X-Received: by 2002:a5d:8b5a:0:b0:774:8d6c:9fe7 with SMTP id c26-20020a5d8b5a000000b007748d6c9fe7mr3269252iot.3.1686323664873;
        Fri, 09 Jun 2023 08:14:24 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id eq14-20020a0566384e2e00b0041631393ac9sm1026218jab.18.2023.06.09.08.14.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 08:14:24 -0700 (PDT)
Received: (nullmailer pid 1011643 invoked by uid 1000);
	Fri, 09 Jun 2023 15:14:20 -0000
Date: Fri, 9 Jun 2023 09:14:20 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-spi@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>, Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org, Dilip Kota <eswara.kota@linux.intel.com>, Guenter Roeck <linux@roeck-us.net>, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org, linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org, timestamp@lists.linux.dev, Tony Lindgren <tony@atomide.com>, Kishon Vijay Abraham I <kishon@kernel.org>, devicetree@vger.kernel.org, linux-rtc@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, linux-phy@lists.infradead.org, Wim Van Sebroeck <wim@linux-watchdog.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Oleksij Rempel <o.rempel@pengutronix.de>, Dipen Patel <dipenp@nvidia.com>, Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 7/7] dt-bindings: watchdog: restrict node name suffixes
Message-ID: <168632366012.1011592.9711699530759737056.robh@kernel.org>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
 <20230530144851.92059-8-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230530144851.92059-8-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_081430_135450_5564B81C 
X-CRM114-Status: GOOD (  11.67  )
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

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
