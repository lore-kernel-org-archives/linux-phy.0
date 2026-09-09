Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7A6FC79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 15:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oDh3o5SEoCVrvysrTjpYOUT8sK89nX6s1x8OopQVuUQ=; b=eF4g+5bvFSvbS7
	PFbp4e2+gRqOPBKeL098zIruI6RKOkKdGHtR11XqaW1+gZmLSfB4jeWB1vS5hdm3MhYhdQvvnMf0g
	aye9FxvLZT/PiawMzdhGujeaLIrW0sXIU9rkAxJGmQ3XeGxEABchjC4POqfdWcttLf2YsTOqswqaM
	B80sP3pkTf8MF4B0dIB8kwBm2OaN7kqvsoJUUPLn1RAczWT6mDHyLzKVRCjgQqLPk0iDo26OVHWZp
	rv5OciF2ttsSx6kms6Lj/h1wuSCPRyo7Y/pwUHyox1k9I7+utUhW9QYbaSpabLPrEn8SXnmlriExZ
	WXPtoRikVGOA7IaWlL0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Jsh-0000000C5Vv-2Yk3;
	Wed, 09 Sep 2026 15:06:35 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Jsg-0000000C5VM-2I7L;
	Wed, 09 Sep 2026 15:06:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A55B26020C;
	Wed,  9 Sep 2026 15:06:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE3D81F00A3A;
	Wed,  9 Sep 2026 15:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788966392;
	bh=E9ytG7kb5dbrGiKhe0oxqCTTvFC6jYjdhibOnVV1Go8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mQ8HP/RaMQKuI/HcIUaifGof6tg3xWV3kT6LI8eYb9rgbpsVWzV+ByXU0riskHILH
	 i0JmeE6OALfZX8nSlHLj3RT5ls0hI/TW0WkTL7/grJm0KzHlKvABBvZlGU9NKbXRQi
	 AKpwJXKS2VMOXoeUdMgfSQwVPg7wyMfjHnv4RQYP8tuY1y9LTvmb/iNrGa+cDvMeVh
	 WlidRBgitZb7XcL/ODNZi9TqIoC5WWTzvN62bsZwe2rcG4qUsETYMI9E0ITvSOPhYc
	 MJP0B5yuO6qm/JyAD8dBlT1mETJEfIRbjxpVnD93WpIpLh8HojMepFQPLK0RpbXtlM
	 nJtyhY/CYFlow==
Date: Wed, 9 Sep 2026 17:06:23 +0200
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
Message-ID: <5bmxa4pcwkiemubwfjun3dti4szu66gnxe6yw2pudq3wplpc23@inyswc2bdlhw>
References: <20260701121936.19407-1-angelogioacchino.delregno@collabora.com>
 <20260701121936.19407-3-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701121936.19407-3-angelogioacchino.delregno@collabora.com>
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

T24gV2VkLCBKdWwgMDEsIDIwMjYgYXQgMDI6MTk6MzZQTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gVGhlIGNvbW1lbnQgaW4gdGhlIG10a19waHlfdG1kc19jbGtf
cmF0aW8oKSBmdW5jdGlvbiBjbGVhcmx5IGFuZAo+IGNvcnJlY3RseSBleHBsYWlucyB0aGF0IHRo
ZSBUTURTIHJhdGlvIGhhcyB0byBiZSAxLzEwIGZvciBkYXRhCj4gcmF0ZXMgdW5kZXIgMy40R2Jw
cywgYW5kIDEvNDAgb3ZlciB0aGF0Lgo+IAo+IFVuZm9ydHVuYXRlbHkgdGhvdWdoLCB0aGUgVFhD
X0RJViByZWdpc3RlciBzZXR0aW5nIHdhcyB3cm9uZywgYXMKPiBpbiB2YWx1ZSAzIG1lYW5zIHRv
IGRpdmlkZSBieSA4IGFuZCwgaW4gb3JkZXIgdG8gYWNoaWV2ZSB0aGUgaW4KPiBzcGVjIDEvNDAg
KHRtZHMpIGRhdGEgcmF0ZSwgdGhpcyBoYXMgdG8gZGl2aWRlIGJ5IDQgaW5zdGVhZCEKPiBJbiBv
cmRlciB0byBhY2hpZXZlIHRoZSBjb3JyZWN0IDEvNDAgKHRtZHMpIGRhdGEgcmF0ZSwgdGhpcyBo
YXMKClRoaXMgc3RhdGVtZW50IGlzIGN1dC1vZmYhCgo+IAo+IEFkZCBkZWZpbml0aW9ucyBmb3Ig
dGhlIFRYQ19ESVYgcmVnaXN0ZXIgdmFsdWVzIGNsZWFybHkgZXhwbGFpbmluZwo+IHRoZSBtZWFu
aW5ncyAoRElWMiwgRElWNCwgRElWOCksIGFuZCBwcm9ncmFtIHRoZSBjb3JyZWN0LCBESVYgNCwK
PiB2YWx1ZSB0byB0aGUgcmVnaXN0ZXIgaW4gbXRrX3BoeV90bWRzX2Nsa19yYXRpbygpLgo+IAo+
IFRoaXMgZml4ZXMgb3V0IG9mIHNwZWMgY2xvY2tpbmcgYW5kLCB3aXRoIHRoaXMgY2hhbmdlLCBT
b0NzIHVzaW5nCj4gdGhlIE1UODE5NSBjbGFzcyBIRE1JIFBIWXMgY2FuIG5vdyBzdWNjZXNzZnVs
bHkgYmUgY29uZmlndXJlZCB0bwo+IG91dHB1dCAzODQweDIxNjBANjBIeiBvdmVyIEhETUkuCj4g
Cj4gRml4ZXM6IDQ1ODEwZDQ4NmJiNCAoInBoeTogbWVkaWF0ZWs6IGFkZCBzdXBwb3J0IGZvciBw
aHktbXRrLWhkbWktbXQ4MTk1IikKPiBTaWduZWQtb2ZmLWJ5OiBBbmdlbG9HaW9hY2NoaW5vIERl
bCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgoKV2l0aCBh
Ym92ZSBjb21tZW50IGFkZHJlc3NlZCwKClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2
YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK
4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
