Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21021C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 11:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EoSt4KUMjDkW+e2rAyDwTUdQdJXe5dFMgogvpOmtYW0=; b=nnPk2po2TSqj3t
	enbEIcgEO2eJ/7IXgoBLwk0DAYF1W78qFODfsG8CkW17L7estoRpcpxSnXILo7vZ908W7Hqnt+n37
	rDxK6huIOUxV4Z7ucxh8wvLqtBIExp5lYS+9rXDi/mEbTaRz++i524XNnyT4z91PYizaZmZLyjDhA
	BOYNrKQrRRxeD+y6JrFCUGQlv+O+csM7QRB3k2ZsaAIagnuPbcyf+GaYzlI9L8sKhaiufUNis66so
	diXVgY4Zlto9ZBIfsRSbIC5ch//4EGgp7Tq60z8dBcLjG0bKhCY2oG0cWj5mZot3Ft8pMVcx9oIq5
	ArAKOHNQNJ/rLsyifkiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3y2-0000000Eqn3-3eVe;
	Tue, 07 Jul 2026 11:27:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3y2-0000000Eqmw-0PTQ
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 11:27:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8094C6001D;
	Tue,  7 Jul 2026 11:27:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEAAB1F000E9;
	Tue,  7 Jul 2026 11:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783423677;
	bh=KGGN5CotZvzUBuHnwreOidrQUvk2Uu9UxhrrZu+yf2g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fCxAM9T5Otlzot/ye0yNCego/vporu4prYl4i6+DgG91Oi1gAPXnD41qaiI8oZ486
	 tuTU5veCGFIgyyPKkvNl73dcCDhKhCPnxCFW+omkBlGBTWCH8kCuoZMf+Z/HMFVSru
	 PAPQ+lcc0bCI+YdMWLS4BOmous+e/yaoBp7RD/mJgvo3qzK4QGGYUEEMWfxDRpi4iT
	 6Q2KMI8jGTYDLd7LcNkbXrODatK7qWqwApdwHT9mdNw7LyIJxjTpvtGOJaIK5UWfDq
	 1OxhSzIOaoyMORL1LOUeAJJgCiXbTfeXE66DE6wH2C+or4Qcu90NdOHW59daLMichU
	 1eAiEOUDdQS3w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 06/12] spmi: Add helper to get a parent SPMI device
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260707111829.180158-7-angelogioacchino.delregno@collabora.com>
References: <20260707111829.180158-1-angelogioacchino.delregno@collabora.com>
 <20260707111829.180158-7-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 11:27:56 +0000
