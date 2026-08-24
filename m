Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A95A8C5DF81
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 06:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vch4lN1U68Q3hViD7lgZo5Qz43xl3NvGtGZ06yM7BNo=; b=ux3ZGFc4sLYgjj
	DW/yJ6792ut2pTuUOKF7Wnj1AsWfuk8v3wLeSNgsRqhUAEIqadkVwEykJvvIBSpb5IgvXNhIwHYVg
	y7mXg8z19fSzlI1G1cE6e+oURR+gwT2UdhatAzJgDyei/qbq12iSn63sv/NXO6a3/C6mZfJIytN50
	AmaIzNTTAOrabgXHB9gfyPVz/Ny6JTUelP5fdMS+w4H+C6P5Ji0vhMr1o68jXKeIty6zfOw8WZ+1j
	2O/7KIQqcoykBKRh/hQC04RTKky0/Sr7qHdOQFwULz6ySFjfwj9pGoJTX1VMiapcJgPxQorPWqH5u
	uNNGIXO0iAs3DvBe479g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOVT-0000000G1QG-15IL;
	Mon, 24 Aug 2026 06:50:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOVR-0000000G1Pw-3I7s
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 06:50:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E11676013A;
	Mon, 24 Aug 2026 06:50:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 278811F00A3A;
	Mon, 24 Aug 2026 06:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787554204;
	bh=Q3N9+PKlxb1crcxS9Jm7JHDey5nErYHnkArNh/zpBrQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CgD6lGKtWhMlgyf12aE+8Z/z3TK0ujidHy4jmVFZpQCxft6p4O2au19AqKvq9FUKF
	 O4AUrUZtguhq2Xt8SchMjmwck/QabGwaFwvfmA9abo3s0gH5zTWBL00/a/m+0OVKTp
	 Pi1MYaK8hcScl7KiwssCbXXvDfeecXZsRj3dkm1UDsL7ZuOzFBW15w1ybhyX0SdqKQ
	 PRD5EjJQlsnOly8rKzbYle5tvflJOob4Dq7tTslzT1A5TBduDVqWYlR+GygbeMgJlt
	 w6CfhuBEQVXY48KqjGL8L5N617bdUjRzs1GJ+2nlKCLIIh+/w4cEMzYYShsubNGE0T
	 J5qDY8yndW97A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/5] phy: qcom: snps-femto-v2: Add IPQ9650 support
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260824-phy-v1-5-257d68a3210b@oss.qualcomm.com>
References: <20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com>
 <20260824-phy-v1-5-257d68a3210b@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 06:50:03 +0000
