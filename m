Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D5D3C88E7F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NhMX3UvkQLZq9i0KJbeSt0HW0RrqTLrVh2V0/jrBfY=; b=sTTRdzy1iB4yz8
	+aEV7Mc3wGvUg5xezs+CkTM1ucZGSfNM5xUJTBp7CqAHsNIAYlq9R/U8z7WkpTVzmrfSn3G7OnIkc
	sTV0b3Y0XyqocmqWWt2gGl36eLHyYalbnwdxw8aBXeqGdD90jznb60ljYtbg01ooaACe7r2Sud7lW
	H8ota/JFUtk73q9CtPFT9Vv7ll9aKcZrYXuENQehHv2sEz2P4pphJhW26RM4xQ3zw32zZfQMIVi9T
	ARUJ+khYXxN+PRGpJoAmnjDK2zS6ekZQ3X6BfRQEDsgwnT+6hHMg1AEgj5aT2ervDJ2w8YT96SZzE
	dMZkDrlvnlIQZCuzfQkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VKc-00000007GvV-0ZG4;
	Tue, 15 Sep 2026 15:44:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VKY-00000007Gtw-285O
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:44:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EC4E0600D1;
	Tue, 15 Sep 2026 15:44:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95DE91F000FF;
	Tue, 15 Sep 2026 15:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789487061;
	bh=WgCqCrUZSkqdjRCU1o3q/FLPXpvAuImoRHsybLFffg0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CyllVRyVxXF7DxuPZckfjzCPBAB9QayLE187PkFja5TRn0szrz/k7lA0tYtszFOmh
	 DVyFikJWXGgsLb0E3IBxMK6kK/pMkrwIl6Rp3347La2RpONTaoRorC5/sQjeLmyHLN
	 cFrobng9CQE0y7oaTRW4Yq77NSDqeceZlN/scE4HQN8AL8N738tak8hmXPuEYU51V/
	 mUvHUvowYPNlcU9PVECM0TxuHxcp04y2uSOWUI92ADvclAZacFmXQYY8J46jHGASJR
	 xppWyWbtuxPWgREx8LxZmhVNa87UzDs6LqxmMTOXEeSjyk/wJdB0P7gEwt+0YIVZVQ
	 KmCMu9R9VX2Gw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 07/20] drm/bridge: inno-hdmi: Split probe out of bind
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, mfd@lists.linux.dev, linux-clk@vger.kernel.org, vkoul@kernel.org, lee@kernel.org
In-Reply-To: <20260915-jh7110-clean-send-v4-7-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153226eucas1p1d69e9e853b4b5cfb1d42c2c585b57f95@eucas1p1.samsung.com>
 <20260915-jh7110-clean-send-v4-7-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:44:20 +0000
