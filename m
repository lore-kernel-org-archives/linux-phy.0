Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7D90C021B1
	for <linux-phy@archiver.kernel.org>; Thu, 20 Feb 2025 12:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9d5mCXSg/PwDCXMbnUki7L0QxKXfApu7+qahW0R0sU=; b=YCJOTs5NphSiM4
	QsQg6u3ezyy1mk6cwN2dZ6csZIPNusv5sF1e8dU1KP6WklA+/6ATq6+OdZRNxfq2H1XEHL5z0FwTv
	aj2Z6h4tfhqTOyPauu8RbM1OD9wZn+ACpVw21TMkmfBlNIgVnOf9tV7TEiF6mBn+wb+BjIUfjW0al
	DMBRMM256iWikD7Qcs0AfT0QAXgbmqon+7AkdUFKkAnHNp9NGplIgwbiLGhJx5s3kgYtnBNQOgkxT
	UYL14BxFIDydIBvBAvpXLxDsrvTnoD+S6LXqjoZ01ogMYVyINLmOHScBy/ris9pB2DgN5jnfTKJAV
	/1Z+jKvnc0Z/Yk4QfXPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl5L4-00000000i0I-1rI6;
	Thu, 20 Feb 2025 12:07:34 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl5L1-00000000hzI-40VC
	for linux-phy@lists.infradead.org;
	Thu, 20 Feb 2025 12:07:33 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5e050b1491eso3490687a12.0
        for <linux-phy@lists.infradead.org>; Thu, 20 Feb 2025 04:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740053250; x=1740658050; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P4HA3a476hov3ntftaoBig8lyt8y4gBvXJgT/JzvNpg=;
        b=jrbpyHGPdQDwCuMoVjvd0wGJC5UuEie/Mkk3eTMcgU0ljk+euixWHu+HulcPG3LOcU
         3AHyu3cSOVyKyNAZLMQapcPRCNAI+SUjVPeRhyEruRffR61T4GyCQDqpgigZo/Fje/6h
         0FKQisa/rrsUmxjBLCK1+u66BrP9b2EGz0pH+nWxJD2FURF3svml4Ll5z5dmslM8AXq1
         wo75gYJMyqp/8BwzIPiL7nupk2x3XkGGDXEm7BUFbXPV0e5nokubOUe9+VHpeWq2ZxB5
         RiaXlyBIhuvkIYH0ZEJ+nx+JPKNOzZwKwGvBAluC5NUC6KtUBxuk9FfowbNZpiLnvKRg
         siOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740053250; x=1740658050;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P4HA3a476hov3ntftaoBig8lyt8y4gBvXJgT/JzvNpg=;
        b=PpTDF2hM6YgInYwGIZu6q9s3TMu0/QIqSQxuHZGeVb7rPKNzMK2K7ozC9z3hGrYqIS
         gdDxK7+nG9pU6JEpc9ovpSjiD1cs4oFGQdvUIq/zNQGqDofiefaAWqU/xJgXXxCAsl3z
         T2Uffgzyjp6Fpd8Yof+b0mT3XZwlzx78IYCMTfXK/o2KrmkbJXNAisGXazpEgeDWPUUf
         nZO4pgsf/K7u7mgebagoUoU/Ubuiz5H++Si0e62xo7ZZkWEqWJMnQG8Y2q/XoYTqBF5v
         zDfjsuo1WrxjQ07PKtX8NoQuMutzMUueyPZcCYIJCdxrCdxgozNsPAs88EEmmCRR/xEC
         qWNA==
X-Forwarded-Encrypted: i=1; AJvYcCVgd3Y+l2tTuNUPE31OJpjB6XYq8E9o2g3vrtrzzVqsGl1ac5pSE3qpFM9e+K2R004kT+y6y9hMHdc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcteET1szhoXF9qqgZNfwinURlZf3LyszkITAreh66Jv5CiXOT
	NjZ78ucPaVLsCHCqLB3kRFhompEpcRPNsWxMqhQxM+7qOqcfKoT6Y3vAatv+RByqUUpqqQTHdVC
	8v81ZzHMmJGH8FermYemX6LJtsgQ=
X-Gm-Gg: ASbGncvvW2P1LmF6ile++uKAyPklapy0451FNpkdJIflxT6AZ/9xNBFxH7tb5NHJfGf
	V9UlhvLp2zuItOZ2teSWUny/hjiwQhbhT2BwIOFmvij3SrR9pUIsMfmH1hYrb78c/3PhYaIOIhC
	s=
