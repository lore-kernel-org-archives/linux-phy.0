Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A3E2C61DD3
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 13:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D1XJTgYnFe49hXmLdi3D+yfRCNT6OPNCQggl4JCZows=; b=L52CeEYgYJNcXv
	TqQ0KkOU3PNIeFXKJ6mdrNSx9az6eXVzSReRD/VYCepbglWF6chbtnjQx7fbHJP4ByMXw+xRkRXZ/
	UTAjvVVs+BBkVlk2PwZZ8lC4oFPNx7d0Qk8Aw8Se0Q0xhqA7Ly7kIx0P7OotMxcEVIVOgqfxUZ16j
	cYKyKHo/U2uvcR92MsUoe/q1BoDoMIv7bDxTCUIlw1OEaA+PUxrYUzmicYC0vbWWbipVF8NKEr1Sw
	SXFCBk3dFGNq3Pp/qvWdZipmedW/FutRbq59CeFKblsEjqOSczDSg7FBwn1fB7RPZNV6zc4VqKVOw
	a9ukjWgJ285m1ZnFVbbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx5Z-00000005vXH-3rAx;
	Fri, 28 Aug 2026 13:57:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx5Y-00000005vXA-1ulg
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 13:57:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DE16A601FD;
	Fri, 28 Aug 2026 13:57:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC4391F000E9;
	Fri, 28 Aug 2026 13:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787925467;
	bh=fpe3NSpeBLDRShf4FPTt2aG0rL+0U/WTIihQRdJqMQ8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Yk1jsQKutnYAbOXqF6wtjJb89aCR6N3ga497xieeCsBLi1CAlBMFFvcZYHVrmSnk+
	 vet+Ckkrim/nGRWGDW+229ymJ2VlsjFTCXDPeAGtA/VGq4YOtrNR4XA6FG7ThrWoXS
	 CKkxeX+6aXpwCR+q5aYZqXVnh1Rzp7UqQi3jepD5HoDVriiAxQYmGgenk1E4fqeqsf
	 lBTsTfYqD0c26kCG5I9CifylBLsjMwd/OJVo1UmxP7e9mjAeVy1I8iFO6eyxtS9ciJ
	 E/s7x4B7ZLkpNg8jY4oRL0FSw2iuZFwybaJztkkyJVVhSdi+evPH+g6z0VP7ou6gA5
	 6CpXiHks3fjgA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 06/15] drm/bridge: inno-hdmi: Add .disable platform
 operation
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, olteanv@gmail.com, mfd@lists.linux.dev, lee@kernel.org
In-Reply-To: <20260828-jh7110-clean-send-v2-6-331680c8b9d1@samsung.com>
References: <20260828-jh7110-clean-send-v2-0-331680c8b9d1@samsung.com>
 <CGME20260828134824eucas1p12730831aa4d01856e0c0e6b678c82bdb@eucas1p1.samsung.com>
 <20260828-jh7110-clean-send-v2-6-331680c8b9d1@samsung.com>
