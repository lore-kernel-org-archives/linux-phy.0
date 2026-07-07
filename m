Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8377C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 10:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJol8D3cEEqlzKLzlP/i1VefUKvQYyQgLzRvdOkKXeg=; b=qtR2PGl5L1Rhkd
	2qfY71zdu2R6pZAfQXl1LW0NT2YMME4MnceIXp4htvmKRmSNCN6Yx/2nYIKyFYuLPNsJkB68dqjUb
	QViBADSk1e6XRF/Q9wt2fQgWWT1m4kurV8RdVtIWS7VNBIODstlr0QmbA4OC30Z7lKr+Yj71Vwhpj
	oiG5YaFd6PwZ/MHgFOuETtNrMp16PWEcxLInxzOngGkHN0zfd3WhrYmEWQkS10Xl8TMHVnNRwjU5X
	NSQmj/UJSODUZTBIRwS30iIjyaxSEHzbpRFUzN9d2rS0dA7QOQ10zj578CEKbbOOW6npWJ1mfqOFp
	S4iYrLAo2gQN4674ptrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3Bj-0000000Elmw-23oP;
	Tue, 07 Jul 2026 10:38:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3Bi-0000000ElmA-03sq
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 10:38:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 97A6C403CA;
	Tue,  7 Jul 2026 10:38:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 378E71F00A3A;
	Tue,  7 Jul 2026 10:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783420681;
	bh=gkSMtMqN5wB/T9R/DtwF2KBX2b7WqPQ+5MxX2vFh44c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=L8byjK7z9HWAKbajMF6GAwl77WgYB+rkgKUuO9I/A4wY3WbY5GJWhyhyco+rRtJEh
	 mN+vjUWGHwHaGSYI9K+89/Wn7BAdE6uWZC7Y2/yAmnZLi9vNnZuxLGFwcAEaxsZ6ja
	 TFvhPnkYhGImpq7FP9S8EXHCtXxsUBL4BhlOrKSxSYc514ipExeCwfBX8HH2K52fMC
	 3ZaWnXyJhKIDI7f1gArTNKdsuQ/jOnF6qDPrDXgcz60JtW93Lt1jgQ+OUzNgpdGhXY
	 KOpTBJM31Akj3S18STliTSHQidl2P0PD5w+eYGsQqnyeYFLr5RnYDQhfCvKCoDBI5R
	 Oh0+ch0DSWlRg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 03/12] spmi: Print error status with %pe format
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260707101821.173319-4-angelogioacchino.delregno@collabora.com>
References: <20260707101821.173319-1-angelogioacchino.delregno@collabora.com>
 <20260707101821.173319-4-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 10:38:00 +0000
