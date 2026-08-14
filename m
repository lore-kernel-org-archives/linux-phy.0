Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41E42C5CFCF
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 04:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+wGv3UC+MUzw2HdUEJffIN9GMmdnb7ESGGyMYmie6Xg=; b=a7hqJPb/gK6D4c
	Gzka1krYRD4N88zLGpp48gyvWKQaK0mirFeId8Yva36Y5a2glqN4REJddVbx5E9uNzGM3BJejEweL
	tOR46B49/SrkA2wheACUGXhbnDtEZQNm7koITGX9pamFB5DxxDPZFJ18EqMxhDY0DKVcrNOJtdx4m
	nJ0v+1Nmqry/fPloQ2OCH0K9t/isLuzFUMHHIENG+PPJzjKya67Q964T68/zN8Rp7P2Gy26YQ3K89
	9VwJoCJbkMNK8rKOA2iL0jnMw+Ls4rCf2VI4SzdjyeJLZ4V+P3GMokhjGUaNpK+dQYpwYw2GkND/m
	tpucXrZ3ftHWW/Ta3JUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wujG2-00000001vSN-0tMc;
	Fri, 14 Aug 2026 04:11:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wujG1-00000001vSH-0vG3
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 04:11:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6A2EF43A57;
	Fri, 14 Aug 2026 04:10:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A912D1F000E9;
	Fri, 14 Aug 2026 04:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786680658;
	bh=wsMbl8FoGh7KTn3Z4KEFN7fT7UmCwOxo9NPY6ckr9Xc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NTMFrCgoGKYZXnCxrL862aJYndwcUpWhjyoGHILd5g9hd807s6o0mF2l2WKsHC4e/
	 jWtcTFL7M9ratISdzkPH1EA60TTU/xwjP/5RXzaE1Cncm1lVCt5C1/ziqF7xDjUq+k
	 uaUFzjgaqi7g8lQOeYAGycRWWvR4OZZUguWbiGVBjlRH7hnQsBK5FosZOP81i9qhYX
	 KHnkYm+AlsMrQ7bkeQiKnzbzbS8lLZYpSKQX/M0meOsM2HCq67rqSFhRr++f1ggI+E
	 YbcsFl4epgBDH+8wm3LNZGF3XNugHUZVVizUjwgKFSS5sRhSvYUtr18Gt3+nsNsoZB
	 8xBb4WpamgHAA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 20/38] phy: rockchip: usbdp: Factor out lane_mux_sel
 setup
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-20-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
 <20260813-rockchip-usbdp-cleanup-v14-20-b5ad9c68fa11@collabora.com>
