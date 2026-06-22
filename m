Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BBAACDB46B
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jun 2026 09:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3c6kr34sSiE+26+dJRBJYc8fxQ45tTpR172C4E1nDXA=; b=mJFPJmiIXfjz4S
	wk8/MFjOyOvBa5PKpaUMYsAIDySPOKAYR0hSiOXUxSx1O/U7yE+F3j+IahsM2sSE7fCQEmBIx2YQM
	Qn8fhJ+ZxZ2iyMNjmOofB6hbjpak4VbKU6dZdqhuNp5bD8i1+STpU0lRy0rKCwdmIOmjdJyrC3/G0
	RJXjjUlWwIePJ8MrdFXiu4+yEvsOrbl63kLLhBuEw9yEsvNqeL5yrqcSxT1FVoIk9YbsyDh6yEoQ0
	3S+Jg1fGLjCcFqLt882u7WlmcvnCqxeL+/dYCh1/mFLqvF8E9xBxR5YcFzIufY7g55Pj/KVzllgVL
	kFKrecgpJt4dgk+B8HKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbabq-00000004ikH-0JHj;
	Mon, 22 Jun 2026 09:06:26 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbabo-00000004ikB-3zdc
	for linux-phy@lists.infradead.org;
	Mon, 22 Jun 2026 09:06:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A73C5404B5;
	Mon, 22 Jun 2026 09:06:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51F911F000E9;
	Mon, 22 Jun 2026 09:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782119184;
	bh=NopIKKMqriZ+t6A+K2QfJb2AzO+uarlrDkj7K+FcDpY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GyEJDx6Wxp4Myfg4SBo8AcoQvGBLLlFkLT6wtOc4DIp4Ni/srW/WfAge+CahrNQlp
	 7grngEyCHeW0p5pgZbEU0zeys4+Z5Rv0lC/dlYLb+P2mPY5ZFBEICO73Xo5FJohTSY
	 1SvVFqDTPE24vadgM7zDGohf96489SfAt++6BJ33PkVGXg2MOMiGpE+/CIwa5mTONL
	 rSRotLFlNgw3M1BGc98MBZK3WxcGAq5aFEcU2IF0x2JGlD1Rug0QIodfYdGADngJNw
	 XDC+3ZgVmyl8qVutE3FcRtD3dF7+AWB83idXNHhBJm7tV7kkqmUG28h+qkKG4sav0w
	 p1gG9NT6oPjSA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 4/4] phy: ti-pipe3: Fix clock leak in init error path
To: "Hongling Zeng" <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <1782118512967996.3955.seg@mailgw.kylinos.cn>
References: <20260619030214.1779043-1-zenghongling@kylinos.cn>
 <1782118512967996.3955.seg@mailgw.kylinos.cn>