Message-Id: <20260824065004.278811F00A3A@smtp.kernel.org>
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
IFtIaWdoXSBUaGUgYGhzXzVubV9waHlfcHJlYCBhcnJheSBpbmNvcnJlY3RseSBzd2FwcyB0aGUg
bWFzayBhbmQgdmFsdWUgcGFyYW1ldGVycyBmb3IgYFVTQjJfUEhZX1VTQl9QSFlfUkVGQ0xLX0NU
UkxgLCByZXN1bHRpbmcgaW4gaW5jb21wbGV0ZSBiaXQgY2xlYXJpbmcuCi0tCgotLS0gUGF0Y2gg
WzVdOiBbUEFUQ0ggNS81XSBwaHk6IHFjb206IHNucHMtZmVtdG8tdjI6IEFkZCBJUFE5NjUwIHN1
cHBvcnQgLS0tCmNvbW1pdCA1Y2I1MTZhMWQyZDQ1MmNlODkzOWY0OTk1NTcwNGJhYmMwNzAxMTcx
CkF1dGhvcjogVmFyYWRhcmFqYW4gTmFyYXlhbmFuIDx2YXJhZGFyYWphbi5uYXJheWFuYW5Ab3Nz
LnF1YWxjb21tLmNvbT4KCnBoeTogcWNvbTogc25wcy1mZW10by12MjogQWRkIElQUTk2NTAgc3Vw
cG9ydAoKVGhpcyBjb21taXQgYWRkcyB0aGUgNm5tIFNOUFMgZmVtdG8gVVNCMiBQSFkgY29uZmln
dXJhdGlvbiBuZWVkZWQgYnkKSVBROTY1MC4gVGhlIFBIWXMgb24gdGhpcyBTb0MgcmVxdWlyZSBh
IGRlZGljYXRlZCBpbml0IHNlcXVlbmNlIGFuZCBvdmVycmlkZQpwYXJhbWV0ZXJzIGJlZm9yZSB0
aGV5IGNhbiBiZSBlbmFibGVkLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0v
cGh5LXFjb20tc25wcy1mZW10by12Mi5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
c25wcy1mZW10by12Mi5jCj4gaW5kZXggYTM0MDI3YjIxNWY5Yi4uN2U4YjM0NmM2MTg5NiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1zbnBzLWZlbXRvLXYyLmMK
PiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1zbnBzLWZlbXRvLXYyLmMKClsg
Li4uIF0KCj4gQEAgLTQxOCw2ICs0NDIsMzQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwaHlfcmVn
X2NvbmZpZyBoc181bm1fcGh5X3Bvc3RbXSA9IHsKPiAgCXsgVUlOVF9NQVgsIDAsIDAgfSwKPiAg
fTsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcGh5X3JlZ19jb25maWcgaHNfNm5tX3BoeV9w
cmVbXSA9IHsKPiArCXsgVVNCMl9QSFlfVVNCX1BIWV9DRkcwLCBVVE1JX1BIWV9DTU5fQ1RSTF9P
VkVSUklERV9FTiwgVVRNSV9QSFlfQ01OX0NUUkxfT1ZFUlJJREVfRU4gfSwKPiArCXsgVVNCMl9Q
SFlfVVNCX1BIWV9VVE1JX0NUUkw1LCBQT1IsIFBPUiB9LAo+ICsJeyBVU0IyX1BIWV9VU0JfUEhZ
X0ZTRUxfU0VMLCBGU0VMX1NFTCwgRlNFTF9TRUwgfSwKPiArCXsgVVNCMl9QSFlfVVNCX1BIWV9I
U19QSFlfQ1RSTF9DT01NT04wLCBGU0VMX01BU0ssIEZTRUxfMjRNSFogfSwKPiArCXsgVVNCMl9Q
SFlfVVNCX1BIWV9IU19QSFlfQ1RSTF9DT01NT04xLCBQTExCVFVORSwgUExMQlRVTkUgfSwKPiAr
CXsgVVNCMl9QSFlfVVNCX1BIWV9SRUZDTEtfQ1RSTCwgUkVGQ0xLX1NFTF9NQVNLLCBSRUZDTEtf
U0VMX0RFRkFVTFQgfSwKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1
Y2VkIGJ5IHRoaXMgcGF0Y2gsIGJ1dCB3aGlsZSByZXZpZXdpbmcgaXQgSSBub3RpY2VkIGEKZGlz
Y3JlcGFuY3kgYmV0d2VlbiB0aGUgbmV3IGhzXzZubV9waHlfcHJlIGFycmF5IGFuZCB0aGUgZXhp
c3RpbmcKaHNfNW5tX3BoeV9wcmUgYXJyYXkuCgpUaGUgbmV3bHkgaW50cm9kdWNlZCBoc182bm1f
cGh5X3ByZSBhcnJheSBjb3JyZWN0bHkgb3JkZXJzIHRoZSBtYXNrIGFuZCB2YWx1ZQpwYXJhbWV0
ZXJzOgoKICAgIHsgVVNCMl9QSFlfVVNCX1BIWV9SRUZDTEtfQ1RSTCwgUkVGQ0xLX1NFTF9NQVNL
LCBSRUZDTEtfU0VMX0RFRkFVTFQgfSwKCkhvd2V2ZXIsIHRoZSBleGlzdGluZyBoc181bm1fcGh5
X3ByZSBhcnJheSBhcHBlYXJzIHRvIGhhdmUgdGhlIG1hc2sgYW5kIHZhbHVlCnN3YXBwZWQ6Cgog
ICAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tc25wcy1mZW10by12Mi5jOmhzXzVubV9w
aHlfcHJlW10KICAgIHsgVVNCMl9QSFlfVVNCX1BIWV9SRUZDTEtfQ1RSTCwgUkVGQ0xLX1NFTF9E
RUZBVUxULCBSRUZDTEtfU0VMX01BU0sgfSwKClNpbmNlIHRoZSBwaHlfcmVnX2NvbmZpZyBzdHJ1
Y3QgZXhwZWN0cyB7IG9mZnNldCwgbWFzaywgdmFsIH0sIHBhc3NpbmcKUkVGQ0xLX1NFTF9ERUZB
VUxUICgweDIpIGFzIHRoZSBtYXNrIGFuZCBSRUZDTEtfU0VMX01BU0sgKDB4MykgYXMgdGhlIHZh
bHVlCm1lYW5zIHFjb21fc25wc19oc3BoeV93cml0ZV9tYXNrKCkgd2lsbCBleGVjdXRlOgoKICAg
IHJlZyAmPSB+MHgyCiAgICByZWcgfD0gKDB4MyAmIDB4MikKClRoaXMgc2V0cyBiaXQgMSB0byAx
IGJ1dCBmYWlscyB0byBjbGVhciBiaXQgMC4KCklmIGJpdCAwIHdhcyBhbHJlYWR5IHNldCBieSB0
aGUgYm9vdGxvYWRlciwgdGhlIHJlZ2lzdGVyIHdpbGwgaG9sZCAweDMKaW5zdGVhZCBvZiAweDIs
IHdoaWNoIGNvdWxkIHJlc3VsdCBpbiBhbiBpbmNvcnJlY3QgcmVmZXJlbmNlIGNsb2NrCmNvbmZp
Z3VyYXRpb24gYW5kIHByZXZlbnQgdGhlIFVTQiBQSFkgUExMIGZyb20gbG9ja2luZy4KCkRvZXMg
dGhpcyBzd2FwcGVkIG1hc2sgYW5kIHZhbHVlIGluIGhzXzVubV9waHlfcHJlIG5lZWQgdG8gYmUg
Y29ycmVjdGVkIGluIGEKc2VwYXJhdGUgcGF0Y2g/Cgo+ICsJeyBVU0IyX1BIWV9VU0JfUEhZX0hT
X1BIWV9DVFJMX0NPTU1PTjEsIFZCVVNWTERFWFRTRUwwLCBWQlVTVkxERVhUU0VMMCB9LAo+ICsJ
eyBVU0IyX1BIWV9VU0JfUEhZX0hTX1BIWV9DVFJMMSwgVkJVU1ZMREVYVDAsIFZCVVNWTERFWFQw
IH0sCj4gKwl7IFVJTlRfTUFYLCAwLCAwIH0sCj4gK307CgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODI0LXBoeS12MS0wLTI1N2Q2
OGEzMjEwYkBvc3MucXVhbGNvbW0uY29tP3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
