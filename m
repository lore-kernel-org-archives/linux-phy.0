Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF3DFE9B25F
	for <linux-phy@archiver.kernel.org>; Tue, 24 Feb 2026 12:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWMu5non3N0AdUQZunJY3owi9LQHPHZvvGQ5Q7AIR3E=; b=Fn/+/tvVBm84G7
	hfkYnnifRJBWrAfLeTBXHRZhE1vzXfhfzTM4R0g2SV/VEKOEv1YxbKS+xJhKd0pBq1G5HsTDPj60A
	jDhRnxxm6l4ctZmUYex3ANt+V0hcwsAcmEhgbLjlTRpmW+ccPVnIkVoC/a02zbZWzDUNCzr+lsmwC
	tjS4E6gw6OMiD4IVvKLX/0XByVzlYKWOiWIhyuHZ21tlLpnHIFlVe+i/gMHCwXLnAanBp9w9aeaQT
	TVKL7ZTZagHtxiAu+WQBIFQ4ZDmVjYpMCurxQ8FW3PzGGQmiOzJnqrEAaepG1pxJBvzKi8Ak21lV/
	FQvOmp9Clzyi3wjr/vaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vurjh-000000024Ao-2gnH;
	Tue, 24 Feb 2026 12:41:57 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vurje-00000002493-47OL;
	Tue, 24 Feb 2026 12:41:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771936912;
	bh=frB8S6YZv/co/jpO+5WGrKt5NldRYnBoH/LpqHatns4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Hofm1FmknMdxMcYB2Z9ugTxcQrVBLUQ58wZjxd6lEJIY0Boufzx4xMv4R8B9QniKX
	 xUO2t55T1YHIicluD5f6tlcEch2cxVBzHYJ0yWpYWdvg9paQFmi6nptrAoOKpNoYT6
	 YmYULapPXMJfwekKZWfPwYYNdfLOzqI42ZqNyG67I0VyOddjJf3eOQXVrUGsJFamEN
	 LLWBBVeSkvUxguMDWCs/1LuEev+Bmjw+zIXTQT1OwP89ubC5BQe6utspBMEn9xlG7/
	 ebFtKS6XI5jWeiIbljCQx8CjAwNc5qYAz738Gg8cK/hlmVrWx4T/qNh+IEYhr3BbG6
	 FJoruteFLdhOA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 52F4A17E06CA;
	Tue, 24 Feb 2026 13:41:51 +0100 (CET)
Message-ID: <24445e6d-c308-4df2-8b3e-7ee8a8e3f2fe@collabora.com>
Date: Tue, 24 Feb 2026 13:41:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 10/23] scsi: ufs: mediatek: Handle misc host voltage
 regulators
To: =?UTF-8?B?UGV0ZXIgV2FuZyAo546L5L+h5Y+LKQ==?= <peter.wang@mediatek.com>,
 "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
 "robh@kernel.org" <robh@kernel.org>,
 =?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 =?UTF-8?B?Q2hhb3RpYW4gSmluZyAo5LqV5pyd5aSpKQ==?=
 <Chaotian.Jing@mediatek.com>, "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "nicolas.frattaroli@collabora.com" <nicolas.frattaroli@collabora.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "broonie@kernel.org" <broonie@kernel.org>
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
 <20260216-mt8196-ufs-v7-10-b5f2907c6da7@collabora.com>
 <2c7c84a2df19624ba9f207fd3fee47a8bdd9d8dc.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <2c7c84a2df19624ba9f207fd3fee47a8bdd9d8dc.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_044155_163469_0C0B1507 
X-CRM114-Status: GOOD (  12.00  )
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

SWwgMjQvMDIvMjYgMTM6MzgsIFBldGVyIFdhbmcgKOeOi+S/oeWPiykgaGEgc2NyaXR0bzoKPiBP
biBNb24sIDIwMjYtMDItMTYgYXQgMTQ6MzcgKzAxMDAsIE5pY29sYXMgRnJhdHRhcm9saSB3cm90
ZToKPj4gQEAgLTExODgsOCArMTE5MCwyMSBAQCBzdGF0aWMgaW50IHVmc19tdGtfZ2V0X3N1cHBs
aWVzKHN0cnVjdAo+PiB1ZnNfbXRrX2hvc3QgKmhvc3QpCj4+ICDCoHsKPj4gIMKgCXN0cnVjdCBk
ZXZpY2UgKmRldiA9IGhvc3QtPmhiYS0+ZGV2Owo+PiAgwqAJY29uc3Qgc3RydWN0IHVmc19tdGtf
c29jX2RhdGEgKmRhdGEgPQo+PiBvZl9kZXZpY2VfZ2V0X21hdGNoX2RhdGEoZGV2KTsKPj4gKwlp
bnQgcmV0Owo+PiArCj4+ICsJaWYgKCFkYXRhKQo+PiArCQlyZXR1cm4gMDsKPj4gKwo+PiArCWlm
IChkYXRhLT5udW1fcmVnX25hbWVzKSB7Cj4+ICsJCXJldCA9IGRldm1fcmVndWxhdG9yX2J1bGtf
Z2V0X2VuYWJsZShkZXYsIGRhdGEtCj4+PiBudW1fcmVnX25hbWVzLAo+PiArCQkJCQkJwqDCoMKg
wqAgZGF0YS0KPj4+IHJlZ19uYW1lcyk7Cj4gCj4gSGkgTmljb2xhcywKPiAKPiBJZiB0aGVzZSBy
ZWd1bGF0b3JzIGFyZSBvbmx5IGFjcXVpcmVkIGFuZCBlbmFibGVkIG9uY2UsCj4gd2h5IG5vdCBq
dXN0IHNldCByZWd1bGF0b3ItYWx3YXlzLW9uIGluIHRoZSBkZXZpY2UgdHJlZT8KPiAKCkJlY2F1
c2U6CiAgMS4gVGhlIFVGUyBkcml2ZXIgaGFzIHRvIGFjcXVpcmUgdGhlIGNvcnJlY3Qgc3VwcGxp
ZXMgcmVnYXJkbGVzcyBvZiB0aGVtCiAgICAgYmVpbmcgb24sIGd1YXJhbnRlZWluZyBib3RoIGEg
cmVhZGFibGUgcG93ZXIgdHJlZSAoc3lzZnMvZGVidWdmcykgYW5kCiAgICAgYSBjb3JyZWN0IGhh
cmR3YXJlIGRlc2NyaXB0aW9uIGluIGRldmljZXRyZWUuCiAgMi4gQSBmdXR1cmUgdXBkYXRlIG1p
Z2h0IGdldCB0aG9zZSByZWd1bGF0b3JzIGRpc2FibGVkIGR1cmluZyBkZWVwIHNsZWVwCgpSZWdh
cmRzLApBbmdlbG8KCj4gVGhhbmtzCj4gUGV0ZXIKPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
