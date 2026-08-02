Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3BB6C55174
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 20:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GoOzTlN6yPrUB0LMdqpJTmW8RFw5QGFo3Ds3JdBOiTQ=; b=UlkbI0YxPccWWc
	19LFBIbTDcNm3+jgeeGylV7YA1c0bLREUXJ/lrJehCD4VA9LJmFQ960XBcPN5diOtvq9qAphODUmI
	VIfJ/L8orcJSEIPMuRDSS5wQ15dQ63DRUYAscUIX+lqt27GSuzU5jSUKvGbOz0+yvLHryROcbw91B
	oJHwrCu/Dek5n1ZAcRMcC1f0W44NGayMCyS3o4zyb9qgYqQrQgaHHC+MxIj/po6BV49MFf67H2DSF
	EWPkr19qhlP1g0AjT/LFiPO4u5P5ce9s2upnA0aTr2DsTVLoNqqHSPIn6YMMXbcGS6JxXUaT/DHZG
	l+ROjEBmwBi6ifwEXGJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqd82-0000000G3CC-2K5A;
	Sun, 02 Aug 2026 20:49:50 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqd80-0000000G3Bu-32LP
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 20:49:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1D0DA600FF;
	Sun,  2 Aug 2026 20:49:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 442E41F000E9;
	Sun,  2 Aug 2026 20:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785703787;
	bh=WUH9MSJOOosyMvV3xlQjw9fjUnK1TOQByKO3MzHfpRs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=P+WoHi1J0/XBVDlfGfIcGNVL2Jfd6knBX4aQIUM6hYjYXJFAuD/rtIZRgp/C6q/iC
	 eD9qRtuljW9FovX0owsjb/984VR1tE4VDgIOScXIA7+y+LWBmSz6v1JZAE3roUKHJa
	 3HFLKzzGPYLANiROtrYMFjAvI0PwF2N3yBDY3xMwit274km45W4BlqfiSLVkHAR7Rm
	 c4C9dXChWgnkIRZg931f2Lbs+dju32VGMfCiPnU8qcbJZY6wpKRZVIJIDe/LklSqMO
	 pYCfR13zB/akDw9572Zg7cvdUaYcpJnWOipGYOt644w+5+k7hooZa1iBwSzCj0YCmG
	 1G4/RjltdReWw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 05/12] clk: zte: Add Clock registration
 infrastructure
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: olteanv@gmail.com, lee@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, robh@kernel.org, mfd@lists.linux.dev
In-Reply-To: <20260802-zx29clk-v9-5-d05530d85d28@gmail.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-5-d05530d85d28@gmail.com>
Date: Sun, 02 Aug 2026 20:49:46 +0000
Message-Id: <20260802204947.442E41F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gSW5jb21wbGV0ZSBy
ZWZhY3RvcmluZyBvZiBjbG9jayBleHBvcnRzIGNhdXNpbmcgbWlzc2luZyBjb25zdCwgZGVhZCBj
b2RlLCBhbmQgdW5zYWZlIGFsaWFzaW5nIGZvciBzcGFyc2UgRFQgSURzCi0tCgotLS0gUGF0Y2gg
WzVdOiBbUEFUQ0ggdjkgMDUvMTJdIGNsazogenRlOiBBZGQgQ2xvY2sgcmVnaXN0cmF0aW9uIGlu
ZnJhc3RydWN0dXJlIC0tLQpjb21taXQgYzA5NWJjOTFmODRkYTQ0YzY1OWJiZjg0ODJhOGY5ZTBk
OGU2Zjk3NwpBdXRob3I6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5j
b20+CgpjbGs6IHp0ZTogQWRkIENsb2NrIHJlZ2lzdHJhdGlvbiBpbmZyYXN0cnVjdHVyZQoKVGhp
cyBjb21taXQgaW50cm9kdWNlcyB0aGUgY29tbW9uIGNsb2NrIHJlZ2lzdHJhdGlvbiBpbmZyYXN0
cnVjdHVyZSBmb3IgWlRFClNvQ3MuIEl0IGltcGxlbWVudHMgY2xvY2sgdmFsaWRhdGlvbiwgaW5p
dGlhbGl6YXRpb24sIGFuZCBNRkQgY2hpbGQKaW50ZWdyYXRpb24uCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2Nsay96dGUvY2xrLXp4LmMgYi9kcml2ZXJzL2Nsay96dGUvY2xrLXp4LmMKPiAtLS0g
L2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9jbGsvenRlL2Nsay16eC5jClsgLi4uIF0KPiArCWV4
cG9ydHMgPSBkZXZtX2t6YWxsb2MoZGV2LCBzdHJ1Y3Rfc2l6ZShleHBvcnRzLCBod3MsIGRhdGEt
Pm51bV9leHBvcnRzKSwgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIWV4cG9ydHMpCj4gKwkJcmV0dXJu
IC1FTk9NRU07Cj4gKwlleHBvcnRzLT5udW0gPSBkYXRhLT5udW1fZXhwb3J0czsKPiArCj4gKwlm
b3IgKGkgPSAwOyBpIDwgZGF0YS0+bnVtX2V4cG9ydHM7ICsraSkgewo+ICsJCWlmIChkYXRhLT5l
eHBvcnRzW2ldID49IGRhdGEtPm51bV9jbG9ja3MpCj4gKwkJCXJldHVybiBkZXZfZXJyX3Byb2Jl
KGRldiwgLUVJTlZBTCwKPiArCQkJCQkgICAgICJFeHBvcnQgJXUgcG9pbnRzIHRvIG91dCBvZiBy
YW5nZSBjbG9jayAldVxuIiwKPiArCQkJCQkgICAgIGksIGRhdGEtPmV4cG9ydHNbaV0pOwo+ICsK
PiArCQlleHBvcnRzLT5od3NbaV0gPSBjbG9ja3NbZGF0YS0+ZXhwb3J0c1tpXV07CgpbU2V2ZXJp
dHk6IE1lZGl1bV0KSWYgdGhlIERUIGJpbmRpbmcgSURzIGFyZSBzcGFyc2UsIHdvbid0IHRoZSBn
YXBzIGluIHRoZSBzdGF0aWMgZXhwb3J0cyBhcnJheQpkZWZhdWx0IHRvIDA/IFRoaXMgd291bGQg
Y2F1c2UgdGhlIHVuaW5pdGlhbGl6ZWQgZ2FwcyB0byBpbXByb3Blcmx5IGFsaWFzIHRvCnRoZSBm
aXJzdCBpbnRlcm5hbCBjbG9jayAoY2xvY2tzWzBdKSBpbnN0ZWFkIG9mIHJldHVybmluZyBhbiBl
cnJvciB3aGVuCmNvbnN1bWVyIGRyaXZlcnMgcmVxdWVzdCBhbiB1bnVzZWQgY2xvY2sgSUQuCgo+
ICsJfQo+ICsKPiArCWRldm1fa2ZyZWUoZGV2LCBjbG9ja3MpOwo+ICsKPiArCXJldHVybiBkZXZt
X29mX2Nsa19hZGRfaHdfcHJvdmlkZXIoZGV2LCBvZl9jbGtfaHdfb25lY2VsbF9nZXQsIGV4cG9y
dHMpOwo+ICt9ClsgLi4uIF0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvenRlL2Nsay16eC5o
IGIvZHJpdmVycy9jbGsvenRlL2Nsay16eC5oCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZl
cnMvY2xrL3p0ZS9jbGstenguaApbIC4uLiBdCj4gK3N0cnVjdCBjbGtfaHcgKnp4X2Nsa19yZWdp
c3Rlcl9nYXRlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHJlZ21hcCAqcmVnbWFwLAo+ICsJ
CQkJICAgIGNvbnN0IHN0cnVjdCB6eF9nYXRlX2Rlc2MgKmRlc2MsCj4gKwkJCQkgICAgc3RydWN0
IGNsa19odyAqIGNvbnN0ICpjbG9ja3MpOwo+ICsKPiArc3RydWN0IHp4X2Nsa19leHBvcnQgewo+
ICsJdW5zaWduZWQgaW50IHByaXY7Cj4gKwl1bnNpZ25lZCBpbnQgYmluZGluZzsKPiArfTsKCltT
ZXZlcml0eTogTWVkaXVtXQpJcyBzdHJ1Y3QgenhfY2xrX2V4cG9ydCBzdGlsbCBuZWVkZWQ/IEl0
IGFwcGVhcnMgdG8gYmUgdW51c2VkIGRlYWQgY29kZSwKcGVyaGFwcyBsZWZ0IG92ZXIgZnJvbSBh
biBlYXJsaWVyIGl0ZXJhdGlvbiBvZiB0aGUgY2xvY2sgZXhwb3J0cyByZWZhY3RvcmluZy4KCj4g
Kwo+ICtzdHJ1Y3QgenhfY2xrX2RhdGEgewo+ICsJaW50ICgqaW5pdCkoc3RydWN0IHJlZ21hcCAq
bWFwKTsKPiArCWNvbnN0IHN0cnVjdCB6eF9jbG9jayAqY2xvY2tzOwo+ICsJdW5zaWduZWQgaW50
IG51bV9jbG9ja3M7Cj4gKwl1bnNpZ25lZCBpbnQgKmV4cG9ydHM7CgpbU2V2ZXJpdHk6IE1lZGl1
bV0KQ291bGQgdGhlIGV4cG9ydHMgYXJyYXkgcG9pbnRlciBiZSBtYXJrZWQgYXMgY29uc3Q/IFdp
dGhvdXQgdGhlIGNvbnN0CnF1YWxpZmllciwgaXQgcHJldmVudHMgdGhlIHN0YXRpYyBjbG9jayBk
YXRhIGZyb20gYmVpbmcgcGxhY2VkIGluIC5yb2RhdGEuCgo+ICsJdW5zaWduZWQgaW50IG51bV9l
eHBvcnRzOwo+ICt9Owo+ICsKPiAraW50IHp4X2Nsa19jb21tb25fcHJvYmUoc3RydWN0IGRldmlj
ZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm9mX25vZGUsCj4gKwkJCWNvbnN0IHN0cnVjdCB6
eF9jbGtfZGF0YSAqZGF0YSk7Cj4gKwo+ICsjZW5kaWYgLyogX19EUlZfQ0xLX1pYX0ggKi8KCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjA4MDItengyOWNsay12OS0wLWQwNTUzMGQ4NWQyOEBnbWFpbC5jb20/cGFydD01CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
