Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFCFAC44529
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 10:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Av8gzi+UbJ3Cg2tRk9TiRfF/QYkTVLiKsgPnT+fvms=; b=wJNMgqnB5unpGf
	860xLlIS8Ym7yfJc64uRxhCPEn/VLeY2ljZ97RZeEOElX3j0zLQowVdMz2hnEKHESsKrJuogrGuCg
	+HcSmwMLfL3RbN9Z/H9pq4sJU93hSwQ/nvLDfkmeyhBG0OSbqfkxhjfxZoBax9KVS2suju5T7V4mW
	N/WHT5fLg4noe17GCDmmeNUmTT4kRgbrIQIRaYdoTLE+FeCgE2RU/jdQRbgP4jcMISzuP9usykl5g
	AWY4NnkgvKJ1mXmgTQGXntvcW6vx/WgxETnQUiS7vuzlgxmSTjX4CVDqQGGcg0WA7dKx1R0FTsf2B
	WYMKhRxEOwz3OjWSIYXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm7xk-00000009ErL-2cFZ;
	Tue, 21 Jul 2026 10:44:36 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm7xj-00000009ErB-2LWb
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 10:44:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BE5DC600BB;
	Tue, 21 Jul 2026 10:44:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F38FB1F00ADE;
	Tue, 21 Jul 2026 10:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784630674;
	bh=9hBthjgr7E/aXrQsIBWIqYG5hUCrpIPPsqW9lH28S4c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kajFEqoxRzJ5H2hSH5Sw5TWUaf5P+SOw2K/nFn6W9wsLrTqGxbM21110en+Noo7ur
	 2+W6hK3BkPGPKSWoeiuq2a2jaOoqH1cV6p3UoLmcJAT41Hg8Kf+wuF64h4QZ/aa5JQ
	 KZGPxA45o65GiG7vztfPxEpryZRosBkA8r68cPb3tQGYzWkgpkVQ4dmTwuMjnRK2np
	 QyubuYSI4nki+iTjmKgPjeK+P38Sj9ws/GItsxLjpxtHPd6w7qQ0ojWhPvBcTHxttu
	 /Tn4cF9mx5tEw88I5Lm6qEFyjpBPG+kAVAvj7IAJQzTWRfO9JPaao4TUFW+jKYVjtD
	 07duebjn/FUHQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: phy: rockchip,rk3588-mipi-dcphy:
 support per-direction phys
To: "Jason Yang" <jason98166@gmail.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260721-dcphy-rx-v1-v1-1-4fc83c0ccac9@gmail.com>
References: <20260721-dcphy-rx-v1-v1-0-4fc83c0ccac9@gmail.com>
 <20260721-dcphy-rx-v1-v1-1-4fc83c0ccac9@gmail.com>
