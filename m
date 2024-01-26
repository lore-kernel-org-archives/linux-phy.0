Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BAACC47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 21:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kcziOzy7Cz7cPbL6VkhKlE1fba2m7R96oM3pJXQFPac=; b=hh1pbPLv4O/jxX
	Sl8ulyIoO/+DYMYGew54eVNH8A9wIARvv+wXGhza1KcISiKNk6ynuGTK8GThYAGyQvlM0ozH0BDfN
	a5cUmfe6UHEIgbm7ESz51YcrEgbOuTElEPHd1bkST+cSSE/Q6wtUp0Ar8BWnZ/Yi2ukBdpKFBM98u
	ssO9qRBOToTO/IR2j99bdKXlOa/kz5Lo2Zr5tbV2i6OeRycfN/5mlfSPPlff2j9vMC2nA5d1cdBoL
	KS+k4kuc12gPhRgqoQmKFLshqSiyygy99nnjAEqAGYlDZGYaQ9ifmL0fBarzF1GHYSUvwlLbU+bGa
	vsX6cYh4rk5PfXhqxMHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTU8D-00000005W3Q-0yA2;
	Fri, 26 Jan 2024 21:53:01 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTU89-00000005W2a-49YO;
	Fri, 26 Jan 2024 21:52:59 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40e80046264so18265775e9.0;
        Fri, 26 Jan 2024 13:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706305974; x=1706910774; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PwCn1j7lcGKWVrBf99kL7TfgwgawY1TDNPn2McRxeCs=;
        b=Gq9O9tGi1Nm3mV7Syky0lLKyvmQ+3bKaiDxefGdbhAiWoiaJ3WeFDJQHKsCadetaT/
         YzAziZiup/OUpZqQgXjmVtVzBcbLbHLRXpqKaGdIzKypNjJGAgtf7Kwj0/7H2kUYHCO/
         O3w4Oib33xJ1lY7vA2EsLrVa9P+mrYoAboTQbU7I8z8StDRMciJTBseidc3FEJo9f2pP
         eiBGd0tnzlqaq/yHdJBuYaQJ4HmW35owMCajR/3I9ofkM/wtlAn2TFmmckOcL4Cdjyt6
         1qa487kHuGvZgqmLiKpThcdnAFitBHhY0XhwJRkTvgP7jmTbiQIVLramda2aO6NCzhO5
         qptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706305974; x=1706910774;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PwCn1j7lcGKWVrBf99kL7TfgwgawY1TDNPn2McRxeCs=;
        b=VHHqFoHbIh4fD1hyTrAq+ep97CFHp1NeY0t5NbSCoUUP+QgmINTjHLvF0496QLMSkZ
         JMv7QPgybP56TyjW7mRierIRaSRPOibUQGoP0eMqXhIKrgDac9lv/6JdVDGJNcuQSUIb
         zWAySL/ydcZh+eDxJF7RVnWS3+Le+kI7cYN2pcZ0rhJ5kG3IVDGyp8fCdGJ6M0s+XkQY
         8M2FqE365GxOwB/XYE+fZsVR9/VTjKSa/xqe3hjgtD/kX4dzZViw6zhpLjYbjTg0Kuyu
         OerVKrZNgNYCjnfW6r4QKF4Gzt/CvKEYPkFxtJytEfk4FgMHc8az6dMVIKrZtjgPaUVw
         8hzw==
X-Gm-Message-State: AOJu0YwqQt9wEJzAqMnrU4UnMTIoelzVIWWsnnWsLnZ75pNMm6V+p8rI
	vU5Xco5D5U2gpvqZHMieq7Ve3n9rWjWUtDWlT5JjI0N8nmbpnp05Gk+ItdfkcXivLlv3fnfAf+e
	lVBJxaCtQDMjf3xqnxWggXvib24U=
X-Google-Smtp-Source: AGHT+IE3SFA0KCMxm+4oSxONJ/cUqn4ELR89+v7l0jha8W5oz2rXn+Wjpw8sRwRY94Be8UqpZqINDwOAhPfYMYSbD6I=
X-Received: by 2002:a05:600c:43c5:b0:40e:becd:d5eb with SMTP id
 f5-20020a05600c43c500b0040ebecdd5ebmr312299wmn.185.1706305974596; Fri, 26 Jan
 2024 13:52:54 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com> <20240102-j7200-pcie-s2r-v2-14-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-14-8e4f7d228ec2@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 26 Jan 2024 23:52:18 +0200
Message-ID: <CAHp75VdTPFKgvBqoNBe55LoqPyAY_EDpCZT30qWuGDNvPJgA4Q@mail.gmail.com>
Subject: Re: [PATCH v2 14/15] PCI: j721e: add reset GPIO to struct j721e_pcie
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
X-CRM114-CacheID: sfid-20240126_135258_053320_D8C7DDCD 
X-CRM114-Status: GOOD (  10.07  )
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

T24gRnJpLCBKYW4gMjYsIDIwMjQgYXQgNDozOOKAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBUaMOpbyBMZWJydW4gPHRoZW8u
bGVicnVuQGJvb3RsaW4uY29tPgo+Cj4gQWRkIHJlc2V0IEdQSU8gdG8gc3RydWN0IGo3MjFlX3Bj
aWUsIHNvIGl0IGNhbiBiZSB1c2VkIGF0IHN1c3BlbmQgYW5kCj4gcmVzdW1lIHN0YWdlcy4KCi4u
LgoKPiArICAgICAgICAgICAgICAgcGNpZS0+cmVzZXRfZ3BpbyA9IGRldm1fZ3Bpb2RfZ2V0X29w
dGlvbmFsKGRldiwgInJlc2V0IiwgR1BJT0RfT1VUX0xPVyk7Cj4gKyAgICAgICAgICAgICAgIGlm
IChJU19FUlIocGNpZS0+cmVzZXRfZ3BpbykpIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBy
ZXQgPSBQVFJfRVJSKHBjaWUtPnJlc2V0X2dwaW8pOwo+ICAgICAgICAgICAgICAgICAgICAgICAg
IGlmIChyZXQgIT0gLUVQUk9CRV9ERUZFUikKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdldCByZXNldCBHUElPXG4iKTsKCkEgc2lkZSBu
b3RlOiBBdCBzb21lIHBvaW50IHdvdWxkIGJlIG5pY2UgdG8gc2VlIHRoaXMgYmVpbmcgY2hhbmdl
ZCB0byBzaW1wbHkKCiAgcmV0ID0gZGV2X2Vycl9wcm9iZSguLi4pOwogIGdvdG8gLi4uOwoKPiAg
ICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9nZXRfc3luYzsKCgotLSAKV2l0aCBCZXN0
IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
