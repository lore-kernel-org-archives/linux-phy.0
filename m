Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB91D606A90E
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 09:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Sy4h5mXT;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=jPqQRQjO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TvlLgy7OHMAbomfeQd9sYE+JPyztt0Pb3hbDtXvPqNA=; b=Sy4h5mXTyp1/ucgox4IJ+3JZ6h
	3dW5+E3+mqA7bxI0lalloiwB9hM3pN8tDObYropA4vfNVUCzmEqaNdaZyWgJ3QzfgbWHIxgfmvsmB
	AAafPRa6NPXtaJ2tIzvtdtrmomKG+k9FXAGS3Q4igGqKTZVis+rii18hWYn9fLWboLpmQUF8Yif13
	es4Nfz6kkWkpZRld37+VB22eRUdn3mXg60ah4/LQcpw59t/ayeZijuq8zUyzXkorh2WIfaJl2Og9u
	j5JUdlkkuyNQ9JQSHtrDed9yRue2bXSGICbrmt2h7L7RPqxSNe8GLsDK7z6lJ54fjH8mRm4QxpMn2
	EFgdCWPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGSd-0000000Bn0e-2roQ;
	Fri, 06 Nov 2026 09:42:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGSc-0000000Bmzk-0NTw
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 09:42:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6698D601E3;
	Fri,  6 Nov 2026 09:42:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 934291F0089F;
	Fri,  6 Nov 2026 09:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793958133;
	bh=HNto22eJkDbszb/3JWYefc2jHbqBtKmYFjQghf+dX9U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jPqQRQjOpWSyz0qcmb2pHUUczqYnTF7NIsxuvm72qO11Fjg09l0pgBUfc9AOkBB/6
	 8iblkrKX43/ll9cKwlkTZJrmNoXivAYUtyVk71RGOpKK3IDrevlBVspkgywgQeC0iY
	 sV07cxZUJVuyuUqduXO4Hw9KZau2x8Do6wwJRgXwKVsERkO+4v3/4ej+c5TW91qIfh
	 9crPEgktcCuuUn/bOgGHUbDTtb4+DAUSuOK0exLb1+VSRpi+khd/ZXBKnB4Xu7+Lb2
	 C5KpwuRm+TKr+vJYMwNU4UEJExFoZMi+SfIN998udS+9A3QVK4R8lJ494AgXm6e8zY
	 yMnwrTjMIJfog==
Message-ID: <sashiko-outbox-201143@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 05/25] dt-bindings: phy: add Metanoia USB2 PHY
To: =?utf-8?b?QmVub8OudCBNb25pbg==?= <benoit.monin@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, linux-watchdog@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261106-mt2824-v1-5-86087eaf5af4@bootlin.com>
References: <20261106-mt2824-v1-0-86087eaf5af4@bootlin.com>
 <20261106-mt2824-v1-5-86087eaf5af4@bootlin.com>
