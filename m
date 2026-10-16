Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E46E9CCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 09:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WP+q/oRUKumUyP/cAyQqvSHEE5py3VyURHiMsZlXNlA=; b=m9Fs/zUSI7lfEh
	L+oPB6X//Xq9on/PvoSEZapu45Ndt68gbIY3sDSoROBd2bvQgmSH9vZJaCfbNxTWjDzVVudpgQw2F
	Ja0h4aZdcoofWbeOigOLuOfGG4bgmKYfsfcV6/RFqiwxU721X4XH+hg6WNnLU9Z6PUelzWyF5E4VH
	BxI0bSsmlpHoL9vJr+NPmg390X2+ueNWJDhWwgYjL5Iaavp0kb40k8X7QGlyz+ZgCzGOXfk4AiaIO
	HypPUKk/j8CZdnx6ehne21ad6tDzERwW00x6uRYZzK0psljVH6jR0Wfd22b1lduffnLEBRy+987zM
	DAp3MD8Uni2pv03mmBMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdu9-00000002QjP-2WM3;
	Fri, 16 Oct 2026 09:07:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdu9-00000002QjF-1Re4
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 09:07:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8B60860008;
	Fri, 16 Oct 2026 09:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C75E21F000C4;
	Fri, 16 Oct 2026 09:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792141628;
	bh=nXt0Ffk5ZyKbQZPWHout7lvibtTQy4gqCcXtkg6VLrI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=klzU1Oh7OQsSXczOnKLIr3QyphZ5un5GbMYyWhog8qQ6+Luwxx/AKiIE1mGJUfx3S
	 m3rz4QfcF9yrVjB+CTRqeYjXy2t5rTanm0MUMKv7pocY+ixceyqzlyyrE408nYkLJR
	 kPc3kIiOHhR1owyrvBSv5ONMW3aAOLg9uCf8CCyaFcsQyDNZJ9S4on0Z3YswdVWT0I
	 BC7Mkdj8SNFPe4r2mapTjAW1SvAnHZ9N2RzFmCIRdOFF2kItLP3cQDuk+vWgwzJMAu
	 /iz86x4Cyy/Ko3zKREO4dXGerpAUpbEDX6p6EFnqxXChT7P4QVJf9Y72pHikZXNWK4
	 oCdkwuBQ1uocg==
Message-ID: <sashiko-outbox-174053@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 4/8] phy: rockchip-samsung-dcphy: Name the
 transmitter helpers and ops
