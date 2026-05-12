Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07B9DCD484E
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 06:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0zfFPY9msvfkGTUSme0zNmjgCzPA2R45gfnEhJZIPA=; b=gVlz1jr/ZJoCsC
	3Pl5yoKQQw/EKdBY5pK8f3qe6yoYCTZ5Ql3EtB4IM8FUwPmc0uNCZSvGLC6i7qlSGWs4vFCzw/LYp
	r0g55MP5NHmDyQsFXu1+bP8Z7C9+tUbUZgPnZSWnmprqqop/KI8HqMriau70ccM2s6uGlCtBd2lGA
	GtGdojow7n+qVuL+YPTzfSVX0CaN4crNcbKGbFcBUqYGIfukD34pwpLxQdm9crdnH9JId26WUIwff
	wknvYFoCkZn612XfQU9qlBHvn8kU+iNBJwz+MZdPZut1k8Iq7SwCCDf/ak3kHemDP3v/V4y01ybRD
	+0nfx7rxv+KaLPxkIvAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMgKL-0000000Fk2i-3G4V;
	Tue, 12 May 2026 06:10:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMgKK-0000000Fk2H-0rbo
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 06:10:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1400D60103;
	Tue, 12 May 2026 06:10:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21FEFC2BCB0;
	Tue, 12 May 2026 06:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778566241;
	bh=hdeMKQpd+K2LYLK/aIrzee8S2vsiw8rbv/U3MG5fz+4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=cS4Qw2wEjG2vxiEswC1dQ/3K5X0+7qysQjQL5YvSCXBQ2KnVGElUOEmhgeI0Fm97l
	 XisT+27lvqpaIhMXxr/iiOoHsRcf23cw68vZp70xwqOQVTjHvpuPn0yxs81V5NriQh
	 e0TpbwDEq8v5CxBMN7kPGXsG9SbJUqyz0HQnGcqVNZwCIPgoZD3lHm7DbOLeT2Zhmq
	 Rd2XOt/Omn46LgniWdqQldAaV2082xytYox3feDLbjcDanerSBtcYszsfeqFke2zlg
	 IaS+0oM85fD6LEKW/SsLu6KbIfrmTZuIW9v4PW88ri1Awd26stHPDWRckxCwNk8BEc
	 P+IK4ioEjasOg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RESEND v8 07/10] phy: qualcomm: eusb2-repeater: Migrate
 to devm_spmi_subdevice_alloc_and_add()
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260511100805.121432-8-angelogioacchino.delregno@collabora.com>
References: <20260511100805.121432-8-angelogioacchino.delregno@collabora.com>
Date: Tue, 12 May 2026 06:10:40 +0000
Message-Id: <20260512061041.21FEFC2BCB0@smtp.kernel.org>
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
Reply-To: sashiko@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gSGFyZGNvZGVkIC1F
Tk9ERVYgZXJyb3IgcmV0dXJuIG1hc2tzIGRldm1fcmVnbWFwX2luaXRfc3BtaV9leHQoKSBmYWls
dXJlIHJlYXNvbi4KLSBbTWVkaXVtXSBSZWR1bmRhbnQgTlVMTCBjaGVjayBmb3IgYHNwYXJlbnRg
IGFuZCBsYWNrIG9mIHBhcmVudCBidXMgdHlwZSB2YWxpZGF0aW9uLgotLQoKY29tbWl0IDJkZjZk
NzBlZGI5ZTIzZGYxMTZkMjk4ZWFmNDIyMjg3OWU1YWNiMmUKQXV0aG9yOiBBbmdlbG9HaW9hY2No
aW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgoK
cGh5OiBxdWFsY29tbTogZXVzYjItcmVwZWF0ZXI6IE1pZ3JhdGUgdG8gZGV2bV9zcG1pX3N1YmRl
dmljZV9hbGxvY19hbmRfYWRkKCkKClRoaXMgY29tbWl0IHJlZ2lzdGVycyBhIG5ldyBTUE1JIHN1
Yi1kZXZpY2UgZm9yIHRoZSBFVVNCMiByZXBlYXRlciBhbmQKaW5pdGlhbGl6ZXMgaXRzIG93biBy
ZWdtYXAuIFRoaXMgYXZvaWRzIG1hbnVhbGx5IGFkZGluZyB0aGUgcmVnaXN0ZXIgYmFzZQphZGRy
ZXNzIHRvIGV2ZXJ5IHJlYWQvd3JpdGUgY2FsbCBieSBsZXZlcmFnaW5nIHRoZSByZWdtYXAgQVBJ
IGluc3RlYWQuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1l
dXNiMi1yZXBlYXRlci5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZXVzYjItcmVw
ZWF0ZXIuYwo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWV1c2IyLXJlcGVh
dGVyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1ldXNiMi1yZXBlYXRl
ci5jCgpbIC4uLiBdCgo+IEBAIC0yNDIsMTMgKzI0MCwyMyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IHBoeV9vcHMgZXVzYjJfcmVwZWF0ZXJfb3BzID0gewo+ICAKPiAgc3RhdGljIGludCBldXNiMl9y
ZXBlYXRlcl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7CgpbIC4uLiBd
Cgo+ICsJaWYgKCFkZXYtPnBhcmVudCkKPiArCQlyZXR1cm4gLUVOT0RFVjsKPiArCgpbIC4uLiBd
Cgo+IC0JcnB0ci0+cmVnbWFwID0gZGV2X2dldF9yZWdtYXAoZGV2LT5wYXJlbnQsIE5VTEwpOwo+
IC0JaWYgKCFycHRyLT5yZWdtYXApCj4gKwlzcGFyZW50ID0gdG9fc3BtaV9kZXZpY2UoZGV2LT5w
YXJlbnQpOwo+ICsJaWYgKCFzcGFyZW50KQo+ICAJCXJldHVybiAtRU5PREVWOwoKU2luY2UgdG9f
c3BtaV9kZXZpY2UoKSBpcyBhIGNvbnRhaW5lcl9vZigpIHdyYXBwZXIgYW5kIGRldi0+cGFyZW50
IHdhcyBqdXN0CmNoZWNrZWQgZm9yIE5VTEwsIHdvbid0IHNwYXJlbnQgYWx3YXlzIGJlIG5vbi1O
VUxMIGhlcmU/CgpBbHNvLCBkb2VzIHRoaXMgc2FmZWx5IHZlcmlmeSB0aGUgcGFyZW50IGlzIGFj
dHVhbGx5IGFuIFNQTUkgZGV2aWNlPyBJZiB0aGUKZHJpdmVyIGlzIGluc3RhbnRpYXRlZCB1bmRl
ciBhIG5vbi1TUE1JIHBhcmVudCB2aWEgYW4gaW5jb3JyZWN0IERldmljZSBUcmVlLApjb3VsZCB0
aGlzIGxlYWQgdG8gdHlwZSBjb25mdXNpb24gYW5kIHBhc3MgYW4gaW52YWxpZCBwb2ludGVyIHRv
CmRldm1fc3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZCgpPwoKPiArCj4gKwlzdWJfc2RldiA9
IGRldm1fc3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZChkZXYsIHNwYXJlbnQpOwo+ICsJaWYg
KElTX0VSUihzdWJfc2RldikpCj4gKwkJcmV0dXJuIFBUUl9FUlIoc3ViX3NkZXYpOwo+ICsKPiAr
CXJldCA9IGRldmljZV9wcm9wZXJ0eV9yZWFkX3UzMihkZXYsICJyZWciLCAmZXVzYjJfcmVnbWFw
X2NvbmZpZy5yZWdfYmFzZSk7Cj4gIAlpZiAocmV0IDwgMCkKPiAgCQlyZXR1cm4gcmV0Owo+ICAK
PiAtCXJwdHItPmJhc2UgPSByZXM7Cj4gKwlycHRyLT5yZWdtYXAgPSBkZXZtX3JlZ21hcF9pbml0
X3NwbWlfZXh0KCZzdWJfc2Rldi0+c2RldiwgJmV1c2IyX3JlZ21hcF9jb25maWcpOwo+ICsJaWYg
KElTX0VSUihycHRyLT5yZWdtYXApKQo+ICsJCXJldHVybiAtRU5PREVWOwoKSXMgaXQgaW50ZW50
aW9uYWwgdG8gcmV0dXJuIGEgaGFyZGNvZGVkIC1FTk9ERVYgaGVyZSBpbnN0ZWFkIG9mIHByb3Bh
Z2F0aW5nCnRoZSBhY3R1YWwgZXJyb3IgY29kZSBmcm9tIGRldm1fcmVnbWFwX2luaXRfc3BtaV9l
eHQoKSB1c2luZwpQVFJfRVJSKHJwdHItPnJlZ21hcCk/IE1hc2tpbmcgdGhlIG9yaWdpbmFsIGVy
cm9yIG1pZ2h0IG1ha2UgZGVidWdnaW5nCmluaXRpYWxpemF0aW9uIGZhaWx1cmVzIG1vcmUgZGlm
ZmljdWx0LgoKPiAgCj4gIAlyZXQgPSBldXNiMl9yZXBlYXRlcl9pbml0X3ZyZWdzKHJwdHIpOwoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MDUxMTEwMDgwNS4xMjE0MzItMS1hbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9y
YS5jb20/cGFydD03CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
