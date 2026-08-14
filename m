Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C950C5DF66
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 01:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hH38prWVYcJS5kRDOa9ZQEy1EqXFew2R7TSb4Hk+rUM=; b=jwZotu2RL8TeC1
	yBn+MgQ6NEmGxCr1TIPYgksb2BtE7zXTHxW49ne9vXNVKXpI0EgqP7nODMGoCo7M3e1FXhbMbQd/u
	p8FvxN1oO+2Fku63a7LF4EOQg7MnIAFoQ85ypzUjv4HNZ2cfiVoyJUPIyfh5d1x9Z1jAIDx37XHyJ
	OmSEd/PVcZePJre1FUsoUtg7sSp1nFYoS1klRn3n0jMV3GFAx2YGWXtTfTXJA6MV3iKYypMcMEfLd
	4MKCmkJrMOFDkSwW+AfzmWuQTu+BUHphoNavZr/fHqaRVYaIfZ20zHNP8vd0HiwFEtnu80icYvAiw
	4U5VGKroJ1mexr2UYFwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wugvZ-00000001oea-3gGU;
	Fri, 14 Aug 2026 01:41:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wugvZ-00000001oeU-1E2d
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 01:41:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3AEA8600AF;
	Fri, 14 Aug 2026 01:41:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 646B01F000E9;
	Fri, 14 Aug 2026 01:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786671703;
	bh=/EenDhRSOJW4Ua5QWdGi+Vmps/qq91l9SEBZZaXRZHg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YGhL61Hji3BZ/BJw4eMf+3UlRxqyLXdJS1kBDaMhflY3r8GSxooPzeOMdSCLHfuVr
	 y0zxV5ioboUMd+EIvo0vZNydB6k5HDzf1IRVHtJsyZl18rRCdCGS3/Jn0F9V975VX2
	 F+Sfpin1Emn0A6PMcGmQCn8ocLsFaGpnq5pT3tIHJD8wtEUSN4ivrY+X/XKN+I4zo+
	 ackzKZzFHUr0f2eHdc+cU9xDHi86MDCdniOlb3tXwhBJlM+CrNVGVv4FaxjYbYcxE3
	 jj/hpFWOfXDtf9+qPhb/ljXjcmgYIyZZz/yy/vEpd/hYxEF2swVz/lMIkc8vLPRNvc
	 nSrqfSA+we8/g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 04/38] phy: rockchip: usbdp: Fix
 devm_clk_bulk_get_all check
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-4-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
 <20260813-rockchip-usbdp-cleanup-v14-4-b5ad9c68fa11@collabora.com>
