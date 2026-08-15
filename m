Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 628E4C5CFDB
	for <linux-phy@archiver.kernel.org>; Sat, 15 Aug 2026 09:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CrrMysLtVCG0r+hw/X10Nb4hDWx78k+Cba5DTsUwCJU=; b=m/rNFRxB3DJPDw
	Sc9O0MKhYgc48Vv6ce/6jHYdPO14dSpNRfda6IrYCH85gttPCJDcYKefjaR3F/Z0rWfu9H4rB8Go/
	63Af6cl+/YLgx/tth/bL5XiSSaGMFPvJTgw3otLWUAXLQlKrXt781YgGSTREVnZYrAh/NvUhAWH05
	LJS+ALlE9O5BhbNopzMVGLo0cZctQbKWbBBHxuXxA36Uu2Gb8nB/czW8HQKIxR+jdrXEuKPQcbRyT
	tDGFr+KSVu/9V/kxWKAWL3ruA2Wjr8I+LhMzGcWna7n3mZbbS3t2lDmEhdA1zXbRzD5ilOtDvCwuh
	XX/6pjg7xmJa8+4AKXMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvAdh-00000003hw6-3jdo;
	Sat, 15 Aug 2026 09:25:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvAdg-00000003hvv-27DH
	for linux-phy@lists.infradead.org;
	Sat, 15 Aug 2026 09:25:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 074C241ACC;
	Sat, 15 Aug 2026 09:25:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 774B81F000E9;
	Sat, 15 Aug 2026 09:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786785915;
	bh=IeuBY3zCLztuKo8iMw9s6cVFsBYoMp8CQKm7vor4Q58=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mU2BV+Jo3Pgp+GuogrB+MuuiNK0dAvL3Vgx++gNfZ3wbcO6m57X6r1hFDV2FE2A9I
	 BPV9ayCj9afVj+NnOjBeBPdV8BbzztFaKrAV6o2rO5WFZHsTNc9ueMYATfYSmM9KKL
	 1pOFLalOO7EjhgBVCuUWZa4IQG63UOZfkJmuCWdOssBjPBcVpMdrqhyxOpxNVU+AZ7
	 nVGbbIII186D0Ncbi8Rc4prpYFpzJmLFenlm5vfFvcqxp0aLeb2nlRI62oV0YJCtz7
	 AhBdq8/+aVDbtIiMgp+YvHzluc5J9OWoyK4/6Bp+QGtQzNvMuRFHKkdXnfdymiogvr
	 RxbdjStuKSIOQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 3/6] dt-bindings: phy: realtek,usb2phy.yaml: extend
 for resets and RTL9607C support
To: "Rustam Adilov" <adilov@disroot.org>
Cc: neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260815091340.26910-4-adilov@disroot.org>
References: <20260815091340.26910-1-adilov@disroot.org>
 <20260815091340.26910-4-adilov@disroot.org>
