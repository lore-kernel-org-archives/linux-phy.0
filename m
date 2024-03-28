Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD75BCD11DD
	for <linux-phy@archiver.kernel.org>; Thu, 28 Mar 2024 21:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZvmGZJ/yjvQIXiyWfXt40nKIkjKPUqkAqAyDUgl9cM=; b=dWUg2Qrq4V+W7k
	I5ZY9YFNvKql56ZP1k7Vz0Jrf838h1KFa6CLshMKzjFVc2PNh1tNGJyLOEYJ3yEQ+bluM32bxBBZb
	1PeCPKlPBUAIO4p2urn1FY/HQgX/EpKnBD17ylv5jEB3uxNkahl5rrHkaqu29UvnxsdFU5Xo3FCSF
	JF/6LbMa7FrJGUF5Vod+2cAPLZqMEp0O7J0lswCVgsxBcMu7KnGL9vIGMWgNFu+a+HALuKZl9ZGaJ
	GadOHBFRqAm/3rtvYQf0pmVLqw8Bg0aMb6TmQcT59hCDwUAxu3fXljbIYawDi7+4lBBnLiu9yCERj
	EIPf844zKcqocvVfdv2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpwyE-0000000FiLR-2MkS;
	Thu, 28 Mar 2024 21:07:34 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpwyA-0000000FiJ6-38l2
	for linux-phy@lists.infradead.org;
	Thu, 28 Mar 2024 21:07:33 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-ddaad2aeab1so1271088276.3
        for <linux-phy@lists.infradead.org>; Thu, 28 Mar 2024 14:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711660049; x=1712264849; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x20Z9wO4XWd6/hqsTvUJ9C5xuiCT/PGoUlQnMNRKhnA=;
        b=ZgIW2vSecLLCCki2Y6oJ46FSgLfacsSCgijN42fWMwLlsbB1jyOIEBhguyvNSZmHnV
         bX0WDNL25/aH1A3AtK71qSEfBtpSPI/vVJJVwcNGQ5dGRvZAokq2K6fk2JXHh/8qfI6w
         k2aQwcvEpisG62C3DVCFSMIQ5GjcKhdf5O4/03KYXyrNOZuxTgLiLPF2ypr2hM/tuIen
         dwc9UTIgv3BsHRSi5Kl7dacmNnVKJKvNu/Ku1Z9pCxrh/wtYZc4nx/2bJuaPlTRE1DPV
         F8gEgu2dlTnLRmupILMWSRudbnulDi2B/LmndwwKR7/wnU7CCrjXl3YZA5U696rKH/1W
         sJaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711660049; x=1712264849;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x20Z9wO4XWd6/hqsTvUJ9C5xuiCT/PGoUlQnMNRKhnA=;
        b=BMp2KXV7Jj52AhG+tgvjRGhGhMLllrGOru7Q+Q/y7s23ZaTtFSoVC2vTqxWoTTr3YJ
         5psyjb7RIjCnZMa0OGDeGFNYnfrKL4n8ih1nukcJkucFm3RJfl/58FB0PhIkXf02uOdw
         GBraKmd/rjrbE5UDbX026CRg8vRWJPVJsoLNws84p/FLfkhSSBqynznYF6KSfy/9sFN1
         FI5zRU9sl1TpvoA00LDiD2Cxl0Mu+lvx/s5fUrZaE9LNsJQ4DBXPtSSUdnK85ExGAeh2
         jPvcLkCpTNJSaNESTalQ1XVd5uYCO5tr/fUHudpkffG94MjCmBXyu9aX7T4BaR2Zot6+
         U9PA==
X-Forwarded-Encrypted: i=1; AJvYcCUbZxt+aTHgljLO1fMaeifQxsoXfNRZK1Ih86T/Pxro4zbpe7P9OSMm+dA710trCAJ8AhGE7645IxFoAtI4jb1ikCZkOLUhiFRZq8Yfxw==
X-Gm-Message-State: AOJu0YwL5xmX9XThAUXCw6FDkRPNhqSPtmxF4lcZ4F1I9lUFjDhoW6XM
	IEXT5lT8Mn7XZXsWaGkx79sosjSfzP7XA2t2pg+fVuBZGJJ6uiWQ0SWrXVDrYYKYEg2LeQMJYcv
	Yguee13vw0lIHnld/faMQaiayNCEKlzMZUUaNhw==