Date: Mon, 22 Jun 2026 09:06:23 +0000
Message-Id: <20260622090624.51F911F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVW5kb2N1bWVudGVk
IGNvZGUgYW5kIGJlaGF2aW9yIGNoYW5nZSBpbiBTQVRBIERQTEwgbG9jayBjaGVjawotLQoKY29t
bWl0IGYzNmVjMjRiNWQyMWMxYjFhY2Q3ZDcxYzMwOTk1NDIyMWY5YjJjY2IKQXV0aG9yOiBIb25n
bGluZyBaZW5nIDx6ZW5naG9uZ2xpbmdAa3lsaW5vcy5jbj4KCnBoeTogdGktcGlwZTM6IEZpeCBj
bG9jayBsZWFrIGluIGluaXQgZXJyb3IgcGF0aAogICAgCldoZW4gcmVnbWFwX3VwZGF0ZV9iaXRz
KCkgZmFpbHMgaW4gdGlfcGlwZTNfaW5pdCgpIGZvciBQQ0llIG1vZGUsCnRoZSBmdW5jdGlvbiBy
ZXR1cm5zIHRoZSBlcnJvciB3aXRob3V0IGNhbGxpbmcgdGlfcGlwZTNfZGlzYWJsZV9jbG9ja3Mo
KS4KVGhpcyBwYXRjaCBhZGRzIHByb3BlciBjbG9jayBjbGVhbnVwIGluIHRoZSBQQ0llIGVycm9y
IHBhdGguCiAgICAKQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA1MTgw
MjM2NTcuNDE4NTJDMkJDQjBAc210cC5rZXJuZWwub3JnLwoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9waHkvdGkvcGh5LXRpLXBpcGUzLmMgYi9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYwo+
IC0tLSBhL2RyaXZlcnMvcGh5L3RpL3BoeS10aS1waXBlMy5jCj4gKysrIGIvZHJpdmVycy9waHkv
dGkvcGh5LXRpLXBpcGUzLmMKClsgLi4uIF0KCj4gQEAgLTUzMSw4ICs1MzMsOSBAQCBzdGF0aWMg
aW50IHRpX3BpcGUzX2luaXQoc3RydWN0IHBoeSAqeCkKPiAgCj4gIAkvKiBTQVRBIGhhcyBpc3N1
ZXMgaWYgcmUtcHJvZ3JhbW1lZCB3aGVuIGxvY2tlZCAqLwo+ICAJdmFsID0gdGlfcGlwZTNfcmVh
ZGwocGh5LT5wbGxfY3RybF9iYXNlLCBQTExfU1RBVFVTKTsKPiAtCWlmICgodmFsICYgUExMX0xP
Q0spICYmIHBoeS0+bW9kZSA9PSBQSVBFM19NT0RFX1NBVEEpCj4gLQkJcmV0dXJuIHJldDsKPiAr
CWlmICgodmFsICYgUExMX0xPQ0spICYmIHBoeS0+bW9kZSA9PSBQSVBFM19NT0RFX1NBVEEpIHsK
PiArCQlyZXR1cm4gMDsKPiArCX0KCltTZXZlcml0eTogTWVkaXVtXQpUaGUgY29tbWl0IG1lc3Nh
Z2UgbWVudGlvbnMgYWRkaW5nIGNsb2NrIGNsZWFudXAgZm9yIHRoZSBQQ0llIGVycm9yIHBhdGgs
CmJ1dCB0aGlzIG1vZGlmaWVzIHRoZSBTQVRBIERQTEwgbG9jayBjaGVjayB0byByZXR1cm4gMCBp
bnN0ZWFkIG9mIHJldC4KClJpZ2h0IGFib3ZlIHRoaXMgYmxvY2ssIHJldCBjYW4gYmUgYXNzaWdu
ZWQgYW4gZXJyb3IgdmFsdWUgd2hlbgpicmluZ2luZyB0aGUgRFBMTCBvdXQgb2YgSURMRToKCglp
ZiAodmFsICYgUExMX0lETEUpIHsKCQl2YWwgJj0gflBMTF9JRExFOwoJCXRpX3BpcGUzX3dyaXRl
bChwaHktPnBsbF9jdHJsX2Jhc2UsIFBMTF9DT05GSUdVUkFUSU9OMiwgdmFsKTsKCQlyZXQgPSB0
aV9waXBlM19kcGxsX3dhaXRfbG9jayhwaHkpOwoJfQoKSWYgdGlfcGlwZTNfZHBsbF93YWl0X2xv
Y2soKSBmYWlscyBhbmQgcmV0dXJucyAtRUJVU1ksIGJ1dCB0aGUgc3Vic2VxdWVudApyZWFkIG9m
IFBMTF9TVEFUVVMgc2hvd3MgUExMX0xPQ0sgaXMgc2V0LCBkb2VzIHRoaXMgY2hhbmdlIHVuaW50
ZW50aW9uYWxseQptYXNrIHRoZSBlcnJvciBieSByZXR1cm5pbmcgMD8KCkNvdWxkIHRoZSBjb21t
aXQgbWVzc2FnZSBiZSB1cGRhdGVkIHRvIGRlc2NyaWJlIHRoaXMgaWYgdGhlIGJlaGF2aW9yIGNo
YW5nZQp3YXMgaW50ZW50aW9uYWw/Cgo+ICAKPiAgCS8qIFByb2dyYW0gdGhlIERQTEwgKi8KPiAg
CXJldCA9IHRpX3BpcGUzX2RwbGxfcHJvZ3JhbShwaHkpOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYxOTAzMDIxNC4xNzc5MDQz
LTEtemVuZ2hvbmdsaW5nQGt5bGlub3MuY24/cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
