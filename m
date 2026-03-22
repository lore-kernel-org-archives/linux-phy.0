Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B402D58CA1
	for <linux-phy@archiver.kernel.org>; Sun, 22 Mar 2026 22:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gva8Va/7Se/0LwzeoM+cyzGu/y5Sd64yax7XIFaJkIg=; b=11fyA4AOYmr7Eb
	EpIK1+lQ3T9LP3K8KhUsMxDkwyUqTlXJH/rzFel3WsYsdFREm91PI5KfLXcOIeS1dn+WG2TPpXQ8e
	N5VMwEg2LJFzF0XB5r+P1mwxBYTyxTA+H+9IM8khXYdFh7U/8xMLC0i9ktDy+f0WazSyLsBl51FF1
	/4CzOoo6ts2HiyuVw0arPGLxvi2fIlBZ3lnRjdEWh/MLMPv3UUIs++x4ipS9y4WDr87uHMVw6TnFX
	nvCUpkd7XD/o35vQXtsUWyVgfFei9uB1uIrx/8g8eWLfr72zBrwBZAdnKkNq5zqLTNE/zmD32cfo0
	9d7KapRUL2ng1/7iHqRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4RDk-0000000FiQd-1yvE;
	Sun, 22 Mar 2026 22:24:32 +0000
