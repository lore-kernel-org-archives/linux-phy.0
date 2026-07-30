Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D403C55162
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 01:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QInxGbwmrvnTfwtF/0zVoDs6ZaQDoVGSJMykY3frtlg=; b=P1wDOIC22DqOpv
	8Mlaxuy/Kx85VLPcH2ZVuh/vDEtQQLgFdjhEob6yoGr52N9r608GaYGWjWnTVqjjSyAjc8eQyjS4c
	Nde3Du/vd/Q5VMF99+ZKBsgQJMNW7V+XIYc+wdWCBl4NXsohIndOJmYlvezvnzhbm8+87udLXxOMC
	ajNuO+J1mSa/ZQFpcG7QFOLnTCKnmcCq1Am0KMe6OyOmfClnpvNWIn/SCDLuB+/FbcEC+qo0I+chz
	BX0HGUni/rh8HuzpZ1Bp/u8xDjJwItF5r2Erzb9UEUZM8EqsOXU49ki7gOsNquv/Vb7uAYAP0E6s7
	aLHTLCXL6Kv2YNr8LFtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpFqa-00000009I1o-2XDV;
	Thu, 30 Jul 2026 01:46:08 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpFqZ-00000009I1i-0sJa
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 01:46:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3AA96600AA;
	Thu, 30 Jul 2026 01:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DF021F000E9;
	Thu, 30 Jul 2026 01:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785375965;
	bh=IPXUJN7vg4rcfyPoPj49EGsOfnXI/L+Hz7907EAJKa0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hhzVkrxcyS+YqELzmrYUT5da4FFHga2dIaytVUxIOBpwVxxHyST/zmwXSuBOBlG1S
	 pL9dHuepF7ob6q5LfROzdS9CrLiBZ9+I2baFL0uBKgq8ajbPh1VcD3reQAS7U7S2NM
	 OihUYUNzfiG7wctxTAUjuxXn4quUfY1mCk9p3vw21uVp1Ecx7JtZx2LNiZXT1sNJkF
	 vCwy299KaOJs2bojVoGH32WJng56dYiKsivfOYX5U3A0ru1ZgkZQIO9d5EQUxmNbZt
	 yPIUho6rPu4DfZm+ZdEVK7BFajMIkCcASnjZ3I2Em2NApCqGg21sm0U4sIibqJrc0i
	 s5Ps5w6qrqg/w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 5/6] drm/rockchip: cdn-dp: Support handle lane info
 without extcon
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, dri-devel@lists.freedesktop.org
In-Reply-To: <20260730013349.51-6-kernel@airkyi.com>
References: <20260730013349.51-1-kernel@airkyi.com>
 <20260730013349.51-6-kernel@airkyi.com>
