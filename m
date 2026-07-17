Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47C93C44515
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jul 2026 07:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQuhA7Xq0AGCNPSSjdC+Z2nJf1ZoiHcMgqJ7Z7598b0=; b=tVdhRXdHSqQH9Q
	+XK0lqNLofPasacKnCqCrwAsB36KaHwvKBG99pk9G8obSgwjlJrO/eN5XvtLhI2UfTuYyO9Rjdhc2
	5V/UgMPJV6NEst+1OA1wFUAaAOJacbOhsVo9ZTONjiKSS550EGhHwtnfsliAz9SC0diArDvP0P42/
	gxP0gn1DQpWCU+kzFygudkdMPxaWf3c0zxHOCCCS/fgKH49kPRNppyvzV7Jjfetft2qsfWhiY8oEA
	vaY+7jxdAr+RplmE90nmF2lJSFn6G+MLL6vZLAN5hUMlRFvftxtQ0rlbPtPz3l2XU2b6/zeGYYrsg
	bqzKsTNmhm40+4WvAgmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkdA7-00000001U5o-47UD;
	Fri, 17 Jul 2026 07:39:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkdA7-00000001U5a-17oJ
	for linux-phy@lists.infradead.org;
	Fri, 17 Jul 2026 07:39:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F01FA408E0;
	Fri, 17 Jul 2026 07:39:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C45F1F000E9;
	Fri, 17 Jul 2026 07:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784273950;
	bh=RxPnS/iwkFzSgZ3S0p1fqfVZE4MWCv7J9EC/jgWc1/k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=W7jQ2Al9mnSM0ZKeoxchrOap7l35yq+UoNC9VgF+4EPmHBQBvYPL2/nRKmgsJaHeX
	 pnopEl8UlhM8Z+XvJc96jh0vVcXMXZYpyK1Ka5d7OXKMXVIpR1NweZS4xsmLF+VrCX
	 MufdG2cdi1hvbjIl3d9pW/3HDDdtWCx5Zkh7h5vUKuwQhSoFQ0KgcQDXNR0L9ImzrO
	 Nf/dcmxV9d2bngmB6Xwtd4KzCyQYt5ps9L0I3tzqWXFTM+FPKbYubcWeHHqvOxhngP
	 iNJ4xpo7WYbM/ASJ5INJQtp8d+K4ORW5HT3cBm/db8JjeeLNE84LZCaSN/nunChyNS
	 PgEFVCVnSchHw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/5] phy: rockchip: phy-rockchip-typec: Add DRM AUX
 bridge
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260717072323.96-4-kernel@airkyi.com>
References: <20260717072323.96-1-kernel@airkyi.com>
 <20260717072323.96-4-kernel@airkyi.com>
