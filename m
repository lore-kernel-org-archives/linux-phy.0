Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89F89CA5FFC
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 10:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0cFG6kK4fJdhn8AmHvLKEtWEVVcqLbSv5/asKpTAbE=; b=Pt2ueAOx1ALCm7
	GIf3GMQF5e8PeMNagXBDmsVdK0XOkjFpOCWN4P7A+y2yoeL88uF9hlV7SabGBWVWX9jk8PMyJ+nWf
	1Yu5eiq3+xrIJWHM+z/EK+GuhIWDJT33GHkTvL+pdJ5CctD2KbzdQUc4q7kLTTfuba7reEA/ppErW
	U4IJJyyyOZKMmC8aE890xepH+lZmdZQNOaL6qOplSaqYuFO7P0O6VV/CgD1NQczTlA34Q7VOxVjoh
	QZ76OLnBm8aVP5eWnKfSzM8YieHIbnB9Xy1N69vcD6JoKmfA0WV+TFGs2pEXuBPy5h/8YmplKkLBK
	HOKpmAnKyplUs/NWBSsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2a9-00000000XBe-0UwY;
	Tue, 06 Oct 2026 10:39:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2a6-00000000XB2-2Z1y;
	Tue, 06 Oct 2026 10:39:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F1BEF602D4;
	Tue,  6 Oct 2026 10:39:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24BAD1F000FF;
	Tue,  6 Oct 2026 10:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791283173;
	bh=dLU+evSr9Yr5I7+bxIvZFtnl9Tc1V6u/KdtkDVmD0Xw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GiIWmASu/hUtJP9PSjFKsoGZ8HfL8gn3fv8Wdb1OtfjjpMiYMK70/HkRIwBpI9ZcL
	 NuHFpwrIudVF2nlswRK3ZrtYnLjewRPxctLvsQSsQD/FCCA/wKmSA9lEGdPP+i3h2T
	 /15gINR1QV9O6K14Marxnr5smQPx9HF6AsH1aNSsim+M2O9ayRPq1sSHYHC+jFg2EL
	 CTpsowTfxdMpwoyxn38DNOea3u3Srl1xt4xC21u9urYoF9Bcdfu2/bq12Dc04xZfbV
	 Dr/OfztyGpURnYxKzpMXW7+nAXfdLWb0moUetJ3IGO3f+miod5o7vople0CH2grHDk
	 Lpk4iK3VhAVtw==
Date: Tue, 6 Oct 2026 12:39:30 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Joey Lu <a0987203069@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>, Joey Lu <yclu4@nuvoton.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 3/3] phy: nuvoton: phy-ma35d1-usb2: extend to
 dual-port with OTG support
Message-ID: <asTP4lI3psLy5GCg@parshuram>
References: <20260929020854.1282339-1-a0987203069@gmail.com>
 <20260929020854.1282339-4-a0987203069@gmail.com>
 <asN29Gi71MIA-2fq@parshuram>
 <ab91b558-e7e6-4758-b4e3-66e5db75b790@gmail.com>
 <asSzYUA5W51Ngn4X@parshuram>
 <413f21b6-90ca-4102-9466-3cf7b9feddc3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <413f21b6-90ca-4102-9466-3cf7b9feddc3@gmail.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMDYtMTAtMjYsIDE4OjIyLCBKb2V5IEx1IHdyb3RlOgo+IAo+IFZpbm9kIEtvdWwg5pa8IDIw
MjYvMTAvNiDkuIvljYggMDQ6Mzcg5a+r6YGTOgo+ID4gT24gMDYtMTAtMjYsIDA5OjM3LCBKb2V5
IEx1IHdyb3RlOgo+ID4gPiBWaW5vZCBLb3VsIOaWvCAyMDI2LzEwLzUg5LiL5Y2IIDA2OjA3IOWv
q+mBkzoKPiA+ID4gPiA+ICAgICAqLwo+ID4gPiA+ID4gICAgI2luY2x1ZGUgPGxpbnV4L2JpdGZp
ZWxkLmg+Cj4gPiA+ID4gPiAgICAjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gPiA+ID4gPiAgICAj
aW5jbHVkZSA8bGludXgvZGVsYXkuaD4KPiA+ID4gPiA+IC0jaW5jbHVkZSA8bGludXgvaW8uaD4K
PiA+ID4gPiB3aHkgaXMgdGhpcyBkcm9wcGVkPwo+ID4gPiBUaGlzIGRyaXZlciBuZXZlciBkaWQg
ZGlyZWN0IE1NSU8gYWNjZXNzIChubyByZWFkbCgpL3dyaXRlbCgpL2lvcmVtYXAoKS8KPiA+ID4g
X19pb21lbSksIGV2ZW4gYmVmb3JlIHRoaXMgc2VyaWVzIC0gYWxsIHJlZ2lzdGVyIGFjY2VzcyBn
b2VzIHRocm91Z2gKPiA+ID4gcmVnbWFwIHZpYSBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFu
ZGxlKCkuIFNvIGxpbnV4L2lvLmggd2FzIGFuCj4gPiA+IHVudXNlZCBpbmNsdWRlIGFscmVhZHks
IGFuZCBpdCdzIGRyb3BwZWQgaGVyZSBhcyBwYXJ0IG9mIHRoZSBicm9hZGVyCj4gPiA+IHJld3Jp
dGUgdG91Y2hpbmcgdGhpcyBpbmNsdWRlIGJsb2NrLiBIYXBweSB0byBrZWVwIGl0IGlmIHlvdSdk
IHByZWZlcgo+ID4gPiBub3QgdG8gYnVuZGxlIHVucmVsYXRlZCBpbmNsdWRlIGNsZWFudXAgaW50
byB0aGlzIHNlcmllcy4KPiA+IFRoZW4gaXQgc2hvdWxkIGJlIGEgZGlmZmVyZW50IHBhdGNoIGV4
cGxhaW5pbmcgdGhpcwo+IFVuZGVyc3Rvb2QuIEknbGwgZHJvcCB0aGlzIGNoYW5nZSBmcm9tIHRo
ZSBzZXJpZXMuIEknbGwgbGVhdmUgdGhlIGluY2x1ZGUKPiB1bmNoYW5nZWQuCgpOb3BlLCBwbHMg
YWRkIGl0LCBidXQgYSBzZXBhcmF0ZSBwYXRjaC4gVGhpcyBpbiB1bnJlbGF0ZWQgdG8gdGhpcyBv
bmUsCmFuZCBzaG91bGQgYmUgYWRkZWQgYnV0IGFzIGEgZGlmZmVyZW50IHBhdGNoLgoKLS0gCn5W
aW5vZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
