Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80A8BC79FB7
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 15:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6eJ3ONhf0WW44oy0V2UlnsG5aQUOsQPqA7oQhZ3Q7E=; b=g61xsneUqvwbJG
	K8BSjIKYb1/fSy9SBOP7IOdx0VkjmaO/rsj7lYjnIiMM2t3bVPp5Ba6qqzbKnl+wkgBisA6A6M16x
	o00a0UqQnjgDsSOd+K7J4f5YkXD9UCAiodh8TxNMstnPO94UqfKNxmsTQKleUGnu8QDVX7uiu6qMP
	RoDi4Qy7CCAxcUgF/QNIvO+R/gr9CxEaMN3F0regi0hYNofvipnItQv3mCbAqqcWB48xyNw1YgRcF
	+DXwYUyllExhTALQLPsfp7sd2oHvzur12I/JcMZDRPXRZ3rUXCT8laGLTVEMRjt3fqqwRUxF7yaqv
	SSTbz3opnvm6mZM/u+5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Jr2-0000000C5FO-0GLN;
	Wed, 09 Sep 2026 15:04:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Jr0-0000000C5Ew-3osV;
	Wed, 09 Sep 2026 15:04:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 30E136020C;
	Wed,  9 Sep 2026 15:04:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B80F1F00A3A;
	Wed,  9 Sep 2026 15:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788966288;
	bh=koc31sD8jNUGY12YBBneZjOQV63HfvgiWXOvYIpvhlY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cVuUiYF81lvPxLrEo/jB4FHWll11l3fZla6GDDprhdn944gmL8El2xxvjAVcXqhR7
	 hfO0yUEp3xeP5ec6UV3BAY9oILoz9qPNPU7vC6eF/NBNVjfjGfFBq8afm0G+PSrPUm
	 diANVBgVxP3uHB3A4FAQKGp9GD+7PeGEsA1041CAKu7JtwOqchVvCUE3X8Cq9IuIJh
	 4TKKrS0jxJBU6BrKxKtyMEVj3YgW92YV5YT7rIIGc8Hj6gjSvzLjg7NyitcyljnB5+
	 P7b/IggMPQXEepA8h13KMnb8diVXOv6+wxxp+nCqyzCDSFCSZ6auJWmwZ+0m9Y4lEY
	 WxSRIcwBp+H4Q==
Date: Wed, 9 Sep 2026 17:04:39 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, p.zabel@pengutronix.de, 
	chunkuang.hu@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, 
	matthias.bgg@gmail.com, granquet@baylibre.com, justin.yeh@mediatek.com, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Subject: Re: [PATCH 1/2] phy: mediatek: phy-mtk-hdmi-mt8195: Fix PLL calc
 divisor overflow
Message-ID: <wdvdeeoo3lpru5266r4sjjaj5s5cbvdjzkjw3vncvltu5vpw2q@rv6h7dzibzsv>
References: <20260701121936.19407-1-angelogioacchino.delregno@collabora.com>
 <20260701121936.19407-2-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701121936.19407-2-angelogioacchino.delregno@collabora.com>
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

T24gV2VkLCBKdWwgMDEsIDIwMjYgYXQgMDI6MTk6MzVQTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gV2hlbiB0cnlpbmcgdG8gY2FsY3VsYXRlIGEgUExMIHJhdGUg
Zm9yIHRhcmdldCBkaXNwbGF5IHJlc29sdXRpb25zCj4gYWJvdmUgMjU2MHgxNDQwLCAyNGJwcCwg
MzBIeiwgdGhlIHBpeGVsIGNsb2NrIHZhbHVlIHdpbGwgYmUgbW9yZQo+IHRoYW4gMzItYml0cyBs
b25nIGJ1dCB0aGUgZGl2aXNpb24gdG8gZmluYWxseSBjYWxjdWxhdGUgdGhlIGRpZ2l0YWwKPiBj
bG9jayBkaXZpZGVyIGlzIGJlaW5nIGRvbmUgd2l0aCBkaXZfdTY0KCksIHdoaWNoIGV4cGVjdHMg
YSAzMmJpdAo+IHVuc2lnbmVkIGRpdmlzb3IuCj4gCj4gRml4IHRoZSBvdmVyZmxvdyBieSB1c2lu
ZyBkaXY2NF91NjQoKSBpbnN0ZWFkLgo+IAo+IEZpeGVzOiA5ZDlmZjNkMmE0YTUgKCJwaHk6IG1l
ZGlhdGVrOiBoZG1pOiBtdDgxOTU6IGZpeCB3cm9uZyBwbGwgY2FsY3VsdXMiKQo+IFNpZ25lZC1v
ZmYtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJl
Z25vQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxt
YW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCu
o+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
