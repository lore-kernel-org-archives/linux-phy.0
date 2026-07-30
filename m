Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D03AC54FD2
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 10:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d6j9j+ujgOd7zUyb+sj0QwmRoSnpdAKJAMAXvZDfbAU=; b=pJIxdu2UPJgtlr
	o37GqxjWpe2GbPbwxe5MxSLMhi96wV0M4lIMTwX3IEb5b90Sl0VFw9jdKp9nyhFFxXdpNuFl0/5JI
	DG+laI+kxLuIpvuMWRZeeYoqgTbhBVefcH09NkYeM4f7/RlgkMNRGcp78BDLm2aA4BQhDsOUZ3NqY
	bVaXO3lWnpIW85mM+ZWi9hsUib4jPDfBASVgXaL+hUnVrHjoxWPBuHt5SVa+7Ezv3zC8qo3JXenxc
	HvhBhXAuKQux2nDgB8YsOsfvzbUsLrKB26G6XA4vKp+EB0f2HTuAzyWfRAVvFPjsswUjO/T5soOHo
	ZM+U4v8ntHwmUFEsRWVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpOOU-0000000AHI6-3UwB;
	Thu, 30 Jul 2026 10:53:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpOOT-0000000AHHz-32CB
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 10:53:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E6DF4600B0;
	Thu, 30 Jul 2026 10:53:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D80FA1F000E9;
	Thu, 30 Jul 2026 10:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785408820;
	bh=pJDOR8Kv5HZvweVN+eeDRb3EHC5i492sV6j2rZCPFfc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jq4NcSy3EVrqGW+u3uFp9qXCqxsDwk+mi4hS/o8Nzq8mmFwTnE8KULoN9SRKl8vLN
	 jcJpck0h91CykH3LiAva5XpPGQP8yibLHNP3nGJbsyS0WJcJraCRcQ8D2DuH8hcw75
	 AHpwUNb1DZrBdG7p6sZcwbFGfzL/s4EYYaVI/Xr8G1I5WFF13lGJsQNZoZ09zQv7ju
	 d0T1BnhjtrU/ebz+Eso+lpfVl4hwV3rNMvU77Ez+7i2wZ6Q+2024MxfEPwVkZazmaY
	 cVLrxGIvakoBE9QEMLSBbUjR/mj4W+1KTbFazzSzcnyEiBhE2WmYtUZiWDK+l5NCGO
	 eK2uH4i+NPFqQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 20/26] scsi: ufs: mediatek: Back up idle timer in
 per-instance struct
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, linux-scsi@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260730-mt8196-ufs-v10-20-bc5ecef202dc@collabora.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
 <20260730-mt8196-ufs-v10-20-bc5ecef202dc@collabora.com>
