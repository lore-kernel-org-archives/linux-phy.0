Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC676C5AC80
	for <linux-phy@archiver.kernel.org>; Sun,  9 Aug 2026 13:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzNg2tucp8NuMad5nv6DNOsFK9smNZw7I49UKQ7+E7E=; b=gX/BM3OtoT1RCc
	xeE062G6JKElihVYOvNIWq2u49Pr6PvNJbWB+rRbcng8D2DRqZH9jtYMe5+r92DU+iGquCZBY2dHN
	hOn20lJHiJBhOtAzpPSxI4phhbrzvgN6nJrkewD26gatNcj0CRPclb7/70li2refrPMhgAu4RtK7V
	JD8fD8v8tDzRDuTjSGjEkNZlOZrKSHpUQqFwjDwn6VgZ82tW+u0h1sC5z8Tl8iQFC4P5w1LNVf+ey
	+tv2LyH9NUAY2Kch7ejLsGkHsNOdLeQk7BRG9kTz35ClkynedfKa5ed/iJQoI9l9jGXFTS9O2fzwP
	ISEMt9X4a0wFsdH6Yrfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wt3Wd-0000000ALua-2AfT;
	Sun, 09 Aug 2026 13:25:15 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wt3Wb-0000000ALuU-3WgY
	for linux-phy@lists.infradead.org;
	Sun, 09 Aug 2026 13:25:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0D32B60008;
	Sun,  9 Aug 2026 13:25:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44C9B1F000E9;
	Sun,  9 Aug 2026 13:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786281912;
	bh=kYhbp28F7+UBM4KevzI4kFU74uU33VbXDdO7XLaaMWQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DmBHf/re5PKZIi5O6lnCrGXT6c9u9WVHL/A+16nMIqXjKt5/SCvnBnSjLa9P5oM/i
	 p6Y4ZSLz3J8+Zx/ofWV3K3VH+RTZtewLRpdJvcgMRHrxeRX+9EWCJMjRtestqZ1xhC
	 KyTawhfI1iAYzE8RSNcv+ntwNXUTvbiE+c7InMqBgG2naLxw0xT0MO31LaS5slOefp
	 u/NJchwGXa2R1/gQt9dlIocTgMzLm1lRjrLY9kE0ZGFDcmb7RHnzLxMRE8JuzUbnQy
	 ENuojS418jGhBRuulTepSxI2jYhBTIWu9zPHnSsWRjx6xztnOXiXyxsBTpY1nZkJKb
	 V6lw5JqmrlYsg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 03/17] dt-bindings: display: spacemit: add K3
 Innosilicon DP/eDP controller
To: "Cody Kang" <codykang.hk@gmail.com>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260809-k3-display-v2-3-327d7910bf71@gmail.com>
References: <20260809-k3-display-v2-0-327d7910bf71@gmail.com>
 <20260809-k3-display-v2-3-327d7910bf71@gmail.com>
