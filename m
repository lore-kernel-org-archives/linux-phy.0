Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A43ACC55184
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 15:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0BJQg+63grZ7lCDpQ1ZHOauXuEKCImzlms5cqnxBodY=; b=Wb9gh/u9fBWCZQ
	DXnyjmTXuPSb7H41nPfGa4Q5HENBXwuHfa8pg6ZO3EPAuqwnIR8wfnO2wXgJdWAR3+WfdDHvufJIN
	oX1tXBTtVFm3iF5tbwnAQZGO73Wrrq5VJM0sZH+L3unDK3am9k9bX/MLSCxZteBSaml/DxOiegQip
	tLJMazIKAyhfUOgJ9emFW/JYRev1SnaRjDs9MsBkc6LjKW4y+i6GPi7CVZDppgTsNZpoS5KipZlBt
	5YeD40Yd6wgTN5H1TSCpZq8c0Cpoo8irFBC9IFeOWjQsB9lRRUw4WnKLqdnEPXDCGa7pzmANxLqEA
	/Vf4NOwpvegpeKWec7Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrHDQ-00000002EMY-1V7Z;
	Tue, 04 Aug 2026 15:38:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrHDO-00000002EM8-35wL
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 15:38:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 411594333F;
	Tue,  4 Aug 2026 15:38:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EB0D1F000E9;
	Tue,  4 Aug 2026 15:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785857882;
	bh=IGcf7g9cQFhRMEer6vUVYNyP0uqutWguSCmA2EaUSF8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VyDAwDFQu3lou+58RkG2vaCL+efyMMNB9qGJKcoeLBn37efE1oO3riGE7AmbRe0XM
	 UK/TRPuTCduWMtjCAWMRqRe/Oz0lw2kVFxgBXIXRz4gS7YjecAYyPdck8sE1pi077i
	 1h7lLZWzb0DVlto78sYZWKwZktJeMKvjoaBcRHM6K55no+bwYc3Lfy2LCWticxPmqY
	 XAuZmBXbFIReGkbfynWFLCHHv23N88CYnU4lWK14wCzGBEm2oOHYFAYDrEIkB8Qqe7
	 /AyEEjmDdSPTxikeL2z8a+BFkIDp+xryuw+3/NHz/STnJvnmCYqhErwObceg4RPOsW
	 CzjJQkttBr9rA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] phy: renesas: rcar-gen2: Fix double of_node_put
 on phy creation failure
To: "Felix Gu" <ustc.gu@gmail.com>
Cc: neil.armstrong@linaro.org, wsa+renesas@sang-engineering.com, linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org
In-Reply-To: <20260804-rcar-gen2-v2-1-829cb84112ca@gmail.com>
References: <20260804-rcar-gen2-v2-0-829cb84112ca@gmail.com>
 <20260804-rcar-gen2-v2-1-829cb84112ca@gmail.com>
