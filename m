Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BE09D3B7EA
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 14:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87qfXv11Q4ggdjjpuV89ElHduTYDIZZPHWIorcEv/Ic=; b=42Q88sI5PnYBjf
	UrGFHk5WLWbrscIts51G29hWfqyIJDgzm6G6ZLJTEI/BfDEP7/n6l0sBGM6sI/QJGtYRCQNHDvhxG
	LWOtLTzHZG5ZaJ3W5P3ysQD8iFftuAEw6rOg4rXYXwQ+bYqitt8IUoHqUDZplOmSjbhmGlKv4hthu
	m7x4jBCPZ/DBw+ZJIhLWfRhz0zIbJyMqXD7wPrW0ukhIawM5jGP49nXxqCWvcIexF6I+Zp3W/8d1V
	IKo63RVlNk2Fau1sR/NUQ8VR/E3y96zcUU5lMwqlOjFf0E2+UNh2q4m01vJq/2uLY25dXofFgGpZP
	Fw8txyzYcPHHBvl8cnww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSyyg-0000000EQ8F-3pCS;
	Tue, 09 Dec 2025 14:46:10 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSyyf-0000000EQ7V-03d6
	for linux-phy@lists.infradead.org;
	Tue, 09 Dec 2025 14:46:10 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-b72bf7e703fso972683366b.2
        for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 06:46:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765291566; x=1765896366; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4fmZfYSUNdsaSTLHpM8yeyepmqTOQi5Ko0nHpOXwYuc=;
        b=GCeXD6tJ7ihBJfQyRIxSh4yD/BG10w2s0O7cn6BvRZsRkan9E4CJ+HiCTXXjSoIEpd
         rXR4wKLJaOo+WuJb9sp0d+RYTjWXVh3r3D6CtNVZGKYFb5rgvoLMAWAyNqIPYNbZmclB
         hKah2eivo4cYWYlY1OKNoDA4402WbVhxpO9KfeCsSzWaVlSx/T1y1sUot5s/hvNcXRIg
         oprMFjFFIUiQs5zFiIJYBZwYAxgXr8nyA6RrWF2+yJj8hAoEd8c3kMOvNqwVjFuJ/ZP2
         Xjyw6wfVIlKh5rzsLh+9zoF+/YNRu8WTG8MGOvsz/05av/7oO3Kc/1Lx/33krbGVIB7H
         b6dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765291566; x=1765896366;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4fmZfYSUNdsaSTLHpM8yeyepmqTOQi5Ko0nHpOXwYuc=;
        b=C6dzsxbhdKbzjrvGlesd/fkVQ7EZbv9kX5Ch+W+h9mknv9aVj5AiVR6ujEYRKYtv87
         OtsiY4MdNdsLg8NSdFj+6R4Ozc21BLF09rBjF/qEz8DPjhySf9tyeUUpAC7Sg0PnQ1D1
         IeE5lAofFgunPHbsfF/WNPDCqmie/DWlf0BusgSC8+WsDkufSoTOjxmTi6xtCvsVPr+7
         Up4EsH4PNevAcPCp+6xe9TrYnN6ejM+3Ndn/H6oGiicV0W4L6wTJhfRZ73Z3kG0xm1CG
         waBDBghAfYxYoP2gRnYkISrL6ls+1DkxIPyQ1izxENHRMTu1IPGXfnqjY4N2JBe5gjbD
         J3pQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhH6dS+KjrDWFtkaPaUQlEtNI0APkU5BjJX6wv9elQbCDileKjJ5tHr612Uu1IivaXSdYv3OadmF4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yze3vLz860M6u/LsmZS82LEcLwPu6QGRmOYJeyMzKhDlEjJacrP
	LYnuYZnLahQHqanM0jzVMc+uQOcjx/s0G3eDNg79p+1v72TpNkZwmJYjTo7lmuRpOI0FwkiLMsO
	z03gX5A2lJTgrq15wnccAbUfvFQ1th18=
