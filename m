Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B675C88E7F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSLWRPQ/EOtl7ukaUMWqsL1BT5lShBFBBgKySlu/0C8=; b=GV4VvFxrj2mGad
	xu4auhns1k23lWIcrL/7PV5EnXkDlbm4y6HdDrX9LXsV2bJa6vQpUmO/je4bvsQMJ8J1HG1JU78Jb
	d6vhmgMHlAMbu4DohXV1uYU7V9QXJeDwzTwFNzDKwIs1IGRn/Vx25uh2Unz29SO9Y8+GdpHcgRhx8
	ExO1iqtk27x8trpCtC7w2s7rvGE8IGtBUK391nP2NIWirVCxzwix2eZOu0PblIrUW4V4DkRF4r3t9
	s1Brk1LyGwFHNr/llrWayTrqZy3678efMKJtQNN4zaJAhegOa/Ox7aZsW8i+6e7qX2eHgFHfMqgTw
	OtpxW1uRSpXXI3olw/gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VJJ-00000007GNz-37Jw;
	Tue, 15 Sep 2026 15:43:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VJI-00000007GNk-0deP
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:43:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B573D40183;
	Tue, 15 Sep 2026 15:43:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F07CD1F000FF;
	Tue, 15 Sep 2026 15:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789486983;
	bh=/Q+TKB0dTqPeN8L0VQL0IxsQ2XnGw89/lImhUA0TRIc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FWoFG9h81W+EkeK6xWljLNGhi+4q24AllFDgLT9ezExiwRZj9G8qbHkRePJo+7VL+
	 YTbDGrwWdrikTHq6JsHf9EAERMMq6nazGfDxgx9UPbk/OvyJ7qaNpwon+330J+G67h
	 UgU00QlM4ZwrbAjfZtwwpzsDAk3gSk+oS6dlx67YrMZDPLHs7eGby3nUIOhvtzsSmP
	 mRyQ9RVjZ3tKQwrMLOQGQXpRqJgCRIDnrdDCJwy3Mx/TMJI6WPvuROLSRrnkatSeVW
	 SEREuibAJD8pc607CF+dQ0o/8oPZJcpELssrY1oQYmI4/T/oeuCtmnpPRcsDRHl6Sq
	 PG8Z8Do4o3nwg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 09/20] drm/bridge: inno-hdmi: Add .disable platform
 operation
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: devicetree@vger.kernel.org, lee@kernel.org, dri-devel@lists.freedesktop.org, olteanv@gmail.com, robh@kernel.org, mfd@lists.linux.dev, linux-phy@lists.infradead.org, vkoul@kernel.org, linux-clk@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org
In-Reply-To: <20260915-jh7110-clean-send-v4-9-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153229eucas1p2d1b02b6f3871d6b536f678b9ea293c1c@eucas1p2.samsung.com>
 <20260915-jh7110-clean-send-v4-9-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:43:02 +0000
