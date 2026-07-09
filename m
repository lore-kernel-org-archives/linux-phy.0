Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA6B6C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 15:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PaTYaymD+Xbm4WgMIhjL08npGcQerISZsIu8t189L2M=; b=keDUyDF9pmWMOe
	c4uwmujM8c+HSbwISHb4ep78YiST4NGQZocm6CTCbr6yRL2TF5lr8UnSOhJlvdi5HUdLZ3eLOGdp+
	jJvppNF2JTCBYVcBgin2l+PmNXbH+H3FOnBdpf9imW28RlQUjskuyNeeZ+UcS5Oz+aK3TFJaFKG9+
	Jqfz9/V2zk3819vA3UPTPoSIr5Kj+t/1z/N3GnDiATbISl4FU5ZYEUK8qJwe9FFaeBg5tFVjX9qcK
	0q/FdC80YPbd55GnJVqlmk+7I59Yb2ukHAG4TvDCk7+t60JlXj9sCxiEaTXG9iLAtirzc4i/YntpL
	ZcnAyvsUwSVf8npdlA6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whqL8-00000002s8T-16zr;
	Thu, 09 Jul 2026 15:07:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whqL6-00000002s81-2t7P
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 15:07:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0B0FC43306;
	Thu,  9 Jul 2026 15:07:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E0301F000E9;
	Thu,  9 Jul 2026 15:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783609619;
	bh=/VJs97blzsqmmwlpVLCysRWeFjeCYGmhYUplljqOOwY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LlxLGFYm93x3jLlhQiMdrn1J3tDZ94vLh3ZAVTyiHNn6sg2FkwUnDcqAj9+YO0FAQ
	 gZCeS5OAJ0TejRG1l4epXSclxs4exeVafa5G8p5NiDCakA6sNzMUa5ZUCdqt/DPKCW
	 TD/Qa0GHdC1osZPy80vU4CRMk/AHBtgpRlbmLBxJ0Eo/mMphoQrWicVnTrKj7o8kHS
	 6cEMjbbTe2kyKe/9zjirAAXnbfYp4L3wnEbnp+XOv9e7WVdtPkgPdnwu1OwLIp2G2W
	 1uH8IVvHSDCqtwqU+mlb93EToGm593ijouDzCDh+ooPRhVQ6RkwYNu6KU7MkBhEkPR
	 R8jbuv6uovBmw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] phy: qcom: qmp-usb: Add support for SA8255P
To: "Mattijs Korpershoek" <mkorpershoek@kernel.org>
Cc: robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260709-phy-qcom-qmp-usb-8255-v2-2-3b6c26a45788@kernel.org>
References: <20260709-phy-qcom-qmp-usb-8255-v2-0-3b6c26a45788@kernel.org>
 <20260709-phy-qcom-qmp-usb-8255-v2-2-3b6c26a45788@kernel.org>
