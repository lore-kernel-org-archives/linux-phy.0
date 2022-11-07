Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E166DC4332F
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 11:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAYE+b++XtNfDnyYIN7bEc0l+CvzmSOC4dPnwuQGBiw=; b=k8g9qmwIA23eyN
	Lk5y9yFcvS47q9EBdGprhf2GXr5dMwL+ffHTx4mbHX5L9GOP7GfEh1XxW5XdSOPv8G+VPFhn3WCX8
	pmjlzYJ0M+aFhasdDYJv0ZRS99Hb/+S/Qusk8DKku+09CC8UtVAMISC17JvKxh5ERO0H6LVPF9cV7
	ao3JcobOkCrlOR9+bJl5tu/pEYX01BxL3ttce1Tzdq0uimMJMqWfHZq35YfHnfb3Ri2aGmC+Kgqbo
	hlYVfGqmqBu0xHoy+6vc9JQKb3sdbyrde/Lp2kTFTIkj1RQSzMs8lwkOEqxVD90UuxgQr4veEokdo
	HtddhS3BTr8aW/oYwVSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os00r-00E2dK-BA; Mon, 07 Nov 2022 11:09:57 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os00T-00E2TM-Jo; Mon, 07 Nov 2022 11:09:35 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7DBCB6601FAA;
	Mon,  7 Nov 2022 11:09:27 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1667819368;
	bh=3+hQs9VHQA+nTYY5byObobXjo39vdKrxEvf02IpmXUE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bxB5RRvKO4DSosZ9cHjzG7jHLzq5OAyxZQIfjtyCIb0A7ERl6SEoroCKpmDDyvyfb
	 g5Kwegwvs1sq/qMY7l4ruYFPYHSkLVRjXGVPSCZfY3J27XBB9pCqWQA0ENttlQdKsp
	 HfhnjHOftYpw7rG7dFoXrsqNIHitfFoh1aFW3WL9GjtbwFpjRaMumTewT5xoMEC42H
	 wbIAEqK56Nb4h2vb2obmpQYN0fMnsv9zEN4LGBZlghpKFvR0hSvhnrhz9v1uekaAwu
	 TKKIu7Axs6aD2WUE1YSu2hr9qPlA/XWQsIso9NPOOZjNrQ6PyeI4NFM6PKYcNZ9ibT
	 wMRRcfioQgOKQ==
Message-ID: <f8e05f55-635c-f63c-9624-f8ccadcd1add@collabora.com>
Date: Mon, 7 Nov 2022 12:09:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v3 04/12] drm/mediatek: extract common functions from the
 mtk hdmi driver
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Jitao shi
 <jitao.shi@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, CK Hu <ck.hu@mediatek.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-kernel@lists.infradead.org, stuart.lee@mediatek.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 mac.shen@mediatek.com, linux-phy@lists.infradead.org
References: <20220919-v3-0-a803f2660127@baylibre.com>
 <20220919-v3-4-a803f2660127@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220919-v3-4-a803f2660127@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_030933_917136_2A606556 
X-CRM114-Status: GOOD (  12.65  )
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

SWwgMDQvMTEvMjIgMTU6MDksIEd1aWxsYXVtZSBSYW5xdWV0IGhhIHNjcml0dG86Cj4gQ3JlYXRl
IGEgY29tbW9uICJmcmFtZXdvcmsiIHRoYXQgY2FuIGJlIHVzZWQgdG8gYWRkIHN1cHBvcnQgZm9y
Cj4gZGlmZmVyZW50IGhkbWkgSVBzIHdpdGhpbiB0aGUgbWVkaWF0ZWsgcmFuZ2Ugb2YgcHJvZHVj
dHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogR3VpbGxhdW1lIFJhbnF1ZXQgPGdyYW5xdWV0QGJheWxp
YnJlLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9NYWtlZmlsZSAgICAg
ICAgICB8ICAgMyArLQo+ICAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1pLmMgICAg
ICAgIHwgNjIwICsrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gICBkcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2hkbWkuaCAgICAgICAgfCAgMTYgKwo+ICAgZHJpdmVycy9ncHUvZHJt
L21lZGlhdGVrL210a19oZG1pX2NvbW1vbi5jIHwgNDMzICsrKysrKysrKysrKysrKysrKysrCj4g
ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWlfY29tbW9uLmggfCAyMjEgKysrKysr
KysrKwo+ICAgNSBmaWxlcyBjaGFuZ2VkLCA3MDQgaW5zZXJ0aW9ucygrKSwgNTg5IGRlbGV0aW9u
cygtKQo+IAoKLi5zbmlwLi4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRl
ay9tdGtfaGRtaV9jb21tb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaV9j
b21tb24uYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi4zZjA4
ZDM3YjFhZjAKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19oZG1pX2NvbW1vbi5jCgouLnNuaXAuLgoKPiArCj4gK2ludCBtdGtfaGRtaV9zZXR1cF9h
dmlfaW5mb2ZyYW1lKHN0cnVjdCBtdGtfaGRtaSAqaGRtaSwgdTggKmJ1ZmZlciwgc2l6ZV90IGJ1
ZnN6LAo+ICsJCQkJIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlKQoKd2FybmluZzogbm8g
cHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhtdGtfaGRtaV9zZXR1cF9hdmlfaW5mb2ZyYW1l4oCZ
IApbLVdtaXNzaW5nLXByb3RvdHlwZXNdCgpQbGVhc2UgZml4LgoKVGhhbmtzLApBbmdlbG8KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
