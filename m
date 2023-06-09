Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FC0EC7EE29
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jun 2023 15:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+255R0o8FZ6Ka0Ms3icvUIvma3+1t6qfwzqPxAsPQI=; b=qr0k6Jr+kuQG0J
	wbOr8HzXe4zB65jI50zWle9+zJnQusVCp0BJGpaE5UuiNWcnWZd0mhEbfJ+TiWEwrZwJauRMj+qsK
	gGJEvuhmfKWQn9crdbk/bZOm0qm/UTUzvw8vWJqPEvo6HCT4d5fAL2fTxbUzd177tHLyj16on0Qri
	pFrk2TbFaRQ4duHAZprQExSe8X+SnWCwpto5RVQjyDXPzYfRw2mC+tQzGKxz5gucDkcJUmee0unLy
	OYMvU3pgFvujBgRNOWN+NdecMyHmFpWebkF7w6Zjl5DbnZEW4pZGeX5bpglce7BDNraQkOzQa38e8
	68ZyylPr1MVOYLxxhk/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7doC-00DOPg-23;
	Fri, 09 Jun 2023 15:13:48 +0000
Received: from mail-io1-f51.google.com ([209.85.166.51])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7doA-00DONZ-07
	for linux-phy@lists.infradead.org;
	Fri, 09 Jun 2023 15:13:47 +0000
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-7606d460da7so78337939f.1
        for <linux-phy@lists.infradead.org>; Fri, 09 Jun 2023 08:13:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686323622; x=1688915622;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SQR5X+cA13kUaYcqbqMobhb9VGgmIkohulmhqJZKYzY=;
        b=UGpm5xAqyxws6O6SRlutfZSZtqZ/r36sfNuapGkAe6ffHtbyNvgeuW9BkDi8IM+TAD
         fZ70h/1ZMiC423oEImrsRV2B1BZ6pmKfcgP7msshNX0oYk9IFDNhZg2ET78jOx2QPPwy
         aHZhGHVze0+fwg8ubGPHPHxwOgtwrfT7k4P2oAElKcZJtkC1DvhJdv6SUMWJ4Fzo3nMc
         NVPN6YVFdCkHLLvWxUUaghcz9GyGissy5FaGf6o1wbBNXDRmX2g50XcrqLqcCwizrfAE
         OirKq/ohAYq9BesDNBZlbVlcwTBWML/zS8J7+3rJmTkiz0rpBkzJzzj8cSUXSO6OnS+o
         HHHA==
X-Gm-Message-State: AC+VfDx4mYtqDFD7ohWq4XiUqLWa1qbD2XauVae4veh6Nq3y2o+jGyD2
	tFW0j38njdsQlKOAdEcGXA==
X-Google-Smtp-Source: ACHHUZ7pPsrApmh1g6QnAT5gDqfYy+vIK4VH1grPnXE4XcsiJ/FkZ0gxKjKu7YP4yiXH0oDQiYhlxA==
X-Received: by 2002:a05:6602:1851:b0:774:9af9:f45e with SMTP id d17-20020a056602185100b007749af9f45emr2002777ioi.11.1686323622392;
        Fri, 09 Jun 2023 08:13:42 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id p25-20020a02c819000000b0040fc56ad9fasm1000077jao.9.2023.06.09.08.13.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 08:13:41 -0700 (PDT)
Received: (nullmailer pid 1010803 invoked by uid 1000);
	Fri, 09 Jun 2023 15:13:39 -0000
Date: Fri, 9 Jun 2023 09:13:39 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Mark Brown <broonie@kernel.org>, Dipen Patel <dipenp@nvidia.com>, linux-rtc@vger.kernel.org, Dilip Kota <eswara.kota@linux.intel.com>, alsa-devel@alsa-project.org, Guenter Roeck <linux@roeck-us.net>, Oleksij Rempel <o.rempel@pengutronix.de>, Alessandro Zummo <a.zummo@towertech.it>, linux-spi@vger.kernel.org, Alexandre Belloni <alexandre.belloni@bootlin.com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, linux-watchdog@vger.kernel.org, Tony Lindgren <tony@atomide.com>, linux-kernel@vger.kernel.org, Wim Van Sebroeck <wim@linux-watchdog.org>, Vinod Koul <vkoul@kernel.org>, linux-pwm@vger.kernel.org, timestamp@lists.linux.dev, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 4/7] dt-bindings: slimbus: restrict node name suffixes
Message-ID: <168632361891.1010750.17241199360005605438.robh@kernel.org>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
 <20230530144851.92059-5-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230530144851.92059-5-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_081346_070280_D487779C 
X-CRM114-Status: GOOD (  12.63  )
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


On Tue, 30 May 2023 16:48:48 +0200, Krzysztof Kozlowski wrote:
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
>  Documentation/devicetree/bindings/slimbus/slimbus.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
