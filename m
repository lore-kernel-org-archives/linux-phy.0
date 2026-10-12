Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21B7BCA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e9htgFiP+uPp0hWqAJEatyzQZi9NEU/8LtmFX1KebKc=; b=MS7CXeur1ySdAR
	jdv9L7qp2A9wkH9cxXN43EStB6GcIGhAST/+2TYNn+cELHeDa00Y047Ph4M+0ddD0TiFaWXPPbx61
	eeqwqQM6Wo37dMUIwIF5QebYnzw/blEgqEIkEWY52m2rwx7M9Ek8x3Tncl63uKrc0Sr0a4v1sv4ht
	vF35ECX71wUkk1Vs0H22zgxBGqlbnRgSsHGdGU2aKWJWvkC66aXIx4AdgUAsBKnmpPpLpWfFGOBEX
	2JldyStRreny3ifl/GRfEQJOfSxG5ICx72/z494gq9ybjxc1yVA3ss4IXQr0feOf1TlKBlqxeBB+d
	ZAMxXJhsy5/cyNs+tZCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFiJ-0000000AWl8-2jYL;
	Mon, 12 Oct 2026 13:05:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFiI-0000000AWkt-381I
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:05:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C877560AA2;
	Mon, 12 Oct 2026 13:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5D371F0089B;
	Mon, 12 Oct 2026 13:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791810309;
	bh=tFX0utyqGQ9LjVE1lOmvWMH4gqZCNOEBVSbJXf7asog=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mX/XPvOYpTtSND2MoR34UMVlym60qhmhz8lduuHcaXojr91stAzhIeCDInjMK0yqK
	 xANUiz5QctxSHI9IvXxoFh0CY6nYH6aBgLRIaJLpiY9IX7VtnEBd+7Y50s5597wDHy
	 oMxcZdeyrGqJ7l7XwAzlGAKmpWDXQ6Z9H9o3ODAdknHt5eqlWgM2rxZYWuBHAUZuqR
	 CQYLbp6cs4qQeiTI7roQz5kD6bPGSJj+R/IF5LjGk3iZl3leexJ01PxihNCQdhBE+B
	 Yk0GViYE+GyK0r9YKpPTdvKzoU8dOM0v6lx0yhMvt5cXizIzGNBmHkY4o7SlD3p/ZO
	 WgIEuTMCSbPfQ==
Date: Mon, 12 Oct 2026 18:35:01 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, johan@kernel.org, 
	kishon@kernel.org, rogerq@ti.com, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, zhongling0719@126.com, stable@vger.kernel.org
Subject: Re: [PATCH v8 4/4] phy: ti-pipe3: Fix clock leaks in init/exit error
 paths
Message-ID: <aszZ1jXVI6Fcq0VJ@debian>
References: <20260909122630.1313205-1-zenghongling@kylinos.cn>
 <20260909122630.1313205-5-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260909122630.1313205-5-zenghongling@kylinos.cn>
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

T24gV2VkLCBTZXAgMDksIDIwMjYgYXQgMDg6MjY6MzBQTSArMDgwMCwgSG9uZ2xpbmcgWmVuZyB3
cm90ZToKPiBUd28gcGF0aHMgcmV0dXJuIHdpdGhvdXQgZGlzYWJsaW5nIHRoZSBjbG9ja3MgdGhh
dCB0aV9waXBlM19pbml0KCkKPiBoYXMganVzdCBlbmFibGVkLCBsZWFraW5nIGNsb2NrIGVuYWJs
ZSByZWZlcmVuY2VzOgo+IAo+IDEuIEluIHRpX3BpcGUzX2luaXQoKSwgd2hlbiByZWdtYXBfdXBk
YXRlX2JpdHMoKSBmYWlscyBmb3IgUENJZSBtb2RlLAo+ICAgIHRoZSBmdW5jdGlvbiByZXR1cm5z
IHRoZSBlcnJvciB3aXRob3V0IGNhbGxpbmcKPiAgICB0aV9waXBlM19kaXNhYmxlX2Nsb2Nrcygp
LiBUaGUgY2xvY2tzIHN0YXkgcGVybWFuZW50bHkgZW5hYmxlZAo+ICAgIHNpbmNlIHRoZSBQSFkg
ZnJhbWV3b3JrIHdvbid0IGludm9rZSB0aGUgLmV4aXQgY2FsbGJhY2sgb24gaW5pdAo+ICAgIGZh
aWx1cmUuCj4gCj4gMi4gSW4gdGlfcGlwZTNfZXhpdCgpLCB3aGVuIHRoZSBQSFkgaXMgaW4gU0FU
QSBtb2RlIHdpdGhvdXQKPiAgICBkcGxsX3Jlc2V0X3N5c2NvbiwgdGhlIGZ1bmN0aW9uIHJldHVy
bnMgMCBlYXJseSB0byBhdm9pZCBwb3dlcmluZwo+ICAgIGRvd24gdGhlIFNBVEEgRFBMTCAoRXJy
YXRhIGk3ODMpLCB3aGljaCBhbHNvIHNraXBzIHRoZQo+ICAgIHRpX3BpcGUzX2Rpc2FibGVfY2xv
Y2tzKCkgYXQgdGhlIGVuZCBvZiB0aGUgZnVuY3Rpb24uIEV2ZXJ5Cj4gICAgaW5pdC9leGl0IGN5
Y2xlIHRoZXJlZm9yZSBsZWFrcyB0aGUgY2xvY2sgZW5hYmxlIHJlZmVyZW5jZSB0YWtlbgo+ICAg
IGluIHRpX3BpcGUzX2luaXQoKS4KPiAKPiBGaXggYm90aCBieSBhZGRpbmcgdGhlIG1pc3Npbmcg
dGlfcGlwZTNfZGlzYWJsZV9jbG9ja3MoKSBjYWxscywKPiBjb25zaXN0ZW50IHdpdGggaG93IHRo
ZSBEUExMIHByb2dyYW0gZXJyb3IgcGF0aCBoYW5kbGVzIGNsZWFudXAuCj4gCj4gRml4ZXM6IDIz
NDczOGVhMzM5MCAoInBoeTogdGktcGlwZTM6IG1vdmUgY2xrIGluaXRpYWxpemF0aW9uIHRvIGEg
c2VwYXJhdGUgZnVuY3Rpb24iKQo+IEZpeGVzOiAwYTA4MzBmZWIyYWQgKCJwaHk6IHRpLXBpcGUz
OiBmaXggc3VzcGVuZCIpCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKClRoaXMgaXMgbm90
IHJlYWxseSBhIHN0YWJsZSBjYW5kaWRhdGUuLi4KCj4gUmVwb3J0ZWQtYnk6IFNhc2hpa28gQUkg
PHNhc2hpa29Aa2VybmVsLm9yZz4KPiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Fs
bC8yMDI2MDUxODAyMzY1Ny40MTg1MkMyQkNCMEBzbXRwLmtlcm5lbC5vcmcvCj4gU2lnbmVkLW9m
Zi1ieTogSG9uZ2xpbmcgWmVuZyA8emVuZ2hvbmdsaW5nQGt5bGlub3MuY24+CgpSZXZpZXdlZC1i
eTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxj
b21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTg
rr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