Date: Tue, 04 Aug 2026 15:38:00 +0000
Message-Id: <20260804153801.3EB0D1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBNaXNzaW5nIHJlZmVyZW5jZSBjb3VudCBpbmNyZW1lbnQgZm9yIGRldmljZSBub2Rl
IGxlYWRzIHRvIGEgZGFuZ2xpbmcgcG9pbnRlci4KLSBbSGlnaF0gVE9DVE9VIHJhY2UgY29uZGl0
aW9uIGJldHdlZW4gY2hpbGQgY291bnQgYW5kIGl0ZXJhdGlvbiBsZWFkcyB0byBvdXQtb2YtYm91
bmRzIGFycmF5IHdyaXRlLgotLQoKLS0tIFBhdGNoIFsxXTogW1BBVENIIHYyIDEvM10gcGh5OiBy
ZW5lc2FzOiByY2FyLWdlbjI6IEZpeCBkb3VibGUgb2Zfbm9kZV9wdXQgb24gcGh5IGNyZWF0aW9u
IGZhaWx1cmUgLS0tCmNvbW1pdCAwNDc3NDUyNjVjN2I2MWRhNDQ5NDk3NTJlY2MyNzdiMjE1NjIz
N2EzCkF1dGhvcjogRmVsaXggR3UgPHVzdGMuZ3VAZ21haWwuY29tPgoKcGh5OiByZW5lc2FzOiBy
Y2FyLWdlbjI6IEZpeCBkb3VibGUgb2Zfbm9kZV9wdXQgb24gcGh5IGNyZWF0aW9uIGZhaWx1cmUK
ClRoaXMgY29tbWl0IGZpeGVzIGEgZG91YmxlIG9mX25vZGVfcHV0KCkgaXNzdWUgaW4gdGhlIGVy
cm9yIHBhdGggb2YKZGV2bV9waHlfY3JlYXRlKCkuIFRoZSBzY29wZWQgaXRlcmF0b3IgZm9yX2Vh
Y2hfY2hpbGRfb2Zfbm9kZV9zY29wZWQoKQphbHJlYWR5IGhhbmRsZXMgZHJvcHBpbmcgdGhlIG5v
ZGUgcmVmZXJlbmNlLCBzbyB0aGUgZXhwbGljaXQgb2Zfbm9kZV9wdXQoKQp3YXMgcmVkdW5kYW50
LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4yLmMgYi9k
cml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjIuYwo+IGluZGV4IDZjNjcxMjU0YzYyNTgu
LjVhMjcyZTI1ZTA1MWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNh
ci1nZW4yLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjIuYwo+IEBA
IC00MDUsNyArNDA1LDYgQEAgc3RhdGljIGludCByY2FyX2dlbjJfcGh5X3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAkJCQkJCSAgIGRhdGEtPmdlbjJfcGh5X29wcyk7Cj4g
IAkJCWlmIChJU19FUlIocGh5LT5waHkpKSB7Cj4gIAkJCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0
byBjcmVhdGUgUEhZXG4iKTsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGlu
ZyBpc3N1ZSwgYnV0IGRvZXMgdGhpcyBjb2RlIGxlYXZlIGEgZGFuZ2xpbmcgcG9pbnRlcgp3aGVu
IHNhdmluZyB0aGUgbm9kZT8KCkxvb2tpbmcgYXQgcmNhcl9nZW4yX3BoeV9wcm9iZSgpLCB3ZSBz
YXZlIG5wIHRvIGNoYW5uZWwtPm9mX25vZGU6CgoJZm9yX2VhY2hfY2hpbGRfb2Zfbm9kZV9zY29w
ZWQoZGV2LT5vZl9ub2RlLCBucCkgewoJCXN0cnVjdCByY2FyX2dlbjJfY2hhbm5lbCAqY2hhbm5l
bCA9IGRydi0+Y2hhbm5lbHMgKyBpOwoJCS4uLgoJCWNoYW5uZWwtPm9mX25vZGUgPSBucDsKCkJl
Y2F1c2UgZm9yX2VhY2hfY2hpbGRfb2Zfbm9kZV9zY29wZWQoKSBhdXRvbWF0aWNhbGx5IGRyb3Bz
IHRoZSByZWZlcmVuY2Ugb24KdGhlIG5vZGUgd2hlbiBhZHZhbmNpbmcgb3IgZXhpdGluZywgY2hh
bm5lbC0+b2Zfbm9kZSBiZWNvbWVzIGEgZGFuZ2xpbmcgcG9pbnRlci4KCkxhdGVyIGluIHJjYXJf
Z2VuMl9waHlfeGxhdGUoKSwgdGhpcyBwb3RlbnRpYWxseSBkYW5nbGluZyBwb2ludGVyIGlzCnVz
ZWQgZm9yIGNvbXBhcmlzb246CgoJaWYgKG5wID09IGRydi0+Y2hhbm5lbHNbaV0ub2Zfbm9kZSkK
CkNvdWxkIHRoaXMgZmFsc2VseSBtYXRjaCBhIG5ld2x5IGFsbG9jYXRlZCBub2RlIGR1ZSB0byBw
b2ludGVyIGFsaWFzaW5nIGlmIGEKRFQgb3ZlcmxheSBpcyBhcHBsaWVkIGFuZCByZW1vdmVkPyBT
aG91bGQgd2UgY2FsbCBvZl9ub2RlX2dldCgpIGJlZm9yZQpzYXZpbmcgaXQgdG8gY2hhbm5lbC0+
b2Zfbm9kZT8KCgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYWxzbyBhIHByZS1leGlzdGluZyBp
c3N1ZSwgYnV0IGlzIHRoZXJlIGEgcG90ZW50aWFsIG91dC1vZi1ib3VuZHMgd3JpdGUKaWYgdGhl
IG51bWJlciBvZiBjaGlsZCBub2RlcyBjaGFuZ2VzPwoKRWFybGllciBpbiByY2FyX2dlbjJfcGh5
X3Byb2JlKCksIHRoZSBkcml2ZXIgYWxsb2NhdGVzIHRoZSBjaGFubmVscyBhcnJheSBiYXNlZApv
biB0aGUgY2hpbGQgY291bnQ6CgoJZHJ2LT5udW1fY2hhbm5lbHMgPSBvZl9nZXRfY2hpbGRfY291
bnQoZGV2LT5vZl9ub2RlKTsKCWRydi0+Y2hhbm5lbHMgPSBkZXZtX2tjYWxsb2MoZGV2LCBkcnYt
Pm51bV9jaGFubmVscywgLi4uKTsKClRoZW4gaXQgaXRlcmF0ZXMgb3ZlciB0aGUgY2hpbGRyZW4g
YW5kIGluY3JlbWVudHMgaToKCglmb3JfZWFjaF9jaGlsZF9vZl9ub2RlX3Njb3BlZChkZXYtPm9m
X25vZGUsIG5wKSB7CgkJc3RydWN0IHJjYXJfZ2VuMl9jaGFubmVsICpjaGFubmVsID0gZHJ2LT5j
aGFubmVscyArIGk7CgkJLi4uCgkJaSsrOwoJfQoKSWYgY2hpbGQgbm9kZXMgYXJlIGFkZGVkIGR5
bmFtaWNhbGx5IChlLmcuLCB2aWEgYSBEVCBvdmVybGF5KSBiZXR3ZWVuIHRoZSBjYWxsCnRvIG9m
X2dldF9jaGlsZF9jb3VudCgpIGFuZCB0aGUgZm9yX2VhY2hfY2hpbGRfb2Zfbm9kZV9zY29wZWQo
KSBsb29wLCBjb3VsZCBpCmV4Y2VlZCBkcnYtPm51bV9jaGFubmVscyBhbmQgY2F1c2UgYW4gb3V0
LW9mLWJvdW5kcyB3cml0ZSB3aGVuIGFjY2Vzc2luZwpkcnYtPmNoYW5uZWxzICsgaT8KCj4gLQkJ
CQlvZl9ub2RlX3B1dChucCk7Cj4gIAkJCQlyZXR1cm4gUFRSX0VSUihwaHktPnBoeSk7Cj4gIAkJ
CX0KPiAgCQkJcGh5X3NldF9kcnZkYXRhKHBoeS0+cGh5LCBwaHkpOwoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgwNC1yY2FyLWdl
bjItdjItMC04MjljYjg0MTEyY2FAZ21haWwuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
