Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36B56CD37BE
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 04:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yD+kWt0fGOUzSGkFRorBgALuDFMf6truKjr6KMihOs=; b=zHKl0anL2uLhdK
	tlsFLitZvvwKF5q252jbeYVRNjzJcbeRLJJ/0I/EdaxG8ekjTq/PEGrK18F6UK1O2pkjP1SW7FnqO
	tyqb78wyvvaLEd9U5c2CNaC9clVjsBRqZBim1as2EYj0Yufh0/5uH7wlXGEnki2oRrhrmhkefhfia
	gjRXmwkjJPb63K6YZEa+NQNWkrY31hd+upXZh9h2QRtB/V1XqvIWh4333jkk34pOToypQAaDuF/WZ
	HUtU0h0gek9N8RZbmYsvC1/B2Lip8zvH3mp3ss+FX1UaCOFkCgTcG0ylbXZVCIDyEx9o2eu2U1hLn
	nbxYw1ozRCk9Kn+xFpkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMeVQ-0000000FRgX-3C1u;
	Tue, 12 May 2026 04:14:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMeVP-0000000FRgI-1OyE
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 04:14:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 461376001A;
	Tue, 12 May 2026 04:14:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF62CC2BCB0;
	Tue, 12 May 2026 04:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778559242;
	bh=LGhS/EqeJ+hnu+1hnC8/QCDSuS/iA7Cc/jvuwZTZ44o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=PBIuhfafrQRbAGoiwGRgCQVnOrxqN3NOSUFxB5PZVRRN9aLBTLoiRhH0xVZs7zhUI
	 rLPkHIYtEuvXGLZbiRVYaWCZMSluo74awu2A7VXUnL6Sf1M6//Mx+8LSBfFQVhZ2R0
	 Rcs46oOZbp7r6PZZvS/tHQOE4DSANXUpRvagd0Ow9ZstuZxs2CJnYMzd1/3OaUQhoZ
	 l+QDUjBZfZvd755JVD3ZbICy8+vlqZkFdiZZ5zXOzjg16YWE6r/ym/4iY6e3xHu6E2
	 xPsXyw/W98+McMVsHHDanyuKe+fFhM4b6wMXaC8W+ZX2iVoa1PFBBLDL0gBEofNGvw
	 OIIjYPiiQ2X5A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RESEND v8 05/10] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260511100805.121432-6-angelogioacchino.delregno@collabora.com>
