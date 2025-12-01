Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 251C7D116F1
	for <linux-phy@archiver.kernel.org>; Mon,  1 Dec 2025 20:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmAZ/uBoEvD4HJm8sjg+X1USdhWDeJO+OlCp/RGERYc=; b=LBtF4mcoxlP3Qi
	PE9pZtHQ2HFliyRRfm2ShFsrsD57P//8Ov+u7ejeKNIuQeosgmq+F7Qi3JakWgfmVnsW+RIzpBDOX
	pTJoLEdiKVlrhHIV6SFRw06G+ZL7EwZJuJRCWn0OYq+CSDV+fVTwFDYm+i1Czk9/Tngx56+pLaT7F
	M1vefgVffoCHE/sFIjBLcK3qlTpVNmk3dpOb8bOw7ZHzcMthcbNuiqSez7AY4oSZQk3MXHYzIzS2p
	jDZOvJnvR7CqpRvfunF7Cu8qrK2H8ROHjBAa04DpcNk4QF/YKEDFrI17tHn4F6jfibJe8R4ZvvceD
	ybAtuxfntv18CpEo7IXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQAOA-00000004UuY-1YP1;
	Mon, 01 Dec 2025 20:20:50 +0000
Received: from mail-dy1-x1334.google.com ([2607:f8b0:4864:20::1334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQAO8-00000004Utu-0db4
	for linux-phy@lists.infradead.org;
	Mon, 01 Dec 2025 20:20:49 +0000
Received: by mail-dy1-x1334.google.com with SMTP id 5a478bee46e88-2a45877bd5eso7118747eec.0
        for <linux-phy@lists.infradead.org>; Mon, 01 Dec 2025 12:20:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764620447; x=1765225247; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tl4KlTdJXESH1UKuri6PD/44H7q8TPZNg4IF3xxQ4Rk=;
        b=f6hpY6381vHApfLhN0FZ95pQOOWdoT8OcEyVAarol1hhZoFQ9pyPO93q7y/2pcuaz5
         fV+qLtK+Y4KEtn3dSWPUVRBHrZ+93ims/3dDC1PfxkIQAQoHn0M23GM0Y4N20JpRH+oZ
         wCK96OkMEomWnZqBn+ARmOYwr7eDGocXeSiU9PxXYeTZETnyP/2ooeIZclyFpEM9L6Ac
         C13Ii7CriLTBYLnI7tU6pEhtWG2uzPdrzpdHYVsjrFXpHM9+porQ2sC1/j/dXnPQphil
         SPVpw11UJcQvhTOMBCjdT8/53dWqQUwFZAs2wJy2fBlRMJylf9nNv2edXFIiYGy6rrrB
         +QQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764620447; x=1765225247;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tl4KlTdJXESH1UKuri6PD/44H7q8TPZNg4IF3xxQ4Rk=;
        b=UVds7Oi734YfSdszoV4fyk7eztwvS62r1L/y7IigXhGnWRbfLklgreQdIEi6RIp95a
         L5OVjfNcP9lHP5c7C9ER5EcjPHG9jMG7EcJPO3mXUhJXXLgpuPvpXh6Rm+IC8lqxGzte
         TwN4KZpBvDZfwC/PyxkgaCbq5t+4mhK16hJe67RYeVqbiKsO9J+BKXu+oyDV/4uZb9ff
         HuoIgZMV7NTSeoTqMpGrCFsBmkDFH1HfKAj41pWul6cxZUFBlbKzbJSc0xYaANIH48xr
         5tgx6+lprGI2FVXxWJg5bZfPMuJovvtIfI1xaeCJH7u6DrEa+1WQMyl7ArcfiVHZHtZg
         fPlA==
X-Forwarded-Encrypted: i=1; AJvYcCXe5F0n9vkRqfKS8HKu2cSQa1jHn79isVsJjPIkW7MoSbcP75L1bqGHTp55kNntWdl0zC+3FDa8sOI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwrtoujEHPqnLIcN5LCG82TRHD/MrgmI2y+P++6JugOwr3FkuAv
	/6uKE/W27Oil9WZkgeOkZv+9iFndktdL6VDf9v8eZgbjdo1QxSViyMsm
X-Gm-Gg: ASbGncuq33YRzjiGTqgG4FBVtzwAu65AKi80GIUVBDK7ML5forVQxeNUP8OlxTrmB16
	zh978e12r3h4sUqs8g3uQXabNfjCaj06bOb10Hwx2rCYwdl65tWzYqhiDX86Jqjc2MzQLs9n92o
	8zs9mIYmc08uC9HOXTRX3Pxb0pxG4b+uSEODBwnHbvgWOUNOkfAwl4m9uzjmwC6FhiHT4Pa2Zp+
	Zm4La2rhTfVbJ5EBsLvDO70EwMOp4tP4nBIxU2G21+wegqnAFByNMVZA5psZdblF1uoSiUj2v9F
	xngvJ5ej7o4wV4FYy0KoFic6Ozq/gDcI8ELWxVS1TzFCrNQreDPelxqwAUxgtOGnlVe+ypkCnD6
	78WMYsnIJUfcderrp8kP8Qin0v5L4sAn2cnU38xyPEoV9GjVX9qtnLcviY77+MQgrVpt6N6bDA3
	Ek2ZZJRjKvCuSlAnoCDD5lpFk=
X-Google-Smtp-Source: AGHT+IEKYg7dqAFBQA5yqyy/4gBG0pLJPO1wg8rofbFAF4WSvH7ZOKVnsnUBP8EQlCPhsTPLoRMRqg==
X-Received: by 2002:a05:7300:ce8b:b0:2a4:7dbd:1d7a with SMTP id 5a478bee46e88-2a718664ddemr19837071eec.11.1764620446566;
        Mon, 01 Dec 2025 12:20:46 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a96560986csm71991900eec.2.2025.12.01.12.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 12:20:45 -0800 (PST)
Date: Mon, 1 Dec 2025 12:20:44 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Romain Gantois <romain.gantois@bootlin.com>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>, Peter Rosin <peda@axentia.se>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Mariel Tinaco <Mariel.Tinaco@analog.com>,
	Kevin Tsai <ktsai@capellamicro.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Eugen Hristev <eugen.hristev@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sebastian Reichel <sre@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Hans de Goede <hansg@kernel.org>,
	Support Opensource <support.opensource@diasemi.com>,
	Paul Cercueil <paul@crapouillou.net>,
	Iskren Chernev <me@iskren.info>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Matheus Castello <matheus@castello.eng.br>,
	Saravanan Sekar <sravanhome@gmail.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Casey Connolly <casey.connolly@linaro.org>,
	Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Olivier Moysan <olivier.moysan@foss.st.com>,
	Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-input@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
	linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH] iio: inkern: Use namespaced exports
Message-ID: <8d7a5210-f88c-4af2-80f8-61a390586fd2@roeck-us.net>
References: <20251201-iio-inkern-use-namespaced-exports-v1-1-da1935f70243@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251201-iio-inkern-use-namespaced-exports-v1-1-da1935f70243@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_122048_187228_850AA816 
X-CRM114-Status: UNSURE (   9.35  )
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

On Mon, Dec 01, 2025 at 11:59:43AM +0100, Romain Gantois wrote:
> Use namespaced exports for IIO consumer API functions.
> 
> Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
> ---
...
>  drivers/hwmon/iio_hwmon.c                       |  1 +
>  drivers/hwmon/ntc_thermistor.c                  |  1 +

for hwmon:

Acked-by: Guenter Roeck <linux@roeck-us.net>

Guenter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
