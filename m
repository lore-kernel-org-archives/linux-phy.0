Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3164C79FBD
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 17:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vUYehkCvxzOtRK7oAx4za51Usfbot/QgQNJ178r2gGc=; b=X3Cw0s57AKH0gZ
	B3WwoSVgkwLL+xQ6GMU5QCjcpzUs2Wgc77t8M5hoN+3+7PJnwlXqxIBd7Uhe663fnqC2nLrYIlTiS
	XGWSzSFm8TwvxYUhNH6/YHew41XdXOm7CObO9VTz5jo8fryJYEtCSn55TsjvIxsjuURIf5RIeWE5A
	l2TF/Tm3I9NNFO90Xq7v6kLy9efnEpiv6RH6aJPbVRfxqk+coWpGNFV/Kh9L4N/85B7z3xD8M2P/i
	doFqQL9bGET3GnsNEhif0l7XpdzU5HVkHLkbEGz4UGe2NyaNCA19MyY9LVoGl0+2VjcpG5I8v+4Un
	AgPOCmRo63PdyJiOcJyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4M3h-0000000CTuI-1kis;
	Wed, 09 Sep 2026 17:26:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4M3g-0000000CTtJ-1g8z;
	Wed, 09 Sep 2026 17:26:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1DD6640A38;
	Wed,  9 Sep 2026 17:26:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D2301F000FF;
	Wed,  9 Sep 2026 17:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788974764;
	bh=SP6jmQqIOLrkVvQFwD6N9WK9kKibbvJko54SPU9/I58=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nl4q23VJ5Bm5v7pAPhT0FU5OXL0bq5WJU1l32a55XGKzfUR69tUcrge+B6lV3RU2B
	 3AHjhFmXm5sK4D1zu5dK3s99hvKvhjKA/G6fmJfI87yA1aTqkCej67GTeeLLrTALCo
	 LRAdzsW2J+2SCJv3PNJKPckBndFwi5KB1e3jziA98+cwrcQhr3nGD9z1haUZLF1+0n
	 pzvj/U1vA65Oy20ntN4HC+ejsMV3qALbI96pD0duvwY8Eot2EgTa/JEWli3gc18o0r
	 rikvNe+39scM4J9j8AgFo5OQ9f3FBzJdzyor8NvfNHP2PSR/4XemWgNdFA77J4t+5l
	 CneQU4HMOtzaw==
Date: Wed, 9 Sep 2026 19:25:54 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v3 12/12] phy: phy-mtk-dp: Add support for MT8196 eDP PHY
Message-ID: <nz5vqejravxuaxdodfjb5mdmdndevwe75rtbfi7ndow3qlqdim@xuo2awaygbv2>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-13-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707154245.198361-13-angelogioacchino.delregno@collabora.com>
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

T24gVHVlLCBKdWwgMDcsIDIwMjYgYXQgMDU6NDI6NDVQTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gVGhlIE1UODE5NiBTb0MgZmVhdHVyZXMgYW4gdXBkYXRlZCBQ
SFkgSVAgY29tcGFyZWQgdG8gdGhlIG9sZGVyCj4gb25lcywgYW5kIHRoZXJlIGlzIG9uZSB0aGF0
IGlzIHNwZWNpZmljIHRvIEVtYmVkZGVkIERpc3BsYXlQb3J0Lgo+IAo+IEFkZCBzdXBwb3J0IGZv
ciB0aGUgZURQIFBIWSBmb3VuZCBpbiB0aGUgTWVkaWFUZWsgTVQ4MTk2IFNvQyBhbmQKPiBhbGwg
b2YgaXRzIHZhcmlhbnRzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVs
IFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdl
ZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1
YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprg
rqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
