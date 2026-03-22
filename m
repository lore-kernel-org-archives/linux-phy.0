Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C255AD58CA3
	for <linux-phy@archiver.kernel.org>; Sun, 22 Mar 2026 22:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLV0NeJLs/gDGn2nNie+tB8sW7FhK9OGNG3V5MQOWJQ=; b=2dXIy1yZ5CjrV6
	ZvMz5kr7VIdXW+SvC0vMseHu1qRSHz5LWtzSLmfAK9LWu3uXqh2Gv0WuRAG5sxkE6UapaXgERn7lJ
	glmTF2lUYvJbyNWb8Fhe/YZ/d6CkYSMHlKpxIqL/fnfHLyfYAosuuN0Pb9rSEw2+Ex2JaZLL5wOuA
	14z8ku9yr7YYPjcObk2B6KVyuNYTBWmH8mTtZpStUN8kqKn8nmFqysOmaWDrsS8/8G4EYgumzRbVU
	S/8qjqAOpfNGXC5s/V9hJWpYjuGlSCva8QAQbIhilsMltAVgNvrUkR1Kar72Ivh0pmTgWw8RXXw9a
	aB4ZV2z3sFBMDmX4ab9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4RFL-0000000FiUl-0IBs;
	Sun, 22 Mar 2026 22:26:11 +0000
