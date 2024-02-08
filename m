Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 209ABC48260
	for <linux-phy@archiver.kernel.org>; Thu,  8 Feb 2024 15:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQQqdd8tpOHhDaC/yFFJ57REcOwKawipV1QmGidpglc=; b=LCIsHyJ74hCNih
	pHHa75nuw3HJ+s747M2N7FhwW/6tJ5m+fh9UxczdGwX4AwhZRPbCThs6EeVgQOT7QE2EN0ORW4tcS
	ULbJzvyQo8zhDKrgHGSDqCWwnFUMELlWAd0eXdJhapglcUuJ5ZpqbDa1muszoHiSxve8mCHO0kC+v
	ye278Zs7NYe3Q7GuQ4qg45YZH9r4DgnWhsTmP7q6qPH/tV8CnU1HWVO0sTLj5INq06xDlvHKmezex
	bukRGLgN/yfGL7wVug4UhJVUk5axgIk1taV5WTOZG5qJSO1LTRvtVLg8eaCX9f0uWqepoKJsay0qV
	HXYjr+ril25iFADmnYmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rY6hX-0000000EE8g-3TcO;
	Thu, 08 Feb 2024 15:52:35 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rY6hT-0000000EE6r-1lGa;
	Thu, 08 Feb 2024 15:52:33 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id B13ED1BF20A;
	Thu,  8 Feb 2024 15:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1707407547;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9B0wVUjPxEv2QBY9FiBPeeaEoehsJ57DXumqRBJ/n6U=;
	b=bSe9PK47gxI5Clu47C1OkB0hXrB4/Yfweuei1EH2vhYWYd3laL6W+TiYxCyyvTkw7aMyFY
	2hZMMYKlSvj+uw71BKP+ZjuHyon9VbbyCJMhjpeE3UfPF4Odtm6B8OTTi5Y2XGDKBeWOot
	IvyCXhQZHbTyL9Bdg+Hfq9jc6pB5YXz5+L0iV+bH5as0slbejB4i7wlbPQC73R/5CiRor0
	Nz08kVh+TUDv0mPCpgThMEyPuqx3ZevOHu6WaCgexl1xV6DeGRqQ1vgEg9esdEaKScr7Dl
	DQg3zvx1T8ri0oglXQHSOwSndU/GYFTcHS8QR3AGbEARe5DJAV7bGCZOMjWyjg==
Message-ID: <8228b76f-ce15-4335-8a09-08d0d57974b1@bootlin.com>
Date: Thu, 8 Feb 2024 16:52:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/15] pinctrl: pinctrl-single: move suspend()/resume()
 callbacks to noirq
To: Andi Shyti <andi.shyti@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Haojian Zhuang
 <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Peter Rosin <peda@axentia.se>,
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
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
 <20240102-j7200-pcie-s2r-v2-2-8e4f7d228ec2@bootlin.com>
 <CACRpkdYBnQ6xh2yNsnvquTOq5r7NeDhot6To9myfuNbonKcgzQ@mail.gmail.com>
 <6hyubhrho6xbki6yxtmqedylc2gpeyj4yu5gtrjrq4nsthcr7g@elfukmqeve2a>
Content-Language: en-US
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <6hyubhrho6xbki6yxtmqedylc2gpeyj4yu5gtrjrq4nsthcr7g@elfukmqeve2a>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240208_075231_622868_50A5F4F0 
X-CRM114-Status: GOOD (  11.35  )
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

T24gMS8yOS8yNCAyMzo0OSwgQW5kaSBTaHl0aSB3cm90ZToKPiBIaSBMaW51cywKPiAKPiBPbiBT
YXQsIEphbiAyNywgMjAyNCBhdCAxMTozMToxMVBNICswMTAwLCBMaW51cyBXYWxsZWlqIHdyb3Rl
Ogo+PiBPbiBGcmksIEphbiAyNiwgMjAyNCBhdCAzOjM34oCvUE0gVGhvbWFzIFJpY2hhcmQKPj4g
PHRob21hcy5yaWNoYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPj4KPj4+IFRoZSBnb2FsIGlzIHRv
IGV4dGVuZCB0aGUgYWN0aXZlIHBlcmlvZCBvZiBwaW5jdHJsLgo+Pj4gU29tZSBkZXZpY2VzIG1h
eSBuZWVkIGFjdGl2ZSBwaW5jdHJsIGFmdGVyIHN1c3BlbmQoKSBhbmQvb3IgYmVmb3JlCj4+PiBy
ZXN1bWUoKS4KPj4+IFNvIG1vdmUgc3VzcGVuZCgpL3Jlc3VtZSgpIHRvIHN1c3BlbmRfbm9pcnEo
KS9yZXN1bWVfbm9pcnEoKSBpbiBvcmRlciB0bwo+Pj4gaGF2ZSBhY3RpdmUgcGluY3RybCB1bnRp
bCBzdXNwZW5kX25vaXJxKCkgKGluY2x1ZGVkKSwgYW5kIGZyb20KPj4+IHJlc3VtZV9ub2lycSgp
IChpbmNsdWRlZCkuCj4+Pgo+Pj4gVGhlIGRlcHJlY2F0ZWQgQVBJIGhhcyBiZWVuIHJlbW92ZWQg
dG8gdXNlIHRoZSBuZXcgb25lIChkZXZfcG1fb3BzIHN0cnVjdCkuCj4+Pgo+Pj4gU2lnbmVkLW9m
Zi1ieTogVGhvbWFzIFJpY2hhcmQgPHRob21hcy5yaWNoYXJkQGJvb3RsaW4uY29tPgo+Pgo+PiBS
ZXZpZXdlZC1ieTogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgo+Pgo+
PiBEbyB5b3Ugd2FudCB0byBtZXJnZSB0aGlzIGFzIGEgc2VyaWVzIG9yIGlzIHRoaXMgc29tZXRo
aW5nIEkKPj4gc2hvdWxkIGp1c3QgYXBwbHk/Cj4gCj4gdGhlcmUgaXMgc3RpbGwgYSBjb21tZW50
IGZyb20gbWUgcGVuZGluZy4KCkhpIEFuZGksCgpCYXNlZCBvbiB5b3VyIGNvbW1lbnQsIGZvciB0
aGUgbmV4dCBpdGVyYXRpb24sIEkgd2lsbCBtb3ZlIHRoZSBjbGVhbnVwCmluIGEgZGVkaWNhdGVk
IHBhdGNoLgoKQExpbnVzLCB5b3UgY2FuIGFwcGx5IHBpbmN0cmwgcGF0Y2hlcyBvbmNlIGV2ZXJ5
dGhpbmcgaXMgb2sgZm9yIHlvdS4KClJlZ2FyZHMsCgotLSAKVGhvbWFzIFJpY2hhcmQsIEJvb3Rs
aW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwpodHRwczovL2Jvb3RsaW4u
Y29tCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
