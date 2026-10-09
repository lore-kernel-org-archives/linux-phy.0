Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A94FCA6012
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 09:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PmmE7HjzQ4b3Nw9ARStb6JEIkPB7CODNfs4FUsDLWs=; b=E5/Te/ZA/+mFdc
	J+FX8ubbXEWzxx+jFjxHYn4SH9KBbSMFjpqvycW0Q0Ha4dkXkpA/SrF9rtzFYcv7tCTq6E1Oh7TH/
	iKkg+Bk/BX9pm5tvUxueBnBr5mVLNYAIXcJx6sB/65PKFQfhPvk1oRnU9Is3bZ0/U0I0pRHL57qL5
	nK7EumvC+KFhBlfd6q5ahYeOznMXVZHuPPpFKhmbWu2KUCp7kCnIkdT6w8uajUrt5Je41Jt4yXAgV
	yyr/El9ldrkX/7PuZ/IPlGqyi7/7j5TDLZzeNBCKW693i/uxROE+T2IuJ34iSwogBqW/JlQemmJ60
	fJ5qBMi3jMa3z0mFvM7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF6e5-00000005tKX-2QOm;
	Fri, 09 Oct 2026 09:12:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF6e4-00000005tKI-1YY9
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 09:12:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B80A240251;
	Fri,  9 Oct 2026 09:12:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E25BC1F000FF;
	Fri,  9 Oct 2026 09:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791537123;
	bh=/tYIftieEEGQIBRwgZ9wQZw0EdBBvp8uhS/hWQXLuyc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kYy+n5Vro/UVipNy9xxm8mUEInIXeFzAYVq4WgRZ0g0o8b/tuG857pUZNPEp5ESUz
	 UWZszpoJrUt/x9fXa81gaEafrIHvEsKN7Gb8c1vfDxqjx5KB2EvrnJ2sAR/fIHdMzN
	 gWpnuMAgv/17wCkUQNyWaria4aKYMs7PEuqSCWd29vuKVlYhsjAaizyT5k7dnVwJ9c
	 XEUVE/+cXuRkahWRQTDwQ47pKgMnpEBC2ctolHzEx/ox9y8EqyLhPgW0U3RvInLPBV
	 csbUYdiYh9+VR9VYZefjTe4hxf8WGs84mcWkqD+/Yk1VYp80QWTAsxd68NfrtWI0Pl
	 sIavnAdrUwgow==
Message-ID: <sashiko-outbox-165134@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] phy: add a driver for T-Head TH1520 USB PHY
To: "Icenowy Zheng" <zhengxingda@iscas.ac.cn>
Cc: linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20261009090444.3319517-3-zhengxingda@iscas.ac.cn>
References: <20261009090444.3319517-1-zhengxingda@iscas.ac.cn>
 <20261009090444.3319517-3-zhengxingda@iscas.ac.cn>
