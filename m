Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E184EC61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obzcvKzTLUWsouCOLkAYfq4/3ko2Be0inQv347LFawc=; b=3HHaNhbRLwgn0x
	YHmdKu3FjceXoJfnOqIvcjrpbsnpxl6U9pBrUtAVX/B6naAPWXL4mfpqbi+1KgwooAOlijTiudIM3
	mTks5Vs6ahJ+FdsLur2AtkUr6CgMz76s6vE9sOIa9+zgP+hhr6LjgC719q40PU78aBbxFcFZunfiu
	NVcAgPa0CjnQyCdNdkcCEzssgdEbo21OOpg05m5HAEvR/GrWuZGX4nmGoB0PtRSoZn1SURpTl0AbR
	6z5M3gzMAWeB7AQEpc2Gz3MU/uYax5upQYG6G8ioWXfyDrzK+J1Na+I5ILAvs7n2RxTgTvM8yji4j
	zc5TKJrrBDJ9XZ889y9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxHt-00000005x1h-3Qim;
	Fri, 28 Aug 2026 14:10:34 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxHs-00000005x1Z-2vOd
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:10:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6874A40496;
	Fri, 28 Aug 2026 14:10:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF3071F000E9;
	Fri, 28 Aug 2026 14:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787926232;
	bh=kN/aO+fEV+5N9m7w1YSrShQLZqxSBlJh3DH/IOCjG6M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MTlgD2ucg9538IPQCaIqu+jzGJiJf3pPRHEl0J4hYYqWpdaTIzAEKRWMP1OpsHSAk
	 a4QoWvLrz4jJWFLMU3E9hfNH5yj8XJk1byyzvK1++hwliVUdgj05opE2mNr1CCRRqV
	 u+ptIUJ2sgd602am15eLKHt9uZuJvUdUlA0RSBl3bnxMfoMJVH5dPsSy7BYS/86dv8
	 dRIS9eLC+gfik4ZUd2smLI/b0IgME6RTRfPaYW/VO5cOUgbL5p33I5hR85WGqlIcsi
	 EzU5fBz1Q30GYYir3BzpwaM+qGzVEbT7aY7ts/92DAoxfhw7+6icnzVG3UyedecRv8
	 Fmi7kMLfE+NMg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC/DO NOT MERGE 06/12] dt-bindings: display/msm:
 eliza-hdmi-phy: Add Eliza HDMI PHY
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Cc: robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-6-67843277de17@oss.qualcomm.com>
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
 <20260828-drm-msm-hdmi-eliza-v1-6-67843277de17@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 14:10:31 +0000
Message-Id: <20260828141031.CF3071F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gRGV2aWNldHJlZSB1bml0
IGFkZHJlc3MgbWlzbWF0Y2ggaW4gc2NoZW1hIGV4YW1wbGUuCi0tCgpjb21taXQgMjA2M2M3ZTgw
NWI1YjcyMTQzNDQwYWYzOGY2NGQ2NjZjNjQ3ZGFkNQpBdXRob3I6IEtyenlzenRvZiBLb3psb3dz
a2kgPGtyenlzenRvZi5rb3psb3dza2lAb3NzLnF1YWxjb21tLmNvbT4KCmR0LWJpbmRpbmdzOiBk
aXNwbGF5L21zbTogZWxpemEtaGRtaS1waHk6IEFkZCBFbGl6YSBIRE1JIFBIWQoKVGhpcyBjb21t
aXQgYWRkcyB0aGUgZGV2aWNlIHRyZWUgYmluZGluZyBmb3IgdGhlIFN5bm9wc3lzIEhETUkgUEhZ
IGZvdW5kIG9uCnRoZSBRdWFsY29tbSBFbGl6YSBTb0MuIEl0IGRvY3VtZW50cyB0aGUgcmVxdWly
ZWQgcHJvcGVydGllcyBhbmQgcHJvdmlkZXMgYW4KZXhhbXBsZSBkZXZpY2Ugbm9kZS4KCj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxlbGl6
YS1oZG1pLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9x
Y29tLGVsaXphLWhkbWktcGh5LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAw
MDAwMDAwMDAwMDAuLjc2NGZlYzBlZjI5YmYKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLGVsaXphLWhkbWktcGh5LnlhbWwK
ClsgLi4uIF0KCj4gK2V4YW1wbGVzOgo+ICsgIC0gfAo+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRp
bmdzL2Nsb2NrL3Fjb20sZWxpemEtZGlzcGNjLmg+Cj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGlu
Z3MvY2xvY2svcWNvbSxlbGl6YS10Y3NyLmg+Cj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3Mv
cG93ZXIvcWNvbSxycG1ocGQuaD4KPiArCj4gKyAgICBoZG1pLXBoeUA5YTA2MDAgewo+ICsgICAg
ICAgIGNvbXBhdGlibGUgPSAicWNvbSxlbGl6YS1oZG1pLXBoeSI7Cj4gKyAgICAgICAgcmVnID0g
PDB4MGFlYTEwMDAgMHgxMDAwPjsKCltTZXZlcml0eTogTG93XQpEb2VzIHRoaXMgdW5pdCBhZGRy
ZXNzIGluIHRoZSBub2RlIG5hbWUgbWlzbWF0Y2ggdGhlIGZpcnN0IGFkZHJlc3MgaW4gdGhlCnJl
ZyBwcm9wZXJ0eT8KClJ1bm5pbmcgbWFrZSBkdF9iaW5kaW5nX2NoZWNrIHdpbGwgbGlrZWx5IHRy
aWdnZXIgYSB1bml0X2FkZHJlc3NfdnNfcmVnCndhcm5pbmcgcmVncmVzc2lvbiBiZWNhdXNlIHRo
ZSBub2RlIGlzIG5hbWVkIGhkbWktcGh5QDlhMDYwMCBidXQgaXRzIHJlZwpwcm9wZXJ0eSBzZXRz
IHRoZSBiYXNlIGFkZHJlc3MgdG8gMHgwYWVhMTAwMC4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDC
tyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MjgtZHJtLW1zbS1oZG1pLWVs
aXphLXYxLTAtNjc4NDMyNzdkZTE3QG9zcy5xdWFsY29tbS5jb20/cGFydD02CgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
