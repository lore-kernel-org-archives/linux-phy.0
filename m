Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B01B4CE7A8A
	for <linux-phy@archiver.kernel.org>; Sun, 24 Sep 2023 20:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dGjPS4x0cwtK4dfxYYYbDaHhKxJ61eIVULlvPSKuyCM=; b=RZZZllDIZ3Lg+o
	vqypWF7GTAI/k7tDiiD31m1Y1YN2kjWXcE1Xxt9Ci4uDh1IAg3/xiCSLRJcyrea89DUiOCQO5OHla
	TQ/LGk4ILUnSOMn5d6cLscbJ2aV+shIgg20RGb+gp2/8iRjR1fyu+n0ZvPYHrcUeUfTsYcaXGBW6x
	Q1jcWzu5uzmTYtFSLoLHA/BIBRjWmWVY4X4hVyJr5iE6l9vkZECtOuMYD6fhaj6q/fHW7VSuGKqsq
	rwiJvAMGYYnOa4tNKDKvBAyC7qV15JuEOnxsgEjxhw8fxh/OmH4HzNS5kjRu5rWTCH0SuWQYsG49i
	QlcWqEoy9GHHIuNlHr8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkVIR-00Cl07-0X;
	Sun, 24 Sep 2023 20:01:39 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkVIN-00Ckye-29;
	Sun, 24 Sep 2023 20:01:37 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2bfea381255so85964571fa.3;
        Sun, 24 Sep 2023 13:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695585688; x=1696190488; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r/sEzFSU1WeZTVMeaZJF4z8FtiU96nb3S95OQlSjSS0=;
        b=XuZJer674GfISHScFDq2av0/47ljewVYpWN9HJfyJOaRP9vtKSjdC9HXUDrxWHn2P1
         Hyfa+kNcrAYFv/gHUNr13l0V+JaT7eWVhbkqyc07o1tN+R2F5hrbMY5bAnGW/bSqVv2M
         SIq858GxyjmQWXuuKnDTm/4nPhVFdaxG+gqlNPRdaIBLjFJHn64w4CW7OHvIMSoFQvaZ
         oNho+yl7+ZZlD/gRmV5NEgOWrasKRRiL8xONsWjrNT1lcrKedEhjeYXRqhJawh4FcaES
         6/x7kU2xHRla6y5ZQKYzN92vpH13b5r3LAUZfnzN+l9o6BWj80DFmWrDsLQ7jk3URggg
         Pivw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695585688; x=1696190488;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r/sEzFSU1WeZTVMeaZJF4z8FtiU96nb3S95OQlSjSS0=;
        b=OYYrIbeWyv9+XUySVVQGJSb/3K1xEAI8PNRnw+1TkjCvH6iN41t71PyRXKggfw4ssw
         IHjzL4GjDTWU6Zyo8X3w5wITsAY8VRvVIr0Ei4AXgSVV6578YJqSh1WD2//TYkG6Y5zG
         CryRRk7bI4BN+rsOQG7ZwoZ7zWxz4FQBmE25fd1KG1q18bcv5WEkAkaEqH9X1FJxf/gd
         zZ8rD8O3dGyWZ5f9vsfTjluRuDkwJw1ng92mVVDW1e8eyzyuAx1lrjEBHB7bm3vKCCVm
         74n3cWeMfxKlsDopotDgLDUevuvWXdQXSkTHDRUYkOXLXn1KHAluwlQV1X19I5TPAEy4
         b6lg==
X-Gm-Message-State: AOJu0YwjtIaF2yY2yf/Z6nF0hD2JLIqdl9MNasLztTaLjdNyY7dao443
	yW9CC1HN9VTxMmojjpIJWFs0Sg+mFXv7Frb5
X-Google-Smtp-Source: AGHT+IHXra175J8cJCP1mYtvO6y1HC5Qd13x962DSEgj/v3iYxK9Qz6wXvUiRAobb0w7iX71A52zWA==
X-Received: by 2002:a2e:b78f:0:b0:2bf:cf44:dde5 with SMTP id n15-20020a2eb78f000000b002bfcf44dde5mr4102294ljo.30.1695585688175;
        Sun, 24 Sep 2023 13:01:28 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id l15-20020a1709067d4f00b009920a690cd9sm5340296ejp.59.2023.09.24.13.01.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 13:01:27 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] phy: sun4i-usb: Fix a W=1 compilation failure
