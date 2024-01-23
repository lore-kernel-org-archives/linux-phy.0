Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CA6CC47258
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 12:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lJtVG2UiFuFDl3MGZoP2QD56h9z81qsImeAT1Cz7mGw=; b=DDmlWdN0s4noaZ
	D1vUPPVfB20YDUxkmCq7iwr7seT7uNUNaaF2WEWdFLBnYKT4ZeK7NWEr5U9q2gsiRjTcSCUQ0NI/T
	wqiemdfJXHWXUStDEKXmNgC4PLGMp8sWt+dmvhEcuaxD/P6lAus2dbYiU6KolDylJpE168Y59iJSR
	jEtWm3oUklLTvysBoWW4tOWtOuwPs7rIc9KFsvcpMv02nXnmnhXCOk7iqEIPnGgwOjFrPA29Mnx0s
	CsYALWpGqi45OVNIPYacLKyQYpyOJqph5FOgF03I+ivnsnAbRSOr52etZDEVn50Ez42yDnObYsTt+
	1fvTNYv9L0WeRk0gYMlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSG9Q-00GRmi-2K;
	Tue, 23 Jan 2024 12:45:12 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSG9N-00GRlZ-0x;
	Tue, 23 Jan 2024 12:45:10 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a298accc440so463717666b.1;
        Tue, 23 Jan 2024 04:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706013907; x=1706618707; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oA1UQQc1JfCo+FECv9KYv1eo56zKsN80lRRNAWxIGh4=;
        b=IbhxVTWsSBkrHDjTvxmpZ8ss5ZLhArrBaZwaMXpstB+DjQ8LRAplW8kmIUbzyLcbAe
         zue+Y5SG5XGjhjAyC8eBZdBmh454x6SpTfkpX8XJP3pG9tlyESl0WDPVj3jbxiP2h2/R
         2LOwK5LuDW8t175W/rUN0A8mSYI1cVFpRviprpv1ghqLT627vzBiyDudPxpbvHGNkPON
         Kk3mpDYEEn2QBuzk962BB2ZpAwNHjElyrqvE2yLIBnieFcc+H1GkKfUSQjhKXU1RuorR
         6oGzbj3eF+EIgMwILpIy+vR2N4aYbcMXfxpQjWsHnoUYf9ue+nJZhIRDz3ZfG1PKYY1M
         1qKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706013907; x=1706618707;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oA1UQQc1JfCo+FECv9KYv1eo56zKsN80lRRNAWxIGh4=;
        b=vBKtS45t27WcznhwAH+MQGNrz/KfK9gNIyver4IxOYf3VyPQ2U4rwrTqErxi5ENs9d
         wWzuy7WTTWXWkMSJEZzpiyU1WDg2B8lJhFqJyPnpYqI8NiXBfhXuyCF7Dw8gvW3jI16M
         /5hoKUZLphzclH/1OyDCbkdgp8mFLVVarfgeO0McZabmIuOmZBvJACFAbTahRKmjAPaI
         q3PCjepqzp02aXBHon08ZaMNSP6OlZhKWM/NXNCdCxKWDjEyCi5Umqv2h9UqCVmUBSbc
         hDoLVjsi2jAekQyy3Qc4egN4Nh+72egLldWU9pJSC35QlHrMQ6JUcTY3z0pPhZvosJov
         6tCg==
X-Gm-Message-State: AOJu0YyGWqbMEJPc6FUJXpFkrhWM3YSrlDYQsGBZ4jmwzwOpDuVW6beV
	BsWErILwIlptTYgvY459GpADjoW5Vxtz6H5TPwBRC3KSyhtpREbby1imseWmjRAlxdNPvLX153H
	nZy8FieLAqMW28UrYHry7i8pnfSo=
X-Google-Smtp-Source: AGHT+IGVOi9cJtPjLV8rCcZZAIqP8Of+wjWmyBE/0kgMRwdEcXgkHHcr8D02Phwnkk/tQc54fmCf7RPslpX8DcJ6cZg=
X-Received: by 2002:a17:906:2b4d:b0:a30:cc38:f192 with SMTP id
 b13-20020a1709062b4d00b00a30cc38f192mr517708ejg.96.1706013906745; Tue, 23 Jan
 2024 04:45:06 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-2-84e55da52400@bootlin.com> <CAHp75Verff06LE0QFaDRoun=ANpGfVU1tHknvvQZd_KyzLVP5Q@mail.gmail.com>
 <223422cc-2a1c-417b-8fa1-20d3b3eb41ef@bootlin.com> <CAHp75VcaABafPh7o1TjrHW2txXRRSxjT443XJe33gfS1YD4bhA@mail.gmail.com>
 <b59067f0-fdba-40d1-bb52-9f66fd833f40@bootlin.com>
