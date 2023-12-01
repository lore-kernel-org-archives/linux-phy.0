Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CC91C10F04
	for <linux-phy@archiver.kernel.org>; Fri,  1 Dec 2023 09:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NK1T2FH6bj5QgIs+ZqkCwTer81wfsz8MsI0Rzt3yXXY=; b=AE1/s/uPihkRo3
	mvxMgvUX/KPUrnes+7WpnpRPPtGxbiemMsHBp138MaGiM6C4kEiKK3T1BBT4cTds1OjGVNDg6JBu/
	hM/6bSKC1sve5B5Uv6v0LW/5/ka2177JA7cGDmpt0bC2luJ9E3MG+aK6shAIMKC7H0vq6nYXrfe9y
	Y31AverZ6gVLFNdn02Dx30UnQNq8jnOXUZhqyWIC/SMgqumpx7F4v9/5WYa3lzThIGaIqjYtMc3yL
	1d1NIZJXheviA2bhyrFIBCbQyU1QKsXeUgZzCxcoeI2mYXpxSRBRv/s+CMGKbXBHLt4iucrH9z23H
	ixVD6FjtMxsP1+cPGtYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8zjj-00D4nI-2v;
	Fri, 01 Dec 2023 09:23:03 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8zjf-00D4mN-3D;
	Fri, 01 Dec 2023 09:23:01 +0000
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 03C28660739D;
	Fri,  1 Dec 2023 09:22:56 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701422578;
	bh=QgTeaIFG5TKHQs9edtTeIIGI6iDgYZhlD3cjaCISnnI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LMct2acAVotYmUk4lB0+USCWpBs96wpATpyINXpvYuk+8xFxydBNdA651Kp4FNd3i
	 RIPMz4/heGSBMa0I3t/LjN4j1Q8B7Eo5LZSfZ615sdFRwRrhzDHMv4JUMokQTe5PTt
	 UGvLkbOLW+NCU0AMZLPHISGSVC/52VRWl/YMZ+jA2DXrwHXXGVwWOzsggzba2MwNRk
	 6Akt3oQGJoVIfam61b/7fW2cRfylS0fuaSRNhyQKB2+mU7ODo31OgAA+VPCk7IUtBw
	 DfTTfEZ67fCkYMQvOHq/qj2EkvIPoeJpdTgpWxpcBWG9Gx14kcOgGZbIIks7LN+NOc
	 RWamvAwk80NuA==
Message-ID: <8250291c-13ef-4072-92d6-f3d7953d6521@collabora.com>
Date: Fri, 1 Dec 2023 10:22:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] drm/mediatek: support the DSI0 output on the MT8195
 VDOSYS0
Content-Language: en-US
To: Michael Walle <mwalle@kernel.org>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jitao Shi
 <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
References: <20231123133749.2030661-1-mwalle@kernel.org>
 <20231123133749.2030661-5-mwalle@kernel.org>
 <2d1bae2239626cb51977bf0803cec602@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <2d1bae2239626cb51977bf0803cec602@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_012300_166621_1D87E384 
X-CRM114-Status: GOOD (  18.86  )
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

