Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F937C54FCD
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 01:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=881ATmWZx6ZOVI/q6HljD5ltVHRgGyFktrk2LPVgv2I=; b=4KoMaKQf3cmN9h
	UnNsevpIQNhWl3MO/hwsC2SZvlN4Akxn2Z8S2Y6TVvXDCnZTTL0Lp0yRQeWIW7FdMdfx/rojKtboh
	JRlHTywmH2fnmfLuHaNJ/gI56b6ixWconh6kbMJ6vcWcq/7fLDs+8mm0fQ13LohvLdcBVEfQ1B6s2
	aC+hqLOKbEwvOYetAvhH9EkGFt1hVTbvKxJeZKiwIpKBZhNX/8cdXCD1My3kOfwAwoWEHV0nlC0a+
	/HbX8cWoIpkHXJRXdVcK3WCX3UChz7isxRIujc83xB/vgykXCGeouMSnyGdpoeewGH9mIMveuDIH2
	feAHXhQPNUTbgLezn6Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpFsI-00000009I6n-38va;
	Thu, 30 Jul 2026 01:47:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpFsH-00000009I6T-0F42
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 01:47:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 826DE600AA;
	Thu, 30 Jul 2026 01:47:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5B111F00A3A;
	Thu, 30 Jul 2026 01:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785376072;
	bh=N7Yvn9+reA8QYVlCW6lFEthvljrGfTEQ0DYcSNmBmdY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JRj2t/7lbLGEMN2qc72nOJLLkyvhaeDUj0Gle+b4cL7lXImFPz86aapiJL5IwTJGN
	 N2+ByMRbsb48nukkVady/1h2E1ffl8Z+S0z5Hs8BXDvAeKUqV1DivaK2Q5QOtF7LZH
	 IKFYnGSWwZuMNFwbbscqOf2yr5b38isWPu41V6ZyOpHKVu1d4Ah78f2+FylzelRkuL
	 aFPH3h0AhfddxwzLE0jhwQIXMIvt6Pp4wBfykAFT0Y2+h/qDnmicNT4UDNxqd8dSTy
	 0qifAfxDiyGI8+EMKHjSmty8bS8B11tVksR9h3LdNz8U1SRlF7tovzIhJntGafyRxV
	 zK+UNCNkjz+vw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 4/6] phy: rockchip: phy-rockchip-typec: Add DRM AUX
 bridge
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260730013349.51-5-kernel@airkyi.com>
References: <20260730013349.51-1-kernel@airkyi.com>
 <20260730013349.51-5-kernel@airkyi.com>
