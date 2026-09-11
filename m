Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30378C88E41
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 05:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQi324KBTV8o3TKjM/pOI1QPWECKCRO7v0EaFKpzLqY=; b=1EBZX6efw+iFHs
	sCTKkfGi3Ri5czV1YybnI3UEWmOU2KbfQtOtijbFOYs2EozOBbOUh+LaPmLJaKjFsE4VW5O3Q/GD5
	J0FLaOn++rnrie66Mun19+NmCMfzJ73BNJlawF3Zm4ayKuoVJeB52d0gGOof3aAkrseJHlzAIiAYA
	vPPzo78Idszj2FFbGVMVmu5YZrWjGa2yr1Sccb23RHTlc2sloFbgOVFH6l8fmunrKl2sR9Etb/bvx
	2T/coYt1HCs5DtQm0Y8yEpKb1kN7eGxHZZSCmQQcoaaRHsl2H15J6QG8TpQOvAqcf/mNpFfOvgBxJ
	xnHK/rrZVoZPnVCcM4hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tdo-0000000Fr5E-3Cyt;
	Fri, 11 Sep 2026 05:17:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tdn-0000000Fr40-1LEA;
	Fri, 11 Sep 2026 05:17:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B574E42DBE;
	Fri, 11 Sep 2026 05:17:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DD391F000FF;
	Fri, 11 Sep 2026 05:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789103854;
	bh=MyiTj6alOlQUBpvVanvP3WSeuGMqb9NQa3cYxb5z/kE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=aMmIbpxIlWoNOpEzY53NE/GrzWX+ITjvAwiJ7k5RzH99owz9sqGHfCEeLVJPVvxvv
	 fRWfuu4jGHGC1Ko9r6fwd+l4+bOy1buyVW6OEnHr8TWj4nk/LxxPj6Fex1qDUHAX5x
	 +ZZE9k27z55QOAD/QshaCbFnnrRubk6JRkjIQJPK9Rw+Zkt8V+b2Gwb8YnJojhMgKQ
	 8SvJUxn2oFJGW4K132CNUODpE//NcdEiY5I0E3xjInfVyGt8QTt2dbYRTVJ8781qmp
	 hNdmRZLdRTQsMtt26u2Ld6uNShYjV0sR5e8h4smj/N0HGDGY5D7z7PCPBjUZYnAEZm
	 TEX3nnBAlS2xg==
Date: Fri, 11 Sep 2026 07:17:25 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v4 05/12] phy: phy-mtk-dp: Implement power_on and
 power_off PHY callbacks
Message-ID: <woh776xuf7vavnb55lrup6runersvwtw5hkauarjn3rzfuu5sx@n5b5tjt3firs>
References: <20260910092038.48291-1-angelogioacchino.delregno@collabora.com>
 <20260910092038.48291-6-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260910092038.48291-6-angelogioacchino.delregno@collabora.com>
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

T24gVGh1LCBTZXAgMTAsIDIwMjYgYXQgMTE6MjA6MzFBTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gQWRkIC5wb3dlcl9vbigpIGFuZCAucG93ZXJfb2ZmKCkgY2Fs
bGJhY2tzIHRvIG10a19kcF9waHlfZGV2X29wcwo+IHRvIGJlIGFibGUgdG8gY2FsbCB0aG9zZSB3
aXRoIHBoeV9wb3dlcl9vbigpIGFuZCBwaHlfcG93ZXJfb2ZmKCkKPiBBUEkgaW4gdGhlIERpc3Bs
YXlQb3J0IGRyaXZlciB0byBiZSBhYmxlIHRvIHN0b3AgdXNpbmcgYWxsIG9mCj4gdGhvc2UgaGFy
ZGNvZGVkIHJlZ2lzdGVyIHdyaXRlcyBpbiB0aGF0IGV4dGVybmFsIGRyaXZlci4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5k
ZWxyZWdub0Bjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZh
bSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArg
rq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
