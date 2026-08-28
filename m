Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8485DC61DB9
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 09:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enskp72hfEoZRECGNuKgpMes8jALFmojzh16OyIbfos=; b=bM3xHC2W8UkNUC
	E4R7jCIyoZGKlE0+oilD2fq1tUG+1QH1X2lZHLUUGY0yP/Eq67dHRr8EB/+m49WJnEGTz9jEkQWZ/
	SNyDd5EZBq9Xln7R92ie0R+JUWREuHQyhxLUPIjIlg9nHthlrV3rzaTg7CqWZX6gJgR0wUlr3iNW3
	a8x6pNf6JkZP9pzk3KdA36ZXqDHi2GPuflJoGLXFMt+XRD2ijeBQmKVg/1JLX4goRkn632Z9DWNZa
	c50TIzI2hDVvNwRonMLEuDonrvq+IdHnn/oEoAuODhUD9cB6noTsAsz3pHvWpTvJeitVMsE9UCzmS
	LnhiE2JYHbJoLXq8YRLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsSk-00000005OhL-0umh;
	Fri, 28 Aug 2026 09:01:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsSj-00000005Oh8-00IS
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 09:01:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 59000601F5;
	Fri, 28 Aug 2026 09:01:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F35D1F00A3D;
	Fri, 28 Aug 2026 09:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787907684;
	bh=XbE359DwSELqfI3yT2dHdzl46VZ+IXaA7Gqd++mBeZ0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=P6oxDYde0QltU65ihNuPH9lwEb2AiAknJnbb37RPO3oyCi/k0MmB1KpkUYqUD68a2
	 ogiN7mvjeSl2x9AfeLHVZoS9WSj1m6J34aqsPbBDSxz4ghVwBfVKVenMjM+OgA5Ogt
	 PUQskm6eXsMLTH5DFQHtyFKyqp9QAg3THDTVDE9Omyje0ypCmxJ1LlJUUUK80+Sb5j
	 +IoubVcZNP1r1ulz44A3Gs5f1Mju0iTWRx0UJGVpOgQd5LCdnNacqIpwAkeC0hgA1H
	 Lxo71qiYinNPM6cxAdQHfzU74fz1wR5/gUYTg8laGg2YOYNVRcyTH+R4SAwXBACCnr
	 MpJ3+7wdHGk4Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 5/7] phy: rockchip: phy-rockchip-typec: Add DRM AUX
 bridge
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260828084737.565-6-kernel@airkyi.com>
References: <20260828084737.565-1-kernel@airkyi.com>
 <20260828084737.565-6-kernel@airkyi.com>
