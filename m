Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2057C02196
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 07:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6AVcL4ep9VeJ2Eyo+b+g87Q56BSj5iZkwG/5/QVnryo=; b=cAJLu1jeTY7bUr
	F9l1+QilDUVYI9MqAP+NBsyxhTIpvCQgKxKxyNEib1J5SBmnL6oa8GKhhblyzyERF/j2c72zQmTFI
	/8iD0+kuaHUwwqyhDr8akzhMXuwO2oo9fiouSTgXhL/LfNf+juaqXK37Qbogfunfnw4A58xl5HsGx
	iB6TxfbmLt8yMXF9SQ6w6KfPnyjxyaQd8LCnIydq54BkB9BetaQvps8DjiZyXC2pOTEl5NvMkWm+a
	j92S3gMTfdrAuuQOjA/eSuJ7+SLEP57R8O15m08yHPVhgTgkEXQC2YY9Q6WelTXs7AvGRcM75Q0jE
	urf4SnjmQAmLP6cGDlGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgJ92-00000008hTN-0HTS;
	Fri, 07 Feb 2025 07:51:24 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgJ7b-00000008hDW-0feU
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 07:49:56 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-30613802a04so19133681fa.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Feb 2025 23:49:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1738914593; x=1739519393; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9YnJ+2PmTsfRhc+KXPzUKFsOLYmtdTuDzT6pXI9Dax4=;
        b=vM38PKfv56vx6eRPtY6ZdxhKlOewyJC7/1JzucwCNRhyPtpowWmQoS7jkvM3gLeeBz
         Si48uGt7X8dJL5A0ZCmDnaN7bI311tHWxFR+7FJdvATHIYuAHZsCRZrdI9Jg30TulpDJ
         KlCJJqimZBC1zE4fpwCKxefRKmP3PS49V62nOuYmLc07ImNM81+UOHLmyeyt3OErOXZh
         4xzpt2HC+DJq0rxcSR1+M90CpC+RFyqJjmNQHo4JFEgrjrV7SlWeRQs+EZ8JnpXeK8nZ
         vQxl9TrrGrcLFV0KKEA2W6a5d8fNlQCGYTkogqmBX48mEiTLEJiTkfdkttG8TCNFmZgp
         wgUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738914593; x=1739519393;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9YnJ+2PmTsfRhc+KXPzUKFsOLYmtdTuDzT6pXI9Dax4=;
        b=wsmRmdbnvhVMdtFUbOsjw9dEOmDsTA7FzNzMKCoxNGCrNmkHSeYNUOTge1dAO7xfj0
         CqqDvVO8mxnv1heio4ve0JeH+9wHbfIWfGCHRYU052Gf8L1m/qUIdAepbeMLj+wl4k8d
         4yfK7C0vyhJX2B8T3h55WIr8HG5Eap2jctplS0IDrcruMn1uf0Vn5GVKD/0Vq48AHAel
         rvHgME3BqwHTsBszmZnay3KQzMZ/Er5qHCmO4DK1zbdAdWcAEZR8W214sseRN+D9imC1
         ZBTV/CfpdIyRq/NEKDWW7dIz+GwEWBNhsVwDu2oWbqgqiZ+lxJA49DSkm2oqOCeuDF7b
         9nhg==
X-Forwarded-Encrypted: i=1; AJvYcCUHqSaLiW2P4oE/1InEq0eRkv6v5wBvydu+jsLMLTwjNwGRfa9P98jzLKwJqnbASRh8mcL2UQ68KEA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyIhv3oUYsmcYeiGRaKa8gE6RqFnhI9gborwQRFNdJhoygEP0yI
	rjhLOtnAawAQs+rUK81kvPWNRq1jZty6BtcMGV2BbT04ShnCPi5T8HEw1oEE7TUMb8IxwYhNfLY
	t25Tdsl5RB42cnMMDzz1R/TJj8IK/kgiKJMFRvw==
X-Gm-Gg: ASbGncvgsTIOpFzocXUz0YN5TZpJzlAY/BZ8/Su9FwmzxnFrjqbLmqI9xkWKKV5ZeUz
	ISbBJjV5OZa7NWUd+/ybw9grt959sZXAPDRGmVRzqSeULgvPs/378sqkQUdwpy5gMRe5vr/syMd
	sZt+yC6SWbN+0JScuaaN9aZ+hBXFU=