Message-Id: <20260707103801.378E71F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0NyaXRpY2FsXSBEb3VibGUgZnJl
ZSBvZiB0aGUgT0Ygbm9kZSByZWZlcmVuY2Ugb24gdGhlIGVycm9yIHBhdGggaW4gb2Zfc3BtaV9y
ZWdpc3Rlcl9kZXZpY2VzKCksIGNhdXNpbmcgYSB1c2UtYWZ0ZXItZnJlZSB3aGVuIHRoZSBpdGVy
YXRvciBhZHZhbmNlcy4KLS0KCi0tLSBQYXRjaCBbM106IFtQQVRDSCB2MTEgMDMvMTJdIHNwbWk6
IFByaW50IGVycm9yIHN0YXR1cyB3aXRoICVwZSBmb3JtYXQgLS0tCmNvbW1pdCBjYzU3ODcyZThm
ZDI0ZWQ4NTgzOTA2YmMyNmIwMzk2YzMwODM0YjQ0CkF1dGhvcjogQW5nZWxvR2lvYWNjaGlubyBE
ZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KCnNwbWk6
IFByaW50IGVycm9yIHN0YXR1cyB3aXRoICVwZSBmb3JtYXQKCkluc3RlYWQgb2YgcHJpbnRpbmcg
anVzdCBhIG51bWJlciwgdXNlIHRoZSAlcGUgZm9ybWF0IGZvciBlcnJvcgpzdGF0dXMsIGluY3Jl
YXNpbmcgcmVhZGFiaWxpdHkgb2YgZXJyb3IgcHJpbnRzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9zcG1pL3NwbWkuYyBiL2RyaXZlcnMvc3BtaS9zcG1pLmMKPiBpbmRleCA5YmVlMGNiM2Q5ZGMx
Li4yY2Y1ZmQ1ZTFiYTkwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3BtaS9zcG1pLmMKPiArKysg
Yi9kcml2ZXJzL3NwbWkvc3BtaS5jClsgLi4uIF0KPiBAQCAtNTI1LDcgKzUyNSw3IEBAIHN0YXRp
YyB2b2lkIG9mX3NwbWlfcmVnaXN0ZXJfZGV2aWNlcyhzdHJ1Y3Qgc3BtaV9jb250cm9sbGVyICpj
dHJsKQo+ICAJCWVyciA9IHNwbWlfZGV2aWNlX2FkZChzZGV2KTsKPiAgCQlpZiAoZXJyKSB7Cj4g
IAkJCWRldl9lcnIoJnNkZXYtPmRldiwKPiAtCQkJCSJmYWlsdXJlIGFkZGluZyBkZXZpY2UuIHN0
YXR1cyAlZFxuIiwgZXJyKTsKPiArCQkJCSJmYWlsdXJlIGFkZGluZyBkZXZpY2UuIHN0YXR1cyAl
cGVcbiIsIEVSUl9QVFIoZXJyKSk7Cj4gIAkJCW9mX25vZGVfcHV0KG5vZGUpOwo+ICAJCQlzcG1p
X2RldmljZV9wdXQoc2Rldik7Cj4gIAkJfQoKW1NldmVyaXR5OiBDcml0aWNhbF0KRG9lcyB0aGlz
IGVycm9yIHBhdGggZG91YmxlLWZyZWUgdGhlIE9GIG5vZGUgcmVmZXJlbmNlPwoKSWYgc3BtaV9k
ZXZpY2VfYWRkKCkgZmFpbHMgZHVyaW5nIGRldmljZSByZWdpc3RyYXRpb24gaW4Kb2Zfc3BtaV9y
ZWdpc3Rlcl9kZXZpY2VzKCksIHRoZSBlcnJvciBwYXRoIGV4cGxpY2l0bHkgY2FsbHMgb2Zfbm9k
ZV9wdXQobm9kZSkuCkhvd2V2ZXIsIGl0IGFsc28gY2FsbHMgc3BtaV9kZXZpY2VfcHV0KHNkZXYp
LCB3aGljaCBpbnZva2VzIHNwbWlfZGV2X3JlbGVhc2UoKQphbmQgZHJvcHMgdGhlIHNhbWUgb2Zf
bm9kZSByZWZlcmVuY2UgYWdhaW46Cgpkcml2ZXJzL3NwbWkvc3BtaS5jOnNwbWlfZGV2X3JlbGVh
c2UoKSB7CgkuLi4KCWlmIChJU19FTkFCTEVEKENPTkZJR19PRikpCgkJb2Zfbm9kZV9wdXQoZGV2
LT5vZl9ub2RlKTsKCS4uLgp9CgpXaGVuIHRoZSBmb3JfZWFjaF9hdmFpbGFibGVfY2hpbGRfb2Zf
bm9kZSgpIGxvb3AgYWR2YW5jZXMsIHRoZSBpdGVyYXRvciBtYWNybwp3aWxsIGRyb3AgdGhlIHJl
ZmVyZW5jZSBhIHRoaXJkIHRpbWUsIGJ1dCBpdCB3YXMgb25seSBhY3F1aXJlZCB0d2ljZSAob25j
ZSBieQp0aGUgbWFjcm8sIG9uY2UgYnkgb2Zfbm9kZV9nZXQoKSkuIFRoaXMgY2FuIGNhdXNlIGEg
cmVmZXJlbmNlIGNvdW50IHVuZGVyZmxvdwphbmQgYSB1c2UtYWZ0ZXItZnJlZS4KClRoaXMgcmVn
cmVzc2lvbiB3YXMgaW50cm9kdWNlZCBpbiB0aGUgZmlyc3QgcGF0Y2ggb2YgdGhpcyBzZXJpZXMu
CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0
LzIwMjYwNzA3MTAxODIxLjE3MzMxOS0xLWFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFi
b3JhLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
