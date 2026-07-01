Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12FB2C43327
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 12:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+BYUlwUO9n2vUPQBrqyck+cXGAAac9kCynLHARf+fc=; b=0Pixa7sdM1r3fv
	3LJe2jeu85z06VsgB7M9iKjhmTTPQ74OLnT42nE1BwyaNLhXahHjsfkNUwk9W3nzaGcVr1vQBgHTc
	92MwbrSo3aCXzJBXDc0TU0yELoNoHWtZguM3fR522z4h4xpkH0g64LPxeouj43H4oQplg66R5udem
	IIxoi4LRnDBPCVVqJ3kGGc7bSTv+RvTfold5CQjSs9OBN2kBgjdyPXlK88j6Q5NQjXCvystuJCQd0
	uRDt0kpwdCS4+drlJxXKWA0M2DW+qHmXBmeyvO2vBCVYps2TkHOF/75db0hCWMDgum7dJjNMtcKxg
	VlkmapQcpgePvRrMErIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weu1s-00000001zS9-3TCR;
	Wed, 01 Jul 2026 12:27:00 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weu1r-00000001zRl-10OT
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 12:26:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CA821417D1;
	Wed,  1 Jul 2026 12:26:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 307E21F000E9;
	Wed,  1 Jul 2026 12:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782908818;
	bh=52TWOxi0a9pzDOPVJc9NbYPQ8WvoOLt636S3MKAbHJA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YMX46vOGtug9PRPhaH8+H3L/5/KdufZTz7PM5e2MY4oETmZAvnVYqLv2bcaIMiV1c
	 185urfMN9u5KoQo7IamVLySokmd0AMTJrlbag6A6ilUyW4Wa6YRh/cyNPsLhNDil1J
	 gj6SZsmezNXYB3La4yiM+5mLoRVJaHbQ3bMYV9RQFIz7/3XrT+vf1PpMWaCsxd1H1v
	 o5+bFg8JZM5+RDVXjcY69jNUYF6OwIA9G3qm8cOL0mcf72CxTh6QB8xDCPDWArDp9w
	 WBvKt5DYeDLvxYgYIStdw/mR7Mkm24Nq2tFDGLbuHEAk5tKO3UaqsbAOoEKMHiM8UM
	 sZvd//fWXmbvQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 02/12] phy: phy-mtk-dp: Rename regs to regmap in struct
 mtk_dp_phy
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org, robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260701122008.19509-3-angelogioacchino.delregno@collabora.com>
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
 <20260701122008.19509-3-angelogioacchino.delregno@collabora.com>
