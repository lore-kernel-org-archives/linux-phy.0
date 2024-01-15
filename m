Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E14FC3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 20:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8F27O2Ue8qVcsIdrdRNwsp/reodMnV6AwKPgsj+HG4=; b=eOj6gVOhWUCoEv
	w99ZKzaA0spS+B9+2FFwE+p+5rgPCjoZhy4ty9wUdCmM0xqj26tl6ZUXw85kCgsZ1YW0xJZUJF5RD
	oRJANJHVC0zopVP5yilNA0VR/MxsLsdSzJPNnWC/RQa8telKh/qajqIVr76NNQ8h8XeJXpy0t49sE
	OP0GlqLQczYoJhDsQAbaJXl4+bAJXyNX0x0msuJ80X6XgelcsWKevd76Om4f95S834DqxaFCKfxd2
	XNMLZ2c0O2heTqeRcvPIXAKcxTdk26oxDlJXuLzN8j7iYvPSRY4a/vhqHhZFNb0Vg6ELNmtvscf4I
	Ep0qE9RwGrMSdx2wLKUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPTLX-00A7YP-2i;
	Mon, 15 Jan 2024 20:14:11 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPTLT-00A7XL-34;
	Mon, 15 Jan 2024 20:14:09 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a2bdc3a3c84so564158066b.0;
        Mon, 15 Jan 2024 12:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705349642; x=1705954442; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w5Ok4CQAPkpysNJkJjEPQdxy0iDAuR07BorZIgMZAwk=;
        b=Efvy95z8ofwrvOQ/ZBaZpxsm86uFC093Nztkh+0UfsxXGhySqogvkane++Ogv01JYi
         z9hoaUh2t7O2v4ccmWzJ7WhvuJUaWK6qEpltouzfmvXDXsFGFcoalQEUV5aNWOXU54/v
         9uRfZSZqDxNx8uRqtzAui7eHoxFwbqvuPmFBS2kfuWoJLvJ8bwZNQ6uGcoUZmWS1n7I/
         4i06zBlagWeyrlXIMHr4v6DZUSFcmlhNwpjm0ucrCITwjJRTjHfRpXll9vfKkZzMyegp
         0MuLQRe/LX+u7aJsuHQR7WUa5wGK+S5tQJ2O/HX/F3pgn3wWE8my2saVa6xsBuUy1Yud
         mx1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705349642; x=1705954442;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w5Ok4CQAPkpysNJkJjEPQdxy0iDAuR07BorZIgMZAwk=;
        b=UIjNAnt7vWU0oLwMHOy4mX7xRBMZUMXDMneqeeR73ZtO+EOoS0cV/kte1pCaQno6gE
         BY6YolNRpVRaLmPB2QkvAR/i9NIJX8zEHJXzDLK8GH/A5HnnZe9mti2fJPuWtyg1jNca
         jNM+8dXWsYi34see9IHghjcFSXD/ZnlU/HIb+1M+2Drh+//0PBsA7en5muacoRQ/u5nO
         MgMyis73iRtzM3Hi0aFzSdRrLQmGavJpEYs9XE14MPwA9//J+9zqljUBu/N6Odibs2AK
         Zv8HMGYV/wnCV74tEva29EbWpvwI6ulmC5KMqbLMXjtuGrN0oT/AI2t3r80zx14bzeb3
         ej9Q==
X-Gm-Message-State: AOJu0Yw/KfsmVGKNESidsxUA2zUdHyQJFLy0S/xrRiu8kx6D0XsYb9Y6
	ozdcuv0OepZaRNBDFbJ0SflKWdQKz9nb6l1dyu4=
X-Google-Smtp-Source: AGHT+IF9hVIc0IofPq072tyoQiEbT9WWWMhwNrqZiDf3VofbR8YwcHsdBo838dWQyfyviH1gTOzEGh3uQ+XWN1I60MM=
X-Received: by 2002:a17:906:39c6:b0:a27:bac8:1000 with SMTP id
 i6-20020a17090639c600b00a27bac81000mr2579905eje.96.1705349642324; Mon, 15 Jan
 2024 12:14:02 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com> <20240102-j7200-pcie-s2r-v1-14-84e55da52400@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v1-14-84e55da52400@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 15 Jan 2024 22:13:25 +0200