Date: Fri, 17 Jul 2026 07:39:10 +0000
Message-Id: <20260717073910.7C45F1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIERvdWJsZS1mcmVlIGFu
ZCByZWZlcmVuY2UgY291bnQgdW5kZXJmbG93IG9mIHRoZSBgY2hpbGRfbnBgIGRldmljZSB0cmVl
IG5vZGUgcmVmZXJlbmNlIGR1ZSB0byBjb25mbGljdGluZyBvd25lcnNoaXAgd2l0aCBgZHJtX2F1
eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKClgLgotLQoKLS0tIFBhdGNoIFszXTogW1BBVENI
IHYzIDMvNV0gcGh5OiByb2NrY2hpcDogcGh5LXJvY2tjaGlwLXR5cGVjOiBBZGQgRFJNIEFVWCBi
cmlkZ2UgLS0tCmNvbW1pdCA3MTIxYzM4NDc1M2UwOTVkNWEwNDBmMmJkOTMwMjFiN2FlODExMGQ3
CkF1dGhvcjogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgoKcGh5OiBy
b2NrY2hpcDogcGh5LXJvY2tjaGlwLXR5cGVjOiBBZGQgRFJNIEFVWCBicmlkZ2UKICAgIApVc2lu
ZyB0aGUgRFJNX0FVWF9CUklER0UgaGVscGVyIHRvIGNyZWF0ZSB0aGUgdHJhbnNwYXJlbnQgRFJN
IGJyaWRnZQpkZXZpY2UuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtdHlwZWMuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC10eXBl
Yy5jCj4gaW5kZXggZDk3MDFiNjEwNmQ1NS4uNDgwNzBiNTA0MTZlNSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMuYwo+ICsrKyBiL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC10eXBlYy5jCj4gQEAgLTExNjIsMTYgKzExNjMsMjQg
QEAgc3RhdGljIGludCByb2NrY2hpcF90eXBlY19waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPiAgCj4gIAlmb3JfZWFjaF9hdmFpbGFibGVfY2hpbGRfb2Zfbm9kZShucCwg
Y2hpbGRfbnApIHsKPiAgCQlzdHJ1Y3QgcGh5ICpwaHk7Cj4gKwkJcmV0ID0gMDsKPiAgCj4gLQkJ
aWYgKG9mX25vZGVfbmFtZV9lcShjaGlsZF9ucCwgImRwLXBvcnQiKSkKPiArCQlpZiAob2Zfbm9k
ZV9uYW1lX2VxKGNoaWxkX25wLCAiZHAtcG9ydCIpKSB7Cj4gIAkJCXBoeSA9IGRldm1fcGh5X2Ny
ZWF0ZShkZXYsIGNoaWxkX25wLAo+ICAJCQkJCSAgICAgICZyb2NrY2hpcF9kcF9waHlfb3BzKTsK
PiAtCQllbHNlIGlmIChvZl9ub2RlX25hbWVfZXEoY2hpbGRfbnAsICJ1c2IzLXBvcnQiKSkKPiAr
CQkJcmV0ID0gZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKGRldiwgY2hpbGRfbnAp
Owo+ICsJCX0gZWxzZSBpZiAob2Zfbm9kZV9uYW1lX2VxKGNoaWxkX25wLCAidXNiMy1wb3J0Iikp
Cj4gIAkJCXBoeSA9IGRldm1fcGh5X2NyZWF0ZShkZXYsIGNoaWxkX25wLAo+ICAJCQkJCSAgICAg
ICZyb2NrY2hpcF91c2IzX3BoeV9vcHMpOwo+ICAJCWVsc2UKPiAgCQkJY29udGludWU7Cj4gIAo+
ICsJCWlmIChyZXQpIHsKPiArCQkJcG1fcnVudGltZV9kaXNhYmxlKGRldik7Cj4gKwkJCW9mX25v
ZGVfcHV0KGNoaWxkX25wKTsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGNhdXNlIGEgcmVm
ZXJlbmNlIGNvdW50IHVuZGVyZmxvdyBmb3IgdGhlIGNoaWxkX25wIGRldmljZSBub2RlPwoKZHJt
X2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKCkgYXNzaWducyB0aGUgbm9kZSB0byBhbiBh
dXhpbGlhcnkgZGV2aWNlLAphbmQgaXRzIGVycm9yIGFuZCByZWxlYXNlIHBhdGhzIGluIGRybS9i
cmlkZ2UvYXV4LWJyaWRnZS5jIHVuY29uZGl0aW9uYWxseQpjYWxsIG9mX25vZGVfcHV0KCkgdG8g
ZHJvcCB0aGUgcmVmZXJlbmNlLgoKSG93ZXZlciwgdGhlIGZvcl9lYWNoX2F2YWlsYWJsZV9jaGls
ZF9vZl9ub2RlKCkgaXRlcmF0b3Igb3ducyB0aGUgcmVmZXJlbmNlCnRvIGNoaWxkX25wIGR1cmlu
ZyB0aGlzIGxvb3AgaXRlcmF0aW9uLiBQYXNzaW5nIGl0IHRvCmRybV9hdXhfYnJpZGdlX3JlZ2lz
dGVyX2Zyb21fbm9kZSgpIHdpdGhvdXQgYWNxdWlyaW5nIGFuIGFkZGl0aW9uYWwgcmVmZXJlbmNl
CnZpYSBvZl9ub2RlX2dldCgpIGFwcGVhcnMgdG8gaGFuZCBvZmYgYSByZWZlcmVuY2UgdGhlIGJy
aWRnZSBkb2Vzbid0IG93bi4KCklmIGRybV9hdXhfYnJpZGdlX3JlZ2lzdGVyX2Zyb21fbm9kZSgp
IHN1Y2NlZWRzLCB0aGUgbG9vcCBhZHZhbmNlcyBhbmQgZHJvcHMKdGhlIGl0ZXJhdG9yJ3MgcmVm
ZXJlbmNlLCBsZWFkaW5nIHRvIGEgZG91YmxlLXB1dCB3aGVuIHRoZSBicmlkZ2UgaXMKZXZlbnR1
YWxseSByZWxlYXNlZC4KCklmIGRybV9hdXhfYnJpZGdlX3JlZ2lzdGVyX2Zyb21fbm9kZSgpIGZh
aWxzLCBpdCBkcm9wcyB0aGUgcmVmZXJlbmNlCmludGVybmFsbHkuIFRoZSBleHBsaWNpdCBvZl9u
b2RlX3B1dChjaGlsZF9ucCkgaGVyZSBpbiB0aGUgZXJyb3IgYmxvY2sgd291bGQKdGhlbiBjYXVz
ZSBhbiBpbW1lZGlhdGUgZG91YmxlLXB1dC4KCj4gKwkJCXJldHVybiByZXQ7Cj4gKwkJfQoKWyAu
Li4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRj
aHNldC8yMDI2MDcxNzA3MjMyMy45Ni0xLWtlcm5lbEBhaXJreWkuY29tP3BhcnQ9MwoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
