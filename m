Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35935C79FA1
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 05:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52MaMFtlRmDT4jUOBxPtWKFgKu9j5l+KHs8edCmx98M=; b=cUq9hlRx1Ms/8H
	hzqS3d3fPwD1g2h/58p8FCfn/9o3jWXcxgNXCWFWI6KiOJdTe+OqvosCmwTmTHY0Bco2s/OtOBVd7
	0herIGlqjjoRAe2jBNrN6yeCd8uA4hqzxZfh0kM1RwCN/fYw1fBqehBH15xOJntabaPC8GtoaPdH1
	s9tUGuWjjKljIy5vgysxErTbmbckgRwjtejm/cC6HdOVXa/CvAJSoZIAwTJt0yupwpHORTg1W2pUj
	gcvxFWyUSqsTrjiQpFuSV/LCX5dEQoAjiguOO4qrF2kvNJnAa2ezffO17zlswy3YO3w49JrYFFwCU
	PKC7Kquc/ME1BQY6mj2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tXj-0000000FqMz-1ZYF;
	Fri, 11 Sep 2026 05:11:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tXi-0000000FqMI-0p0R;
	Fri, 11 Sep 2026 05:11:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6119F601EF;
	Fri, 11 Sep 2026 05:11:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84A321F000FF;
	Fri, 11 Sep 2026 05:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789103477;
	bh=Q4i87onUuq9wqHpMEQ4jHZbbyUTENMsVIDfpzRkAdN0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=lOJcDAiue7cyP0WKuq94zT/BOctqQE9OG04LJueetSK3L5RRibv+eF0uGpHU9MHkn
	 qrx5b0k+xH56P3HYQuR8CldIjVs3jDwyXbzEtKZjjrY0x6FOX1ztsTfvTw9edvSaUJ
	 RRxHb6BSyyMpR2rtsqSYBpovIp2plvhOj736ARNLRH/ZsY5BSRVdFN8cjcFWAIVs1I
	 It/eGS0IhiOuaPdW/uTIE1cPtOXqD3IIB77pnflyu2Pn6wlqsAoHcwsT9gnwqJMuGw
	 77+i8CI+O/A8j9182rLn4YsObYGm1XiCKB1TYLDLPG8qLJ+yWkaBbwUirORQf+V0yZ
	 EwIfijIsGHGHQ==
Date: Fri, 11 Sep 2026 07:11:07 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, p.zabel@pengutronix.de, 
	chunkuang.hu@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, 
	matthias.bgg@gmail.com, granquet@baylibre.com, justin.yeh@mediatek.com, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Subject: Re: [PATCH 2/2] phy: mediatek: phy-mtk-hdmi-mt8195: Fix TMDS clk bit
 ratio setting
Message-ID: <pptwnkay4jvyom2ihwtice7usgndsw2fnffkbenkg7gyjejure@4y2znrvtmbtg>
References: <20260701121936.19407-1-angelogioacchino.delregno@collabora.com>
 <20260701121936.19407-3-angelogioacchino.delregno@collabora.com>
 <5bmxa4pcwkiemubwfjun3dti4szu66gnxe6yw2pudq3wplpc23@inyswc2bdlhw>
 <cb72ff50-b62f-47fe-af40-d38558bdff6e@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb72ff50-b62f-47fe-af40-d38558bdff6e@collabora.com>
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

T24gVGh1LCBTZXAgMTAsIDIwMjYgYXQgMTA6Mzk6MDZBTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gT24gOS85LzI2IDE3OjA2LCBNYW5pdmFubmFuIFNhZGhhc2l2
YW0gd3JvdGU6Cj4gPiBPbiBXZWQsIEp1bCAwMSwgMjAyNiBhdCAwMjoxOTozNlBNICswMjAwLCBB
bmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToKPiA+ID4gVGhlIGNvbW1lbnQgaW4gdGhl
IG10a19waHlfdG1kc19jbGtfcmF0aW8oKSBmdW5jdGlvbiBjbGVhcmx5IGFuZAo+ID4gPiBjb3Jy
ZWN0bHkgZXhwbGFpbnMgdGhhdCB0aGUgVE1EUyByYXRpbyBoYXMgdG8gYmUgMS8xMCBmb3IgZGF0
YQo+ID4gPiByYXRlcyB1bmRlciAzLjRHYnBzLCBhbmQgMS80MCBvdmVyIHRoYXQuCj4gPiA+IAo+
ID4gPiBVbmZvcnR1bmF0ZWx5IHRob3VnaCwgdGhlIFRYQ19ESVYgcmVnaXN0ZXIgc2V0dGluZyB3
YXMgd3JvbmcsIGFzCj4gPiA+IGluIHZhbHVlIDMgbWVhbnMgdG8gZGl2aWRlIGJ5IDggYW5kLCBp
biBvcmRlciB0byBhY2hpZXZlIHRoZSBpbgo+ID4gPiBzcGVjIDEvNDAgKHRtZHMpIGRhdGEgcmF0
ZSwgdGhpcyBoYXMgdG8gZGl2aWRlIGJ5IDQgaW5zdGVhZCEKPiA+ID4gSW4gb3JkZXIgdG8gYWNo
aWV2ZSB0aGUgY29ycmVjdCAxLzQwICh0bWRzKSBkYXRhIHJhdGUsIHRoaXMgaGFzCj4gPiAKPiA+
IFRoaXMgc3RhdGVtZW50IGlzIGN1dC1vZmYhCj4gPiAKPiAKPiBPaCBvb3BzLiBJdCdzIGp1c3Qg
YSBmb3Jnb3R0ZW4gbGluZSB0aGF0IGhhcyB0byBiZSByZW1vdmVkLi4uLgo+IAo+IFNob3VsZCBJ
IHJlc2VuZCBvciBjYW4geW91IHNpbXBseSByZW1vdmUgdGhlIGxpbmUKPiAiSW4gb3JkZXIgdG8g
YWNoaWV2ZSB0aGUgY29ycmVjdCAxLzQwICh0bWRzKSBkYXRhIHJhdGUsIHRoaXMgaGFzIgo+IHdo
aWxlIGFwcGx5aW5nPwo+IAoKSSBkbyBub3QgYXBwbHkgdGhlIHBhdGNoZXMsIG9ubHkgVmlub2Qg
ZG9lcy4gSXQgd291bGQgaGVscCBpZiB5b3UgY2FuIGp1c3QKc2VuZCBhIG5leHQgdmVyc2lvbiB3
aXRoIHRoaXMgY2hhbmdlIGFuZCB0YWdzLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N
4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
