Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8C92C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 14:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9iiqPXrS94Y0Ld1m7PRptaJuaXs2nI8/VnSUeGvwOw=; b=LwNE5YmkeIGJ2i
	iVvpEmEwoGY5X+yj+BW80/Ups8mVNQLn4Yr8t0353d/X3fBcUkUQoB6bIuaMwdgTjPdKW0wEQxH6O
	S130a/n8fO0LWS8eE7mTx6jfM1pnh4Lt44QN02X6eBDVg7k1gr67EiNT0yKTqYX9v6MpJxijeNAn5
	NiXOEuG36BbLqPzjKCBLH+0c8t8INJHVioR89vKvjWQIB3dpxSZ7203elc5kC0+9t0Bv+8xp1IhSF
	kEfJMsxoA/4RXw/SKhtASSKN49bBO+YvYdxDO7uEMWpY6292U8+lYFmRaMB4pABCrtTY2aZFuIIbv
	38ngaIq8p4Zjvrvfa6XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6sA-0000000FBZb-1tqi;
	Tue, 07 Jul 2026 14:34:06 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6s9-0000000FBZM-1oPF
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 14:34:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B867060018;
	Tue,  7 Jul 2026 14:34:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA05D1F000E9;
	Tue,  7 Jul 2026 14:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783434844;
	bh=qPPLFALCz8NXXZOTdxsis98fvVnKcnAHTN9imvn7xk4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PCS4s/rTRQ+a8cNa8Nteawau5Lr+JrTiaM6VmA88+sza4mEnr1QJGnfYGiHoQvNWr
	 LU51Brvxvoh9zmgdQw+SU7m+PRVfHAn4EuSsTzZ6FEHwtO055ujhN3wM1F3cNgKEx7
	 8ZLN12/KQlG+2+gS4RJNAulBn+WWOPXUHK6icBi3QLlOzCX8mXqaDzDFKpXuKhsOKo
	 moxUNqBitsqJYgEn63nmVCwJf8DRLXWq/kqOlnxti1pEbY+sj1crb/PIVN041vhhgd
	 MeCjXrUWx4sKIthh4n3NpgnYkuieJP2EfWTIh0mBys/dqPPCyN7tR7KVi5fRBD0ron
	 dyBGlB5B4IKKQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 06/12] phy: phy-mtk-dp: Support set_lanes in
 configure and properly cleanup
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260707141931.191172-7-angelogioacchino.delregno@collabora.com>
References: <20260707141931.191172-1-angelogioacchino.delregno@collabora.com>
 <20260707141931.191172-7-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 14:34:03 +0000
