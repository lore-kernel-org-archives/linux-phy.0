Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 159A3C47258
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 20:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmHsIdKufNe5exxsZ7652r/ie+h3gpY3itLFyknPn0o=; b=OEmx9DMzL/UXXF
	8NNF+kGw+62OKDAlKcVWD1zirueudEBH2JJo73+v9rxSxIxCBwt0ylaT2YQRxxn/8o9QI4FS5w4x2
	H4+8e7fbo7NgcygERG/+i8Prkp+1NwEEAxhJxzw7PM1goB1nbqqQD4kfELq+2OIf4euy5hzdZ+qj6
	yOzK9YIx53yn12SKSqOlZiexGaOlp5ImwQ1cKuHFJuK6gVW0FnTuHSpE6RcAo36mBHV/G71pSaCvr
	aIUxG0zBmGE3ogak5i3saWLCWaf8YTAc1e0NG4+/soM8F3vI7FQc/cEtOYq/fkPDEAuVNGwbvGvQk
	FynPSAQsB4lY9Y9mD/uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPTCB-00A6T8-2L;
	Mon, 15 Jan 2024 20:04:31 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPTC8-00A6SG-1F;
	Mon, 15 Jan 2024 20:04:29 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a2ac304e526so875419466b.0;
        Mon, 15 Jan 2024 12:04:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705349063; x=1705953863; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i8RSS6kBkW56tbpViMqYqGAGsyQRy2p0tJi4wBiJqmU=;
        b=ZbYHQh2IpgRtNSs9KQbeBXSpsUrBVK3AGkLj6dV8JtyILy26pkZLE4XGUPqZHuSGqG
         DAAbNIt64B0IQDncjfDDmAHMD4eBMb/0YMv6PENDv2Sfu9WBgqZMbznrQgycpYlW2Wsn
         1olsuCRm7DrG1GzC7g8738HNR/pWKgcJpIFPj55EBGWxU+RN6td3HuFQFloELfm4VgEO
         BYfAsYnescZ2SUYNA7wFwHB8ZR3odX9EOtGfLoZc0AeINcMD07e0j1Gx+06RMCmCN1KN
         jFqhTiNH6iTmxDPgeqCiiLgUuFmTqE1XXgr4GIqyA8ZKgeSq6TcVeQJoUgiDsuMNCofo
         efug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705349063; x=1705953863;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i8RSS6kBkW56tbpViMqYqGAGsyQRy2p0tJi4wBiJqmU=;
        b=hz3hgWFMk3UKRTKDv8bUqfsluRrys1q+STQXDpYb0y+pb0JhCwsvo0xjXSVxeiCkdZ
         6GDLEdp0BbcKniH3bTdKy9y1vF9RFw9Zp+HBzY08C16d7PUzi+g57qcn8s1AD8geEGBS
         hXDK44kn+p3TeGn7BkrUMeKI9OM2qzHp05UkkJy72tChagOhigr2TYTlXFl3rM5RCCYr
         /94R43LlmZIR9LPg+cr1t0wjSNXMPWrh5KYxCBfqAZ3rwJ+GVhCgcJ/lRM5aKZnwS7wO
         1ujxjUilTeVWhTUCY5qYz8hWXIdNueJGGBDewv7oZ+xjjgUzlSnxeq85rl3cKZRQY89J
         zzWA==
X-Gm-Message-State: AOJu0YwO4Fv5Ete4mMOp5pw1Gg3Zug6SiyaY7iwsjpYSoVdoU6/zZwJH
	D4MVMAlf/LM9kUGfY9PTx7sKXX43SgIYVX1teHs=
X-Google-Smtp-Source: AGHT+IFJ3GSf+wjuplgZ/O7AubrBpCxq5ZziDSX/b+fRkPr0IsBfvOcIfeT/L2dW0x0aOspKjHv4GueCmR/QMik45Zg=
X-Received: by 2002:a17:907:d89:b0:a27:be67:1743 with SMTP id
 go9-20020a1709070d8900b00a27be671743mr3863297ejc.40.1705349063219; Mon, 15
 Jan 2024 12:04:23 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com> <20240102-j7200-pcie-s2r-v1-3-84e55da52400@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v1-3-84e55da52400@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 15 Jan 2024 22:03:46 +0200
Message-ID: <CAHp75Vcr+pSjj+27WmW5GmC_QvpJu3E81C-GjxqdhrCAByevpQ@mail.gmail.com>
Subject: Re: [PATCH 03/14] i2c: omap: wakeup the controller during suspend callback
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
X-CRM114-CacheID: sfid-20240115_120428_423929_3777A980 
X-CRM114-Status: GOOD (  13.34  )
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
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBBIGRldmljZSBtYXkgbmVlZCB0aGUgY29u
dHJvbGxlciB1cCBkdXJpbmcgc3VzcGVuZF9ub2lycSBvcgo+IHJlc3VtZV9ub2lycS4KPiBCdXQg
aWYgdGhlIGNvbnRyb2xsZXIgaXMgYXV0b3N1c3BlbmRlZCwgdGhlcmUgaXMgbm8gd2F5IHRvIHdh
a2V1cCBpdAo+IGR1cmluZyBzdXNwZW5kX25vaXJxIG9yIHJlc3VtZV9ub2lycSBiZWNhdXNlIHJ1
bnRpbWUgcG0gaXMgZGlzYWJsZWQKPiBhdCB0aGlzIHRpbWUuCj4KPiBUaGUgc3VzcGVuZCBjYWxs
YmFjayB3YWtlcyB1cCB0aGUgY29udHJvbGxlciwgc28gaXQgaXMgYXZhaWxhYmxlIHVudGlsCj4g
aXRzIHN1c3BlbmRfbm9pcnEgY2FsbGJhY2sgKHBtX3J1bnRpbWVfZm9yY2Vfc3VzcGVuZCkuCj4g
RHVyaW5nIHRoZSByZXN1bWUsIGl0J3MgcmVzdG9yZWQgYnkgcmVzdW1lX25vaXJxIGNhbGxiYWNr
Cj4gKHBtX3J1bnRpbWVfZm9yY2VfcmVzdW1lKS4gVGhlbiByZXN1bWUgY2FsbGJhY2sgZW5hYmxl
cyBhdXRvc3VzcGVuZC4KPgo+IFNvIHRoZSBjb250cm9sbGVyIGlzIHVwIGR1cmluZyBhIGxpdHRs
ZSB0aW1lIHNsb3QgaW4gc3VzcGVuZCBhbmQgcmVzdW1lCj4gc2VxdWVuY2VzIGV2ZW4gaWYgaXQn
cyBub3QgdXNlZC4KClNhbWUgY29tbWVudAoKLT4uLi5jYWxsYmFjay4uLigpCgouLi4KCj4gIH0K
Pgo+ICsKClN0cmF5IGJsYW5rIGxpbmUgaXMgYWRkZWQuCgo+ICtzdGF0aWMgaW50IG9tYXBfaTJj
X3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5
IFNoZXZjaGVua28KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
