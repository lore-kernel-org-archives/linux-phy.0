Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8CD5CA5FB3
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 08:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVNgjmW9MfOSkYApOi2IDVgxTx9LzWkgGmlwXicbHlw=; b=Qc9uZoRATS56Da
	COP9qKod5+STD7ApwgaYTh6Ngo6flAHUkMrr++v/0VWBiNM3BgDMCzxUe3rWHPx9FRVYuRqOKt26d
	3w3egq4SpigWKQBiXt6jlATEXr9b8Eo7CKrqiZ+6DYcil7GGrphmHHPMfsoosUgMIdqBsDD81g+hD
	lxh1oaLgdOFCBOYUThgjaCWOy5+6h0McvGjOWfjtP00cIQ+w0mi+TEq40mSz1nw3WndekU3lP+X/3
	Gn2hHFiGHNMKKNgx2RLp6pli6ZLOop4n7EsxRZ+2lm+hqRMND+pUe0YZZ5cO/0YufXUpr/D6ui/S2
	dBtNq8f1+T2n5jqnJXNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCEt-00000008Ba0-2Swz;
	Thu, 01 Oct 2026 08:34:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCEr-00000008BZV-1XG6
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 08:34:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CC89160A54;
	Thu,  1 Oct 2026 08:34:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B69411F000FF;
	Thu,  1 Oct 2026 08:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790843640;
	bh=5+cdwiD3eCkQyUYa5ri7RsiBtsgtzMxedchp/Eo4UUI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hCQ/5+Js7tHbMFqAC5cI8Dp1jZlusD4ZPNMVzJMK4GPBxCVSe0V8RpaakDzWKz9uC
	 aBvjldaicI35wkRrqlbD1L7AA79K1t39iwA7YOfK6DHhWU8KDKlYPqh6dfqP+DVj0f
	 sPqa4fTFEGNjqQB46S9lNWDt51piT4OnWc8y6f6yA6Cf0BXodCCv+AUA73Rt5yinqC
	 e7LjiARrMAoh16Xg5k5zcfZnz5kANO+/rdTQ16g9BSWY6fYjk1Dw19NaNVwTiKkDfU
	 8IvQRTMmDfXEDHdSgPjA/pH7Fmz+epXlKdckYLrh4AkoJOjOFVgUdjfSqGwmZ9rAKo
	 emoeVgmcEGEdg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 14/24] scsi: ufs: mediatek: Use the common PHY
 framework
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, vkoul@kernel.org, linux-scsi@vger.kernel.org
In-Reply-To: <20261001-mt8196-ufs-v13-14-60854adab6d9@collabora.com>
References: <20261001-mt8196-ufs-v13-0-60854adab6d9@collabora.com>
 <20261001-mt8196-ufs-v13-14-60854adab6d9@collabora.com>
