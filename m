Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A2E0C47DDB
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 21:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r36lhyk9w3cSaXTcuADHYPPiPf45JnYC/QHYhd+tZ1o=; b=XrwcED0nMnwQ8D
	8pfHCFTf0ZEhj0AlEUHLSf8bih0/r/euRR/3Oa6Kybt8140dKLxhF3JQPoej4uT4tKYnNu9FeW+J2
	hQSS/E81+j6ZF2H7TYnBDwJPjfFFFsKHpCLeSoOE6lE6aS42w+Mzkf7w7U4d3Jgg/vHSOF03bATDK
	1jmPgvcV9lvU7MOOecv6ihPZF/dm1OzbZnfoln7MhsHC3pRsCbk7ex2oj3L4JoYnSpdtaI8m4g5ZW
	l0FMT/5f1iPObRcnmNCbPSvPeuVJuBqexwFEl1quWj9Oqeg8oZuwjt535dg+Miz9Uzc8PZgxYhPl9
	Zq3d2debPPZebOnRMxJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTTvD-00000005UIS-3VCM;
	Fri, 26 Jan 2024 21:39:35 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTTvB-00000005UHw-0jb1;
	Fri, 26 Jan 2024 21:39:34 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40ee418e7edso12726335e9.2;
        Fri, 26 Jan 2024 13:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706305170; x=1706909970; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GnBIN51Yx/Gln0h3onAB09YxTVH+h1KGIKBHmAivbD8=;
        b=XEmzs2FgyQI+beb0nruAxiomXKOyp45ZU3idX1LUTLD5nsllFEdOBsjF1XYgr+jMq3
         mak4LVdZWTkFJBMBxbAT1IY1QDBE1XPPxh+GNrdT/PU+jXfYl64GncULksZmdkg1vgKX
         IpqT2HZ4GzHJosQC58brhjVpBvSiJ/Xb23/Ca0su7YyDEVnL8/M6zHajWx2afSM5XWdl
         zALNYFZM5+uQEnDL0QpUdMhwrtloFIeIgi5+wsaILOqojbIjywRuAXAVeejE0tbCAxW+
         NapYMhrCQV+EYyDUAFI9VYJZzRvylrMfvNEwbfPcxHf3fX8rvIw1Qijh+kZz0zpf4Tly
         V+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706305170; x=1706909970;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GnBIN51Yx/Gln0h3onAB09YxTVH+h1KGIKBHmAivbD8=;
        b=T8WamFuI2vFTveXUbLXLZt35PcDhMn/QcW7JaDm4El84SZfr1kDDSU2s7wnW6JnU4i
         io9Fu0KablLPxnmcryUV/VPhurhkxc298HcdewlwzrSFgXGgCBFvbd6bM7kx4H6CvsgS
         YkycCnSWLbHUw5qwS2uHd9ckMkXBjBz9HMr0qm3CpdlNQS4ZYrmM8spcv1uq5JxM138x
         iDADtesEevVfzv8OPx/yoHgqYL0iptXEdq2LmbttB9iNAConK3F/flqWnm0WmzERrtPK
         dkFr9iaZuOOSMIKrPMkrgIiE9ZXUUB4Trm+h3gopk6N4CEOpSLUlWE1uWfZ8Io52Tu5n
         mSyA==
X-Gm-Message-State: AOJu0Yz1lcDx4GPMTPW8askst5nbYddPpm/4/CmquI/8hWkucPFrCKMx
	GIyrHRJ2ZIwl5p9vS/XXJx0mG6Hl3Q8NP4jkdHPTzLcQ/9B57iN7GUgpC3LTPtFu6EdjKiK6kFT
	55CGKe5+MOqInig1ulRBNvieXLV4OIw3lTy8=
X-Google-Smtp-Source: AGHT+IHiW3MbwP6aH63LCEQhb4YdM2qAZyh5A1b/7Pw7GKAhh+9plvsj/9UMyWlCV+hjplNvyLCO6hkMeQTB1ba3/ZA=
X-Received: by 2002:a05:600c:5123:b0:40d:8c4d:c0b3 with SMTP id
 o35-20020a05600c512300b0040d8c4dc0b3mr293884wms.94.1706305169591; Fri, 26 Jan
 2024 13:39:29 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com> <20240102-j7200-pcie-s2r-v2-6-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-6-8e4f7d228ec2@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 26 Jan 2024 23:38:53 +0200
