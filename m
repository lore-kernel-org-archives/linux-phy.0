Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F7E9C3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 20:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p417Q6+zCWELhhmKv0QDn1e8hpP9doWakhSgQlmrQhA=; b=QtqWkdndLDfxJH
	KqYdB8NuKPfKucHI1aJQJnwYCD5/Bw2OkvSlKroyuGRLbxa2pGWLUzZkuUKpyyciipjJC14mkEkPQ
	5mGEf0aLBLAgPK0oNaubpykD0eCiafBtrR0GWAakDdyWNGGvuL+JfIR7KwXMp970Pi+7KzHlrofNQ
	SQETI7rMn48ikDZqg7oTRl1DAgZw5tKqbq0WHjcIHGPy1eQs8N0S8mvfpp90Srv0rj0r/2SMVM+cM
	65zjHhtCmr5LNwN9sajZe69iFyc4D4BYy61+AUcbgLCPGuJdcLVrtv06mL5fT/RSMaYulrGwszuy2
	gp5CIswFss1P7xWWjveg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPTEB-00A6lB-0n;
	Mon, 15 Jan 2024 20:06:35 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPTE8-00A6jz-0G;
	Mon, 15 Jan 2024 20:06:33 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-55969c01168so1388655a12.1;
        Mon, 15 Jan 2024 12:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705349188; x=1705953988; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=87z/U/eZmGA0TAuJWEdp0n7QdUhBeveGTh40YHaQDwQ=;
        b=WjBA11LXgZIKQMkG8NGe4J2xOXMYevou2VU53MWTgYI752yn5MlRo4pnuJUfNSCI7T
         WNVoK/fppDMsLFAg8Xgpg32ImYbn6dCUk3woEpYwu84mwlxNZyFWJwB8AyiLyk5N+Xo1
         RT/7jeiRXJvK+C+7O88VQFm898be+zY20uk9prSWk9p5KiAftkyhSe8FwBfDu++fsbLM
         yrwL9ttTbAjAewCUJvfHLQTHNKfYcsvyHCUiAhx5c4fgH42Qc7MpEcrmUvaOIYnowtP6
         Xc5bOM3iGidPIZIPssVGE/rs4bNiT+GBe++gn7YlWQOj9sJjkazy9s9Zzko/b9r1hNM2
         KvlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705349188; x=1705953988;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=87z/U/eZmGA0TAuJWEdp0n7QdUhBeveGTh40YHaQDwQ=;
        b=dr0clmOEvLSsvkEJHpD9hWK1TghSK5XRiaSGogqZIdkSwccIUB8iHnkdXWT7xfvO8N
         Wqnvphp1ZMEAaH6HgrPX3IoUy79E5APhdrqKmLHoT9VeZ58Md1uyiKd2Sz2edMjHSEYC
         4YSEEOwuWx3ZYBC9RCEDIjtEuAc8xD1SWrEaAoccL9pTXwcihi3qG400eCkdnF/QDvkq
         VVJ5ygDGYckC+xNjql6Q3G8V3r7L3px1o5JAq9Q+gXzSXwPQ6kBIsfExzxwEsaGplcDL
         49+Lu9MX4OzD6AlR3JIGUcQ8bxjkpBq0SwphmoHDTUSTsjuYdzKimQIFfzYDRlA1lA+E
         BSRA==
X-Gm-Message-State: AOJu0YzevQlyTyN606YDy0IcIven1bopV0kpXhCt8giAX879JV/h0CQM
	O2/ogLnmA0GJ6VyvPz3lZfdRzueadKJnaSBjmdI=
X-Google-Smtp-Source: AGHT+IHsGuZhFMr80G5DfnYOLEnb6oIGs7BJiiLJfQW8ZbTBFNvUcUSdt4iuoqGylqjyWRGa+ORIiKkxjeS8hFu9nm0=
X-Received: by 2002:a17:907:3dac:b0:a23:690e:48bf with SMTP id
 he44-20020a1709073dac00b00a23690e48bfmr7583783ejc.12.1705349188168; Mon, 15
 Jan 2024 12:06:28 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com> <20240102-j7200-pcie-s2r-v1-4-84e55da52400@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v1-4-84e55da52400@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 15 Jan 2024 22:05:52 +0200
Message-ID: <CAHp75VdtL+RncgLWghTy0qneobM+UUFr6Wnc78maOmeLZEpQOA@mail.gmail.com>
Subject: Re: [PATCH 04/14] mux: mmio: Add resume support
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
X-CRM114-CacheID: sfid-20240115_120632_120773_A817CC7E 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
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
bGVicnVuQGJvb3RsaW4uY29tPgo+Cj4gSW1wbGVtZW50IHJlc3VtZSBzdXBwb3J0CgpXaHk/Cgou
Li4KCj4gKyNpZmRlZiBDT05GSUdfUE0KCk5vIGlmZGVmZmVyeSwgdXNlIHByb3BlciBtYWNyb3Mu
CgouLi4KCj4gKyAgICAgICAgICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJjb250cm9sICV1
OiBlcnJvciByZXN0b3JpbmcgbXV4OiAlZFxuIiwgaSwgcmV0KTsKCldvbid0IGFueXRoaW5nIGdv
IHdyb25nIGFuZCBzcGFtIHRoZSBsb2cgYnVmZmVyPwoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApB
bmR5IFNoZXZjaGVua28KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
