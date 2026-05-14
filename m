Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93665CD4F39
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 12:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XmXnmZTf5CuOHnlIlIJns1fDywzwOYQ72mc/8WyZsr8=; b=hegzYnH3+OIELi
	RB/cTWw57Lw0SnxzQpaeDY9ryhmsqx+E0lfZJZXNnTiT+gbOW7lGQcig7+SNRGPoqNAUQDpM7BqkR
	VDD1QFrOEJhU8x3uM35iIn7fTIyYqBgKVK9QWr32Opz3eJSrsvCGOakBTqkP0k1fp/z/XYVG3Ci7L
	NOE9oEI9gnkG6XoodMV/25DiqNQBidr8oPZZm6+akIZsDByNRZxDkPFrLGMGt9e19edg9ZUlUi3dG
	x7syE/rbxMatfFOcjPn+OT6hrtqrsIBtZ6RQJQj4Snxyg2f8jRpJNpBB5yOz1lqzrHMl5d3spTRa1
	5Z64pFWlMBLhb/DkgMZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNUlS-00000005P6T-3wOm;
	Thu, 14 May 2026 12:02:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNUlR-00000005P65-0cd7
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 12:02:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 60F8160121;
	Thu, 14 May 2026 12:02:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D52E0C2BCB3;
	Thu, 14 May 2026 12:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778760124;
	bh=1iVQBjf58ZYEeUeFFqYecz1XP3vHmPY5Q3TjBSOnt7I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=ihxtfHadwBmnIHSlWuLKr3fHkSRjtZbFiLVBfTEg8QpU2u3w/otjDzmZ8/hNll57j
	 1lqm3FER5hozHev7DQOo3u5xmQVIZIOJuPLWqVXbWKn0mqFIJdldB2TYF58iKCWfGc
	 Z5S8+V6isCOfllo1+AvcU+64j0QRMo3hDk1gNeJGgF0eve6skXsLvGNWZ4mP84jTKe
	 Ly8WQZ+HI0u4ULmVlZP75vLmhvQ8r9lreTRdRGR3KbdPYor7kiBuWCWLs5ltk9U1cL
	 XDPrcIyQ1dZ6S1DjVnL/iF8yhnSLYCSsmp3/r16c6TVIyeuksp0Lmkcjoa1WgZxLWo
	 EwfheeLvNWCGw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] phy: ti: pipe3: Fix clock resource leak on probe
 errors
