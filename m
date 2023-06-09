Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAD92C7EE29
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jun 2023 15:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4NVpnU4/qXzErWKYtb2ao+Ekr4JLdeb0XAV0rSwBjk=; b=fAc4jctSwn6wdh
	0G5lzH92B0qvBhaCcyiSP/SvRoQceupXFjWprTxZhbfA9HIh+nd4R/ENDVSw/f1qjS1lh9uDm18Gg
	B7guPGE9MR/rt/LQkxRhXm04aBK5wz2ainXAwqq+ccNsUbxwXJiZSxrt/BeKEINiBR6xmwEnPWZpQ
	k2dwAnhRXfxxF4i1Dl+nvuZIb8dbM6fAzg59nQEAtk5dqvY9lrdLmXKGzlUpX0OQ/1wxD9LzkPO8J
	l8FNMbhUMPZGHme//atNl0tmJAERZ81xVAx4meyPiufsj0HaWaj2S/9wa/N9Ni+Fca95Jczmuj416
	C6wyJcOu7chWfIOCykyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7doT-00DOUw-1A;
	Fri, 09 Jun 2023 15:14:05 +0000
Received: from mail-il1-f179.google.com ([209.85.166.179])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7doQ-00DOTT-1m
	for linux-phy@lists.infradead.org;
	Fri, 09 Jun 2023 15:14:03 +0000
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-33b6c47898dso8257695ab.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Jun 2023 08:14:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686323640; x=1688915640;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NlnLe4pfATl+DHVBwqaw0v4jPbOyjTsxndvN+13DO4U=;
        b=FHqUB6tFFAYv8531izQtG4Tf1u2XfStoO9QmuX7McHv3PU4U85MsWqWANHIf3licBF
         wFbVXaA2fAeqMGtUCQKxKLKGXC5JUlJ9BNiiG5B1MWA97tXurhog8U9UgxBu7U2q5zJ3
         mKQsR0tl4wo9LFP1uPgnQuuUhx20xrgBSMnprga1GD7ziM58iMRkCpR3c28JKJ2v8KK5
         olI4XA/jU1Kr7aQTBpsVSNq6JptstkxhA/rdoCr/VymKIl8o+V0VkYCqrNo4Gl6vg14k
         cupe9VnmDiPMfKbOO5PtCZ3qACdwlNnoYvCjsD9uTMB0ILkIaFrhbekl1OrtsWKmgkkG
         sAmA==
X-Gm-Message-State: AC+VfDxFok9yLFleCsX6/BNQpV7mluabCEg4cHjS4Qx54SmCktFDLVF/
	QqFnvYnh/9Zu2xzo6t0kjA==
X-Google-Smtp-Source: ACHHUZ67MRb0rJmdn4+48gimm54npOx3rXtHVsKxV43QbkTdBE7Slc8n9FZ20Hgxkb+KSwVkDi+hYQ==
X-Received: by 2002:a92:d590:0:b0:33d:72c0:1b4 with SMTP id a16-20020a92d590000000b0033d72c001b4mr1757273iln.10.1686323640384;
        Fri, 09 Jun 2023 08:14:00 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id z3-20020a92bf03000000b0032b72b5c1c3sm1136035ilh.9.2023.06.09.08.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 08:13:59 -0700 (PDT)
Received: (nullmailer pid 1011188 invoked by uid 1000);
	Fri, 09 Jun 2023 15:13:57 -0000
Date: Fri, 9 Jun 2023 09:13:57 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Alessandro Zummo <a.zummo@towertech.it>, linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org, Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Thierry Reding <thierry.reding@gmail.com>, Tony Lindgren <tony@atomide.com>, Dilip Kota <eswara.kota@linux.intel.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, alsa-devel@alsa-project.org, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, devicetree@vger.kernel.org, Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-pwm@vger.kernel.org, linux-rtc@vger.kernel.org, linux-spi@vger.kernel.org, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, timestamp@lists.linux.dev, Wim Van Sebroeck <wim@linux-watchdog.org>, linux-phy@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>, Guenter Roeck <linux@roeck-us.net>, Dipen Patel <dipenp@nvidia.com>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 6/7] dt-bindings: timestamp: restrict node name suffixes
Message-ID: <168632363634.1011122.1495504884843410484.robh@kernel.org>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
 <20230530144851.92059-7-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230530144851.92059-7-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_081402_587660_21971C4E 
X-CRM114-Status: GOOD (  11.18  )
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

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