Date: Fri, 14 Aug 2026 01:41:36 +0000
Message-Id: <20260814014143.646B01F000E9@smtp.kernel.org>
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
IFtIaWdoXSBNaXNzaW5nIE5VTEwgY2hlY2sgb24gYHVkcGh5LT5jbGtzW2ldLmlkYCBiZWZvcmUg
cGFzc2luZyB0byBgc3RybmNtcGAuCi0tCgotLS0gUGF0Y2ggWzRdOiBbUEFUQ0ggdjE0IDA0LzM4
XSBwaHk6IHJvY2tjaGlwOiB1c2JkcDogRml4IGRldm1fY2xrX2J1bGtfZ2V0X2FsbCBjaGVjayAt
LS0KY29tbWl0IDc0NDE1MWFiYzI3OWFiMDFiMzRkYWYwZTc3ZWUyYTNkYmUzYWQ4MzQKQXV0aG9y
OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBo
eTogcm9ja2NoaXA6IHVzYmRwOiBGaXggZGV2bV9jbGtfYnVsa19nZXRfYWxsIGNoZWNrCgpUaGlz
IGNvbW1pdCBjaGFuZ2VzIHRoZSBlcnJvciBoYW5kbGluZyBmb3IgZGV2bV9jbGtfYnVsa19nZXRf
YWxsKCkgdG8KcHJvcGVybHkgcmV0dXJuIGl0cyBlcnJvciBjb2RlLCBzdWNoIGFzIC1FUFJPQkVf
REVGRVIsIHJhdGhlciB0aGFuIG1hc2tpbmcKaXQgd2l0aCAtRU5PREVWLiBUaGUgY2hhbmdlIGFs
bG93cyB0aGUgZHJpdmVyIHRvIGRlZmVyIHByb2Jpbmcgd2hlbgpuZWNlc3NhcnkuIE1pc3Npbmcg
Y2xvY2tzIGFyZSBub3cgaGFuZGxlZCBieSB0aGUgc3Vic2VxdWVudCByZWZjbGsgc2VhcmNoCmNo
ZWNrLgoKQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1waHkvMjAyNjA2MTIx
NjQxMDcuQzdEQjIxRjAwMEU5QHNtdHAua2VybmVsLm9yZy8KCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hp
cC11c2JkcC5jCj4gQEAgLTQyNyw4ICs0MjcsOCBAQCBzdGF0aWMgaW50IHJrX3VkcGh5X2Nsa19p
bml0KHN0cnVjdCBya191ZHBoeSAqdWRwaHksIHN0cnVjdCBkZXZpY2UgKmRldikKPiAgCWludCBp
Owo+ICAKPiAgCXVkcGh5LT5udW1fY2xrcyA9IGRldm1fY2xrX2J1bGtfZ2V0X2FsbChkZXYsICZ1
ZHBoeS0+Y2xrcyk7Cj4gLQlpZiAodWRwaHktPm51bV9jbGtzIDwgMSkKPiAtCQlyZXR1cm4gLUVO
T0RFVjsKPiArCWlmICh1ZHBoeS0+bnVtX2Nsa3MgPCAwKQo+ICsJCXJldHVybiB1ZHBoeS0+bnVt
X2Nsa3M7Cj4gIAo+ICAJLyogdXNlZCBmb3IgY29uZmlndXJlIHBoeSByZWZlcmVuY2UgY2xvY2sg
ZnJlcXVlbmN5ICovCj4gIAlmb3IgKGkgPSAwOyBpIDwgdWRwaHktPm51bV9jbGtzOyBpKyspIHsK
PiAgCQlpZiAoIXVkcGh5LT5jbGtzW2ldLmlkKQo+ICAJCQljb250aW51ZTsKPiAgCj4gIAkJaWYg
KCFzdHJuY21wKHVkcGh5LT5jbGtzW2ldLmlkLCAicmVmY2xrIiwgNikpIHsKCltTZXZlcml0eTog
SGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGNhbiB0aGlzIGxlYWQgdG8g
YSBOVUxMIHBvaW50ZXIKZGVyZWZlcmVuY2UgaW4gcmtfdWRwaHlfY2xrX2luaXQoKT8KCklmIGEg
ZGV2aWNlIHRyZWUgZGVmaW5lcyB0aGUgY2xvY2tzIHByb3BlcnR5IGJ1dCBvbWl0cyB0aGUgY2xv
Y2stbmFtZXMKcHJvcGVydHksIGRldm1fY2xrX2J1bGtfZ2V0X2FsbCgpIHJldHVybnMgYSBwb3Np
dGl2ZSBjbG9jayBjb3VudCBidXQKaW5pdGlhbGl6ZXMgY2xrc1tpXS5pZCB0byBOVUxMLgoKRG9l
cyB0aGlzIGxvb3AgdW5jb25kaXRpb25hbGx5IHBhc3MgdGhhdCBOVUxMIHBvaW50ZXIgdG8gc3Ry
bmNtcCgpLApyZXN1bHRpbmcgaW4gYSBrZXJuZWwgcGFuaWMgZHVyaW5nIHByb2JlPwoKLS0gClNh
c2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgx
My1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXYxNC0wLWI1YWQ5YzY4ZmExMUBjb2xsYWJvcmEuY29t
P3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
