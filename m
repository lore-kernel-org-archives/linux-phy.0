Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63727C47DD3
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jan 2024 16:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9HevXWiFatPr2tebar2Zc4lglNftlbKzarF2T4IjCyQ=; b=L9blsJViAfXuk7
	45SJ6/SsJzc9pVb35IWu+2IF+DBcP9EgdWPQmvqGF23SGOBvZaglQUaghMrZgmjm69I6W6LMT8cDi
	kkb/r6ORZUTI/VZZgwzOZiIMVSZSFIcC58O4Re1L8CFRpjMXiLUhyfYX46l4TERyFNy/1QZiHnQA2
	O2NrteJP2v6zPBId8fVm4YjEGPop/0cfTqRLG4sjmT3FrQGeV/lpJYmBOP1kwZ1vQFBs/Xi8KVXh/
	zznfbl1meUT9s1kq4fNL8CE7fTh9DVxHHbY6puCm/wx/XAgeoHnQTnUzyQtyopuX8xWw1GnNn/gD/
	M2afVi/tsbuByz8NWmDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrTv-0064ti-39;
	Fri, 19 Jan 2024 16:12:35 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrTt-0064rj-22;
	Fri, 19 Jan 2024 16:12:34 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a277339dcf4so107097566b.2;
        Fri, 19 Jan 2024 08:12:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705680749; x=1706285549; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KqF7PI/YjS/vDZuctmZtQFkwh0hBWwr/s91VYXoNcbE=;
        b=eMBMrFD3/SJys1PbET1HtQz3JMg0Hj/iWo3Zsjn9oBqfxTTqeIBPdtqZNyiRRHu2Wx
         OzLQFX4wwz5w6VbhqFAtTH5BzVyOtcanreYbJomt9AUgY0+j3rtKDz5DphSDdUseSFvC
         EP17O/4uRxbEuAWDaLHu1ywmklm8a+/NP91YG4K5zHHkV8TZoZw8vz8Kp5OPtTMyEG16
         kTx6fD0y6c9AmeFMltlOTwlJ1apzj8E5nOSiV0mi2iHveqcy+kpZzRw0TybwtuaVWb+N
         0vRQuHPyo4oRXDq9BTPYRamBfoVpBEhNEkZihIrcOVk/7Wq6IYPX3JRQveEIrtGFd1ia
         dLiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705680749; x=1706285549;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KqF7PI/YjS/vDZuctmZtQFkwh0hBWwr/s91VYXoNcbE=;
        b=u9pD90sEqotnl2KFcbIWePgH7/6XKrWAxEDNww6XoPpJXXIZAslhAyofcqt/rkW5aM
         ZZNI65iLPE8H5q3eSqEoJk0iVQBg4ljQsFyqG/Hyh1eJNnxNSxObpCoXz8+uOs6w/g9k
         YFjggi6a0ss21d1Kvz7pZqtc9rKC1VtQrcRTTp7xCmXLqLpjvJWkBRrzPelO3gy/p3Nn
         fi66ulrtxLOkcfzUUynAJDH4E0Ke86CFkY2Kr5oKOpd9bIm+SpYaXsZo60nWwXSWO4KR
         +4dsbuNg16ttjgN3PLhTpSyjZ/wnqMLxe134F4Bj5wbJ2NsJZ6WQRGi9qUEnTqi+rCS+
         MB7g==
X-Gm-Message-State: AOJu0YwTdFayJNYXuO5jSkbN2AjqIJuFSvEOZqNjCWCtsHzRMdwa5XQ8
	TmZacHvoYAJKqvjg1ykktSk5qg/qquB9k4pv1WVwTYBXd05kELrrUeZfWQ4kHCJZfMg5xl2fLgS
	7pv9iwTVud3+x2DfdpOfGJqweSuc=
X-Google-Smtp-Source: AGHT+IEIhJ6nKz0DyJGRZxVKLi7Lvz3d5f2txRgjyzPbRrmmLxr+88CiGRKkkQVfdAmhWdjnmQAFZgM+tZkBsjOggVk=
X-Received: by 2002:a17:907:54d:b0:a2d:5394:18fb with SMTP id
 wk13-20020a170907054d00b00a2d539418fbmr5006ejb.109.1705680749223; Fri, 19 Jan
 2024 08:12:29 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-2-84e55da52400@bootlin.com> <CAHp75Verff06LE0QFaDRoun=ANpGfVU1tHknvvQZd_KyzLVP5Q@mail.gmail.com>
 <223422cc-2a1c-417b-8fa1-20d3b3eb41ef@bootlin.com>
In-Reply-To: <223422cc-2a1c-417b-8fa1-20d3b3eb41ef@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 19 Jan 2024 18:11:53 +0200
Message-ID: <CAHp75VcaABafPh7o1TjrHW2txXRRSxjT443XJe33gfS1YD4bhA@mail.gmail.com>
Subject: Re: [PATCH 02/14] pinctrl: pinctrl-single: move suspend/resume to suspend_noirq/resume_noirq
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
X-CRM114-CacheID: sfid-20240119_081233_677439_4725199E 
X-CRM114-Status: GOOD (  11.61  )
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

T24gRnJpLCBKYW4gMTksIDIwMjQgYXQgNjowOOKAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gT24gMS8xNS8yNCAyMTowMiwgQW5keSBTaGV2
Y2hlbmtvIHdyb3RlOgo+ID4gT24gTW9uLCBKYW4gMTUsIDIwMjQgYXQgNjoxNuKAr1BNIFRob21h
cyBSaWNoYXJkCj4gPiA8dGhvbWFzLnJpY2hhcmRAYm9vdGxpbi5jb20+IHdyb3RlOgoKLi4uCgo+
ID4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgcGluY3RybF9zaW5nbGVfcG1fb3Bz
ID0gewo+ID4+ICsgICAgICAgU0VUX05PSVJRX1NZU1RFTV9TTEVFUF9QTV9PUFMocGluY3RybF9z
aW5nbGVfc3VzcGVuZF9ub2lycSwKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHBpbmN0cmxfc2luZ2xlX3Jlc3VtZV9ub2lycSkKPiA+PiArfTsKPiA+Cj4gPiBVc2Ug
cHJvcGVyIC8gbW9kZXJuIG1hY3JvLgo+Cj4gZml4ZWQsIHVzZSBERUZJTkVfTk9JUlFfREVWX1BN
X09QUyBub3cKCi4uLgoKPiA+PiAgI2VuZGlmCj4gPgo+ID4gV2h5IGlmZGVmZXJyeSBpcyBuZWVk
ZWQgKGVzcC4gdGFraW5nIGludG8gYWNjb3VudCBwbV9wdHIoKSB1c2UgYmVsb3cpPwo+Cj4gV2Ug
bWF5IGhhdmUgYW4gInVudXNlZCB2YXJpYWJsZSIgd2FybmluZyBmb3IgcGluY3RybF9zaW5nbGVf
cG1fb3BzIGlmCj4gQ09ORklHX1BNIGlzIHVuZGVmaW5lZCAoZHVlIHRvIHBtX3B0cikuCgpUaGlz
IGlzIGNvdXBsZWQgd2l0aCB0aGUgYWJvdmUuIEZpeGluZyBhYm92ZSB3aWxsIGF1dG9tYXRpY2Fs
bHkgbWFrZQp0aGUgcmlnaHQgdGhpbmcuCgotLSAKV2l0aCBCZXN0IFJlZ2FyZHMsCkFuZHkgU2hl
dmNoZW5rbwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
