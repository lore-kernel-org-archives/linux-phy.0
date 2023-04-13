Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEC75C77B61
	for <linux-phy@archiver.kernel.org>; Thu, 13 Apr 2023 09:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jaXdPP7KyWsZ0EEpG6Lm27dwn9IgXxrbSuY07e4CFro=; b=KdYxoY/rm5MHHq
	BTWKFCjKEGWIvvA1xHVz+KNWWJIRr9FKJxFV6+RMVgA/inFu8WwEhLW/ZSPc+jLv1QHamCh5mAYUC
	or8cdJoM1uOSMuKIhTwTKsG0xOoIoF/sZ4ururtomLuOsWi4nYr5MwRPb82XQHGedDWunVSd4Ofow
	0hzE9m7evqkaC2OPZ8HokZueeYeUAQys8K6CkWGMWx9sq0+TzIcOK5DgvOKgoZjnN4VHSDmazfH65
	w9MBL/de7yF1llRSqz5WiE4jkGYwAMJlBc/cn5NL5IgPeKrNKETRqcrTxeuL3u9sFqjF4IkICGGG4
	0pHktebDrgqRSsHEK0MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmtGJ-005cxq-1h;
	Thu, 13 Apr 2023 09:29:03 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmtGB-005csn-0b;
	Thu, 13 Apr 2023 09:28:56 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 461686603207;
	Thu, 13 Apr 2023 10:28:52 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681378133;
	bh=XjK0zXGcRUwWwMF6tZnTtwrjb64IJRzNjt7p/8KBhjs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=d6UgCefhED/N6R8YjSiNAxuQU77pHTuH671k0sortzz+h8HWsWRqZ+jYQSW7fvRuT
	 eyERdIo/mVGeDewj1B8XzdivfyeIBoj4BbuwUO+g6g4nueknODvGQJMPlI4yxePiu7
	 NuOwzs1nxxvQLZoT6Gz6QqlumXZ/LPPtoRalL/PNZBRzWi21FDr1ERMSzf5/YdQ0ao
	 SuCRTmMDLW4w6pVFA5oYs7uzGfTMJDl8OlQ+a74HPRNcFs/xWKKxq7XUUUEEK9E3RM
	 B6DPGx+OyIBsldxVd+4s/2jbWuEmIGhyaXfSXOHhbMSK51XO+1b02CwJ3aQWBP1d/D
	 z/bAWlEu4eshg==
Message-ID: <4a016428-be44-27e3-5bc2-dc517922fa15@collabora.com>
Date: Thu, 13 Apr 2023 11:28:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 01/27] dt-bindings: pwm: Add compatible for MediaTek
 MT6795
Content-Language: en-US
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>
Cc: p.zabel@pengutronix.de, linux-pwm@vger.kernel.org, kernel@collabora.com,
 chunkuang.hu@kernel.org, linux-phy@lists.infradead.org, ck.hu@mediatek.com,
 jitao.shi@mediatek.com, houlong.wei@mediatek.com,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, vkoul@kernel.org,
 chunfeng.yun@mediatek.com, daniel@ffwll.ch, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, xinlei.lee@mediatek.com,
 airlied@gmail.com, u.kleine-koenig@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org,
 kishon@kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 thierry.reding@gmail.com, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, jassisinghbrar@gmail.com
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-2-angelogioacchino.delregno@collabora.com>
 <168133318912.3190428.16120880490622098945.robh@kernel.org>
 <5c0bc1f2-5917-ab84-8b0b-f2adc48f8be7@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <5c0bc1f2-5917-ab84-8b0b-f2adc48f8be7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_022855_367986_AC42F1E8 
X-CRM114-Status: GOOD (  13.66  )
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

SWwgMTMvMDQvMjMgMTA6NTIsIE1hdHRoaWFzIEJydWdnZXIgaGEgc2NyaXR0bzoKPiAKPiAKPiBP
biAxMi8wNC8yMDIzIDIzOjAzLCBSb2IgSGVycmluZyB3cm90ZToKPj4KPj4gT24gV2VkLCAxMiBB
cHIgMjAyMyAxMzoyNzoxMyArMDIwMCwgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6
Cj4+PiBBZGQgYSBjb21wYXRpYmxlIHN0cmluZyBmb3IgTWVkaWFUZWsgSGVsaW8gWDEwIE1UNjc5
NSdzIGRpc3BsYXkgUFdNCj4+PiBibG9jazogdGhpcyBpcyB0aGUgc2FtZSBhcyBNVDgxNzMuCj4+
Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dp
b2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4gwqAgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9tZWRpYXRlayxwd20tZGlzcC55YW1sIHwgNCAr
KystCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4+Pgo+Pgo+PiBSdW5uaW5nICdtYWtlIGR0YnNfY2hlY2snIHdpdGggdGhlIHNjaGVtYSBpbiB0
aGlzIHBhdGNoIGdpdmVzIHRoZQo+PiBmb2xsb3dpbmcgd2FybmluZ3MuIENvbnNpZGVyIGlmIHRo
ZXkgYXJlIGV4cGVjdGVkIG9yIHRoZSBzY2hlbWEgaXMKPj4gaW5jb3JyZWN0LiBUaGVzZSBtYXkg
bm90IGJlIG5ldyB3YXJuaW5ncy4KPj4KPiAKPiBUaGVzZSBhcmUgbm90IG5ldyB3YXJuaW5ncy4g
SSB0aGluayB3ZSBzaG91bGQgYWRkcmVzcyB0aGVtIGluIGEgZGlmZmVyZW50IHBhdGNoLiBJbiAK
PiBteSBvcGluaW9uIGl0IHNob3VsZG4ndCBibG9jayB0aGlzIHBhdGNoLiBJbiB0aGUgZW5kIGl0
IG9ubHkgYWRkIGFzIGNvbXBhdGlibGUgaGVyZS4KPiAKCkkgYWdyZWUuIFRoZXNlIHdhcm5pbmdz
IHNob3VsZCBub3QgYmxvY2sgdGhpcyBwYXRjaCwgYXMgdGhleSdyZSB0b3RhbGx5IHVucmVsYXRl
ZAp0byBpdC4KClJlZ2FyZHMsCkFuZ2VsbwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
