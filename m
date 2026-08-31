Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 567D3C61DFD
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 21:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z7tzGB37TwUlhXXHcIvJtZ8yoKhJRIDQT5AV5uGN1Zk=; b=OH3K2GOxEx82mm
	5NZmQq4sCBZNjPVLtKKRLSSTDIsKJ9pKpge/NbXiaS88IxUEhQq/QUQVZPCSqTs5u32pAeYBHDcvY
	7pwNMuYry5KSUeqSLLLlxPQaeqbPdDuENoyUz66AiPRVlragFCpjTVm2Ziu/p0dNcB+KFl6OTqSOk
	vecmhdk//hpkoBeBDYatWSc/dGCXgPMOdcL67Bx4Z4W/8F3M9pinwsXefI3LLalPs20YPAzBjCYoU
	5fGPGSe9qJiaCGjt69NmKn+uOp0Wp/FGRIyWPneHYigfIkF3eZGyLQLHkrdtzaIa7OrFQxY+4NN3O
	syakUmwN/P8Yvv6DT7Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x19i5-0000000AY5G-40DK;
	Mon, 31 Aug 2026 21:38:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x19i5-0000000AY59-0mTK
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 21:38:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BCDD240095;
	Mon, 31 Aug 2026 21:38:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BA3E1F000E9;
	Mon, 31 Aug 2026 21:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788212312;
	bh=Aj2sYHkOnnYHaUmcNMf5rNs3RjB4AzzWCXKDkC6lK+E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QznOBsAAzvp0KAvDIT5EuJCkGSZz4nrfAldXarTTCxv2ZUQ/Q9ymK4xUomCYH2dMf
	 G29WS6ybbsH8Sw4CC2yHZr0d3+EIA+WyHKBGc0TMTBrvxvRwaIBVRzBQ1T0Vaq02xA
	 chrmA1NGdILP8akiGlg8ZhErWTcEky2N/BfemaYo4vChKSxUovYn0MZncfg5Gy4akP
	 gIcQCNIcqvcOroaKZ7R0Vj92hgupDZaV0+c0qeSvIvQGYn9EmnIj/sATmWCcpy01qD
	 JTmWrMaOEeIdsMhOIkDsRCJv4Mpo9BVjLl8DR+wA9F+cxluRIBePbN9RNizlPQ9aiv
	 1VcDDqtr34/Dg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V2 4/8] phy: tegra: xusb: Use devm_clk_get_optional to
 fetch USB2 tracking clock
To: "Wayne Chang" <waynec@nvidia.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260831185835.3732707-5-waynec@nvidia.com>
References: <20260831185835.3732707-1-waynec@nvidia.com>
 <20260831185835.3732707-5-waynec@nvidia.com>
