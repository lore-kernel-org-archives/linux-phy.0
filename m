Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B203FCD343F
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 05:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6z4f/XXcVjI81zyZXo+XebbImN1Du2erEUBovcTyKwI=; b=Qyf5V9XFUhAdMr
	WJ4/jfrfOqSEaG5EWj66iucW96xgHGwCab1SEc9voN7/g4aMXAT9yIeeoEJVRMkYNirALnXBMbleR
	Tn/+fgUepogCmd616C4Mo3KKmPZEDWznY7uAeksx6qrrt/NUwhbfmQjS57yTldGgzRlos2saS4UtB
	ipQfRGaD3x7kGs+UaCKWDy9qB20U8e5XUhgur9VrNVSBSH+fwtb+iwp0BVCDameINfXRvTek0RSkD
	x+XcHXphhfMHbLOnm1PLNNIU/5AiUVCc6Q65OoIf4+D1QEA9ATGYVsVkPSFaWGdURaxUORex4Ez+l
	b8w0/zt4SpPr4i0Ix0bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPwHj-00000006lcx-17Vr;
	Thu, 21 May 2026 05:49:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPwHi-00000006lcn-0ied
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 05:49:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 436A060212;
	Thu, 21 May 2026 05:49:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03AE01F000E9;
	Thu, 21 May 2026 05:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779342569;
	bh=wbQgAfH8begFjeiloRPtR8+reCbj3e3kolVhOoozOrM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=d68LJfC6J08nkDVrh0HDeAZxhPouUsKUwLWigfpxTeoLIS2qb9Sn7cFYE7kmDHJt8
	 8ByAvLxHSPGgr1NlZUQ6djprxnpmoCeyznN/a+7kAvQm+mecEWHI9lcecW5yYS0y06
	 puTfWjmJromRPg9FU9APFkO/+J3y0rok25FbAl7V94ts0RCOlm2y1MHBaKgfkItgvc
	 leKzndwMk3Y6ZJBmWnEQ+07SnjBBRSKvPl1fEmyO4ehGp3GBnCgK93MW5BxtR7nvb/
	 aCzlpHZo6RvPe5ctDCyd/rZ6RQ/O5VRG4xNTf+pziGNGwiQbcL6G3MNLull/5CQaVe
	 xeUh2BGD0c2vQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/5] drm/rockchip: cdn-dp: Support handle lane info
 without extcon
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260521032854.103-5-kernel@airkyi.com>
References: <20260521032854.103-5-kernel@airkyi.com>
Date: Thu, 21 May 2026 05:49:27 +0000
Message-Id: <20260521054928.03AE01F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBjb25kaXRpb24g
YFBUUl9FUlIoZXh0Y29uKSAhPSAtRU5PREVWYCBpbiBgY2RuX2RwX3Byb2JlKClgIGV2YWx1YXRl
cyB0byB0cnVlIGZvciB2YWxpZCBgZXh0Y29uYCBwb2ludGVycywgYnJlYWtpbmcgaW5pdGlhbGl6
YXRpb24gZm9yIGRldmljZXMgd2l0aCBgZXh0Y29uYC4KLS0KCmNvbW1pdCAxYzEyY2M5ODk3MzRm
OTA2YTE1YjdkNDVkOTBkNTdkMjFmNTVjMmQzCkF1dGhvcjogQ2hhb3lpIENoZW4gPGNoYW95aS5j
aGVuQHJvY2stY2hpcHMuY29tPgoKZHJtL3JvY2tjaGlwOiBjZG4tZHA6IFN1cHBvcnQgaGFuZGxl
IGxhbmUgaW5mbyB3aXRob3V0IGV4dGNvbgoKVGhpcyBjb21taXQgYWRkcyBzdXBwb3J0IGZvciBn
ZXR0aW5nIFBIWSBsYW5lIGluZm9ybWF0aW9uIGRpcmVjdGx5IGZyb20gdGhlClBIWSBpbnN0ZWFk
IG9mIHJlbHlpbmcgb24gZXh0Y29uIHdoZW4gYSBUeXBlLUMgY29udHJvbGxlciBpcyBwcmVzZW50
LiBJdAp1cGRhdGVzIHRoZSBwcm9iZSwgYmluZCwgYW5kIHBoeSBlbmFibGUgcGF0aHMgdG8gYWxs
b3cgb3BlcmF0aW9uIHdpdGhvdXQKYW4gZXh0Y29uIGRldmljZSwgd2hpbGUgaW50ZW5kaW5nIHRv
IGtlZXAgZXh0Y29uIHN1cHBvcnRlZCBmb3Igb2xkZXIgc2V0dXBzLgoKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvY2RuLWRwLWNvcmUuYwo+IGluZGV4IDE3N2UzMDQ0NWVlODMuLjkwNjgxMTg4NTll
MjEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYwoKWyAuLi4gXQoK
PiBAQCAtMTEyMSwxNCArMTEzMCwxNCBAQCBzdGF0aWMgaW50IGNkbl9kcF9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJCSAgICBQVFJfRVJSKHBoeSkgPT0gLUVQUk9CRV9E
RUZFUikKPiAgCQkJcmV0dXJuIC1FUFJPQkVfREVGRVI7Cj4gIAo+IC0JCWlmIChJU19FUlIoZXh0
Y29uKSB8fCBJU19FUlIocGh5KSkKPiArCQlpZiAoSVNfRVJSKHBoeSkgfHwgUFRSX0VSUihleHRj
b24pICE9IC1FTk9ERVYpCgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBjb25kaXRpb24gaW5h
ZHZlcnRlbnRseSBza2lwIHBvcnQgaW5pdGlhbGl6YXRpb24gZm9yIHZhbGlkIGV4dGNvbgpkZXZp
Y2VzPwoKV2hlbiBleHRjb25fZ2V0X2VkZXZfYnlfcGhhbmRsZSgpIHN1Y2Nlc3NmdWxseSByZXR1
cm5zIGEgdmFsaWQgcG9pbnRlciwKUFRSX0VSUihleHRjb24pIGV2YWx1YXRlcyB0byB0aGUgcG9p
bnRlcidzIG1lbW9yeSBhZGRyZXNzLiBTaW5jZSBhIHZhbGlkCnBvaW50ZXIgYWRkcmVzcyBpcyBu
b3QgZXF1YWwgdG8gLUVOT0RFViwgdGhpcyBjb25kaXRpb24gd2lsbCBldmFsdWF0ZSB0bwp0cnVl
IGFuZCB0cmlnZ2VyIHRoZSBjb250aW51ZSBzdGF0ZW1lbnQuCgpUaGlzIGFwcGVhcnMgdG8gYnJl
YWsgZW51bWVyYXRpb24gZm9yIGFsbCBleGlzdGluZyBkZXZpY2VzIHRoYXQgdXNlIGFuIGV4dGNv
bgpieSB1bmNvbmRpdGlvbmFsbHkgc2tpcHBpbmcgdGhlaXIgc2V0dXAuIAoKV291bGQgaXQgYmUg
YmV0dGVyIHRvIGVuc3VyZSB3ZSBvbmx5IGNoZWNrIHRoZSBlcnJvciBjb2RlIHdoZW4gdGhlIHBv
aW50ZXIKaXMgYWN0dWFsbHkgYW4gZXJyb3I/CgoJCWlmIChJU19FUlIocGh5KSB8fCAoSVNfRVJS
KGV4dGNvbikgJiYgUFRSX0VSUihleHRjb24pICE9IC1FTk9ERVYpKQoKPiAgCQkJY29udGludWU7
Cj4gIAo+ICAJCXBvcnQgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnBvcnQpLCBHRlBfS0VS
TkVMKTsKPiAgCQlpZiAoIXBvcnQpCj4gIAkJCXJldHVybiAtRU5PTUVNOwo+ICAKPiAtCQlwb3J0
LT5leHRjb24gPSBleHRjb247Cj4gKwkJcG9ydC0+ZXh0Y29uID0gSVNfRVJSKGV4dGNvbikgPyBO
VUxMIDogZXh0Y29uOwo+ICAJCXBvcnQtPnBoeSA9IHBoeTsKPiAgCQlwb3J0LT5kcCA9IGRwOwo+
ICAJCXBvcnQtPmlkID0gaTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1MjEwMzI4NTQuMTAzLTEta2VybmVsQGFpcmt5aS5jb20/
cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
