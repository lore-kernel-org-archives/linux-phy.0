Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16F0DC77B6F
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 10:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sRl5jfLO9KaMTTYuhW2n0CAMdYvojYBz9LsEMVvQhNY=; b=ucMbH7dq9ieVQt
	V05xVlG4X9/9qOl0m7dSYZ2IuR1kZBL8hEkBrMCsc5VlfzGP3/3CdTEH2UEsI4btbe4CTAim4WO0c
	QL5v4jwYSjZSXmvYmOxBAZAKT1zdbb3ZZkPQCQC0E5O3Ird/RhuQuzvnU+aYBLMLjiy10inNyfbIj
	rr19rocH+ILPOWk3Md0BkZOlmgFVm+LiaFwJQyrWgloXtoRFcMl5eumS+GNQVgZR7oGHUm2gixNXJ
	d1W3AKQ82qWE3TVls+XACim9sxQ7jY+wIw5uxHQ+a5oxpxyFO7l4U2MH83IZDilt4Q+Lxermhp5+s
	s7/RDnBb/NssRQTyACUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGd5-00977n-1s;
	Fri, 14 Apr 2023 10:26:07 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGd1-00973m-1G;
	Fri, 14 Apr 2023 10:26:04 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 227E5660321F;
	Fri, 14 Apr 2023 11:26:00 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681467961;
	bh=mNoM/ta8cg4ngqxg7oipt2WWk68MhPf2irdlQ2bTH6c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HWaowAFI7MZZLy46RcM67hcrKHR7EFPgMqFHgvDEIAiWxpvjNQicUt31wS4wYDL1S
	 1KaDj/aqxFkJEeq8RwQxDv4iWZzhP5+BuJxaGDFTauwzHvJBay7+0AlEpI4hi2S2WT
	 8rB98KbBmtvP6fj7GoWG/FROcIKx2n+XiN5KBI7sj2xzE5hpGwMgpWbRB83wQ9s6Zu
	 RNpJkWLksBfef+SsnXarFVl1bPEzxQJWSpshnHOEDjJ1/tkYDqZe9CGGGXBfwgHl8k
	 cUvig8zyWy3zW5Dg58B8CVzegX5HKHhQRhIgzyDe+cANCSJ4z+VhzYfo/Vc0yR6bUB
	 +8AotLP+x+XDA==
Message-ID: <13fe3e54-caa5-098c-0a86-3d2f8475c23f@collabora.com>
Date: Fri, 14 Apr 2023 12:25:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 01/27] dt-bindings: pwm: Add compatible for MediaTek
 MT6795
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc: matthias.bgg@gmail.com, p.zabel@pengutronix.de, airlied@gmail.com,
 daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com, chunkuang.hu@kernel.org,
 ck.hu@mediatek.com, jitao.shi@mediatek.com, xinlei.lee@mediatek.com,
 houlong.wei@mediatek.com, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-pwm@vger.kernel.org,
 kernel@collabora.com, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-2-angelogioacchino.delregno@collabora.com>
 <aaeeb18d-f8e8-d6c1-1272-e5b797554b9e@linaro.org>
 <20230414083019.cpomx37tax4ibe5u@pengutronix.de>
 <f8a4fd52-52b6-dded-c8b7-864be549e2ad@linaro.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <f8a4fd52-52b6-dded-c8b7-864be549e2ad@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_032603_567311_8C2DA4F6 
X-CRM114-Status: GOOD (  17.70  )
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

