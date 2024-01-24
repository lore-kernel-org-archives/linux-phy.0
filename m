Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8AE3C46CD2
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 14:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DQgqKJfag+weBadwrYFljF+0CfQVajSpyKG7jiE1hI=; b=YQsFFfpRZSA/EM
	1oDsGta7f9cy42rl0W9eW94UXXnXE+8tEA3fgTPVFwtR30ujh0Iig3KU+tUZnqUPdkOUnj2c/WzOM
	2dGP1PoQuidxv92my6OKJsOcKBLSYWJx51MQQlSb09YJBAFyMuOdZjK7z/QW1vsO7FTs8jpuEz0La
	76iRT2gnyR1Af+nFZFZeTQP7/fHbte6SWxz9weFQQW1nTmNWzt39anCARMjztcVIUjV2Rz7zktChf
	SlBluUHvH7YaB+5CXWmnEUmArjixALlAQhrpjbefxTzlv4/RP+vkoWMcWCSU6WRcUsm7XHXzyny+P
	oMbvky1Ii0jFvTwJFjYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSdxG-003aYV-0s;
	Wed, 24 Jan 2024 14:10:14 +0000
Received: from relay4-d.mail.gandi.net ([2001:4b98:dc4:8::224])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSdx7-003aTJ-2V;
	Wed, 24 Jan 2024 14:10:07 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2172EE000D;
	Wed, 24 Jan 2024 14:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1706105400;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BVQptg6pNr7/Hd/yjH+uKmnG36EBffMLdBd048tdJ9I=;
	b=LGo7sy9O/BrvsaySKByqO5iuOVvbA23QuQBoQKjSjld/7OxJ68DOdIyHmXoc6Za9y19/cx
	SYJq5ney0FY114kRsjbDJMLDAOJqtnwcE7LzQSxff7DK+1rpme72BZ8tdMxoLQvASEiU3X
	Bqdu+yBpbUgaefIxu/lPTMz5LyOCW7pfnD3AI5qNFjDit4K0ygVr7yqSTtUTywmUbGe93/
	du8qimW3Gc78PalZceT1G0i8OWbWMpRwuEajFsDqog7Qsc+Xl448imyv3IdFIOJCNdmAR1
	s1b/TcjdAWcKm8M2IHdo9GurQtybPkNfjCexpdaXnoikr62v6/WBbwaWZQd5CQ==
Message-ID: <830324ea-7fdb-4769-a1c7-08d59905ca4b@bootlin.com>
Date: Wed, 24 Jan 2024 15:09:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/14] PCI: j721e: add suspend and resume support
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
 <20240102-j7200-pcie-s2r-v1-14-84e55da52400@bootlin.com>
 <CAHp75VfPQz4PWdzFUU_n+R=XohBjyXM0zsjD-bUD2jmb42ds8Q@mail.gmail.com>
 <9cb47f37-bd98-4136-b844-33cf2be593df@bootlin.com>
 <CAHp75Ve30T3t0_vHR7TUVVC_WN23dL_rp1k951Da6Re2DJQezw@mail.gmail.com>
Content-Language: en-US
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <CAHp75Ve30T3t0_vHR7TUVVC_WN23dL_rp1k951Da6Re2DJQezw@mail.gmail.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_061006_120359_56FE9636 
X-CRM114-Status: GOOD (  18.92  )
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