Date: Mon, 31 Aug 2026 21:38:31 +0000
Message-Id: <20260831213832.2BA3E1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBEb3VibGUgZnJlZSBvZiB0aGUgcGFkIHN0cnVjdHVyZSBvbiB0aGUgYHRlZ3JhX3h1
c2JfcGFkX2luaXQoKWAgZXJyb3IgcGF0aC4KLSBbSGlnaF0gSW1wcm9wZXIgdXNlIG9mIGBkZXZp
Y2VfdW5yZWdpc3RlcigpYCBmb3IgYW4gdW4tYWRkZWQgZGV2aWNlIGNhdXNlcyBhIE5VTEwgcG9p
bnRlciBkZXJlZmVyZW5jZS4KLS0KCmNvbW1pdCAwYWVlZDZmY2RiMjFlOGM4OWM4OGE3NTBjNzAw
Mjc5M2I2MGQ4M2QxCkF1dGhvcjogU2luZy1IYW4gQ2hlbiA8c2luZ2hhbmNAbnZpZGlhLmNvbT4K
CnBoeTogdGVncmE6IHh1c2I6IFVzZSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwgdG8gZmV0Y2ggVVNC
MiB0cmFja2luZyBjbG9jawoKVGhpcyBjb21taXQgdXBkYXRlcyB0aGUgVVNCMiBQQUQgdHJhY2tp
bmcgY2xvY2sgZmV0Y2hpbmcgdG8gdXNlCmRldm1fY2xrX2dldF9vcHRpb25hbCwgYWxsb3dpbmcg
dGhlIHByb2JlIHRvIGNvbnRpbnVlIGlmIHRoZSBvcHRpb25hbAp0cmFja2luZyBjbG9jayBpcyBt
aXNzaW5nIGluIHRoZSBkZXZpY2V0cmVlLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGVn
cmEveHVzYi10ZWdyYTE4Ni5jIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi10ZWdyYTE4Ni5jCj4g
LS0tIGEvZHJpdmVycy9waHkvdGVncmEveHVzYi10ZWdyYTE4Ni5jCj4gKysrIGIvZHJpdmVycy9w
aHkvdGVncmEveHVzYi10ZWdyYTE4Ni5jCj4gQEAgLTEwNDUsNyArMTA0NSw3IEBAIHRlZ3JhMTg2
X3VzYjJfcGFkX3Byb2JlKHN0cnVjdCB0ZWdyYV94dXNiX3BhZGN0bCAqcGFkY3RsLAo+ICAJCWdv
dG8gb3V0Owo+ICAJfQoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVnIGludHJvZHVj
ZWQgYnkgdGhpcyBwYXRjaCwgYnV0IHdoaWxlIHJldmlld2luZyB0aGUgZXJyb3IKaGFuZGxpbmcg
YXJvdW5kIHRoaXMgaW5pdGlhbGl6YXRpb24sIEkgbm90aWNlZCBhIGNvdXBsZSBvZiBwcmUtZXhp
c3RpbmcKaXNzdWVzIGluIHRoZSBmYWlsdXJlIHBhdGggb2YgdGVncmFfeHVzYl9wYWRfaW5pdCgp
IGp1c3QgYWJvdmUgdGhpcyBjaGFuZ2UuCgpJZiBkZXZfc2V0X25hbWUoKSBvciBkZXZpY2VfYWRk
KCkgZmFpbHMgaW4gdGVncmFfeHVzYl9wYWRfaW5pdCgpLCBpdCBqdW1wcwp0byB0aGUgdW5yZWdp
c3RlciBsYWJlbCBhbmQgY2FsbHMgZGV2aWNlX3VucmVnaXN0ZXIoJnBhZC0+ZGV2KS4KCkZpcnN0
LCBkb2VzIGNhbGxpbmcgZGV2aWNlX3VucmVnaXN0ZXIoKSBvbiBhIGRldmljZSB0aGF0IHdhcyBu
ZXZlciBmdWxseSAKYWRkZWQgY2F1c2UgYSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2U/IFNpbmNl
IGRldmljZV9hZGQoKSBmYWlsZWQgb3Igd2Fzbid0CmNhbGxlZCwgZGV2LT5wIHdvdWxkIGJlIE5V
TEwuIFdoZW4gZGV2aWNlX2RlbCgpIGlzIGNhbGxlZCBpbnRlcm5hbGx5LCBpdAphdHRlbXB0cyB0
byBhY2Nlc3MgZGV2LT5wLT5rbm9kZV9wYXJlbnQsIHdoaWNoIHNlZW1zIGxpa2UgaXQgd291bGQg
Y3Jhc2guClNob3VsZCB0aGlzIHN0cmljdGx5IHVzZSBwdXRfZGV2aWNlKCZwYWQtPmRldikgaW5z
dGVhZD8KClNlY29uZCwgaWYgdGVncmFfeHVzYl9wYWRfaW5pdCgpIGZhaWxzLCBjYWxsaW5nIGRl
dmljZV91bnJlZ2lzdGVyKCkgZHJvcHMKdGhlIHJlZmVyZW5jZSBjb3VudCB0byAwLCB3aGljaCB0
cmlnZ2VycyB0ZWdyYV94dXNiX3BhZF9yZWxlYXNlKCkgYW5kIGl0cwphc3NvY2lhdGVkIHBhZC1z
cGVjaWZpYyByZW1vdmUgY2FsbGJhY2ssIGV4ZWN1dGluZyB0aGUgZmlyc3QgZnJlZS4gSG93ZXZl
ciwKd2hlbiB0aGUgZXJyb3IgaXMgcmV0dXJuZWQgaGVyZSB0byB0ZWdyYTE4Nl91c2IyX3BhZF9w
cm9iZSgpLCB0aGUgY29kZQpleHBsaWNpdGx5IGNhbGxzIGtmcmVlKHVzYjIpLiBDb3VsZCB0aGlz
IHJlc3VsdCBpbiBhIGRvdWJsZS1mcmVlIG9mIHRoZQp1c2IyIHN0cnVjdHVyZT8KCj4gLQlwcml2
LT51c2IyX3Rya19jbGsgPSBkZXZtX2Nsa19nZXQoJnBhZC0+ZGV2LCAidHJrIik7Cj4gKwlwcml2
LT51c2IyX3Rya19jbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwoJnBhZC0+ZGV2LCAidHJrIik7
Cj4gIAlpZiAoSVNfRVJSKHByaXYtPnVzYjJfdHJrX2NsaykpIHsKPiAgCQllcnIgPSBQVFJfRVJS
KHByaXYtPnVzYjJfdHJrX2Nsayk7Cj4gIAkJZGV2X2RiZygmcGFkLT5kZXYsICJmYWlsZWQgdG8g
Z2V0IHVzYjIgdHJrIGNsb2NrOiAlZFxuIiwgZXJyKTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDC
tyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MzExODU4MzUuMzczMjcwNy0x
LXdheW5lY0BudmlkaWEuY29tP3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