To: "Hongling Zeng" <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260514023424.23815-1-zenghongling@kylinos.cn>
References: <20260514023424.23815-1-zenghongling@kylinos.cn>
Date: Thu, 14 May 2026 12:02:03 +0000
Message-Id: <20260514120203.D52E0C2BCB3@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFVuY2hlY2tlZCBjbGtf
cHJlcGFyZV9lbmFibGUoKSByZXR1cm4gdmFsdWUgbGVhZHMgdG8gdW5iYWxhbmNlZCBjbG9jayBk
aXNhYmxlLgotIFtNZWRpdW1dIEludmVydGVkIHJlc291cmNlIHRlYXJkb3duIG9yZGVyIGluIHRo
ZSBlcnJvciBwYXRoLgotLQoKY29tbWl0IDM0YTA2YjE0MTAyYmM4NDFiMzM2ZDQ4ZWU5NjUxYjc3
N2NkMzllYjcKQXV0aG9yOiBIb25nbGluZyBaZW5nIDx6ZW5naG9uZ2xpbmdAa3lsaW5vcy5jbj4K
CnBoeTogdGk6IHBpcGUzOiBGaXggY2xvY2sgcmVzb3VyY2UgbGVhayBvbiBwcm9iZSBlcnJvcnMK
CldoZW4gZGV2bV9waHlfY3JlYXRlKCkgb3IgZGV2bV9vZl9waHlfcHJvdmlkZXJfcmVnaXN0ZXIo
KSBmYWlscywKdGhpcyBjb21taXQgYWRkcyBhbiBlcnJvciBoYW5kbGluZyBwYXRoIHRvIGRpc2Fi
bGUgdGhlIHJlZmNsayB0aGF0CndhcyBlbmFibGVkIGVhcmxpZXIsIHByZXZlbnRpbmcgYSByZXNv
dXJjZSBsZWFrLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMg
Yi9kcml2ZXJzL3BoeS90aS9waHktdGktcGlwZTMuYwo+IC0tLSBhL2RyaXZlcnMvcGh5L3RpL3Bo
eS10aS1waXBlMy5jCj4gKysrIGIvZHJpdmVycy9waHkvdGkvcGh5LXRpLXBpcGUzLmMKPiBAQCAt
ODM3LDE1ICs4MzcsMjggQEAgc3RhdGljIGludCB0aV9waXBlM19wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQoKWyAuLi4gXQoKPiArZXJyX2Nsa19kaXNhYmxlOgo+ICsJcG1fcnVu
dGltZV9kaXNhYmxlKGRldik7Cj4gKwlpZiAocGh5LT5zYXRhX3JlZmNsa19lbmFibGVkKQo+ICsJ
CWNsa19kaXNhYmxlX3VucHJlcGFyZShwaHktPnJlZmNsayk7Cj4gKwlyZXR1cm4gcmV0Owo+ICB9
CgpJcyB0aGUgdGVhcmRvd24gb3JkZXIgaW4gdGhpcyBuZXcgZXJyb3IgcGF0aCBjb3JyZWN0PwoK
RHVyaW5nIHByb2JlLCBwbV9ydW50aW1lX2VuYWJsZSgpIGlzIGNhbGxlZCBiZWZvcmUgY2xrX3By
ZXBhcmVfZW5hYmxlKCkuClNob3VsZCBjbGtfZGlzYWJsZV91bnByZXBhcmUoKSBiZSBjYWxsZWQg
YmVmb3JlIHBtX3J1bnRpbWVfZGlzYWJsZSgpIHRvCmZvbGxvdyByZXZlcnNlLWluaXRpYWxpemF0
aW9uIG9yZGVyLCBzaW1pbGFyIHRvIHRoZSBleGlzdGluZyBsb2dpYyBpbgp0aV9waXBlM19yZW1v
dmUoKT8KCkFkZGl0aW9uYWxseSwgbG9va2luZyBhdCB0aGUgY2xvY2sgaW5pdGlhbGl6YXRpb24g
ZWFybGllciBpbgp0aV9waXBlM19wcm9iZSgpOgoKICAgICAgICBpZiAocGh5LT5tb2RlID09IFBJ
UEUzX01PREVfU0FUQSkgewogICAgICAgICAgICAgICAgaWYgKCFJU19FUlIocGh5LT5yZWZjbGsp
KSB7CiAgICAgICAgICAgICAgICAgICAgICAgIGNsa19wcmVwYXJlX2VuYWJsZShwaHktPnJlZmNs
ayk7CiAgICAgICAgICAgICAgICAgICAgICAgIHBoeS0+c2F0YV9yZWZjbGtfZW5hYmxlZCA9IHRy
dWU7CiAgICAgICAgICAgICAgICB9CiAgICAgICAgfQoKVGhlIHJldHVybiB2YWx1ZSBvZiBjbGtf
cHJlcGFyZV9lbmFibGUoKSBpcyBub3QgY2hlY2tlZCwgYW5kCnBoeS0+c2F0YV9yZWZjbGtfZW5h
YmxlZCBpcyBzZXQgdG8gdHJ1ZSByZWdhcmRsZXNzIG9mIHdoZXRoZXIgdGhlIGNsb2NrCndhcyBz
dWNjZXNzZnVsbHkgZW5hYmxlZC4KCklmIGNsa19wcmVwYXJlX2VuYWJsZSgpIGZhaWxzLCBhbmQg
YSBzdWJzZXF1ZW50IHN0ZXAgbGlrZQpkZXZtX3BoeV9jcmVhdGUoKSBhbHNvIGZhaWxzLCB0aGUg
Y29kZSB3aWxsIGp1bXAgb3V0IHRvIGVycl9jbGtfZGlzYWJsZQphbmQgY2FsbCBjbGtfZGlzYWJs
ZV91bnByZXBhcmUoKSBiZWNhdXNlIHBoeS0+c2F0YV9yZWZjbGtfZW5hYmxlZCBpcwp0cnVlLgoK
RG9lcyB0aGlzIGludHJvZHVjZSBhIHJlZ3Jlc3Npb24gYnkgY2F1c2luZyBhbiB1bmJhbGFuY2Vk
IGNsb2NrIGRpc2FibGU/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwNTE0MDIzNDI0LjIzODE1LTEtemVuZ2hvbmdsaW5nQGt5bGlu
b3MuY24/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