X-Google-Smtp-Source: AGHT+IEZ00FIAL54100s1/gTVa8Y+4TfoCNoj6CJTr4a+YUNR3bthOuQhK7OnCvzxoRuhI+9C1J8CAiCPfUv2a7d2bw=
X-Received: by 2002:a25:9e83:0:b0:dc6:bbbd:d4f4 with SMTP id
 p3-20020a259e83000000b00dc6bbbdd4f4mr470298ybq.33.1711660049195; Thu, 28 Mar
 2024 14:07:29 -0700 (PDT)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com> <20240102-j7200-pcie-s2r-v4-2-6f1f53390c85@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v4-2-6f1f53390c85@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Mar 2024 22:07:18 +0100
Message-ID: <CACRpkdYemzkVW4fjBtHtFPaa-Uy969j5Ti2zmRgjFiZK+jGS7g@mail.gmail.com>
Subject: Re: [PATCH v4 02/18] pinctrl: pinctrl-single: move suspend()/resume()
 callbacks to noirq
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, 
	gregory.clement@bootlin.com, theo.lebrun@bootlin.com, 
	thomas.petazzoni@bootlin.com, u-kumar1@ti.com, 
	Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_140730_872284_01B398EB 
X-CRM114-Status: GOOD (  13.12  )
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

T24gTW9uLCBNYXIgNCwgMjAyNCBhdCA0OjM24oCvUE0gVGhvbWFzIFJpY2hhcmQKPHRob21hcy5y
aWNoYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKCgo+IFRoZSBnb2FsIGlzIHRvIGV4dGVuZCB0aGUg
YWN0aXZlIHBlcmlvZCBvZiBwaW5jdHJsLgo+IFNvbWUgZGV2aWNlcyBtYXkgbmVlZCBhY3RpdmUg
cGluY3RybCBhZnRlciBzdXNwZW5kKCkgYW5kL29yIGJlZm9yZQo+IHJlc3VtZSgpLgo+IFNvIG1v
dmUgc3VzcGVuZCgpL3Jlc3VtZSgpIHRvIHN1c3BlbmRfbm9pcnEoKS9yZXN1bWVfbm9pcnEoKSBp
biBvcmRlciB0bwo+IGhhdmUgYWN0aXZlIHBpbmN0cmwgdW50aWwgc3VzcGVuZF9ub2lycSgpIChp
bmNsdWRlZCksIGFuZCBmcm9tCj4gcmVzdW1lX25vaXJxKCkgKGluY2x1ZGVkKS4KPgo+IFRoZSBk
ZXByZWNhdGVkIEFQSSBoYXMgYmVlbiByZW1vdmVkIHRvIHVzZSB0aGUgbmV3IG9uZSAoZGV2X3Bt
X29wcyBzdHJ1Y3QpLgo+Cj4gTm8gbmVlZCB0byBjaGVjayB0aGUgcG9pbnRlciByZXR1cm5lZCBi
eSBkZXZfZ2V0X2RydmRhdGEoKSwgYXMKPiBwbGF0Zm9ybV9zZXRfZHJ2ZGF0YSgpIGlzIGNhbGxl
ZCBkdXJpbmcgdGhlIHByb2JlLgo+Cj4gUmV2aWV3ZWQtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVz
LndhbGxlaWpAbGluYXJvLm9yZz4KPiBSZXZpZXdlZC1ieTogQW5keSBTaGV2Y2hlbmtvIDxhbmR5
LnNoZXZjaGVua29AZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBSaWNoYXJkIDx0
aG9tYXMucmljaGFyZEBib290bGluLmNvbT4KClNpbmNlIHRoaXMgcGF0Y2ggbG9va3MgaW5kZXBl
bmRlbnQgZnJvbSB0aGUgcmVzdCBJIHJpcHBlZCBpdCBvdXQgb2YgdGhlCnBhdGNoIHNlcmllcyBh
bmQgYXBwbGllZCBpdCB0byB0aGUgcGluY3RybCB0cmVlIGZvciBrZXJuZWwgdjYuMTAuCgpZb3Vy
cywKTGludXMgV2FsbGVpagoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
