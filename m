Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89D1DCA9EDE
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 18:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wplRFDKoIXgW4pJI5gmsrs/cwluZXbitkVMpwjTf4c4=; b=RWzdcoDBnYa/ho
	+1olhj2sCCIJA89lvx3TIcts9FUyaUkF6bg2SMf31unEoKcBM7IdR1BdDrFp4WRoqcT6D5q4pvd1e
	/JB8yG87DLTLIHqBCRrUgdOqv/aAH5weDcrPhKfdr+b2os8PO8a31xHgYGQJM+KGUJIvAB8xVLoSA
	C2iPl/zHXD6dq9PiZbmCAJx6MpyLoHnB9DRq4qneutFpoJEyAwbKEYXsN7/nZ2cDO2O0HLhx0p0pS
	HMNaU5KDVaL+cNmLn2t9N9OMz43TxN8uHyBkAkiSBtCXLDd1mKMd+ShLdAPm2cre5TIaeeRjUCJyS
	v+mSnSlxSw8E0ESaV7wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGKar-0000000BCp9-3kNi;
	Mon, 12 Oct 2026 18:17:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGKaq-0000000BCoq-3snb
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 18:17:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 195FC60258;
	Mon, 12 Oct 2026 18:17:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D2E71F0089B;
	Mon, 12 Oct 2026 18:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791829067;
	bh=rg+waL6gGML+UjnyPtSo5tpeaQaZuuKV6I1lYZjepdw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bmjLQSTrIKJ3sYoF6/awGbHYtpmnbupWWGy2U4gM6gltOxeo1IYvjPp3UX0RK9jUU
	 WN1jqPe4yVr+HIU/eAuwzYpvV3vMIKCVkn0AcEZ5Qilu9zKEFdYEfqjN9eQqAT5f64
	 /xYt/DxY7T3glSUEU/CFBG0jzNpm8cW9mE5su5mUjLlQiy+2i6ZmknJc+xMCeT4J6D
	 nvyNomCkR+giZasm51k8u9s+biLuhm/ake7wR7S6kVm2FELRGQLEFvDPewtVQjRouS
	 8hvwESXgQ+8dzW8yu2OrzfLLKDpyPNGHLAHRvpIdQggrvC4CAaX/pFQMEARYLysO8c
	 LlsBpzRJPeqiw==
Message-ID: <sashiko-outbox-168528@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 5/6] phy: realtek: usb2: add support for RTL9607C
 USB2 PHY
To: "Rustam Adilov" <adilov@disroot.org>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20261012173739.36377-6-adilov@disroot.org>
References: <20261012173739.36377-1-adilov@disroot.org>
 <20261012173739.36377-6-adilov@disroot.org>
