Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D2AFD116F5
	for <linux-phy@archiver.kernel.org>; Mon,  1 Dec 2025 17:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNmTMGbPJlukr33cOKVaZY27SngSuReEExGZ4L/wdCk=; b=VH4wWKwO6ZYcD4
	pSqu0fZsor/yZ3bwOXEDXblZg3Q8HpQnRp6g5Djbil+TASe8eOEqnTgdZPNsEN2sBUv2d6tRk1qvD
	Gbh/sFjrtPOCyZRzHma22CvL6nYYuDLSKf+KEh9NvmBuxY/wWZXXehvRH0Cu+7EPs7vNZihp5leeo
	wn3+os+0h4Qzgxz2CLHK8Np/hixpLu6yn0k7DW6ikLQQks9MSd8mdAQeFK1Ih0bRYS/Y4vhUnxEUT
	42st4vcNxQqdyDACWwLRF9EBJge8oXnZFYgdN17LIjGOAbsBQMKVsVjLPH+1ykUnkzEN/OXlhMzaj
	RWsgHByBLig9Z2L5N+ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ7VK-00000004Lds-2dvH;
	Mon, 01 Dec 2025 17:16:02 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ7VG-00000004LbY-3u5H
	for linux-phy@lists.infradead.org;
	Mon, 01 Dec 2025 17:16:01 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-45085a4ab72so2135376b6e.1
        for <linux-phy@lists.infradead.org>; Mon, 01 Dec 2025 09:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1764609357; x=1765214157; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mXBvbePBmN0aGW+rjYL5kzNiYaDe50sZg3kuC1eECMg=;
        b=I1KyIvuJUFy5jFk0CCKJuXJa9z3OdG9VUpwTWl/KX6iQuUmYCe2TtKK7sio9EAbou9
         YELTkoWGFXgDb/ssuQ7dm7OnzahNbXfLnG8aFleOEMlM/K2vUbUfCWJCEh2V5QoS6wXL
         PrkGmuMbTsYlfAfbqhAutgya0/nt2BN87fUS1TL1OQ0W1tx4Dj10yU8N4CtWgolQGp7i
         WXMASSHYY+hkumb8Z/K4B34Bl91rFVNTG/Kszc1K6ykriw7G1tX4ER40vJmSpIGWG3Np
         WxaeXV17DcvXp+GkuApGge5pMaEUu9R4QolT2fYEmcc9sI67pB6Ssp1WjzQxhwaVJQu6
         vVYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764609357; x=1765214157;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mXBvbePBmN0aGW+rjYL5kzNiYaDe50sZg3kuC1eECMg=;
        b=nBYIEgNL34Dp9PdHn1H4ISW4Rc2pvIAKHaEN336Mh+/qRahukXp74sir83t+UyPJx+
         oBGNT6NuDx52gtfX8qHbvbyXRvhUtxUOYN77+O/pyL0WDWtU+zEA7yvgDVE7dxxlleL+
         MkVlc0U8DG4+0EagEuY/DAgFiZ9kX0r3EP7Q/b09DdUZuoZ+wbi8DRIFetS/SDrWyITX
         ko4AZDCEsf73c+SLdG83i0/1s9ybvLD3SOMoj4pWGoYPk1o/+G8mZqBeB54WCS9s0qfo
         N2oj1gG+5o9mxQghHD8jwrSYMy40cOZZ/v4oMEs+a2GJu/Vr44mRA8srKY8xUa1UkV6x
         Hpng==
X-Forwarded-Encrypted: i=1; AJvYcCU/EvbELpe9vVMUESRH8uk9bcFL9/zX/wPej9GPXCtalXBc+rtWNkdqaXPUc4dS906kpwdiYaKvcfc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzowIEH2ZaqLy+aYumVN4XBFqkBiGeUVmk9syFAf5dbZc2v/RiT
	q+FmJUqZWoAYcre1Kku6f/IEZEwsJxLxcIZXtZS+AEAtV0aBtfGJ980yKA4q2RgrzyY=