Message-Id: <20260707112756.DEAAB1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRpbWUtb2YtY2hlY2sg
dG8gdGltZS1vZi11c2UgKFRPQ1RPVSkgcmFjZSBvbiBgZGV2LT5wYXJlbnRgIGNhbiBsZWFkIHRv
IGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlLgotLQoKLS0tIFBhdGNoIFs2XTogW1BBVENIIHYx
MiAwNi8xMl0gc3BtaTogQWRkIGhlbHBlciB0byBnZXQgYSBwYXJlbnQgU1BNSSBkZXZpY2UgLS0t
CmNvbW1pdCBmYjMyMThkNmI1MjhlYWJkYzgzYWM5MGVkODY5Njg1ZjRiOWJkOTllCkF1dGhvcjog
QW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29s
bGFib3JhLmNvbT4KCnNwbWk6IEFkZCBoZWxwZXIgdG8gZ2V0IGEgcGFyZW50IFNQTUkgZGV2aWNl
CgpUaGlzIGNvbW1pdCBhZGRzIGEgbmV3IGhlbHBlciBmdW5jdGlvbiBzcG1pX2dldF9wYXJlbnRf
c3BtaV9kZXZpY2UoKQp3aGljaCB0YWtlcyBhIHN0cnVjdCBkZXZpY2UgYW5kIHJldHVybnMgYSBw
b2ludGVyIHRvIGl0cyBwYXJlbnQgU1BNSQpkZXZpY2UgaWYgb25lIGV4aXN0cywgd2l0aG91dCBt
b2RpZnlpbmcgdGhlIHJlZmVyZW5jZSBjb3VudC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Bt
aS9zcG1pLmMgYi9kcml2ZXJzL3NwbWkvc3BtaS5jCj4gaW5kZXggZTIxOGM4MTQwNTQ1OC4uYTBh
NmVhOWIxZDJkYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3NwbWkvc3BtaS5jCj4gKysrIGIvZHJp
dmVycy9zcG1pL3NwbWkuYwoKWyAuLi4gXQoKPiBAQCAtNDMzLDYgKzQzMywyOSBAQCBzdHJ1Y3Qg
c3BtaV9kZXZpY2UgKnNwbWlfZmluZF9kZXZpY2VfYnlfb2Zfbm9kZShzdHJ1Y3QgZGV2aWNlX25v
ZGUgKm5wKQo+ICB9Cj4gIEVYUE9SVF9TWU1CT0xfR1BMKHNwbWlfZmluZF9kZXZpY2VfYnlfb2Zf
bm9kZSk7Cj4gIAo+ICsvKioKPiArICogc3BtaV9nZXRfcGFyZW50X3NwbWlfZGV2aWNlKCkgLSBn
ZXQgdGhlIHBhcmVudCBTUE1JIGRldmljZSBmcm9tIGN1cnJlbnQgZGV2Cj4gKyAqIEBkZXY6ICAg
ICAgICBwb2ludGVyIHRvIGEgc3ViZGV2aWNlIG9uIFNQTUkgYnVzCj4gKyAqCj4gKyAqIENoZWNr
cyBpZiB0aGUgcGFzc2VkIGRldmljZSBpcyBhIGNoaWxkIG9mIGFuIFNQTUkgZGV2aWNlIGFuZCBy
ZXR1cm5zIGEKPiArICogaGFuZGxlIHRvIHRoZSBwYXJlbnQgU1BNSSBkZXZpY2Ugd2l0aG91dCBp
bmNyZW1lbnRpbmcgYW55IHJlZmNvdW50Lgo+ICsgKgo+ICsgKiBSZXR1cm46IEhhbmRsZSB0byB0
aGUgcGFyZW50IFNQTUkgZGV2aWNlIG9yIE5VTEwKPiArICovCj4gK3N0cnVjdCBzcG1pX2Rldmlj
ZSAqc3BtaV9nZXRfcGFyZW50X3NwbWlfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRldikKPiArewo+
ICsJc3RydWN0IGRldmljZSAqcGFyZW50Owo+ICsKPiArCWlmIChkZXYgJiYgZGV2LT5wYXJlbnQp
IHsKPiArCQlwYXJlbnQgPSBkZXYtPnBhcmVudDsKPiArCj4gKwkJaWYgKHBhcmVudC0+dHlwZSA9
PSAmc3BtaV9kZXZfdHlwZSkKCltTZXZlcml0eTogSGlnaF0KQ2FuIGEgY29uY3VycmVudCBkZXZp
Y2UgdG9wb2xvZ3kgY2hhbmdlIChsaWtlIGRldmljZV9tb3ZlKCkpIGNhdXNlIGEgTlVMTApwb2lu
dGVyIGRlcmVmZXJlbmNlIGhlcmU/CgpJZiBkZXYtPnBhcmVudCBpcyBtb2RpZmllZCB0byBOVUxM
IGJldHdlZW4gdGhlIGNoZWNrIGluIHRoZSBpZiBjb25kaXRpb24KYW5kIHRoZSBhc3NpZ25tZW50
IHRvIHRoZSBsb2NhbCBwYXJlbnQgdmFyaWFibGUsIHBhcmVudCB3aWxsIGJlY29tZSBOVUxMCmFu
ZCB0aGlzIHBhcmVudC0+dHlwZSBjaGVjayB3aWxsIHBhbmljLgoKU2luY2UgdGhlIGNvbXBpbGVy
IGlzIHBlcm1pdHRlZCB0byBlbWl0IHR3byBzZXBhcmF0ZSBtZW1vcnkgbG9hZHMgZm9yCmRldi0+
cGFyZW50IGluIHRoaXMgc2VxdWVuY2UsIHdvdWxkIGl0IGJlIHNhZmVyIHRvIHJlYWQgaXQgZXhh
Y3RseSBvbmNlCmludG8gdGhlIGxvY2FsIHZhcmlhYmxlIGJlZm9yZSBjaGVja2luZyBpdHMgdmFs
aWRpdHk/Cgo+ICsJCQlyZXR1cm4gdG9fc3BtaV9kZXZpY2UocGFyZW50KTsKPiArCX0KPiArCXJl
dHVybiBOVUxMOwo+ICt9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwNzA3MTExODI5LjE4MDE1OC0xLWFuZ2Vsb2dpb2FjY2hpbm8u
ZGVscmVnbm9AY29sbGFib3JhLmNvbT9wYXJ0PTYKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