Date: Fri, 28 Aug 2026 13:57:46 +0000
Message-Id: <20260828135746.EC4391F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEF0b21pYyBDb250ZXh0
IFZpb2xhdGlvbjogSW52b2tpbmcgc2xlZXBpbmcgZnVuY3Rpb25zIGZyb20gYXRvbWljIGNvbnRl
eHQKLS0KCmNvbW1pdCAyMDAzYzY2NzhjMzY4NGYxOTc0MmNlMTg1MTVhNWQwNWRiMThmYzZjCkF1
dGhvcjogTWljaGFsIFdpbGN6eW5za2kgPG0ud2lsY3p5bnNraUBzYW1zdW5nLmNvbT4KCmRybS9i
cmlkZ2U6IGlubm8taGRtaTogQWRkIC5kaXNhYmxlIHBsYXRmb3JtIG9wZXJhdGlvbgoKVGhpcyBj
b21taXQgYWRkcyBhIG5ldyAuZGlzYWJsZSBwbGF0Zm9ybSBvcGVyYXRpb24gdG8gdGhlIGlubm9f
aGRtaV9wbGF0X29wcwpzdHJ1Y3QuIEl0IGludm9rZXMgdGhpcyBob29rIGF0IHRoZSBiZWdpbm5p
bmcgb2YKaW5ub19oZG1pX2JyaWRnZV9hdG9taWNfZGlzYWJsZSgpIHRvIGFsbG93IHBsYXRmb3Jt
LXNwZWNpZmljIGRyaXZlcnMgdG8KaW1wbGVtZW50IHRoZWlyIG93biBwb3dlciBkb3duIHNlcXVl
bmNlcy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvaW5uby1oZG1pLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lubm8taGRtaS5jCj4gaW5kZXggZWJjNTA5M2YxM2Fj
NC4uOTUyY2M1NWMxMGY3ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lu
bm8taGRtaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbm5vLWhkbWkuYwo+IEBA
IC04ODQsNiArODg0LDEwIEBAIHN0YXRpYyB2b2lkIGlubm9faGRtaV9icmlkZ2VfYXRvbWljX2Rp
c2FibGUoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSwKPiAgCQkJCQkgICAgc3RydWN0IGRybV9h
dG9taWNfY29tbWl0ICpzdGF0ZSkKPiAgewo+ICAJc3RydWN0IGlubm9faGRtaSAqaGRtaSA9IGJy
aWRnZV90b19pbm5vX2hkbWkoYnJpZGdlKTsKPiArCWNvbnN0IHN0cnVjdCBpbm5vX2hkbWlfcGxh
dF9vcHMgKnBsYXRfb3BzID0gaGRtaS0+cGxhdF9kYXRhLT5vcHM7Cj4gKwo+ICsJaWYgKHBsYXRf
b3BzICYmIHBsYXRfb3BzLT5kaXNhYmxlKQo+ICsJCXBsYXRfb3BzLT5kaXNhYmxlKGhkbWktPmRl
dik7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoZSBjb21taXQgbWVzc2FnZSBtZW50aW9ucyB0aGlzIGhv
b2sgYWxsb3dzIHBsYXRmb3JtIGRyaXZlcnMgdG8gaW1wbGVtZW50CnBvd2VyIGRvd24gc2VxdWVu
Y2VzIGJ5IGNhbGxpbmcgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKCkuIFNpbmNlCmlubm9faGRtaV9i
cmlkZ2VfYXRvbWljX2Rpc2FibGUoKSBpcyBjYWxsZWQgZnJvbSB0aGUgYXRvbWljIGNvbW1pdCBw
aXBlbGluZQooZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X3RhaWwoKSksIHdoZXJlIHNsZWVwaW5n
IGlzIHN0cmljdGx5IGZvcmJpZGRlbiwKY2FuIHRoaXMgbGVhZCB0byBhbiBhdG9taWMgY29udGV4
dCB2aW9sYXRpb24/CgpCZWNhdXNlIGNsa19kaXNhYmxlX3VucHJlcGFyZSgpIGFjcXVpcmVzIGEg
bXV0ZXggaW50ZXJuYWxseSwgaXQgaXMgYQpzbGVlcGluZyBmdW5jdGlvbi4gQ2FsbGluZyBpdCBm
cm9tIHRoaXMgcGF0aCBjb3VsZCBjYXVzZSBzeXN0ZW0gaW5zdGFiaWxpdHksCmtlcm5lbCB3YXJu
aW5ncywgb3IgZGVhZGxvY2tzIGR1cmluZyBhIGRpc3BsYXkgbW9kZXNldCwgRFBNUyBzdGF0ZSBj
aGFuZ2UsCm9yIHN5c3RlbSBzdXNwZW5kLgoKPiAgCj4gIAlpbm5vX2hkbWlfc3RhbmRieShoZG1p
KTsKPiAgfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDgyOC1qaDcxMTAtY2xlYW4tc2VuZC12Mi0wLTMzMTY4MGM4YjlkMUBzYW1z
dW5nLmNvbT9wYXJ0PTYKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
