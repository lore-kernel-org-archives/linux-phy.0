Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D105EC4450A
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jul 2026 00:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/1P4Svrb4QsCAZx+zkkMLX/PCA5mbMa5ieDiW0GuL5I=; b=Mw3pBW3Yg3NrUOMc7zsOjkBfpA
	CPvNcw1gGLJBPdIZ6lr5zSgAUrnqcLGYYjaDkKd0m75mX4vLiF37SAee/xyniNKwgG+yt/ZS4S68m
	CrHVailbjsvHJ0Rp7BxDu+Boy9GHNZU//DpMLemjWWtO5t+9tjwXL9jhZIj4ZHCb4hjs/Qsm+m0Vf
	WfN70FCT4SpYedW8wolZu/lE8+Map+4liDb1Ycxy05SP/vDRyO7+gc5f18CTzrAQksdpZg3kHzrUe
	a8sOFDFevZy3cPIO5mGbwqcMbQlf6W3XClrMOdyXi3T6yL7Tu7BLPqEOL6WIm1bCEqifcvsR/CQgN
	9Ewfo1QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkW55-00000000p3C-21LH;
	Fri, 17 Jul 2026 00:05:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkW53-00000000p2t-3hAV;
	Fri, 17 Jul 2026 00:05:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3876642BC6;
	Fri, 17 Jul 2026 00:05:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC2AF1F000E9;
	Fri, 17 Jul 2026 00:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784246729;
	bh=sEoNHc30Ygmr289YdjGDZczw1IEztTdjdBUILej6wz4=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=Qj9VpqiE7Ehhepu7zWi+9PbZsbi59beWQkYoECAliq5e4+wWKH2n0iPvrXYpZRi/K
	 rzeEaq5gzlAHbtjO7LbfnCd9G8YF7KuOpuQ+dz2MJe9DA7gG6IAvzU2K3D7di4HVVX
	 PQ3HTDjfX4Gcmzzx03a55aJ5sArxua82yjuRTNNX4dDG1pHBLjgtMKpWMxqxehvG94
	 +JAS2xjtyWfvhzV2BoH23Z2Sjqtc1x2PT4XNH10XvgIZYVEABSKlN+hcQpKn7YddnD
	 sB3HWd7E4ot5mlPuvDpDWNsBF7lm6v2Kh3Ea76/xut4i0zQkf+lwIUvPL6JiW/FTHq
	 GgTK9QCF5tuOg==
Date: Thu, 16 Jul 2026 19:05:28 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, 
 Russell King <linux@armlinux.org.uk>, linux-phy@lists.infradead.org, 
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Michael Turquette <mturquette@baylibre.com>, 
 Brian Masney <bmasney@redhat.com>, Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org
To: =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
In-Reply-To: <20260717-zx29clk-v7-1-408411cfcf36@gmail.com>
References: <20260717-zx29clk-v7-0-408411cfcf36@gmail.com>
 <20260717-zx29clk-v7-1-408411cfcf36@gmail.com>
