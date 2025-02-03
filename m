Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECE1AC02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 12:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JluSHeo8tXVh52HywEjCHuq0JB4D9oPSUsZRizS7XA0=; b=JH5YVjtuRiMBxk
	11uckAqCZehvD60gH9HnQbuE6CBiiywQHg5JkdhWujrLGBpjOKvyjxRlqYMYwqyM9qRJQNHF6glRT
	9cw2nWW7qxsqcBC2iTAkInGx+CgBT366ZbJoDOwsSmN5aVIrgGzuoQhSiEVPg9Nn6qjPbGxtpk88G
	FlEnMA+ILFqSXVOjQAWWjRbYhLjk48tpcK04mLFbYAYzDadt8k8jYUkFESfpomGqcpHZsS2/2sF8z
	5ktHAc3aBlIcba//8O+0ZyR2hh1KSCOOAKQGgmopB0HhAxwgNhkqt4pUzuTtBc93Msaut3HWPjdu4
	THZIEQMc2UM2gdY0j8+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tevIK-0000000FKSG-1lUJ;
	Mon, 03 Feb 2025 12:11:16 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tevII-0000000FKRs-1Cl7
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 12:11:15 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-ab7157cf352so341552066b.0
        for <linux-phy@lists.infradead.org>; Mon, 03 Feb 2025 04:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738584672; x=1739189472; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vC3+WjLhlpstTgR2X3bUINeiUZ7D7J/mU9HK8P5Il04=;
        b=jtjVZ5n5wOnD/EQAIOWU9X+Nu1fI6ZgZO1pDxzni8FqZH9LmHotWHVKOBdj4cRhoYz
         ODFRxsXBKqmTVl+X+5pQkX0Vshh8n4JfAlO4DCia6LC5vIuE/n+4NJ0kWsMJ9gzMYjoO
         x3eV062Q8LbzvEpaeSr9gWzw4BZG/L4f8O3/he4K/swA2Yh5LwvMeTjfEAZrlabPMMnY
         K2FGhliYK6kFKLaWvab6aS/Cb2zFH1TXYxA/xgBQI5SOqpGIp78qe9boohZ21DHf7sAY
         t1pWvlFI63ccjzQwUseIS2wGcCwleWlgLLAfYClYIc/ihJEYtRAyio2TQOfGuV3h51fh
         U/pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738584672; x=1739189472;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vC3+WjLhlpstTgR2X3bUINeiUZ7D7J/mU9HK8P5Il04=;
        b=L5MPV0ynwOb4wNgMpl1Zf7fLzxZxe3tPpqS6iuVmpW/X40kIy1FUGA7Q/w5CRRg1Ii
         ef6cN6m2YfvxZOMj6lhZzc/wvn9VdWO/ISE83Ty+0zwL0lZ1/LnbPVdpvXyGDlen8zvQ
         Sy7Hg8RQ+VjZAWvmMsrfg7xUap0R5lZaGbc7OXaufd7H9uKeGRLpN53qUA4ShsFcAmO8
         VNPs9zfx5cMnaN6bnOvAuogYHHMb2LAgbOCUz29Cpk7K7O4zkz6XvoOsBvTxkE57ISLn
         AUrA+bjX3L/wWUS5Jm3z7zvjBtZtaFl0Di5BPjWCxblIwRx49TsbvoWx4LR7aoC+Vt3Q
         5pIA==
X-Forwarded-Encrypted: i=1; AJvYcCVLitr0EG34qd9PMga7Oyr1OGzrtDqXybN1fBWR7BLwcr8ShNitw2+Qa19/o31aWxaQooYZjjNjmL4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyJFnwTxkz9LpX6hVomyQcbla1jBuoXY+FJS1iqJu21GajjIj80
	XxlUkkGLzNLKWd2/kDOxbIqvCea0mUhHycKdOC/GwA+q+EBIX0EGiCQJ/5jGrqD+7cITKX0K9Rq
	aP5FOfbmq0J6TQs1gl6yAPS8VxTc=
X-Gm-Gg: ASbGncv0KBAaOJITwk4zDFx+apwMPu2d0hpIcpK6zb60M5U/D5kzUlte8yftkg3EzvO
	6CqdMv0PPfUT0rKKgR8ukTvBEY7mSGmK9DjTMX8NgOAjdl1Fjym+AOkw91Y8EGJEvU6Mtz1clOm
	Y=
X-Google-Smtp-Source: AGHT+IEl0shu0wyCbYmjiWbZ8xSkp39SyMbNA10oWwjLNUg4dYl7AJ/ctOStbBTvln5XQSzLfDgbhCKUVzpxgJe5YOM=
X-Received: by 2002:a17:906:1707:b0:ab3:a18e:c8b6 with SMTP id
 a640c23a62f3a-ab6e0c3105fmr1897817666b.10.1738584671668; Mon, 03 Feb 2025
 04:11:11 -0800 (PST)
MIME-Version: 1.0
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
 <20250131-gpio-set-array-helper-v1-2-991c8ccb4d6e@baylibre.com> <CAMuHMdVqNiquGdEs16GMTA6DPCko=TX84XWJygAorTnQk=+PUA@mail.gmail.com>
In-Reply-To: <CAMuHMdVqNiquGdEs16GMTA6DPCko=TX84XWJygAorTnQk=+PUA@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 3 Feb 2025 14:10:34 +0200
X-Gm-Features: AWEUYZk_mY3onXi_-WCfb4vPsGEHZy7b021-vFp4QXXzEaG2YFkuGveLah_lXTQ
Message-ID: <CAHp75VcUiNVFktAL8zFSf-8tw_J1vJp+D_4Z-hYDqRp4S9C7ZA@mail.gmail.com>
Subject: Re: [PATCH 02/13] auxdisplay: seg-led-gpio: use gpiods_set_array_value_cansleep
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: David Lechner <dlechner@baylibre.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_041114_325974_8893DD3F 
X-CRM114-Status: UNSURE (   8.62  )
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

T24gTW9uLCBGZWIgMywgMjAyNSBhdCAxMjozNeKAr1BNIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2Vl
cnRAbGludXgtbTY4ay5vcmc+IHdyb3RlOgo+IE9uIEZyaSwgMzEgSmFuIDIwMjUgYXQgMjE6MjQs
IERhdmlkIExlY2huZXIgPGRsZWNobmVyQGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4gPiBSZWR1Y2Ug
dmVyYm9zaXR5IGJ5IHVzaW5nIGdwaW9kc19zZXRfYXJyYXlfdmFsdWVfY2Fuc2xlZXAoKSBpbnN0
ZWFkIG9mCj4gPiBncGlvZHNfc2V0X2FycmF5X3ZhbHVlX2NhbnNsZWVwKCkuCj4gICBeXl5eXl4K
PiAgIGdwaW9kCj4KPiBBbSBJIHJlYWxseSB0aGUgZmlyc3QgdG8gbm90aWNlIHlvdSBnb3QgdGhp
cyB3cm9uZyBpbiBlYWNoIGFuZCBldmVyeSBwYXRjaD8gOy0pCgpXaG8gcmVhZHMgdGhlIGNvbW1p
dCBtZXNzYWdlcz8gOi0pCgotLSAKV2l0aCBCZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