SWwgMTQvMDQvMjMgMTA6MzQsIEtyenlzenRvZiBLb3psb3dza2kgaGEgc2NyaXR0bzoKPiBPbiAx
NC8wNC8yMDIzIDEwOjMwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPj4gT24gRnJpLCBBcHIg
MTQsIDIwMjMgYXQgMTA6MjE6MDVBTSArMDIwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToK
Pj4+IE9uIDEyLzA0LzIwMjMgMTM6MjcsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIHdyb3Rl
Ogo+Pj4+IEFkZCBhIGNvbXBhdGlibGUgc3RyaW5nIGZvciBNZWRpYVRlayBIZWxpbyBYMTAgTVQ2
Nzk1J3MgZGlzcGxheSBQV00KPj4+PiBibG9jazogdGhpcyBpcyB0aGUgc2FtZSBhcyBNVDgxNzMu
Cj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5n
ZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgo+Pj4+IC0tLQo+Pj4+ICAgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9tZWRpYXRlayxwd20tZGlzcC55YW1s
IHwgNCArKystCj4+Pj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3B3bS9tZWRpYXRlayxwd20tZGlzcC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3B3bS9tZWRpYXRlayxwd20tZGlzcC55YW1sCj4+Pj4gaW5kZXggMDA4OGJj
OGU3YzU0Li4xNTNlMTQ2ZGY3ZDQgMTAwNjQ0Cj4+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3B3bS9tZWRpYXRlayxwd20tZGlzcC55YW1sCj4+Pj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9tZWRpYXRlayxwd20tZGlzcC55YW1s
Cj4+Pj4gQEAgLTIyLDcgKzIyLDkgQEAgcHJvcGVydGllczoKPj4+PiAgICAgICAgICAgICAtIG1l
ZGlhdGVrLG10ODE3My1kaXNwLXB3bQo+Pj4+ICAgICAgICAgICAgIC0gbWVkaWF0ZWssbXQ4MTgz
LWRpc3AtcHdtCj4+Pj4gICAgICAgICAtIGl0ZW1zOgo+Pj4+IC0gICAgICAgICAgLSBjb25zdDog
bWVkaWF0ZWssbXQ4MTY3LWRpc3AtcHdtCj4+Pj4gKyAgICAgICAgICAtIGVudW06Cj4+Pj4gKyAg
ICAgICAgICAgICAgLSBtZWRpYXRlayxtdDY3OTUtZGlzcC1wd20KPj4+PiArICAgICAgICAgICAg
ICAtIG1lZGlhdGVrLG10ODE2Ny1kaXNwLXB3bQo+Pj4KPj4+IFRoaXMgZG9lcyBub3QgbG9vayBj
b3JyZWN0LiBZb3UgZG8gbm90IGFkZCBjb21wYXRpYmxlLCB5b3UgcmVwbGFjZQo+Pj4gYnJlYWtp
bmcgYWxsIG10ODE2Ny1kaXNwLXB3bS4gQXQgbGVhc3QgaXQgbG9va3MgbGlrZSB0aGlzIGZyb20g
Y29udGV4dC4KPj4KPj4gSSB0aG91Z2h0IHRoZSBvbGQgc2VtYW50aWMgdG8gYmU6Cj4+Cj4+IAki
bWVkaWF0ZWssbXQ4MTY3LWRpc3AtcHdtIgo+Pgo+PiBhbmQgdGhlIG5ldwo+Pgo+PiAJIm1lZGlh
dGVrLG10Njc5NS1kaXNwLXB3bSIgb3IgIm1lZGlhdGVrLG10ODE2Ny1kaXNwLXB3bSIKPj4KPj4g
LiBXaGF0IGFtIEkgbWlzc2luZz8KPiAKPiBUaGUgbmV3IGlzIG9rIGZvciBtdDY3OTUgYnV0IGl0
IGlzIG5vdCB2YWxpZCBmb3IgbXQ4MTY3Lgo+IAoKU29ycnksIHdoeSBpcyBpdCBub3QgdmFsaWQg
Zm9yIE1UODE2Nz8KClRoaXMgaXMgY2hhbmdpbmcgdGhlIGRvYyBmcm9tOgoKT0xEOgogICAgICAg
LSBpdGVtczoKICAgICAgICAgICAtIGNvbnN0OiBtZWRpYXRlayxtdDgxNjctZGlzcC1wd20KICAg
ICAgICAgICAtIGNvbnN0OiBtZWRpYXRlayxtdDgxNzMtZGlzcC1wd20KTkVXOgoKICAgICAgIC0g
aXRlbXM6CiAgICAgICAgICAgLSBlbnVtOgogICAgICAgICAgICAgICAtIG1lZGlhdGVrLG10Njc5
NS1kaXNwLXB3bQogICAgICAgICAgICAgICAtIG1lZGlhdGVrLG10ODE2Ny1kaXNwLXB3bQogICAg
ICAgICAgIC0gY29uc3Q6IG1lZGlhdGVrLG10ODE3My1kaXNwLXB3bQoKRm9yIG1lLCB0aGF0J3Mg
dG90YWxseSB2YWxpZCwgYXMgdGhlIG9sZCBzZW1hbnRpYyB3YXM6Cgpjb21wYXRpYmxlID0gIm1l
ZGlhdGVrLG10ODE2Ny1kaXNwLXB3bSIsICJtZWRpYXRlayxtdDgxNzMtZGlzcC1wd20iOwoKLi4u
YW5kIHRoZSBuZXcgc2VtYW50aWMgaXMgLi4gdGhlIHNhbWU7IHRoaXMgY29tbWl0IG9ubHkgKmFk
ZHMqIHRoZQpwb3NzaWJpbGl0eSB0byBnZXQgYQoKY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDY3
OTUtZGlzcC1wd20iLCAibWVkaWF0ZWssbXQ4MTczLWRpc3AtcHdtIjsKCndpdGhvdXQgYnJlYWtp
bmcgYW55dGhpbmcuCgpSZWdhcmRzLApBbmdlbG8KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
