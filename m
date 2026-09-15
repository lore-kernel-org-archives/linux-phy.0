Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2E48C982C1
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJTf0mDcoCPm7DpbcdGqhbATTbiMLMDkjyYX8Ms1fT8=; b=UKYBwm1MO+mACo
	L+WEgK5aKvJ0ZPiWjePVOoPzn/v+FqYidc7dxAtEKQ2+WgJhM1GtdvzW2wbCCUll/7Lq6ZBFUz2vN
	H6fCzZ5DgQf8t+BVlDG4DGDvRXNtgdGLUcXx3r/qV5zntPDnJfm4S/1wWZk3ZD4gzL+whR5KTtX24
	FxRqYheIZgqqUoLIm5PCe0WxkL0I9v2vSF6B3bC7JsozPeyNmw5TeI70bVTN+Yq9cnvkF1jkIJVWQ
	asA1GYG1jIuKXszVKJHQ3gHzxv1kFcruOeikuhaab3H9O1Y+QAp87ca5yiwjMM08KYQxKPTXD9L90
	dEoYG9wlZPUDkiq8Rjkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VIP-00000007GGV-1JED;
	Tue, 15 Sep 2026 15:42:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VIN-00000007GGJ-3nRW
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:42:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5A21D600C8;
	Tue, 15 Sep 2026 15:42:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E8731F000FF;
	Tue, 15 Sep 2026 15:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789486927;
	bh=sli09y6FKQrH8iUVUhgotdFV2otW/66lomos+RBaaBw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=N/W/2yYXxWWyEiG0FKXO8V/W1n7VBMQ1m6Q3dkojBAtQB/qvpWS6t9AVC3CMhy/MT
	 +0ipihMJ36L3S21xpWzayl/L4LPaWzZyxfGd9pHxclxqLJ3qnm9SgxMQNR+oAzUcFO
	 6evWXgL2nM/zMg07PjQtrPy3CK3ckBIIDcbG7D2SqWpb6shg6HvTqnoxMGb+p05oRE
	 AfpsCHgJ2M7eloGDzqFctyRO8/RhsxokoA2D6UlJ6Q4TPjua4LQ92XpL2VpPl2v3wh
	 Q1Mnykcs607sgqfwBnMGWufwaLsHvEwCUEnMOFH9Nj/kO2iP/qTkzKW4zMvq5FZajM
	 xW3EeyBWhZOWA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 03/20] dt-bindings: mfd: Add
 starfive,jh7110-hdmi-subsystem
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, neil.armstrong@linaro.org, mfd@lists.linux.dev, robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, lee@kernel.org, olteanv@gmail.com
In-Reply-To: <20260915-jh7110-clean-send-v4-3-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153218eucas1p278c4870936afe1aaa52438660418f8c8@eucas1p2.samsung.com>
 <20260915-jh7110-clean-send-v4-3-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:42:06 +0000