Message-Id: <20260707143403.EA05D1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgTlVMTCBj
aGVjayBvbiBkZXZpY2VfZ2V0X21hdGNoX2RhdGEoKSByZXN1bHQgbGVhZHMgdG8gcG90ZW50aWFs
IE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZS4KLSBbTG93XSBVbmRlY2xhcmVkIHZhcmlhYmxlICdy
ZXQnIGNhdXNlcyBhIGJ1aWxkIGZhaWx1cmUuCi0tCgotLS0gUGF0Y2ggWzZdOiBbUEFUQ0ggdjIg
MDYvMTJdIHBoeTogcGh5LW10ay1kcDogU3VwcG9ydCBzZXRfbGFuZXMgaW4gY29uZmlndXJlIGFu
ZCBwcm9wZXJseSBjbGVhbnVwIC0tLQpjb21taXQgNTY0ZmM5YjE3OWMwNTEzYzlhZDIzZDM2ODlh
YWYwYzgyMTFjNjFjMwpBdXRob3I6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9n
aW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+CgpwaHk6IHBoeS1tdGstZHA6IFN1cHBv
cnQgc2V0X2xhbmVzIGluIGNvbmZpZ3VyZSBhbmQgcHJvcGVybHkgY2xlYW51cAoKQWRkIHN1cHBv
cnQgZm9yIGVuYWJsaW5nIGEgc3BlY2lmaWNhbGx5IHJlcXVlc3RlZCBudW1iZXIgb2YgbGFuZXMK
aW4gdGhlIC5jb25maWd1cmUoKSBjYWxsYmFjayBhbmQgZGlzYWJsZSBhbGwgbGFuZXMgaW4gcG93
ZXIgb2ZmCmFuZCByZXNldCBjYWxsYmFja3MgZm9yIHByb3BlciBoYXJkd2FyZSBjbGVhbnVwLgoK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1kcC5jIGIvZHJpdmVy
cy9waHkvbWVkaWF0ZWsvcGh5LW10ay1kcC5jCj4gLS0tIGEvZHJpdmVycy9waHkvbWVkaWF0ZWsv
cGh5LW10ay1kcC5jCj4gKysrIGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1kcC5jCgpb
IC4uLiBdCgo+ICtzdGF0aWMgaW50IG10a19kcF9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPiArewo+ICsJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiAr
CXN0cnVjdCBwaHlfcHJvdmlkZXIgKnByb3ZpZGVyOwo+ICsJc3RydWN0IG10a19kcF9waHkgKmRw
X3BoeTsKPiArCXZvaWQgX19pb21lbSAqYmFzZTsKPiArCXN0cnVjdCBwaHkgKnBoeTsKPiArCj4g
KwlkcF9waHkgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKmRwX3BoeSksIEdGUF9LRVJORUwp
Owo+ICsJaWYgKCFkcF9waHkpCj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4gKwo+ICsJZHBfcGh5LT5k
ZXYgPSBkZXY7Cj4gKwo+ICsJLyogSWYgdGhlcmUncyBubyBkZXZpY2V0cmVlLCBnbyBmb3IgbGVn
YWN5IHBkZXYgcHJvYmUgKi8KPiArCWlmICghZGV2LT5vZl9ub2RlKQo+ICsJCXJldHVybiBtdGtf
ZHBfcGh5X2xlZ2FjeV9wcm9iZShwZGV2LCBkcF9waHkpOwo+ICsKPiArCWJhc2UgPSBkZXZtX3Bs
YXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UocGRldiwgMCk7Cj4gKwlpZiAoSVNfRVJSKGJhc2UpKQo+
ICsJCXJldHVybiBQVFJfRVJSKGJhc2UpOwo+ICsKPiArCWRwX3BoeS0+cmVnbWFwID0gZGV2bV9y
ZWdtYXBfaW5pdF9tbWlvKGRldiwgYmFzZSwgJm10a19kcF9waHlfcmVnbWFwX2NmZyk7Cj4gKwlp
ZiAoSVNfRVJSKGRwX3BoeS0+cmVnbWFwKSkKPiArCQlyZXR1cm4gUFRSX0VSUihkcF9waHktPnJl
Z21hcCk7Cj4gKwo+ICsJZHBfcGh5LT5wZGF0YSA9IGRldmljZV9nZXRfbWF0Y2hfZGF0YShkZXYp
Owo+ICsKPiArCXBoeSA9IGRldm1fcGh5X2NyZWF0ZShkZXYsIE5VTEwsICZtdGtfZHBfcGh5X2Rl
dl9vcHMpOwoKW1NldmVyaXR5OiBIaWdoXQpDYW4gZHBfcGh5LT5wZGF0YSBiZSBOVUxMIGhlcmUg
aWYgdGhlIGRyaXZlciBpcyBib3VuZCBtYW51YWxseT8KCklmIGEgdXNlciB3cml0ZXMgdGhlIGRy
aXZlciBuYW1lIHRvICdkcml2ZXJfb3ZlcnJpZGUnIGluIHN5c2ZzIGZvciBhbgp1bnJlbGF0ZWQg
cGxhdGZvcm0gZGV2aWNlLCBkZXZpY2VfZ2V0X21hdGNoX2RhdGEoKSB3aWxsIHJldHVybiBOVUxM
IHNpbmNlCnRoZSBjb21wYXRpYmxlIHN0cmluZyB3b24ndCBtYXRjaC4KClRoZSBwcm9iZSB3aWxs
IHN1Y2NlZWQsIGJ1dCBzdWJzZXF1ZW50IFBIWSBmcmFtZXdvcmsgY2FsbHMgdG8gLmluaXQgb3IK
LmNvbmZpZ3VyZSB3aWxsIHVuY29uZGl0aW9uYWxseSBkZXJlZmVyZW5jZSBkcF9waHktPnBkYXRh
LCB3aGljaCBjb3VsZCBsZWFkCnRvIGEga2VybmVsIHBhbmljLgoKV291bGQgaXQgYmUgc2FmZXIg
dG8gdmVyaWZ5IHRoZSByZXN1bHQgb2YgZGV2aWNlX2dldF9tYXRjaF9kYXRhKCkgYmVmb3JlCnBy
b2NlZWRpbmc/Cgo+ICsJaWYgKElTX0VSUihwaHkpKQo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2Jl
KGRldiwgUFRSX0VSUihwaHkpLAo+ICsJCQkJICAgICAiRmFpbGVkIHRvIGNyZWF0ZSBEUCBQSFlc
biIpOwo+ICsKPiArCXBoeV9zZXRfZHJ2ZGF0YShwaHksIGRwX3BoeSk7Cj4gKwo+ICsJcHJvdmlk
ZXIgPSBkZXZtX29mX3BoeV9wcm92aWRlcl9yZWdpc3RlcihkZXYsIG9mX3BoeV9zaW1wbGVfeGxh
dGUpOwo+ICsJaWYgKElTX0VSUihwcm92aWRlcikpCj4gKwkJcmV0dXJuIFBUUl9FUlIocHJvdmlk
ZXIpOwo+ICsKPiArCXJldCA9IGRldm1fcG1fcnVudGltZV9lbmFibGUoZGV2KTsKCltTZXZlcml0
eTogTG93XQpJcyB0aGUgdmFyaWFibGUgJ3JldCcgbWlzc2luZyBhIGRlY2xhcmF0aW9uIGluIHRo
aXMgZnVuY3Rpb24/CgpJdCBhcHBlYXJzICdyZXQnIGlzIGFzc2lnbmVkIGFuZCBjaGVja2VkIGhl
cmUsIGJ1dCBpdCB3YXNuJ3QgZGVjbGFyZWQgaW4KdGhlIHZhcmlhYmxlIGJsb2NrIGF0IHRoZSBz
dGFydCBvZiBtdGtfZHBfcGh5X3Byb2JlKCksIHdoaWNoIHdpbGwgY2F1c2UgYQpidWlsZCBmYWls
dXJlLgoKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiArCj4gKwlyZXR1cm4gMDsKPiAr
fQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDcwNzE0MTkzMS4xOTExNzItMS1hbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxh
Ym9yYS5jb20/cGFydD02CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