X-Gm-Gg: ASbGncv6/sydCEIK9DF4tZpMU85bXSvkmYe7f0L54RQfH5LugcLz4s2G+3nc3bKsVVn
	9r63hU27Eote6FA1LXOfWBjM0xmmckZ3xezdx5lunTgsu96xJHZIlZcFAeVy0U7ziXoVhaVHibM
	lYRN7jqbybvoY2Y8po1CZJzmiPw+etVyR5o/mzgCq6PsdtwIgIZGMWsaalOcSoSHc2KaHJRTYDS
	2YqIIYM3VcHp2TposY2lquPTQG+a9hOjN/GwVIQHbbPxTXrdwnJkKwpt+3UZAjnNpOra4LRUpPs
	mf8gEvyWmJEYbTg8/ZNCo07efXEfCr6MihzErPJGOV1xKhBhqatajvY73tyWUACpFRhbEAVHyBR
	815XKLY0LK9Gs+T9zJcbdpw4FNJHNoKucqsCqXf0xD05thx7LTRxibLVVhapNhqNHbPKNR1cUdA
	otj8fd1wBWtGEZQbmMrtDP3WTUxDvbV2PVD90z/m7Ym5ti1PQF/K1cLdr5qA==
X-Google-Smtp-Source: AGHT+IFhXzu7oIvN//K+0gQ9fSmHlhexzrACWF7hMjJsE/gYpW4bjA3882odDNc+t9DkOzPtuw0t9A==
X-Received: by 2002:a05:6808:1790:b0:450:65dc:1fce with SMTP id 5614622812f47-4514e5f84ddmr11527679b6e.3.1764609356945;
        Mon, 01 Dec 2025 09:15:56 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:b67b:16c:f7ae:4908? ([2600:8803:e7e4:500:b67b:16c:f7ae:4908])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-453169b2a51sm3922009b6e.4.2025.12.01.09.15.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 09:15:56 -0800 (PST)
Message-ID: <78240755-44dc-4835-aca5-99540cca0304@baylibre.com>
Date: Mon, 1 Dec 2025 11:15:54 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] iio: inkern: Use namespaced exports
To: Romain Gantois <romain.gantois@bootlin.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Chanwoo Choi
 <cw00.choi@samsung.com>, Guenter Roeck <linux@roeck-us.net>,
 Peter Rosin <peda@axentia.se>, Jonathan Cameron <jic23@kernel.org>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Mariel Tinaco <Mariel.Tinaco@analog.com>, Kevin Tsai
 <ktsai@capellamicro.com>, Linus Walleij <linus.walleij@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Eugen Hristev <eugen.hristev@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Hans de Goede <hansg@kernel.org>,
 Support Opensource <support.opensource@diasemi.com>,
 Paul Cercueil <paul@crapouillou.net>, Iskren Chernev <me@iskren.info>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Matheus Castello <matheus@castello.eng.br>,
 Saravanan Sekar <sravanhome@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Casey Connolly <casey.connolly@linaro.org>, =?UTF-8?Q?Pali_Roh=C3=A1r?=
 <pali@kernel.org>, Orson Zhai <orsonzhai@gmail.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Amit Kucheria <amitk@kernel.org>,
 Thara Gopinath <thara.gopinath@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-input@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20251201-iio-inkern-use-namespaced-exports-v1-1-da1935f70243@bootlin.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251201-iio-inkern-use-namespaced-exports-v1-1-da1935f70243@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_091559_177494_4CAFAE2D 
X-CRM114-Status: GOOD (  11.09  )
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

On 12/1/25 4:59 AM, Romain Gantois wrote:
> Use namespaced exports for IIO consumer API functions.
> 
> Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
> ---

...

> diff --git a/drivers/iio/dac/ds4424.c b/drivers/iio/dac/ds4424.c
> index a8198ba4f98a..33d6692f46fe 100644
> --- a/drivers/iio/dac/ds4424.c
> +++ b/drivers/iio/dac/ds4424.c
> @@ -14,7 +14,6 @@
>  #include <linux/iio/iio.h>
>  #include <linux/iio/driver.h>
>  #include <linux/iio/machine.h>
> -#include <linux/iio/consumer.h>

Unrelated change?

>  
>  #define DS4422_MAX_DAC_CHANNELS		2
>  #define DS4424_MAX_DAC_CHANNELS		4
> @@ -321,3 +320,4 @@ MODULE_AUTHOR("Ismail H. Kose <ismail.kose@maximintegrated.com>");
>  MODULE_AUTHOR("Vishal Sood <vishal.sood@maximintegrated.com>");
>  MODULE_AUTHOR("David Jung <david.jung@maximintegrated.com>");
>  MODULE_LICENSE("GPL v2");
> +MODULE_IMPORT_NS("IIO_CONSUMER");
Is this actually needed if we don't use anything from consumer.h?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