Date: Fri, 14 Aug 2026 04:10:49 +0000
Message-Id: <20260814041052.A912D1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBEYXRhIHJhY2UgaW4gYHJrX3VkcGh5X2RwX3BoeV9jb25maWd1cmVgIGFsbG93cyBE
UCBsaW5rIHRyYWluaW5nIHRvIGNvcnJ1cHQgVVNCIFBIWSBsYW5lcy4KLS0KCi0tLSBQYXRjaCBb
MjBdOiBbUEFUQ0ggdjE0IDIwLzM4XSBwaHk6IHJvY2tjaGlwOiB1c2JkcDogRmFjdG9yIG91dCBs
YW5lX211eF9zZWwgc2V0dXAgLS0tCmNvbW1pdCAzMTI4NTVhMjgwZGIxYWY4YTUxYTY1ZDdjMzA1
ODAxY2Q1NWE1MDZkCkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVs
QGNvbGxhYm9yYS5jb20+CgpwaHk6IHJvY2tjaGlwOiB1c2JkcDogRmFjdG9yIG91dCBsYW5lX211
eF9zZWwgc2V0dXAKCkF2b2lkIGRlc2NyaWJpbmcgdGhlIFVTQitEUCBsYW5lX211eF9zZWwgbG9n
aWMgdHdpY2UgYnkgaW50cm9kdWNpbmcKYSBoZWxwZXIgZnVuY3Rpb24gdG8gcmVkdWNlIGNvZGUg
ZHVwbGljYXRpb24uCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5j
Cj4gaW5kZXggNGI0NTQ3OThjNGVkNC4uNGU1NDAyMGQxNzU1MSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gQEAgLTU4Miw2ICs1ODIsNDIgQEAgc3Rh
dGljIHZvaWQgcmtfdWRwaHlfbW9kZV9zZXQoc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwgdTggbW9k
ZSkKPiAgCXVkcGh5LT5tb2RlID0gbW9kZTsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgcmtfdWRw
aHlfc2V0X3R5cGVjX3N0YXRlKHN0cnVjdCBya191ZHBoeSAqdWRwaHksIHVuc2lnbmVkIGxvbmcg
c3RhdGUpCj4gK3sKPiArCXU4IG1vZGU7Cj4gKwo+ICsJc3dpdGNoIChzdGF0ZSkgewo+ICsJY2Fz
ZSBUWVBFQ19EUF9TVEFURV9DOgo+ICsJY2FzZSBUWVBFQ19EUF9TVEFURV9FOgo+ICsJCXVkcGh5
LT5sYW5lX211eF9zZWxbMF0gPSBQSFlfTEFORV9NVVhfRFA7Cj4gKwkJdWRwaHktPmxhbmVfbXV4
X3NlbFsxXSA9IFBIWV9MQU5FX01VWF9EUDsKPiArCQl1ZHBoeS0+bGFuZV9tdXhfc2VsWzJdID0g
UEhZX0xBTkVfTVVYX0RQOwo+ICsJCXVkcGh5LT5sYW5lX211eF9zZWxbM10gPSBQSFlfTEFORV9N
VVhfRFA7Cj4gKwkJbW9kZSA9IFVEUEhZX01PREVfRFA7Cj4gKwkJdWRwaHktPmRwX2xhbmVzID0g
NDsKPiArCQlicmVhazsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBp
c3N1ZSwgYnV0IGNhbiB0aGlzIGNvZGUgcmFjZSB3aXRoIERpc3BsYXlQb3J0IGxpbmsKdHJhaW5p
bmc/CgpJZiBhIHVzZXIgcmFwaWRseSB1bnBsdWdzIG9yIHJvdGF0ZXMgdGhlIFR5cGUtQyBjYWJs
ZSB3aGlsZSBhIGRpc3BsYXkgaXMKYXR0YWNoZWQgYW5kIHVuZGVyZ29pbmcgbGluayB0cmFpbmlu
ZywgdGhlIFR5cGUtQyBzdWJzeXN0ZW0gY291bGQKYXN5bmNocm9ub3VzbHkgY2FsbCBya191ZHBo
eV90eXBlY19tdXhfc2V0KCkuIFRoaXMgbW9kaWZpZXMgbGFuZV9tdXhfc2VsIGFuZApkcF9sYW5l
cyBoZXJlIGluIHJrX3VkcGh5X3NldF90eXBlY19zdGF0ZSgpIHdoaWxlIGhvbGRpbmcgdWRwaHkt
Pm11dGV4LgoKTWVhbndoaWxlLCB0aGUgRFAgTUFDIGRyaXZlciBtaWdodCBiZSBjYWxsaW5nIHBo
eV9jb25maWd1cmUoKSB0byBwZXJmb3JtCmxpbmsgdHJhaW5pbmcsIHdoaWNoIGludm9rZXMgcmtf
dWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpOgoKZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tj
aGlwLXVzYmRwLmM6cmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpIHsKLi4uCgkJZm9yIChpID0g
MDsgaSA8IHVkcGh5LT5sYW5lczsgaSsrKSB7CgkJCWxhbmUgPSB1ZHBoeS0+ZHBfbGFuZV9zZWxb
aV07CgkJCXN3aXRjaCAodWRwaHktPmxpbmtfcmF0ZSkgewoJCQljYXNlIDE2MjA6CgkJCWNhc2Ug
MjcwMDoKCQkJCXJlZ21hcF91cGRhdGVfYml0cyh1ZHBoeS0+cG1hX3JlZ21hcCwKCQkJCQkJICAg
VFJTVl9BTkFfVFhfQ0xLX09GRlNFVF9OKGxhbmUpLAoJCQkJCQkgICBMTl9BTkFfVFhfU0VSX1RY
Q0xLX0lOViwKCQkJCQkJICAgRklFTERfUFJFUChMTl9BTkFfVFhfU0VSX1RYQ0xLX0lOViwKCQkJ
CQkJICAgdWRwaHktPmxhbmVfbXV4X3NlbFtsYW5lXSkpOwouLi4KfQoKSWYgcmtfdWRwaHlfZHBf
cGh5X2NvbmZpZ3VyZSgpIGxvY2tsZXNzbHkgdmVyaWZpZXMgZHAtPmxhbmVzIDw9IHVkcGh5LT5k
cF9sYW5lcwphbmQgbG9vcHMgb3ZlciB1ZHBoeS0+bGFuZXMsIGNvdWxkIGl0IHJlYWQgYSB0b3Ju
IGxhbmVfbXV4X3NlbCBhcnJheSBvciBhIHN0YWxlCmRwX2xhbmVzIHZhbHVlPyBUaGlzIG1pZ2h0
IHJlc3VsdCBpbiBhcHBseWluZyBEaXNwbGF5UG9ydCB2b2x0YWdlcyB0byBQSFkgbGFuZXMKdGhh
dCBoYXZlIGp1c3QgYmVlbiByZWFzc2lnbmVkIHRvIFVTQiwgcG90ZW50aWFsbHkgY29ycnVwdGlu
ZyB0aGUgVVNCIGxpbmsgYW5kCmxlYXZpbmcgdGhlIFBIWSBpbiBhbiBpbmNvbnNpc3RlbnQgc3Rh
dGUuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNo
c2V0LzIwMjYwODEzLXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjE0LTAtYjVhZDljNjhmYTExQGNv
bGxhYm9yYS5jb20/cGFydD0yMAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