Date: Wed, 01 Jul 2026 12:26:57 +0000
Message-Id: <20260701122658.307E21F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBNaXNzaW5nIE5VTEwgY2hlY2sgZm9yIGBkZXYtPnBsYXRmb3JtX2RhdGFgIGJlZm9y
ZSBkZXJlZmVyZW5jaW5nLgotIFtIaWdoXSBNaXNzaW5nIGByZW1vdmVgIGNhbGxiYWNrIHRvIGNs
ZWFuIHVwIFBIWSBsb29rdXAgbGVhZHMgdG8gYSBtZW1vcnkgbGVhayBhbmQgdXNlLWFmdGVyLWZy
ZWUuCi0tCgpjb21taXQgYTFhOTZlNDI5Y2YzMzQ1NDcyYWFlMWIwNmY2ZmZlNWIzMWVkZWU4MQpB
dXRob3I6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJl
Z25vQGNvbGxhYm9yYS5jb20+CgpwaHk6IHBoeS1tdGstZHA6IFJlbmFtZSByZWdzIHRvIHJlZ21h
cCBpbiBzdHJ1Y3QgbXRrX2RwX3BoeQoKSW4gcHJlcGFyYXRpb24gdG8gcGVyZm9ybSBmdXJ0aGVy
IGNsZWFudXBzIGFuZCB0byBleHRlbmQgdGhlIGRyaXZlciB0bwpzdXBwb3J0IG1vcmUgU29Dcywg
cmVuYW1lIHRoZSByZWdzIG1lbWJlciB0byByZWdtYXAgdG8gaW1wcm92ZSByZWFkYWJpbGl0eSwK
YXMgdGhpcyBpcyBhIGNvbW1vbiBuYW1lIGFjcm9zcyBtYW55IGtlcm5lbCBkcml2ZXJzIGZvciBh
IHN0cnVjdCByZWdtYXAuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHkt
bXRrLWRwLmMgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWRwLmMKPiBpbmRleCBkNzAy
NGExNDQzMzU4Li5iZjdiM2E5NWU3MmQyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L21lZGlh
dGVrL3BoeS1tdGstZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAu
YwpbIC4uLiBdCj4gQEAgLTE3Niw3ICsxNzYsNyBAQCBzdGF0aWMgaW50IG10a19kcF9waHlfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKCltTZXZlcml0eTogSGlnaF0KVGhpcyBp
cyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGlzIGl0IHBvc3NpYmxlIGZvciBkZXYtPnBsYXRm
b3JtX2RhdGEgdG8gYmUKTlVMTCBoZXJlPwoKRWFybGllciBpbiBtdGtfZHBfcGh5X3Byb2JlKCks
IGRldi0+cGxhdGZvcm1fZGF0YSBpcyBkZXJlZmVyZW5jZWQgZGlyZWN0bHkKd2l0aG91dCBhIGNo
ZWNrOgoKZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1kcC5jOm10a19kcF9waHlfcHJvYmUo
KSB7CgkuLi4KCXN0cnVjdCByZWdtYXAgKnJlZ3M7CgoJcmVncyA9ICooc3RydWN0IHJlZ21hcCAq
KilkZXYtPnBsYXRmb3JtX2RhdGE7CglpZiAoIXJlZ3MpCgkuLi4KfQoKSWYgdGhlIGRyaXZlciBp
cyBtYW51YWxseSBib3VuZCB2aWEgc3lzZnMgKG9yIG90aGVyd2lzZSBpbnN0YW50aWF0ZWQgd2l0
aG91dApwbGF0Zm9ybSBkYXRhKSwgZGV2LT5wbGF0Zm9ybV9kYXRhIHdpbGwgYmUgTlVMTC4KClNo
b3VsZCB0aGUgY29kZSB2YWxpZGF0ZSB0aGF0IGRldi0+cGxhdGZvcm1fZGF0YSBpcyBub3QgTlVM
TCBiZWZvcmUKZGVyZWZlcmVuY2luZyBpdCB0byBhdm9pZCBhIGtlcm5lbCBwYW5pYz8KCltTZXZl
cml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gsIGJ1
dCBkb2VzIHRoaXMgZHJpdmVyIGxlYWsgdGhlCnBoeV9sb29rdXAgc3RydWN0IGFuZCBsZWF2ZSBh
IGRhbmdsaW5nIHBvaW50ZXIgaWYgaXQgZ2V0cyB1bmJvdW5kPwoKSW4gbXRrX2RwX3BoeV9wcm9i
ZSgpLCB3aGVuICFkZXYtPm9mX25vZGUgaXMgdHJ1ZSwgYSBsb29rdXAgZW50cnkgaXMKcmVnaXN0
ZXJlZDoKCmRyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYzptdGtfZHBfcGh5X3Byb2Jl
KCkgewoJLi4uCglpZiAoIWRldi0+b2Zfbm9kZSkKCQlwaHlfY3JlYXRlX2xvb2t1cChwaHksICJk
cCIsIGRldl9uYW1lKGRldikpOwoKCXJldHVybiAwOwp9CgpIb3dldmVyLCBtdGtfZHBfcGh5X2Ry
aXZlciBkb2VzIG5vdCBoYXZlIGEgLnJlbW92ZSBjYWxsYmFjayB0byBjYWxsCnBoeV9yZW1vdmVf
bG9va3VwKCk6Cgpkcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWRwLmM6CnN0YXRpYyBzdHJ1
Y3QgcGxhdGZvcm1fZHJpdmVyIG10a19kcF9waHlfZHJpdmVyID0gewoJLnByb2JlID0gbXRrX2Rw
X3BoeV9wcm9iZSwKCS5kcml2ZXIgPSB7CgkJLm5hbWUgPSAibWVkaWF0ZWstZHAtcGh5IiwKCX0s
Cn07CgpJZiB0aGUgZHJpdmVyIGlzIHVuYm91bmQsIHRoZSBwaHlfbG9va3VwIHN0cnVjdCBpcyBs
ZWFrZWQgYW5kIHJlbWFpbnMgbGlua2VkCmluIHRoZSBnbG9iYWwgcGh5cyBsaXN0LiBTaW5jZSB0
aGUgcGh5IHN0cnVjdCBnZXRzIGZyZWVkIGJ5IHRoZQpkZXZpY2UtbWFuYWdlZCBzdWJzeXN0ZW0s
IHN1YnNlcXVlbnQgZGV2aWNlIHByb2JlcyBpdGVyYXRpbmcgdGhlIFBIWSBsb29rdXAKbGlzdCB3
b3VsZCB0cmlnZ2VyIGEgdXNlLWFmdGVyLWZyZWUuCgpDb3VsZCBhIC5yZW1vdmUgY2FsbGJhY2sg
YmUgYWRkZWQgdG8gdW5yZWdpc3RlciB0aGUgbG9va3VwIGFuZCBwcmV2ZW50IHRoaXM/Cgo+ICAJ
aWYgKCFkcF9waHkpCj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4gIAo+IC0JZHBfcGh5LT5yZWdzID0g
cmVnczsKPiArCWRwX3BoeS0+cmVnbWFwID0gcmVnczsKPiAgCXBoeSA9IGRldm1fcGh5X2NyZWF0
ZShkZXYsIE5VTEwsICZtdGtfZHBfcGh5X2Rldl9vcHMpOwo+ICAJaWYgKElTX0VSUihwaHkpKQo+
ICAJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihwaHkpLAoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcwMTEyMjAw
OC4xOTUwOS0xLWFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT9wYXJ0PTIK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
