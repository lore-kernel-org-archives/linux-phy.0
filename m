Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15F17C2BD09
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jul 2024 10:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctj87kAwGg86RYinoovZexmbRU9VpngmWCbxxhJxPSI=; b=HVtcpBp3lQfDZf
	cfzmBRMkwOYAdz1B9vaTPtehl3aYiW/FeHoVeRi5S3wcyQAMxubWvhjkGKnp1JwssFq/JVCnUCihL
	wwT+TwCdzSp7vI3iIsFFeBhChEh5BP/lLDOqHVHtLKpoRk6JGEzc3wqSHjqmlEOt8KeR8Q34G5e+I
	5fC4ZjAe0Ylg/Z5dvSONhYzs1g0lHgHjBmy+6m6DtLybTkFS6vHngWm2Gse1wFPH9onEMfQkPkXYC
	87ZKS2Gqj6aMsAGijPqpif9pg4rnsa3h/sQvnJRY8+0bru+EivRlSnWBOz1nKapQaAGog7+Lfs3Hy
	K0Jl3/3GiHiTv2xTK0iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR8Rj-00000006t1Q-3Etr;
	Tue, 09 Jul 2024 10:51:43 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR8RT-00000006swh-119b
	for linux-phy@lists.infradead.org;
	Tue, 09 Jul 2024 10:51:28 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-25e0c0df558so2556960fac.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Jul 2024 03:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720522286; x=1721127086; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ne6sGKGQF4GM9jaPTveT7Fc90CaEuMuRCImmXptQf6Y=;
        b=Rt74bUPmuh6FlwDIqXNPstLH/f56Fj/RL3bXZdXuDmLmQ0K3XZCzdUE6IxVAIQEehk
         xdABhqEMPh4c/pNm5jge1aGJhZhkjnxI6tDlfWQmyqFNtiElJuRlTSIkJS6aRpzOQocg
         gVfykoZR5hat39LGgW70efr8mgWWbbsmGD1IgY5LXIyU+bfovLKC4BPBeihMaU+LgsNJ
         /QZitG+/3i7a+MvOfqlEFaEgoshdEQ+cYA9vaT8zdmBtZR985AUvfVUiuPVO1tJULies
         urJPJFehV5G2kW6OCDdWtRp9nhNRbg45kC6ZYzDRHvas5i26qSVqn7sFxDqcqWHlbDht
         HrdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720522286; x=1721127086;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ne6sGKGQF4GM9jaPTveT7Fc90CaEuMuRCImmXptQf6Y=;
        b=WBK6nfbxIMIKwck7qFEoarabsTiEm82MGuA6BjnS/fxUTibvtP8Q6JqLSgKKHJKoqR
         H2SIxNvS3cPPguuvC6zS/rBNgPOgI7xiqv2ybOrPTE4swdXQe9TxALiztbi5hL+K0oMn
         Ti+PqEuQnIkRWiEpNiNL1zh7WeYVcehdfbFawyh/brd8vvxH8PCf0nwD02YBgn2hGnwj
         G8MvYVe1DDC99P3xOzEz57smDB2o4OFtPMgSTrnj6z+ga4kp+gSLqL5/jqNlO7KAtqxg
         XUB/QdJE+kJrOfAoQDeSryJFmyIkXRSqGfLz/Kt/xhhAgvky8amk+OSs097hw8jERQII
         nyUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKAA+SBDVbxb/jS5tfMOK7+wxBqfyGsB6oFIOxfsu9T6a4hazQLKw5gaxZ5EWt1+0oWuhTnamUVIUuUZVfFed3HMaFquFjdIizEzkobQ==
X-Gm-Message-State: AOJu0Yw62nMh5J1qXduFTx828SW1feuTvrlxr28E00ciNRdx65IeOvcL
	daDIUDPFWJWVE+UHCWwrZwMFNrcmpU3upLi23wyxqc6xN5cgMV+kJff6P2IiHVSQ/VRw2muUiGV
	e42E4sI+aJdZu8uO3EgfDyve9/DmTyqr83Nj71Q==
X-Google-Smtp-Source: AGHT+IG+y2y1lYDjW0w074p6b32KN/SNBfuH66xZOYYfG/aQ33OHnDDWnfHU1jSQkLv7VHnBWB5U5y0xOdhTHcklAQw=
X-Received: by 2002:a05:6870:ec87:b0:254:ccac:134d with SMTP id
 586e51a60fabf-25eae7575dcmr1763592fac.2.1720522285808; Tue, 09 Jul 2024
 03:51:25 -0700 (PDT)
MIME-Version: 1.0
References: <a956a3e2-c6ce-4f07-ad80-ec8a96e00d16@stanley.mountain>
In-Reply-To: <a956a3e2-c6ce-4f07-ad80-ec8a96e00d16@stanley.mountain>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 9 Jul 2024 11:51:14 +0100
Message-ID: <CADrjBPq13+k6LM=Xs3Eof9jXJwOHmcMoJUXAR18aHfp7fEeLcw@mail.gmail.com>
Subject: Re: [PATCH] phy: exynos5-usbdrd: fix error code in probe()
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Rob Herring <robh@kernel.org>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel-janitors@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_035127_626933_2D91B4E4 
X-CRM114-Status: UNSURE (   6.65  )
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

On Mon, 8 Jul 2024 at 18:04, Dan Carpenter <dan.carpenter@linaro.org> wrote:
>
> Return negative -ENOMEM instead of positive ENOMEM.
>
> Fixes: 497ddafe915e ("phy: exynos5-usbdrd: convert Vbus supplies to regulator_bulk")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---

Reviewed-by:  Peter Griffin <peter.griffin@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