X-Google-Smtp-Source: AGHT+IF38ffD8uTfeWoyKkzdki0w4CBfO4Q6FCUj5jsP8brgHruKzyD5d/xowX78B7DkvMV9AG/yfe03E47wCYQDXFQ=
X-Received: by 2002:a17:906:3151:b0:abb:b24d:c63e with SMTP id
 a640c23a62f3a-abbede0d6ecmr282002266b.16.1740053249591; Thu, 20 Feb 2025
 04:07:29 -0800 (PST)
MIME-Version: 1.0
References: <20250210-gpio-set-array-helper-v3-0-d6a673674da8@baylibre.com>
 <20250210-gpio-set-array-helper-v3-5-d6a673674da8@baylibre.com> <20250220101742.GR1615191@kernel.org>
In-Reply-To: <20250220101742.GR1615191@kernel.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 20 Feb 2025 14:06:53 +0200
X-Gm-Features: AWEUYZkVC_t70oKiz24rwP9NDoPkcZvzDwGyAQ3-jjaWOtmoZFsuzE5rifn5L5A
Message-ID: <CAHp75Vch7QKyT8Fbya3u=YrPR8z-2-mbWXjHyOwZ-fqcBjjm0A@mail.gmail.com>
Subject: Re: [PATCH v3 05/15] bus: ts-nbus: use bitmap_get_value8()
To: Simon Horman <horms@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>, 
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
X-CRM114-CacheID: sfid-20250220_040731_991578_FC96BE60 
X-CRM114-Status: GOOD (  12.15  )
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

T24gVGh1LCBGZWIgMjAsIDIwMjUgYXQgMTI6MTfigK9QTSBTaW1vbiBIb3JtYW4gPGhvcm1zQGtl
cm5lbC5vcmc+IHdyb3RlOgo+IE9uIE1vbiwgRmViIDEwLCAyMDI1IGF0IDA0OjMzOjMxUE0gLTA2
MDAsIERhdmlkIExlY2huZXIgd3JvdGU6CgouLi4KCj4gQnV0IHdoZW4gY29tcGlsaW5nIHdpdGgg
R0NDIDE0LjIuMCBJIHNlZSB3YXJuaW5ncyB0aGF0IHZhbHVlcwo+IGlzIHVzZWQgdW5pbml0aWFs
aXNlZCAtIGJpdG1hcF9zZXRfdmFsdWU4KCkgYXBwZWFycyB0byByZWx5IG9uCj4gaXQgYmVpbmcg
c28uCgo+IEluIGZpbGUgaW5jbHVkZWQgZnJvbSBkcml2ZXJzL2J1cy90cy1uYnVzLmM6MTM6Cj4g
SW4gZnVuY3Rpb24g4oCYYml0bWFwX3dyaXRl4oCZLAo+ICAgICBpbmxpbmVkIGZyb20g4oCYdHNf
bmJ1c19yZXNldF9idXPigJkgYXQgZHJpdmVycy9idXMvdHMtbmJ1cy5jOjExMToyOgo+IC4vaW5j
bHVkZS9saW51eC9iaXRtYXAuaDo4MTg6MTI6IGVycm9yOiDigJh2YWx1ZXPigJkgaXMgdXNlZCB1
bmluaXRpYWxpemVkIFstV2Vycm9yPXVuaW5pdGlhbGl6ZWRdCj4gICA4MTggfCAgICAgICAgIG1h
cFtpbmRleF0gJj0gKGZpdCA/ICh+KG1hc2sgPDwgb2Zmc2V0KSkgOiB+QklUTUFQX0ZJUlNUX1dP
UkRfTUFTSyhzdGFydCkpOwo+ICAgICAgIHwgICAgICAgICB+fn5efn5+fn5+CgpIZWgsIHRoZSBj
b21waWxlciBpcyBkdW1iLiBFdmVuIGlmIGl0J3Mgbm90IGluaXRpYWxpc2VkIHdlIGRvIG5vdCBj
YXJlLgoKLi4uCgpXb25kZXJpbmcgaWYgdGhlIGJpdG1hcF93cml0ZSgpIHdpbGwgd29yayBiZXR0
ZXIuLi4KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
