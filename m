Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C15F8C4725D
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jan 2024 16:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PrR7GoV9zf8GlGr4XSIRVLJidZ0kgQrrFmzXrG4dH2w=; b=L91KYERpvAUWfg
	qYxaaRBUDFTaubN2chnoFiyeNCiSqGjS8aciC6tBy6CgIY8S/5LUx5xZNgsZt0mQf7x0X1hDlJ9RY
	j7a+Iyxd0oCxlvnwv3+NSrO6ru+QCrvwD6aTTz2LSlr5rxKsl0hHj23mQhigWMwwvJpSDzmTPqzGG
	t07tc/Rh9pxCRz9S1Qb4enKJnDfTVwsvp6MTdHNOyctg6H3u4PjuPbbYzqv4EsFD6YojwyQjp6mpR
	PRJbit9weNE42lkKQQn/r9/siy8nqQkzMfK3KFw9LYsFJ+2UTsKM7q9px6COtfQc7WWNrutOJjg4Y
	fhdcj0z6kW3gbLL6gFKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrPr-00645o-1L;
	Fri, 19 Jan 2024 16:08:23 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrPn-006455-1R;
	Fri, 19 Jan 2024 16:08:21 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 65E85240008;
	Fri, 19 Jan 2024 16:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705680495;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/lcPvgWIm/QbVzXxcPjjQvz3cRLruCD/tBqEeHF3XX0=;
	b=WONIpkeF6OM+U5keRwkDYZGMolP5XktgDBB6mIAe8MUTsy79HiG6aPHFRUwt+zvQnJD1yV
	rhimS5Xv0eRylsTuhD2McG83J2YXfxvXNhUbjh/C+EXBuXMvv5+07L8LSuG0ozxWPYlwY/
	aNSMECbf8FnizI8ADDg3l8yKMTxFLFAw5gxxCKPkDelc+OqObRloUw9fEpi35HIqKz+mBP
	wPtcYc/iRsKufncWrvdORBHBKi/t3Zi4ATWX3EAfBtizCbIK5XiiUMupEJBg9I+eWfq8I+
	stz/4f2GuyfGsCnAIosFOmQIF5TolDLgz4bAPmE8Q0y3roHYchplOYTQKxUDog==
Message-ID: <223422cc-2a1c-417b-8fa1-20d3b3eb41ef@bootlin.com>
Date: Fri, 19 Jan 2024 17:08:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/14] pinctrl: pinctrl-single: move suspend/resume to
 suspend_noirq/resume_noirq
Content-Language: en-US
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Haojian Zhuang
 <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Tom Joseph <tjoseph@cadence.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-2-84e55da52400@bootlin.com>
 <CAHp75Verff06LE0QFaDRoun=ANpGfVU1tHknvvQZd_KyzLVP5Q@mail.gmail.com>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <CAHp75Verff06LE0QFaDRoun=ANpGfVU1tHknvvQZd_KyzLVP5Q@mail.gmail.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_080819_756938_29A0A5B6 
X-CRM114-Status: GOOD (  13.24  )
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