Date: Fri, 06 Nov 2026 09:42:12 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtMb3ddIGR0LWJpbmRpbmdzOiBwaHk6
IG1ldGFub2lhOiBpbnZhbGlkIGV4YW1wbGUgbm9kZSBuYW1lIGFuZCB1bnVzZWQKICBsYWJlbAot
IFtMb3ddIGR0LWJpbmRpbmdzOiBwaHk6IG1ldGFub2lhOiByZXNldC1vbmx5IG5vZGUsIHJlc2V0
LW5hbWVzLCBhbmQKICBmaWxlbmFtZQotLQoKY29tbWl0IDFlY2YyYzQzNGU0ZjgwMWZhNDllN2Fl
OTRhODMzYTU1NGM3NjJlYWQKQXV0aG9yOiBCZW5vw650IE1vbmluIDxiZW5vaXQubW9uaW5AYm9v
dGxpbi5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBhZGQgTWV0YW5vaWEgVVNCMiBQSFkKClRoaXMg
Y29tbWl0IGFkZHMgdGhlIGRldmljZXRyZWUgYmluZGluZyBzY2hlbWEgZm9yIHRoZSBVU0IyIFBI
WSBvbiB0aGUKTWV0YW5vaWEgTVQyODI0IFNvQy4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWV0YW5vaWEsdXNiMi1waHkueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWV0YW5vaWEsdXNiMi1waHkueWFtbAo+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uMDYwNWU2ZDBmNjdk
YQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L21ldGFub2lhLHVzYjItcGh5LnlhbWwKPiBAQCAtMCwwICsxLDQzIEBACj4gKyMgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UKPiArJVlB
TUwgMS4yCj4gKy0tLQo+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3BoeS9t
ZXRhbm9pYSx1c2IyLXBoeS55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcv
bWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiArCj4gK3RpdGxlOiBNZXRhbm9pYSBVU0IyIFBIWQo+
ICsKPiArZGVzY3JpcHRpb246IHwKPiArICBUaGUgTWV0YW5vaWEgTVQyODI0IFVTQjIgUEhZIGlz
IGNvbnRyb2xsZWQgc29sZWx5IHRocm91Z2ggYSByZXNldCBsaW5lLgo+ICsKPiArbWFpbnRhaW5l
cnM6Cj4gKyAgLSBKdW4gQ2hhbmcgPGp1bi5jaGFuZ0BtZXRhbm9pYS1jb21tLmNvbT4KPiArCj4g
K3Byb3BlcnRpZXM6Cj4gKyAgY29tcGF0aWJsZToKPiArICAgIGNvbnN0OiBtZXRhbm9pYSxtdDI4
MjQtdXNiMi1waHkKPiArCj4gKyAgcmVzZXRzOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAg
cmVzZXQtbmFtZXM6Cj4gKyAgICBjb25zdDogdXNiMi1waHkKCltTZXZlcml0eTogTG93XQpTaG91
bGQgdGhpcyBiaW5kaW5nIGRlc2NyaWJlIHRoZSBmdWxsIFBIWSBoYXJkd2FyZSBibG9jayAoc3Vj
aCBhcyBpdHMKcmVnaXN0ZXJzLCBjbG9ja3MsIG9yIHBvd2VyIHN1cHBsaWVzKSwgb3IgaWYgdGhl
IGludGVyZmFjZSBpcyBvbmx5IGEgc2luZ2xlCnJlc2V0IGxpbmUsIHNob3VsZCB0aGF0IHJlc2V0
IGJlIHJlZmVyZW5jZWQgZGlyZWN0bHkgYnkgdGhlIFVTQiBjb250cm9sbGVyCm5vZGUgcmF0aGVy
IHRoYW4gd3JhcHBlZCBpbiBhIHN0YW5kYWxvbmUgdmlydHVhbCBub2RlPwoKQWxzbywgcGVyIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9leGFtcGxlLXNjaGVtYS55YW1sLApyZXNl
dC1uYW1lcyBzaG91bGQgYmUgb21pdHRlZCB3aGVuIHRoZXJlIGlzIG9ubHkgYSBzaW5nbGUgcmVz
ZXQgZW50cnkgdGhhdApyZXBlYXRzIHRoZSBibG9jayBuYW1lLCBhbmQgdGhlIHNjaGVtYSBmaWxl
bmFtZSBhbmQgJGlkIHNob3VsZCBtYXRjaCB0aGUKc29sZSBjb21wYXRpYmxlIHN0cmluZyAobWV0
YW5vaWEsbXQyODI0LXVzYjItcGh5LnlhbWwpLgoKPiArCj4gKyAgIiNwaHktY2VsbHMiOgo+ICsg
ICAgY29uc3Q6IDAKPiArCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJsZQo+ICsgIC0gcmVz
ZXRzCj4gKyAgLSByZXNldC1uYW1lcwo+ICsgIC0gIiNwaHktY2VsbHMiCj4gKwo+ICthZGRpdGlv
bmFsUHJvcGVydGllczogZmFsc2UKPiArCj4gK2V4YW1wbGVzOgo+ICsgIC0gfAo+ICsgICAgdXNi
MnBoeTogdXNiMi1waHktcmVzZXQgewo+ICsgICAgICAgIGNvbXBhdGlibGUgPSAibWV0YW5vaWEs
bXQyODI0LXVzYjItcGh5IjsKPiArICAgICAgICAjcGh5LWNlbGxzID0gPDA+Owo+ICsgICAgICAg
IHJlc2V0cyA9IDwmcnN0IDE4PjsKPiArICAgICAgICByZXNldC1uYW1lcyA9ICJ1c2IyLXBoeSI7
Cj4gKyAgICB9OwoKW1NldmVyaXR5OiBMb3ddCkRvZXMgdGhlIGV4YW1wbGUgbm9kZSBuYW1lIHVz
YjItcGh5LXJlc2V0IGZhaWwgZHRfYmluZGluZ19jaGVjaz8KCkJlY2F1c2UgdGhlIG5vZGUgZGVm
aW5lcyAjcGh5LWNlbGxzLCBwaHktcHJvdmlkZXIueWFtbCByZXF1aXJlcyAkbm9kZW5hbWUKdG8g
bWF0Y2ggXih8dXNiLXx1c2IyLXx1c2IzLXxwY2ktfHBjaWUtfHNhdGEtKXBoeShAWzAtOWEtZixd
KykqJCAoZm9yCmV4YW1wbGUsIHBoeSBvciB1c2IyLXBoeSkuICBJbiBhZGRpdGlvbiwgdGhlIHVu
cmVmZXJlbmNlZCB1c2IycGh5OiBsYWJlbAp0cmlnZ2VycyBhbiB1bnVzZWQtbGFiZWxzIHdhcm5p
bmcgdW5kZXIgc2NyaXB0cy9kdGMvZHQtY2hlY2stc3R5bGUKLS1tb2RlPXN0cmljdCBhbmQgc2hv
dWxkIGJlIGRyb3BwZWQuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYxMTA2LW10MjgyNC12MS0wLTg2MDg3ZWFmNWFmNEBib290bGlu
LmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
