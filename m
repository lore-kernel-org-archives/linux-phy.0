Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E1D3C0218A
	for <linux-phy@archiver.kernel.org>; Sat,  1 Feb 2025 19:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+9QjmZuNh8lmDtO4ae27hH8PMnh3KEmlZhJ+h4XbS8=; b=iYQO/0oA3c7kKP
	Vk6NlnWw1/+eUDlu52fsoKPbql8DX8yCJEIQjn8nUkIz1aRIeRaxYe+He6QZDIKjY9gJfMyVfpoOe
	18iVSEZUYk6fZwcITQMO3NSfmp1/CmDUBqg0lUvp1WDoz6mKDoUQ3J1wxStGgeNK6fIq4ckm0KSpf
	dl3v8Wf7e/fqfeQTGeaAmla/ulGKzZC+TAHPHcnsP6sK5EIV8qvCOU/PmoCJ7SpvaDjdKVxXuibkC
	pxwQ2JyD6BYnZGxgOPa7gxRWxE2CWJ1kIqsyyIByWMU0fKMRe7+eopwjDgw6793SxtAopYChboClG
	UcvC9FzrSEFD9uRZrl3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teJTA-0000000D4cQ-3Nn4;
	Sat, 01 Feb 2025 19:47:56 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1teJT8-0000000D4bv-0MhR
	for linux-phy@lists.infradead.org;
	Sat, 01 Feb 2025 19:47:55 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-ab70043cd05so377484866b.0
        for <linux-phy@lists.infradead.org>; Sat, 01 Feb 2025 11:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738439272; x=1739044072; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Y2iEwJwFkc2B9GqWgu70tRdf2FM2JE7y2skPhWMyUI=;
        b=R+pceVkUMtDbGeNGGznBGUthv+Jb7fPoaEKwNLj14YBB+kogOH66mQ93nl6sdQHmIb
         MuChCz91lVyCRVeY0Z1A+jNpgOn77MUP9PQWpuf6NQwBg3hqNM5LuitS7kKvjubT/SLz
         kk+P5ClVzNecndOyk71vrfJ8YbdmUy+hENbCBMLa72MdDb5eYXDenEVw7bmisXLJj4EM
         VHHEZhbherMS5+bmRExJjOiu9qVhoMsbLwd8CFfCQUzvKGPhEo6c3Y/TlSnYx5xgKaE1
         Gbe+p/1R6yBfQoH/kOvFb2I5tQmy8QxIH+puFIqbgCIPE3Pf7D0bWRzSo3TGZLNIk6b1
         FF/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738439272; x=1739044072;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Y2iEwJwFkc2B9GqWgu70tRdf2FM2JE7y2skPhWMyUI=;
        b=fdpWyl3bG5A0YJ4ButBoaEYIXrNqDgkz8g+sn9k1IPzJsyqPopkcfC+a2vagoPfBN4
         Ub82Nl7LV85PnHyn+ejrG9EKbnQxfsg5LSMJASZUAorbQU4SSmI8tPCv1+p6wMpYI5KN
         kgOuEQgZ968VCeZXw3RgzCzWn29bXvIG1V5TBpPeJUIrRURYuAMk/ivfa0OsWKSITxiQ
         ml9QEp/2boudZkmrSuR7zLb9nQx9R3L3zn1Js0Qc91485OrprglH4DY1AQN/7d/6cPzG
         CccKlc4fazCYlm+b/5EGRkSiIAYycm+fq9CRFZThk6dN/LcjrXAkzwMziYBSfCgDzsYC
         lVSg==
X-Forwarded-Encrypted: i=1; AJvYcCUdutRA1xDXBwA0wwEBkbOiniXQDvU2+15Ra6HWyiZsZ2NUJRKl9jZT5yrAFozs8fSppQM+kBv56uQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0GRFQuy4aPCBK1RFRz8k4b/9yJfLy1gLa4A3xx8YvcTyMoyTe
	ekZiSlJiIeB9uS0iFlxkMbasLzLxJrJwLLKibqwbbRIxGvW1xIXwAdg+VKDuNmfz4duF5Q2q2aH
	UnQVXHj70S7OyjjGVwD0Z6cviSkk=
X-Gm-Gg: ASbGncv7ehQDD47hH2nGSfW+ItlNHZ9EMnZa3mkB5rXgNKCg5gLQpJe/yb6bvHQPpQu
	nrd/eCU4oGoiGk7+AOFzb0Bk44q++6lntjOAsfFGff7h4FLojvVZ/RnZ0xKJ1x611ZDBBONcN
X-Google-Smtp-Source: AGHT+IERpw1g5M8zApVrYpVEyiqFZwYlR+EKeXU2Shhx2R7/TSFd//bZA6HHTfe0pDB1mxJjnTIivwCXlr0P6UlEOUg=
X-Received: by 2002:a17:907:da0:b0:ab6:8537:60d6 with SMTP id
 a640c23a62f3a-ab6cfcc2e89mr2048306966b.7.1738439271988; Sat, 01 Feb 2025
 11:47:51 -0800 (PST)
MIME-Version: 1.0
References: <20250131-gpio-set-array-helper-v1-0-991c8ccb4d6e@baylibre.com>
 <CAMRc=MdwQL8dWU5zF5fp+KUbC2RA2Q264by8HGXMg2k1rxhsTA@mail.gmail.com>
 <9931433b-5cde-4819-ac96-eea4f1f0f1f2@baylibre.com> <CAMRc=McEdcDs01BAKN5vg9POg_xxJBY1k8bfgiDN60C1-e_jow@mail.gmail.com>
 <072be5a9-e0fb-4073-85b3-4a8efcafae09@baylibre.com> <CAMRc=Meq_Gfhcjzx0vCL0JPzfnOcijFgB6AuqtsqgGn1eOTMVg@mail.gmail.com>
