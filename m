Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A090C0218F
	for <linux-phy@archiver.kernel.org>; Sun,  2 Feb 2025 10:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWdpzuRIJJHpyp4UYFDWzMykduJYlA1yKEKoOBZgMlw=; b=3A/W4VIAh4zdL5
	HJD7JoFvynhXDAWmoFQut+nR2fBs0yJQQpD7n0EjwKMTjWeadsu6nAFTdMhZIzPnwQtC4rLmwd3dj
	afw036EmpXDbAS9rjojNnA9ZXuYoolcO4LoNYVEj6HQbctHQkbAKFLP7EKhIqNOWplFR81lN9P6e7
	LBld15e/ocfoHujTxs1ZU2boX2R690rDtxtLMo04tbTMbCeEUp7e3A+2xPBHMYLQdGwe1pVvsPYG7
	Kx6vSD/cQXx5GNxUb4ULUudXAmVN0M7jeB1Pw3KSQ7lfFd10IJGQWJQDJLNmjFC3Mrkaq6Ayry9jL
	gUBQhmSBrvo3BuyQPYAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teX5t-0000000Dd7u-3C9Q;
	Sun, 02 Feb 2025 10:20:49 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1teX5q-0000000Dd7M-2V0c
	for linux-phy@lists.infradead.org;
	Sun, 02 Feb 2025 10:20:47 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-aaf3c3c104fso679852866b.1
        for <linux-phy@lists.infradead.org>; Sun, 02 Feb 2025 02:20:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738491645; x=1739096445; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=abuLAjBdtRLiVsNmQ3e7MBj/eyGhzqb3O3rD3el2slQ=;
        b=N3vLwVAt8tofRgRy3FkoBAW0r3DCp/S24Sgnt5yakl5nUzwjlJd4xdcgTOM3aUGo9n
         WBX8uiHV6WWB99n+liJ8Zy2orKqvKbNZnblumvxAQSZSXwHx5M8cQ2trhWftnBDip/hh
         3I5W6xtZj2KbifWbMysRCm7y93CrLdRpc2jBx92/SdkiZI5yFcbCp0EOaB1Gjbfsmltr
         C+xEhiHr4mee1x0qskX5GoJ4inxBrA/4O9tbWHCzJTssssHzf7ISxPtNLr6stjE4Fc8j
         U1kwwwqEVRZn7nDlOCi9LS35mym8yAhiRdkF2mlgGbWW8TwRhRLuR89Hnb5/mrgPbtSZ
         Mh2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738491645; x=1739096445;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=abuLAjBdtRLiVsNmQ3e7MBj/eyGhzqb3O3rD3el2slQ=;
        b=hcabYyMFgenLnGKx8XZjFzIjOdknkb22rxB6f260vZYI62PE9YbLHd5sNWVHiZZ2T0
         Q1ygfDTCflLdEoA6CFqAaJF7IG6ciIgR1t4BC2o0Np8VotytQ1wf6QbFDc9bfXRPtiIN
         LbaHLGTNgdJTYbGLuMZqf9KhJ5jwi839oPCXH3pUbvAX8M1xhXuDX9xA4FK0SAkp/XPC
         seIZ2yXXWTaovoeEn5j7/b9g9D78T65tDB7qKVBqLJ+3eqyB4HNJJ2Oml1mD/FOEOeRE
         byx3WEcEd+PUPLHbeEemSlXDfUrFV3TBaaSUhQMyJAc7nhZz4F7sZpzUahMtUACVuVz4
         boxw==
X-Forwarded-Encrypted: i=1; AJvYcCXVLaVAvu4f5044nVOeaibGyj48pSCo1cyTlxS0pR1q8R9FddnqOQalJCVflsr9bbfUBEZIJdVQ2O0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwCZqCaXoNcndjbh8hSUftUNQGmf8au3a8AqP3qkB8mXQbYnsdg
	JKpObOnAfKfKFsJYXhxke+TN3IrMXOjs7xP1xdnqKdt8Oa4VRg19FmaVwTTcel5XYRBK/S3dcKC
	m3rHEFYJKuE7rKOPH2vThjwrQdjc=
X-Gm-Gg: ASbGnctOHM+HXOqP4LqUoYyYt0+yNg3N1ADVUBWJYbFZMAhsd2w0lUG9kY1n4V2VIqS
	dw/+qv05cJ1l4zmoZ9tepNzafj4SnH1twb62To/l3IxK9pvw6ZVLct/jtDVL+ORUP0mK1dQwr
X-Google-Smtp-Source: AGHT+IF/+uZMaus2XNgM2nDOwGoxfdb50gAm721dJ95mc0Z1AhtjtqPDVV+/FfrSVjpX5K8wsYBAli8SEFndMMe5kfQ=
X-Received: by 2002:a17:907:1c13:b0:ab6:36fd:942a with SMTP id
 a640c23a62f3a-ab6cfe27037mr2143028366b.50.1738491644744; Sun, 02 Feb 2025
 02:20:44 -0800 (PST)
MIME-Version: 1.0
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com> <20250131-gpio-set-array-helper-v1-12-991c8ccb4d6e@baylibre.com>
In-Reply-To: <20250131-gpio-set-array-helper-v1-12-991c8ccb4d6e@baylibre.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 2 Feb 2025 12:20:08 +0200
X-Gm-Features: AWEUYZlSUWREHLYnafA4D-LM02R9rz-LXsE0FD1seSMpM0Zva7Lcfwmi-U7vSis
Message-ID: <CAHp75Vc66j5omBZe422HcgSDaASZRrP-pA1RgnOnUrX1n-tmhA@mail.gmail.com>
Subject: Re: [PATCH 12/13] phy: mapphone-mdm6600: use gpiods_set_array_value_cansleep
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
X-CRM114-CacheID: sfid-20250202_022046_630832_525B9E32 
X-CRM114-Status: GOOD (  10.06  )
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
YXlfdmFsdWVfY2Fuc2xlZXAoKS4KPgo+IGRkYXRhLT5jbWRfZ3Bpb3MtPm5kZXNjcyBpcyB2YWxp
ZGF0ZWQgdG8gYmUgZXF1YWwgdG8KPiBQSFlfTURNNjYwMF9OUl9DTURfTElORVMgZHVyaW5nIGRy
aXZlciBwcm9iZSwgc28gaXQgd2lsbCBoYXZlIHRoZSBzYW1lCj4gdmFsdWUgYXMgdGhlIHByZXZp
b3VzbHkgaGFyZC1jb2RlZCBhcmd1bWVudC4KCi4uLgoKPiBzdGF0aWMgdm9pZCBwaHlfbWRtNjYw
MF9jbWQoc3RydWN0IHBoeV9tZG02NjAwICpkZGF0YSwgaW50IHZhbCkKPgo+ICAgICAgICAgdmFs
dWVzWzBdID0gdmFsOwoKRldJVywgc2lkZSBub3RlOiB0aGlzIGNvZGUgaXMgKHBvdGVudGlhbGx5
KSBidWdneSBvbiBCRSA2NC1iaXQuIFNhbWUKZm9yIHRoZSByZXN0IG9mIHNpbWlsYXIgY2FzZXMs
IGluIGNhc2UgeW91IHdhbnQgdG8gYWRkcmVzcyB0aGlzLi4uCgotLSAKV2l0aCBCZXN0IFJlZ2Fy
ZHMsCkFuZHkgU2hldmNoZW5rbwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