X-Google-Smtp-Source: AGHT+IHxfwDC2v+wc+kLsonGMp3GoKKzCthmXUYddx5+xjdW0P9Z9tmgYCfXp3s8UQ6aQdx9J+hIzu6ut5Mn8kOKlFE=
X-Received: by 2002:a05:6512:2348:b0:542:1ba3:984c with SMTP id
 2adb3069b0e04-54414a9656dmr486368e87.6.1738914592500; Thu, 06 Feb 2025
 23:49:52 -0800 (PST)
MIME-Version: 1.0
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
In-Reply-To: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 7 Feb 2025 08:49:41 +0100
X-Gm-Features: AWEUYZmvPOokVsveJHg1umO_SehF1d2PdlzyWo93hmjOZpSCnJ3bOhxNiJqJwrs
Message-ID: <CAMRc=Mf9WQjVXvea7tHx0MJG2H8Yqxw=zGqvjp7dfD7+=huDKw@mail.gmail.com>
Subject: Re: [PATCH v2 00/13] gpiolib: add gpiod_multi_set_value_cansleep
To: David Lechner <dlechner@baylibre.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, 
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
X-CRM114-CacheID: sfid-20250206_234955_457283_592AAA70 
X-CRM114-Status: GOOD (  25.41  )
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

T24gVGh1LCBGZWIgNiwgMjAyNSBhdCAxMTo0OOKAr1BNIERhdmlkIExlY2huZXIgPGRsZWNobmVy
QGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHNlcmllcyB3YXMgaW5zcGlyZWQgYnkgc29t
ZSBtaW5vciBhbm5veWFuY2UgSSBoYXZlIGV4cGVyaWVuY2VkIGEKPiBmZXcgdGltZXMgaW4gcmVj
ZW50IHJldmlld3MuCj4KPiBDYWxsaW5nIGdwaW9kX3NldF9hcnJheV92YWx1ZV9jYW5zbGVlcCgp
IGNhbiBiZSBxdWl0ZSB2ZXJib3NlIGR1ZSB0bwo+IGhhdmluZyBzbyBtYW55IHBhcmFtZXRlcnMu
IEluIG1vc3QgY2FzZXMsIHdlIGFscmVhZHkgaGF2ZSBhIHN0cnVjdAo+IGdwaW9fZGVzY3MgdGhh
dCBjb250YWlucyB0aGUgZmlyc3QgMyBwYXJhbWV0ZXJzIHNvIHdlIGVuZCB1cCB3aXRoIDMgKG9y
Cj4gb2Z0ZW4gZXZlbiA2KSBwb2ludGVyIGluZGlyZWN0aW9ucyBhdCBlYWNoIGNhbGwgc2l0ZS4g
QWxzbywgcGVvcGxlIGhhdmUKPiBhIHRlbmRlbmN5IHRvIHdhbnQgdG8gaGFyZC1jb2RlIHRoZSBm
aXJzdCBhcmd1bWVudCBpbnN0ZWFkIG9mIHVzaW5nCj4gc3RydWN0IGdwaW9fZGVzY3MubmRlc2Nz
LCBvZnRlbiB3aXRob3V0IGNoZWNraW5nIHRoYXQgbmRlc2NzID49IHRoZQo+IGhhcmQtY29kZWQg
dmFsdWUuCj4KPiBTbyBJJ20gcHJvcG9zaW5nIHRoYXQgd2UgYWRkIGEgZ3Bpb2RfbXVsdGlfc2V0
X3ZhbHVlX2NhbnNsZWVwKCkKPiBmdW5jdGlvbiB0aGF0IGlzIGEgd3JhcHBlciBhcm91bmQgZ3Bp
b2Rfc2V0X2FycmF5X3ZhbHVlX2NhbnNsZWVwKCkKPiB0aGF0IGhhcyBzdHJ1Y3QgZ3Bpb19kZXNj
cyBhcyB0aGUgZmlyc3QgcGFyYW1ldGVyIHRvIG1ha2UgaXQgYSBiaXQKPiBlYXNpZXIgdG8gcmVh
ZCB0aGUgY29kZSBhbmQgYXZvaWQgdGhlIGhhcmQtY29kaW5nIHRlbXB0YXRpb24uCj4KPiBJJ3Zl
IGp1c3QgZG9uZSBncGlvZF9tdWx0aV9zZXRfdmFsdWVfY2Fuc2xlZXAoKSBmb3Igbm93IHNpbmNl
IHRoZXJlCj4gd2VyZSBvdmVyIDEwIGNhbGxlcnMgb2YgdGhpcyBvbmUuIFRoZXJlIGFyZW4ndCBh
cyBtYW55IGNhbGxlcnMgb2YKPiB0aGUgZ2V0IGFuZCBhdG9taWMgdmFyaWFudHMsIGJ1dCB3ZSBj
YW4gYWRkIHRob3NlIHRvbyBpZiB0aGlzIHNlZW1zCj4gbGlrZSBhIHVzZWZ1bCB0aGluZyB0byBk
by4KPgo+IE1haW50YWluZXJzLCBpZiB5b3UgcHJlZmVyIHRvIGhhdmUgdGhpcyBnbyB0aHJvdWdo
IHRoZSBncGlvIHRyZWUsIHBsZWFzZQo+IGdpdmUgeW91ciBBY2tlZC1ieTosIG90aGVyd2lzZSBJ
IHdpbGwgcmVzZW5kIHdoYXQgaXMgbGVmdCBhZnRlciB0aGUgbmV4dAo+IGtlcm5lbCByZWxlYXNl
Lgo+Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIFJlbmFtZWQgbmV3IGZ1bmN0aW9uIGZyb20g
Z3Bpb2RzX211bHRpX3NldF92YWx1ZV9jYW5zbGVlcCgpIHRvCj4gICBncGlvZF9tdWx0aV9zZXRf
dmFsdWVfY2Fuc2xlZXAoKQo+IC0gRml4ZWQgdHlwbyBpbiBuYW1lIG9mIHJlcGxhY2VkIGZ1bmN0
aW9uIGluIGFsbCBjb21taXQgbWVzc2FnZXMuCj4gLSBQaWNrZWQgdXAgdHJhaWxlcnMuCj4gLSBM
aW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwMTMxLWdwaW8tc2V0LWFy
cmF5LWhlbHBlci12MS0wLTk5MWM4Y2NiNGQ2ZUBiYXlsaWJyZS5jb20KPgo+IC0tLQo+IERhdmlk
IExlY2huZXIgKDEzKToKPiAgICAgICBncGlvbGliOiBhZGQgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVl
X2NhbnNsZWVwKCkKPiAgICAgICBhdXhkaXNwbGF5OiBzZWctbGVkLWdwaW86IHVzZSBncGlvZF9t
dWx0aV9zZXRfdmFsdWVfY2Fuc2xlZXAKPiAgICAgICBidXM6IHRzLW5idXM6IHZhbGlkYXRlIHRz
LGRhdGEtZ3Bpb3MgYXJyYXkgc2l6ZQo+ICAgICAgIGJ1czogdHMtbmJ1czogdXNlIGdwaW9kX211
bHRpX3NldF92YWx1ZV9jYW5zbGVlcAo+ICAgICAgIGdwaW86IG1heDMxOTF4OiB1c2UgZ3Bpb2Rf
bXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwCj4gICAgICAgaWlvOiBhZGM6IGFkNzYwNjogdXNlIGdw
aW9kX211bHRpX3NldF92YWx1ZV9jYW5zbGVlcAo+ICAgICAgIGlpbzogYW1wbGlmaWVyczogaG1j
NDI1YTogdXNlIGdwaW9kX211bHRpX3NldF92YWx1ZV9jYW5zbGVlcAo+ICAgICAgIGlpbzogcmVz
b2x2ZXI6IGFkMnMxMjEwOiB1c2UgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwCj4gICAg
ICAgbW1jOiBwd3JzZXFfc2ltcGxlOiB1c2UgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVw
Cj4gICAgICAgbXV4OiBncGlvOiB1c2UgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwCj4g
ICAgICAgbmV0OiBtZGlvOiBtdXgtZ3BpbzogdXNlIGdwaW9kX211bHRpX3NldF92YWx1ZV9jYW5z
bGVlcAo+ICAgICAgIHBoeTogbWFwcGhvbmUtbWRtNjYwMDogdXNlIGdwaW9kX211bHRpX3NldF92
YWx1ZV9jYW5zbGVlcAo+ICAgICAgIEFTb0M6IGFkYXUxNzAxOiB1c2UgZ3Bpb2RfbXVsdGlfc2V0
X3ZhbHVlX2NhbnNsZWVwCj4KPiAgZHJpdmVycy9hdXhkaXNwbGF5L3NlZy1sZWQtZ3Bpby5jICAg
ICAgICAgICB8ICAzICstLQo+ICBkcml2ZXJzL2J1cy90cy1uYnVzLmMgICAgICAgICAgICAgICAg
ICAgICAgIHwgMTAgKysrKysrLS0tLQo+ICBkcml2ZXJzL2dwaW8vZ3Bpby1tYXgzMTkxeC5jICAg
ICAgICAgICAgICAgIHwgMTggKysrKysrKy0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvaWlvL2FkYy9h
ZDc2MDYuYyAgICAgICAgICAgICAgICAgICAgfCAgMyArLS0KPiAgZHJpdmVycy9paW8vYWRjL2Fk
NzYwNl9zcGkuYyAgICAgICAgICAgICAgICB8ICAzICstLQo+ICBkcml2ZXJzL2lpby9hbXBsaWZp
ZXJzL2htYzQyNWEuYyAgICAgICAgICAgIHwgIDMgKy0tCj4gIGRyaXZlcnMvaWlvL3Jlc29sdmVy
L2FkMnMxMjEwLmMgICAgICAgICAgICAgfCAgOCArKy0tLS0tLQo+ICBkcml2ZXJzL21tYy9jb3Jl
L3B3cnNlcV9zaW1wbGUuYyAgICAgICAgICAgIHwgIDMgKy0tCj4gIGRyaXZlcnMvbXV4L2dwaW8u
YyAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgNCArLS0tCj4gIGRyaXZlcnMvbmV0L21kaW8v
bWRpby1tdXgtZ3Bpby5jICAgICAgICAgICAgfCAgMyArLS0KPiAgZHJpdmVycy9waHkvbW90b3Jv
bGEvcGh5LW1hcHBob25lLW1kbTY2MDAuYyB8ICA0ICstLS0KPiAgaW5jbHVkZS9saW51eC9ncGlv
L2NvbnN1bWVyLmggICAgICAgICAgICAgICB8ICA3ICsrKysrKysKPiAgc291bmQvc29jL2NvZGVj
cy9hZGF1MTcwMS5jICAgICAgICAgICAgICAgICB8ICA0ICstLS0KPiAgMTMgZmlsZXMgY2hhbmdl
ZCwgMzEgaW5zZXJ0aW9ucygrKSwgNDIgZGVsZXRpb25zKC0pCj4gLS0tCj4gYmFzZS1jb21taXQ6
IGRmNGIyYmJmZjg5ODIyN2RiMGMxNDI2NGFjN2VkZDYzNGU3OWY3NTUKPiBjaGFuZ2UtaWQ6IDIw
MjUwMTMxLWdwaW8tc2V0LWFycmF5LWhlbHBlci1iZDRhMzI4MzcwZDMKPgo+IEJlc3QgcmVnYXJk
cywKPiAtLQo+IERhdmlkIExlY2huZXIgPGRsZWNobmVyQGJheWxpYnJlLmNvbT4KPgoKSSBjYW4g
cHJvdmlkZSBhbiBpbW11dGFibGUgYnJhbmNoIGZvciB0aGUgZW50aXJlIHNlcmllcyBmb3IgZXZl
cnlvbmUKdG8gcHVsbCBvciBJIGNhbiBhcHBseSBwYXRjaCBvbmUsIHByb3ZpZGUgYW4gaW1tdXRh
YmxlIGJyYW5jaCBhbmQKZXZlcnkgc3Vic3lzdGVtIGNhbiB0YWtlIHRoZWlyIHJlc3BlY3RpdmUg
cGF0Y2hlcy4gV2hhdCBkbyB5b3UgcHJlZmVyPwoKQmFydG9zegoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