T24gMS8yMi8yNCAyMjozNiwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgo+IE9uIE1vbiwgSmFuIDIy
LCAyMDI0IGF0IDU6MzDigK9QTSBUaG9tYXMgUmljaGFyZAo+IDx0aG9tYXMucmljaGFyZEBib290
bGluLmNvbT4gd3JvdGU6Cj4+IE9uIDEvMTUvMjQgMjE6MTMsIEFuZHkgU2hldmNoZW5rbyB3cm90
ZToKPj4+IE9uIE1vbiwgSmFuIDE1LCAyMDI0IGF0IDY6MTbigK9QTSBUaG9tYXMgUmljaGFyZAo+
Pj4gPHRob21hcy5yaWNoYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPiAKPiAuLi4KPiAKPj4+PiAr
ICAgICAgICAgICAgICAgaWYgKHBjaWUtPnJlc2V0X2dwaW8pCj4+Pgo+Pj4gRHVwLCB3aHk/Cj4+
Cj4+IFRoaXMgcGNpZS0+cmVzZXRfZ3BpbyBjb3JyZXNwb25kcyB0byBQRVJTVCMgb2YgUENJZSBl
bmRwb2ludHMuCj4+IEkgYXNzZXJ0IGl0IGR1cmluZyBzdXNwZW5kLCBiZWNhdXNlIEkgaGF2ZSB0
byBkZWFzc2VydCBpdCAod2l0aCBhIGRlbGF5KQo+PiBkdXJpbmcgcmVzdW1lIHN0YWdlIFsxXS4K
PiAKPiBBaCwgc29ycnkgZm9yIGJlaW5nIHVuY2xlYXIsIEkgbWVhbnQgdGhhdCBncGlvZF9zZXRf
dmFsdWUqKCkgYWxyZWFkeQo+IGhhcyB0aGF0IGNoZWNrLCB5b3UgZG9uJ3QgbmVlZCBpdCBoZXJl
LgoKb2sgdW5kZXJzdG9vZCwgY2hlY2sgaXMgdXNlbGVzcy4KCj4gCj4+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHBjaWUtPnJlc2V0X2dwaW8sIDAp
Owo+IAo+IC4uLgo+IAo+Pj4+ICsgICAgICAgICAgICAgICBpZiAocGNpZS0+cmVzZXRfZ3Bpbykg
ewo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHVzbGVlcF9yYW5nZSgxMDAsIDIwMCk7Cj4+
Pgo+Pj4gZnNsZWVwKCkgPwo+Pj4gQnR3LCB3aHkgaXMgaXQgbmVlZGVkIGhlcmUsIHBlcmhhcHMg
YSBjb21tZW50Pwo+Pgo+PiBUaGUgY29tbWVudCBzaG91bGQgYmUgdGhlIHNhbWUgdGhhbiBpbiB0
aGUgcHJvYmUgWzFdLgo+PiBTaG91bGQgSSBjb3B5IGl0PyBPciBzaG91bGQgSSBqdXN0IGFkZCBh
IHJlZmVyZW5jZSB0byB0aGUgcHJvYmU/Cj4+Cj4+IFsxXQo+PiBodHRwczovL2VsaXhpci5ib290
bGluLmNvbS9saW51eC92Ni44LXJjMS9zb3VyY2UvZHJpdmVycy9wY2kvY29udHJvbGxlci9jYWRl
bmNlL3BjaS1qNzIxZS5jI0w1MzUKPiAKPiBFaXRoZXIgd2F5IHdvcmtzIGZvciBtZS4KPiAKPj4+
PiArICAgICAgICAgICAgICAgICAgICAgICBncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocGNpZS0+
cmVzZXRfZ3BpbywgMSk7Cj4+Pj4gKyAgICAgICAgICAgICAgIH0KPiAKPiAuLi4KPiAKPj4+PiAr
I2RlZmluZSBjZG5zX3BjaWVfdG9fcmMocCkgY29udGFpbmVyX29mKHAsIHN0cnVjdCBjZG5zX3Bj
aWVfcmMsIHBjaWUpCj4+Pgo+Pj4gSXMgY29udGFpbmVyX29mLmggaW5jbHVkZWQgaW4gdGhpcyBm
aWxlPwo+Pgo+PiBsaW51eC9jb250YWluZXJfb2YuaCBpcyBpbmNsdWRlZCBpbiBsaW51eC9rZXJu
ZWwuaC4KPj4gQW5kIGxpbnV4L2tlcm5lbC5oIGlzIGluY2x1ZGVkIGluIHBjaWUtY2FkZW5jZS5o
Cj4+IChodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni44LXJjMS9zb3VyY2UvZHJp
dmVycy9wY2kvY29udHJvbGxlci9jYWRlbmNlL3BjaWUtY2FkZW5jZS5oI0w5KS4KPiAKPiBPa2F5
LCBzbywgdHJ5IHRvIGNsZWFuIHVwIHBjaWUtY2FkZW5jZS5oIHNvIGl0IHdvbid0IHVzZSAicHJv
eHkiIGhlYWRlcnMuCj4gVGhlcmUgaXMgYW4gSVdZVSAoaW5jbHVkZSB3aGF0IHlvdSB1c2UpIHBy
aW5jaXBsZSwgcGxlYXNlIGZvbGxvdyBpdC4KCkluIGZhY3QsIGFzIGNkbnNfcGNpZV90b19yYyBp
cyBvbmx5IHVzZWQgaW4gcGNpLWo3MjFlLmMsIG5vIG5lZWQgdG8gaGF2ZQppdCBpbiBhIGhlYWRl
ciBmaWxlLgpJIHByZWZlciB0byBtb3ZlIGNkbnNfcGNpZV90b19yYyBkZWZpbml0aW9uIGluIHBj
aS1qNzIxZS5jLgpBcyBJIGRvbid0IG1vZGlmeSBwY2llLWNhZGVuY2UuaCwgdGhlIGNsZWFudXAg
dG8gbm90IHVzZSBwcm94eSBoZWFkZXJzCmlzIHNvbWV0aGluZyB0aGF0IGl0IGNhbiBiZSBkb25l
IG91dHNpZGUgdGhpcyBzZXJpZXMuCgotLSAKVGhvbWFzIFJpY2hhcmQsIEJvb3RsaW4KRW1iZWRk
ZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29tCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