Received: from mail-dy1-x132c.google.com ([2607:f8b0:4864:20::132c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4RDg-0000000FiPp-2iqu
	for linux-phy@lists.infradead.org;
	Sun, 22 Mar 2026 22:24:30 +0000
Received: by mail-dy1-x132c.google.com with SMTP id 5a478bee46e88-2c0ecaae7dfso6138569eec.1
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 15:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774218267; x=1774823067; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wHlux91S1pcszks5LnQqDKbd7Lhdihe1iwVw4ZIiPgU=;
        b=gxd8CJTZ9AQODd25sqVcrR1WH+FRPYbsmqZHvqGDv56KQbQ3qbIfAz83UJWdMuLZNH
         XXw4ctwRdZkj/cg5vMeh1IwuGpNzRXqHGO+o0S3/9j0P46H3YgcObQqrf9N4G3gQGKBz
         TNQ+D35/iC9AQ8CdEHsfk0pjKajVKikrel5ujvhRh3mKuUD4dpI6UNKLKNFHXZlD7cBk
         jGH7Pmpv8Xd7B6NlpZdo/XNquSIstvFioTJMFLGc2YT/jEUGtP/YqcP6hLISvAjg3W2e
         LGB8BaCCHKXqUr6+EEDrau/M1A8YkFxr6/U5vUTRs+uArut5Jl6eqX2ZuQzuzR9DEnMi
         8S3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774218267; x=1774823067;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wHlux91S1pcszks5LnQqDKbd7Lhdihe1iwVw4ZIiPgU=;
        b=Awjuqm9NCe0gUTqfRWFgyokSz73WFi6lah/xJ01KD+62gbfLAXNENbysPCTWuNQvjI
         Pugd4hCPFmxg195Gl9JfQ6Z2mcr7AhWR/tA8vm0EMVW7+hvtZf1P9YUtAP35R7UeDg6x
         aD1b/gh9Vz2k/lZNtCJPRt7gMe9/2hZQF30JlCvQlUOAUzwUFegYQP2/slzzPa/IpC3K
         TenNwMHpJJLiZtUuPTu3JwXi25ys8enM6bgLljH94e+4rLNvFePsk36g3sEDE3qNW4TQ
         6wGAuQI0sJGnY89U/7B1Zyy6Em91FaeBZxdmtnfVoRAllO7tpVbUEVV8sbidzrAKi6tB
         P7lA==
X-Forwarded-Encrypted: i=1; AJvYcCUIXUy2jY6KjndQzXTpLo61BIx/3P9Ecere9ENvjFpkxyJcgXOHY+KR7Lwwe81jPkFMLphNBQuJeds=@lists.infradead.org
X-Gm-Message-State: AOJu0YyePyoK0NdsMKB7kuWgQnVHH6IUshvLV1ZSN8zy6d3Ap/3+tJBo
	knk+ImvPgwzphbrs3aiJ+Mbxug/8EoQU6mX2xWdYqPLjWzd4kDkujKSM
X-Gm-Gg: ATEYQzzVAo9Qv9ztt7qdnqfj1O/PSx9jtFvO8KsMcM0wScouxhryNOLgBoqFeuP1R1U
	IUybEEajzO68JDzbsdJvYbjCCX3MWeP05cxEH7zmkzpFoWELBVc9rhXEQxgNd1MZq6CE58VAexI
	SuZaR27kfnFNHMTSvzBgr6kHzUNTdFLfi+yGW176+cZNcv/9t1K8EAahaMRqfZcqYvJSzB1qsJR
	jwG/DPk60v5MPCGkUPjKabduD+KZPUs9xc2u3pGNX0jdpYqrS+hEG5EP2zAqED2IEXZlRocbYfo
	Aprlw0PdxDHTWMrY8TwV1jiyI+EfUUIMF+TWWAM/lbQv3tC5eYsbyo/YFHAuAMV8NWsV3NuHny2
	nLwiXg71NhB7wV6HzFPreOqaEjjSmJ0UUTFRo5dG1xf04v+VHPrVIx26ntUKZQGXz8j6sZSKtXq
	tNACiD5vN2kvBnganNPCo95k9Ve8DwVJlLiNijoh/Z3ncvQbt+YslLC4Ap/1Hq0CZo/xV1h8zRd
	/o=
X-Received: by 2002:a05:7300:134a:b0:2c1:7ca:ceb1 with SMTP id 5a478bee46e88-2c109567522mr4864099eec.6.1774218266887;
        Sun, 22 Mar 2026 15:24:26 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:b768:22ed:3eba:aeb3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b1a88e5sm13452469eec.13.2026.03.22.15.24.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 15:24:26 -0700 (PDT)
Date: Sun, 22 Mar 2026 15:24:21 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Romain Gantois <romain.gantois@bootlin.com>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, Guenter Roeck <linux@roeck-us.net>, 
	Peter Rosin <peda@axentia.se>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Mariel Tinaco <Mariel.Tinaco@analog.com>, 
	Kevin Tsai <ktsai@capellamicro.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Eugen Hristev <eugen.hristev@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Sebastian Reichel <sre@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Hans de Goede <hansg@kernel.org>, Support Opensource <support.opensource@diasemi.com>, 
	Paul Cercueil <paul@crapouillou.net>, Iskren Chernev <me@iskren.info>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Matheus Castello <matheus@castello.eng.br>, Saravanan Sekar <sravanhome@gmail.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Casey Connolly <casey.connolly@linaro.org>, 
	Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Olivier Moysan <olivier.moysan@foss.st.com>, 
	Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>
Subject: Re: [PATCH v2 2/2] iio: inkern: Use namespaced exports
Message-ID: <acBr-W2ILu9tnMyd@google.com>
References: <20251209-iio-inkern-use-namespaced-exports-v2-0-9799a33c4b7f@bootlin.com>
 <20251209-iio-inkern-use-namespaced-exports-v2-2-9799a33c4b7f@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251209-iio-inkern-use-namespaced-exports-v2-2-9799a33c4b7f@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_152428_695200_A6FF206E 
X-CRM114-Status: GOOD (  12.66  )
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

On Tue, Dec 09, 2025 at 09:25:56AM +0100, Romain Gantois wrote:
> Use namespaced exports for IIO consumer API functions.
> 
> This will make it easier to manage the IIO export surface. Consumer drivers
> will only be provided access to a specific set of functions, thereby
> restricting usage of internal IIO functions by other parts of the kernel.
> 
> This change cannot be split into several parts without breaking
> bisectability, thus all of the affected drivers are modified at once.
> 
> Acked-by: Sebastian Reichel <sebastian.reichel@collabora.com> # for power-supply
> Acked-by: Guenter Roeck <linux@roeck-us.net>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>

For input:

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Thanks.

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
