Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88492CD98F2
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 14:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qs5uDyH+IBvS7ojEpJ5lPQnFkHCvm2LDSheLYmvCrU=; b=OFh22yK0CJUH9I
	zg93AXB6ZB9YXsj+Ktpfnz+5gXaoo74/+qCW8XGkEYB/ozUebbDZdkyWyyTZo78ii38zUx0JJ0f3X
	dCPyZqnVARbCeOCJPR0njvr3S07JVxGQ/6VVLvX8h1iZta4k4Y7YzYLDKhDHGIwjCKeV5I5i6pE6q
	hIkEezfWmXZbPVEjFfFuQtfKmzz6mnNldSlLJN9FR+4u2z42z2cSFZVum0Oy+BuzS/QiUn6su8a5N
	xYnO2XP8xB4Gpf6m6sjEKXPFQwJEA+u9uZc/6Bs7h6bs8LYZHMyXwiauRstmEWi8E8TzhSIN6N705
	uZoE4dCknt+0Ts++PCCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc1ls-00000006Ovz-0bOL;
	Tue, 23 Jun 2026 14:06:36 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc1lq-00000006Ovq-0xgC
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 14:06:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 82BF860209;
	Tue, 23 Jun 2026 14:06:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C2281F000E9;
	Tue, 23 Jun 2026 14:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782223593;
	bh=uoxWjM8Fu2CJNEMwDKGIGIHvvAC9u2vPkRefFO92L5E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ob/r4h5KTIrBWfs45dYen7LVJn0vanDow6TxF261qi0/jfn9geiOqt53hYdjkcCDt
	 v9Q20rFPxKx0lGcbuGl+EqmgPIsbafDTl8QYTGXVOh+ArTmN0aQxbs8GLLoLJN7pAk
	 J4YOwofFjxKCwGoYdu+Qt6hKbPRRLblUqm7vU5TTy9b0vah7flxHuCkdX1DQGvGi7P
	 9NJM40oF3osrVVJzet+lzu+0Xwze8TUs8Ja5l0UMNb84ObUvLkfcil+LstOamj2Fa2
	 +wCzelQNF3iPVK8QzS12uhxW3n6tEGl7D25SuOCBbaUaf27WOXe52q55nYpN0um8Qh
	 9g3ltyeFTs/Sw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: samsung: usbdrd: propagate GS101 PIPE3 lock
 failures
