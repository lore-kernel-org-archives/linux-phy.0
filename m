Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 978E0C79F87
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 13:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2mgijCrBdWP6GbHy2ugYD8gef3aOaKsUhqYHwAlTQg=; b=o12yTbswpqpoDp
	wFWNb+bgAOEjySWPxGxIfq57v/HwIq9bVYTFaj3+bsw4pskXF3P1zZ1UmNXlIlI4Ws5LNSr1/sbPi
	6RvClrhuy1f2NhfAMbV9yMLVg6KUWC+qogtrFPdHqP7pb1cxo6irgdqPeKHqQeAtyPNY2U0XcGyQ9
	Rkwyacwr5x/5wetM2vcTeZZn9RMtUY4KhpshP1ztDemFkDvUFR2pfNwKvjy3fkzdttS+2icYx4IQR
	a1k2KF9JsiFM6Ji2ZWhQ0URRA3+HvtlSkhMhtc7/FZMf5yrzjB2p3FuzOZMmW3MyPPLMVeTxMR5kL
	+DduL3IImbz+aywWoffA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2U9H-00000002Fh4-1XdZ;
	Fri, 04 Sep 2026 13:40:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2U9F-00000002Fg2-1V0h
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 13:40:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C803A600C8;
	Fri,  4 Sep 2026 13:40:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB1F71F00A3D;
	Fri,  4 Sep 2026 13:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788529204;
	bh=pRZjf1t1QNssaAqOhNxzB26mEPbKaEL3JUk2vDan9u0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QSBvP2ksMLF1HlhDOZ4HoePs3Gz8S/t+Hkbs+sJ052VHD71koRG6fspfUVc8TKy45
	 ANcatLlfpm59InFFu5GbAUFzSCfN9pUL7M6v2B8KrsOGxNwr3vPCIgKpFaVJaczWNB
	 FtCBsZlL8bQkMxtgV3SpLC1/sP2xdj4ujj47+0XzR6MqJK6krPkiLHop29O8Jv/TnL
	 I2XgjRISlnfL9WMrBAHeMJ6XdpkwJj73LkqE31YJCbHh6PJRi4Cz9DyC6Cdhyg3fEY
	 oJOrZJQUpXYzxUNjl1sleZjFY87PgQ4y2+BjYGy//3LrW9HiVP8+4wpK2BdRQQkaiz
	 SdJ4rq0gjMntw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 10/19] drm/bridge: inno-hdmi: Add .mode_valid
 platform operation
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: robh@kernel.org, mfd@lists.linux.dev, neil.armstrong@linaro.org, lee@kernel.org, vkoul@kernel.org, linux-clk@vger.kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260904-jh7110-clean-send-v3-10-484f9ae72715@samsung.com>
References: <20260904-jh7110-clean-send-v3-0-484f9ae72715@samsung.com>
 <CGME20260904132727eucas1p241a5ba1517b5c6a2efde7bb2fdebf299@eucas1p2.samsung.com>
 <20260904-jh7110-clean-send-v3-10-484f9ae72715@samsung.com>
Date: Fri, 04 Sep 2026 13:40:03 +0000
Message-Id: <20260904134003.DB1F71F00A3D@smtp.kernel.org>
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

PiBpbm5vX2hkbWlfYnJpZGdlX21vZGVfdmFsaWQoKSB2YWxpZGF0ZXMgdGhlIHBpeGVsIGNsb2Nr
IGFnYWluc3QKPiBoZG1pLT5yZWZjbGssIGJ1dCB0aGF0IGNsb2NrIGlzIG9wdGlvbmFsIGFuZCBp
cyBvbmx5IHByZXNlbnQgb24KPiBwbGF0Zm9ybXMgdGhhdCBkZXNjcmliZSBhICJyZWYiIGNsb2Nr
LiBQbGF0Zm9ybXMgd2hlcmUgdGhlIHBpeGVsIGNsb2NrCj4gaXMgcHJvZHVjZWQgYnkgYSBzZXBh
cmF0ZSBkZXZpY2UgLSBzdWNoIGFzIHRoZSBTdGFyRml2ZSBKSDcxMTAsIHdob3NlCj4gUEhZIGlz
IGJvdGggdGhlIGNsb2NrIGFuZCB0aGUgUEhZIHByb3ZpZGVyIC0gaGF2ZSBubyAicmVmIiBjbG9j
aywgc28KPiB0aGUgY2hlY2sgaXMgc2tpcHBlZCBlbnRpcmVseSBhbmQgZXZlcnkgbW9kZSBpcyBy
ZXBvcnRlZCBhcyB2YWxpZC4KPiAKPiBBIG1vZGUgdGhlIHBsYXRmb3JtIGNhbm5vdCBnZW5lcmF0
ZSBpcyB0aGVuIGFkdmVydGlzZWQgdG8gdXNlcnNwYWNlLgo+IFRoZSBzdWJzZXF1ZW50IG1vZGVz
ZXQgYXBwZWFycyB0byBzdWNjZWVkLCBzaW5jZSB0aGUgYXRvbWljIGVuYWJsZSBwYXRoCj4gY2Fu
bm90IGZhaWwsIGFuZCB0aGUgZGlzcGxheSBzaWxlbnRseSBzdGF5cyBibGFuay4KPiAKPiBBZGQg
YSAubW9kZV92YWxpZCBwbGF0Zm9ybSBvcGVyYXRpb24gc28gcGxhdGZvcm1zIGNhbiByZWplY3Qg
bW9kZXMgdGhleQo+IGFyZSB1bmFibGUgdG8gZHJpdmUuIFBsYXRmb3JtcyB0aGF0IGRvIG5vdCBp
bXBsZW1lbnQgaXQgYXJlIHVuYWZmZWN0ZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdp
bGN6eW5za2kgPG0ud2lsY3p5bnNraUBzYW1zdW5nLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2Vk
IHRoaXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTA0
LWpoNzExMC1jbGVhbi1zZW5kLXYzLTAtNDg0ZjlhZTcyNzE1QHNhbXN1bmcuY29tP3BhcnQ9MTAK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
