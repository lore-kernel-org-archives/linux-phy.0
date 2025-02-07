Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A956C0219B
	for <linux-phy@archiver.kernel.org>; Fri,  7 Feb 2025 09:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPCJBHvifhzkXkODLIjtYmU+rQrCNHHKXMX6F3dBpRU=; b=qBWiJzu2LMG2iO
	/DlG8mJ96IMLaEU49ZlOV/k3QkhyzmACIWqbJia5d1ps8dGbmIfs6izgX1YHVIgGK9Sy4lQl1Cu41
	YzAYOAtu8MzAobtC9y3SD7/b38859xX6JFWokgzNrw07T6BZJVsozqeiPp1rXQ4hWmtiUmtqV7t03
	SIGmD9eRBePG8hBX+p0OvRHA7epPfsbuuE3zug0AvllCsW5CwHu29FQS4NZY41Cc0XX4krGEifqbm
	1tG6pO4PQVXgaZR14GL0K08k7pSScghvhSXUFE6IMORFAi0S51sR7SDtPdPMTcBXMuBzBbQa1qfEO
	d79w+YUVoKVwrYRlF3PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgKxz-000000096Lu-411k;
	Fri, 07 Feb 2025 09:48:07 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgKxy-000000096LO-0R7j
	for linux-phy@lists.infradead.org;
	Fri, 07 Feb 2025 09:48:07 +0000
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-e46c6547266so1474204276.3
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 01:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738921684; x=1739526484; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eEK7srIgXJXdQr67Fg7HQYgRLAiGEeTLhNAT3vGh0e4=;
        b=W3N2vuUFVHHuDdgkgRRqMJkfCnC+wFWV1+fP7lVdisvanQquOsTdgd9/6jXBAsVoSQ
         cBdI2kY8nXTDJ2qfx/Ec3e3SRvcyl4mXOeD3Z9Q6SCInEqSmheKYXjqhsqU48XtIdDwf
         YvUeMN1as0RyyXM9zioF/fL+mpho4NrJoo20JSX5P94x469nUWaggLMMpn7sPqIIyMZ6
         m4OmakMgIDsUB04svA5/owjYZoQ88NbYlLWyK1YQsD+8EFX5G7EUwF7G8iHZYVt1QnsQ
         BqitTgD6xMiQHkDRMhJjuYZqKJaMPTxdjr/FFC05b0br9aCu5mXzTOwZA42lWt/7UbCR
         rFzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738921684; x=1739526484;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eEK7srIgXJXdQr67Fg7HQYgRLAiGEeTLhNAT3vGh0e4=;
        b=qXOp54tlpIVxwAIxt/NHtgM159VTy/rr5xSf9euCXDeZtlFBCJ61s9dasXoTwelit5
         tbKUSCtKalSWDgmm/Aw1PZqdVKIfRXYCAl5Wayq8JIDPkkpVuHTGdWIEjLqE0LlGvhfP
         KWUpVNZy5PM3iZL7gESlQqjpaKffNFZVPH0ekctxZbk6UkXLIj77coOd88EiWFxai9zm
         hlB0UdlmptJ0AcCXAbpqLn8GUbmsqoh8BcIR7ZkoFaD3xkdKzfzkjaQDCKkG5ClmyhDz
         0WJtO2o3V8LbieY88pDLmlrR7y98B1Ak/1iOYh+FFDF0O6QBP7IJ+BsE6NNRjvRzEmgB
         BV/w==
X-Forwarded-Encrypted: i=1; AJvYcCXCkbu+AKN0DY2hlPcL5s+P6pXYFmOyEx2BpQ08rVThtA2do+W2HZYXx2RyYvapE5/8qJi7RfaQNaY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwEAvnQQAR7eCk966W33mZcrtMlRbKX5ENhBNy98Pr6J135jC5g
	j0EBazaFwzzNNBeGsokW8J7eLL+UptTQ8Jc3q4YdxuMl2a+loxofklkGKl9OisfDDlnr36gvBES
	7TM8onjPK7H/2Z9w6xOVvQ2sabtAG2ErWettmYw==
X-Gm-Gg: ASbGnctWHoBoKaMOjOCm3imfqaNGvs3OjXIM0I28judN9QbIsr+D+0S4R+u6GLkFfnv
	NmfILT0x7EorMLgPb5K02k+Xv/Xb3lgmR9HAt30pKDi6U9NinxjiFMDMib8dyKlVBv0Ahc3FCnw
	==