In-Reply-To: <b59067f0-fdba-40d1-bb52-9f66fd833f40@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 23 Jan 2024 14:44:30 +0200
Message-ID: <CAHp75VdwwfTdYYG59DcwO=kPXmPxrkShk6VjoSQPHKDi_p=iMA@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20240123_044509_338948_3C029DDB 
X-CRM114-Status: GOOD (  14.62  )
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

T24gTW9uLCBKYW4gMjIsIDIwMjQgYXQgNDozM+KAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gT24gMS8xOS8yNCAxNzoxMSwgQW5keSBTaGV2
Y2hlbmtvIHdyb3RlOgo+ID4gT24gRnJpLCBKYW4gMTksIDIwMjQgYXQgNjowOOKAr1BNIFRob21h
cyBSaWNoYXJkCj4gPiA8dGhvbWFzLnJpY2hhcmRAYm9vdGxpbi5jb20+IHdyb3RlOgo+ID4+IE9u
IDEvMTUvMjQgMjE6MDIsIEFuZHkgU2hldmNoZW5rbyB3cm90ZToKPiA+Pj4gT24gTW9uLCBKYW4g
MTUsIDIwMjQgYXQgNjoxNuKAr1BNIFRob21hcyBSaWNoYXJkCj4gPj4+IDx0aG9tYXMucmljaGFy
ZEBib290bGluLmNvbT4gd3JvdGU6CgouLi4KCj4gPj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBk
ZXZfcG1fb3BzIHBpbmN0cmxfc2luZ2xlX3BtX29wcyA9IHsKPiA+Pj4+ICsgICAgICAgU0VUX05P
SVJRX1NZU1RFTV9TTEVFUF9QTV9PUFMocGluY3RybF9zaW5nbGVfc3VzcGVuZF9ub2lycSwKPiA+
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGluY3RybF9zaW5nbGVf
cmVzdW1lX25vaXJxKQo+ID4+Pj4gK307Cj4gPj4+Cj4gPj4+IFVzZSBwcm9wZXIgLyBtb2Rlcm4g
bWFjcm8uCj4gPj4KPiA+PiBmaXhlZCwgdXNlIERFRklORV9OT0lSUV9ERVZfUE1fT1BTIG5vdwo+
ID4KPiA+IC4uLgo+ID4KPiA+Pj4+ICAjZW5kaWYKPiA+Pj4KPiA+Pj4gV2h5IGlmZGVmZXJyeSBp
cyBuZWVkZWQgKGVzcC4gdGFraW5nIGludG8gYWNjb3VudCBwbV9wdHIoKSB1c2UgYmVsb3cpPwo+
ID4+Cj4gPj4gV2UgbWF5IGhhdmUgYW4gInVudXNlZCB2YXJpYWJsZSIgd2FybmluZyBmb3IgcGlu
Y3RybF9zaW5nbGVfcG1fb3BzIGlmCj4gPj4gQ09ORklHX1BNIGlzIHVuZGVmaW5lZCAoZHVlIHRv
IHBtX3B0cikuCj4gPgo+ID4gVGhpcyBpcyBjb3VwbGVkIHdpdGggdGhlIGFib3ZlLiBGaXhpbmcg
YWJvdmUgd2lsbCBhdXRvbWF0aWNhbGx5IG1ha2UKPiA+IHRoZSByaWdodCB0aGluZy4KPgo+IFll
cyB5b3UncmUgcmlnaHQuCj4gQnkgdGhlIHdheSBJIGNhbiB1c2UgcG1fc2xlZXBfcHRyIGluc3Rl
YWQgb2YgcG1fcHRyLgoKWWVzLCBwbV9zbGVlcF9wdHIoKSBpcyB0aGUgY29ycmVjdCBvbmUgaW4g
dGhpcyBjYXNlLgoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