References: <20260511100805.121432-6-angelogioacchino.delregno@collabora.com>
Date: Tue, 12 May 2026 04:14:01 +0000
Message-Id: <20260512041401.AF62CC2BCB0@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFVuY29uZGl0aW9uYWwg
Y2FzdCBvZiBgZGV2LT5wYXJlbnRgIHRvIGBzdHJ1Y3Qgc3BtaV9kZXZpY2VgIHdpdGhvdXQgdHlw
ZSBjaGVja2luZyBjYXVzZXMgYSBrZXJuZWwgcGFuaWMgb24gbWFsZm9ybWVkIGRldmljZSB0b3Bv
bG9neS4KLS0KCmNvbW1pdCBhYTgzMDQ4ZTc3MWJhOGE2ZmNiYjA5ZDZkMDRjYzZiYjBhYmM1ODU5
CkF1dGhvcjogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVs
cmVnbm9AY29sbGFib3JhLmNvbT4KCm52bWVtOiBxY29tLXNwbWktc2RhbTogTWlncmF0ZSB0byBk
ZXZtX3NwbWlfc3ViZGV2aWNlX2FsbG9jX2FuZF9hZGQoKQoKVGhpcyBjb21taXQgbWlncmF0ZXMg
dGhlIFNEQU0gZHJpdmVyIHRvIHJlZ2lzdGVyIGl0cyBvd24gU1BNSSBzdWItZGV2aWNlCmFuZCBp
bml0aWFsaXplIGEgZGVkaWNhdGVkIHJlZ21hcC4gVGhpcyBhbGxvd3MgdGhlIHJlZ21hcCBBUEkg
dG8gaGFuZGxlCnRoZSBiYXNlIGFkZHJlc3Mgb2Zmc2V0cyBhdXRvbWF0aWNhbGx5IGluc3RlYWQg
b2YgbWFudWFsbHkgYWRkaW5nIHRoZSBiYXNlCmFkZHJlc3MgdG8gZXZlcnkgcmVhZC93cml0ZSBj
YWxsLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lbS9xY29tLXNwbWktc2RhbS5jIGIvZHJp
dmVycy9udm1lbS9xY29tLXNwbWktc2RhbS5jCj4gLS0tIGEvZHJpdmVycy9udm1lbS9xY29tLXNw
bWktc2RhbS5jCj4gKysrIGIvZHJpdmVycy9udm1lbS9xY29tLXNwbWktc2RhbS5jCgpbIC4uLiBd
Cgo+IEBAIC0xMTAsOCArMTEwLDE3IEBAIHN0YXRpYyBpbnQgc2RhbV93cml0ZSh2b2lkICpwcml2
LCB1bnNpZ25lZCBpbnQgb2Zmc2V0LCB2b2lkICp2YWwsCj4gIAo+ICBzdGF0aWMgaW50IHNkYW1f
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgewoKWyAuLi4gXQoKPiBAQCAt
MTE5LDE5ICsxMjgsMjMgQEAgc3RhdGljIGludCBzZGFtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gIAlpZiAoIXNkYW0pCj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4gIAo+IC0J
c2RhbS0+cmVnbWFwID0gZGV2X2dldF9yZWdtYXAocGRldi0+ZGV2LnBhcmVudCwgTlVMTCk7Cj4g
LQlpZiAoIXNkYW0tPnJlZ21hcCkgewo+IC0JCWRldl9lcnIoJnBkZXYtPmRldiwgIkZhaWxlZCB0
byBnZXQgcmVnbWFwIGhhbmRsZVxuIik7Cj4gLQkJcmV0dXJuIC1FTlhJTzsKPiAtCX0KPiArCXNw
YXJlbnQgPSB0b19zcG1pX2RldmljZShkZXYtPnBhcmVudCk7Cj4gKwlzdWJfc2RldiA9IGRldm1f
c3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZChkZXYsIHNwYXJlbnQpOwoKQ291bGQgdGhpcyBs
ZWFkIHRvIGEga2VybmVsIHBhbmljIGlmIHRoZSBkZXZpY2UgaXMgaW5zdGFudGlhdGVkIHdpdGgg
YQptYWxmb3JtZWQgZGV2aWNlIHRyZWU/CgpJZiB0aGUgZGV2aWNlIGlzIHBsYWNlZCBhdCB0aGUg
cm9vdCBub2RlIHdoZXJlIGRldi0+cGFyZW50IGlzIE5VTEwsIG9yIHVuZGVyCmEgbm9uLVNQTUkg
YnVzLCB0b19zcG1pX2RldmljZSgpIHdpbGwgcmV0dXJuIGFuIGludmFsaWQgc3BtaV9kZXZpY2Ug
cG9pbnRlcgpiZWNhdXNlIGl0IHVuY29uZGl0aW9uYWxseSBjYXN0cyBkZXYtPnBhcmVudC4KClBh
c3NpbmcgdGhpcyBpbnZhbGlkIHBvaW50ZXIgdG8gZGV2bV9zcG1pX3N1YmRldmljZV9hbGxvY19h
bmRfYWRkKCkgd291bGQgY2F1c2UKYSBjcmFzaCB3aGVuIGl0IGFjY2Vzc2VzIHRoZSBzcG1pX2Rl
dmljZSBmaWVsZHMuCgpUaGUgcHJldmlvdXMgaW1wbGVtZW50YXRpb24gc2FmZWx5IGhhbmRsZWQg
dGhpcyBieSBjYWxsaW5nIGRldl9nZXRfcmVnbWFwKCksCndoaWNoIHJldHVybnMgTlVMTCBvbiBh
biBpbnZhbGlkIHBhcmVudCBhbmQgZ3JhY2VmdWxseSBmYWlscyB3aXRoIC1FTlhJTy4KCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1
MTExMDA4MDUuMTIxNDMyLTEtYW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29t
P3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