Date: Sun, 24 Sep 2023 22:01:26 +0200
Message-ID: <3520089.iIbC2pHGDl@jernej-laptop>
In-Reply-To: <0bc81612171baaa6d5dff58c8e009debc03e1ba8.1693735840.git.christophe.jaillet@wanadoo.fr>
References: <0bc81612171baaa6d5dff58c8e009debc03e1ba8.1693735840.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230924_130135_711150_F5467F11 
X-CRM114-Status: GOOD (  16.24  )
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

RG5lIG5lZGVsamEsIDAzLiBzZXB0ZW1iZXIgMjAyMyBvYiAxMjoxMTowNiBDRVNUIGplIENocmlz
dG9waGUgSkFJTExFVCBuYXBpc2FsKGEpOgo+IFdpdGggZ2NjIDEyLjMuMCwgd2hlbiB0aGlzIGZp
bGUgaXMgYnVpbHQsIHdlIGdldCBlcnJvcnMgc3VjaCBhczoKPiAKPiBkcml2ZXJzL3BoeS9hbGx3
aW5uZXIvcGh5LXN1bjRpLXVzYi5jOiBJbiBmdW5jdGlvbiDigJhzdW40aV91c2JfcGh5X3Byb2Jl
4oCZOgo+IGRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmM6NzkwOjUyOiBlcnJv
cjog4oCYX3ZidXPigJkgZGlyZWN0aXZlIG91dHB1dCBtYXkgYmUgdHJ1bmNhdGVkIHdyaXRpbmcg
NSBieXRlcyBpbnRvIGEgcmVnaW9uIG9mIHNpemUgYmV0d2VlbiAyIGFuZCAxMiBbLVdlcnJvcj1m
b3JtYXQtdHJ1bmNhdGlvbj1dCj4gICA3OTAgfCAgICAgICAgICAgICAgICAgc25wcmludGYobmFt
ZSwgc2l6ZW9mKG5hbWUpLCAidXNiJWRfdmJ1cyIsIGkpOwo+ICAgICAgIHwgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn4KPiBkcml2ZXJzL3Bo
eS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5jOjc5MDoxNzogbm90ZTog4oCYc25wcmludGbigJkg
b3V0cHV0IGJldHdlZW4gMTAgYW5kIDIwIGJ5dGVzIGludG8gYSBkZXN0aW5hdGlvbiBvZiBzaXpl
IDE2Cj4gICA3OTAgfCAgICAgICAgICAgICAgICAgc25wcmludGYobmFtZSwgc2l6ZW9mKG5hbWUp
LCAidXNiJWRfdmJ1cyIsIGkpOwo+ICAgICAgIHwgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IAo+IEJlY2F1c2Ugb2YgdGhlIHBv
c3NpYmxlIHZhbHVlIG9mICdpJywgdGhpcyBjYW4ndCBiZSBhbiBpc3N1ZSBpbiByZWFsIHdvcmxk
Cj4gYXBwbGljYXRpb24sIGJ1dCBpbiBvcmRlciB0byBoYXZlICJtYWtlIFc9MSIgd29yayBjb3Jy
ZWN0bHksIGdpdmUgbW9yZQo+IHNwYWNlIGZvciAnbmFtZScuCj4gCj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXN0b3BoZSBKQUlMTEVUIDxjaHJpc3RvcGhlLmphaWxsZXRAd2FuYWRvby5mcj4KCkFja2Vk
LWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAZ21haWwuY29tPgoKQmVzdCByZWdh
cmRzLApKZXJuZWoKCj4gLS0tCj4gIGRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNi
LmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5j
IGIvZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2IuYwo+IGluZGV4IGVjNTUxNDY0
ZGQ0Zi4uZTUzYTlhOTMxN2JjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9w
aHktc3VuNGktdXNiLmMKPiArKysgYi9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVz
Yi5jCj4gQEAgLTc4Miw3ICs3ODIsNyBAQCBzdGF0aWMgaW50IHN1bjRpX3VzYl9waHlfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCj4gIAlmb3IgKGkgPSAwOyBpIDwgZGF0
YS0+Y2ZnLT5udW1fcGh5czsgaSsrKSB7Cj4gIAkJc3RydWN0IHN1bjRpX3VzYl9waHkgKnBoeSA9
IGRhdGEtPnBoeXMgKyBpOwo+IC0JCWNoYXIgbmFtZVsxNl07Cj4gKwkJY2hhciBuYW1lWzMyXTsK
PiAgCj4gIAkJaWYgKGRhdGEtPmNmZy0+bWlzc2luZ19waHlzICYgQklUKGkpKQo+ICAJCQljb250
aW51ZTsKPiAKCgoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