Message-ID: <CAHp75VcUY5_gB=VVWF2pAa4iEo_9Lt5itNH5RAy6NjnTk5PZWA@mail.gmail.com>
Subject: Re: [PATCH v2 06/15] phy: ti: phy-j721e-wiz: make wiz_clock_init
 callable multiple times
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
X-CRM114-CacheID: sfid-20240126_133933_239925_EA26FBCD 
X-CRM114-Status: GOOD (  12.58  )
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
cmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBGb3Igc3VzcGVuZCBhbmQgcmVzdW1lIHN1
cHBvcnQsIHdpel9jbG9ja19pbml0IG5lZWRzIHRvIGJlIGNhbGxlZCBtdWx0aXBsZQoKd2l6X2Ns
b2NrX2luaXQoKQoKPiB0aW1lcy4KPgo+IEFkZCBhIHBhcmFtZXRlciB0byB3aXpfY2xvY2tfaW5p
dCB0byBiZSBhYmxlIHRvIHNraXAgY2xvY2tzIHJlZ2lzdHJhdGlvbi4KCkRpdHRvLgoKLi4udG8g
c2tpcCB0aGUgcmVnaXN0cmF0aW9uIG9mIHRoZSBjbG9ja3MuCgouLi4KCj4gLXN0YXRpYyBpbnQg
d2l6X2Nsb2NrX2luaXQoc3RydWN0IHdpeiAqd2l6LCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUp
Cj4gK3N0YXRpYyBpbnQgd2l6X2Nsb2NrX2luaXQoc3RydWN0IHdpeiAqd2l6LCBzdHJ1Y3QgZGV2
aWNlX25vZGUgKm5vZGUsIGJvb2wgcHJvYmUpCgpTbywgd2h5IG5vdCByZWZhY3RvciB0aGlzIHRv
IHR3byBmdW5jdGlvbnMgZmlyc3Q/CgouLi4KCj4gKyAgICAgICAgICAgICAgIGNsayA9IGRldm1f
Y2xrX2dldChkZXYsICJjb3JlX3JlZl9jbGsiKTsKPiArICAgICAgICAgICAgICAgaWYgKElTX0VS
UihjbGspKSB7Cgo+ICsgICAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiY29yZV9y
ZWZfY2xrIGNsb2NrIG5vdCBmb3VuZFxuIik7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0
ID0gUFRSX0VSUihjbGspOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7CgpU
aGlzIGlzIHdyb25nIGFuZCBoYXMgdG8gYmUgZml4ZWQgaW4gdGhlIG9yaWdpbmFsIGNvZGUuClRo
ZSBjb3JyZWN0IGFwcHJvYWNoIGlzIHRvIHVzZSBgcmV0dXJuIGRldl9lcnJfcHJvYmUoLi4uKWAg
b3Igb3Blbgpjb2RlIGl0LCBidXQgc2luY2Ugd2UgaGF2ZSBhIGhlbHBlciwgb3BlbiBjb2Rpbmcg
aXMgaGlnaGx5CmRpc2NvdXJhZ2VkLgoKPiArICAgICAgICAgICAgICAgfQoKLi4uCgo+ICsgICAg
ICAgICAgICAgICBpZiAod2l6LT5kYXRhLT5wbWFfY21uX3JlZmNsazFfaW50X21vZGUpIHsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICBjbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAiY29yZV9yZWYx
X2NsayIpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChJU19FUlIoY2xrKSkgewo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJjb3JlX3JlZjFfY2xr
IGNsb2NrIG5vdCBmb3VuZFxuIik7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBy
ZXQgPSBQVFJfRVJSKGNsayk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1
cm4gcmV0OwoKRGl0dG8uCgo+ICsgICAgICAgICAgICAgICAgICAgICAgIH0KCi4uLgoKPiArICAg
ICAgICAgICAgICAgY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgImV4dF9yZWZfY2xrIik7Cj4gKyAg
ICAgICAgICAgICAgIGlmIChJU19FUlIoY2xrKSkgewo+ICsgICAgICAgICAgICAgICAgICAgICAg
IGRldl9lcnIoZGV2LCAiZXh0X3JlZl9jbGsgY2xvY2sgbm90IGZvdW5kXG4iKTsKPiArICAgICAg
ICAgICAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKGNsayk7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgcmV0dXJuIHJldDsKCkRpdHRvLgoKPiArICAgICAgICAgICAgICAgfQoKLi4uCgo+ICsg
ICAgICAgLyogV2hhdCBmb2xsb3dzIGlzIGFib3V0IHJlZ2lzdGVyaW5nIGNsb2Nrcy4gKi8KPiAr
ICAgICAgIGlmICghcHJvYmUpCj4gKyAgICAgICAgICAgICAgIHJldHVybiAwOwoKSnVzdCByZWZh
Y3RvciBwcm9wZXJseSwgbm8gbmVlZCB0byBoYXZlIHRoaXMgdWdseSBtaXggb2YgZGV2bV8qKCkg
Zm9yCnByb2JlIHN0YWdlLCBwYXJhbWV0ZXIgYW5kIEhXIHJlbGF0ZWQgdGhpbmdzLgoKLS0gCldp
dGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