T24gMS8xNS8yNCAyMTowMiwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+IE9uIE1vbiwgSmFuIDE1
LCAyMDI0IGF0IDY6MTbigK9QTSBUaG9tYXMgUmljaGFyZAo+IDx0aG9tYXMucmljaGFyZEBib290
bGluLmNvbT4gd3JvdGU6Cj4+Cj4+IFRoZSBnb2FsIGlzIHRvIGV4dGVuZCB0aGUgYWN0aXZlIHBl
cmlvZCBvZiBwaW5jdHJsLgo+PiBTb21lIGRldmljZXMgbWF5IG5lZWQgYWN0aXZlIHBpbmN0cmwg
YWZ0ZXIgc3VzcGVuZCBhbmQvb3IgYmVmb3JlIHJlc3VtZS4KPj4gU28gbW92ZSBzdXNwZW5kL3Jl
c3VtZSB0byBzdXNwZW5kX25vaXJxL3Jlc3VtZV9ub2lycSB0byBoYXZlIGFjdGl2ZQo+PiBwaW5j
dHJsIHVudGlsIHN1c3BlbmRfbm9pcnEgKGluY2x1ZGVkKSwgYW5kIGZyb20gcmVzdW1lX25vaXJx
Cj4+IChpbmNsdWRlZCkuCj4gCj4gLT4uLi5jYWxsYmFjay4uLigpCj4gKFNhbWUgY29tbWVudCBJ
IGhhdmUgZ2l2ZW4gZm9yIHRoZSBmaXJzdCBwYXRjaCkKCmZpeGVkCgo+IAo+IC4uLgo+IAo+PiAg
ICAgICAgIHN0cnVjdCBwY3NfZGV2aWNlICpwY3M7Cj4+Cj4+IC0gICAgICAgcGNzID0gcGxhdGZv
cm1fZ2V0X2RydmRhdGEocGRldik7Cj4+ICsgICAgICAgcGNzID0gZGV2X2dldF9kcnZkYXRhKGRl
dik7Cj4+ICAgICAgICAgaWYgKCFwY3MpCj4+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZB
TDsKPiAKPiBEcm9wIGRlYWQgY29kZS4KPiBUaGlzIHNob3VsZCBiZSBzaW1wbGUgb25lIGxpbmUg
YWZ0ZXIgeW91ciBjaGFuZ2UuCj4gCj4gICAgICAgIHN0cnVjdCBwY3NfZGV2aWNlICpwY3MgPSBk
ZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiAKCmRlYWQgY29kZSBkcm9wcGVkCgo+IC4uLgo+IAo+PiAg
ICAgICAgIHN0cnVjdCBwY3NfZGV2aWNlICpwY3M7Cj4+Cj4+IC0gICAgICAgcGNzID0gcGxhdGZv
cm1fZ2V0X2RydmRhdGEocGRldik7Cj4+ICsgICAgICAgcGNzID0gZGV2X2dldF9kcnZkYXRhKGRl
dik7Cj4+ICAgICAgICAgaWYgKCFwY3MpCj4+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZB
TDsKPiAKPiBEaXR0by4KPiAKPiAuLi4KCmRlYWQgY29kZSBkcm9wcGVkCgo+IAo+PiArc3RhdGlj
IGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHBpbmN0cmxfc2luZ2xlX3BtX29wcyA9IHsKPj4gKyAg
ICAgICBTRVRfTk9JUlFfU1lTVEVNX1NMRUVQX1BNX09QUyhwaW5jdHJsX3NpbmdsZV9zdXNwZW5k
X25vaXJxLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBpbmN0cmxf
c2luZ2xlX3Jlc3VtZV9ub2lycSkKPj4gK307Cj4gCj4gVXNlIHByb3BlciAvIG1vZGVybiBtYWNy
by4KCmZpeGVkLCB1c2UgREVGSU5FX05PSVJRX0RFVl9QTV9PUFMgbm93Cgo+IAo+IC4uLgo+IAo+
PiAgI2VuZGlmCj4gCj4gV2h5IGlmZGVmZXJyeSBpcyBuZWVkZWQgKGVzcC4gdGFraW5nIGludG8g
YWNjb3VudCBwbV9wdHIoKSB1c2UgYmVsb3cpPwoKV2UgbWF5IGhhdmUgYW4gInVudXNlZCB2YXJp
YWJsZSIgd2FybmluZyBmb3IgcGluY3RybF9zaW5nbGVfcG1fb3BzIGlmCkNPTkZJR19QTSBpcyB1
bmRlZmluZWQgKGR1ZSB0byBwbV9wdHIpLgoKLS0gClRob21hcyBSaWNoYXJkLCBCb290bGluCkVt
YmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
