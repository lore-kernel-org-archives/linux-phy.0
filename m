Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28FB1C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 12:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9aDoUBVs49YA4ZKOpUAusn1vm8Y2I/F7w+2xv2SO6GU=; b=xw+f4zbiDJPf1q
	xg0cO99LlpKwJy7dBXvB8P6BFCaFT4p5yGxmjLk32A+iOQYmmdANUDFOOw/EWZOFrIRoW0HLWXE4e
	isAZxzpV38U305ki4FUUp2rPTrQUjgCxOlVvpT8yfCxYk+aQdiKbTmzqoAWC2Epm/mhjC/BJ+wN/y
	CD0foP2tHrgzOLFQw+tymEzf16jG7ZPd4+BH/7F/LCAge4AyiPPl2J7ewNOKudWtMlfuBijcRPEgS
	sCseKa3nPGxh9dZiOfwRMhcq6kna8ss9KxcgxUTcIYwCYnaCFobwxwj9Jyi8qXWWbSY7FCwpYZWgv
	jYNeFpChuz1OD9OmiYRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weu2n-00000001zaL-3vGh;
	Wed, 01 Jul 2026 12:27:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weu2m-00000001zaF-2vZq
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 12:27:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7611041458;
	Wed,  1 Jul 2026 12:27:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D031B1F000E9;
	Wed,  1 Jul 2026 12:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782908876;
	bh=dpF9Ah1JqyA2hm8UXbH4GPZaMqGAhXDZ4O8SylEiMng=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k+QFUUL9JXDqsqKPuAfY73B6jmndK1V70+CX+wbbOx/fnUG2a3kMHKi0/YVgv3lGc
	 kykBN5IdWMHa7DZa4vTFxUovhg82L7M8HlumInPcJJIf1AM5asCAW2UcpuP0fDr5Bp
	 prZMHpOzVi1ZrADzGutugmmu9uJTLb9HnGbfvpdhUxcaIslsyLUO8/8atK/ri18mZ8
	 AmtzHIJ1iyQGaxaeoFRJuAGmo/ZdrhFm8sDKkG6gBh12Kgj/UQRtUqQgmLex7ZYnfq
	 3YN88/QiP/Q5ar7IV7hXqqRlElX+HNXFVRi/7f5ss6UUELHgl42sN7Vug11iAgEpOW
	 UAN2HiMu9kHfg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 01/12] dt-bindings: phy: Document MT8195 and MT8196
 DisplayPort PHYs
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260701122008.19509-2-angelogioacchino.delregno@collabora.com>
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
 <20260701122008.19509-2-angelogioacchino.delregno@collabora.com>