Message-Id: <178424672694.2081810.9844688000925078533.robh@kernel.org>
Subject: Re: [PATCH v7 01/13] dt-bindings: phy: Add zx297520v3 USB phy
 documentation
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIEZyaSwgMTcgSnVsIDIwMjYgMDA6MzU6MzcgKzAzMDAsIFN0ZWZhbiBEw7ZzaW5nZXIgd3Jv
dGU6Cj4gVGhpcyBiaW5kaW5nIHdpbGwgYmUgdXNlZCBhcyBhIHN1Ym5vZGUgb2YgdG9wY3JtLCB3
aGljaCB3aWxsIGJlIGFkZGVkIGluCj4gdGhlIG5leHQgcGF0Y2guCj4gCj4gV2h5IGlzIHRoaXMg
YSBjaGlsZCBub2RlIGFuZCBub3QgI3BoeS1jZWxscyBhZGRlZCB0byB0b3Bjcm0gaXRzZWxmLAo+
IGxpa2UgY2xvY2tzIGFuZCByZXNldHMgYXMgd3JpdGluZy1iaW5kaW5ncy5yc3Qgc3VnZ2VzdHM/
IEJlY2F1c2UKPiBvZl9waHlfcHJvdmlkZXJfcmVnaXN0ZXIgY2hlY2tzIGlmIHRoZSBvZl9ub2Rl
IHRoZSBQSFkgcHJvdmlkZXIgaXMgYWRkZWQKPiB0byBiZWxvbmdzIHRvIHRoZSBkZXZpY2Ugb3Ig
aXMgYSBjaGlsZCBvZiB0aGUgZGV2aWNlLCBzbyBJIGNhbid0IHB1dCB0aGUKPiBQSFkgZHJpdmVy
IGludG8gYW4gTUZEIChvciBBVVgpIGNoaWxkIHdpdGhvdXQgaXRzIG93biBub2RlLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+
Cj4gCj4gLS0tCj4gCj4gSG93IGRvIEkgaGFuZGxlIGV4YW1wbGVzPyBJdCB3b3VsZCBiZSBpZGVu
dGljYWwgdG8gdGhlIGV4YW1wbGUgaW4KPiB0b3Bjcm0uIFRoZSBleGFtcGxlIG5lZWRzIHRoZSBy
ZXNldCBkZWZpbmVzIGZyb20gdGhlIG5leHQgcGF0Y2ggaW4KPiBlaXRoZXIgY2FzZS4KPiAtLS0K
PiAgLi4uL2JpbmRpbmdzL3BoeS96dGUsengyOTc1MjB2My11c2ItcGh5LnlhbWwgICAgICAgfCA5
NiArKysrKysrKysrKysrKysrKysrKysrCj4gIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKwo+ICBpbmNsdWRlL2R0LWJpbmRpbmdzL3BoeS9w
aHktenRlLXp4Mjk3NTIwdjMtdXNiLmggICB8IDEyICsrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDEx
MCBpbnNlcnRpb25zKCspCj4gCgpNeSBib3QgZm91bmQgZXJyb3JzIHJ1bm5pbmcgJ21ha2UgZHRf
YmluZGluZ19jaGVjaycgb24geW91ciBwYXRjaDoKCnlhbWxsaW50IHdhcm5pbmdzL2Vycm9yczoK
CmR0c2NoZW1hL2R0YyB3YXJuaW5ncy9lcnJvcnM6CkRvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvenRlLHp4Mjk3NTIwdjMtdXNiLXBoeS5leGFtcGxlLmR0YjogL2V4YW1wbGUt
MC9jbG9jay1jb250cm9sbGVyOiBmYWlsZWQgdG8gbWF0Y2ggYW55IHNjaGVtYSB3aXRoIGNvbXBh
dGlibGU6IFsnenRlLHp4Mjk3NTIwdjMtdG9wY3JtJywgJ3N5c2NvbiddCi9idWlsZHMvcm9iaGVy
cmluZy9kdC1yZXZpZXctY2kvbGludXgvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS96dGUsengyOTc1MjB2My11c2ItcGh5LmV4YW1wbGUuZHRiOiBjbG9jay1jb250cm9sbGVy
ICh6dGUsengyOTc1MjB2My10b3Bjcm0pOiAncmVnJyBpcyBhIHJlcXVpcmVkIHByb3BlcnR5Cglm
cm9tIHNjaGVtYSAkaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL21mZC9zeXNjb24t
Y29tbW9uLnlhbWwKCmRvYyByZWZlcmVuY2UgZXJyb3JzIChtYWtlIHJlZmNoZWNrZG9jcyk6CgpT
ZWUgaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2RldmljZXRyZWUvcGF0Y2gv
MjAyNjA3MTctengyOWNsay12Ny0xLTQwODQxMWNmY2YzNkBnbWFpbC5jb20KClRoZSBiYXNlIGZv
ciB0aGUgc2VyaWVzIGlzIGdlbmVyYWxseSB0aGUgbGF0ZXN0IHJjMS4gQSBkaWZmZXJlbnQgZGVw
ZW5kZW5jeQpzaG91bGQgYmUgbm90ZWQgaW4gKnRoaXMqIHBhdGNoLgoKSWYgeW91IGFscmVhZHkg
cmFuICdtYWtlIGR0X2JpbmRpbmdfY2hlY2snIGFuZCBkaWRuJ3Qgc2VlIHRoZSBhYm92ZQplcnJv
cihzKSwgdGhlbiBtYWtlIHN1cmUgJ3lhbWxsaW50JyBpcyBpbnN0YWxsZWQgYW5kIGR0LXNjaGVt
YSBpcyB1cCB0bwpkYXRlOgoKcGlwMyBpbnN0YWxsIGR0c2NoZW1hIC0tdXBncmFkZQoKUGxlYXNl
IGNoZWNrIGFuZCByZS1zdWJtaXQgYWZ0ZXIgcnVubmluZyB0aGUgYWJvdmUgY29tbWFuZCB5b3Vy
c2VsZi4gTm90ZQp0aGF0IERUX1NDSEVNQV9GSUxFUyBjYW4gYmUgc2V0IHRvIHlvdXIgc2NoZW1h
IGZpbGUgdG8gc3BlZWQgdXAgY2hlY2tpbmcKeW91ciBzY2hlbWEuIEhvd2V2ZXIsIGl0IG11c3Qg
YmUgdW5zZXQgdG8gdGVzdCBhbGwgZXhhbXBsZXMgd2l0aCB5b3VyIHNjaGVtYS4KCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