Message-Id: <20260915154420.95DE91F000FF@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHJtL2JyaWRnZTog
aW5uby1oZG1pOiBNZWFuaW5nZnVsIGNvZGUgYW5kIGNvbW1pdCBtZXNzYWdlIG1pc21hdGNoIGZv
ciBpbm5vX2hkbWlfcmVtb3ZlKCkKLSBbTWVkaXVtXSBkcm0vYnJpZGdlOiBpbm5vLWhkbWk6IFRP
Q1RPVSByYWNlIG9uIGhkbWktPmJyaWRnZS5kZXYgbGVhZGluZyB0byBwb3RlbnRpYWwgTlVMTCBw
b2ludGVyIGRlcmVmZXJlbmNlCi0tCgpjb21taXQgNjE5ZDcwYmY3NGY4ZjBlNDk4NDg5ZThhYThh
N2MwYzllNGUyZDNmYgpBdXRob3I6IE1pY2hhbCBXaWxjenluc2tpIDxtLndpbGN6eW5za2lAc2Ft
c3VuZy5jb20+Cgpkcm0vYnJpZGdlOiBpbm5vLWhkbWk6IFNwbGl0IHByb2JlIG91dCBvZiBiaW5k
CgpUaGlzIGNvbW1pdCBzcGxpdHMgdGhlIGJyaWRnZSBzZXR1cCBpbnRvIGEgbmV3IGV4cG9ydGVk
IGlubm9faGRtaV9wcm9iZSgpCmZ1bmN0aW9uIGFuZCByZWR1Y2VzIGlubm9faGRtaV9iaW5kKCkg
dG8gYSB3cmFwcGVyIGFyb3VuZCBpdC4gVGhpcwpkZWNvdXBsaW5nIGFsbG93cyBhIHBsYXRmb3Jt
IGRldmljZSB0byByZWdpc3RlciBpdHMgb3duIGJyaWRnZSB3aXRob3V0CmF0dGFjaGluZyBpdCB0
byB0aGUgRFJNIGVuY29kZXIgaW1tZWRpYXRlbHkuCgo+ICAgICBNb3ZlIHRoZSBzZXR1cCBpbnRv
IGEgbmV3IGV4cG9ydGVkIGlubm9faGRtaV9wcm9iZSgpLCB3aXRoIGEgbWF0Y2hpbmcKPiAgICAg
aW5ub19oZG1pX3JlbW92ZSgpLCBhbmQgcmVkdWNlIGlubm9faGRtaV9iaW5kKCkgdG8gYSB3cmFw
cGVyIGFyb3VuZCBpdC4KCltTZXZlcml0eTogTWVkaXVtXQpJcyB0aGUgY29tbWl0IG1lc3NhZ2Ug
ZGVzY3JpcHRpb24gYWNjdXJhdGUgcmVnYXJkaW5nIHRoZSByZW1vdmFsIGZ1bmN0aW9uPwoKVGhl
IGNvbW1pdCBtZXNzYWdlIGV4cGxpY2l0bHkgY2xhaW1zIHRvIGludHJvZHVjZSBhIG1hdGNoaW5n
Cmlubm9faGRtaV9yZW1vdmUoKSBmdW5jdGlvbiBmb3IgdGVhcmRvd24gYWxvbmdzaWRlIGlubm9f
aGRtaV9wcm9iZSgpLCBidXQKdGhpcyBmdW5jdGlvbiBhcHBlYXJzIHRvIGJlIG1pc3NpbmcgZnJv
bSB0aGUgcGF0Y2guIERvZXMgdGhpcyBicmVhayB0aGUKZXhwZWN0ZWQgQVBJIGNvbnRyYWN0IGRl
c2NyaWJlZCBmb3IgZXh0ZXJuYWwgZGVjb3VwbGVkIGRyaXZlcnM/Cgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lubm8taGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9pbm5vLWhkbWkuYwo+IGluZGV4IGRkMzVmNWE4NzVkM2QuLjg0MGYxYzdiYzIwMjkgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbm5vLWhkbWkuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9icmlkZ2UvaW5uby1oZG1pLmMKPiBAQCAtOTI5LDcgKzkyOSwxNCBAQCBzdGF0
aWMgaXJxcmV0dXJuX3QgaW5ub19oZG1pX2lycShpbnQgaXJxLCB2b2lkICpkZXZfaWQpCj4gIHsK
PiAgCXN0cnVjdCBpbm5vX2hkbWkgKmhkbWkgPSBkZXZfaWQ7Cj4gIAo+IC0JZHJtX2hlbHBlcl9o
cGRfaXJxX2V2ZW50KGhkbWktPmJyaWRnZS5kZXYpOwo+ICsJLyoKPiArCSAqIFRoZSBpbnRlcnJ1
cHQgaXMgcmVxdWVzdGVkIGluIHByb2JlLCBidXQgYnJpZGdlLmRldiBpcyBvbmx5IHNldCBvbmNl
Cj4gKwkgKiB0aGUgRFJNIG1hc3RlciBiaW5kcyBhbmQgYXR0YWNoZXMgdGhlIGJyaWRnZSwgd2hp
Y2ggbWF5IG5ldmVyIGhhcHBlbi4KPiArCSAqIERyb3AgaG90cGx1ZyBldmVudHMgdGhhdCBhcnJp
dmUgYmVmb3JlIHRoZW4gcmF0aGVyIHRoYW4gZGVyZWZlcmVuY2UgYQo+ICsJICogTlVMTCBkcm1f
ZGV2aWNlLgo+ICsJICovCj4gKwlpZiAoaGRtaS0+YnJpZGdlLmRldikKPiArCQlkcm1faGVscGVy
X2hwZF9pcnFfZXZlbnQoaGRtaS0+YnJpZGdlLmRldik7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KQ2Fu
IHRoaXMgbG9ja2xlc3MgY2hlY2sgb2YgaGRtaS0+YnJpZGdlLmRldiBsZWFkIHRvIGEgTlVMTCBw
b2ludGVyCmRlcmVmZXJlbmNlPwoKV2l0aG91dCBSRUFEX09OQ0UoKSwgdGhlIGNvbXBpbGVyIG1p
Z2h0IGRvdWJsZS1mZXRjaCB0aGUgcG9pbnRlci4gSWYgdGhlCnBvaW50ZXIgaXMgY2xlYXJlZCBj
b25jdXJyZW50bHkgKGZvciBleGFtcGxlLCBkdXJpbmcgYSBmYWlsZWQKZHJtX2JyaWRnZV9hdHRh
Y2goKSBvciBhIHRlYXJkb3duIHBhdGgpIGFmdGVyIHRoZSBjaGVjayBidXQgYmVmb3JlIGl0IGlz
CnBhc3NlZCB0byBkcm1faGVscGVyX2hwZF9pcnFfZXZlbnQoKSwgaXQgY291bGQgcmVzdWx0IGlu
IGEgTlVMTCBwb2ludGVyCmRlcmVmZXJlbmNlLgoKQ291bGQgd2UgdXNlIFJFQURfT05DRSgpIGFu
ZCBhIGxvY2FsIHZhcmlhYmxlIHRvIHByZXZlbnQgYSBwb3RlbnRpYWwgcmFjZQpjb25kaXRpb24g
aW4gaW5ub19oZG1pX2lycSgpPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxNS1qaDcxMTAtY2xlYW4tc2VuZC12NC0wLWYwZTRm
ZDZmMmNjOEBzYW1zdW5nLmNvbT9wYXJ0PTcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