Date: Mon, 12 Oct 2026 18:17:47 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogbWlzc2luZyBO
VUxMIGNoZWNrIGZvciBvZl9pb21hcCBsZWFkcyB0byBkZXJlZmVyZW5jZQotLQoKY29tbWl0IGFi
MDlkZDRkZWYzZjIyMTU5NTA3MjZjYjc4MGVhNjQ1YmU0MzljM2EKQXV0aG9yOiBSdXN0YW0gQWRp
bG92IDxhZGlsb3ZAZGlzcm9vdC5vcmc+CgpwaHk6IHJlYWx0ZWs6IHVzYjI6IGFkZCBzdXBwb3J0
IGZvciBSVEw5NjA3QyBVU0IyIFBIWQoKQWRkIHN1cHBvcnQgZm9yIHRoZSB1c2IyIHBoeSBvZiBS
VEw5NjA3QyBzZXJpZXMgYmFzZWQgU29Dcy4gQWRkIHRoZSBtYWNyb3MKYW5kIHBoeSBjb25maWcg
c3RydWN0IGZvciBydGw5NjA3LiBSVEw5NjA3QyByZXF1aXJlcyB0byBjbGVhciBhIGZvcmNlIGhv
c3QKZGlzY29ubmVjdCBiaXQgaW4gdGhlIHNwZWNpZmljIHJlZ2lzdGVyIGJlZm9yZSBwcm9jZWVk
aW5nIHdpdGggcGh5CnBhcmFtZXRlciB3cml0ZXMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bo
eS9yZWFsdGVrL3BoeS1ydGstdXNiMi5jIGIvZHJpdmVycy9waHkvcmVhbHRlay9waHktcnRrLXVz
YjIuYwo+IGluZGV4IDJkZGFkN2JlNzM1MzQuLjY0MDc2OTM4YzgyMWQgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9waHkvcmVhbHRlay9waHktcnRrLXVzYjIuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3Jl
YWx0ZWsvcGh5LXJ0ay11c2IyLmMKClsgLi4uIF0KCj4gQEAgLTYwMCw2ICs2MTcsMjMgQEAgc3Rh
dGljIGludCBkb19ydGtfcGh5X2luaXQoc3RydWN0IHJ0a19waHkgKnJ0a19waHksIGludCBpbmRl
eCkKPiAgCQlnb3RvIGRvX3RvZ2dsZTsKPiAgCX0KPiAgCj4gKwlpZiAocGh5X2NmZy0+Zm9yY2Vf
aG9zdF9kaXNjb25uZWN0KSB7Cj4gKwkJY29uc3Qgc3RydWN0IHBoeV9yZWdfZGVzYyAqcmVnX2Rl
c2MgPSBwaHlfcmVnLT5kZXNjOwo+ICsJCXZvaWQgX19pb21lbSAqdnN0YXR1cyA9IHBoeV9yZWct
PnJlZ193cmFwX3ZzdGF0dXM7Cj4gKwkJdTMyIHRlbXA7Cj4gKwo+ICsJCXRlbXAgPSByZWdfZGVz
Yy0+cmVhZCh2c3RhdHVzICsgUEhZXzk2MDdfRk9SQ0VfRElTQ09OTkVDVF9SRUcpOwoKW1NldmVy
aXR5OiBIaWdoXQpJcyBpdCBwb3NzaWJsZSBmb3IgdnN0YXR1cyB0byBiZSBOVUxMIGhlcmU/CgpJ
biBwYXJzZV9waHlfZGF0YSgpLCB0aGUgZHJpdmVyIGNhbGxzIG9mX2lvbWFwKCkgYW5kIGFzc2ln
bnMgdGhlIHJlc3VsdCB3aXRob3V0CmNoZWNraW5nIGZvciBhIE5VTEwgcmV0dXJuIHZhbHVlOgoK
cGFyc2VfcGh5X2RhdGEoKSB7CgkuLi4KCXBoeV9wYXJhbWV0ZXItPnBoeV9yZWcucmVnX3dyYXBf
dnN0YXR1cyA9IG9mX2lvbWFwKG5wLCAwKTsKCS4uLgp9CgpJZiB0aGUgZGV2aWNlIHRyZWUgbm9k
ZSBsYWNrcyB0aGUgbWVtb3J5IHJlZ2lvbiBvciBtYXBwaW5nIGZhaWxzLCB2c3RhdHVzCndpbGwg
YmUgTlVMTC4gVW5jb25kaXRpb25hbGx5IGRlcmVmZXJlbmNpbmcgaXQgaGVyZSB2aWEgcmVnX2Rl
c2MtPnJlYWQoKQpjb3VsZCBjYXVzZSBhIG51bGwgcG9pbnRlciBkZXJlZmVyZW5jZS4KCj4gKwo+
ICsJCS8qIGRpc2FibGUgZm9yY2UtaG9zdC1kaXNjb25uZWN0ICovCj4gKwkJdGVtcCAmPSB+UEhZ
Xzk2MDdfRk9SQ0VfRElTQ09OTkVDVF9CSVQ7Cj4gKwo+ICsJCXJlZ19kZXNjLT53cml0ZSh0ZW1w
LCB2c3RhdHVzICsgUEhZXzk2MDdfRk9SQ0VfRElTQ09OTkVDVF9SRUcpOwo+ICsJCXRlbXAgPSBy
ZWdfZGVzYy0+cmVhZCh2c3RhdHVzICsgUEhZXzk2MDdfRk9SQ0VfRElTQ09OTkVDVF9SRUcpOwo+
ICsKPiArCQkvKiBhbGxvdyBJUCB0byBzdGFydHVwICovCj4gKwkJdXNsZWVwX3JhbmdlKDEwMDAw
LCAxMTAwMCk7Cj4gKwl9Cj4gKwo+ICAJLyogU2V0IHBhZ2UgMCAqLwo+ICAJcGh5X2RhdGFfcGFn
ZSA9IHBoeV9jZmctPnBhZ2UwOwo+ICAJcnRrX3BoeV9zZXRfcGFnZShwaHlfcmVnLCAwKTsKCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjEwMTIxNzM3MzkuMzYzNzctMS1hZGlsb3ZAZGlzcm9vdC5vcmc/cGFydD01CgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
