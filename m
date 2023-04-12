Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0939BC77B72
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 13:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+8wImCF4T+gB+z6jDS1opyJAW4Mv78zn0dckcCN3K4=; b=RwkiS9nP/7cuL1
	wfNbahpK1sXmNj2kDQwYP2xvHJDbUHv5BKY2DlQ7uVBraZAHiOqo/5cXHgxtpRyT1B7s3G6TUx8Jq
	l3ld0MfwYuXHPp6gjQ0oKZbvyD6H1QzzaFwDQ03nbg2fCJ9L98uD/7ow8sE9bNdjeh8EHXVNIW5I4
	R6tVoNw+vFulKo2bEVOXWpfWU/ucfd9nglh7RGyYTxoCxjWKFMcgm7FV4K66XaHI7cpbgFzvE3RJv
	r8YpMYtbZ8uf4RBuKu2pVxgu0WUBEguweyUO9EmSb7bsVBUxJik7tms/P4ifoltctAA5bxYWgXd8j
	426QitWvj4aG6JfDbTEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmaLr-003Jav-2C;
	Wed, 12 Apr 2023 13:17:31 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmaLm-003JYL-2m;
	Wed, 12 Apr 2023 13:17:28 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B32D26603102;
	Wed, 12 Apr 2023 14:17:23 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681305445;
	bh=kWaXsEK0eZOcZEFNa/wRIg4Y8oDz609JLlK3U1zI9vs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ijaIa/bTYqS4pI+GbN0q3iYFpCbrjvFi6mUY+gW5iKphea997GuAq5lrjcRD4dTza
	 tsfwTtFjO03ygljQz7j1jlnUrvZCjOoNypSlvvVzlqgJukqvVTxoDEh5G5yS3K57xC
	 0bqqKhngFD/JBhIHW0lneWDqez/IW5GMilTqgZuJ9CxsIymlhk2BpW57dVN+qOKM5m
	 CYjeoILzbttz1wIyfZgfY1mXlrowZbETlVXM9edw3x4u+apT1BM81e7HHDOsuV/wAn
	 uzrqHv7YB8ffDzeX74DusX+jhOkc2dArNZhIcjQD222MBsqQEipgE9qHLCxCAxsG+k
	 wkAyrXEvCEwIw==
Message-ID: <e129b3ff-90b1-3df7-871e-09fba0a960f4@collabora.com>
Date: Wed, 12 Apr 2023 15:17:21 +0200
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
 <eb770f19-ada5-81bb-5ea3-798edabca70f@collabora.com>
 <7e53c0b1-3aed-da08-5c57-800ac2277bc6@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <7e53c0b1-3aed-da08-5c57-800ac2277bc6@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_061727_028708_806AEFCF 
X-CRM114-Status: GOOD (  16.77  )
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