Date: Sun, 09 Aug 2026 13:25:10 +0000
Message-Id: <20260809132511.44C9B1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFByb2JlIGRlYWRsb2Nr
IGFuZCBjaXJjdWxhciBkZXBlbmRlbmN5IGR1ZSB0byB0aGUgcGFyZW50IERQIGNvbnRyb2xsZXIg
Y29uc3VtaW5nIGEgY2xvY2sgYW5kIFBIWSBwcm92aWRlZCBieSBpdHMgb3duIGNoaWxkIG5vZGUu
Ci0tCgotLS0gUGF0Y2ggWzNdOiBbUEFUQ0ggdjIgMDMvMTddIGR0LWJpbmRpbmdzOiBkaXNwbGF5
OiBzcGFjZW1pdDogYWRkIEszIElubm9zaWxpY29uIERQL2VEUCBjb250cm9sbGVyIC0tLQpjb21t
aXQgZWFkODZmMTc0OWRjODI0Y2QzZjJiM2M4ZGM4ZDI4NjExYmZjNjg2NgpBdXRob3I6IENvZHkg
S2FuZyA8Y29keWthbmcuaGtAZ21haWwuY29tPgoKZHQtYmluZGluZ3M6IGRpc3BsYXk6IHNwYWNl
bWl0OiBhZGQgSzMgSW5ub3NpbGljb24gRFAvZURQIGNvbnRyb2xsZXIKICAgIApUaGlzIGNvbW1p
dCBhZGRzIHRoZSBkZXZpY2UgdHJlZSBiaW5kaW5nIHNjaGVtYSBmb3IgdGhlIElubm9zaWxpY29u
CkRpc3BsYXlQb3J0IHRyYW5zbWl0IGNvbnRyb2xsZXIgb24gdGhlIFNwYWNlbWlUIEszIFNvQy4g
SXQgaW5jbHVkZXMKZGVmaW5pdGlvbnMgZm9yIHRoZSBEUCBQSFkgY2hpbGQgbm9kZSB3aGljaCBw
cm92aWRlcyBjbG9ja3MgYW5kIFBIWQpyZXNvdXJjZXMgdG8gdGhlIHBhcmVudCBEUCBjb250cm9s
bGVyLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rp
c3BsYXkvc3BhY2VtaXQvc3BhY2VtaXQsazMtaW5uby1kcC55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvc3BhY2VtaXQvc3BhY2VtaXQsazMtaW5uby1kcC55
YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvc3BhY2VtaXQvc3BhY2VtaXQsazMt
aW5uby1kcC55YW1sClsgLi4uIF0KPiArZXhhbXBsZXM6Cj4gKyAgLSB8ClsgLi4uIF0KPiArICAg
ICAgICBlZHBAY2FjODQwMDAgewo+ICsgICAgICAgICAgICBjb21wYXRpYmxlID0gInNwYWNlbWl0
LGszLWlubm8tZHAiOwo+ICsgICAgICAgICAgICByZWcgPSA8MHgwIDB4Y2FjODQwMDAgMHgwIDB4
NDAwMD47Cj4gKyAgICAgICAgICAgIGludGVycnVwdHMgPSA8MTMyIElSUV9UWVBFX0xFVkVMX0hJ
R0g+Owo+ICsgICAgICAgICAgICBjbG9ja3MgPSA8JnN5c2Nvbl9hcG11IENMS19BUE1VX0VEUDBf
UFhDTEs+LCA8JmVkcDBfcGh5PjsKPiArICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAicHhjbGsi
LCAicGxsIjsKPiArICAgICAgICAgICAgcmVzZXRzID0gPCZzeXNjb25fYXBtdSBSRVNFVF9BUE1V
X0VEUDA+Owo+ICsgICAgICAgICAgICBwaHlzID0gPCZlZHAwX3BoeT47Cj4gKyAgICAgICAgICAg
IHBoeS1uYW1lcyA9ICJkcCI7Cj4gKwo+ICsgICAgICAgICAgICBlZHAwX3BoeTogcGh5IHsKPiAr
ICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAic3BhY2VtaXQsazMtaW5uby1kcC1waHkiOwo+
ICsgICAgICAgICAgICAgICAgI3BoeS1jZWxscyA9IDwwPjsKPiArICAgICAgICAgICAgICAgICNj
bG9jay1jZWxscyA9IDwwPjsKCltTZXZlcml0eTogSGlnaF0KRG9lcyBtb2RlbGluZyB0aGUgUEhZ
IGFuZCBjbG9jayByZXNvdXJjZXMgdGhpcyB3YXkgY3JlYXRlIGEgY2lyY3VsYXIgcHJvYmUKZGVw
ZW5kZW5jeT8KClRoZSBwYXJlbnQgbm9kZSByZWZlcmVuY2VzIGl0cyBvd24gY2hpbGQgbm9kZSAo
ZWRwMF9waHkpIGZvciBib3RoIGNsb2NrcwphbmQgcGh5cy4gSWYgdGhlIHBhcmVudCByZXF1ZXN0
cyB0aGVzZSByZXNvdXJjZXMgdmlhIHN0YW5kYXJkIEFQSXMgZHVyaW5nCml0cyBwcm9iZSBmdW5j
dGlvbiwgaXQgd2lsbCBsaWtlbHkgcmVjZWl2ZSBhbiBpbmRlZmluaXRlIC1FUFJPQkVfREVGRVIu
CgpUaGUgY2hpbGQgY2Fubm90IHByb2JlIGFuZCByZWdpc3RlciBpdHMgcmVzb3VyY2VzIHVudGls
IHRoZSBwYXJlbnQgY29tcGxldGVzCmVub3VnaCBvZiBpdHMgb3duIHByb2JlIHRvIHBvcHVsYXRl
IGl0cyBjaGlsZHJlbi4KCklzIHRoZXJlIGEgc3BlY2lmaWMgZHJpdmVyIHNlcXVlbmNlIGV4cGVj
dGVkIGhlcmUgdG8gYXZvaWQgdGhpcyBkZWFkbG9jaywKb3Igc2hvdWxkIHRoZSBoYXJkd2FyZSBh
YnN0cmFjdGlvbiBiZSByZXByZXNlbnRlZCBkaWZmZXJlbnRseSB0byBhdm9pZCB0aGUKc2VsZi1y
ZWZlcmVudGlhbCBwaGFuZGxlcz8KCj4gKyAgICAgICAgICAgICAgICBjbG9jay1vdXRwdXQtbmFt
ZXMgPSAiZWRwMF9wbGxfcHhjbGsiOwo+ICsgICAgICAgICAgICB9OwpbIC4uLiBdCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODA5
LWszLWRpc3BsYXktdjItMC0zMjdkNzkxMGJmNzFAZ21haWwuY29tP3BhcnQ9MwoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