X-Google-Smtp-Source: AGHT+IGaJbQYks+y9NqxM+qNlDYUH78x9F5VX2tG1O9YPe70PH5B1lWBp0wyp4yxEx4N6batSHVUPkLgj4MGDriydyE=
X-Received: by 2002:a05:690c:6810:b0:6f9:3e3d:3f2e with SMTP id
 00721157ae682-6f9b2a07006mr20703297b3.33.1738921684631; Fri, 07 Feb 2025
 01:48:04 -0800 (PST)
MIME-Version: 1.0
References: <20250206-gpio-set-array-helper-v2-0-1c5f048f79c3@baylibre.com> <CAMRc=Mf9WQjVXvea7tHx0MJG2H8Yqxw=zGqvjp7dfD7+=huDKw@mail.gmail.com>
In-Reply-To: <CAMRc=Mf9WQjVXvea7tHx0MJG2H8Yqxw=zGqvjp7dfD7+=huDKw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 7 Feb 2025 10:47:28 +0100
X-Gm-Features: AWEUYZnfTmLhFuLgJjE2ppjqoqNxz5h92L1nmRlGKxGgOfCbaSg6_8WxaR2gtUA
Message-ID: <CAPDyKFoNuXpTEm1rLPvAgib+ugqr7XyETZhfrNr6ypOOKRwjXQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/13] gpiolib: add gpiod_multi_set_value_cansleep
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: David Lechner <dlechner@baylibre.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Andy Shevchenko <andy@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
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
X-CRM114-CacheID: sfid-20250207_014806_146551_0C46E8D9 
X-CRM114-Status: GOOD (  33.29  )
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

