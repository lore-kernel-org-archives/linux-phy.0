Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C7E2C47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 21:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQuyUcR8F2F3AC1BDCS+mf70s7skwBimVR5jjkjPjj8=; b=lYWzJHP9IQfOxL
	YS8lP3FYyKqEee299aQ8ukKglHxkbq/5qz6isaHdVNZlypWUh56hz8X7w4cM5GwrZ63Rv/6fMZdga
	KXuy66A7W65CEm4hBSNpNrOPk7qMe+La1+UZsyvfWaD3zTFjMXa2tBudj64grbV2kqLgDo9uzdPUH
	FjFJOQh6lpHHK1wCey2MtvSZwxs0TyJ+z4OM+mHQDCeunZ5fNTnDFYqtKhySH8VqIVRVxkBOHiyvC
	THkGMa93PvQqzZIJ9DTy9mFD7YuHp/kMds2n3e+YqpoJk733Kzr3p5t/aKIlnTms5E4xk6wyIxpaZ
	pesseFsnSRfE+kHLDXYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTU0V-00000005V8B-1MRu;
	Fri, 26 Jan 2024 21:45:03 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTU0N-00000005V7D-3uaY;
	Fri, 26 Jan 2024 21:45:01 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a271a28aeb4so76727666b.2;
        Fri, 26 Jan 2024 13:44:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706305493; x=1706910293; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pZbGUMmKtRc78Vd0IFN0doHJAOFPz59sSFpDCt1ZMOA=;
        b=cImKoZvhFTHgp/CUQsk6q3cvut2N5NLbNlO8dXbawLEiakyiaCa+kYjmtSdYOgobJ3
         42UYQRqG2g21UQql033jM5hzkzEoICZv7DZEbOLCF0CP/Ieg668CWlz6b0y3es7MSa3J
         J8O6afhZt9GFLuTu8IzCrIRzq9PcT8kwN5SuoDvdNHMPPtPB+xBzLgZfLxYfBSoTeLb4
         ApsnPOlkTCkj584goCRlIiwnVJVHBRVrY14KylOD6EY4Wq+LilYDqLYOBihTaHyqAPdM
         0XCOYoJozIltGDsPDaCmTAxmzupTm6thWwzD1PcbpVzgDDcSGRWqBzTch92PEWH0rCLv
         q/Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706305493; x=1706910293;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pZbGUMmKtRc78Vd0IFN0doHJAOFPz59sSFpDCt1ZMOA=;
        b=D8luCEmTu4pbu/Dl+xepP1wyMSZ3Fxd6RXdsXM/EBRfoUTHGRWKIYpW3XFLFtCo81P
         nKbM0T26EVUBGkGOhs3nKUyBc6GTkTddvXMUV4+I2dEl0Hq6SY2QTzIlyPgu8DNkOGjX
         W3o1ZLupVC0KYfDolJbGFvFoa9qv8XAkM2E/M8v7flhLO+upYuLLpUHr3JU55DM4fKUz
         lirKXSpPVgw3ylYHHAGXOC0LvRKRSDQRpW140iDc6YgJO751gR7/MWOyn1Qz7wM+EM/c
         2mTD5YRbI/sWmjtRQLi0Db0hyA6FbPTQ9NuKzxKNqgHpIpTU3RoJwodGRyEvzWRdK4Kw
         vViQ==
X-Gm-Message-State: AOJu0YxKF3PP8Vs3U0vrH4AwLTg6z/rIKuycAQbYj7LVm8zIF96M0kef
	Iu8YnOzKacU609NIdyD8TmEDLDZSaIk6oxBHxYQMy/S3cFXocSXDSHxGddIEAT4IRm8oiJZNy2Y
	bGLofLppvAU29fI+ZIefEPODmLlY=
X-Google-Smtp-Source: AGHT+IEVMVE1cmDyN4zaRyBnLDzB7920s27ax/GY3ERq+4K8hxg3bppm3gfHC1JNrG8Vsr8Xu76G+2g0Gd/k/gs2hPE=
X-Received: by 2002:a17:906:a042:b0:a31:58fc:bd83 with SMTP id
 bg2-20020a170906a04200b00a3158fcbd83mr240807ejb.10.1706305493198; Fri, 26 Jan
 2024 13:44:53 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com> <20240102-j7200-pcie-s2r-v2-8-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-8-8e4f7d228ec2@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 26 Jan 2024 23:44:16 +0200
Message-ID: <CAHp75VdkWNqyy1Xe1oPDegjoO9X+zFh+zU62o3QomKmFo+LQWg@mail.gmail.com>
Subject: Re: [PATCH v2 08/15] phy: cadence-torrent: extract calls to clk_get
 from cdns_torrent_clk
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
X-CRM114-CacheID: sfid-20240126_134500_405282_1EAB8D8A 
X-CRM114-Status: GOOD (  10.62  )
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

T24gRnJpLCBKYW4gMjYsIDIwMjQgYXQgNDozN+KAr1BNIFRob21hcyBSaWNoYXJkCjx0aG9tYXMu
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBFeHRyYWN0IGNhbGxzIHRvIGNsa19nZXQg
ZnJvbSBjZG5zX3RvcnJlbnRfY2xrIGludG8gYSBzZXBhcmF0ZSBmdW5jdGlvbi4KPiBJdCBuZWVk
cyB0byBjYWxsIGNkbnNfdG9ycmVudF9jbGsgYXQgcmVzdW1lIHdpdGhvdXQgbG9va2luZyB1cCB0
aGUgY2xvY2suCj4KPiBCYXNlZCBvbiB0aGUgd29yayBvZiBUaMOpbyBMZWJydW4gPHRoZW8ubGVi
cnVuQGJvb3RsaW4uY29tPgoKKEp1c3QgYSBzaWRlIHF1ZXN0aW9uOiBIYXZlIHlvdSB1c2VkIC0t
aGlzdG9ncmFtIGRpZmYgYWxnbyB3aGVuCnByZXBhcmluZyB0aGUgc2VyaWVzPyBQbGVhc2UgdXNl
LCBpZiBub3QpCgouLi4KCgo+IC0gICAgICAgY2Ruc19waHktPmNsayA9IGRldm1fY2xrX2dldChk
ZXYsICJyZWZjbGsiKTsKPiArICAgICAgIGNkbnNfcGh5LT5jbGsgPSBkZXZtX2Nsa19nZXQoY2Ru
c19waHktPmRldiwgInJlZmNsayIpOwo+ICAgICAgICAgaWYgKElTX0VSUihjZG5zX3BoeS0+Y2xr
KSkgewo+IC0gICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgInBoeSByZWYgY2xvY2sgbm90IGZv
dW5kXG4iKTsKPiArICAgICAgICAgICAgICAgZGV2X2VycihjZG5zX3BoeS0+ZGV2LCAicGh5IHJl
ZiBjbG9jayBub3QgZm91bmRcbiIpOwo+ICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihj
ZG5zX3BoeS0+Y2xrKTsKPiAgICAgICAgIH0KClNhbWUgaXNzdWUgYXMgSSBub3RlZCBpbiBhIHBy
ZXZpb3VzIGVtYWlsLgoKLS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