In-Reply-To: <CAMRc=Meq_Gfhcjzx0vCL0JPzfnOcijFgB6AuqtsqgGn1eOTMVg@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 1 Feb 2025 21:47:15 +0200
X-Gm-Features: AWEUYZnwTIj9KEDy9rRdO0tPB3DfcugGi6Loe0pNH7j-w_mg25ltYxBcKQtk_8k
Message-ID: <CAHp75Ve+iwrm8dx49+6C7xFJgTQrh3XumKVzKvnYY=00J-j43A@mail.gmail.com>
Subject: Re: [PATCH 00/13] gpiolib: add gpiods_set_array_value_cansleep
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: David Lechner <dlechner@baylibre.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-sound@vger.kernel.org, 
	Linus Walleij <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250201_114754_129322_BD4BD6D9 
X-CRM114-Status: GOOD (  20.03  )
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

T24gU2F0LCBGZWIgMSwgMjAyNSBhdCA2OjIy4oCvUE0gQmFydG9zeiBHb2xhc3pld3NraSA8YnJn
bEBiZ2Rldi5wbD4gd3JvdGU6Cj4gT24gU2F0LCBGZWIgMSwgMjAyNSBhdCA1OjE34oCvUE0gRGF2
aWQgTGVjaG5lciA8ZGxlY2huZXJAYmF5bGlicmUuY29tPiB3cm90ZToKPiA+IE9uIDIvMS8yNSAx
MDoxNCBBTSwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiA+ID4gT24gU2F0LCBGZWIgMSwg
MjAyNSBhdCA1OjA54oCvUE0gRGF2aWQgTGVjaG5lciA8ZGxlY2huZXJAYmF5bGlicmUuY29tPiB3
cm90ZToKPiA+ID4+IE9uIDIvMS8yNSA0OjM2IEFNLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3Rl
OgoKLi4uCgo+ID4gPj4+IFRoaXMgbG9va3MgZ29vZCB0byBtZSBleGNlcHQgZm9yIG9uZSB0aGlu
ZzogdGhlIGZ1bmN0aW9uIHByZWZpeC4gSSB3b3VsZAo+ID4gPj4+IHJlYWxseSBhcHByZWNpYXRl
IGl0IGlmIHdlIGNvdWxkIHN0YXkgd2l0aGluIHRoZSBleGlzdGluZyBncGlvZF8gbmFtZXNwYWNl
IGFuZAo+ID4gPj4+IG5vdCBhZGQgYSBuZXcgb25lIGluIHRoZSBmb3JtIG9mIGdwaW9kc18uCj4g
PiA+Pj4KPiA+ID4+PiBNYXliZTogZ3Bpb2RfbXVsdGlwbGVfc2V0XyBvciBncGlvZF9jb2xsZWN0
ZWRfc2V0Li4uPwo+ID4gPj4KPiA+ID4+IEkgd2FzIHdhaXRpbmcgZm9yIHNvbWVvbmUgdG8gY29t
cGxhaW4gYWJvdXQgdGhlIG5hbWluZy4gOy0pCj4gPiA+Pgo+ID4gPj4gSSB3YXMgZ29pbmcgZm9y
IGFzIHNob3J0IGFzIHBvc3NpYmxlLCBidXQgT0ssIHRoZSBtb3N0IG9idmlvdXMgcHJlZml4IHRv
IG1lCj4gPiA+PiB3b3VsZCBiZSBgZ3Bpb19kZXNjc18uLi5gICh0byBtYXRjaCB0aGUgZmlyc3Qg
cGFyYW1ldGVyKS4gQW55IG9iamVjdGlvbnMgdG8KPiA+ID4+IHRoYXQ/Cj4gPiA+Cj4gPiA+IFll
cywgb2JqZWN0aW9uISBBcyBmYXIgYXMgYW55IGV4cG9ydGVkIGludGVyZmFjZXMgZ286IGluIG15
IGJvb2sKPiA+ID4gImdwaW9fIiBpcyB0aGUgcHJlZml4IGZvciBsZWdhY3kgc3ltYm9scyB3ZSB3
YW50IHRvIGdvIGF3YXkgYW5kCj4gPiA+ICJncGlvZF8iIGlzIHRoZSBwcmVmaXggZm9yIGN1cnJl
bnQsIGRlc2NyaXB0b3ItYmFzZWQgQVBJLiBBbnl0aGluZwo+ID4gPiBlbHNlIGlzIGEgbm8tZ28u
IEkgcHJlZmVyIGEgbG9uZ2VyIG5hbWUgdGhhdCBzdGFydHMgd2l0aCBncGlvZF8gb3Zlcgo+ID4g
PiBhbnl0aGluZyB0aGF0J3Mgc2hvcnRlciBidXQgZG9lc24ndC4KPiA+Cj4gPiBPb3BzLCB0aGF0
IHdhcyBhIHR5cG8uIEkgbWVhbnQgdG8gd3JpdGUgZ3Bpb2RfZGVzY3NfLgo+Cj4gRWguLi4gdGhl
IEQgaW4gZ3Bpb0QgYWxyZWFkeSBzdGFuZHMgZm9yICJHUElPIERlc2NyaXB0b3IiIGJ1dCBpZgo+
IHRoZXJlJ3Mgbm8gYmV0dGVyIG9wdGlvbiBpbiB5b3VyIG9waW5pb24gdGhhbiBJIGd1ZXNzIEkg
Y2FuIGxpdmUgd2l0aAo+IHRoYXQuCgpncGlvZF9zZXRfbWFueV92YWx1ZV9jYW5zbGVlcCgpID8K
Ci0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
