Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC37DC27C4F
	for <linux-phy@archiver.kernel.org>; Sat, 22 Jun 2024 00:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xBBs7AInLhPq2QB09QKUQbrdQP2cQi41dHpYcc2WF8s=; b=prSG/DBnLqvptn
	P1Yw8YDXj/Xd2PjoNEiwWIGJrdhJYqMPURla6f5a1uos8eSazwgHjamaSc815Ywo7xaVxhgG1jtrc
	Lb8cPnbkcIU/m9kZgFmbBfB1HiJtFQa6TcUfJk3ICJE1RG9wkRJved+TzuumYQlpuPk4a1uHG407R
	ngoidoFBTy1rYSTPUC4/smJwj5a2fs/b3DbQA0vUv8UvZq20PlT9eHnUa10V7KEgUFbqnwvK/3pwd
	rPvQO/MgOq6oHG3EF0NouO0/8UkKb+pGM9XfdHYDJ4ag2XfDM5WKD8KFW0TdQ4pY7bhDoGjy7CGOJ
	KCqWSy6XGhUI61gsALsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKoFq-0000000AxQp-0FeE;
	Sat, 22 Jun 2024 00:05:18 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKoFl-0000000AxPM-1F1P
	for linux-phy@lists.infradead.org;
	Sat, 22 Jun 2024 00:05:14 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1f70ec6ff8bso230885ad.0
        for <linux-phy@lists.infradead.org>; Fri, 21 Jun 2024 17:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719014712; x=1719619512; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2NFHVTARxY6oz0ND/xOG9DTefTphGU25EZtwr7kbv4k=;
        b=ba8stpuSyKgVCgWu2TyRA4qNkRATIGjQIFR8qoVnRnNdLMR5N9gpI9L39rmK1qoWeH
         8dsoDP5zu6zY76EMDDbBZ7Rzs+kiKwrzt4zx1y7QfUEiH0UhV7gOXgARxo29L2Uheo0H
         MM7Hbwl3C9wwgX76ebJGLODibkbLrYhYCWknppwWr0byGo0oMts/LHP6ytaVhTijJOfl
         NcvszfqRuCrol5HBc762t3NOO0Q5RVzoF/+u0tGn/sw6Y+IsgvDH/R7DuQoDJP+SSDKw
         nwjGDYw1e6bazvUPcRJ8z8l+ZsoqWiTNk7HT32GAN/wnvPC6n80kJ91z/Zinx11bYqRO
         xrDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719014712; x=1719619512;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2NFHVTARxY6oz0ND/xOG9DTefTphGU25EZtwr7kbv4k=;
        b=j48k+Wp0RfuQCXCs7F8Q6qkt0nYncQGvgM9+83C7umTV/dPnurQPGliqgI450bVPax
         CC7ep+kWgP7w5+BFHOCX0+m71srQzDL9CUj8YAMTg8teogqTtUxctjdXM9xvcUZI6/o0
         ikaZzBHU1k6uLLuEGLpMz0rvcu/QXTK1bm0pF2GWd0rMzlIV0YOdqYRZ47Ad4RuWkFpK
         KAoYQLnLgO9eIhezozWxeHJKZoIzHjeCtwVM7By9jI8VkD9g0lu4XrZZbQT6QBG+1S3V
         ElY7GDYoeojzzdZJCw0XVcwSaB0WGpdqM0tsXoS6t+uVFuPKTasY+T/XtCwTxvU2mngX
         BmlA==
X-Forwarded-Encrypted: i=1; AJvYcCWBu+kgPxMSac3yJn/+pRpVSdXia88nj71jtSBMrEtJwEvAsMNy1I6N6d13qDAvluR/wNQypbRCfR7ZUEVgWuU4KGhVjMmmKZQDvecGWg==
X-Gm-Message-State: AOJu0YwuDTPYuRUOQ1JytvNc0ag+2BsAsijyym1xkHbHGTS/+gvCMeR6
	duy/2DPgqkZfT0dR0R4+yXzW1UeS9yYLge2IPJZBSwY+laEBpL18bs8ytokoYg==
X-Google-Smtp-Source: AGHT+IGDqe+3EUcAreiXyt9Qnv6KoLaGftjNkz08Y2Ium1Q4hAkVCIpw2uQMNCaRjKkz1QhQFpj8/g==
X-Received: by 2002:a17:903:33cf:b0:1f2:fee2:82ea with SMTP id d9443c01a7336-1fa09ffb017mr842335ad.11.1719014712177;
        Fri, 21 Jun 2024 17:05:12 -0700 (PDT)
Received: from google.com (7.104.168.34.bc.googleusercontent.com. [34.168.104.7])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-706512ad7b5sm1982244b3a.165.2024.06.21.17.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 17:05:11 -0700 (PDT)
Date: Fri, 21 Jun 2024 17:05:08 -0700
From: William McVicker <willmcvicker@google.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v3 3/6] phy: exynos5-usbdrd: convert core clocks to
 clk_bulk
Message-ID: <ZnYVNLkAmUGU6ZVN@google.com>
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
 <20240617-usb-phy-gs101-v3-3-b66de9ae7424@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240617-usb-phy-gs101-v3-3-b66de9ae7424@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_170513_371003_45BD0854 
X-CRM114-Status: GOOD (  20.01  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 06/17/2024, Andr=E9 Draszik wrote:
> Using the clk_bulk APIs, the clock handling for the core clocks becomes
> much simpler. No need to check any flags whether or not certain clocks
> exist or not. Further, we can drop the various handles to the
> individual clocks in the driver data and instead simply treat them all
> as one thing.
> =

> So far, this driver assumes that all platforms have a clock "ref". It
> also assumes that the clocks "phy_pipe", "phy_utmi", and "itp" exist if
> the platform data "has_common_clk_gate" is set to true. It then goes
> and individually tries to acquire and enable and disable all the
> individual clocks one by one. Rather than relying on these implicit
> clocks and open-coding the clock handling, we can just explicitly spell
> out the clock names in the different device data and use that
> information to populate clk_bulk_data, allowing us to use the clk_bulk
> APIs for managing the clocks.
> =

> As a side-effect, this change highlighted the fact that
> exynos5_usbdrd_phy_power_on() forgot to check the result of the clock
> enable calls. Using the clk_bulk APIs, the compiler now warns when
> return values are not checked - therefore add the necessary check
> instead of silently ignoring failures and continuing as if all is OK
> when it isn't.
> =

> For consistency, also change a related dev_err() to dev_err_probe() in
> exynos5_usbdrd_phy_clk_handle() to get consistent error message
> formatting.
> =

> Finally, exynos5_usbdrd_phy_clk_handle() prints an error message in all
> cases as necessary (except for -ENOMEM). There is no need to print
> another message in its caller (the probe() function), and printing
> errors during OOM conditions is usually discouraged. Drop the
> duplicated message in exynos5_usbdrd_phy_probe().
> =

> Signed-off-by: Andr=E9 Draszik <andre.draszik@linaro.org>

Tested-by: Will McVicker <willmcvicker@google.com>

[...]

Thanks,
Will

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
