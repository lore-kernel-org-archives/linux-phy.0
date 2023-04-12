Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7368C7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 13:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEoR7gVuTpH1MN/LXqK5oS5Qv+lTpfL/DaRLQyo/uv8=; b=uQ2/fDw4nybC8A
	aaBg7wpsNE0y0dcnYei+SbLs5q051HMUTfauqwdXvHEGin68Qgupylrp/GSU1ITy9R/V4xhMPYkZ4
	8Qx7tImT7l6Qu18jC7mBWBSXv7eCOT05RRU1+Y+Sug8K6F24DxVBV2sGnOF8L5IHJdGXNn4+98NV9
	r0Vu8peETxA7/CNTkfQeqA06exZ4XJ1nRHjDP4STQc3f0K/xaNNZ+Whexc6OmfoDU4pJLgzJOHUVX
	WjVKcke40gj1wpt7QFWXiolwwio85jkkS+3BYiU4Lu7XfVhrp35tRW6F3/ml0pE4M651iGhL4+TNS
	ZFTgEbStlUnJEqjlRI3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmaSA-003Kma-1W;
	Wed, 12 Apr 2023 13:24:02 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmaS6-003Kkz-0w;
	Wed, 12 Apr 2023 13:23:59 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 681776603102;
	Wed, 12 Apr 2023 14:23:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681305836;
	bh=C+NuJI3gJQOvg2W2Jt6ytwX+Z1SaqR9sW/KQiI2QbiI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Mbo9WZ5dvorklyrGK5QC93j7iWln5Nb1/0dZiovAp8HYc7dmf9gr1K3T6vJUTMDWF
	 KBjARKXpwJsIkz1QJ6vDHsZNtV8kVU8Jj0BV/XrzMCX1c1zsD2DUMe4viOORDcm+52
	 D80e6axsE5IlRNwR26L7uf7pl+V6gFyzIck6f29rFY9zvzhCBp1KiKmTBlTC9kQ/9M
	 nyf4m+rOp2OB3OrxR2uLA6qWo7Ku1L2tyeEtuX5E/XpQrCrk7x6GAIxCwcOCbvoPUc
	 8UrR0BepUKP3t0nKCa3Is6oXrI8kWwrNKpeDT69WR3iL8uathgheIz0FQheBvmzc8w
	 wAERQg2FZvT8g==
Message-ID: <c66642f5-470f-9d39-19d8-e76f8b6288b3@collabora.com>
Date: Wed, 12 Apr 2023 15:23:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 22/27] arm64: dts: mediatek: mt6795: Copyright header
 additions
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
 <20230412112739.160376-23-angelogioacchino.delregno@collabora.com>
 <7466cf12-9411-cb35-8e8b-fa50f5efe492@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <7466cf12-9411-cb35-8e8b-fa50f5efe492@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_062358_458206_CE90709D 
X-CRM114-Status: GOOD (  14.24  )
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

SWwgMTIvMDQvMjMgMTQ6NDEsIE1hdHRoaWFzIEJydWdnZXIgaGEgc2NyaXR0bzoKPiAKPiAKPiBP
biAxMi8wNC8yMDIzIDEzOjI3LCBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToKPj4g
SSBoYXZlIGFkZGVkIG1vcmUgdGhhbiA4MDAgbGluZXMgdG8gdGhpcyBkZXZpY2V0cmVlOiBhZGRp
bmcgbXlzZWxmIHRvCj4+IHRoZSBjb3B5cmlnaHQgaGVhZGVyLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bj
b2xsYWJvcmEuY29tPgo+PiAtLS0KPj4gwqAgYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9t
dDY3OTUuZHRzaSB8IDMgKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykK
Pj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ2Nzk1LmR0
c2kgCj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDY3OTUuZHRzaQo+PiBpbmRl
eCAyOWNhOWE3YmYwYjMuLmE0Yzk1MGI2NTAwNiAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9tZWRpYXRlay9tdDY3OTUuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L21lZGlhdGVrL210Njc5NS5kdHNpCj4+IEBAIC0yLDYgKzIsOSBAQAo+PiDCoCAvKgo+PiDCoMKg
ICogQ29weXJpZ2h0IChjKSAyMDE1IE1lZGlhVGVrIEluYy4KPj4gwqDCoCAqIEF1dGhvcjogTWFy
cy5DIDxtYXJzLmNoZW5nQG1lZGlhdGVrLmNvbT4KPj4gKyAqCj4+ICsgKiBDb3B5cmlnaHQgKEMp
IDIwMjMgQ29sbGFib3JhIEx0ZC4KPj4gKyAqwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gCj4+IDxhbmdlbG9naW9hY2NoaW5v
LmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+Cj4gCj4gSW5kZW50YXRpb24/Cj4gCj4gQlRXIGZyb20g
d2hhdCBJIHVuZGVyc3RhbmQgdGhlIGNvcHlyaWdodCB3aWxsIGJlIGJ5IHlvdXIgZW1wbG95ZXIs
IENvbGxhYm9yYSBub3QgCj4geW91LCBidXQgSSdtIG5vdCBhbiBsZWdhbCBleHBlcnQgOikKPiAK
ClRoZSBjb3B5cmlnaHQgKmlzKiBieSBteSBlbXBsb3llciAuLi4gYnV0IGF0IHRoZSBzYW1lIHRp
bWUgSSdtIGFkZGluZyBteSBuYW1lLApiZWNhdXNlIGl0J3MgbWUgcGVyZm9ybWluZyB0aGUgd29y
ay4KCkkgZGlkbid0IHdyaXRlIChjKSBteW5hbWUsIGJ1dCAoYykgZW1wbG95ZXIsIG15bmFtZSAt
IHRoYXQncyBvayA6LSkKCk9yIHdhcyB0aGUgY29tbWVudCBhYm91dCB0aGUgY29tbWl0IGRlc2Ny
aXB0aW9uPyBTaG91bGQgdGhhdCBiZSByZXdvcmRlZD8KCkNoZWVycywKQW5nZWxvCgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