Message-Id: <20260915154206.6E8731F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGR0LWJpbmRpbmdzOiBt
ZmQ6IGJ1cyBmYXVsdCBkdXJpbmcgUEhZIHByb2JlIGR1ZSB0byBhcnRpZmljaWFsIG5vZGUgc3Bs
aXQKLS0KCmNvbW1pdCA0NzIzMzQ0YmE2NDMxMDk1MDAzMTZjMGI1MmQ4OTBlYzlhMjdlNDNlCkF1
dGhvcjogTWljaGFsIFdpbGN6eW5za2kgPG0ud2lsY3p5bnNraUBzYW1zdW5nLmNvbT4KCmR0LWJp
bmRpbmdzOiBtZmQ6IEFkZCBzdGFyZml2ZSxqaDcxMTAtaGRtaS1zdWJzeXN0ZW0KICAgIApBZGQg
dGhlIGR0LWJpbmRpbmcgZm9yIHRoZSBTdGFyRml2ZSBKSDcxMTAgSERNSSBzdWJzeXN0ZW0uCiAg
ICAKVGhlIEpINzExMCBIRE1JIElQIGlzIGEgbW9ub2xpdGhpYyBibG9jayBjb250YWluaW5nIGJv
dGggdGhlIGRpZ2l0YWwKY29udHJvbGxlciBhbmQgYW5hbG9nIFBIWSBpbiBhIHNpbmdsZSByZWdp
c3RlciBzcGFjZS4gVGhpcyBiaW5kaW5nCmRlZmluZXMgdGhlIHBhcmVudCBkZXZpY2UsIHdoaWNo
IGhvbGRzIHRoZSBzaGFyZWQgcmVnaXN0ZXIgbWFwIGFuZApwb3B1bGF0ZXMgaXRzIHR3byBjaGls
ZHJlbjogdGhlIFBIWSBhbmQgdGhlIGNvbnRyb2xsZXIuIFRoaXMgaXMKbmVjZXNzYXJ5IHRvIHJl
c29sdmUgYSBjaXJjdWxhciBjbG9jayBkZXBlbmRlbmN5IGJldHdlZW4gdGhlIEhETUkgYmxvY2sK
YW5kIHRoZSBWT1VUIGNsb2NrIGdlbmVyYXRvci4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3RhcmZpdmUsamg3MTEwLWhkbWktc3Vic3lzdGVt
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N0YXJmaXZlLGpo
NzExMC1oZG1pLXN1YnN5c3RlbS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAw
MDAwMDAwMDAwMDAwLi4xODAzNGQ4MjczYjg2Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3RhcmZpdmUsamg3MTEwLWhkbWktc3Vi
c3lzdGVtLnlhbWwKPiBAQCAtMCwwICsxLDk1IEBACgpbIC4uLiBdCgo+ICtwcm9wZXJ0aWVzOgo+
ICsgIGNvbXBhdGlibGU6Cj4gKyAgICBjb25zdDogc3RhcmZpdmUsamg3MTEwLWhkbWktc3Vic3lz
dGVtCj4gKwo+ICsgIHJlZzoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIHBoeToKPiArICAg
ICRyZWY6IC9zY2hlbWFzL3BoeS9zdGFyZml2ZSxqaDcxMTAtaW5uby1oZG1pLXBoeS55YW1sIwo+
ICsKPiArICBjb250cm9sbGVyOgo+ICsgICAgJHJlZjogL3NjaGVtYXMvZGlzcGxheS9icmlkZ2Uv
c3RhcmZpdmUsamg3MTEwLWlubm8taGRtaS1jb250cm9sbGVyLnlhbWwjCgpbU2V2ZXJpdHk6IEhp
Z2hdCkRvZXMgdGhpcyBhcnRpZmljaWFsIHNwbGl0IG9mIGEgbW9ub2xpdGhpYyBibG9jayBpbnRv
IGNoaWxkIG5vZGVzIGNyZWF0ZSBhCnByb2JlIG9yZGVyIGlzc3VlPwoKQmVjYXVzZSB0aGUgY29u
dHJvbGxlciBkZXBlbmRzIG9uIHRoZSBwaHkgKHZpYSBjbG9ja3MgPSA8JmhkbWlfcGh5PiBpbiB0
aGUKZXhhbXBsZSBiZWxvdyksIGZ3X2RldmxpbmsgZ3VhcmFudGVlcyB0aGUgcGh5IGRyaXZlciBw
cm9iZXMgZmlyc3QuIER1cmluZwppdHMgcHJvYmUsIHRoZSBwaHkgZHJpdmVyIGNhbGxzIGNsa19z
ZXRfcmF0ZShpbm5vLT5waHljbGssIDI5NzAwMDAwMCksCndoaWNoIGFjY2Vzc2VzIHRoZSBzaGFy
ZWQgcmVnaXN0ZXIgc3BhY2UgdmlhIHJlZ21hcC4KCkhvd2V2ZXIsIHNpbmNlIHRoZSBIRE1JIHN5
c3RlbSBjbG9jayAoSkg3MTEwX1ZPVVRDTEtfSERNSV9UWF9TWVMpIGlzCmFzc2lnbmVkIGV4Y2x1
c2l2ZWx5IHRvIHRoZSBjb250cm9sbGVyIGNoaWxkLCBpdCBpcyBub3QgZW5hYmxlZCBkdXJpbmcg
dGhlCnBoeSBwcm9iZS4KCldpbGwgdGhpcyB1bmNsb2NrZWQgYWNjZXNzIHdlZGdlIHRoZSBidXMg
YW5kIGNhdXNlIGEgc3luY2hyb25vdXMgZXh0ZXJuYWwKYWJvcnQgd2hlbiB0aGUgcGh5IGFjY2Vz
c2VzIHRoZSBzaGFyZWQgcmVnaXN0ZXIgd2luZG93PwoKPiArCj4gK3JlcXVpcmVkOgo+ICsgIC0g
Y29tcGF0aWJsZQo+ICsgIC0gcmVnCj4gKyAgLSBwaHkKPiArICAtIGNvbnRyb2xsZXIKPiArCj4g
K2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+ICsKPiArZXhhbXBsZXM6Cj4gKyAgLSB8Cj4g
KyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svc3RhcmZpdmUsamg3MTEwLWNyZy5oPgo+
ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3N0YXJmaXZlLGpoNzExMC1jcmcuaD4K
PiArCj4gKyAgICBzb2Mgewo+ICsgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsgICAg
ICAgICNzaXplLWNlbGxzID0gPDE+Owo+ICsKPiArICAgICAgICBoZG1pQDI5NTkwMDAwIHsKPiAr
ICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzdGFyZml2ZSxqaDcxMTAtaGRtaS1zdWJzeXN0ZW0i
Owo+ICsgICAgICAgICAgICByZWcgPSA8MHgyOTU5MDAwMCAweDQwMDA+Owo+ICsKPiArICAgICAg
ICAgICAgY29udHJvbGxlciB7Cj4gKyAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInN0YXJm
aXZlLGpoNzExMC1pbm5vLWhkbWktY29udHJvbGxlciI7Cj4gKyAgICAgICAgICAgICAgICBjbG9j
a3MgPSA8JnZvdXRjcmcgSkg3MTEwX1ZPVVRDTEtfSERNSV9UWF9TWVM+LAo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgPCZ2b3V0Y3JnIEpINzExMF9WT1VUQ0xLX0hETUlfVFhfTUNMSz4sCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICA8JnZvdXRjcmcgSkg3MTEwX1ZPVVRDTEtfSERNSV9U
WF9CQ0xLPiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgIDwmaGRtaV9waHk+OwoKWyAuLi4g
XQoKPiArICAgICAgICAgICAgaGRtaV9waHk6IHBoeSB7Cj4gKyAgICAgICAgICAgICAgICBjb21w
YXRpYmxlID0gInN0YXJmaXZlLGpoNzExMC1pbm5vLWhkbWktcGh5IjsKPiArICAgICAgICAgICAg
ICAgICNjbG9jay1jZWxscyA9IDwwPjsKPiArICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmeGlu
MjRtPjsKPiArICAgICAgICAgICAgICAgICNwaHktY2VsbHMgPSA8MD47Cj4gKyAgICAgICAgICAg
IH07Cj4gKyAgICAgICAgfTsKPiArICAgIH07Cj4gKy4uLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxNS1qaDcxMTAtY2xlYW4t
c2VuZC12NC0wLWYwZTRmZDZmMmNjOEBzYW1zdW5nLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