SWwgMTIvMDQvMjMgMTU6MTIsIEFsZXhhbmRyZSBNZXJnbmF0IGhhIHNjcml0dG86Cj4gT24gMTIv
MDQvMjAyMyAxNTowMywgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6Cj4+IElsIDEy
LzA0LzIzIDE0OjU5LCBBbGV4YW5kcmUgTWVyZ25hdCBoYSBzY3JpdHRvOgo+Pj4gT24gMTIvMDQv
MjAyMyAxMzoyNywgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6Cj4+Pj4gQWRkIGEg
Y29tcGF0aWJsZSBzdHJpbmcgZm9yIE1lZGlhVGVrIEhlbGlvIFgxMCBNVDY3OTU6IHRoaXMgU29D
IHVzZXMKPj4+PiB0aGUgc2FtZSBEU0kgUEhZIGFzIE1UODE3My4KPj4+Pgo+Pj4+IFNpZ25lZC1v
ZmYtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIAo+Pj4+IDxhbmdlbG9naW9hY2NoaW5v
LmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+Cj4+Pj4gLS0tCj4+Pj4gwqAgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxkc2ktcGh5LnlhbWwgfCA0ICsrKysKPj4+
PiDCoCAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxkc2ktcGh5
LnlhbWwgCj4+Pj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21lZGlh
dGVrLGRzaS1waHkueWFtbAo+Pj4+IGluZGV4IDI2ZjJiODg3Y2ZjMS4uYTlmNzgzNDRlZmRiIDEw
MDY0NAo+Pj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWVk
aWF0ZWssZHNpLXBoeS55YW1sCj4+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9tZWRpYXRlayxkc2ktcGh5LnlhbWwKPj4+PiBAQCAtMjQsNiArMjQsMTAgQEAg
cHJvcGVydGllczoKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gZW51bToKPj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBtZWRpYXRlayxtdDc2MjMtbWlwaS10eAo+Pj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogbWVkaWF0ZWssbXQyNzAxLW1pcGktdHgK
Pj4+PiArwqDCoMKgwqDCoCAtIGl0ZW1zOgo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgLSBlbnVt
Ogo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIG1lZGlhdGVrLG10Njc5NS1taXBp
LXR4Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBtZWRpYXRlayxtdDgxNzMtbWlw
aS10eAo+Pj4KPj4+IEFGQUlLLCBpdCBzaG91bGQgYmU6Cj4+PiDCoMKgwqDCoMKgwqAgLSBpdGVt
czoKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IG1lZGlhdGVrLG10Njc5NS1taXBp
LXR4Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBtZWRpYXRlayxtdDgxNzMtbWlw
aS10eAo+Pj4KPj4+IFNpbmNlIGl0IGlzbid0IHJlc3BlY3RlZCBhYm92ZSBmb3IgbXQ3NjIzLCBp
dCBtYXkgYmUgdG9sZXJhdGVkLgo+Pj4gUGxlYXNlLCB0YWtlIHRoaXMgY29tbWVudCBhcyBhIHN1
Z2dlc3Rpb24sIGlzbid0IGEgTkFLIGZyb20gbWUuCj4+Pgo+Pgo+PiBGaXJzdCBvZiBhbGwsIFRo
YW5rcyEKPj4gSSB3YW50IHRvIGV4cGxhaW4sIHRob3VnaCwgdGhlIHJlYXNvbiBmb3IgdGhhdC4K
Pj4KPj4gSWYgeW91IGNoZWNrIGFsbCB0aGUgY29tbWl0cywgb24gc29tZSBJIGRpZCBpdCBhcyB5
b3UganVzdCBwcm9wb3NlZCwgd2hpbGUKPj4gb24gc29tZSBvdGhlcnMgSSBkaWQgaXQgd2l0aCBh
biBlbnVtIGJlZm9yZSBjb25zdDogdGhhdCdzIHNpbXBseSBiZWNhdXNlIEkKPj4gKnRvdGFsbHkg
ZXhwZWN0KiBzb21lIHRvIGdyb3csIHdoaWxlIG90aGVycyAoY29uc3QgLSBjb25zdCkgSSB3YXMg
ZWl0aGVyCj4+IHVuc3VyZSwgb3IgdG90YWxseSAqbm90KiBleHBlY3RpbmcgdGhlbSB0byBncm93
IHNvb24hCj4gCj4gCj4gVGhhdCdzIHdoYXQgSSB0aG91Z2h0LiBJTUhPLCBpZiBzb21lb25lIGFk
ZCBhbm90aGVyIGNvbXBhdCBsYXRlciwgaGUgd2lsbCBiZSBvbiAKPiBjaGFyZ2UgdG8gY2hhbmdl
IHRoZSBjb25zdCBieSBlbnVtIGZyb250IG9mIHlvdXIgIm1lZGlhdGVrLG10Njc5NS1taXBpLXR4
Ii4gQnV0IG15IAo+IG9waW5pb24gaXMgcHJvYmFibHkgbm90IHRoZSBtb3N0IHBvcHVsYXIuCj4g
Cj4gSSB3aWxsIG5vdCBtYWtlIHRoZSBzYW1lIGZlZWRiYWNrIGZvciB0aGUgb3RoZXIgcGF0Y2hl
cyBpbiB0aGlzIHNlcmllcy4KPiAKCkkgaG9uZXN0bHkgZG9uJ3Qga25vdyB3aGF0J3MgdGhlIG1v
c3QgcG9wdWxhciBvcGluaW9uIGFib3V0IHRoYXQuLi4gYnV0IHdoYXRldmVyLAppbiBhbnkgY2Fz
ZS4uLiBqdXN0IHdhbnQgdG8gbWFrZSBzdXJlIHRvIGNvbW11bmljYXRlIHRoYXQgSSBkb24ndCBy
ZWFsbHkgaGF2ZQpzdHJvbmcgb3BpbmlvbnMgYWJvdXQgZG9pbmcgaXQgb25lIHdheSBvciB0aGUg
b3RoZXIuCgpUaGUgYXJndW1lbnRzIGluIGZhdm9yIGFuZCBhZ2FpbnN0IHRoYXQgYXJlIHByb2Jh
Ymx5IDE6MS4uLiA6LUQKCkNoZWVycyEKQW5nZWxvCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
