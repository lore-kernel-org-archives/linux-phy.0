Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81EE3CD4F26
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jun 2026 09:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xWFF4JMcLQhFWdu8jfJwYjx7YMEEhW0O1QA9lhinDfY=; b=jz7S85PfSIykFn
	8K7JbCvxD1FaBmIKqclbj+m+y7HksRjooIpYGotrsLUo91kf4emeMcl3ewov01iCa0DnxAJD9ZuDE
	fqjnC7g5Lhiba9CJ8FGRsxYfdK3wwCCQLXZqAT0VWMUxU3P0Z1bM6EAq5PXr3YGb43p3K7ZYGWvs1
	6zxMQxfd7YmZbEDquHVsLiuZUoBb2LeEiSuRu+JdmSPpNaOC7mrflYyHLTqJeWh+/WBP7RvbgMkBF
	dh3aP0Z3MA49W2MAQHtxgR0MlokGP9OX9tPmLry667Bw7KyvmMZqoTkXL/lOqySnwAR84Li0yB67w
	ZBqZOb4ExBHmhlZFI06A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waVRI-00000002Dp0-193C;
	Fri, 19 Jun 2026 09:23:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waVRH-00000002Dop-2Squ
	for linux-phy@lists.infradead.org;
	Fri, 19 Jun 2026 09:23:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9BB3B601E3;
	Fri, 19 Jun 2026 09:23:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D68CF1F000E9;
	Fri, 19 Jun 2026 09:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781860982;
	bh=GXT9765pqnJW1/eGdkBIUUJJq+xEimrZNw0fwIVJj3g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OrQdIYPZLVqJ9oFt2GDSczuLNCSe7lk4ctNURkArtWvRyCC0fjEF83YiYWz10tzqv
	 ws4CEsE2POIO/cLpUl2yXEO+A7hfnx7CcG7m27rfENXXqppN5d/gh/2leTzEZ5bR6A
	 X5rSsxceWGjSBml7TZhVknfcp1a2twcbwLGAF3HpHJWUTTPB+hpph1qXG2SqR0ERbC
	 TU6nG1cEVm85zAEyvREaGlzcOex4Vxv6YWSBXOL6sQkgPqqCBEQsft7O8shw6SfPna
	 13aCaczy+wioRZK2VZL3l7gl4zDIf2x2EUS5ygEwNVkgEDNMc6Pb5PzqsA9d9dZWPb
	 eoADc1c2ftbqg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] phy: rockchip: phy-rockchip-inno-csidphy: fix
 rk1808 hsfreq table
To: "Gerald Loacker" <gerald.loacker@wolfvision.net>
Cc: olteanv@gmail.com, vkoul@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260619-feature-mipi-csi-dphy-4k60-v2-1-323356c2cc2e@wolfvision.net>
References: <20260619-feature-mipi-csi-dphy-4k60-v2-0-323356c2cc2e@wolfvision.net>
 <20260619-feature-mipi-csi-dphy-4k60-v2-1-323356c2cc2e@wolfvision.net>