Date: Thu, 30 Jul 2026 01:46:05 +0000
Message-Id: <20260730014605.8DF021F000E9@smtp.kernel.org>
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
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFZhbGlkIGV4dGNvbiBk
ZXZpY2VzIGFyZSBpbmNvcnJlY3RseSBza2lwcGVkIGR1cmluZyBwcm9iZSBkdWUgdG8gYSBmbGF3
ZWQgcG9pbnRlciBlcnJvciBjaGVjaywgYnJlYWtpbmcgYWxsIGV4aXN0aW5nIHBsYXRmb3JtcyB0
aGF0IHVzZSBleHRjb24uCi0gW0hpZ2hdIEhvdHBsdWcgZGV0ZWN0IChIUEQpIGlzIGNvbXBsZXRl
bHkgYnJva2VuIHdoZW4gZXh0Y29uIGlzIG5vdCBwcmVzZW50IGJlY2F1c2Ugbm8gYWx0ZXJuYXRp
dmUgbm90aWZpY2F0aW9uIG1lY2hhbmlzbSBpcyBpbXBsZW1lbnRlZC4KLSBbSGlnaF0gVW5jaGVj
a2VkIG5lZ2F0aXZlIGVycm9yIGNvZGUgZnJvbSBgcGh5X2dldF9idXNfd2lkdGhgIGlzIGltcGxp
Y2l0bHkgdHJ1bmNhdGVkIHRvIGB1OGAgYW5kIHVzZWQgYXMgYSB2YWxpZCBsYW5lIGNvdW50LCBj
b3JydXB0aW5nIGhhcmR3YXJlIGNvbmZpZ3VyYXRpb24uCi0tCgotLS0gUGF0Y2ggWzVdOiBbUEFU
Q0ggdjUgNS82XSBkcm0vcm9ja2NoaXA6IGNkbi1kcDogU3VwcG9ydCBoYW5kbGUgbGFuZSBpbmZv
IHdpdGhvdXQgZXh0Y29uIC0tLQpjb21taXQgNGZmMGU0YzI3ODA5Y2NhODg2YzVjYTM3MmI1NGI4
ZDkyNzU0MTAxOApBdXRob3I6IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNv
bT4KCmRybS9yb2NrY2hpcDogY2RuLWRwOiBTdXBwb3J0IGhhbmRsZSBsYW5lIGluZm8gd2l0aG91
dCBleHRjb24KClRoaXMgY29tbWl0IGFkZHMgc3VwcG9ydCBmb3IgZ2V0dGluZyBQSFkgbGFuZSBp
bmZvcm1hdGlvbiBkaXJlY3RseSBmcm9tIHRoZQpQSFkgaW5zdGVhZCBvZiByZWx5aW5nIG9uIGV4
dGNvbiB3aGVuIGEgVHlwZS1DIGNvbnRyb2xsZXIgaXMgcHJlc2VudC4gSXQKcHJlc2VydmVzIGV4
dGNvbiBzdXBwb3J0IGZvciBjYXNlcyB3aGVyZSB0aGUgVHlwZS1DIGNvbnRyb2xsZXIgaXMgYWJz
ZW50LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3Jl
LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYwo+IGluZGV4IDE5MGNj
ZTk1MzBjODIuLjc0ZTFmNTQyMmE2ZTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL2Nkbi1kcC1jb3JlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2Ru
LWRwLWNvcmUuYwo+IEBAIC0xNTcsNiArMTU3LDkgQEAgc3RhdGljIGludCBjZG5fZHBfZ2V0X3Bv
cnRfbGFuZXMoc3RydWN0IGNkbl9kcF9wb3J0ICpwb3J0KQo+ICAJaW50IGRwdHg7Cj4gIAl1OCBs
YW5lczsKPiAgCj4gKwlpZiAoIWVkZXYpCj4gKwkJcmV0dXJuIHBoeV9nZXRfYnVzX3dpZHRoKHBv
cnQtPnBoeSk7Cj4gKwoKW1NldmVyaXR5OiBIaWdoXQpDYW4gdGhpcyByZXR1cm4gYSBuZWdhdGl2
ZSBlcnJvciBjb2RlIChsaWtlIC1FTk9TWVMpIHRoYXQgZ2V0cyB0cnVuY2F0ZWQ/CgpJbiBjZG5f
ZHBfZW5hYmxlX3BoeSgpLCB0aGUgcmV0dXJuIHZhbHVlIGlzIGRpcmVjdGx5IGFzc2lnbmVkIHRv
IGFuIDgtYml0CnVuc2lnbmVkIGludGVnZXI6CgoJcG9ydC0+bGFuZXMgPSBjZG5fZHBfZ2V0X3Bv
cnRfbGFuZXMocG9ydCk7CgpJZiBwaHlfZ2V0X2J1c193aWR0aCgpIHJldHVybnMgYSBuZWdhdGl2
ZSBlcnJvciwgd2lsbCB0aGlzIHJlc3VsdCBpbiBhCnNpbGVudGx5IHRydW5jYXRlZCBvdXQtb2Yt
Ym91bmRzIGxhbmUgY291bnQgYmVpbmcgd3JpdHRlbiB0byB0aGUgaGFyZHdhcmUKcmVnaXN0ZXJz
PwoKWyAuLi4gXQoKPiBAQCAtMTAyNyw2ICsxMDMzLDkgQEAgc3RhdGljIGludCBjZG5fZHBfYmlu
ZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2UgKm1hc3Rlciwgdm9pZCAqZGF0YSkK
PiAgCWZvciAoaSA9IDA7IGkgPCBkcC0+cG9ydHM7IGkrKykgewo+ICAJCXBvcnQgPSBkcC0+cG9y
dFtpXTsKPiAgCj4gKwkJaWYgKCFwb3J0LT5leHRjb24pCj4gKwkJCWNvbnRpbnVlOwo+ICsKCltT
ZXZlcml0eTogSGlnaF0KRG9lcyBza2lwcGluZyB0aGUgbm90aWZpZXIgcmVnaXN0cmF0aW9uIHBl
cm1hbmVudGx5IG9ycGhhbiB0aGUgZHJpdmVyJ3MKaG90cGx1ZyBkZXRlY3Qgc3RhdGUgbWFjaGlu
ZT8KClRoZSBkcml2ZXIncyBjb25uZWN0aW9uIHN0YXRlIG1hY2hpbmUgaXMgZW50aXJlbHkgZHJp
dmVuIGJ5CmNkbl9kcF9wZF9ldmVudF93b3JrKCksIHdoaWNoIGlzIG9ubHkgZXZlciBzY2hlZHVs
ZWQgYnkgdGhlIGV4dGNvbiBub3RpZmllcgpjYWxsYmFjay4gCgpXaXRob3V0IGFuIGFsdGVybmF0
aXZlIG5vdGlmaWNhdGlvbiBtZWNoYW5pc20gZm9yIG5vbi1leHRjb24gc2V0dXBzLCB3aWxsIHRo
ZQpkaXNwbGF5IGNvbnRyb2xsZXIgZXZlciBiZSBub3RpZmllZCBvZiBjYWJsZSBpbnNlcnRpb24/
CgpbIC4uLiBdCgo+IEBAIC0xMTE5LDE0ICsxMTI4LDE0IEBAIHN0YXRpYyBpbnQgY2RuX2RwX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAkJICAgIFBUUl9FUlIocGh5KSA9
PSAtRVBST0JFX0RFRkVSKQo+ICAJCQlyZXR1cm4gLUVQUk9CRV9ERUZFUjsKPiAgCj4gLQkJaWYg
KElTX0VSUihleHRjb24pIHx8IElTX0VSUihwaHkpKQo+ICsJCWlmIChJU19FUlIocGh5KSB8fCBQ
VFJfRVJSKGV4dGNvbikgIT0gLUVOT0RFVikKPiAgCQkJY29udGludWU7CgpbU2V2ZXJpdHk6IEhp
Z2hdCldpbGwgdGhpcyBjb25kaXRpb24gZXZhbHVhdGUgdG8gdHJ1ZSBmb3IgYWxsIHZhbGlkIGV4
dGNvbiBwb2ludGVycywKc2tpcHBpbmcgdmFsaWQgZXh0Y29uIGRldmljZXMgZW50aXJlbHk/CgpX
aGVuIGEgdmFsaWQgZXh0Y29uIGRldmljZSBpcyBmb3VuZCwgUFRSX0VSUigpIHdpbGwgY2FzdCB0
aGF0IHBvaW50ZXIKYWRkcmVzcyB0byBhIGxvbmcuIFNpbmNlIGEgdmFsaWQgcG9pbnRlciBhZGRy
ZXNzIHdpbGwgbm90IGVxdWFsIC1FTk9ERVYsCnRoaXMgY2hlY2sgc2VlbXMgdG8gZXZhbHVhdGUg
dG8gdHJ1ZSBhbmQgc2tpcCB0aGUgcG9ydCBzZXR1cCBmb3IgYWxsIGV4aXN0aW5nCmZ1bmN0aW9u
YWwgZXh0Y29uIHNldHVwcy4KClNob3VsZCB0aGlzIGluY2x1ZGUgYW4gSVNfRVJSKCkgZ3VhcmQs
IHN1Y2ggYXMKSVNfRVJSKGV4dGNvbikgJiYgUFRSX0VSUihleHRjb24pICE9IC1FTk9ERVY/Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNzMwMDEzMzQ5LjUxLTEta2VybmVsQGFpcmt5aS5jb20/cGFydD01CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