Message-Id: <20260915154302.F07CD1F000FF@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGRybS9icmlkZ2U6IGlu
bm8taGRtaTogc2xlZXAgaW4gYXRvbWljIGNvbnRleHQgdmlhIC5kaXNhYmxlIGhvb2sKLSBbTWVk
aXVtXSBkcm0vYnJpZGdlOiBpbm5vLWhkbWk6IGhhcmR3YXJlIHRlYXJkb3duIExJRk8gb3JkZXJp
bmcgdmlvbGF0aW9uCi0tCgpjb21taXQgZjcyMDFiOWVkZDUzNjRiZmJiMGZlN2Y2ZGZjNjcwNmEw
ZjQzYWRmMwpBdXRob3I6IE1pY2hhbCBXaWxjenluc2tpIDxtLndpbGN6eW5za2lAc2Ftc3VuZy5j
b20+Cgpkcm0vYnJpZGdlOiBpbm5vLWhkbWk6IEFkZCAuZGlzYWJsZSBwbGF0Zm9ybSBvcGVyYXRp
b24KClRoaXMgY29tbWl0IGludHJvZHVjZXMgYSBuZXcgLmRpc2FibGUgcGxhdGZvcm0gb3BlcmF0
aW9uIHRvIHRoZSBJbm5vc2lsaWNvbgpIRE1JIGRyaXZlciBhbmQgaW52b2tlcyBpdCBpbiBpbm5v
X2hkbWlfYnJpZGdlX2F0b21pY19kaXNhYmxlKCkuIEl0IGFsbG93cwpwbGF0Zm9ybS1zcGVjaWZp
YyBkcml2ZXJzIHRvIGltcGxlbWVudCBwb3dlciBkb3duIHNlcXVlbmNlcyBmb3IgUEhZcyBhbmQK
Y2xvY2tzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbm5vLWhkbWku
YyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvaW5uby1oZG1pLmMKPiBpbmRleCAxMjY0MTUyZmIx
NDM0Li4wNjkxN2U4M2M1ZTUzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
aW5uby1oZG1pLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lubm8taGRtaS5jCj4g
QEAgLTg4Niw2ICs4ODYsMTAgQEAgc3RhdGljIHZvaWQgaW5ub19oZG1pX2JyaWRnZV9hdG9taWNf
ZGlzYWJsZShzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlLAo+ICAJCQkJCSAgICBzdHJ1Y3QgZHJt
X2F0b21pY19jb21taXQgKnN0YXRlKQo+ICB7Cj4gIAlzdHJ1Y3QgaW5ub19oZG1pICpoZG1pID0g
YnJpZGdlX3RvX2lubm9faGRtaShicmlkZ2UpOwo+ICsJY29uc3Qgc3RydWN0IGlubm9faGRtaV9w
bGF0X29wcyAqcGxhdF9vcHMgPSBoZG1pLT5wbGF0X2RhdGEtPm9wczsKPiArCj4gKwlpZiAocGxh
dF9vcHMgJiYgcGxhdF9vcHMtPmRpc2FibGUpCj4gKwkJcGxhdF9vcHMtPmRpc2FibGUoaGRtaS0+
ZGV2KTsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGNvZGUgaW50cm9kdWNlIGEgc2xlZXAg
aW4gYXRvbWljIGNvbnRleHQ/IFRoZQppbm5vX2hkbWlfYnJpZGdlX2F0b21pY19kaXNhYmxlKCkg
ZnVuY3Rpb24gcnVucyBmcm9tCmRybV9hdG9taWNfaGVscGVyX2NvbW1pdF90YWlsKCksIHdoaWNo
IGlzIGFuIGF0b21pYyBjb250ZXh0IHdoZXJlIHNsZWVwaW5nIGlzCnN0cmljdGx5IGZvcmJpZGRl
bi4gSG93ZXZlciwgdGhlIGNvbW1pdCBtZXNzYWdlIG1lbnRpb25zIHRoaXMgaG9vayBpcyBtZWFu
dApmb3IgY2FsbGluZyBwaHlfcG93ZXJfb2ZmKCkgYW5kIGNsa19kaXNhYmxlX3VucHJlcGFyZSgp
LCB3aGljaCBjYW4gc2xlZXAuCgpbU2V2ZXJpdHk6IE1lZGl1bV0KV2lsbCB0aGlzIGJyZWFrIExJ
Rk8gdGVhcmRvd24gb3JkZXJpbmc/IERpc2FibGluZyB0aGUgcGxhdGZvcm0gUEhZIGFuZCBjbG9j
a3MKdmlhIHBsYXRfb3BzLT5kaXNhYmxlKCkgYmVmb3JlIGNhbGxpbmcgaW5ub19oZG1pX3N0YW5k
YnkoKSBsZWF2ZXMgdGhlIGludGVybmFsCkhETUkgY29udHJvbGxlciBjb25maWd1cmVkIHdoaWxl
IGl0cyB1bmRlcmx5aW5nIGhhcmR3YXJlIGlzIHBvd2VyZWQgZG93bi4gVG8KbWFpbnRhaW4gcHJv
cGVyIExJRk8gb3JkZXJpbmcsIHNob3VsZG4ndCBpbm5vX2hkbWlfc3RhbmRieSgpIGJlIGNhbGxl
ZCBmaXJzdAp0byBwdXQgdGhlIGludGVybmFsIFBIWSByZWdpc3RlcnMgaW4gc3RhbmRieSBiZWZv
cmUgZGlzYWJsaW5nIHRoZSBwbGF0Zm9ybQpjbG9ja3MgYW5kIFBIWT8KCj4gIAo+ICAJaW5ub19o
ZG1pX3N0YW5kYnkoaGRtaSk7Cj4gIH0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTUtamg3MTEwLWNsZWFuLXNlbmQtdjQtMC1m
MGU0ZmQ2ZjJjYzhAc2Ftc3VuZy5jb20/cGFydD05CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