Date: Sat, 15 Aug 2026 09:25:15 +0000
Message-Id: <20260815092515.774B81F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVW51c2VkIGByZWFkYCBm
dW5jdGlvbiBwb2ludGVyIGluIGBzdHJ1Y3QgcGh5X3JlZ19kZXNjYC4KLS0KCi0tLSBQYXRjaCBb
M106IFtQQVRDSCB2NyAzLzZdIGR0LWJpbmRpbmdzOiBwaHk6IHJlYWx0ZWssdXNiMnBoeS55YW1s
OiBleHRlbmQgZm9yIHJlc2V0cyBhbmQgUlRMOTYwN0Mgc3VwcG9ydCAtLS0KY29tbWl0IDE2ZjY1
ZDE1MjU1YmU3MDQyYzAyZGZlNzQ2NTI2YzhiZDZiMGVmYzkKQXV0aG9yOiBSdXN0YW0gQWRpbG92
IDxhZGlsb3ZAZGlzcm9vdC5vcmc+CgpkdC1iaW5kaW5nczogcGh5OiByZWFsdGVrLHVzYjJwaHku
eWFtbDogZXh0ZW5kIGZvciByZXNldHMgYW5kIFJUTDk2MDdDIHN1cHBvcnQKClRoaXMgY29tbWl0
IGFkZHMgdGhlIHJlYWx0ZWsscnRsOTYwNy11c2IycGh5IGNvbXBhdGlibGUgZm9yIHRoZSBVU0Iy
IFBIWQpvbiB0aGUgUlRMOTYwN0MgU29DIHNlcmllcy4gSXQgYWxzbyBpbnRyb2R1Y2VzIGEgcmVz
ZXRzIHByb3BlcnR5IHRvCmRlc2NyaWJlIHRoZSBtdWx0aXB1cnBvc2UgVVNCMiBQSFkgcmVzZXQg
bGluZSwgbWFraW5nIGl0IHJlcXVpcmVkIGZvcgp0aGUgUlRMOTYwN0MgU29DIHdoaWxlIGV4cGxp
Y2l0bHkgZGlzYWJsaW5nIGl0IGZvciBvdGhlciBSVEQgZGV2aWNlcy4KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IyLmMgYi9kcml2ZXJzL3BoeS9yZWFsdGVr
L3BoeS1ydGstdXNiMi5jCj4gaW5kZXggZThkMGYwMTE5ZWMwYS4uNWU0ODNjODUzZjAyZiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstdXNiMi5jCj4gKysrIGIvZHJp
dmVycy9waHkvcmVhbHRlay9waHktcnRrLXVzYjIuYwo+IEBAIC02NCw2ICs2NCw4IEBAIHN0cnVj
dCBwaHlfcmVnX2Rlc2Mgewo+ICAJaW50IHZzdGF0dXNfb2Zmc2V0Owo+ICAJdTMyIHZzdGF0dXNf
YnVzeTsKPiAgCXUzMiBuZXdfcmVnX3JlcTsKPiArCXUzMiAoKnJlYWQpKHZvaWQgX19pb21lbSAq
cmVnKTsKCltTZXZlcml0eTogTG93XQpJcyB0aGlzIHJlYWQgZnVuY3Rpb24gcG9pbnRlciBldmVy
IGNvbnN1bWVkPwoKSXQgYXBwZWFycyB0byBiZSBhZGRlZCB0byB0aGUgZGVzY3JpcHRvciBzdHJ1
Y3QgYnV0IGlzIG5ldmVyIGNhbGxlZAphbnl3aGVyZSBpbiB0aGUgZHJpdmVyLgoKPiArCXZvaWQg
KCp3cml0ZSkodTMyIHZhbCwgdm9pZCBfX2lvbWVtICpyZWcpOwo+ICB9OwoKWyAuLi4gXQoKPiBA
QCAtMTMwLDYgKzEzMiwxNiBAQCBzdHJ1Y3QgcnRrX3BoeSB7Cj4gIAlzdHJ1Y3QgZGVudHJ5ICpk
ZWJ1Z19kaXI7Cj4gIH07Cj4gIAo+ICtzdGF0aWMgdTMyIHJ0a191c2IycGh5X3JlYWQodm9pZCBf
X2lvbWVtICpyZWcpCj4gK3sKPiArCXJldHVybiByZWFkbChyZWcpOwo+ICt9CgpbU2V2ZXJpdHk6
IExvd10KSXMgaXQgbmVjZXNzYXJ5IHRvIGltcGxlbWVudCB0aGlzIGRlZmF1bHQgcmVhZCBmdW5j
dGlvbj8KClNpbmNlIHRoZSByZWFkIGZ1bmN0aW9uIHBvaW50ZXIgaW4gc3RydWN0IHBoeV9yZWdf
ZGVzYyBpcyB1bnVzZWQsIHRoaXMKaW1wbGVtZW50YXRpb24gbWlnaHQgYmUgZGVhZCBjb2RlLgoK
PiArCj4gK3N0YXRpYyB2b2lkIHJ0a191c2IycGh5X3dyaXRlKHUzMiB2YWwsIHZvaWQgX19pb21l
bSAqcmVnKQo+ICt7Cj4gKwl3cml0ZWwodmFsLCByZWcpOwo+ICt9CgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODE1MDkxMzQwLjI2
OTEwLTEtYWRpbG92QGRpc3Jvb3Qub3JnP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
