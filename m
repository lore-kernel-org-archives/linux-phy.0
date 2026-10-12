Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A00BCA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 09:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CU414JZvmaRY3efO7TbbrDngKfDvj6DTxsDZQVv/07A=; b=jffrV/BkFRRO2n
	gWWdUz/BwCi2Y4pXqLjjLLsI9wQk1uxNWgwsNlJOkt3akHYEFro144bkElr6SK7LmBZJfZzOUjbzg
	HRhrYOFSwlxK8Thhsngya9xdfUYQc5O9LyWtKIf3AsA0mTR37aBat6MiCp7Ljr5RVJ0iWiHi4m4Hw
	oTsme2+ClMNEgU3mqsvSqzIx9NMKFGMoJcUvEjMOkk/6V7oMJlVxX5tAlgb+qq5g5eFRPQ4s3G5Z6
	2vy7i6QYfc3a4JjLWuMesaE7uvyG0hEZEwlk6aCiEeMITYDYd/+fd4fmnOc3+Z+Lj0lQz1HeCE1Rv
	XJj8gWm9uIpXY3xIktLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGCWx-0000000A5aI-12Tq;
	Mon, 12 Oct 2026 09:41:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGCWu-0000000A5ZL-3M0R;
	Mon, 12 Oct 2026 09:41:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3E80B600E2;
	Mon, 12 Oct 2026 09:41:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B1091F0089B;
	Mon, 12 Oct 2026 09:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791798072;
	bh=onWJ6ONltn94K0nYjjsvbs8zBVxp2RtNkWHz5Qqtqr0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HNvG2Hdz9LqP3HuiblCNkrZDD3gYnj021ugBuK5zLthlyi/HJsV2SvQbppMUxum2Q
	 TaPYv+DPuIqAPnc43QMtP0l1cISjDlIMEomSHV5Zn0J984X2fS+YG+XYCAIXsH1ZTt
	 Ba7bTc+/K01AyMCyoZ0JapPT5SQ1XZJQarXiZcQm6V3lnPTXF9hlesm2eUm8DIaqzl
	 eo/nH/jWCxxKJ2EFoUp5C9zj27jWw+jySu/iZ3+1vtnEo3r4Q27C6MUmuTawuvoK/N
	 T/Fg0Yp5va8TGtdxs6eKzTwbBqZ8Nuy94CPEZwWPdhhrf+Zz2UlbBBvcVc6by/MNpe
	 J/TeqwjLhjHIw==
Date: Mon, 12 Oct 2026 11:41:08 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: CK Hu =?utf-8?B?KOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
Cc: "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	"l.scorcia@gmail.com" <l.scorcia@gmail.com>, "fparent@baylibre.com" <fparent@baylibre.com>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, "robh@kernel.org" <robh@kernel.org>, 
	Chunfeng Yun =?utf-8?B?KOS6keaYpeWzsCk=?= <Chunfeng.Yun@mediatek.com>, "simona@ffwll.ch" <simona@ffwll.ch>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "jbrunet+clk@baylibre.com" <jbrunet+clk@baylibre.com>, 
	"bmasney+clk@redhat.com" <bmasney+clk@redhat.com>, "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, 
	"vkoul@kernel.org" <vkoul@kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "chunhui.dai@mediatek.com" <chunhui.dai@mediatek.com>, 
	"wenst@chromium.org" <wenst@chromium.org>, "airlied@gmail.com" <airlied@gmail.com>, 
	"mani@kernel.org" <mani@kernel.org>, "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, 
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "sboyd@kernel.org" <sboyd@kernel.org>, 
	"nicolas.frattaroli@collabora.com" <nicolas.frattaroli@collabora.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/7] dt-bindings: mediatek: hdmi-phy: Add compatible for
 mt8167
Message-ID: <20261012-eager-agile-pegasus-7aacd2@quoll>
References: <20261010115539.9237-1-l.scorcia@gmail.com>
 <20261010115539.9237-2-l.scorcia@gmail.com>
 <ecdf765641209f3d0f27fe8ae77fe9145884d932.camel@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ecdf765641209f3d0f27fe8ae77fe9145884d932.camel@mediatek.com>
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

T24gTW9uLCBPY3QgMTIsIDIwMjYgYXQgMDk6MTk6NTlBTSArMDAwMCwgQ0sgSHUgKOiDoeS/iuWF
iSkgd3JvdGU6Cj4gT24gU2F0LCAyMDI2LTEwLTEwIGF0IDEzOjU0ICswMjAwLCBMdWNhIExlb25h
cmRvIFNjb3JjaWEgd3JvdGU6Cj4gPiBFeHRlcm5hbCBlbWFpbCA6IFBsZWFzZSBkbyBub3QgY2xp
Y2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1bnRpbCB5b3UgaGF2ZSB2ZXJpZmllZCB0aGUg
c2VuZGVyIG9yIHRoZSBjb250ZW50Lgo+ID4gCj4gPiAKPiA+IFRoZSBoZG1pLXBoeSBmb3IgdGhl
IE1lZGlhVGVrIG10ODE2NyBTb0MgaXMgbm90IGNvbXBhdGlibGUgd2l0aCBhbnkgb2YKPiA+IHRo
ZSBleGlzdGluZyBoZG1pLXBoeS4gQWRkIGEgc2VwYXJhdGUgY29tcGF0aWJsZSB0byBkZXNjcmli
ZSBpdC4KPiAKPiBSZXZpZXdlZC1ieTogQ0sgSHUgPGNrLmh1QG1lZGlhdGVrLmNvbT4KCklmIHlv
dSBhcmUgZ29pbmcgdG8gcmV2aWV3IHRoaXMsIHRoZW4gcmV2aWV3IGVudGlyZSBjb2RlLCBub3Qg
anVzdCBwaWVjZQp2aXNpYmxlIGhlcmUgd2hpbGUgbGVhdmluZyB0aGUgcmVzdCBvYnZpb3VzbHkg
aW5jb21wbGV0ZS4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