T24gRnJpLCA3IEZlYiAyMDI1IGF0IDA4OjQ5LCBCYXJ0b3N6IEdvbGFzemV3c2tpIDxicmdsQGJn
ZGV2LnBsPiB3cm90ZToKPgo+IE9uIFRodSwgRmViIDYsIDIwMjUgYXQgMTE6NDjigK9QTSBEYXZp
ZCBMZWNobmVyIDxkbGVjaG5lckBiYXlsaWJyZS5jb20+IHdyb3RlOgo+ID4KPiA+IFRoaXMgc2Vy
aWVzIHdhcyBpbnNwaXJlZCBieSBzb21lIG1pbm9yIGFubm95YW5jZSBJIGhhdmUgZXhwZXJpZW5j
ZWQgYQo+ID4gZmV3IHRpbWVzIGluIHJlY2VudCByZXZpZXdzLgo+ID4KPiA+IENhbGxpbmcgZ3Bp
b2Rfc2V0X2FycmF5X3ZhbHVlX2NhbnNsZWVwKCkgY2FuIGJlIHF1aXRlIHZlcmJvc2UgZHVlIHRv
Cj4gPiBoYXZpbmcgc28gbWFueSBwYXJhbWV0ZXJzLiBJbiBtb3N0IGNhc2VzLCB3ZSBhbHJlYWR5
IGhhdmUgYSBzdHJ1Y3QKPiA+IGdwaW9fZGVzY3MgdGhhdCBjb250YWlucyB0aGUgZmlyc3QgMyBw
YXJhbWV0ZXJzIHNvIHdlIGVuZCB1cCB3aXRoIDMgKG9yCj4gPiBvZnRlbiBldmVuIDYpIHBvaW50
ZXIgaW5kaXJlY3Rpb25zIGF0IGVhY2ggY2FsbCBzaXRlLiBBbHNvLCBwZW9wbGUgaGF2ZQo+ID4g
YSB0ZW5kZW5jeSB0byB3YW50IHRvIGhhcmQtY29kZSB0aGUgZmlyc3QgYXJndW1lbnQgaW5zdGVh
ZCBvZiB1c2luZwo+ID4gc3RydWN0IGdwaW9fZGVzY3MubmRlc2NzLCBvZnRlbiB3aXRob3V0IGNo
ZWNraW5nIHRoYXQgbmRlc2NzID49IHRoZQo+ID4gaGFyZC1jb2RlZCB2YWx1ZS4KPiA+Cj4gPiBT
byBJJ20gcHJvcG9zaW5nIHRoYXQgd2UgYWRkIGEgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNs
ZWVwKCkKPiA+IGZ1bmN0aW9uIHRoYXQgaXMgYSB3cmFwcGVyIGFyb3VuZCBncGlvZF9zZXRfYXJy
YXlfdmFsdWVfY2Fuc2xlZXAoKQo+ID4gdGhhdCBoYXMgc3RydWN0IGdwaW9fZGVzY3MgYXMgdGhl
IGZpcnN0IHBhcmFtZXRlciB0byBtYWtlIGl0IGEgYml0Cj4gPiBlYXNpZXIgdG8gcmVhZCB0aGUg
Y29kZSBhbmQgYXZvaWQgdGhlIGhhcmQtY29kaW5nIHRlbXB0YXRpb24uCj4gPgo+ID4gSSd2ZSBq
dXN0IGRvbmUgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwKCkgZm9yIG5vdyBzaW5jZSB0
aGVyZQo+ID4gd2VyZSBvdmVyIDEwIGNhbGxlcnMgb2YgdGhpcyBvbmUuIFRoZXJlIGFyZW4ndCBh
cyBtYW55IGNhbGxlcnMgb2YKPiA+IHRoZSBnZXQgYW5kIGF0b21pYyB2YXJpYW50cywgYnV0IHdl
IGNhbiBhZGQgdGhvc2UgdG9vIGlmIHRoaXMgc2VlbXMKPiA+IGxpa2UgYSB1c2VmdWwgdGhpbmcg
dG8gZG8uCj4gPgo+ID4gTWFpbnRhaW5lcnMsIGlmIHlvdSBwcmVmZXIgdG8gaGF2ZSB0aGlzIGdv
IHRocm91Z2ggdGhlIGdwaW8gdHJlZSwgcGxlYXNlCj4gPiBnaXZlIHlvdXIgQWNrZWQtYnk6LCBv
dGhlcndpc2UgSSB3aWxsIHJlc2VuZCB3aGF0IGlzIGxlZnQgYWZ0ZXIgdGhlIG5leHQKPiA+IGtl
cm5lbCByZWxlYXNlLgo+ID4KPiA+IC0tLQo+ID4gQ2hhbmdlcyBpbiB2MjoKPiA+IC0gUmVuYW1l
ZCBuZXcgZnVuY3Rpb24gZnJvbSBncGlvZHNfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwKCkgdG8K
PiA+ICAgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwKCkKPiA+IC0gRml4ZWQgdHlwbyBp
biBuYW1lIG9mIHJlcGxhY2VkIGZ1bmN0aW9uIGluIGFsbCBjb21taXQgbWVzc2FnZXMuCj4gPiAt
IFBpY2tlZCB1cCB0cmFpbGVycy4KPiA+IC0gTGluayB0byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvci8yMDI1MDEzMS1ncGlvLXNldC1hcnJheS1oZWxwZXItdjEtMC05OTFjOGNjYjRkNmVA
YmF5bGlicmUuY29tCj4gPgo+ID4gLS0tCj4gPiBEYXZpZCBMZWNobmVyICgxMyk6Cj4gPiAgICAg
ICBncGlvbGliOiBhZGQgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwKCkKPiA+ICAgICAg
IGF1eGRpc3BsYXk6IHNlZy1sZWQtZ3BpbzogdXNlIGdwaW9kX211bHRpX3NldF92YWx1ZV9jYW5z
bGVlcAo+ID4gICAgICAgYnVzOiB0cy1uYnVzOiB2YWxpZGF0ZSB0cyxkYXRhLWdwaW9zIGFycmF5
IHNpemUKPiA+ICAgICAgIGJ1czogdHMtbmJ1czogdXNlIGdwaW9kX211bHRpX3NldF92YWx1ZV9j
YW5zbGVlcAo+ID4gICAgICAgZ3BpbzogbWF4MzE5MXg6IHVzZSBncGlvZF9tdWx0aV9zZXRfdmFs
dWVfY2Fuc2xlZXAKPiA+ICAgICAgIGlpbzogYWRjOiBhZDc2MDY6IHVzZSBncGlvZF9tdWx0aV9z
ZXRfdmFsdWVfY2Fuc2xlZXAKPiA+ICAgICAgIGlpbzogYW1wbGlmaWVyczogaG1jNDI1YTogdXNl
IGdwaW9kX211bHRpX3NldF92YWx1ZV9jYW5zbGVlcAo+ID4gICAgICAgaWlvOiByZXNvbHZlcjog
YWQyczEyMTA6IHVzZSBncGlvZF9tdWx0aV9zZXRfdmFsdWVfY2Fuc2xlZXAKPiA+ICAgICAgIG1t
YzogcHdyc2VxX3NpbXBsZTogdXNlIGdwaW9kX211bHRpX3NldF92YWx1ZV9jYW5zbGVlcAo+ID4g
ICAgICAgbXV4OiBncGlvOiB1c2UgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNsZWVwCj4gPiAg
ICAgICBuZXQ6IG1kaW86IG11eC1ncGlvOiB1c2UgZ3Bpb2RfbXVsdGlfc2V0X3ZhbHVlX2NhbnNs
ZWVwCj4gPiAgICAgICBwaHk6IG1hcHBob25lLW1kbTY2MDA6IHVzZSBncGlvZF9tdWx0aV9zZXRf
dmFsdWVfY2Fuc2xlZXAKPiA+ICAgICAgIEFTb0M6IGFkYXUxNzAxOiB1c2UgZ3Bpb2RfbXVsdGlf
c2V0X3ZhbHVlX2NhbnNsZWVwCj4gPgo+ID4gIGRyaXZlcnMvYXV4ZGlzcGxheS9zZWctbGVkLWdw
aW8uYyAgICAgICAgICAgfCAgMyArLS0KPiA+ICBkcml2ZXJzL2J1cy90cy1uYnVzLmMgICAgICAg
ICAgICAgICAgICAgICAgIHwgMTAgKysrKysrLS0tLQo+ID4gIGRyaXZlcnMvZ3Bpby9ncGlvLW1h
eDMxOTF4LmMgICAgICAgICAgICAgICAgfCAxOCArKysrKysrLS0tLS0tLS0tLS0KPiA+ICBkcml2
ZXJzL2lpby9hZGMvYWQ3NjA2LmMgICAgICAgICAgICAgICAgICAgIHwgIDMgKy0tCj4gPiAgZHJp
dmVycy9paW8vYWRjL2FkNzYwNl9zcGkuYyAgICAgICAgICAgICAgICB8ICAzICstLQo+ID4gIGRy
aXZlcnMvaWlvL2FtcGxpZmllcnMvaG1jNDI1YS5jICAgICAgICAgICAgfCAgMyArLS0KPiA+ICBk
cml2ZXJzL2lpby9yZXNvbHZlci9hZDJzMTIxMC5jICAgICAgICAgICAgIHwgIDggKystLS0tLS0K
PiA+ICBkcml2ZXJzL21tYy9jb3JlL3B3cnNlcV9zaW1wbGUuYyAgICAgICAgICAgIHwgIDMgKy0t
Cj4gPiAgZHJpdmVycy9tdXgvZ3Bpby5jICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA0ICst
LS0KPiA+ICBkcml2ZXJzL25ldC9tZGlvL21kaW8tbXV4LWdwaW8uYyAgICAgICAgICAgIHwgIDMg
Ky0tCj4gPiAgZHJpdmVycy9waHkvbW90b3JvbGEvcGh5LW1hcHBob25lLW1kbTY2MDAuYyB8ICA0
ICstLS0KPiA+ICBpbmNsdWRlL2xpbnV4L2dwaW8vY29uc3VtZXIuaCAgICAgICAgICAgICAgIHwg
IDcgKysrKysrKwo+ID4gIHNvdW5kL3NvYy9jb2RlY3MvYWRhdTE3MDEuYyAgICAgICAgICAgICAg
ICAgfCAgNCArLS0tCj4gPiAgMTMgZmlsZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgNDIg
ZGVsZXRpb25zKC0pCj4gPiAtLS0KPiA+IGJhc2UtY29tbWl0OiBkZjRiMmJiZmY4OTgyMjdkYjBj
MTQyNjRhYzdlZGQ2MzRlNzlmNzU1Cj4gPiBjaGFuZ2UtaWQ6IDIwMjUwMTMxLWdwaW8tc2V0LWFy
cmF5LWhlbHBlci1iZDRhMzI4MzcwZDMKPiA+Cj4gPiBCZXN0IHJlZ2FyZHMsCj4gPiAtLQo+ID4g
RGF2aWQgTGVjaG5lciA8ZGxlY2huZXJAYmF5bGlicmUuY29tPgo+ID4KPgo+IEkgY2FuIHByb3Zp
ZGUgYW4gaW1tdXRhYmxlIGJyYW5jaCBmb3IgdGhlIGVudGlyZSBzZXJpZXMgZm9yIGV2ZXJ5b25l
Cj4gdG8gcHVsbCBvciBJIGNhbiBhcHBseSBwYXRjaCBvbmUsIHByb3ZpZGUgYW4gaW1tdXRhYmxl
IGJyYW5jaCBhbmQKPiBldmVyeSBzdWJzeXN0ZW0gY2FuIHRha2UgdGhlaXIgcmVzcGVjdGl2ZSBw
YXRjaGVzLiBXaGF0IGRvIHlvdSBwcmVmZXI/CgpUaGUgY2hhbmdlcyBsb29rIHNtYWxsIGFuZCB0
cml2aWFsIHRvIG1lLiBJIHdvdWxkbid0IG1pbmQgaWYgeW91IHRha2UKdGhlbSBhbGwgKGF0IGxl
YXN0IGZvciBtbWMpLiBBbiBpbW11dGFibGUgYnJhbmNoIHdvdWxkIGJlIGdvb2QsIGlmIGl0CnR1
cm5zIG91dCB0aGF0IHdlIG5lZWQgdG8gcHVsbCB0aGVtLgoKS2luZCByZWdhcmRzClVmZmUKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