Date: Wed, 01 Jul 2026 12:27:55 +0000
Message-Id: <20260701122755.D031B1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGRldmljZSB0cmVl
IGV4YW1wbGUgd2lsbCBmYWlsIGBtYWtlIGR0X2JpbmRpbmdfY2hlY2tgIHZhbGlkYXRpb24gZHVl
IHRvIGEgNjQtYml0IGByZWdgIHByb3BlcnR5IGF0IHRoZSByb290IGxldmVsIHdpdGhvdXQgYCNh
ZGRyZXNzLWNlbGxzID0gPDI+YCBhbmQgYCNzaXplLWNlbGxzID0gPDI+YC4KLS0KCmNvbW1pdCBj
N2I0NzZjZGUwNTBlMDQ1YWFhNTZiYWU5ZGQ3ZWNjN2IzZDM0Y2VkCkF1dGhvcjogQW5nZWxvR2lv
YWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNv
bT4KZHQtYmluZGluZ3M6IHBoeTogRG9jdW1lbnQgTVQ4MTk1IGFuZCBNVDgxOTYgRGlzcGxheVBv
cnQgUEhZcwoKVGhpcyBhZGRzIGJpbmRpbmdzIGZvciB0aGUgRGlzcGxheVBvcnQgYW5kIEVtYmVk
ZGVkIERpc3BsYXlQb3J0IFBIWXMgZm91bmQgaW4KdGhlIE1lZGlhVGVrIE1UODE5NSBhbmQgTVQ4
MTk2IFNvQ3MuIFRoZSBQSFkgc3VwcG9ydHMgdmFyeWluZyBpbXBlZGFuY2UKY2FsaWJyYXRpb25z
IGZvciB0aGUgc2lnbmFscyB0byByZWFjaCBhbiBvcHRpbWFsIEVZRSBzaWduYWwgcGF0dGVybi4K
Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWVk
aWF0ZWssbXQ4MTk1LWRwLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9tZWRpYXRlayxtdDgxOTUtZHAtcGh5LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjU4NDc5NjNhNzA4NWUKPiAtLS0gL2Rldi9udWxsCj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxtdDgx
OTUtZHAtcGh5LnlhbWwKClsgLi4uIF0KCj4gK2V4YW1wbGVzOgo+ICsgIC0gfAo+ICsgICAgcGh5
QDFjNTAwMDAwIHsKPiArICAgICAgICBjb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE5NS1kcC1w
aHkiOwo+ICsgICAgICAgIHJlZyA9IDwwIDB4MWM1MDAwMDAgMCAweDIwMDA+OwoKW1NldmVyaXR5
OiBMb3ddCkxvb2tpbmcgYXQgdGhlIGV4YW1wbGVzIHNlY3Rpb24gaW4gbWVkaWF0ZWssbXQ4MTk1
LWRwLXBoeS55YW1sLCB3aWxsIHRoaXMKZXhhbXBsZSBwYXNzIG1ha2UgZHRfYmluZGluZ19jaGVj
ayB2YWxpZGF0aW9uPyBUaGUgcmVnIHByb3BlcnR5IGNvbnRhaW5zIDQKY2VsbHMsIGJ1dCBzaW5j
ZSB0aGUgZXhhbXBsZSBub2RlIGlzIGF0IHRoZSByb290IGxldmVsIHdpdGhvdXQgYSBwYXJlbnQg
bm9kZQpleHBsaWNpdGx5IGRlZmluaW5nICNhZGRyZXNzLWNlbGxzID0gPDI+IGFuZCAjc2l6ZS1j
ZWxscyA9IDwyPiwgdGhlIGR1bW15CnJvb3Qgbm9kZSBkZWZhdWx0cyB0byAxIGZvciBib3RoLiBU
aGlzIGNhdXNlcyB0aGUgNCBjZWxscyB0byBiZSBwYXJzZWQgYXMgMgpzZXBhcmF0ZSBpdGVtcywg
d2hpY2ggdmlvbGF0ZXMgdGhlIHNjaGVtYSdzIG1heEl0ZW1zOiAxIGNvbnN0cmFpbnQuCgo+ICsg
ICAgICAgICNwaHktY2VsbHMgPSA8MD47Cj4gKyAgICAgICAgbnZtZW0tY2VsbHMgPSA8JmVkcF9n
bGJfYmlhc190cmltPiwgPCZlZHBfY2xrdHhfaW1wc2VsPiwKPiArICAgICAgICAgICAgICAgICAg
ICAgIDwmZWRwX2ltcF9sbjBfcG1vcz4sIDwmZWRwX2ltcF9sbjBfbm1vcz4sCj4gKyAgICAgICAg
ICAgICAgICAgICAgICA8JmVkcF9pbXBfbG4xX3Btb3M+LCA8JmVkcF9pbXBfbG4xX25tb3M+LAo+
ICsgICAgICAgICAgICAgICAgICAgICAgPCZlZHBfaW1wX2xuMl9wbW9zPiwgPCZlZHBfaW1wX2xu
Ml9ubW9zPiwKPiArICAgICAgICAgICAgICAgICAgICAgIDwmZWRwX2ltcF9sbjNfcG1vcz4sIDwm
ZWRwX2ltcF9sbjNfbm1vcz47Cj4gKyAgICAgICAgbnZtZW0tY2VsbC1uYW1lcyA9ICJyYmlhcy10
cmltIiwgImltcGVkYW5jZS10eGNsayIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICJp
bXBlZGFuY2UtbGFuZTBwIiwgImltcGVkYW5jZS1sYW5lMG4iLAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAiaW1wZWRhbmNlLWxhbmUxcCIsICJpbXBlZGFuY2UtbGFuZTFuIiwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgImltcGVkYW5jZS1sYW5lMnAiLCAiaW1wZWRhbmNlLWxh
bmUybiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICJpbXBlZGFuY2UtbGFuZTNwIiwg
ImltcGVkYW5jZS1sYW5lM24iOwo+ICsgICAgfTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBo
dHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDExMjIwMDguMTk1MDktMS1hbmdl
bG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20/cGFydD0xCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