Date: Fri, 28 Aug 2026 09:01:22 +0000
Message-Id: <20260828090123.5F35D1F00A3D@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIERvdWJsZS1mcmVlIGFu
ZCBVc2UtQWZ0ZXItRnJlZSBvZiBPRiBOb2RlIFJlZmVyZW5jZQotIFtNZWRpdW1dIEluaXRpYWxp
emF0aW9uIE9yZGVyaW5nIGFuZCBFcnJvciBNYXNraW5nCi0tCgpjb21taXQgMDczM2ZhYjk4NzQz
MzAwYzliY2EzOWEwODNmMWE5MDFkNGZmOGNkYQpBdXRob3I6IENoYW95aSBDaGVuIDxjaGFveWku
Y2hlbkByb2NrLWNoaXBzLmNvbT4KCnBoeTogcm9ja2NoaXA6IHBoeS1yb2NrY2hpcC10eXBlYzog
QWRkIERSTSBBVVggYnJpZGdlCgpVc2luZyB0aGUgRFJNX0FVWF9CUklER0UgaGVscGVyIHRvIGNy
ZWF0ZSB0aGUgdHJhbnNwYXJlbnQgRFJNIGJyaWRnZSBkZXZpY2UuCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMuYyBiL2RyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC10eXBlYy5jCj4gaW5kZXggZDk3MDFiNjEwNmQ1NS4uNDgwNzBi
NTA0MTZlNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
dHlwZWMuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC10eXBlYy5j
ClsgLi4uIF0KPiBAQCAtMTE2MiwxNiArMTE2MywyNCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3R5
cGVjX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAKPiAgCWZvcl9l
YWNoX2F2YWlsYWJsZV9jaGlsZF9vZl9ub2RlKG5wLCBjaGlsZF9ucCkgewo+ICAJCXN0cnVjdCBw
aHkgKnBoeTsKPiArCQlyZXQgPSAwOwo+ICAKPiAtCQlpZiAob2Zfbm9kZV9uYW1lX2VxKGNoaWxk
X25wLCAiZHAtcG9ydCIpKQo+ICsJCWlmIChvZl9ub2RlX25hbWVfZXEoY2hpbGRfbnAsICJkcC1w
b3J0IikpIHsKPiAgCQkJcGh5ID0gZGV2bV9waHlfY3JlYXRlKGRldiwgY2hpbGRfbnAsCj4gIAkJ
CQkJICAgICAgJnJvY2tjaGlwX2RwX3BoeV9vcHMpOwo+IC0JCWVsc2UgaWYgKG9mX25vZGVfbmFt
ZV9lcShjaGlsZF9ucCwgInVzYjMtcG9ydCIpKQo+ICsJCQlyZXQgPSBkcm1fYXV4X2JyaWRnZV9y
ZWdpc3Rlcl9mcm9tX25vZGUoZGV2LCBjaGlsZF9ucCk7CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMg
dGhpcyBjb2RlIGNhdXNlIGEgZG91YmxlLWZyZWUgb2YgdGhlIE9GIG5vZGUgcmVmZXJlbmNlPwoK
U2luY2UgY2hpbGRfbnAgaXMgdGhlIGxvb3AgaXRlcmF0b3IgaW4gZm9yX2VhY2hfYXZhaWxhYmxl
X2NoaWxkX29mX25vZGUoKSwKaXRzIHJlZmVyZW5jZSBpcyBhdXRvbWF0aWNhbGx5IGRyb3BwZWQg
d2hlbiBhZHZhbmNpbmcgdG8gdGhlIG5leHQgaXRlcmF0aW9uLgpIb3dldmVyLCBkcm1fYXV4X2Jy
aWRnZV9yZWdpc3Rlcl9mcm9tX25vZGUoKSBhc3NpZ25zIHRoZSBPRiBub2RlIHRvIHRoZQphdXhp
bGlhcnkgZGV2aWNlIHdpdGhvdXQgaW5jcmVtZW50aW5nIHRoZSByZWZlcmVuY2UgY291bnQsIGFu
ZCBkcm9wcyBhCnJlZmVyZW5jZSBpbiBpdHMgZXJyb3IgcGF0aHMgYW5kIHJlbGVhc2UgZnVuY3Rp
b24uIAoKV2lsbCB0aGlzIGxlYWQgdG8gYSB1c2UtYWZ0ZXItZnJlZSB3aGVuIHRoZSBsb29wIGl0
ZXJhdG9yIGF1dG9tYXRpY2FsbHkgZHJvcHMKdGhlIHJlZmVyZW5jZSwgbGVhdmluZyB0aGUgcmVn
aXN0ZXJlZCBicmlkZ2UgcG9pbnRpbmcgdG8gYSBmcmVlZCBkZXZpY2Ugbm9kZT8KCltTZXZlcml0
eTogTWVkaXVtXQpBbHNvLCBkb2VzIHRoaXMgc2VxdWVuY2UgbWFzayBlcnJvcnMgZnJvbSBkZXZt
X3BoeV9jcmVhdGUoKT8KClRoZSByZXN1bHQgb2YgZGV2bV9waHlfY3JlYXRlKCkgaXMgbm90IGNo
ZWNrZWQgYmVmb3JlIGNhbGxpbmcKZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKCku
IElmIGRldm1fcGh5X2NyZWF0ZSgpIHJldHVybnMgYW4gZXJyb3IKcG9pbnRlciAoc3VjaCBhcyAt
RVBST0JFX0RFRkVSKSBhbmQgZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKCkKZmFp
bHMsIHRoZSBvcmlnaW5hbCBlcnJvciB3aWxsIGJlIHBlcm1hbmVudGx5IGxvc3Qgd2hlbiByZXR1
cm5pbmcgJ3JldCcKYmVsb3cuCgpBZGRpdGlvbmFsbHksIGlmIGRldm1fcGh5X2NyZWF0ZSgpIGZh
aWxzIGJ1dCBicmlkZ2UgcmVnaXN0cmF0aW9uIHN1Y2NlZWRzLAphbiBhdXhpbGlhcnkgZGV2aWNl
IGlzIHJlZ2lzdGVyZWQgb25seSB0byBiZSBpbW1lZGlhdGVseSB1bnJlZ2lzdGVyZWQgdmlhCmRl
dnJlcyB3aGVuIHJldHVybmluZyBQVFJfRVJSKHBoeSkgc2hvcnRseSBhZnRlci4gQ291bGQgdGhp
cyBiZSBhdm9pZGVkCmJ5IGNoZWNraW5nIElTX0VSUihwaHkpIGJlZm9yZSByZWdpc3RlcmluZyB0
aGUgYnJpZGdlPwoKPiArCQl9IGVsc2UgaWYgKG9mX25vZGVfbmFtZV9lcShjaGlsZF9ucCwgInVz
YjMtcG9ydCIpKQo+ICAJCQlwaHkgPSBkZXZtX3BoeV9jcmVhdGUoZGV2LCBjaGlsZF9ucCwKPiAg
CQkJCQkgICAgICAmcm9ja2NoaXBfdXNiM19waHlfb3BzKTsKPiAgCQllbHNlCj4gIAkJCWNvbnRp
bnVlOwo+ICAKPiArCQlpZiAocmV0KSB7Cj4gKwkJCXBtX3J1bnRpbWVfZGlzYWJsZShkZXYpOwo+
ICsJCQlvZl9ub2RlX3B1dChjaGlsZF9ucCk7CgpbU2V2ZXJpdHk6IEhpZ2hdClNpbmNlIGRybV9h
dXhfYnJpZGdlX3JlZ2lzdGVyX2Zyb21fbm9kZSgpIGFscmVhZHkgZHJvcHBlZCB0aGUgT0Ygbm9k
ZQpyZWZlcmVuY2Ugb24gaXRzIGludGVybmFsIGZhaWx1cmUgcGF0aCwgd2lsbCBjYWxsaW5nIG9m
X25vZGVfcHV0KCkgaGVyZQpjYXVzZSBhbiBpbW1lZGlhdGUgZG91YmxlLWZyZWU/Cgo+ICsJCQly
ZXR1cm4gcmV0Owo+ICsJCX0KPiArCj4gIAkJaWYgKElTX0VSUihwaHkpKSB7Cj4gIAkJCWRldl9l
cnIoZGV2LCAiZmFpbGVkIHRvIGNyZWF0ZSBwaHk6ICVwT0ZuXG4iLAo+ICAJCQkJY2hpbGRfbnAp
OwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDgyODA4NDczNy41NjUtMS1rZXJuZWxAYWlya3lpLmNvbT9wYXJ0PTUKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
