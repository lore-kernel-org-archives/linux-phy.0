Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54C77C5CFEB
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 13:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OG1YUGVcCCTe/6ROiXT6fAwlf0QH6mDYK9QilWg3Z7Q=; b=RAq0wqK21Ko5eL
	kwUanedPqjavL43rKCV0spfKRIi2cr41ldokUJWY30Oat+7re2YAK9bt93jw7DmwbeT1K01ofwHBS
	+IZXzYtg+qrUj1+1iu0tku1zzRkr+/5oxySxqzkrGThHRtFWgf2BxjFhG31gtWxiCS7T40L3PCdzI
	HFKyJ/q67S/MESKNp/0ERJSvSwMXXsQ2i85/M+X7FfTkJUjBvAlhr4mBL2le+EzYRfrygmNRIPk3f
	Hxyi4Jn3nw3qJ3Ea88gEQyn8sntx2A9zJM9XXl0y5Yp9lu/D7hXVSI4RMFg8N3QXfVtGWgvpkJJFQ
	YVw/70Fv6pl+eUz9lBLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuVfS-00000000lft-0CcF;
	Thu, 13 Aug 2026 13:40:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuVfQ-00000000lfH-3wop;
	Thu, 13 Aug 2026 13:40:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DF98941B58;
	Thu, 13 Aug 2026 13:40:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C57941F000E9;
	Thu, 13 Aug 2026 13:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786628419;
	bh=FQHX6qwH3K6Cws7imC/VISNvbPtmS5LtCAb0pnEIW4c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Z7gJ4sPL/QLGTRofjuqgeInA8apUG+qo4OurrP85GJpr84S9Pw17xHY0jtHVXcpMJ
	 gEb9YOkZ87XkUuS01iGqtXyKLEk9ASVMiBnMDgnHHSqa7ODLMd2AvCjcmZ6UkM1Tco
	 5nmhg61sL0cD4novs9PZrdiJ43TlB+WIWz4YD+j5B2vqnCBmJj9ZexvaYnnftfQo4+
	 ARajYMF0RnJLoBdoQEA2y+Bot6NHtH/NApHbMhfguxf2iWzDGIdP1H72i640f3LYub
	 txUuDBDfvo2sU74ieusuKZ3RKuoQgIRhlE/R9ApOtNZgU3zK1DY7yURwY6RRnYdo8i
	 dv9cuvIjOZsdQ==
Date: Thu, 13 Aug 2026 15:40:11 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Rosen Penev <rosenp@gmail.com>
Cc: linux-phy@lists.infradead.org, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	"moderated list:ARM/Mediatek USB3 PHY DRIVER" <linux-arm-kernel@lists.infradead.org>, 
	"moderated list:ARM/Mediatek USB3 PHY DRIVER" <linux-mediatek@lists.infradead.org>, 
	"open list:ARM/Mediatek SoC support" <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL HARDENING (not covered by other areas):Keyword:b__counted_by(_le|_be)?b" <linux-hardening@vger.kernel.org>
Subject: Re: [PATCH] phy: mediatek: tphy: simplify main allocation
Message-ID: <gauflzkiq4nsxciwzy4r3piodhnoriv5gh5mhsauk7bxgwclcp@3uiuv7i7qbh7>
References: <20260304041400.7236-1-rosenp@gmail.com>
 <djjg6jwpuu6l5wcc7zbxfi7j4n5hircmhivxohdtgufzrp6rlb@l6eyfdyfrxix>
 <CAKxU2N_VYNgYKhS11Frzio4fbg_ZnDsvCfEypvxSiw3-JV0_QQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N_VYNgYKhS11Frzio4fbg_ZnDsvCfEypvxSiw3-JV0_QQ@mail.gmail.com>
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

T24gV2VkLCBBdWcgMTIsIDIwMjYgYXQgMTE6MTU6NDNBTSAtMDcwMCwgUm9zZW4gUGVuZXYgd3Jv
dGU6Cj4gT24gV2VkLCBBdWcgMTIsIDIwMjYgYXQgNjozMuKAr0FNIE1hbml2YW5uYW4gU2FkaGFz
aXZhbSA8bWFuaUBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBUdWUsIE1hciAwMywgMjAy
NiBhdCAwODoxNDowMFBNIC0wODAwLCBSb3NlbiBQZW5ldiB3cm90ZToKPiA+ID4gVXNlIGEgZmxl
eGlibGUgYXJyYXkgbWVtYmVyIHRvIHJlcGxhY2Uga3phbGxvYyArIGtjYWxsb2Mgd2l0aCBhIHNp
bmdsZQo+ID4gPiBremFsbG9jLgo+ID4gPgo+ID4gPiBTaHVmZmxlZCBzb21lIGNvZGUgYXJvdW5k
IGFzIF9fY291bnRlZF9ieSByZXF1aXJlcyB0aGUgY291bnRpbmcgdmFyaWFibGUKPiA+ID4gdG8g
YmUgYXNzaWduZWQgZmlyc3QuCj4gPiA+Cj4gPiA+IFJlbW92ZWQgTlVMTCBjaGVjayBmcm9tIG9m
X2dldF9tYXRjaF9kYXRhIGFzIGl0J3MgbmV2ZXIgTlVMTCBwZXIgdGhlCj4gPiA+IGRldmljZSB0
YWJsZS4KPiA+ID4KPiA+Cj4gPiBQbGVhc2UgZG8gbm90IGNvbWJpbmUgbXVsdGlwbGUgZml4ZXMg
aW4gYSBzaW5nbGUgcGF0Y2guIEFsc28sIHRoZSBOVUxMIGNoZWNrIGNhbgo+ID4gYmUga2VwdCBm
b3IgdGhlIGNhc2Ugb2Ygc2FuaXR5IGFzIGl0IHdvdWxkbid0IGh1cnQuCj4gaG1tPyBUaGVyZSBh
cmUgbm8gZml4ZXMgaGVyZS4gSnVzdCBhIEZBTSBjb252ZXJzaW9uLgoKRG9lc24ndCBtYXR0ZXIu
IEEgcGF0Y2ggc2hvdWxkIGRvIG9ubHkgb25lIHRoaW5nLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/
4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