Date: Fri, 19 Jun 2026 09:23:00 +0000
Message-Id: <20260619092301.D68CF1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBWYWxpZCBsb3dlc3QgZnJlcXVlbmN5IHJhbmdlcyBhcmUgaW5jb3JyZWN0bHkgcmVq
ZWN0ZWQgYmVjYXVzZSBgaHNmcmVxID09IDB4MDBgIGlzIHRyZWF0ZWQgYXMgYW4gZXJyb3IgYnkg
dGhlIGBpZiAoIWhzZnJlcSlgIGNoZWNrLgotLQoKY29tbWl0IGQ3YTI1MThhOTVkMmFiN2I4ZjJi
YWVhMGRhOWYzNTY0NmZmYjYxMzYKQXV0aG9yOiBHZXJhbGQgTG9hY2tlciA8Z2VyYWxkLmxvYWNr
ZXJAd29sZnZpc2lvbi5uZXQ+CgpwaHk6IHJvY2tjaGlwOiBwaHktcm9ja2NoaXAtaW5uby1jc2lk
cGh5OiBmaXggcmsxODA4IGhzZnJlcSB0YWJsZQoKVGhlIHJrMTgwOCBoc2ZyZXEgdGFibGUgcHJl
dmlvdXNseSBjYXBwZWQgYXQgMjQ5OSBNYnBzLCBwcmV2ZW50aW5nIGEgZGF0YSByYXRlCm9mIGV4
YWN0bHkgMjUwMCBNYnBzLiBUaGlzIGNvbW1pdCBleHRlbmRzIHRoZSBmaW5hbCBlbnRyeSB0byAy
NTAwIE1icHMgdG8KZnVsbHkgc3VwcG9ydCB0aGlzIHJhdGUsIHdoaWNoIGlzIGFsc28gZXNzZW50
aWFsIGZvciBSSzM1ODggYXMgaXQgcmV1c2VzCnRoaXMgYXJyYXkuCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1jc2lkcGh5LmMgYi9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1jc2lkcGh5LmMKPiBpbmRleCBjNzlmYjUz
ZDhlZTVjLi41MjgxZjhkZWEwYWQzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1pbm5vLWNzaWRwaHkuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1pbm5vLWNzaWRwaHkuYwo+IEBAIC0xNzAsNyArMTcwLDcgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBoc2ZyZXFfcmFuZ2UgcmsxODA4X21pcGlkcGh5X2hzZnJlcV9yYW5nZXNb
XSA9IHsKPiAgCXsgMjk5LCAweDA2fSwgeyAzOTksIDB4MDh9LCB7IDQ5OSwgMHgwYn0sIHsgNTk5
LCAweDBlfSwKPiAgCXsgNjk5LCAweDEwfSwgeyA3OTksIDB4MTJ9LCB7IDk5OSwgMHgxNn0sIHsx
MTk5LCAweDFlfSwKPiAgCXsxMzk5LCAweDIzfSwgezE1OTksIDB4MmR9LCB7MTc5OSwgMHgzMn0s
IHsxOTk5LCAweDM3fSwKPiAtCXsyMTk5LCAweDNjfSwgezIzOTksIDB4NDF9LCB7MjQ5OSwgMHg0
Nn0KPiArCXsyMTk5LCAweDNjfSwgezIzOTksIDB4NDF9LCB7MjUwMCwgMHg0Nn0KPiAgfTsKPiAg
Cj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaHNmcmVxX3JhbmdlIHJrMzMyNl9taXBpZHBoeV9oc2Zy
ZXFfcmFuZ2VzW10gPSB7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcgaW50cm9k
dWNlZCBieSB0aGlzIHBhdGNoLCBidXQgZG9lcyB0aGUgY29uZmlndXJhdGlvbiBsb2dpYwpyZWpl
Y3QgdmFsaWQgbG93IGZyZXF1ZW5jeSByYW5nZXM/CgpMb29raW5nIGF0IHJrMzMyNl9taXBpZHBo
eV9oc2ZyZXFfcmFuZ2VzW10sIHRoZSBmaXJzdCBlbnRyeSBjb25maWd1cmVzIGxvdwpkYXRhIHJh
dGVzIHVzaW5nIDB4MDA6CgogICAgeyAxMDksIDB4MDAgfSwgLi4uCgpJbiByb2NrY2hpcF9pbm5v
X2NzaWRwaHlfY29uZmlndXJlKCksIGhzZnJlcSBpcyBpbml0aWFsaXplZCB0byAwIGFuZCB2YWxp
ZGF0ZWQKd2l0aDoKCglmb3IgKGkgPSAwOyBpIDwgZHJ2X2RhdGEtPm51bV9oc2ZyZXFfcmFuZ2Vz
OyBpKyspIHsKCQlpZiAoZHJ2X2RhdGEtPmhzZnJlcV9yYW5nZXNbaV0ucmFuZ2VfaCA+PSBkYXRh
X3JhdGVfbWJwcykgewoJCQloc2ZyZXEgPSBkcnZfZGF0YS0+aHNmcmVxX3Jhbmdlc1tpXS5jZmdf
Yml0OwoJCQlicmVhazsKCQl9Cgl9CglpZiAoIWhzZnJlcSkKCQlyZXR1cm4gLUVJTlZBTDsKCldo
ZW4gYSBsb3cgZGF0YSByYXRlIGlzIHJlcXVlc3RlZCAoZS5nLiwgPD0gMTA5IE1icHMgZm9yIHJr
MzMyNiksIHRoZSBsb29wCmNvcnJlY3RseSBhc3NpZ25zIGhzZnJlcSA9IDB4MDAuIEhvd2V2ZXIs
IHRoZSBzdWJzZXF1ZW50IGlmICghaHNmcmVxKSBjaGVjawp0cmVhdHMgdGhpcyB2YWxpZCBjb25m
aWd1cmF0aW9uIGFzIGFuIGVycm9yIHN0YXRlIGFuZCByZXR1cm5zIC1FSU5WQUwuCgpUaGlzIHNh
bWUgcGF0dGVybiBhcHBlYXJzIGluIGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1k
cGh5LXJ4MC5jCmR1cmluZyBya19kcGh5X2NvbmZpZ3VyZSgpIHdoZXJlIGxvdy1zcGVlZCBjb25m
aWd1cmF0aW9ucyBhcmUgc2ltaWxhcmx5CnJlamVjdGVkLgoKQ291bGQgdGhlIHZhbGlkYXRpb24g
Y2hlY2sgYmUgdXBkYXRlZCB0byBkaWZmZXJlbnRpYXRlIGJldHdlZW4gYW4gdW5pbml0aWFsaXpl
ZAp2YWx1ZSBhbmQgYSB2YWxpZCAweDAwIGNvbmZpZ3VyYXRpb24/CgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjE5LWZlYXR1cmUt
bWlwaS1jc2ktZHBoeS00azYwLXYyLTAtMzIzMzU2YzJjYzJlQHdvbGZ2aXNpb24ubmV0P3BhcnQ9
MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
