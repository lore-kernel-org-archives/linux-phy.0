Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48C10C77B6E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 13:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CL6WIXRBMdySlTztvZI7AhQaGJapS2VTJNeOtAds9NQ=; b=ZTrovQyqN+4Xjm
	xPUixtEp17p/NQ+d24cPsP+MmRRTci2Sy48zeEGUYadPHtWeKTJh9gKI2jieftRT3d2oiQ6OwSFS1
	3HLdAwL5mHy2ssxBjh4VM8gfZRhTqRYZDoCKho6760dwp4FC4fNAYGNj/IQ4WmT/SqWK6909FgSFm
	UTpm6FFVJCzpvuzrVllYhzGQ0ZThSqRAcgvsg+9AB0Cm4LOKM8pE8NUzBj6u0C7/cdMHk5WAeyBaE
	n5NMZJXrLe4EvZ0z0d7h+rRjAsuC+QXj9SLjM4pBzWMe88ZUHxBG/ieptiBNx/cIovYdX2G6RUVBg
	rEacjpAFHbx/6gPKnIjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pma8l-003FxR-2s;
	Wed, 12 Apr 2023 13:03:59 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pma8h-003FvM-38;
	Wed, 12 Apr 2023 13:03:57 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AE81F6603102;
	Wed, 12 Apr 2023 14:03:50 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681304632;
	bh=n6UmEOVTw+KXN9/725bQQxVPB20qNDRrZSlz09sXOMo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AQGqtRCpfP1ZuiophrOrBi4nZp+IoEZLBUmkBU7M1yFW3J4w/j+9WFvTAaK4aAfy0
	 5mYHWH2h9wjO2WBZ32CNT1xRWPLebR3bOjhc4EYA2r8GAUkpXyuAw45LR3pxru37GU
	 TJBMilPa+oR0ba/Sl+XjUj2izfyuitVr5N5O7t6jLvyKSSm9hcJWe2N8F2ludKsfQs
	 BPXQNPKykaAn/QFWyaCAVLBVUDCUiSYmVAgcgUuhU29wxTbleKy57mWETsDJ/lmNi4
	 eoW0EreMLhn9a2r7hNzEA0Rgm3J1Ixu9cUE3XdTH20jdV2vDUVROKrAgOAx3yO8xAA
	 GmQOR2WRqCCBw==
Message-ID: <eb770f19-ada5-81bb-5ea3-798edabca70f@collabora.com>
Date: Wed, 12 Apr 2023 15:03:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 02/27] dt-bindings: phy: mediatek,dsi-phy: Add compatible
 for MT6795 Helio X10
Content-Language: en-US
To: Alexandre Mergnat <amergnat@baylibre.com>, matthias.bgg@gmail.com
Cc: p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 chunkuang.hu@kernel.org, ck.hu@mediatek.com, jitao.shi@mediatek.com,
 xinlei.lee@mediatek.com, houlong.wei@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-pwm@vger.kernel.org, kernel@collabora.com,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-3-angelogioacchino.delregno@collabora.com>
 <20684378-cf3e-0299-d390-287b7bafbda5@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20684378-cf3e-0299-d390-287b7bafbda5@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_060356_141974_67F511C6 
X-CRM114-Status: GOOD (  14.17  )
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

SWwgMTIvMDQvMjMgMTQ6NTksIEFsZXhhbmRyZSBNZXJnbmF0IGhhIHNjcml0dG86Cj4gT24gMTIv
MDQvMjAyMyAxMzoyNywgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6Cj4+IEFkZCBh
IGNvbXBhdGlibGUgc3RyaW5nIGZvciBNZWRpYVRlayBIZWxpbyBYMTAgTVQ2Nzk1OiB0aGlzIFNv
QyB1c2VzCj4+IHRoZSBzYW1lIERTSSBQSFkgYXMgTVQ4MTczLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bj
b2xsYWJvcmEuY29tPgo+PiAtLS0KPj4gwqAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9tZWRpYXRlayxkc2ktcGh5LnlhbWwgfCA0ICsrKysKPj4gwqAgMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxkc2ktcGh5LnlhbWwgCj4+IGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxkc2ktcGh5LnlhbWwKPj4gaW5k
ZXggMjZmMmI4ODdjZmMxLi5hOWY3ODM0NGVmZGIgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWssZHNpLXBoeS55YW1sCj4+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWssZHNpLXBoeS55
YW1sCj4+IEBAIC0yNCw2ICsyNCwxMCBAQCBwcm9wZXJ0aWVzOgo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIC0gZW51bToKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gbWVkaWF0
ZWssbXQ3NjIzLW1pcGktdHgKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBtZWRp
YXRlayxtdDI3MDEtbWlwaS10eAo+PiArwqDCoMKgwqDCoCAtIGl0ZW1zOgo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgIC0gZW51bToKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gbWVkaWF0
ZWssbXQ2Nzk1LW1pcGktdHgKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBtZWRpYXRl
ayxtdDgxNzMtbWlwaS10eAo+IAo+IEFGQUlLLCBpdCBzaG91bGQgYmU6Cj4gIMKgwqDCoMKgwqAg
LSBpdGVtczoKPiAgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IG1lZGlhdGVrLG10Njc5NS1t
aXBpLXR4Cj4gIMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBtZWRpYXRlayxtdDgxNzMtbWlw
aS10eAo+IAo+IFNpbmNlIGl0IGlzbid0IHJlc3BlY3RlZCBhYm92ZSBmb3IgbXQ3NjIzLCBpdCBt
YXkgYmUgdG9sZXJhdGVkLgo+IFBsZWFzZSwgdGFrZSB0aGlzIGNvbW1lbnQgYXMgYSBzdWdnZXN0
aW9uLCBpc24ndCBhIE5BSyBmcm9tIG1lLgo+IAoKRmlyc3Qgb2YgYWxsLCBUaGFua3MhCkkgd2Fu
dCB0byBleHBsYWluLCB0aG91Z2gsIHRoZSByZWFzb24gZm9yIHRoYXQuCgpJZiB5b3UgY2hlY2sg
YWxsIHRoZSBjb21taXRzLCBvbiBzb21lIEkgZGlkIGl0IGFzIHlvdSBqdXN0IHByb3Bvc2VkLCB3
aGlsZQpvbiBzb21lIG90aGVycyBJIGRpZCBpdCB3aXRoIGFuIGVudW0gYmVmb3JlIGNvbnN0OiB0
aGF0J3Mgc2ltcGx5IGJlY2F1c2UgSQoqdG90YWxseSBleHBlY3QqIHNvbWUgdG8gZ3Jvdywgd2hp
bGUgb3RoZXJzIChjb25zdCAtIGNvbnN0KSBJIHdhcyBlaXRoZXIKdW5zdXJlLCBvciB0b3RhbGx5
ICpub3QqIGV4cGVjdGluZyB0aGVtIHRvIGdyb3cgc29vbiEKCj4+IMKgwqDCoMKgwqDCoMKgIC0g
aXRlbXM6Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBlbnVtOgo+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLSBtZWRpYXRlayxtdDgzNjUtbWlwaS10eAo+IAo+IFJldmlld2Vk
LWJ5OiBBbGV4YW5kcmUgTWVyZ25hdCA8YW1lcmduYXRAYmF5bGlicmUuY29tPgo+IAoKVGhhbmtz
IGFnYWluIQoKQ2hlZXJzLApBbmdlbG8KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
