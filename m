Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB514C77B72
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 13:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRGjO/ZeIYSuurote1Q5L/TVB02Z/0ietZ3kfO8TewQ=; b=SRbVP6iF8W7aVx
	nv/crqhcjc8m6cc+MvVio4rzeUXCza6ZH/aErpL5et1ubuhshUbVomUOtlOt7xBevQ0XOi84vdY8H
	SN/A0NuXkVq6GNx3YTRrYgLkvtGJIRSukdPWTdbysNSHbKbKtHOEtXcJ41F+s2NECwTm3itXg22d2
	u90Nm6HVuW0TWeQUx3iEPpcL1+U78/VvEDeflCw40aCvbhqK77DIdX6QTG1f9GuoysM6kSgWjTStV
	VgGbOE9DPtg0oRmomWHfpNPdhnQLb2vyIV167O6rtwsIhgMKkJTvqMPpQrUJ7I6rqQE+qTxv11n16
	ZbqjO1FNcTgS3qyvKkPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmaPe-003KDk-1t;
	Wed, 12 Apr 2023 13:21:26 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmaPY-003KAy-25;
	Wed, 12 Apr 2023 13:21:23 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2599F6603102;
	Wed, 12 Apr 2023 14:21:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681305679;
	bh=BEatgd20PaT+FoAtz5LJF9JNJB6ziiidFfTfPNIX/YM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fsD0pPPDgNntnWVZcg0I3MYaS53hmASFtfvk2zOkcJ9TJZiqgyjcdHRrgEqLsg32h
	 QpEOr5iKO0Ea1oRKd9TFMqf2RHhd0m5UjbO3GPw5vZh4WF19HkG6o3Zi2Giq7egCgN
	 9u4b/aW/K8IKCNgyJ2EdGPdlzlvp51x2AnsimSLEbc5Z5RZ9hIau+owIMC8ThfilW+
	 bVQ1xfnX8cu6G6PYHP/ZZiMRLmCTrOoLr+ZVHoV6gZY90ykb8E/LqSvsieF4Sg3zAy
	 ul7/TGTo6KI8Zv0auPlCa3hscCYQrEopSi478gvEP2mBehdLl0DAgHOTXBHEMUN0Ey
	 S3UbQhNG6eqAg==
Message-ID: <8bc72da0-d872-53fb-6753-f826efa3a51b@collabora.com>
Date: Wed, 12 Apr 2023 15:21:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 05/27] dt-bindings: display: mediatek: dsi: Add compatible
 for MediaTek MT6795
Content-Language: en-US
To: Matthias Brugger <matthias.bgg@gmail.com>
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
 <20230412112739.160376-6-angelogioacchino.delregno@collabora.com>
 <b9424113-f812-2f2d-5068-b04bb789e0de@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <b9424113-f812-2f2d-5068-b04bb789e0de@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_062120_811618_D2406B9E 
X-CRM114-Status: GOOD (  11.34  )
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

SWwgMTIvMDQvMjMgMTQ6MzYsIE1hdHRoaWFzIEJydWdnZXIgaGEgc2NyaXR0bzoKPiAKPiAKPiBP
biAxMi8wNC8yMDIzIDEzOjI3LCBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToKPj4g
QWRkIGEgY29tcGF0aWJsZSBzdHJpbmcgZm9yIE1lZGlhVGVrIEhlbGlvIFgxMCBNVDY3OTUsIHVz
aW5nIHRoZSBzYW1lCj4+IERTSSBibG9jayBhcyBNVDgxNzMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNv
bGxhYm9yYS5jb20+Cj4+IC0tLQo+PiDCoCAuLi4vZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxk
c2kueWFtbMKgwqDCoMKgwqDCoMKgIHwgMTkgKysrKysrKysrKysrLS0tLS0tLQo+PiDCoCAxIGZp
bGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVr
L21lZGlhdGVrLGRzaS55YW1sIAo+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLGRzaS55YW1sCj4+IGluZGV4IDQ3MDdiNjAyMzhi
MC4uMTI0NDFiOTM3Njg0IDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxkc2kueWFtbAo+PiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxk
c2kueWFtbAo+PiBAQCAtMjIsMTMgKzIyLDE4IEBAIGFsbE9mOgo+PiDCoCBwcm9wZXJ0aWVzOgo+
PiDCoMKgwqAgY29tcGF0aWJsZToKPj4gLcKgwqDCoCBlbnVtOgo+PiAtwqDCoMKgwqDCoCAtIG1l
ZGlhdGVrLG10MjcwMS1kc2kKPj4gLcKgwqDCoMKgwqAgLSBtZWRpYXRlayxtdDc2MjMtZHNpCj4+
IC3CoMKgwqDCoMKgIC0gbWVkaWF0ZWssbXQ4MTY3LWRzaQo+PiAtwqDCoMKgwqDCoCAtIG1lZGlh
dGVrLG10ODE3My1kc2kKPj4gLcKgwqDCoMKgwqAgLSBtZWRpYXRlayxtdDgxODMtZHNpCj4+IC3C
oMKgwqDCoMKgIC0gbWVkaWF0ZWssbXQ4MTg2LWRzaQo+PiArwqDCoMKgIG9uZU9mOgo+PiArwqDC
oMKgwqDCoCAtIGVudW06Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgLSBtZWRpYXRlayxtdDI3MDEt
ZHNpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgLSBtZWRpYXRlayxtdDc2MjMtZHNpCj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqAgLSBtZWRpYXRlayxtdDgxNjctZHNpCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqAgLSBtZWRpYXRlayxtdDgxNzMtZHNpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgLSBtZWRpYXRl
ayxtdDgxODMtZHNpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgLSBtZWRpYXRlayxtdDgxODYtZHNp
Cj4+ICvCoMKgwqDCoMKgIC0gaXRlbXM6Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgLSBlbnVtOgo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBtZWRpYXRlayxtdDY3OTUtZHNpCj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogbWVkaWF0ZWssbXQ4MTczLWRzaQo+IAo+IFNhbWUg
aGVyZSwgd2h5IG5vdCBjb25zdD8KPiAKCkZvciBib3RoIERQSSBhbmQgRFNJOiBtYW55IG90aGVy
IFNvQ3MgY2FuIHdvcmsgd2l0aCB0aGUgc2FtZSBoYW5kbGluZwphcyBNVDgxNzMsIHRoYXQncyBh
bGwgdGhlIG9uZXMgZnJvbSB0aGUgc2FtZSBlcmEsIG9uZSBleGFtcGxlIGlzIE1UNjc2NSwKTVQ2
NzU1Li4uIGFzIHdlbGwgYXMgTVQ2NzUyIGFuZCA2NzUzMyBhZmFpay4KCi4uLnRoYXQncyB3aHkg
Oi0pCgpDaGVlcnMsCkFuZ2VsbwoKPj4gwqDCoMKgIHJlZzoKPj4gwqDCoMKgwqDCoCBtYXhJdGVt
czogMQoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