Date: Thu, 09 Jul 2026 15:06:58 +0000
Message-Id: <20260709150659.6E0301F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEluY29ycmVjdCBwb3dl
ciBkb21haW4gc2VxdWVuY2luZyBkdXJpbmcgZDAvZDMgdHJhbnNpdGlvbnMgcmlza3MgTm9DIGVy
cm9ycyBhbmQgYnVzIGhhbmdzLgotLQoKLS0tIFBhdGNoIFsyXTogW1BBVENIIHYyIDIvMl0gcGh5
OiBxY29tOiBxbXAtdXNiOiBBZGQgc3VwcG9ydCBmb3IgU0E4MjU1UCAtLS0KY29tbWl0IGMzMmJi
ZmQ4MTdjM2Y5ZmNhNGQyOTgyZWEzN2JlMzYzNTQ1MDFjYzcKQXV0aG9yOiBTcmlyYW0gRGFzaCA8
cXVpY19zcmlyYW1kQHF1aWNpbmMuY29tPgpTdWJqZWN0OiBwaHk6IHFjb206IHFtcC11c2I6IEFk
ZCBzdXBwb3J0IGZvciBTQTgyNTVQCgpUaGlzIGNvbW1pdCBhZGRzIHN1cHBvcnQgZm9yIHRoZSBT
QTgyNTVQIFNvQyB0byB0aGUgUU1QIFVTQiBQSFkgZHJpdmVyLiAKSXQgaW50cm9kdWNlcyBmaXJt
d2FyZS1tYW5hZ2VkIHJlc291cmNlcyB2aWEgU0NNSSB1c2luZyBwb3dlciBwcm90b2NvbHMsCm1h
bmFnaW5nIHN0YXRlIHRyYW5zaXRpb25zIChkMCwgZDEsIGQzKSB0aHJvdWdoIHRoZSAidXNiX2Nv
cmUiIGFuZAoidXNiX3RyYW5zZmVyIiBwb3dlciBkb21haW5zLgoKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVzYi5jIGIvZHJpdmVycy9waHkvcXVhbGNv
bW0vcGh5LXFjb20tcW1wLXVzYi5jCj4gaW5kZXggYzU1MDcxNjhlMTM1NC4uZDA4NWMxYWQ3ZmI1
YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiLmMK
PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdXNiLmMKClsgLi4uIF0K
Cj4gQEAgLTE4NjUsNiArMTg5MCw3NyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfY2Zn
IGdseW11cl91c2IzX3VuaXBoeV9jZmcgPSB7Cj4gIAkucmVncwkJCT0gcW1wX3Y3X3VzYjNwaHlf
cmVnc19sYXlvdXQsCj4gIH07CgpbIC4uLiBdCgo+ICsvKiBkM190b19kMCB0cmFuc2l0aW9uIGJ5
IHR1cm5pbmcgb24gYWxsIHRoZSBzdXBwbGllcnMgKi8KPiArc3RhdGljIGludCBxbXBfdXNiX2Qz
X3RvX2QwKHN0cnVjdCBxbXBfdXNiICpxbXApCj4gK3sKPiArCWludCByZXQ7Cj4gKwo+ICsJaWYg
KCFxbXAtPnBkX2xpc3QpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICsJcmV0ID0gcG1fcnVudGltZV9y
ZXN1bWVfYW5kX2dldChxbXAtPnBkX2xpc3QtPnBkX2RldnNbMF0pOwo+ICsJaWYgKHJldCkKPiAr
CQlyZXR1cm4gcmV0Owo+ICsKPiArCXJldCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQocW1w
LT5wZF9saXN0LT5wZF9kZXZzWzFdKTsKPiArCWlmIChyZXQpCj4gKwkJcG1fcnVudGltZV9wdXRf
c3luYyhxbXAtPnBkX2xpc3QtPnBkX2RldnNbMF0pOwo+ICsKPiArCXJldHVybiByZXQ7Cj4gK30K
CltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIHNlcXVlbmNlIHBvd2VyIHVwIHRoZSBkb21haW5z
IGluIHRoZSB3cm9uZyBvcmRlcj8KClRoZSBjb21taXQgbWVzc2FnZSBub3RlcyB0aGF0ICJ1c2Jf
Y29yZSIgKHdoaWNoIG1hcHMgdG8gcGRfZGV2c1sxXSBiYXNlZCBvbiAKdGhlIHFtcF91c2JfZG9t
YWluX2F0dGFjaCBvcmRlcikgY29udHJvbHMgdGhlIEdEU0MsIHdoaWxlICJ1c2JfdHJhbnNmZXIi
IAoocGRfZGV2c1swXSkgY29udHJvbHMgY2xvY2tzIGFuZCBpbnRlcmNvbm5lY3RzLgoKRW5hYmxp
bmcgY2xvY2tzIGJlZm9yZSB0aGUgR0RTQyBmb3VuZGF0aW9uYWwgcG93ZXIgZG9tYWluIGlzIGVu
YWJsZWQgdHlwaWNhbGx5CnJlc3VsdHMgaW4gdW5wb3dlcmVkIHJlZ2lzdGVyIGFjY2VzcyBvbiBR
dWFsY29tbSBTb0NzLCB3aGljaCBjb3VsZCB0cmlnZ2VyIGEKTmV0d29yay1vbi1DaGlwIChOb0Mp
IGVycm9yIGFuZCBidXMgaGFuZy4gU2hvdWxkIHBkX2RldnNbMV0gYmUgcmVzdW1lZCBiZWZvcmUK
cGRfZGV2c1swXT8KCj4gKwo+ICsvKiBkMF90b19kMyB0cmFuc2l0aW9uIGJ5IHR1cm5pbmcgb2Zm
IGFsbCB0aGUgc3VwcGxpZXJzICovCj4gK3N0YXRpYyB2b2lkIHFtcF91c2JfZDBfdG9fZDMoc3Ry
dWN0IHFtcF91c2IgKnFtcCkKPiArewo+ICsJaWYgKCFxbXAtPnBkX2xpc3QpCj4gKwkJcmV0dXJu
Owo+ICsKPiArCXBtX3J1bnRpbWVfcHV0X3N5bmMocW1wLT5wZF9saXN0LT5wZF9kZXZzWzFdKTsK
PiArCXBtX3J1bnRpbWVfcHV0X3N5bmMocW1wLT5wZF9saXN0LT5wZF9kZXZzWzBdKTsKPiArfQoK
W1NldmVyaXR5OiBIaWdoXQpTaW1pbGFybHksIGNvdWxkIHRoaXMgY2F1c2UgYSBidXMgaGFuZyBk
dXJpbmcgdGhlIGQwIHRvIGQzIHRyYW5zaXRpb24/CgpQdXR0aW5nICJ1c2JfY29yZSIgKHBkX2Rl
dnNbMV0pIGJlZm9yZSAidXNiX3RyYW5zZmVyIiAocGRfZGV2c1swXSkgZGlzYWJsZXMgCnRoZSBH
RFNDIGJlZm9yZSB0aGUgY2xvY2tzLiBTaG91bGRuJ3QgdGhlIEdEU0MgYmUgZGlzYWJsZWQgbGFz
dCB0byBwcmV2ZW50IAp1bnBvd2VyZWQgaGFyZHdhcmUgY2xvY2sgYWNjZXNzPwoKLS0gClNhc2hp
a28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcwOS1w
aHktcWNvbS1xbXAtdXNiLTgyNTUtdjItMC0zYjZjMjZhNDU3ODhAa2VybmVsLm9yZz9wYXJ0PTIK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