To: "Pengpeng Hou" <pengpeng@iscas.ac.cn>
Cc: vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260623135349.42739-1-pengpeng@iscas.ac.cn>
References: <20260623135349.42739-1-pengpeng@iscas.ac.cn>
Date: Tue, 23 Jun 2026 14:06:31 +0000
Message-Id: <20260623140632.3C2281F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBSZXNvdXJjZSBsZWFrIChyZWd1bGF0b3JzIGFuZCBQSFkgaXNvbGF0aW9uIHN0YXRl
KSBpbiBlcnJvciBwYXRoIG9mIGV4eW5vczIyMDBfdXNiZHJkX3BoeV9pbml0LgotLQoKY29tbWl0
IDIwZWFjOTM2MjIzNjc1NDUwYjNlOWU0NTg1NjY2NTMyOTlkMGIwOWIKQXV0aG9yOiBQZW5ncGVu
ZyBIb3UgPHBlbmdwZW5nQGlzY2FzLmFjLmNuPgpTdWJqZWN0OiBwaHk6IHNhbXN1bmc6IHVzYmRy
ZDogcHJvcGFnYXRlIEdTMTAxIFBJUEUzIGxvY2sgZmFpbHVyZXMKClRoaXMgY29tbWl0IHVwZGF0
ZXMgdGhlIFNvQy1zcGVjaWZpYyBwaHlfaW5pdCBob29rcyB0byByZXR1cm4gYW4gaW50ZWdlcgpl
cnJvciBjb2RlIGluc3RlYWQgb2Ygdm9pZC4gVGhpcyBhbGxvd3MgaGVscGVycyB3aXRoIHJlYWwg
ZmFpbHVyZSByZXN1bHRzLApzdWNoIGFzIHRoZSBHUzEwMSBQSVBFMyBQTEwgb3IgQ0RSIGxvY2tz
IGZhaWxpbmcsIHRvIHByb3BhZ2F0ZSB0aG9zZSBlcnJvcnMKdGhyb3VnaCB0aGUgZXhpc3Rpbmcg
UEhZIGluaXRpYWxpemF0aW9uIHBhdGhzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ft
c3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5v
czUtdXNiZHJkLmMKPiBpbmRleCA1YTE4MWNiNDU5N2U5Li41MTNhOGY5YzI1ZTlhIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKPiArKysgYi9k
cml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCgpbIC4uLiBdCgo+IEBAIC0x
NDU4LDExICsxNDcxLDExIEBAIHN0YXRpYyBpbnQgZXh5bm9zMjIwMF91c2JkcmRfcGh5X2luaXQo
c3RydWN0IHBoeSAqcGh5KQo+ICAJZXh5bm9zMjIwMF91c2JkcmRfbGlua19hdHRhY2hfZGV0YWNo
X3BpcGUzX3BoeShpbnN0KTsKPiAgCj4gIAkvKiBVVE1JIG9yIFBJUEUzIHNwZWNpZmljIGluaXQg
Ki8KPiAtCWluc3QtPnBoeV9jZmctPnBoeV9pbml0KHBoeV9kcmQpOwo+ICsJcmV0ID0gaW5zdC0+
cGh5X2NmZy0+cGh5X2luaXQocGh5X2RyZCk7Cj4gIAo+ICAJY2xrX2J1bGtfZGlzYWJsZV91bnBy
ZXBhcmUocGh5X2RyZC0+ZHJ2X2RhdGEtPm5fY2xrcywgcGh5X2RyZC0+Y2xrcyk7Cj4gIAo+IC0J
cmV0dXJuIDA7Cj4gKwlyZXR1cm4gcmV0Owo+ICB9CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMg
YSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCB3aGlsZSByZXZpZXdpbmcgdGhlIGVycm9yIHBhdGgg
dXBkYXRlcyBpbgpleHlub3MyMjAwX3VzYmRyZF9waHlfaW5pdCgpLCBJIG5vdGljZWQgYSBwb3Rl
bnRpYWwgcmVzb3VyY2UgbGVhayBlYXJsaWVyCmluIHRoZSBzYW1lIGZ1bmN0aW9uLgoKSWYgY2xr
X2J1bGtfcHJlcGFyZV9lbmFibGUoKSBmYWlscywgdGhlIGZ1bmN0aW9uIHJldHVybnMgaW1tZWRp
YXRlbHk6CgoJaWYgKGluc3QtPnBoeV9jZmctPmlkID09IEVYWU5PUzVfRFJEUEhZX1VUTUkpIHsK
CQlyZXQgPSByZWd1bGF0b3JfYnVsa19lbmFibGUocGh5X2RyZC0+ZHJ2X2RhdGEtPm5fcmVndWxh
dG9ycywKCQkJCQkgICAgcGh5X2RyZC0+cmVndWxhdG9ycyk7CgkJaWYgKHJldCkgewoJCQkuLi4K
CQkJcmV0dXJuIHJldDsKCQl9Cgl9CgoJZXh5bm9zNV91c2JkcmRfcGh5X2lzb2woaW5zdCwgZmFs
c2UpOwoKCXJldCA9IGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKHBoeV9kcmQtPmRydl9kYXRhLT5u
X2Nsa3MsIHBoeV9kcmQtPmNsa3MpOwoJaWYgKHJldCkKCQlyZXR1cm4gcmV0OwoKRG9lcyB0aGlz
IHNraXAgdGVhcmluZyBkb3duIHRoZSByZWd1bGF0b3JzIChlbmFibGVkIGZvciBFWFlOT1M1X0RS
RFBIWV9VVE1JKQphbmQgbGVhdmUgdGhlIFBIWSB1bi1pc29sYXRlZCwgY29uc2lkZXJpbmcgdGhl
IGdlbmVyaWMgUEhZIGZyYW1ld29yayBkb2VzCm5vdCBjYWxsIC5leGl0KCkgd2hlbiAuaW5pdCgp
IGZhaWxzPwoKV291bGQgaXQgYmUgYXBwcm9wcmlhdGUgdG8gYWRkIGFuIGVycm9yIGxhYmVsIGhl
cmUgdG8gZGlzYWJsZSB0aGUgcmVndWxhdG9ycwphbmQgcmUtYXNzZXJ0IGlzb2xhdGlvbiB2aWEg
ZXh5bm9zNV91c2JkcmRfcGh5X2lzb2woaW5zdCwgdHJ1ZSksIHNpbWlsYXIgdG8KdGhlIGNsZWFu
dXAgcGF0aCByZWNlbnRseSBhZGRlZCBmb3IgZXh5bm9zNV91c2JkcmRfZ3MxMDFfcGh5X2luaXQo
KT8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hz
ZXQvMjAyNjA2MjMxMzUzNDkuNDI3MzktMS1wZW5ncGVuZ0Bpc2Nhcy5hYy5jbj9wYXJ0PTEKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
