Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 786F8CD98CE
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 16:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLluXj2GmiaXLYFjY5MCeECpv3Zy7CJxfzyi1ci/Ve4=; b=LB+ZuXY27yI0+G
	esNDhE+pcJE1d1xyDcHsAFMMIoOpOKrwR1zOw573RbynZ/J7CcuRvSGPvxkek1nDWh//H/a/EUmAp
	ExMaeIltaGJ/fLJmTivzW1cNdZ6QTK/aMS3NlwFEjFOE4MfqCdScfBJOf2MpnAgNyNWoXWB9vTaZf
	bB0SBbcLjI+qrQFO8TPH9J1CWDWAp8WEQMFLMUuyw4O3/DadShMpUO4Olx74kwDlF0rewRg4seLHG
	BtXP6MLA0MAr5tHhFs0raTVsLPSD8+/PBtdw1z5J1i6fa9BzbHBXshkQCM7AL4vLo9Rk2vd1MhHZc
	hfcJrJuWLDt5e5Jp/2UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY58p-0000000BJWh-0alw;
	Fri, 12 Jun 2026 16:53:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY58n-0000000BJWV-3H0E
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 16:53:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4B75440624;
	Fri, 12 Jun 2026 16:53:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCE691F000E9;
	Fri, 12 Jun 2026 16:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781283237;
	bh=T+3wuQBA/pNIwYXjXmuTD+jg8D4R1Hgh7oHBezZq35s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GN5dOXmy8hmau4n7IL8KCfuLrhYc2y1AtNPD5h9OutIoPfknsY4ai/euaTSdSeFZw
	 rX6KEfkzFTjZNic7HcjSmFphmFdFCwbFfoTZnGYnnGVthZZQEFfq0opgrJ7jCkWoyR
	 hipMkAvsXpE0vesWXtWup9ZUJYD6ey/cnuOr9F5eWg1hRY1IZeh4OBg4Uj2wmUqZWS
	 mXDXv0qkrchEleyF1szannLzuWz7cnalmYQn8PfJDhd+53U9jJFCZN2C0AyqPy22Xm
	 1hGu7eDA37cPwMcmSW5NKWM2t4VAQ0vBjqiQKcE/b1f7PLKtuzzcNa0zG9K88Qp7T4
	 BhaUgQ1dK436A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 12/18] phy: rockchip: usbdp: Drop DP HPD handling
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260612-rockchip-usbdp-cleanup-v5-12-efc83069869f@collabora.com>
References: <20260612-rockchip-usbdp-cleanup-v5-12-efc83069869f@collabora.com>
Date: Fri, 12 Jun 2026 16:53:56 +0000
Message-Id: <20260612165356.CCE691F000E9@smtp.kernel.org>
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
IFtIaWdoXSBMb2NrbGVzcyBhY2Nlc3MgdG8gc2hhcmVkIFR5cGUtQyBsYW5lIG1hcHBpbmdzIGlu
IGBya191ZHBoeV9kcF9waHlfY29uZmlndXJlYCBjYXVzZXMgZGF0YSByYWNlCi0tCgpjb21taXQg
NTg1OGQ4NTFmZDNkNmYwYmViOGExYjNiNzAyZGRjMjVjZTFiMjViMQpBdXRob3I6IFNlYmFzdGlh
biBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hp
cDogdXNiZHA6IERyb3AgRFAgSFBEIGhhbmRsaW5nCgpUaGlzIGNvbW1pdCBkcm9wcyB0aGUgSFBE
IGhhbmRsaW5nIGxvZ2ljIGZyb20gdGhlIFVTQkRQIFBIWS4gVGhlIHJlZ2lzdGVycwppbnZvbHZl
ZCByZXF1aXJlIHRoZSBkaXNwbGF5IGNvbnRyb2xsZXIgcG93ZXIgZG9tYWluIGJlaW5nIGVuYWJs
ZWQsIHNvIHRoZSBIUEQKc2lnbmFsIHNob3VsZCBiZSBoYW5kbGVkIGJ5IHRoZSBkaXNwbGF5cG9y
dCBjb250cm9sbGVyIGl0c2VsZi4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LXVzYmRwLmMKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAu
Ywo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCgpbIC4u
LiBdCgo+IHN0YXRpYyBpbnQgcmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZShzdHJ1Y3QgcGh5ICpw
aHksCj4gCQkJCSAgICAgdW5pb24gcGh5X2NvbmZpZ3VyZV9vcHRzICpvcHRzKQo+IHsKClsgLi4u
IF0KCj4gCWlmIChkcC0+c2V0X3ZvbHRhZ2VzKSB7Cj4gCQlmb3IgKGkgPSAwOyBpIDwgdWRwaHkt
PmxhbmVzOyBpKyspIHsKPiAJCQlsYW5lID0gdWRwaHktPmRwX2xhbmVfc2VsW2ldOwo+IAkJCXN3
aXRjaCAodWRwaHktPmxpbmtfcmF0ZSkgewo+IAkJCWNhc2UgMTYyMDoKPiAJCQljYXNlIDI3MDA6
CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBieSB0aGlzIHBh
dGNoLCBidXQgSSBub3RpY2VkIGEgcG90ZW50aWFsIGRhdGEKcmFjZSBoZXJlLiBEb2VzIHRoaXMg
bG9vcCBhY2Nlc3MgdWRwaHktPmRwX2xhbmVfc2VsIGFuZAp1ZHBoeS0+bGFuZV9tdXhfc2VsIHNh
ZmVseT8KClRoZXNlIGFycmF5cyBkZWZpbmUgdGhlIGFjdGl2ZSBUeXBlLUMgRFAgbGFuZSBtYXBw
aW5nIGFuZCBhcmUgdXBkYXRlZCBieQphc3luY2hyb25vdXMgVHlwZS1DIHN1YnN5c3RlbSBldmVu
dHMgaW4gcmtfdWRwaHlfb3JpZW5fc3dfc2V0KCkgYW5kCnJrX3VkcGh5X3R5cGVjX211eF9zZXQo
KSB1bmRlciB0aGUgcHJvdGVjdGlvbiBvZiB1ZHBoeS0+bXV0ZXguCgpTaW5jZSBya191ZHBoeV9k
cF9waHlfY29uZmlndXJlKCkgZG9lcyBub3QgaG9sZCB1ZHBoeS0+bXV0ZXggKG9ubHkgdGhlCmZy
YW1ld29yay1sZXZlbCBwaHktPm11dGV4KSwgY291bGQgYSBjb25jdXJyZW50IFR5cGUtQyBjYWJs
ZSBvcmllbnRhdGlvbgpvciBtb2RlIHN3aXRjaCBjYXVzZSB0aGlzIGNvZGUgdG8gcmVhZCBhIHBh
cnRpYWxseSB1cGRhdGVkIGxhbmUgbWFwcGluZz8KClRoaXMgbWlnaHQgbGVhZCB0byBpbmNvcnJl
Y3QgRFAgUEhZIHJlZ2lzdGVyIHByb2dyYW1taW5nLCBjb25maWd1cmluZyB0aGUKd3JvbmcgaGFy
ZHdhcmUgbGFuZXMgYW5kIGNhdXNpbmcgbGluayB0cmFpbmluZyBvciBkaXNwbGF5IGZhaWx1cmVz
LgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDYxMi1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXY1LTAtZWZjODMwNjk4NjlmQGNvbGxh
Ym9yYS5jb20/cGFydD0xMgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
