Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D8C0CD8C9D
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 10:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+ysbjzeYL1xM1CObgoX3cH9I2dqBx8NXJ+cFAf/O9s=; b=V31k5hqAtVQbCM
	QOeGxMdfHt+J8X93yzNLQ88vbe/LzYWx1JwFOkdMN9/Npdf9Qfe7vuIY3+bRTjWQTHHFC/Tq6O0Gt
	d75NReXc9auf54aPnHJIeGvcYKcZuhQNpsCanU2EKT/vpneXlPD9bHycCNuczJjsCSnNdwvLfupG6
	FSC+UujOhwCgpFnbLINOWOvrWEMJ5pev4+5DX5z37KVc9DGQZR70U44xDEaelwrXOV5fUhl0eeqY4
	/3Zvpf6oAKMxz6DZHRyYZZLkC2VFEug/dLtXGRlaemvllOZxpNVB75mluDjAMH55zx9o7HNs4Zbgw
	Vv/6tlMjyk1hO9sMY1jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXLt-00000003LcZ-0mmB;
	Mon, 08 Jun 2026 10:37:05 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXLr-00000003LcF-3hGA
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 10:37:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4485E600AE;
	Mon,  8 Jun 2026 10:37:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 411271F00893;
	Mon,  8 Jun 2026 10:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780915023;
	bh=SCi3k0R0x3xTCKCKjCf7npAdhB747SwqlzXDkE7ON3I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HtWWqZL0XhuJkzQON82vmXChnJ0yLaWp3WwpIK/3DT9hHCWYn/Ko2YPy1lPkSdC1c
	 +BDU8jFiBnhydn8wYfiO1Wd8wv6ykBC5p1GFsyswtlQdosQxm7BoQRAXdJ14yiGUXd
	 mlowbA0iBJXpe1C1hGsEpepWXatulo49ryrIKzCjqHsMua+R/Hdtif7Nj7EkCB1+GQ
	 73DIZOUNg4gqgcDXTCkIMPZuvsvZno/frWKYwCybSmxab4mcIgmGx7qoaCubdepBqv
	 ze4l4Kf7MlshQFtp64jRM6u0QSz4C4J38nMjyZTS2YQQkVd3u95utL84iBaheKkss0
	 k7Acp1co8PH1w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 02/10] spmi: Print error status with %pe format
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260608100949.36309-3-angelogioacchino.delregno@collabora.com>
References: <20260608100949.36309-3-angelogioacchino.delregno@collabora.com>
Date: Mon, 08 Jun 2026 10:37:00 +0000
Message-Id: <20260608103702.411271F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGUgT0YgZGV2aWNlIG5vZGUgYXNzaWduZWQgdG8gdGhlIG5ld2x5IGFsbG9jYXRl
ZCBTUE1JIGRldmljZSBkb2VzIG5vdCBoYXZlIGl0cyByZWZlcmVuY2UgY291bnQgaW5jcmVtZW50
ZWQsIGNyZWF0aW5nIGEgcG90ZW50aWFsIHVzZS1hZnRlci1mcmVlIGNvbmRpdGlvbiB3aGVuIHRo
ZSBpdGVyYXRvciBtYWNybyBhdXRvbWF0aWNhbGx5IGRyb3BzIHRoZSByZWZlcmVuY2UuCi0tCgpj
b21taXQgZWIyZGVkMDMyMzE1YTdiYTFmOGM4NzhmNmUwYTEwZGI4MGNmMDM0NgpBdXRob3I6IEFu
Z2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxh
Ym9yYS5jb20+CgpzcG1pOiBQcmludCBlcnJvciBzdGF0dXMgd2l0aCAlcGUgZm9ybWF0CgpUaGlz
IGNvbW1pdCB1cGRhdGVzIGVycm9yIG1lc3NhZ2VzIGluIHRoZSBTUE1JIGRyaXZlciB0byB1c2Ug
dGhlICVwZSBmb3JtYXQKc3BlY2lmaWVyIGZvciBwcmludGluZyBlcnJvciBzdGF0dXNlcyBpbnN0
ZWFkIG9mIHByaW50aW5nIGludGVnZXIgZXJyb3IgY29kZXMuCgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3NwbWkvc3BtaS5jIGIvZHJpdmVycy9zcG1pL3NwbWkuYwo+IGluZGV4IGU5M2ZjMmM5NTc1
OTAuLjk1ZGIxOWEwYTQ0ZWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zcG1pL3NwbWkuYwo+ICsr
KyBiL2RyaXZlcnMvc3BtaS9zcG1pLmMKWyAuLi4gXQo+IEBAIC01MjIsNyArNTIyLDcgQEAgc3Rh
dGljIHZvaWQgb2Zfc3BtaV9yZWdpc3Rlcl9kZXZpY2VzKHN0cnVjdCBzcG1pX2NvbnRyb2xsZXIg
KmN0cmwpCj4gIAkJZXJyID0gc3BtaV9kZXZpY2VfYWRkKHNkZXYpOwo+ICAJCWlmIChlcnIpIHsK
PiAgCQkJZGV2X2Vycigmc2Rldi0+ZGV2LAo+IC0JCQkJImZhaWx1cmUgYWRkaW5nIGRldmljZS4g
c3RhdHVzICVkXG4iLCBlcnIpOwo+ICsJCQkJImZhaWx1cmUgYWRkaW5nIGRldmljZS4gc3RhdHVz
ICVwZVxuIiwgRVJSX1BUUihlcnIpKTsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1l
eGlzdGluZyBpc3N1ZSwgYnV0IEkgbm90aWNlZCBhIHBvdGVudGlhbCB1c2UtYWZ0ZXItZnJlZQpj
b25kaXRpb24gd2l0aCB0aGUgT0Ygbm9kZSByZWZlcmVuY2UgY291bnRpbmcuCgpJbiBkcml2ZXJz
L3NwbWkvc3BtaS5jOm9mX3NwbWlfcmVnaXN0ZXJfZGV2aWNlcygpLCB0aGUKZm9yX2VhY2hfYXZh
aWxhYmxlX2NoaWxkX29mX25vZGUoKSBsb29wIGl0ZXJhdGVzIHRocm91Z2ggY2hpbGQgbm9kZXMs
CmF1dG9tYXRpY2FsbHkgY2FsbGluZyBvZl9ub2RlX3B1dCgpIG9uIHRoZSBwcmV2aW91cyBub2Rl
IHdoZW4gYWR2YW5jaW5nLgoKSW5zaWRlIHRoZSBsb29wLCB0aGUgbm9kZSBpcyBhc3NpZ25lZCB0
byB0aGUgU1BNSSBkZXZpY2U6CgoJZGV2aWNlX3NldF9ub2RlKCZzZGV2LT5kZXYsIG9mX2Z3bm9k
ZV9oYW5kbGUobm9kZSkpOwoKRG9lcyB0aGlzIGFzc2lnbm1lbnQgbmVlZCB0byBpbnZva2Ugb2Zf
bm9kZV9nZXQoKSB0byBpbmNyZW1lbnQgdGhlIG5vZGUncwpyZWZlcmVuY2UgY291bnQ/IFdpdGhv
dXQgaXQsIHdoZW4gdGhlIGxvb3AgYWR2YW5jZXMsIHRoZSBub2RlJ3MgcmVmZXJlbmNlCmlzIGRy
b3BwZWQsIGxlYXZpbmcgc2Rldi0+ZGV2Lm9mX25vZGUgYXMgYSBkYW5nbGluZyBwb2ludGVyLgoK
SWYgdGhlIGRldmljZSB0cmVlIG5vZGUgaXMgZHluYW1pY2FsbHkgbWFuYWdlZCAoZS5nLiwgdmlh
IERUIG92ZXJsYXlzKSwKdW5sb2FkaW5nIHRoZSBvdmVybGF5IHdpbGwgZnJlZSB0aGUgbm9kZSwg
Y2F1c2luZyBhIHVzZS1hZnRlci1mcmVlIHdoZW5ldmVyCnRoZSBhY3RpdmUgU1BNSSBkZXZpY2Ug
bGF0ZXIgYWNjZXNzZXMgaXRzIG9mX25vZGUuCgpBZGRpdGlvbmFsbHksIGRyaXZlcnMvc3BtaS9z
cG1pLmM6c3BtaV9kZXZfcmVsZWFzZSgpIGxhY2tzIGFuIG9mX25vZGVfcHV0KCkKdG8gYmFsYW5j
ZSB0aGUgcmVxdWlyZWQgcmVmZXJlbmNlOgoKc3RhdGljIHZvaWQgc3BtaV9kZXZfcmVsZWFzZShz
dHJ1Y3QgZGV2aWNlICpkZXYpCnsKCXN0cnVjdCBzcG1pX2RldmljZSAqc2RldiA9IHRvX3NwbWlf
ZGV2aWNlKGRldik7CgoJa2ZyZWUoc2Rldik7Cn0KClNob3VsZCBzcG1pX2Rldl9yZWxlYXNlKCkg
YmUgdXBkYXRlZCB0byBzYWZlbHkgcmVsZWFzZSB0aGUgcmVmZXJlbmNlIG9uY2UKaXQgaXMgY29y
cmVjdGx5IG9idGFpbmVkPwoKPiAgCQkJc3BtaV9kZXZpY2VfcHV0KHNkZXYpOwo+ICAJCX0KPiAg
CX0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hz
ZXQvMjAyNjA2MDgxMDA5NDkuMzYzMDktMS1hbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxh
Ym9yYS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
