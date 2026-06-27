Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECEE3C43458
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jun 2026 16:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwPFMNCyKvKrkMTggxbZR7GQKjn3Vvq0qui/yLIC6Yc=; b=Fs9KF2OofapOU5
	woKqO3KSwVhUDPH3bSTlqAe0z4bIeRw3kt9jWdSy1Anw5QPFnTugXeiSYIqOmviFhv7Zy44ThFRlk
	zXlLGMzHlWfrQZiwJ0kQLa+IluwmxS9n81LRJ7MsovbgB2zwlrPXhlRwnXcXa4jjrwAkHg8Jb2rwN
	EVfxUxm1jeWXnHD0M2g27OkL9cspC2ZQlcb5aDbT+5NB3QwtdNqqshxAAk3EREo2yJZoV+qd0wqfJ
	rz4OenfSzHuupZPO/I5C8qozJSaNYXUoy5gccisBIXfg3oxsyk+dBMVKwWQyYU9ZAcxL+1uS6qGTi
	kq/6W5DXrP/15fZkIH2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdVUh-0000000Ccoh-2KvP;
	Sat, 27 Jun 2026 16:02:59 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdVUg-0000000Ccoa-0ECn
	for linux-phy@lists.infradead.org;
	Sat, 27 Jun 2026 16:02:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 377E3403E3;
	Sat, 27 Jun 2026 16:02:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B85B31F000E9;
	Sat, 27 Jun 2026 16:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782576177;
	bh=q3hbdmTdpmbJv97vijU2SPB2Ke1XQLsyMrR4lVdqos4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kJsj7ECvzQokvA4nr/upsSEhb6GVCPj6/p3qfxOy7hS6x4Bn9LpF1HhNmgq/Xit1T
	 4KU735TfoyIyGkv1p0KK+HAbXY2bSmh0ohHubzeLaS57ci0XHkoqFYayXxcCyW1zg4
	 pXSnuvvB+Yb9guNF93EUi9Eaktvq3ULl35Gna4R4okCPDzkwgDD8XfNWFYFU4OdO2s
	 cylD+iYZoVgzF45fu/fkKZC97UsACt/XaDnKj9wWBuMo3GnDVmPxNP6a5YiaWFCvfQ
	 GnP7z1xCVp4uHBzDdY/bg4kH4m6+OA7tEHu5A/B3QGIAD68atJHDb/rDIdl3bp2UhH
	 d6iy1tqKKUK3A==
From: sashiko-bot@kernel.org
Subject: Re: [RESEND PATCH 1/3] phy: zynqmp: fix
 L0_TM_DISABLE_SCRAMBLE_ENCODER mask
To: "Radhey Shyam Pandey" <radhey.shyam.pandey@amd.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260627155229.2791113-2-radhey.shyam.pandey@amd.com>
References: <20260627155229.2791113-1-radhey.shyam.pandey@amd.com>
 <20260627155229.2791113-2-radhey.shyam.pandey@amd.com>