Date: Fri, 09 Oct 2026 09:12:02 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBzdGF0ZSBt
YWNoaW5lIGRlc3luYyBvbiByZXNldF9jb250cm9sX2Fzc2VydCBlcnJvciBpbiBleGl0Ci0tCgpj
b21taXQgZWMyMGYzZDE1OWMzMjMzZTdjZTZlMDU4YWIwODVhNzM4NDM5M2UzOApBdXRob3I6IElj
ZW5vd3kgWmhlbmcgPHpoZW5neGluZ2RhQGlzY2FzLmFjLmNuPgoKcGh5OiBhZGQgYSBkcml2ZXIg
Zm9yIFQtSGVhZCBUSDE1MjAgVVNCIFBIWQoKVGhpcyBjb21taXQgaW50cm9kdWNlcyBhIG5ldyBV
U0IgUEhZIGRyaXZlciBmb3IgdGhlIFQtSGVhZCBUSDE1MjAgU29DLgpJdCBtYW5hZ2VzIGJhc2lj
IFBIWSBjb25maWd1cmF0aW9uIHRocm91Z2ggYSByZWdtYXAsIGFsb25nIHdpdGggaGFuZGxpbmcK
dGhlIHJlcXVpcmVkIHJlZmVyZW5jZSBjbG9jayBhbmQgcmVzZXQgY29udHJvbGxlcnMuCgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90aGVhZC9waHktdGgxNTIwLXVzYi5jIGIvZHJpdmVycy9w
aHkvdGhlYWQvcGh5LXRoMTUyMC11c2IuYwo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjZjYjBlNTE0
MDEzNzQgMTAwNjQ0Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvcGh5L3RoZWFkL3Bo
eS10aDE1MjAtdXNiLmMKClsgLi4uIF0KCj4gK3N0YXRpYyBpbnQgdGgxNTIwX3VzYl9waHlfZXhp
dChzdHJ1Y3QgcGh5ICpwaHkpCj4gK3sKPiArCXN0cnVjdCB0aDE1MjBfdXNiX3BoeSAqdGgxNTIw
X3BoeSA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+ICsJaW50IHJldDsKPiArCj4gKwlyZXQgPSBy
ZXNldF9jb250cm9sX2Fzc2VydCh0aDE1MjBfcGh5LT5waHlfcmVzZXQpOwo+ICsJY2xrX2Rpc2Fi
bGVfdW5wcmVwYXJlKHRoMTUyMF9waHktPnJlZl9jbGspOwo+ICsKPiArCXJldHVybiByZXQ7Cj4g
K30KCltTZXZlcml0eTogTWVkaXVtXQpJZiByZXNldF9jb250cm9sX2Fzc2VydCgpIGZhaWxzIGFu
ZCByZXR1cm5zIGEgbmVnYXRpdmUgZXJyb3IgY29kZSwgdGhpcwpjb2RlIHN0aWxsIGRpc2FibGVz
IHRoZSByZWZlcmVuY2UgY2xvY2sgYnV0IHByb3BhZ2F0ZXMgdGhlIGVycm9yIHRvIHRoZQpjYWxs
ZXIuCgpMb29raW5nIGF0IHRoZSBQSFkgY29yZSBpbiBwaHlfZXhpdCgpLCBpZiB0aGUgZHJpdmVy
J3MgZXhpdCBjYWxsYmFjawpyZXR1cm5zIGFuIGVycm9yLCBpdCBza2lwcyBkZWNyZW1lbnRpbmcg
dGhlIGluaXRpYWxpemF0aW9uIGNvdW50ZXI6Cgpkcml2ZXJzL3BoeS9waHktY29yZS5jOnBoeV9l
eGl0KCkgewogICAgLi4uCglyZXQgPSBwaHktPm9wcy0+ZXhpdChwaHkpOwoJaWYgKHJldCA8IDAg
JiYgcmV0ICE9IC1FTk9UU1VQUCkKCQlnb3RvIG91dDsKCgktLXBoeS0+aW5pdF9jb3VudDsKICAg
IC4uLgpvdXQ6CgltdXRleF91bmxvY2soJnBoeS0+bXV0ZXgpOwoJcmV0dXJuIHJldDsKfQoKVGhp
cyBsZWF2ZXMgdGhlIGNvcmUncyBzb2Z0d2FyZSBzdGF0ZSB0cmFja2luZyB0aGUgUEhZIGFzIGlu
aXRpYWxpemVkCihpbml0X2NvdW50ID4gMCksIHdoaWxlIHRoZSBhY3R1YWwgcGh5c2ljYWwgaGFy
ZHdhcmUgaGFzIGl0cyByZWZlcmVuY2UKY2xvY2sgZGlzYWJsZWQuIAoKQSBzdWJzZXF1ZW50IGNh
bGwgdG8gcGh5X2luaXQoKSBieSBhIGNvbnN1bWVyIHdvdWxkIHRoZW4gc2VlCmluaXRfY291bnQg
PiAwLCByZXR1cm5pbmcgc3VjY2VzcyBpbW1lZGlhdGVseSB3aXRob3V0IHJlLWVuYWJsaW5nIHRo
ZSBjbG9jawp2aWEgdGhlIGluaXQgY2FsbGJhY2ssIGxlYXZpbmcgdGhlIFBIWSBwZXJtYW5lbnRs
eSBicm9rZW4uCgpDb3VsZCB0aGlzIGNyZWF0ZSBhIHN0YXRlIG1hY2hpbmUgZGVzeW5jIGlmIHRo
ZSByZXNldCBjb250cm9sbGVyIGZhaWxzPwpXb3VsZCBpdCBiZSBzYWZlciB0byByZXR1cm4gMCBh
bmQgaWdub3JlIHRoZSByZXNldCBmYWlsdXJlIGhlcmUgdG8gZW5zdXJlCnByb3BlciB0ZWFyZG93
biBhY2NvdW50aW5nIGluIHRoZSBjb3JlPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAwOTA5MDQ0NC4zMzE5NTE3LTEtemhlbmd4
aW5nZGFAaXNjYXMuYWMuY24/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