X-Gm-Gg: ASbGncujsPxB+6KH22kuwMWhiB0J7gT+lF79R4X8osuYMbZ26ZMHmzZaC+WPoPq0q/e
	9JhhF63/MVZ/h6HJ6JrSSBA0M3t022AOEdnqGJvAJMY0jc5wFEJS4sHZQV7PHcke0b1P0Wgty0p
	IRVcu2py8TSdZj3BEdF+H8iRmbLsxXpcaHxidbH8RH6W9M8jfExfJKxz8PBL58QErMYKKQAmy2K
	+d3Rrv3snCb76bN+wJ8lJuy33Jl8TST69jHzwZ9quqhuluoMODQZ8Yh5eo6bAvkqH+8HlMWwz4K
	k85+ZW2ZjCGW/kev6KbL2PtavR7BKVY++pGvflQDDx66y3fmPFQaThoLdifAydl2DKgcS04=
X-Google-Smtp-Source: AGHT+IGlXu3dCFc83X6xkCFhuuTuzxpgBAzwDgILyS6ZUDAbBGi1U97b1Qfz8jIne/sjhUc3CyUOVqmVWZN3jo3XIyM=
X-Received: by 2002:a17:907:d9e:b0:b73:845f:4432 with SMTP id
 a640c23a62f3a-b7a2455d577mr1325347966b.32.1765291566315; Tue, 09 Dec 2025
 06:46:06 -0800 (PST)
MIME-Version: 1.0
References: <20251209-iio-inkern-use-namespaced-exports-v2-0-9799a33c4b7f@bootlin.com>
 <20251209-iio-inkern-use-namespaced-exports-v2-1-9799a33c4b7f@bootlin.com>
In-Reply-To: <20251209-iio-inkern-use-namespaced-exports-v2-1-9799a33c4b7f@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 9 Dec 2025 16:45:29 +0200
X-Gm-Features: AQt7F2rGwi5_TocOmRGciLvaWe8Y7Fghi7KYuOXmk6PhKTOAwIFDPQlb6Jsx554
Message-ID: <CAHp75VcX_z6q879gmWcb76SeFHtqMvpZ=y9PwNn0=eVFb06wAw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] iio: dac: ds4424: drop unused include IIO consumer header
To: Romain Gantois <romain.gantois@bootlin.com>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Guenter Roeck <linux@roeck-us.net>, Peter Rosin <peda@axentia.se>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Mariel Tinaco <Mariel.Tinaco@analog.com>, 
	Kevin Tsai <ktsai@capellamicro.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Eugen Hristev <eugen.hristev@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Sebastian Reichel <sre@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Hans de Goede <hansg@kernel.org>, 
	Support Opensource <support.opensource@diasemi.com>, Paul Cercueil <paul@crapouillou.net>, 
	Iskren Chernev <me@iskren.info>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Matheus Castello <matheus@castello.eng.br>, 
	Saravanan Sekar <sravanhome@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Casey Connolly <casey.connolly@linaro.org>, =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
	Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, Amit Kucheria <amitk@kernel.org>, 
	Thara Gopinath <thara.gopinath@gmail.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Olivier Moysan <olivier.moysan@foss.st.com>, 
	Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-kernel@vger.kernel.org, 
	linux-hwmon@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-pm@vger.kernel.org, linux-mips@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_064609_071642_6819DA90 
X-CRM114-Status: UNSURE (   8.03  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBEZWMgOSwgMjAyNSBhdCAxMDoyNuKAr0FNIFJvbWFpbiBHYW50b2lzCjxyb21haW4u
Z2FudG9pc0Bib290bGluLmNvbT4gd3JvdGU6Cj4KPiBUbyBwcmVwYXJlIGZvciB0aGUgaW50cm9k
dWN0aW9uIG9mIG5hbWVzcGFjZWQgZXhwb3J0cyBmb3IgdGhlIElJTyBjb25zdW1lcgo+IEFQSSwg
cmVtb3ZlIHRoaXMgaW5jbHVkZSBkaXJlY3RpdmUgd2hpY2ggaXNuJ3QgYWN0dWFsbHkgdXNlZCBi
eSB0aGUgZHJpdmVyLgoKUmV2aWV3ZWQtYnk6IEFuZHkgU2hldmNoZW5rbyA8YW5keUBrZXJuZWwu
b3JnPgoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