Date: Thu, 01 Oct 2026 08:33:59 +0000
Message-Id: <20261001083359.B69411F000FF@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHVmczogUE0gc3RhdGUg
bWlzbWF0Y2ggb24gUEhZIHBvd2VyIG9mZiBmYWlsdXJlIGluIHN1c3BlbmQKLSBbTWVkaXVtXSB1
ZnM6IE1UQ01PUyBwb3dlciBsZWFrIG9uIFBIWSBwb3dlciBvbiBmYWlsdXJlIGluIHJlc3VtZQot
LQoKY29tbWl0IDk3OTMzMDliNTViODVmYmI1NjMxZTZmNjgxYzBjODRlMmRhMmRkNDIKQXV0aG9y
OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoK
c2NzaTogdWZzOiBtZWRpYXRlazogVXNlIHRoZSBjb21tb24gUEhZIGZyYW1ld29yawoKVGhpcyBj
b21taXQgc3dpdGNoZXMgdGhlIE1lZGlhdGVrIFVGUyBkcml2ZXIgdG8gdXNlIHRoZSBjb21tb24g
UEhZIGZyYW1ld29yawppbnN0ZWFkIG9mIG1hbnVhbGx5IHBhcnNpbmcgdGhlIE9GIHRyZWUgZm9y
IHRoZSBQSFkgbm9kZS4gSXQgdXBkYXRlcyB0aGUKaW5pdGlhbGl6YXRpb24sIHJlc3VtZSwgYW5k
IHN1c3BlbmQgcGF0aHMgdG8gcG93ZXIgdGhlIFBIWSBvbiBhbmQgb2ZmIHVzaW5nCnRoZSBmcmFt
ZXdvcmsncyBBUElzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0
ZWsuYyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKPiBpbmRleCBlNGI0MWRlNGRl
M2EyLi42ZDU2ODdmNWU3NTU4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1l
ZGlhdGVrLmMKPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCgpbIC4uLiBd
Cgo+IEBAIC0yNTAyLDkgKzI0NDcsOCBAQCBzdGF0aWMgaW50IHVmc19tdGtfc3lzdGVtX3Jlc3Vt
ZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gIHN0YXRpYyBpbnQgdWZzX210a19ydW50aW1lX3N1c3Bl
bmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICB7Cj4gIAlzdHJ1Y3QgdWZzX2hiYSAqaGJhID0gZGV2
X2dldF9kcnZkYXRhKGRldik7Cj4gLQlzdHJ1Y3QgdWZzX210a19ob3N0ICpob3N0ID0gdWZzaGNk
X2dldF92YXJpYW50KGhiYSk7Cj4gIAlzdHJ1Y3QgYXJtX3NtY2NjX3JlcyByZXM7Cj4gLQlpbnQg
cmV0ID0gMDsKPiArCWludCByZXQ7Cj4gIAo+ICAJcmV0ID0gdWZzaGNkX3J1bnRpbWVfc3VzcGVu
ZChkZXYpOwo+ICAJaWYgKHJldCkKPiBAQCAtMjUxNSw4ICsyNDU5LDExIEBAIHN0YXRpYyBpbnQg
dWZzX210a19ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICAJaWYgKHVmc19t
dGtfaXNfcnRmZl9tdGNtb3MoaGJhKSkKPiAgCQl1ZnNfbXRrX210Y21vc19jdHJsKGZhbHNlLCBy
ZXMpOwo+ICAKPiAtCWlmIChob3N0LT5waHlfZGV2KQo+IC0JCXBtX3J1bnRpbWVfcHV0X3N5bmMo
aG9zdC0+cGh5X2Rldik7Cj4gKwlyZXQgPSB1ZnNfbXRrX21waHlfcG93ZXJfb24oaGJhLCBmYWxz
ZSk7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8gcG93ZXIgb2Zm
IFBIWTogJXBlXG4iLCBFUlJfUFRSKHJldCkpOwo+ICsJCXJldHVybiByZXQ7CgpbU2V2ZXJpdHk6
IEhpZ2hdCkRvZXMgcmV0dXJuaW5nIHRoZSBlcnJvciBkaXJlY3RseSBoZXJlIGxlYXZlIHRoZSBQ
TSBzdGF0ZSBtaXNtYXRjaGVkPwoKSWYgdWZzX210a19tcGh5X3Bvd2VyX29uKCkgZmFpbHMsIHRo
aXMgcmV0dXJucyBlYXJseSB3aXRob3V0IHJvbGxpbmcgYmFjayB0aGUKYWxyZWFkeSBzdXNwZW5k
ZWQgVUZTIGhhcmR3YXJlIChzdXNwZW5kZWQgdmlhIHVmc2hjZF9ydW50aW1lX3N1c3BlbmQoKQpl
YXJsaWVyIGluIHRoaXMgZnVuY3Rpb24pLgoKVGhlIFBNIGNvcmUgbWF5IG1hcmsgdGhlIGRldmlj
ZSBhcyBSUE1fQUNUSVZFIGJlY2F1c2UgdGhlIGNhbGxiYWNrIGZhaWxlZCwKZGVzcGl0ZSB0aGUg
aGFyZHdhcmUgcGh5c2ljYWxseSBiZWluZyBzdXNwZW5kZWQuIENvdWxkIHRoaXMgY2F1c2Ugc3Vi
c2VxdWVudApJL08gdG8gYXNzdW1lIHRoZSBkZXZpY2UgaXMgYWN0aXZlIGFuZCBoYW5nPwoKPiAr
CX0KPiAgCj4gIAlyZXR1cm4gMDsKPiAgfQo+IEBAIC0yNTI0LDE0ICsyNDcxLDE3IEBAIHN0YXRp
YyBpbnQgdWZzX210a19ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ICBzdGF0
aWMgaW50IHVmc19tdGtfcnVudGltZV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ICB7Cj4g
IAlzdHJ1Y3QgdWZzX2hiYSAqaGJhID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gLQlzdHJ1Y3Qg
dWZzX210a19ob3N0ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7Cj4gIAlzdHJ1Y3Qg
YXJtX3NtY2NjX3JlcyByZXM7Cj4gKwlpbnQgcmV0Owo+ICAKPiAgCWlmICh1ZnNfbXRrX2lzX3J0
ZmZfbXRjbW9zKGhiYSkpCj4gIAkJdWZzX210a19tdGNtb3NfY3RybCh0cnVlLCByZXMpOwo+ICAK
PiAtCWlmIChob3N0LT5waHlfZGV2KQo+IC0JCXBtX3J1bnRpbWVfZ2V0X3N5bmMoaG9zdC0+cGh5
X2Rldik7Cj4gKwlyZXQgPSB1ZnNfbXRrX21waHlfcG93ZXJfb24oaGJhLCB0cnVlKTsKPiArCWlm
IChyZXQpIHsKPiArCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBwb3dlciBvbiBQSFk6ICVwZVxu
IiwgRVJSX1BUUihyZXQpKTsKPiArCQlyZXR1cm4gcmV0OwoKW1NldmVyaXR5OiBNZWRpdW1dCkNh
biB0aGlzIGxlYWsgdGhlIE1UQ01PUyBwb3dlciBzdGF0ZSBpZiB1ZnNfbXRrX21waHlfcG93ZXJf
b24oKSBmYWlscz8KCklmIHVmc19tdGtfbXBoeV9wb3dlcl9vbigpIGZhaWxzLCB0aGUgZnVuY3Rp
b24gcmV0dXJucyBlYXJseSB3aXRob3V0IHJvbGxpbmcKYmFjayB0aGUgTVRDTU9TIHBvd2VyIHN0
YXRlIHRoYXQgd2FzIGp1c3QgZW5hYmxlZCB2aWEKdWZzX210a19tdGNtb3NfY3RybCh0cnVlLCBy
ZXMpLgoKRG9lcyB0aGlzIGxlYXZlIHRoZSBNVENNT1MgZG9tYWluIHBvd2VyZWQgb24gaW5kZWZp
bml0ZWx5IGFmdGVyIGEgZmFpbGVkCnJlc3VtZSBhdHRlbXB0PwoKPiArCX0KPiAgCj4gIAl1ZnNf
bXRrX2Rldl92cmVnX3NldF9scG0oaGJhLCBmYWxzZSk7Cj4KCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMDEtbXQ4MTk2LXVmcy12
MTMtMC02MDg1NGFkYWI2ZDlAY29sbGFib3JhLmNvbT9wYXJ0PTE0CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
