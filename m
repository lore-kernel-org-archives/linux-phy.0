Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36B52C46CD2
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jan 2024 22:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpcLUvXcmi4NmSz6EuhyTIkR6WAR1JyElnxZk2lMIvg=; b=AHcUCpk9nzG0X3
	1Y9Dy6PM7/lA4qJKLd9/2OIfJ04LqgNw+n8kTEDvkNMUaNzllIaOJFNgAv1aWOATV41e2/ZXgVZww
	YaZEYuSxFF13jIX75KqN0M2GAwCtTwuqAFaNEX35w9ZOCVzSQQ+gLrsKkhGyq3pKfZJYliA82lnGP
	8iKFU9ueO+76tFbJwbXOavylP/+jmYFpa1PYPM9JzFVnRJoPSy8FEjshqecw8l2tTEy8SK+vP+7hL
	B1fKKTfls0KxJVGKmmX0OxNdC0Ye0zHHxIecqeCJwQVCEI4pT/EKQXZ513Mgyqywj3pGWq0BY+dzK
	hv9BOviGytW9trSfoMkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTrCy-00000008JHY-3KVE;
	Sat, 27 Jan 2024 22:31:28 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTrCv-00000008JGa-3HKZ
	for linux-phy@lists.infradead.org;
	Sat, 27 Jan 2024 22:31:27 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5ffcb478512so10965387b3.0
        for <linux-phy@lists.infradead.org>; Sat, 27 Jan 2024 14:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706394683; x=1706999483; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1dBUeUlto5pgjnZjs4MdTR5SQtmL2Ucvd23RmHx3BTY=;
        b=jHQKFUtQ1n5eH6E7b3PS9eOxUulrhZctpO9qpCiMTZPAu+HhCWGkp6uY4grloYacTv
         bjHTM1N5MvCUhCWfSVdX6WRt+TRXOdwA2MzqCzF83zsaUbAfdZKIGgOjgZhDAHaoWXTn
         luhngqN7WLbazUCeNe1+uL++xqGgjgPuH0Q/FFFjo1Y31AgzzSHtg2Ezo5fgw88ZXbh3
         O2UzLhay9pXOYUAtY9CSJe/Xuu73KX6jIMPkDCf8G4v4owaa4E+zE3YNNxaiRnh6oj9S
         8H/Yf/hN/xXDgDbrMyJXiuslxf22swsrXs/sL8Z1n1PB4ESlQ07LzD6piWhl0e3tIE0Q
         +OZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706394683; x=1706999483;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1dBUeUlto5pgjnZjs4MdTR5SQtmL2Ucvd23RmHx3BTY=;
        b=NVnQFj9DY8oWrN0mM9WZ2yVL8oY5OKrn5/btQCz2js//oDDDJNORgBHJVMxAruH56u
         GujRA+XkMwThrxsH5Dj9S1WSB9yKLkZMp6OCPeYrHnc5itIMTQyxilqZaWkCD0eRlDGp
         rvL7Njo8vPhkTZ9u5BhBs6Cx49WeDiHBnqlxcuWmFTepdfhJ6RXrTMOsq5N/iv0wHWIs
         qHDnNdrYQYINJWZk01Z9xJVkr1g554kDTXpNtbgyl/QaF8z8jXfTs/4152TzkhTQOsQ2
         4NtVzciz7Wx8vhrJRm5hPhn3oqoDteCQO6EWS/z9Qm6DCdCrpzBAHGZaig/cxkFn+YXs
         squQ==
X-Gm-Message-State: AOJu0Ywa62Bg2oljfCB70LSstCXrJZGVKaYkKYlWeLOUkEYccT0mrJY2
	sIfZy/sqtdv4tzApno5sJ6R07WW/iikYFFCXTrlZYa2KregTxjglhpIdPGL1fYAV7n9QwNFwHdP
	BqdGwi8y9JI8dUFr9Zs5ji+OZ9Sb7av0JQl2JTA==
X-Google-Smtp-Source: AGHT+IHztRxFG/ccy+YnFlBSRiS8OsDLI+aB8k67iKO1nxm2sl8UZpFQH9rExIgVxfgB6WROcfzh5M2ZahRGH+kk4fo=
X-Received: by 2002:a05:690c:809:b0:5ff:cb36:2219 with SMTP id
 bx9-20020a05690c080900b005ffcb362219mr1863709ywb.35.1706394683112; Sat, 27
 Jan 2024 14:31:23 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com> <20240102-j7200-pcie-s2r-v2-2-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-2-8e4f7d228ec2@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 27 Jan 2024 23:31:11 +0100
Message-ID: <CACRpkdYBnQ6xh2yNsnvquTOq5r7NeDhot6To9myfuNbonKcgzQ@mail.gmail.com>
Subject: Re: [PATCH v2 02/15] pinctrl: pinctrl-single: move suspend()/resume()
 callbacks to noirq
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>, 
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
X-CRM114-CacheID: sfid-20240127_143125_875581_039D204C 
X-CRM114-Status: GOOD (  10.34  )
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

T24gRnJpLCBKYW4gMjYsIDIwMjQgYXQgMzozN+KAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cgo+IFRoZSBnb2FsIGlzIHRvIGV4dGVuZCB0aGUg
YWN0aXZlIHBlcmlvZCBvZiBwaW5jdHJsLgo+IFNvbWUgZGV2aWNlcyBtYXkgbmVlZCBhY3RpdmUg
cGluY3RybCBhZnRlciBzdXNwZW5kKCkgYW5kL29yIGJlZm9yZQo+IHJlc3VtZSgpLgo+IFNvIG1v
dmUgc3VzcGVuZCgpL3Jlc3VtZSgpIHRvIHN1c3BlbmRfbm9pcnEoKS9yZXN1bWVfbm9pcnEoKSBp
biBvcmRlciB0bwo+IGhhdmUgYWN0aXZlIHBpbmN0cmwgdW50aWwgc3VzcGVuZF9ub2lycSgpIChp
bmNsdWRlZCksIGFuZCBmcm9tCj4gcmVzdW1lX25vaXJxKCkgKGluY2x1ZGVkKS4KPgo+IFRoZSBk
ZXByZWNhdGVkIEFQSSBoYXMgYmVlbiByZW1vdmVkIHRvIHVzZSB0aGUgbmV3IG9uZSAoZGV2X3Bt
X29wcyBzdHJ1Y3QpLgo+Cj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIFJpY2hhcmQgPHRob21hcy5y
aWNoYXJkQGJvb3RsaW4uY29tPgoKUmV2aWV3ZWQtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVzLndh
bGxlaWpAbGluYXJvLm9yZz4KCkRvIHlvdSB3YW50IHRvIG1lcmdlIHRoaXMgYXMgYSBzZXJpZXMg
b3IgaXMgdGhpcyBzb21ldGhpbmcgSQpzaG91bGQganVzdCBhcHBseT8KCllvdXJzLApMaW51cyBX
YWxsZWlqCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
