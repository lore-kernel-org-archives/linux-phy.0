Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 849EFC79FA1
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 05:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3dnlvixh2USp5YVdP6MhwoQ9LCVbrnGOWbLY/KaMfk=; b=V24MwITyShKwz9
	dCOVOIj6SSG32Tcxqz2XfXTo5dxdg6bT6mpPaki9JOTb9JJzOZfYuKrZ8tfrzLJH739JYceTtFLi5
	2tAC2tmQMhka3pqd19mYw0m+QtzVSuAbPBROnCsb6gKwCI+et1OkUooCva14DgQgzeYXQYtJBN1xk
	BsDcxS5EFyS6KWCyow+OM+k67yVxcZoS/4Y/22jtuhPRY2N/kjOxyqeiLAJMQhB6Y1QkZnNJ43kyj
	+nJg0WIqjVzKXZb++tWu6uue5hjdP1J/GwiGXCfEZeyTA7h1deguFWdRM43bKTRGyNT348mn1Vpp3
	6gWQQeiPpqo5HSY84p6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4teN-0000000FrEG-0N1c;
	Fri, 11 Sep 2026 05:18:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4teL-0000000FrDc-2Zsy;
	Fri, 11 Sep 2026 05:18:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4928740C34;
	Fri, 11 Sep 2026 05:18:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7C881F000FF;
	Fri, 11 Sep 2026 05:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789103889;
	bh=brPo4LHaJaLSQ5NoCpOmZMudeFP07TbwWeUS06ea0xk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=aqvcKu/50z0Q96RozxSVN2FCdJdj60wTAr+738VbyA9chsWD71lUxzKnIs+yoGY7S
	 lEWPR/C7GNFg0HSkz8sLhVy1OiVP6ONFn13ib8TbMVnWooQ+p8iSvpLP7HPu2LQ0Ao
	 q1hOxnrFscLx1AXpKtk88OpR8hFFc1nrfhhMp5Tzpy3FuLjCrQMPVUpvcEQ/lvjbtH
	 vtjBbWr99tOWxAToIVCJsWuiIduPaPmKfM4SSmd6WDu2tgu0B0YxSd1ivFCAryqHsX
	 jlzL5ItD249IblNuD1iFSky513g56hkWiQHujSEmwKf+lCKcDiluSw6XSjxIJxI01m
	 pY0oEvzAZJ23A==
Date: Fri, 11 Sep 2026 07:17:59 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v4 06/12] phy: phy-mtk-dp: Support set_lanes in configure
 and properly cleanup
Message-ID: <d3qbwzwoqshalixhg2t32zuecstiy6uingyc4b4r6wmwcg6ggj@z2movep2kk52>
References: <20260910092038.48291-1-angelogioacchino.delregno@collabora.com>
 <20260910092038.48291-7-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260910092038.48291-7-angelogioacchino.delregno@collabora.com>
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

T24gVGh1LCBTZXAgMTAsIDIwMjYgYXQgMTE6MjA6MzJBTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gQWRkIHN1cHBvcnQgZm9yIGVuYWJsaW5nIGEgc3BlY2lmaWNh
bGx5IHJlcXVlc3RlZCBudW1iZXIgb2YgbGFuZXMKPiBpbiB0aGUgLmNvbmZpZ3VyZSgpIGNhbGxi
YWNrIGFuZCBkaXNhYmxlIGFsbCBsYW5lcyBpbiBwb3dlciBvZmYKPiBhbmQgcmVzZXQgY2FsbGJh
Y2tzIGZvciBwcm9wZXIgaGFyZHdhcmUgY2xlYW51cC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbmdl
bG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJv
cmEuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5z
YWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPg
r43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