Date: Thu, 30 Jul 2026 01:47:51 +0000
Message-Id: <20260730014751.D5B111F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIERvdWJsZS1mcmVlIG9m
IE9GIG5vZGUgcmVmZXJlbmNlIHJlc3VsdGluZyBmcm9tIGJvcnJvd2VkIG5vZGUgYXNzaWdubWVu
dAotIFtNZWRpdW1dIEltcHJvcGVyIEVycm9yIEhhbmRsaW5nOiBVbmNvbmRpdGlvbmFsIGV4ZWN1
dGlvbiBvZiBicmlkZ2UgcmVnaXN0cmF0aW9uIHNoYWRvd3MgUEhZIGNyZWF0aW9uIGVycm9ycwot
LQoKLS0tIFBhdGNoIFs0XTogW1BBVENIIHY1IDQvNl0gcGh5OiByb2NrY2hpcDogcGh5LXJvY2tj
aGlwLXR5cGVjOiBBZGQgRFJNIEFVWCBicmlkZ2UgLS0tCmNvbW1pdCBjMjZjYjNjNWQwMTJkYzYz
ODI3MjQ4NGU2NzJkY2FkOTU1ZDRhNDU1CkF1dGhvcjogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVu
QHJvY2stY2hpcHMuY29tPgoKcGh5OiByb2NrY2hpcDogcGh5LXJvY2tjaGlwLXR5cGVjOiBBZGQg
RFJNIEFVWCBicmlkZ2UKICAgIApVc2luZyB0aGUgRFJNX0FVWF9CUklER0UgaGVscGVyIHRvIGNy
ZWF0ZSB0aGUgdHJhbnNwYXJlbnQgRFJNIGJyaWRnZQpkZXZpY2UuCgo+IGRpZmYgLS1naXQgYS9k
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
ZWdpc3Rlcl9mcm9tX25vZGUoZGV2LCBjaGlsZF9ucCk7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KSWYg
ZGV2bV9waHlfY3JlYXRlKCkgZmFpbHMgYW5kIHJldHVybnMgYW4gZXJyb3IgcG9pbnRlciwgdGhl
IGNvZGUgc3RpbGwKdW5jb25kaXRpb25hbGx5IGNhbGxzIGRybV9hdXhfYnJpZGdlX3JlZ2lzdGVy
X2Zyb21fbm9kZSgpLgoKSWYgdGhlIGJyaWRnZSByZWdpc3RyYXRpb24gZmFpbHMsIGl0cyBlcnJv
ciBjb2RlIHdpbGwgYmUgc3RvcmVkIGluIHJldAphbmQgcmV0dXJuZWQgYmVsb3csIHdoaWNoIGNv
bXBsZXRlbHkgc2hhZG93cyB0aGUgb3JpZ2luYWwgZXJyb3IgZnJvbQpkZXZtX3BoeV9jcmVhdGUo
KSAoc3VjaCBhcyAtRVBST0JFX0RFRkVSKS4KClNob3VsZCBkZXZtX3BoeV9jcmVhdGUoKSdzIHJl
dHVybiB2YWx1ZSBiZSBjaGVja2VkIGJlZm9yZSBhdHRlbXB0aW5nIHRvCnJlZ2lzdGVyIHRoZSBi
cmlkZ2U/CgoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY2F1c2UgYSBkb3VibGUtZnJlZSBv
ZiB0aGUgY2hpbGRfbnAgbm9kZSByZWZlcmVuY2U/CgpUaGUgZm9yX2VhY2hfYXZhaWxhYmxlX2No
aWxkX29mX25vZGUoKSBsb29wIGF1dG9tYXRpY2FsbHkgaG9sZHMgYSByZWZlcmVuY2UKdG8gY2hp
bGRfbnAuIFdoZW4gY2hpbGRfbnAgaXMgcGFzc2VkIHRvIGRybV9hdXhfYnJpZGdlX3JlZ2lzdGVy
X2Zyb21fbm9kZSgpLAp0aGUgYnJpZGdlIHRha2VzIG93bmVyc2hpcCBvZiB0aGUgbm9kZSByZWZl
cmVuY2Ugd2l0aG91dCB0aGUgY2FsbGVyIGFjcXVpcmluZwphbiBhZGRpdGlvbmFsIHJlZmVyZW5j
ZSB2aWEgb2Zfbm9kZV9nZXQoKS4KCklmIHJlZ2lzdHJhdGlvbiBzdWNjZWVkcywgdGhlIGJyaWRn
ZSB3aWxsIGV2ZW50dWFsbHkgY2FsbCBvZl9ub2RlX3B1dCgpIGluCml0cyBkcm1fYXV4X2JyaWRn
ZV9yZWxlYXNlKCkgaGFuZGxlci4gTWVhbndoaWxlLCB0aGUgaXRlcmF0b3IgbG9vcCBhbHNvCmF1
dG9tYXRpY2FsbHkgY2FsbHMgb2Zfbm9kZV9wdXQoKSB3aGVuIGFkdmFuY2luZyB0byB0aGUgbmV4
dCBub2RlLCBsZWFkaW5nCnRvIGEgZG91YmxlLWZyZWUgb24gdGhlIHN1Y2Nlc3MgcGF0aC4KCj4g
KwkJfSBlbHNlIGlmIChvZl9ub2RlX25hbWVfZXEoY2hpbGRfbnAsICJ1c2IzLXBvcnQiKSkKPiAg
CQkJcGh5ID0gZGV2bV9waHlfY3JlYXRlKGRldiwgY2hpbGRfbnAsCj4gIAkJCQkJICAgICAgJnJv
Y2tjaGlwX3VzYjNfcGh5X29wcyk7Cj4gIAkJZWxzZQo+ICAJCQljb250aW51ZTsKPiAgCj4gKwkJ
aWYgKHJldCkgewo+ICsJCQlwbV9ydW50aW1lX2Rpc2FibGUoZGV2KTsKPiArCQkJb2Zfbm9kZV9w
dXQoY2hpbGRfbnApOwo+ICsJCQlyZXR1cm4gcmV0Owo+ICsJCX0KCltTZXZlcml0eTogSGlnaF0K
SWYgZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKCkgZmFpbHMsIGl0IGNhbGxzIG9m
X25vZGVfcHV0KCkKaW50ZXJuYWxseS4gQmVjYXVzZSB0aGlzIGVycm9yIHBhdGggZXhwbGljaXRs
eSBjYWxscyBvZl9ub2RlX3B1dChjaGlsZF9ucCkKYWdhaW4sIHdvdWxkIHRoaXMgcmVzdWx0IGlu
IGFuIGltbWVkaWF0ZSBkb3VibGUtZnJlZT8KCldvdWxkIGl0IGJlIGJldHRlciB0byBjYWxsIG9m
X25vZGVfZ2V0KGNoaWxkX25wKSBiZWZvcmUgcGFzc2luZyBpdCB0bwpkcm1fYXV4X2JyaWRnZV9y
ZWdpc3Rlcl9mcm9tX25vZGUoKSB0byBlbnN1cmUgdGhlIGJyaWRnZSBoYXMgaXRzIG93bgpyZWZl
cmVuY2U/Cgo+ICAJCWlmIChJU19FUlIocGh5KSkgewo+ICAJCQlkZXZfZXJyKGRldiwgImZhaWxl
ZCB0byBjcmVhdGUgcGh5OiAlcE9GblxuIiwKPiAgCQkJCWNoaWxkX25wKTsKCi0tIApTYXNoaWtv
IEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MzAwMTMz
NDkuNTEtMS1rZXJuZWxAYWlya3lpLmNvbT9wYXJ0PTQKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