Date: Tue, 21 Jul 2026 10:44:33 +0000
Message-Id: <20260721104433.F38FB1F00ADE@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBgI3BoeS1jZWxs
c2AgcHJvcGVydHkgdXNlcyBgZW51bTogWzEsIDJdYCBpbnN0ZWFkIG9mIGEgYGNvbnN0YCBjb25z
dHJhaW50LCB3aGljaCB2aW9sYXRlcyBzdWJzeXN0ZW0gZ3VpZGVsaW5lcyBhbmQgY3JlYXRlcyBh
IGZ1bmRhbWVudGFsbHkgYnJva2VuIGRldmljZSB0cmVlIHBhcnNpbmcgZGVzaWduLgotIFtIaWdo
XSBUaGUgY29tbWl0IGludHJvZHVjZXMgYSAyLWNlbGwgZm9ybWF0IGZvciBgI3BoeS1jZWxsc2Ag
dG8gc3VwcG9ydCBpbmRlcGVuZGVudCBUWC9SWCBjb25zdW1lcnMsIGJ1dCB0aGUgUEhZIGRyaXZl
ciBhY3RpdmVseSByZWplY3RzIGFueXRoaW5nIG90aGVyIHRoYW4gMSBjZWxsLCByZXN1bHRpbmcg
aW4gcHJvYmUgZmFpbHVyZXMuCi0tCgotLS0gUGF0Y2ggWzFdOiBbUEFUQ0ggMS80XSBkdC1iaW5k
aW5nczogcGh5OiByb2NrY2hpcCxyazM1ODgtbWlwaS1kY3BoeTogc3VwcG9ydCBwZXItZGlyZWN0
aW9uIHBoeXMgLS0tCmNvbW1pdCAwMDc3YjVlYzUwZmY1YzZjYzEwYWZkMzM3ZjE5M2E5ZjA5MGQ2
OTQ2CkF1dGhvcjogSmFzb24gWWFuZyA8amFzb245ODE2NkBnbWFpbC5jb20+CgpkdC1iaW5kaW5n
czogcGh5OiByb2NrY2hpcCxyazM1ODgtbWlwaS1kY3BoeTogc3VwcG9ydCBwZXItZGlyZWN0aW9u
IHBoeXMKClRoZSBTYW1zdW5nIE1JUEkgRC0vQy1QSFkgYmxvY2sgb24gUkszNTg4IGRyaXZlcyBh
IE1JUEkgRFNJIHRyYW5zbWl0dGVyCmFuZCwgb24gdGhlIHNhbWUgUEhZLCBjYW4gcmVjZWl2ZSBh
IE1JUEkgQ1NJIGNhbWVyYS4gRGVzY3JpYmluZyBib3RoIGFzCmluZGVwZW5kZW50IGNvbnN1bWVy
cyBvZiBvbmUgUEhZIHJlcXVpcmVzIHRoZSBkaXJlY3Rpb24gdG8gYmUgZXhwcmVzc2VkCmluIHRo
ZSBkZXZpY2V0cmVlLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9yb2NrY2hpcCxyazM1ODgtbWlwaS1kY3BoeS55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxyazM1ODgtbWlwaS1kY3BoeS55YW1s
Cj4gaW5kZXggYzhmZjViYTIyYTg2Yi4uNTNkNjk1MTM3NTY2NyAxMDA2NDQKPiAtLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLHJrMzU4OC1taXBpLWRj
cGh5LnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Jv
Y2tjaGlwLHJrMzU4OC1taXBpLWRjcGh5LnlhbWwKPiBAQCAtMjAsMTIgKzIwLDIyIEBAIHByb3Bl
cnRpZXM6Cj4gICAgICBtYXhJdGVtczogMQo+ICAKPiAgICAiI3BoeS1jZWxscyI6Cj4gLSAgICBj
b25zdDogMQo+ICsgICAgZW51bTogWzEsIDJdCgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyB2
aW9sYXRlIHRoZSBzdWJzeXN0ZW0gcmVxdWlyZW1lbnQgdGhhdCBjZWxsLWNvdW50IHByb3BlcnRp
ZXMgbXVzdAp1c2UgYSBjb25zdCBjb25zdHJhaW50PwoKSWYgYSBib2FyZCBkZXZlbG9wZXIgdXBk
YXRlcyB0aGUgUEhZIHByb3ZpZGVyIG5vZGUgdG8gI3BoeS1jZWxscyA9IDwyPiB0byB1c2UKdGhl
IG5ldyBDU0kgY29uc3VtZXIsIHdpbGwgYW55IGV4aXN0aW5nIERTSSBjb25zdW1lciByZWx5aW5n
IG9uIDEtY2VsbCBwYXJzaW5nCmZhaWwgdG8gcHJvYmU/CgpUaGUgZnVuY3Rpb24gb2ZfcGFyc2Vf
cGhhbmRsZV93aXRoX2FyZ3MoKSBzdHJpY3RseSBlbmZvcmNlcyB0aGF0IHRoZSBjb25zdW1lcidz
CmFyZ3VtZW50IGNvdW50IGV4YWN0bHkgbWF0Y2hlcyB0aGUgcHJvdmlkZXIncyAjcGh5LWNlbGxz
IGNvdW50LgoKQWRkaXRpb25hbGx5LCBpdCBsb29rcyBsaWtlIHRoZSBkcml2ZXIgaGFzbid0IGJl
ZW4gdXBkYXRlZCB0byBzdXBwb3J0IHRoaXMgeWV0LgoKSW4gZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLXNhbXN1bmctZGNwaHkuYywgdGhlIHRyYW5zbGF0aW9uIGNhbGxiYWNrCnNh
bXN1bmdfbWlwaV9kY3BoeV94bGF0ZSgpIHN0aWxsIGV4cGxpY2l0bHkgY2hlY2tzIGZvciBleGFj
dGx5IDEgY2VsbDoKCglpZiAoYXJncy0+YXJnc19jb3VudCAhPSAxKSB7CgkJZGV2X2VycihkZXYs
ICJpbnZhbGlkIG51bWJlciBvZiBhcmd1bWVudHNcbiIpOwoJCXJldHVybiBFUlJfUFRSKC1FSU5W
QUwpOwoJfQoKV2lsbCB0aGlzIGNhdXNlIGFueSBkZXZpY2UgdHJlZSBhdHRlbXB0aW5nIHRvIHVz
ZSB0aGUgbmV3bHkgZG9jdW1lbnRlZCAyLWNlbGwKZm9ybWF0IHRvIGZhaWwgdG8gaW5pdGlhbGl6
ZSBhdCBydW50aW1lPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MDcyMS1kY3BoeS1yeC12MS12MS0wLTRmYzgzYzBjY2FjOUBnbWFp
bC5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
