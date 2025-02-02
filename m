Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ED4CC0218F
	for <linux-phy@archiver.kernel.org>; Sun,  2 Feb 2025 10:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2SO3bfyZdWAi9E5etnsa+e9SSSLpN8jcsWMI1eJXHAA=; b=m+HZJ91mj5JLYM
	ue2PNaGiu8O7BFjW3hFMY6cxlCXvFrz6H9Q3G2zbn4SBunEAgJ4rhz3RhNJBHB40nGUUksIOMgfdV
	F89NMiSrxiOhl0D4N/9vgojMqVY/IcQacky5QS8wSzyfkJm4tjwo3+cU7rcAhA6xhDMd6i9ofrOJW
	hi+djaAVa3aYwLNpLSGcUzwKpIKiSn/niQjFzuDTHs/pVSE/VVU3OfvsxrpGkU+3t/iK8Il/eopNh
	G2V21YJ99Mpzao3QU6sAHseQyPc+emutlLdt3isRPb+T2slabf5iPkfTquMbjh/V/vhfJxJarl9vu
	SVbFKzdKCFqk/9NFE6zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teXAS-0000000DdTq-1bRD;
	Sun, 02 Feb 2025 10:25:32 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1teXAQ-0000000DdTU-0Ymg
	for linux-phy@lists.infradead.org;
	Sun, 02 Feb 2025 10:25:31 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-aaf900cc7fbso739776566b.3
        for <linux-phy@lists.infradead.org>; Sun, 02 Feb 2025 02:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738491928; x=1739096728; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jdlPHcGzMZa0B21D7l1gQYa9EwUPuFt0Vh35VUcb6gI=;
        b=X0Mfw9gJVmp5AeEkFwzvINWgLkoBy+DzgKcEG1Shafo7gl5gv6eQ6uvMudapz6iiQS
         1U5cft2PDUBZgI6vPel/NyZjcHEn0Nl2ycCI5I4bvD95Ba6UMX8SYUCtzw6pDJQI/R0s
         VjrzbVqWlXgXpWT6d1OyTzEskdbYewO/OHyrREDWDm+JBBa+TCt0e/QUZkTVBwv5gVi4
         NCOHQ5EBklv2QYSuviqA4MEvaRC79CbUV9utd+krfApPSc9siQmM0xZy55TLXy17Qwv5
         SLXdUUX8oLn8u5kz854n/lsN3/wewYdOrpqipTflk2gmJmePEHzDMj0HrnhhIPNt04Vg
         TWiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738491928; x=1739096728;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jdlPHcGzMZa0B21D7l1gQYa9EwUPuFt0Vh35VUcb6gI=;
        b=SggS06lFhgb2CTvQIxZ4oL6qLaF1oGxqQuRVw7kCanLeGrsgBgnLibQkxqhOg8ciSz
         MI6BdNBVWNhu8rKeXCZ82Izt/2PkFV/ykqOOBpXqhQQH25vnjABjQKGYaOUpNZKdnESw
         QkDzwuAAPknFT8iUTEcj/weYRI1gxm3UJFEW3Hklh9FCjd6EspWLTpb60UZE2zeJMo7s
         +OejxB2DTkZlYGkewsR+EVMiNRZo5il12zY655i9rydSPNZp7PG5pq4V7yoOB+SveBMF
         8whVSXtm25k1AloVYNcW8LH9TqfM0tA4LD9EXNpMhN5islfk91kh+aOCWWn8RcjNw7ve
         mntQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+lojGfBkzF/Cgz9WZFO27fPAA4ut3xYfJTpbP/6E7I4DqUyS6EXcjIoHUpHsRxQy0aXny3T6yu0w=@lists.infradead.org
X-Gm-Message-State: AOJu0YwYm2TfuQXweDF9tAganfWuOtYUOA3SSuo3PqcwyHxLEdpBFH1v
	cwCMO3B7uthm4kMzOVD6pQdPPwpEVRLoAkMK6lOoOawbWpwP6+GmgowDlp5ccMtESuT1jfoY38y
	kNPwrvvf6AKgjteQZhlOujtF8B6c=
X-Gm-Gg: ASbGnctKslAYkDisDJRojsWcBzcUwd7Q94ZqSaweZSnqDlq667Y3r+Iyw/EPMUYIe7S
	9Y/yC+yvQRdwruuewjQ0RFOOov6RyVP2K+pj22qiqFhkjS6B8rER4QzJCD8wTKAwmzlsIDeVu
X-Google-Smtp-Source: AGHT+IEe8Rl+26kJYboaEyv9dzKjHCf1EquLTFTNEmfRhSj6NS9YUXAt18BK9166iZzYwlVFITDfnfsB89tlBK0RZx0=
X-Received: by 2002:a17:907:3d8d:b0:ab2:c208:732d with SMTP id
 a640c23a62f3a-ab6cfdbc500mr2040178166b.40.1738491928328; Sun, 02 Feb 2025
 02:25:28 -0800 (PST)
MIME-Version: 1.0
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com> <20250131-gpio-set-array-helper-v1-13-991c8ccb4d6e@baylibre.com>
In-Reply-To: <20250131-gpio-set-array-helper-v1-13-991c8ccb4d6e@baylibre.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 2 Feb 2025 12:24:52 +0200
X-Gm-Features: AWEUYZmb_RiThc9nFDP5Gjh9f1xghmR68DNS7zeGbd5iSayr1cQhK5HkwKbJyC0
Message-ID: <CAHp75Vd_ZUqBhQGKzc6qCHrrUUHzFqyaxTz_vdSKN5EK-bazQw@mail.gmail.com>
Subject: Re: [PATCH 13/13] ASoC: adau1701: use gpiods_set_array_value_cansleep
To: David Lechner <dlechner@baylibre.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, 
	Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250202_022530_201057_3F772833 
X-CRM114-Status: UNSURE (   7.62  )
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

T24gRnJpLCBKYW4gMzEsIDIwMjUgYXQgMTA6MjXigK9QTSBEYXZpZCBMZWNobmVyIDxkbGVjaG5l
ckBiYXlsaWJyZS5jb20+IHdyb3RlOgo+Cj4gUmVkdWNlIHZlcmJvc2l0eSBieSB1c2luZyBncGlv
ZHNfc2V0X2FycmF5X3ZhbHVlX2NhbnNsZWVwKCkgaW5zdGVhZCBvZgo+IGdwaW9kc19zZXRfYXJy
YXlfdmFsdWVfY2Fuc2xlZXAoKS4KCi4uLgoKPiAgICAgICAgICAgICAgICAgICAgICAgICBfX2Fz
c2lnbl9iaXQoMSwgdmFsdWVzLCAxKTsKClNlZW1zIGxpa2UgYW4gaW50ZXJlc3Rpbmcgd2F5IHRv
IHNheSBfX3NldF9iaXQoKS4KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtv
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