To: "Jason Yang" <jason98166@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261016-dcphy-rx-v1-v5-4-e63b49eabe2d@gmail.com>
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-4-e63b49eabe2d@gmail.com>
Date: Fri, 16 Oct 2026 09:07:07 +0000
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBtaXNzaW5n
IFBMTCBkaXNhYmxlIGFuZCByZXNldCBkZWFzc2VydCBvbiB0eF9wb3dlcl9vbiBlcnJvcgotLQoK
Y29tbWl0IDc3OWI1Zjk2ZWYyYWZkM2YxMzFjMzEyM2QwZjNmNDU5NzlmNTY4ZDgKQXV0aG9yOiBK
YXNvbiBZYW5nIDxqYXNvbjk4MTY2QGdtYWlsLmNvbT4KCnBoeTogcm9ja2NoaXAtc2Ftc3VuZy1k
Y3BoeTogTmFtZSB0aGUgdHJhbnNtaXR0ZXIgaGVscGVycyBhbmQgb3BzCgpUaGUgYmxvY2sgaXMg
YSBjb21ibyBQSFk6IGl0IGV4cG9zZXMgYSB0cmFuc21pdHRlciBhbmQgYSByZWNlaXZlciwgYW5k
IGEKbGF0ZXIgY2hhbmdlIHJlZ2lzdGVycyBvbmUgc3RydWN0IHBoeSBmb3IgZWFjaC4gUHJlcGFy
ZSBmb3IgdGhhdC4gR2l2ZQpldmVyeSBoZWxwZXIgdGhhdCBwcm9ncmFtcyB0aGUgbWFzdGVyIGxh
bmVzIGEgdHhfIHByZWZpeCwgYW5kIG1vdmUgdGhlCnBoeSBwb2ludGVyIGFuZCB0aGUgbGFuZSBj
b3VudCwgd2hpY2ggb25seSB0aGUgdHJhbnNtaXR0ZXIgdXNlcywgaW50byBhCnN0cnVjdCBzYW1z
dW5nX21pcGlfcGh5IHRoYXQgdGhlIHJlY2VpdmVyIGNhbiBoYXZlIG9uZSBvZiB0b28uCgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1kY3Bo
eS5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctZGNwaHkuYwo+
IGluZGV4IDE0NzFhMTU2M2QyYTEuLmU0MjkzYzhkMmIyOTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctZGNwaHkuYwo+ICsrKyBiL2RyaXZl
cnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWRjcGh5LmMKClsgLi4uIF0KCj4g
QEAgLTEzMzksMTMgKzEzNDMsMTMgQEAgc3RhdGljIGludCBzYW1zdW5nX21pcGlfZHBoeV9wb3dl
cl9vbihzdHJ1Y3Qgc2Ftc3VuZ19taXBpX2RjcGh5ICpzYW1zdW5nKQo+ICAJCQkgICBJX01VWF9T
RUxfTUFTSywgSV9NVVhfNDAwTVYpOwo+ICAKPiAgCXNhbXN1bmdfbWlwaV9kY3BoeV9wbGxfY29u
ZmlndXJlKHNhbXN1bmcpOwo+IC0Jc2Ftc3VuZ19taXBpX2RwaHlfY2xrX2xhbmVfdGltaW5nX2lu
aXQoc2Ftc3VuZyk7Cj4gLQlzYW1zdW5nX21pcGlfZHBoeV9kYXRhX2xhbmVfdGltaW5nX2luaXQo
c2Ftc3VuZyk7Cj4gKwlzYW1zdW5nX21pcGlfZHBoeV90eF9jbGtfbGFuZV90aW1pbmdfaW5pdChz
YW1zdW5nKTsKPiArCXNhbXN1bmdfbWlwaV9kcGh5X3R4X2RhdGFfbGFuZV90aW1pbmdfaW5pdChz
YW1zdW5nKTsKPiAgCXJldCA9IHNhbXN1bmdfbWlwaV9kY3BoeV9wbGxfZW5hYmxlKHNhbXN1bmcp
Owo+ICAJaWYgKHJldCA8IDApCj4gIAkJcmV0dXJuIHJldDsKCltTZXZlcml0eTogTWVkaXVtXQpJ
ZiBzYW1zdW5nX21pcGlfZGNwaHlfcGxsX2VuYWJsZSgpIHRpbWVzIG91dCwgZG9lcyB0aGlzIGVy
cm9yIHBhdGggcmV0dXJuCmVhcmx5IHdpdGhvdXQgY2xlYXJpbmcgdGhlIFBMTF9FTiBiaXQgb3Ig
ZGVhc3NlcnRpbmcgdGhlIG1fcGh5X3JzdCByZXNldCBsaW5lPwoKV2hlbiBzYW1zdW5nX21pcGlf
ZGNwaHlfcGxsX2VuYWJsZSgpIGZhaWxzLCBpdCByZXR1cm5zIGFuIGVycm9yIGJ1dCB0aGUgUEhZ
IGlzCmxlZnQgd2l0aCB0aGUgUExMX0VOIGJpdCBzZXQgYW5kIG1fcGh5X3JzdCBhc3NlcnRlZC4g
VGhlIFBIWSBmcmFtZXdvcmsgZG9lcyBub3QKY2FsbCBwaHlfcG93ZXJfb2ZmKCkgaWYgcGh5X3Bv
d2VyX29uKCkgZmFpbHMsIHNvIHRoaXMgaGFyZHdhcmUgc3RhdGUgY291bGQgbGVhaywKcG90ZW50
aWFsbHkgcHJldmVudGluZyBzdWNjZXNzZnVsIGxvY2sgb24gZnV0dXJlIHJlbG9jayBhdHRlbXB0
cy4KCj4gIAo+IC0Jc2Ftc3VuZ19taXBpX2RwaHlfbGFuZV9lbmFibGUoc2Ftc3VuZyk7Cj4gKwlz
YW1zdW5nX21pcGlfZHBoeV90eF9sYW5lX2VuYWJsZShzYW1zdW5nKTsKPiAgCj4gIAlyZXNldF9j
b250cm9sX2RlYXNzZXJ0KHNhbXN1bmctPm1fcGh5X3JzdCk7Cj4KCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMTYtZGNwaHktcngt
djEtdjUtMC1lNjNiNDllYWJlMmRAZ21haWwuY29tP3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