Date: Thu, 30 Jul 2026 10:53:39 +0000
Message-Id: <20260730105339.D80FA1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBTa2lwcGVkIFBPU1RfQ0hBTkdFIG5vdGlmaWNhdGlvbiBvbiBwb3dlciBjaGFuZ2Ug
ZmFpbHVyZSBsZWFkcyB0byBwZXJtYW5lbnQgbG9zcyBvZiBhdXRvLWhpYmVybmF0ZSBjb25maWd1
cmF0aW9uLCBkaXNhYmxpbmcgQXV0by1IaWJlcm44LgotLQoKLS0tIFBhdGNoIFsyMF06IFtQQVRD
SCB2MTAgMjAvMjZdIHNjc2k6IHVmczogbWVkaWF0ZWs6IEJhY2sgdXAgaWRsZSB0aW1lciBpbiBw
ZXItaW5zdGFuY2Ugc3RydWN0IC0tLQpjb21taXQgMzFkYTgwZjM4MDU4YjI1MTMxMGIwOGFkZjYx
NmNkZWQxMzdhMWJjZApBdXRob3I6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFy
b2xpQGNvbGxhYm9yYS5jb20+CgpzY3NpOiB1ZnM6IG1lZGlhdGVrOiBCYWNrIHVwIGlkbGUgdGlt
ZXIgaW4gcGVyLWluc3RhbmNlIHN0cnVjdAoKVGhpcyBjb21taXQgbW92ZXMgdGhlIGJhY2t1cCBv
ZiB0aGUgYXV0by1oaWJlcm5hdGUgaWRsZSB0aW1lciBmcm9tIGEKc3RhdGljIGxvY2FsIHZhcmlh
YmxlIHRvIGEgcGVyLWluc3RhbmNlIGhvc3Qgc3RydWN0IG1lbWJlci4gVGhpcyBlbnN1cmVzCmNv
cnJlY3QgYmVoYXZpb3Igd2hlbiBtdWx0aXBsZSBpbnN0YW5jZXMgb2YgdGhlIGRyaXZlciBhcmUg
bG9hZGVkLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYyBi
L2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKPiBpbmRleCBjNzg0ZWNiMzBlNzRlLi4x
MTUwNTY5MjcyMjNmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVr
LmMKPiArKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCj4gQEAgLTE0MDAsMjcg
KzE0MDAsMjQgQEAgc3RhdGljIGludCB1ZnNfbXRrX3B3cl9jaGFuZ2Vfbm90aWZ5KHN0cnVjdCB1
ZnNfaGJhICpoYmEsCj4gIAkJCQllbnVtIHVmc19ub3RpZnlfY2hhbmdlX3N0YXR1cyBzdGFnZSwK
PiAgCQkJCXN0cnVjdCB1ZnNfcGFfbGF5ZXJfYXR0ciAqZGV2X3JlcV9wYXJhbXMpCj4gIHsKPiAt
CWludCByZXQgPSAwOwo+IC0Jc3RhdGljIHUzMiByZWc7Cj4gKwlzdHJ1Y3QgdWZzX210a19ob3N0
ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7Cj4gIAo+ICAJc3dpdGNoIChzdGFnZSkg
ewo+ICAJY2FzZSBQUkVfQ0hBTkdFOgo+ICAJCWlmICh1ZnNoY2RfaXNfYXV0b19oaWJlcm44X3N1
cHBvcnRlZChoYmEpKSB7Cj4gLQkJCXJlZyA9IHVmc2hjZF9yZWFkbChoYmEsIFJFR19BVVRPX0hJ
QkVSTkFURV9JRExFX1RJTUVSKTsKPiArCQkJaG9zdC0+YWhpdCA9IHVmc2hjZF9yZWFkbCgKPiAr
CQkJCWhiYSwgUkVHX0FVVE9fSElCRVJOQVRFX0lETEVfVElNRVIpOwoKW1NldmVyaXR5OiBIaWdo
XQpUaGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IGRvZXMgdGhp
cyBzZXF1ZW5jZSBwZXJtYW5lbnRseQpkaXNhYmxlIEF1dG8tSGliZXJuOCBpZiBhIHBvd2VyIGNo
YW5nZSBmYWlscz8KCklmIGEgRE1FIHBvd2VyIG1vZGUgY2hhbmdlIGZhaWxzLCB0aGUgVUZTIGNv
cmUgaW4gdWZzaGNkX2NoYW5nZV9wb3dlcl9tb2RlKCkKc2tpcHMgdGhlIFBPU1RfQ0hBTkdFIG5v
dGlmaWNhdGlvbjoKCmRyaXZlcnMvdWZzL2NvcmUvdWZzaGNkLmM6dWZzaGNkX2NoYW5nZV9wb3dl
cl9tb2RlKCkgewogICAgLi4uCiAgICByZXQgPSB1ZnNoY2RfZG1lX2NoYW5nZV9wb3dlcl9tb2Rl
KGhiYSwgcHdyX21vZGUpOwogICAgaWYgKCFyZXQpCiAgICAgICAgdWZzaGNkX3ZvcHNfcHdyX2No
YW5nZV9ub3RpZnkoaGJhLCBQT1NUX0NIQU5HRSwgcHdyX21vZGUpOwogICAgLi4uCn0KCkJlY2F1
c2UgUE9TVF9DSEFOR0UgaXMgc2tpcHBlZCwgdGhlIGhhcmR3YXJlIHJlZ2lzdGVyIHJlbWFpbnMg
YXQgMCAoc2luY2UKaXQgd2FzIGRpc2FibGVkIHJpZ2h0IGJlbG93IGJ5IHVmc19tdGtfYXV0b19o
aWJlcm44X2Rpc2FibGUpLgoKT24gdGhlIG5leHQgcG93ZXIgbW9kZSBjaGFuZ2UgYXR0ZW1wdCwg
UFJFX0NIQU5HRSB3aWxsIHJ1biBhZ2FpbiBhbmQgcmVhZCB0aGUKY3VycmVudCByZWdpc3RlciB2
YWx1ZSAoMCkgaW50byBob3N0LT5haGl0LCBvdmVyd3JpdGluZyB0aGUgdmFsaWQgYmFja3VwLgpX
aGVuIFBPU1RfQ0hBTkdFIGV2ZW50dWFsbHkgc3VjY2VlZHMsIGl0IHdpbGwgd3JpdGUgMCBiYWNr
IHRvIHRoZSByZWdpc3RlciwKbGVhdmluZyBBdXRvLUhpYmVybjggcGVybWFuZW50bHkgZGlzYWJs
ZWQgdW50aWwgYSByZXNldCBvciBzdXNwZW5kL3Jlc3VtZS4KCj4gIAkJCXVmc19tdGtfYXV0b19o
aWJlcm44X2Rpc2FibGUoaGJhKTsKPiAgCQl9CgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZp
ZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzMwLW10ODE5Ni11ZnMt
djEwLTAtYmM1ZWNlZjIwMmRjQGNvbGxhYm9yYS5jb20/cGFydD0yMAoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
