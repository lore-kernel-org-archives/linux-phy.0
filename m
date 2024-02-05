Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB6B8C4828D
	for <linux-phy@archiver.kernel.org>; Mon,  5 Feb 2024 07:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iouT/F3nfqyjztMZ8Dl/dsG4pXKdzZAOoblb1KQBkQA=; b=dRYLvDd7nnJyt5
	6axKZgCUsNMrMwZqHTy2Yx/Hoog1l8YZUgKsALxIFIyHo9b2dr0N5BIjiU1UT/fAq+X374YGHTNDR
	fpqZFprpuExSfKEzA/0ZZm0HkBX8ry8vWxorW2/lP+Z2UuwO3hHQ1pM4OPMknct+kEiRxC9q9fZG2
	rKoR4gp6kB1R8AHfI9+eP4pFHSLnksLTuYoKY4gGIY4mKTW1csaFth6/nFX/FFMWEmrC2L23oB9+2
	tH3kiyMS8gmald3ZHJgVtMX04Uzvqg88X0syrYzbB6OP0r3Gb8rc76X9GibD44xX1eVgJqXuKMPFA
	JqAgw6Gkqxzu7HtkmElg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWtJ4-00000002H0j-1Sg1;
	Mon, 05 Feb 2024 07:22:18 +0000
Received: from mail5.25mail.st ([74.50.62.9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWtJ0-00000002Gyu-2yM2;
	Mon, 05 Feb 2024 07:22:16 +0000
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 2686F60333;
	Mon,  5 Feb 2024 07:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1707117734;
	bh=qu+yTx1OVLPWhDo9bCVpMACyMIuspoXRYqNKXMacw9E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pWBcYNFVtYgQoLozoCxXXdqjuXmY8SrOQpWPvvfQVI4NKfVju1lTbtitfA9kD6+pG
	 p2hqjQwgp1ebAl1mEiS5QverZrCmHNxdJP3U948Dn5dyLEWHGFNU+BpEmW6j+ybYoG
	 yxRRF/fb+DUeMVlUCL37H0DYmNk3a4g7ovSmt1g8DBoCdyyScJ0O/+whc0nTQSJU7Y
	 d90a9dLdOmsRoQqNlT3oRMX3I4m2hRx61KqX3PfKX6J4saK53FXn8OEyMMU4Q6N8vz
	 IB9x4MLQWCg3APB3ApqJg7e8593AoRphMOynPw6zlauK0pMR6Fdj50hlxPOPMyLbxk
	 l1hFnmvFjAN8A==
Date: Mon, 5 Feb 2024 09:21:11 +0200
From: Tony Lindgren <tony@atomide.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Thomas Richard <thomas.richard@bootlin.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Haojian Zhuang <haojian.zhuang@linaro.org>,
	Vignesh R <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Janusz Krzysztofik <jmkrzyszt@gmail.com>,
	Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Tom Joseph <tjoseph@cadence.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
	theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com,
	u-kumar1@ti.com
Subject: Re: [PATCH v2 02/15] pinctrl: pinctrl-single: move
 suspend()/resume() callbacks to noirq
Message-ID: <20240205072111.GD5185@atomide.com>
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
 <20240102-j7200-pcie-s2r-v2-2-8e4f7d228ec2@bootlin.com>
 <CACRpkdYBnQ6xh2yNsnvquTOq5r7NeDhot6To9myfuNbonKcgzQ@mail.gmail.com>
 <6hyubhrho6xbki6yxtmqedylc2gpeyj4yu5gtrjrq4nsthcr7g@elfukmqeve2a>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6hyubhrho6xbki6yxtmqedylc2gpeyj4yu5gtrjrq4nsthcr7g@elfukmqeve2a>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_232214_938926_BB964023 
X-CRM114-Status: GOOD (  17.39  )
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

KiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGtlcm5lbC5vcmc+IFsyNDAxMjkgMjI6NDldOgo+IE9u
IFNhdCwgSmFuIDI3LCAyMDI0IGF0IDExOjMxOjExUE0gKzAxMDAsIExpbnVzIFdhbGxlaWogd3Jv
dGU6Cj4gPiBPbiBGcmksIEphbiAyNiwgMjAyNCBhdCAzOjM34oCvUE0gVGhvbWFzIFJpY2hhcmQK
PiA+IDx0aG9tYXMucmljaGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gPiAKPiA+ID4gVGhlIGdv
YWwgaXMgdG8gZXh0ZW5kIHRoZSBhY3RpdmUgcGVyaW9kIG9mIHBpbmN0cmwuCj4gPiA+IFNvbWUg
ZGV2aWNlcyBtYXkgbmVlZCBhY3RpdmUgcGluY3RybCBhZnRlciBzdXNwZW5kKCkgYW5kL29yIGJl
Zm9yZQo+ID4gPiByZXN1bWUoKS4KPiA+ID4gU28gbW92ZSBzdXNwZW5kKCkvcmVzdW1lKCkgdG8g
c3VzcGVuZF9ub2lycSgpL3Jlc3VtZV9ub2lycSgpIGluIG9yZGVyIHRvCj4gPiA+IGhhdmUgYWN0
aXZlIHBpbmN0cmwgdW50aWwgc3VzcGVuZF9ub2lycSgpIChpbmNsdWRlZCksIGFuZCBmcm9tCj4g
PiA+IHJlc3VtZV9ub2lycSgpIChpbmNsdWRlZCkuCj4gPiA+Cj4gPiA+IFRoZSBkZXByZWNhdGVk
IEFQSSBoYXMgYmVlbiByZW1vdmVkIHRvIHVzZSB0aGUgbmV3IG9uZSAoZGV2X3BtX29wcyBzdHJ1
Y3QpLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgUmljaGFyZCA8dGhvbWFzLnJp
Y2hhcmRAYm9vdGxpbi5jb20+Cj4gPiAKPiA+IFJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxs
aW51cy53YWxsZWlqQGxpbmFyby5vcmc+Cj4gPiAKPiA+IERvIHlvdSB3YW50IHRvIG1lcmdlIHRo
aXMgYXMgYSBzZXJpZXMgb3IgaXMgdGhpcyBzb21ldGhpbmcgSQo+ID4gc2hvdWxkIGp1c3QgYXBw
bHk/Cj4gCj4gdGhlcmUgaXMgc3RpbGwgYSBjb21tZW50IGZyb20gbWUgcGVuZGluZy4KCkZZSSBJ
IGdhdmUgdGhpcyBhIGJyaWVmIHRlc3QgYW5kIHRoaW5ncyBzZWVtIHRvIHdvcmsgZmluZSBmb3Ig
bWUuIFNvdW5kcwpsaWtlIHRoZXJlIHdpbGwgYmUgYW5vdGhlciByZXZpc2lvbiB0aG91Z2ggc28g
SSdsbCB0ZXN0IGFnYWluIHRoZW4uCgpSZWdhcmRzLAoKVG9ueQoKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