Message-ID: <CAHp75VfPQz4PWdzFUU_n+R=XohBjyXM0zsjD-bUD2jmb42ds8Q@mail.gmail.com>
Subject: Re: [PATCH 14/14] PCI: j721e: add suspend and resume support
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, 
	gregory.clement@bootlin.com, theo.lebrun@bootlin.com, 
	thomas.petazzoni@bootlin.com, u-kumar1@ti.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_121407_993692_452C79AD 
X-CRM114-Status: GOOD (  12.60  )
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

T24gTW9uLCBKYW4gMTUsIDIwMjQgYXQgNjoxNuKAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBUaMOpbyBMZWJydW4gPHRoZW8u
bGVicnVuQGJvb3RsaW4uY29tPgo+Cj4gQWRkIHN1c3BlbmQgYW5kIHJlc3VtZSBzdXBwb3J0IGZv
ciByYyBtb2RlLgoKU2FtZSBjb21tZW50cyBhcyBmb3IgZWFybGllciBwYXRjaGVzLgpTaW5jZSBp
dCdzIHdpZGUsIHBsZWFzZSwgY2hlY2sgdGhlIHdob2xlIHNlcmllcyBmb3IgdGhlIHNhbWUgaXNz
dWVzCmFuZCBhZGRyZXNzIHRoZW0uCgouLi4KCj4gKyAgICAgICAgICAgICAgIGlmIChwY2llLT5y
ZXNldF9ncGlvKQoKRHVwLCB3aHk/Cgo+ICsgICAgICAgICAgICAgICAgICAgICAgIGdwaW9kX3Nl
dF92YWx1ZV9jYW5zbGVlcChwY2llLT5yZXNldF9ncGlvLCAwKTsKCi4uLgoKPiArICAgICAgICAg
ICAgICAgaWYgKHBjaWUtPnJlc2V0X2dwaW8pIHsKPiArICAgICAgICAgICAgICAgICAgICAgICB1
c2xlZXBfcmFuZ2UoMTAwLCAyMDApOwoKZnNsZWVwKCkgPwpCdHcsIHdoeSBpcyBpdCBuZWVkZWQg
aGVyZSwgcGVyaGFwcyBhIGNvbW1lbnQ/Cgo+ICsgICAgICAgICAgICAgICAgICAgICAgIGdwaW9k
X3NldF92YWx1ZV9jYW5zbGVlcChwY2llLT5yZXNldF9ncGlvLCAxKTsKPiArICAgICAgICAgICAg
ICAgfQoKLi4uCgo+ICsgICAgICAgICAgICAgICByZXQgPSBjZG5zX3BjaWVfaG9zdF9zZXR1cChy
YywgZmFsc2UpOwo+ICsgICAgICAgICAgICAgICBpZiAocmV0IDwgMCkgewo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShwY2llLT5yZWZjbGspOwo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVWOwoKV2h5IGlzIHRoZSBlcnJvciBjb2Rl
IGJlaW5nIHNoYWRvd2VkPwoKPiArICAgICAgICAgICAgICAgfQoKLi4uCgo+ICsjZGVmaW5lIGNk
bnNfcGNpZV90b19yYyhwKSBjb250YWluZXJfb2YocCwgc3RydWN0IGNkbnNfcGNpZV9yYywgcGNp
ZSkKCklzIGNvbnRhaW5lcl9vZi5oIGluY2x1ZGVkIGluIHRoaXMgZmlsZT8KCi4uLgoKPiBAQCAt
MzgxLDcgKzM4Myw2IEBAIHN0cnVjdCBjZG5zX3BjaWVfZXAgewo+ICAgICAgICAgdW5zaWduZWQg
aW50ICAgICAgICAgICAgcXVpcmtfZGlzYWJsZV9mbHI6MTsKPiAgfTsKPgo+IC0KPiAgLyogUmVn
aXN0ZXIgYWNjZXNzICovCj4gIHN0YXRpYyBpbmxpbmUgdm9pZCBjZG5zX3BjaWVfd3JpdGVsKHN0
cnVjdCBjZG5zX3BjaWUgKnBjaWUsIHUzMiByZWcsIHUzMiB2YWx1ZSkKPiAgewoKU3RyYXkgY2hh
bmdlLgoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
