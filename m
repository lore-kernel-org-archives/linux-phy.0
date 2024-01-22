Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9B6EC4725D
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jan 2024 14:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGur3WckeC5lnc204815UCdDpg3dVzaZh7hQ7M62jOU=; b=x5nQ2ccgSplQDs
	QIcaFq3C9Dq1OloN4SyXVspPbHCDx2KzOuhrm/5UQto1QaWGFVX1c1EE79a/8e9L5C9M9jvJjPiAk
	9Jkv2uLDBM1XK/aZzSl/6id54k6TdzEWy7qLrDKRzLQR4EHFYYKcx7fYZysx9oNf2lAb19HHxY6p0
	F+ZsF6c27Fs4J8vVaJPcejeeuL3q6NYu46JFf5hlknWnNx3lvXCVigYjhp0DSEjEP8pQP/e4S/KTv
	1deOQzOPguJJfUzlnXmtSdxGlvoU2IJp0g1eIUJEybogRpDm+stnqyudAb+q/oxVYwkhwOXIuH4UR
	TMStHMcz20JPjKrmSFjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRvHd-00COm7-0g;
	Mon, 22 Jan 2024 14:28:17 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRvHY-00COjv-2q;
	Mon, 22 Jan 2024 14:28:15 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 8BA25C000B;
	Mon, 22 Jan 2024 14:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705933689;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hUHwKKXyN83iQW+8ASCaMDdQ+1ucr+vrFhxoE1hk85s=;
	b=Eo/4/GbP6NNCg+QhObmRPD/F7PbEwojKkEc+ZqeTp2whemggtZ9XGLV0arqYTPmU3zEKBt
	t06b5DM+lTctrEpAzlwuUZEwEx4o7ZXF2rnrTHnCeUzCsmmgMwKVD5Yb/l+kKCYqgrV7Y/
	DqwdaLijb8hL8B2owHwWEVC+o8EDt46F5Yh2ZEFeIhaHmAADA9Qsj/PwoJE2Itqpgq4BFf
	IuEFB24TUpKpyiOnFztQ2Ystc+LWgI+9uA4y9Gw9D6jmnUptRbBGk9dFJytBKFFEncWyrE
	rGIfQqx9CiBFmORwpIlqIjIIVVtky6HM7KhZ3mHcE15YBa/lTTEVG3clfQNkZw==
Message-ID: <27eff12c-6d80-48e3-82b9-3a4aa90ce76c@bootlin.com>
Date: Mon, 22 Jan 2024 15:28:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/14] phy: cadence-torrent: add suspend and resume
 support
Content-Language: en-US
To: Philipp Zabel <p.zabel@pengutronix.de>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Haojian Zhuang
 <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
 <20240102-j7200-pcie-s2r-v1-11-84e55da52400@bootlin.com>
 <cf6440c08b8b7382e6693e18cdd29325aaea9cc9.camel@pengutronix.de>
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <cf6440c08b8b7382e6693e18cdd29325aaea9cc9.camel@pengutronix.de>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_062813_210020_F1125802 
X-CRM114-Status: GOOD (  18.04  )
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

