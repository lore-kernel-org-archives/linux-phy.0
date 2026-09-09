Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6831C79FB7
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 17:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A53khHMUaSOQGB0AStpF7LBXFro6HVB3224fQxKvrE4=; b=r7qgpzXPghEpL0
	0NR9TISO+YIdEj0NDHU+gnUfa99p8ETbYWy6mrjD7XUh18DmVmrDg/XSsYy1ctp+EGvlJAy3TZ9lo
	6ItGLZcu3Jey086NQ28Jf09RpIXAeFg6L5UChLRt56ZcND2lNwL88q7I9rSN/wJgu2Mpm+/XMF5rs
	5NmCII5InbJb+P64qB2Uv2qiwQxHcr2DXcsSNDonW/L+3X+ZwMIvsn4Jf/SLpTVaM7h7VMeTK5mOE
	vObHS6DcRF7ucDt4zj/nS7v2dFdKqE8eep9QXEyOxDLTLoP4MZdk4WRE9dq7rzxrlpgiHy2g0W0U2
	YyX5ZXMbcNPar7jrftdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Lhg-0000000CQ8T-2bHA;
	Wed, 09 Sep 2026 17:03:20 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Lhf-0000000CQ7Z-17Qf;
	Wed, 09 Sep 2026 17:03:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E6FCB405F7;
	Wed,  9 Sep 2026 17:03:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0C281F000FF;
	Wed,  9 Sep 2026 17:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788973397;
	bh=p2s8uYoBSnPRtzrtxy84WXDVLveffRjaRrPrEHzO3Eg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XkVQ0vIuB6RQIRTUzSey3nGs+UX/fU73qGe5rLJyVH74queEPlJAnPabs0WWtPtc2
	 AxwFcbtRNCukAPEqEW7rAq4WamRm6e5w76DIxmlGofvrUfKd0d4x75v7u9tRtkcbDC
	 JOTgcuqnOx117t79O/6qN0+IE/2TJ9rK8MLBBsHqfRu8ueC01Gs12akCoHc+tPQTpu
	 R85FtifAhbIUhJFuE5Xt77KmJDvQv+HKr6+Q5nDAcNzmAfny9H3TMDj7eeyFonpnuq
	 tDHH4fZvp9tjRevl4BB7ecdS22L6GBeX2minc5iWSMTNe7DbPL8JP52sSmaZFVZSqc
	 7XoXLn9sP/kQA==
Date: Wed, 9 Sep 2026 19:03:08 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v3 03/12] phy: phy-mtk-dp: Allow probing with devicetree
 match
Message-ID: <bkx46kvsmovy2rbjnqwov65whmwnbkoig27iihk7w4qcosqoqf@jymp7vcu3ezi>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-4-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707154245.198361-4-angelogioacchino.delregno@collabora.com>
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

T24gVHVlLCBKdWwgMDcsIDIwMjYgYXQgMDU6NDI6MzZQTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gTWFrZSBpdCBwb3NzaWJsZSB0byBkZWNvdXBsZSB0aGUgcmVn
aXN0cmF0aW9uIG9mIHRoZSBEaXNwbGF5UG9ydAo+IFBIWSBkcml2ZXIgZnJvbSB0aGUgRGlzcGxh
eVBvcnQgSVAgZHJpdmVyIGJ5IGFkZGluZyBhIGRldmljZXRyZWUKPiBtYXRjaCB0byBwcm9iZSB0
aGUgUEhZLCByZWdpc3RlcmluZyBhbiBPRiBQSFkgcHJvdmlkZXIgYW5kIHRoaXMKPiBkZXZpY2Un
cyBvd24gTU1JTyByZWdtYXAgLSBpZiwgYW5kIG9ubHkgaWYsIHRoaXMgUEhZIGRyaXZlciB3YXMK
PiByZWdpc3RlcmVkIHdpdGggYW4gT0YgbWF0Y2guCj4gCj4gSW4gb3JkZXIgdG8gcmV0YWluIGNv
bXBhdGliaWxpdHkgd2l0aCBvbGRlciBkZXZpY2V0cmVlcyB0aGF0IGFyZQo+IG5vdCBkZWNsYXJp
bmcgdGhlIERpc3BsYXlQb3J0IFBIWSBhcyBhIHNlcGFyYXRlIG5vZGUsIHRoZSBsZWdhY3kKPiBj
b2RlIHdhcyBtb3ZlZCBpbiBhIGBtdGtfZHBfcGh5X2xlZ2FjeV9wcm9iZSgpYCBmdW5jdGlvbiwg
d2hpY2gKPiBnZXRzIGNhbGxlZCBpZiB0aGUgZHJpdmVyIHdhcyByZWdpc3RlcmVkIGJ5IHRoZSBE
aXNwbGF5UG9ydCBvbmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwg
UmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KClJldmlld2Vk
LWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVh
bGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCu
pOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