Date: Sat, 27 Jun 2026 16:02:56 +0000
Message-Id: <20260627160256.B85B31F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgcmV0dXJuIHZhbHVlIG9mIGNsa19wcmVwYXJlX2VuYWJsZSgpIGlzIG5vdCBj
YXB0dXJlZCwgbGVhZGluZyB0byBhIG1hc2tlZCBlcnJvciBhbmQgcG90ZW50aWFsIGhhcmR3YXJl
IGZhdWx0cy4KLSBbTWVkaXVtXSBNaXNzaW5nIGNsa19kaXNhYmxlX3VucHJlcGFyZSgpIG9uIGVy
cm9yIHBhdGhzIGNhdXNlcyBhIGNsb2NrIHJlZmVyZW5jZSBjb3VudCBsZWFrLgotLQoKY29tbWl0
IGI1NjJlYzIxOWRlMWE3N2VjNDY4YWU3YzQ4YWIwMDExN2RlNmM3ZDEKQXV0aG9yOiBOYXZhIGtp
c2hvcmUgTWFubmUgPG5hdmEua2lzaG9yZS5tYW5uZUBhbWQuY29tPgoKcGh5OiB6eW5xbXA6IGZp
eCBMMF9UTV9ESVNBQkxFX1NDUkFNQkxFX0VOQ09ERVIgbWFzawoKVGhpcyBwYXRjaCBmaXhlcyB0
aGUgTDBfVE1fRElTQUJMRV9TQ1JBTUJMRV9FTkNPREVSIG1hc2sgaW4gdGhlIFp5bnFNUApQSFkg
ZHJpdmVyLiBUaGUgcHJldmlvdXMgbWFzayBpbmNvcnJlY3RseSBpbmNsdWRlZCBhIHJlc2VydmVk
IHJlYWQtb25seQpmaWVsZCwgd2hpY2ggaGFzIG5vdyBiZWVuIGV4Y2x1ZGVkLgoKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkveGlsaW54L3BoeS16eW5xbXAuYyBiL2RyaXZlcnMvcGh5L3hpbGlu
eC9waHktenlucW1wLmMKPiBpbmRleCBmZTZiNDkyNWQxNjYyLi5jMDM3ZDdjMTNkNDg1IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3hpbGlueC9waHktenlucW1wLmMKPiArKysgYi9kcml2ZXJz
L3BoeS94aWxpbngvcGh5LXp5bnFtcC5jCj4gQEAgLTUzLDcgKzUzLDcgQEAKPiAgI2RlZmluZSBM
MF9UTV9ESUdfNgkJCTB4MTA2Ywo+ICAjZGVmaW5lIEwwX1RNX0RJU19ERVNDUkFNQkxFX0RFQ09E
RVIJMHgwZgo+ICAjZGVmaW5lIEwwX1RYX0RJR182MQkJCTB4MDBmNAo+IC0jZGVmaW5lIEwwX1RN
X0RJU0FCTEVfU0NSQU1CTEVfRU5DT0RFUgkweDBmCj4gKyNkZWZpbmUgTDBfVE1fRElTQUJMRV9T
Q1JBTUJMRV9FTkNPREVSCShCSVQoMykgfCBHRU5NQVNLKDEsIDApKQo+ICAKPiAgLyogUExMIFRl
c3QgTW9kZSByZWdpc3RlciBwYXJhbWV0ZXJzICovCj4gICNkZWZpbmUgTDBfVE1fUExMX0RJR18z
NwkJMHgyMDk0CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUs
IGJ1dCBkb2VzIHhwc2d0cl9waHlfaW5pdCgpIGltcHJvcGVybHkgbWFzawplcnJvcnMgaWYgdGhl
IGNsb2NrIGZhaWxzIHRvIGVuYWJsZT8KCmRyaXZlcnMvcGh5L3hpbGlueC9waHktenlucW1wLmM6
eHBzZ3RyX3BoeV9pbml0KCkgewogICAgLi4uCgkvKiBDb25maWd1cmUgYW5kIGVuYWJsZSB0aGUg
Y2xvY2sgd2hlbiBwZXJpcGhlcmFsIHBoeV9pbml0IGNhbGwgKi8KCWlmIChjbGtfcHJlcGFyZV9l
bmFibGUoZ3RyX2Rldi0+Y2xrW2d0cl9waHktPnJlZmNsa10pKQoJCWdvdG8gb3V0OwogICAgLi4u
Cm91dDoKCW11dGV4X3VubG9jaygmZ3RyX2Rldi0+Z3RyX211dGV4KTsKCXJldHVybiByZXQ7Cn0K
ClNpbmNlIHJldCBpcyBpbml0aWFsaXplZCB0byAwIGFuZCB0aGUgZXJyb3IgZnJvbSBjbGtfcHJl
cGFyZV9lbmFibGUoKSBpc24ndAphc3NpZ25lZCB0byBpdCwgdGhpcyBmdW5jdGlvbiB3aWxsIHJl
dHVybiAwIG9uIGZhaWx1cmUuCgpUaGlzIGNvdWxkIGNhdXNlIHRoZSBQSFkgZnJhbWV3b3JrIHRv
IG1pc3Rha2VubHkgYmVsaWV2ZSB0aGUgUEhZIGlzCmluaXRpYWxpemVkLCBwb3RlbnRpYWxseSBs
ZWFkaW5nIHRvIHVuY2xvY2tlZCByZWdpc3RlciBhY2Nlc3NlcyBhbmQgc3lzdGVtCmhhbmdzLgoK
W1NldmVyaXR5OiBNZWRpdW1dClRoaXMgaXMgYWxzbyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0
IGNvdWxkIHRoaXMgcmVzdWx0IGluIGEgY2xvY2sKcmVmZXJlbmNlIGNvdW50IGxlYWsgb24gZXJy
b3IgcGF0aHM/Cgpkcml2ZXJzL3BoeS94aWxpbngvcGh5LXp5bnFtcC5jOnhwc2d0cl9waHlfaW5p
dCgpIHsKICAgIC4uLgoJaWYgKGNsa19wcmVwYXJlX2VuYWJsZShndHJfZGV2LT5jbGtbZ3RyX3Bo
eS0+cmVmY2xrXSkpCgkJZ290byBvdXQ7CgoJLyogU2tpcCBpbml0aWFsaXphdGlvbiBpZiBub3Qg
cmVxdWlyZWQuICovCglpZiAoIXhwc2d0cl9waHlfaW5pdF9yZXF1aXJlZChndHJfcGh5KSkKCQln
b3RvIG91dDsKCglpZiAoZ3RyX2Rldi0+dHhfdGVybV9maXgpIHsKCQlyZXQgPSB4cHNndHJfcGh5
X3R4X3Rlcm1fZml4KGd0cl9waHkpOwoJCWlmIChyZXQgPCAwKQoJCQlnb3RvIG91dDsKICAgIC4u
LgoKSWYgYSBzdWJzZXF1ZW50IHN0ZXAgbGlrZSB4cHNndHJfcGh5X3R4X3Rlcm1fZml4KCkgb3Ig
eHBzZ3RyX2NvbmZpZ3VyZV9wbGwoKQpmYWlscywgdGhlIGZ1bmN0aW9uIGp1bXBzIHRvIG91dCBh
bmQgcmV0dXJucyBhbiBlcnJvciB3aXRob3V0IGNhbGxpbmcKY2xrX2Rpc2FibGVfdW5wcmVwYXJl
KCkuCgpCZWNhdXNlIHRoZSBpbml0aWFsaXphdGlvbiBmYWlsZWQsIHBoeV9leGl0KCkgd2lsbCBu
b3QgYmUgY2FsbGVkIGJ5IHRoZQpmcmFtZXdvcmssIGxlYXZpbmcgdGhlIGNsb2NrIHByZXBhcmVk
IGFuZCBlbmFibGVkIGluZGVmaW5pdGVseS4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MjcxNTUyMjkuMjc5MTExMy0xLXJhZGhl
eS5zaHlhbS5wYW5kZXlAYW1kLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