SWwgMzAvMTEvMjMgMTM6NDcsIE1pY2hhZWwgV2FsbGUgaGEgc2NyaXR0bzoKPj4gV2l0aCB0aGUg
bGF0ZXN0IGR5bmFtaWMgc2VsZWN0aW9uIG9mIHRoZSBvdXRwdXQgY29tcG9uZW50LCB3ZSBjYW4g
bm93Cj4+IHN1cHBvcnQgZGlmZmVyZW50IG91dHB1dHMuIE1vdmUgY3VycmVudCBvdXRwdXQgY29t
cG9uZW50IGludG8gdGhlCj4+IGR5bmFtaWMgcm91dGVzIGFycmF5IGFuZCBhZGQgdGhlIG5ldyBE
U0kwIG91dHB1dC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBXYWxsZSA8bXdhbGxlQGtl
cm5lbC5vcmc+Cj4+IC0tLQo+PiDCoGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Ry
di5jIHwgOCArKysrKysrLQo+PiDCoDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfZHJtX2Rydi5jIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5j
Cj4+IGluZGV4IDJiMGMzNWNhY2JjNi4uNmZhODg5NzYzNzZlIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYuYwo+PiBAQCAtMjIyLDcgKzIyMiwxMSBAQCBzdGF0aWMg
Y29uc3QgdW5zaWduZWQgaW50IG10ODE5NV9tdGtfZGRwX21haW5bXSA9IHsKPj4gwqDCoMKgwqAg
RERQX0NPTVBPTkVOVF9ESVRIRVIwLAo+PiDCoMKgwqDCoCBERFBfQ09NUE9ORU5UX0RTQzAsCj4+
IMKgwqDCoMKgIEREUF9DT01QT05FTlRfTUVSR0UwLAo+PiAtwqDCoMKgIEREUF9DT01QT05FTlRf
RFBfSU5URjAsCj4gCj4gUGxlYXNlIGRpc3JlZ2FyZCB0aGlzIHBhdGNoICh0aGUgb3RoZXJzIGFy
ZSBvaykuIFRoZXJlIG11c3QgZ29uZSBzb21ldGhpbmcKPiB3cm9uZyBkdXJpbmcgbXkgdGVzdGlu
Zy4gRERQX0NPTVBPTkVOVF9NRVJHRTAgd29uJ3Qgd29yayB3aXRoCj4gRERQX0NPTVBPTkVOVF9E
U0kwLiBJZiBhbnlvbmUgaGFzIG1vcmUgaW5zaWdodHMsIEknbSBhbGwgZWFycy4KPiAKCkkgd2Fz
ICpjb252aW5jZWQqIHRoYXQgdGhlIE1FUkdFMCBTT1VUIHdhcyBjb25uZWN0ZWQgdG8gRFNJMCEh
IQoKLi4uYnV0IHlvdSdyZSByaWdodCwgaGVyZSwgYW5kIHRoYW5rcyBmb3IgY2F0Y2hpbmcgdGhh
dDogdGhlcmUncyBubyB3YXkgdG8KZ2V0IE1FUkdFMCBjb25uZWN0ZWQgdG8gRFNJMDsgaWYgeW91
IGNoZWNrIGluIHRoZSBkYXRhc2hlZXQgZm9yIFZET19TRUxfSU4sCnlvdSBjYW4gZ2V0IGRhdGEg
ZnJvbSBNRVJHRTAgb25seSBmb3IgRFNJKjEqLCBub3QgMC4KClRoZSBvbmx5IHdheSBpcyB0byBj
b25uZWN0IERTQ19XUkFQMCAoRERQX0NPTVBPTkVOVF9EU0MwIGluIG10a19kcm1fZHJ2IGJ0dykK
ZGlyZWN0bHkgdG8gRFNJMCAob3IgZGl0aGVyIHRvIGRzaTApLi4uIHVubGVzcyB0aGVyZSBpcyBh
IHdheSB0byBjaGFuZ2UgdGhlCnBpbm11eCB0byBpbnZlcnQgdGhlIHBpbnMgZm9yIERTSTAvMT8K
CllvdSBjb3VsZCBhc3NpZ24gdGhlIERTSTEgY29udHJvbGxlciB0byB0aGUgb25lIHRoYXQgaXMg
Y3VycmVudGx5IERTSTAgZm9yIHlvdS4KClRoYXQgd291bGQgc29sdmUgdGhlIGlzc3VlIGhlcmUu
CgpDaGVlcnMhCkFuZ2VsbwoKPiAtbWljaGFlbAo+IAo+PiArfTsKPj4gKwo+PiArc3RhdGljIGNv
bnN0IHN0cnVjdCBtdGtfZHJtX3JvdXRlIG10ODE5NV9tdGtfZGRwX21haW5fcm91dGVzW10gPSB7
Cj4+ICvCoMKgwqAgeyAwLCBERFBfQ09NUE9ORU5UX0RQX0lOVEYwIH0sCj4+ICvCoMKgwqAgeyAw
LCBERFBfQ09NUE9ORU5UX0RTSTAgfSwKPj4gwqB9Owo+Pgo+PiDCoHN0YXRpYyBjb25zdCB1bnNp
Z25lZCBpbnQgbXQ4MTk1X210a19kZHBfZXh0W10gPSB7Cj4+IEBAIC0zMDgsNiArMzEyLDggQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBtdGtfbW1zeXNfZHJpdmVyX2RhdGEgCj4+IG10ODE5Ml9tbXN5
c19kcml2ZXJfZGF0YSA9IHsKPj4gwqBzdGF0aWMgY29uc3Qgc3RydWN0IG10a19tbXN5c19kcml2
ZXJfZGF0YSBtdDgxOTVfdmRvc3lzMF9kcml2ZXJfZGF0YSA9IHsKPj4gwqDCoMKgwqAgLm1haW5f
cGF0aCA9IG10ODE5NV9tdGtfZGRwX21haW4sCj4+IMKgwqDCoMKgIC5tYWluX2xlbiA9IEFSUkFZ
X1NJWkUobXQ4MTk1X210a19kZHBfbWFpbiksCj4+ICvCoMKgwqAgLmNvbm5fcm91dGVzID0gbXQ4
MTk1X210a19kZHBfbWFpbl9yb3V0ZXMsCj4+ICvCoMKgwqAgLm51bV9jb25uX3JvdXRlcyA9IEFS
UkFZX1NJWkUobXQ4MTk1X210a19kZHBfbWFpbl9yb3V0ZXMpLAo+PiDCoMKgwqDCoCAubW1zeXNf
ZGV2X251bSA9IDIsCj4+IMKgfTsKCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
