Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F821C47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 21:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akeyoadcKY0uZqw3+MYWIYmlkRe2/povorb19BkpN80=; b=Te04RFMRtU0hYy
	o+ozu7gAfpb+BQJ9cuoOMNzql13r1O7yTqCDEUHbmvXW/5uWBbPDV/hoPS/NAmx4/8+nAOMCWFtiC
	iUcEeeFI1y9Bwg0vpuz2YUQpP6lASX7/6EGNQ4yZiqzmaopISTA7lA+8EGKZS2Ef8wOUWhN+FJ8zj
	hNLAw2+Es1AK6vnzv/+veOXu0VKKLMW+vb1rSCgjuJwXX2mqrcWC/+e8WBYRbOhsVDtO9NnMyQMCN
	0eJAakMKX3VaahoHSduuYZjy8C6pOHQYPuXvhUkTunVzxRIp9F5J/9+gp15xU+tvn1PkUcNSzotuh
	Xijw/Q/9b/pHWYz91/EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTUAq-00000005WME-3saK;
	Fri, 26 Jan 2024 21:55:44 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTUAn-00000005WLi-17DV;
	Fri, 26 Jan 2024 21:55:42 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a28a6cef709so81492866b.1;
        Fri, 26 Jan 2024 13:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706306140; x=1706910940; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Eex8zgmPiS6cd/0RWckNbah/punqtBDfU6VumuTjFQ=;
        b=fbq6ROoIEPqwxImsSF/AmTovxruBu1IuGivRYaNPK20AMfGCJJLlU4J8u1zkxUSYcW
         WryaIJ5cQbWjPJVM2Y9jtF5knx8embgeN2/aDkxNIEOwroErCMUfGqrM1R6svzjBRXg1
         OsfLcPzD5hUONFfuPUE06kxqGD63Wgj/gw0l3yiU+5GO15D/ctqoHnDPBbtHXmzdbyCY
         WRFKH+cARrCy1RSmuRSEPf26odFv05FNUZh7fZY75o8tkmWIaT36SlT+g2O3VAUeN+oA
         0co92fYxsr/+4AljkHPTvM89MgPj2GRffwVv7OaJSS3Qh0263dDnxC5SFVVGxT/PohLE
         /D1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706306140; x=1706910940;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Eex8zgmPiS6cd/0RWckNbah/punqtBDfU6VumuTjFQ=;
        b=o/22hQ5RBPOjQjOZcVBWsziKaMsA2pCyTSQ2pYYYrdak9A/uQVhG3xrdeKZm1pBOlQ
         AE1/+FAZL5IIz9f/QwphwdxFIbZmy03PQJgGaH4muOx7gPHF2sOTjjq8W7qws/JUHRD6
         BiIVoKBvM6Tkn+6HfeJ9OoGswRhvVepwluqDcLxhz4870cFEBLM3h8wV+BnxH2ePL8u0
         ioiZR/4V7mTT7yp+WgUVtxVIIqFy58OK1++PHngzsvzPx1v5RIHcdeSMZFyG6Oh4uFn8
         WjdRDJZJf0oLKt8hwaOIrqFqgRYJJOBgbGMqvySMaJYhW5GUrqT5YbE7GndEqQtA1CPt
         WuOA==
X-Gm-Message-State: AOJu0Yzp9z+b9+pa819DZUj28/U7hfEo9bNmvKHtRmw6XkPvMszJd0Mn
	crp+2caYf5/RmMCCh5+kB0I31Q7pUZ9EN24jcYJ6kUnVokMYObEcmEtbIy0Jp4BIuc1G/gdIPl9
	PtvF4waF38NUvvxemIComviXwT7o=
X-Google-Smtp-Source: AGHT+IEBOcQl+eA0DkV9Z5QVSjTUy7lBkqFnE6O8BX8N2DGGcgPCadgeO4ln7Re5ueD6foFwcdrwD9BT1gB5PR9Nesc=
X-Received: by 2002:a17:906:9ac9:b0:a27:6615:15ed with SMTP id
 ah9-20020a1709069ac900b00a27661515edmr221845ejc.42.1706306139794; Fri, 26 Jan
 2024 13:55:39 -0800 (PST)
MIME-Version: 1.0
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com> <20240102-j7200-pcie-s2r-v2-15-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-15-8e4f7d228ec2@bootlin.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 26 Jan 2024 23:55:03 +0200
Message-ID: <CAHp75Vfzvi-08DUvmBO8Lt1a-orozD+Z=YNOQJykJKWDZA5gGA@mail.gmail.com>
Subject: Re: [PATCH v2 15/15] PCI: j721e: add suspend and resume support
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
X-CRM114-CacheID: sfid-20240126_135541_326146_C1674145 
X-CRM114-Status: GOOD (  11.97  )
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
bGVicnVuQGJvb3RsaW4uY29tPgo+Cj4gQWRkIHN1c3BlbmQgYW5kIHJlc3VtZSBzdXBwb3J0LiBP
bmx5IHRoZSByYyBtb2RlIGlzIHN1cHBvcnRlZC4KPgo+IER1cmluZyB0aGUgc3VzcGVuZCBzdGFn
ZSBQRVJTVCMgaXMgYXNzZXJ0ZWQsIHRoZW4gZGVhc3NlcnRlZCBkdXJpbmcgdGhlCj4gcmVzdW1l
IHN0YWdlLgoKLi4uCgo+ICtzdGF0aWMgaW50IGo3MjFlX3BjaWVfc3VzcGVuZF9ub2lycShzdHJ1
Y3QgZGV2aWNlICpkZXYpCj4gK3sKPiArICAgICAgIHN0cnVjdCBqNzIxZV9wY2llICpwY2llID0g
ZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gKwo+ICsgICAgICAgaWYgKHBjaWUtPm1vZGUgPT0gUENJ
X01PREVfUkMpIHsKPiArICAgICAgICAgICAgICAgZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHBj
aWUtPnJlc2V0X2dwaW8sIDApOwo+ICsgICAgICAgICAgICAgICBjbGtfZGlzYWJsZV91bnByZXBh
cmUocGNpZS0+cmVmY2xrKTsKClNhbWUgUSBhcyBpbiBhIGZldyBtYWlscyBiZWZvcmU6IERvIHlv
dSBuZWVkIHVucHJlcGFyZT8gV2hhdCB3aWxsIGJlCnRoZSBiZW5lZml0IGZyb20gYSBQTSBwZXJz
cGVjdGl2ZT8KCj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgY2Ruc19wY2llX2Rpc2FibGVfcGh5
KHBjaWUtPmNkbnNfcGNpZSk7Cj4gKwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gK30KCi0tIApXaXRo
IEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
