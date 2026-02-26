Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19F89FC5927
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 10:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IpyxDJGWsgRTILL5zo/NxAbslikHllaZ1Y3TndRNPqY=; b=n9cyMJaZ0eeRw0
	r5Ux4LcrhKLt6oM0m7VQrk87hgZoenwgucm760mcu7TAP2IyhMUxKgKl3y6zNXURN1T0ZmRTTEolL
	QbWp48y8PJVhkMUDEYEQqdLRYFzn02PXmOMi+3YhowGXVDVEtIJvICw4gwQYpVUuP5FpXo3axkCe5
	/Wcmu1fwJe3Wy+irf28/3r0MxOsbUudKalOUoMFexea57pHIpgedG3HkHAxdWJIiSoZmqLYpVE0zM
	aSUGO/LCsPC9hfR9cctafn/x1SgGwliDbZ6EIXEV3AcnNSKCDgNqr+YvM8GYhx/uRbF4YztEBIDq1
	79GkvuSOb8rX/5M5reew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvYjA-00000005wFS-2Z5X;
	Thu, 26 Feb 2026 10:36:16 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvYj6-00000005wE2-1pqP;
	Thu, 26 Feb 2026 10:36:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772102169;
	bh=W3qLjNuC+QLK2F8P217EOXE0d8RIhLDiKC2NEPOx7v8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=G3B4blNbzGIfSFsN2Pq23YbXZim4VHupb3i2mKyKj4xFv4ddYl4Sus69IZSY4lw7t
	 6i3gpratx3W9zv3kXHtvbOfl9x7tdqVZqqI21laWGAoq/8yUCaCC9bd0OqJM3K8qaT
	 g/FFF2doYJdQTsguQe+VkqThZ94g1f5Rng8kQXTj93PmZ+7sM+oa4TswUvr1tDvYfa
	 oBWqzoOAdgoPg10cd8Vk1HprIvxxB0YEa3NsPoWq2O9uwpXi3Djqf0LodAgvm4nL3s
	 F923l+cXyGnxkL14T07f6d3l4PLUpzdDw/rJMFjqYdv2NDs/AmzXSYMLGfdBq34uWs
	 e1XlOztdw9ebw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 24C5817E03E5;
	Thu, 26 Feb 2026 11:36:08 +0100 (CET)
Message-ID: <48e8f40b-f5f3-42b5-a97b-7a25d1dc0fb8@collabora.com>
Date: Thu, 26 Feb 2026 11:36:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 20/23] scsi: ufs: mediatek: Back up idle timer in
 per-instance struct
To: =?UTF-8?B?UGV0ZXIgV2FuZyAo546L5L+h5Y+LKQ==?= <peter.wang@mediatek.com>,
 "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
 "robh@kernel.org" <robh@kernel.org>,
 =?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 =?UTF-8?B?Q2hhb3RpYW4gSmluZyAo5LqV5pyd5aSpKQ==?=
 <Chaotian.Jing@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "nicolas.frattaroli@collabora.com" <nicolas.frattaroli@collabora.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 "kernel@collabora.com" <kernel@collabora.com>
References: <20260216-mt8196-ufs-v7-0-b5f2907c6da7@collabora.com>
 <20260216-mt8196-ufs-v7-20-b5f2907c6da7@collabora.com>
 <5d9723fd6b4ff8430889efb33e0fc93a10c4a880.camel@mediatek.com>
 <cad2e275-8b5d-4023-b3da-a191bfd065c5@collabora.com>
 <6297edc9c2d6d1a323f188ef411205701a629d88.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <6297edc9c2d6d1a323f188ef411205701a629d88.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_023613_007003_41A9D6AB 
X-CRM114-Status: GOOD (  13.64  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SWwgMjYvMDIvMjYgMDQ6NDYsIFBldGVyIFdhbmcgKOeOi+S/oeWPiykgaGEgc2NyaXR0bzoKPiBP
biBXZWQsIDIwMjYtMDItMjUgYXQgMTM6NDAgKzAxMDAsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vIHdyb3RlOgo+PiBJbiBteSBvcGluaW9uICJhaGl0IiBpcyB3YXkgbGVzcyByZWFkYWJsZSB0
aGFuCj4+ICJoaWJlcm5hdGVfaWRsZV90aW1lciIuCj4+Cj4+IFRoZSBoaWJlcm5hdGVfaWRsZV90
aW1lciBtZW1iZXIgaGVyZSBzdG9yZXMgdGhlIEFVVE8gSElCRVJOQVRFIElETEUKPj4gVElNRVIs
IGFuZAo+PiB0aGVyZSBpcyBubyBvdGhlciBwb3NzaWJsZSBoaWJlcm5hdGlvbiBzdGF0ZSBpbiB0
aGlzIGRyaXZlci4KPj4KPj4gTm90IHN1cmUgd2h5IHRoaXMgY291bGQgZXZlciBiZSBjb25mdXNp
bmcgaW4gdGVybXMgb2YgaXRzIGludGVuZGVkCj4+IHVzZTogaXRzCj4+IGludGVuZGVkIHVzZSBp
cyB0byBzdG9yZSB0aGUgKGF1dG8pIGhpYmVybjggaWRsZSB0aW1lciwgYW5kIHRoZQo+PiBtZW1i
ZXIgaXMgY2FsbGVkCj4+IGhpYmVybmF0ZV9pZGxlX3RpbWVyLgo+Pgo+PiBJbiBteSBleWVzLCB0
aGF0IG1hdGNoZXMgMToxIHdpdGggaXRzIHVzYWdlLiBMb3VkIGFuZCBjbGVhci4KPj4KPj4gUmVn
YXJkcywKPj4gQW5nZWxvCj4+Cj4+Cj4gCj4gSGkgQW5nZWxvR2lvYWNjaGlubywKPiAKPiBJZiB5
b3Ugd2FudCB0byByZWZlciB0byB0aGUgQVVUTyBISUJFUk5BVEUgSURMRSBUSU1FUiwKPiB0aGVu
IHlvdSBjYW5ub3Qgb21pdCAiYXV0byIgYmVjYXVzZSB0aGUgVUZTIGRyaXZlciBhbHNvCj4gaGFz
IGEgbWFudWFsIGhpYmVybmF0ZSBtZXRob2QuCj4gSG93ZXZlciwgIkFVVE8gSElCRVJOQVRFIElE
TEUgVElNRVIiIGlzIHRvbyBsb25nLAo+IGFuZCB3ZSBvZnRlbiB1c2UgImFoaXQiIGluc3RlYWQg
KHdoaWNoIGlzIGFsc28gdXNlZCBpbgo+IHRoZSBVRlNIQ0kgc3BlYykuIEZvciBleGFtcGxlOgo+
IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE5LjMvc291cmNlL2luY2x1ZGUv
dWZzL3Vmc2hjZC5oI0w5NzgKPiAKPiBTbywgaWYgeW91IHdhbnQgdG8gZGlzdGluZ3Vpc2ggaXQg
ZnJvbSBoYmEtPmFoaXQsIEkgc3VnZ2VzdAo+IHVzaW5nIGJhY2t1cF9haGl0IG9yIHNhdmVkX2Fo
aXQgaW5zdGVhZC4KPiAKCk9rYXksIGRvZXMgInNhdmVkX2F1dG9faGliZXJuOF9pZGxlX3RtciIg
c291bmQgZ29vZCBmb3IgeW91IGluc3RlYWQ/CgpSZWdhcmRzLApBbmdlbG8KCj4gVGhhbmtzCj4g
UGV0ZXIKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