Received: from mail-dy1-x1333.google.com ([2607:f8b0:4864:20::1333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4RFI-0000000FiTv-1OQ6
	for linux-phy@lists.infradead.org;
	Sun, 22 Mar 2026 22:26:09 +0000
Received: by mail-dy1-x1333.google.com with SMTP id 5a478bee46e88-2ba895adfeaso3911369eec.0
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 15:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774218367; x=1774823167; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+mst3cEdRUvZvV8FPAK+ab6xPtMgdVjX2HSYh8y/2ug=;
        b=ivJ1A78p+Lk2wI2+Wox8a245ZVt61tbSHbhjRRuH+C7hHDJfHPogukaXYqS43uf8s3
         eIFrEN8rODY0/Zpz3nslfbuG7nDGDikRo953adOaKUv98ak5/Lc+eWMa7j8XMLrOZ1ZW
         jShzUkt/8RLtEI+0z5StnMU6WUThrrLA7frB1sVftT54FVAzotY0076VMEeTyF4VMIGb
         /b/2SCsbKS/ktEPqMnpiaugIs1qQfVuG4EkuvdedhlNjDvdnFF0IgpSkyjaD+yuXOZAw
         ammd/8mc40gfotWCAYiNk6LNVFMml0Wz+0fmipalCVk+nACf6IwO2IJS4IAUpGYgajJI
         +0Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774218367; x=1774823167;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+mst3cEdRUvZvV8FPAK+ab6xPtMgdVjX2HSYh8y/2ug=;
        b=fnVafZ2BwTLKDfeA95+7I87fSGksf/vyLiKkeD+tgrHISnya1CDiEYh+7M1sG6l7qP
         hfmMXawrWPS0QHh2irvStlIXJMdGRy4bBlnsPEssbBQJYKVTiZTDexwpEe/5tWX80jut
         FuToZqa86xLfMoUzczbZ3WEhMfQsGTUec0FFanFjQPLePvRzTtX6gXSfGFgiKh2csOQT
         wid3ZAK8qUxHSl8dEGc5zCJLgGNgPkJBZoiD2i4Jb+kdm22e/0UzHJs6kh2sW1PiY5Fm
         x1Q5ny7xoLrGplimOIz6XrOoaw99B6kPJDb4ZclqWzTg/BtrGrTenOj+CwYUM3+4wK3K
         FFIw==
X-Forwarded-Encrypted: i=1; AJvYcCVRi69bY4J4mPj/OamSdUD2BU/6N6+6/BLiKOeasWAsXEM0PzEFmUfJJDyQSMYZThk0DKoDxftGPII=@lists.infradead.org
X-Gm-Message-State: AOJu0YyulOtCarYjoul2C2e4L82JzzSH4YvddJPqOvD1jf7gyJGLJ+DW
	SG4SPt0i3lRHdQqkaqVz3UK+8EKS7yh9YGPm83H8GAPEP5Pp0xsaL4hj
X-Gm-Gg: ATEYQzwBIuY6j13yiy/dMl1edrgA//bXmXU+pghPgNTXQjW+xjFiVdWYUrLOJcJwy1B
	xONRFp0mZHJYX5JV2lQ+StacnQRhqLjMUlGB050/Z4I9V3+eeOb3EL5nLaDv0eQc4TlLwb1ZbLd
	7OTADviC0x7FkqR/4mRBimisTRBfVmZUFeJ+KdJHIvbucaxW7ITg8Cw6KxmXNZiCvBAKDs/P1R0
	Q+CxI2M9DNYsq17aEvvuYZs5oEK4ZxDNdU3hAJo6I9NwXvy1c9Mt+kuXW8Odli+39pCM6qnfaML
	CcdrPO2Cm2h3N9RjCi8B/oLgncs/d1dGuTfGTfcTQxfhIZDDRxaauwYgaqnz5No4bIFAK2WVexd
	GJKoi/IWFoDUe4A+KKEbIo1BREjnM99QAeLUz3jDIPFHi/17RmZ65PwFF0q+FbO1ZS0ictpe35h
	YQgJ7/Xr+apBCSA5wX0u6Er4QKKFxyOXYA/hNzTs/IX7hjAaiwzDvVHgjhfRZWZ0ml
X-Received: by 2002:a05:7300:aca2:b0:2c0:be45:6815 with SMTP id 5a478bee46e88-2c10981e483mr3694786eec.32.1774218367042;
        Sun, 22 Mar 2026 15:26:07 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:b768:22ed:3eba:aeb3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b31bef1sm13678234eec.26.2026.03.22.15.26.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 15:26:06 -0700 (PDT)
Date: Sun, 22 Mar 2026 15:26:01 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Romain Gantois <romain.gantois@bootlin.com>, 
	MyungJoo Ham <myungjoo.ham@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Guenter Roeck <linux@roeck-us.net>, Peter Rosin <peda@axentia.se>, 
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
Message-ID: <acBsI0PxvxDGymCa@google.com>
References: <20251209-iio-inkern-use-namespaced-exports-v2-0-9799a33c4b7f@bootlin.com>
 <20251209-iio-inkern-use-namespaced-exports-v2-2-9799a33c4b7f@bootlin.com>
 <20260111170222.43aee69a@jic23-huawei>
 <20260322122529.62093f12@jic23-huawei>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260322122529.62093f12@jic23-huawei>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_152608_387673_3BD509AB 
X-CRM114-Status: GOOD (  22.55  )
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

On Sun, Mar 22, 2026 at 12:25:29PM +0000, Jonathan Cameron wrote:
> On Sun, 11 Jan 2026 17:02:22 +0000
> Jonathan Cameron <jic23@kernel.org> wrote:
> 
> > On Tue, 09 Dec 2025 09:25:56 +0100
> > Romain Gantois <romain.gantois@bootlin.com> wrote:
> > 
> > > Use namespaced exports for IIO consumer API functions.
> > > 
> > > This will make it easier to manage the IIO export surface. Consumer drivers
> > > will only be provided access to a specific set of functions, thereby
> > > restricting usage of internal IIO functions by other parts of the kernel.
> > > 
> > > This change cannot be split into several parts without breaking
> > > bisectability, thus all of the affected drivers are modified at once.
> > > 
> > > Acked-by: Sebastian Reichel <sebastian.reichel@collabora.com> # for power-supply
> > > Acked-by: Guenter Roeck <linux@roeck-us.net>
> > > Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> > > Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>  
> > Ideally looking for a couple more Acks.
> > 
> > If any of the maintainers of other trees who haven't already replied
> > have time for a quick glance that would be great.  I'll spin an
> > immutable branch but I'm not really expecting any non trivial
> > conflicts unless there is a new user in flight that I've forgotten
> > about.
> 
> At this stage, given I'm still waiting on replies from a couple of
> subsystem maintainers, I'm thinking we'll do this next cycle and I'll
> provide an immutable branch based on rc1 for anyone to grab if they
> run into merge conflicts in linux-next.

Sorry, I just acked the input bits in the patch, but in general I feel
these kind of mechanical changes in consumers do not require an ack and
you can just go an apply such changes.

Thanks.

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
