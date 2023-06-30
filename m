Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A18FEB64D7
	for <linux-phy@archiver.kernel.org>; Fri, 30 Jun 2023 17:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2d9PnY5FVwg4jEcfoGc5gxYQ8+OpNKhw1h57KI6cs3k=; b=HgW2jcQZMzLbOe
	sQtDdTPdyBdN7MJDNmgkZHJ90mtK8HmPEYDrt1rL76XsjSZMMIEhfSmZ5qCROE2n2vJpqu+o2+wTa
	wfPdLfzCY4zdsymk4SBV69MW/FKStsWKN/BMauE245Np1xOzaQNugmGjmgM8gTUtyrg206S7Jx8Cq
	1KQjmX2vwyJbjJNo2RyVfH6Ldomt5oMFzZZcIqC4NuudYwARs1Tdls//KFNDAFj6h3bmovqrq+16c
	GKgh7ugFyp5OhrYKVpMzFnMPlygRV9NjYaf/KOQovOMysmZOHMq7slsm5pj7KrM3OMzNQEmrDAybC
	FkrEDLmQt6PwnLDcl9mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qFI0x-004CAZ-2L;
	Fri, 30 Jun 2023 17:34:35 +0000
Received: from mail-il1-f181.google.com ([209.85.166.181])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qFI0u-004C9t-0y
	for linux-phy@lists.infradead.org;
	Fri, 30 Jun 2023 17:34:33 +0000
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-345ad94db0aso9010655ab.1
        for <linux-phy@lists.infradead.org>; Fri, 30 Jun 2023 10:34:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688146471; x=1690738471;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LQ94kfdEfq9RrPFyhfJUVdunZkyBAVzDUoOb8tFiC9I=;
        b=YNuXp7v4aN1tcS4Igze2AENgJilnh1+DJwnSc60RGO6y7Au/pv2b9To+oGaFDmoXiy
         XnHvQ1Inpwph+hPVJld1/+jP4JFQaUtNq6rQ5zE43cZt4Ew39vnsLjDAkoPcBxSOZyEv
         bG/NnbKuIwveOftcb/9RjLMICDDwDRhSIOLJ6STuC4F4Utm/C0k4gl8pCKvHLkS11wE1
         MXLC+yFbkm5+sAC/kOi6TJgkqSd94kYokc/9PVvi6x9Xiuh5rnlZ9O2zFhYl8kaNAiOm
         6gzaL9IbDow9zzV0alzxd0rXpO7kk9A67jxUHcKiRTZh5XO+wRq0o6Y+yPp/4z2bOm3s
         idFA==
X-Gm-Message-State: AC+VfDyMD8PYuXMTYiTl1xBkfz+vbyokBtZlT5/8Y95EcJuIVLCWWvmk
	aXgxLZZJkLIQlSyeQCEDUQ==
X-Google-Smtp-Source: ACHHUZ4EbUs4PS9q79isRP9O3xuyN3VlPHEnyRoBjVZ32PU31b0maNUtRwGNVSbiOr7AKyybiYfTVQ==
X-Received: by 2002:a6b:a16:0:b0:783:694f:e791 with SMTP id z22-20020a6b0a16000000b00783694fe791mr3651652ioi.12.1688146471480;
        Fri, 30 Jun 2023 10:34:31 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id i17-20020a02ca51000000b0042af069eeefsm1830983jal.50.2023.06.30.10.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jun 2023 10:34:30 -0700 (PDT)
Received: (nullmailer pid 2074728 invoked by uid 1000);
	Fri, 30 Jun 2023 17:34:28 -0000
Date: Fri, 30 Jun 2023 11:34:28 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-phy@lists.infradead.org, linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>, Oleksij Rempel <o.rempel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, linux-watchdog@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>, Tony Lindgren <tony@atomide.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Dilip Kota <eswara.kota@linux.intel.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, timestamp@lists.linux.dev, Vinod Koul <vkoul@kernel.org>, alsa-devel@alsa-project.org, Alexandre Belloni <alexandre.belloni@bootlin.com>, Guenter Roeck <linux@roeck-us.net>, Wim Van Sebroeck <wim@linux-watchdog.org>, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, Dipen Patel <dipenp@nvidia.com>, linux-pwm@vger.kernel.org
Subject: Re: [PATCH 6/7] dt-bindings: timestamp: restrict node name suffixes
Message-ID: <168814645706.2074491.15762386958786625732.robh@kernel.org>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
 <20230530144851.92059-7-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230530144851.92059-7-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230630_103432_335431_92C8E8CC 
X-CRM114-Status: GOOD (  11.77  )
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


On Tue, 30 May 2023 16:48:50 +0200, Krzysztof Kozlowski wrote:
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
>  .../bindings/timestamp/hardware-timestamps-common.yaml          | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