SGVsbG8gUGhpbGlwcCwKCk9uIDEvMTcvMjQgMTY6MTIsIFBoaWxpcHAgWmFiZWwgd3JvdGU6Cj4g
SGkgVGhvbWFzLAo+IAo+IE9uIE1vLCAyMDI0LTAxLTE1IGF0IDE3OjE0ICswMTAwLCBUaG9tYXMg
UmljaGFyZCB3cm90ZToKPj4gQWRkIHN1c3BlbmQgYW5kIHJlc3VtZSBzdXBwb3J0Lgo+PiBUaGUg
YWxyZWFkX2NvbmZpZ3VyZWQgZmxhZyBpcyBjbGVhcmVkIGR1cmluZyBzdXNwZW5kIHN0YWdlIHRv
IGZvcmNlIHRoZQo+PiBwaHkgaW5pdGlhbGl6YXRpb24gZHVyaW5nIHRoZSByZXN1bWUgc3RhZ2Uu
Cj4+Cj4+IEJhc2VkIG9uIHRoZSB3b3JrIG9mIFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9v
dGxpbi5jb20+Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBSaWNoYXJkIDx0aG9tYXMucmlj
aGFyZEBib290bGluLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRl
bmNlLXRvcnJlbnQuYyB8IDU3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4gIDEg
ZmlsZSBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYyBiL2RyaXZlcnMvcGh5L2NhZGVuY2Uv
cGh5LWNhZGVuY2UtdG9ycmVudC5jCj4+IGluZGV4IDcwNDEzZmNhNTc3Ni4uMzFiMjU5NGU1OTQy
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQu
Ywo+PiArKysgYi9kcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYwo+PiBA
QCAtMzAwNiw2ICszMDA2LDYyIEBAIHN0YXRpYyB2b2lkIGNkbnNfdG9ycmVudF9waHlfcmVtb3Zl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gWy4uLl0KPj4gK3N0YXRpYyBpbnQgY2Ru
c190b3JyZW50X3BoeV9yZXN1bWVfbm9pcnEoc3RydWN0IGRldmljZSAqZGV2KQo+PiArewo+PiAr
CXN0cnVjdCBjZG5zX3RvcnJlbnRfcGh5ICpjZG5zX3BoeSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYp
Owo+PiArCWludCBub2RlID0gY2Ruc19waHktPm5zdWJub2RlczsKPj4gKwlpbnQgcmV0LCBpOwo+
PiArCj4+ICsJcmV0ID0gY2Ruc190b3JyZW50X2NsayhjZG5zX3BoeSk7Cj4+ICsJaWYgKHJldCkK
Pj4gKwkJZ290byBjbGtfY2xlYW51cDsKPj4gKwo+PiArCS8qIEVuYWJsZSBBUEIgKi8KPj4gKwly
ZXNldF9jb250cm9sX2RlYXNzZXJ0KGNkbnNfcGh5LT5hcGJfcnN0KTsKPj4gKwo+PiArCWlmIChj
ZG5zX3BoeS0+bnN1Ym5vZGVzID4gMSkgewo+PiArCQlyZXQgPSBjZG5zX3RvcnJlbnRfcGh5X2Nv
bmZpZ3VyZV9tdWx0aWxpbmsoY2Ruc19waHkpOwo+PiArCQlpZiAocmV0KQo+PiArCQkJZ290byBw
dXRfbG5rX3JzdDsKPj4gKwl9Cj4+ICsKPj4gKwlyZXR1cm4gMDsKPj4gKwo+PiArcHV0X2xua19y
c3Q6Cj4+ICsJZm9yIChpID0gMDsgaSA8IG5vZGU7IGkrKykKPj4gKwkJcmVzZXRfY29udHJvbF9w
dXQoY2Ruc19waHktPnBoeXNbaV0ubG5rX3JzdCk7Cj4gCj4gV2hhdCBpcyB0aGlzIGludGVuZGVk
IHRvIGRvPyBJIGV4cGVjdCB0aGlzIHRvIGV4cGxvZGUgaW4gX3JlbW92ZSwgd2hlcmUKPiB0aGXC
oGxua19yc3QgYXJlIHB1dCBhZ2Fpbi4gU2hvdWxkIHRoaXMgYmU6Cj4gCj4gCQlyZXNldF9jb250
cm9sX2Fzc2VydChjZG5zX3BoeS0+cGh5c1tpXS5sbmtfcnN0KTsKPiAKPiA/CgpZZXMgaW5kZWVk
LCBpdCdzIHJlc2V0X2NvbnRyb2xfYXNzZXJ0IGluc3RlYWQgb2YgcmVzZXRfY29udHJvbF9wdXQu
CgpUaGFua3MgZm9yIHRoZSByZXZpZXcuCgpSZWdhcmRzLAoKLS0gClRob21hcyBSaWNoYXJkLCBC
b290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290
bGluLmNvbQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
