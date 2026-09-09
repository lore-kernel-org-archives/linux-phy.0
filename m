Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19A48C79FBD
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 16:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4G9fr7axAzSifm8jKkOzhs6/3gSlQ0BRhRJZ4XKpwM=; b=SCzWWJKRtWi2ok
	koLrKcCuUQanM/h7y29kDKN9GbfkpdisrlW5UUjmaOV2wr5dZBRCuiV6ZokjlUM+hXlmrajM61a61
	KwyrMuGMF81fcGucGhevR9Z/1DXFwBGmPVOLqWyDi1BTnSbjIzux+1NAGYTVGGvsB3w5z06hSdRC+
	LT4M6UlSRW+vayWarIMvpNOIBDfABuaIzRzewIpSVFYN2+TqQGy4nHrEQ29oCiDRZziAAytUdmO5V
	9dgxFvDXZ+WOCVwcNfZGilEdylZVsRNqINT7t9nnDbqETZhy3eTMSQk4/Agvp6trmC4UwWdi8K81E
	CvX09GMewU6khS8CTjgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4LXd-0000000COeJ-3JBo;
	Wed, 09 Sep 2026 16:52:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4LXc-0000000COde-0Rv6;
	Wed, 09 Sep 2026 16:52:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 86590600CB;
	Wed,  9 Sep 2026 16:52:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B32791F000FF;
	Wed,  9 Sep 2026 16:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788972775;
	bh=GmlMljZT/6fO26V/fEoR8ernMpnUFy1iAPY7wr0dQNs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=KkhMoR6Gs7IooOaJd6DKs7tUqWc1jCblWwWBcebrdQphPcJfx9IHywVG0VVdPQcZr
	 Ujc+1ZiZDZsZBo0BrfVxc7W0Z7wbJxsVToSLW6b854TSdi/sJPu6STLcXEmkiKy4TS
	 3nkPhpQ1Bl7Z4P9RYdUWzulpKKMbSG40E8yaol2K0HHfVSpDN1gMbN6cbgpBTs9QIy
	 VDePMdyerGmnffIQvv6WecoqTTaLEzerfhfu6+Vu58/WBqIxA/6IEgxAWNKrGKLnDG
	 JgHQbPwgWlMwEFPoMtfE1bMTTELWNN7XggB/FHAP+91OztVhKa6hS689YxKChFNb7r
	 SkgQHw+GkfxQA==
Date: Wed, 9 Sep 2026 18:52:45 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v3 02/12] phy: phy-mtk-dp: Rename regs to regmap in
 struct mtk_dp_phy
Message-ID: <wvjid3xethoskbttbgy3oy3j7fxnonrnzqg7pqndn32skzp4bt@2q7svyz6ojr7>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-3-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707154245.198361-3-angelogioacchino.delregno@collabora.com>
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

T24gVHVlLCBKdWwgMDcsIDIwMjYgYXQgMDU6NDI6MzVQTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gSW4gcHJlcGFyYXRpb24gdG8gcGVyZm9ybSBmdXJ0aGVyIGNs
ZWFudXBzIGFuZCB0byBleHRlbmQgdGhlCj4gZHJpdmVyIHRvIHN1cHBvcnQgbW9yZSBTb0NzLCBy
ZW5hbWUgdGhlIGByZWdzYCBtZW1iZXIgdG8gYHJlZ21hcGAKPiB0byBpbXByb3ZlIHJlYWRhYmls
aXR5LCBhcyB0aGlzIGlzIGEgY29tbW9uIG5hbWUgYWNyb3NzIG1hbnkKPiBrZXJuZWwgZHJpdmVy
cyBmb3IgYSBzdHJ1Y3QgcmVnbWFwLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZ2Vsb0dpb2FjY2hp
bm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+CgpS
ZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1A
b3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCv
jSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
