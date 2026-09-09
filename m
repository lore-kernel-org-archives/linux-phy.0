Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A1B0C79FBD
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 17:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+rtFT/WFn85B7W9vdkECRxyccmByeNqGvTi3zmVgomY=; b=qADc4lacAdJ+OK
	oyO59VH2yp0E0t1vUH4YiMNomzavhZkK3cb2oYvTM8IjhQFyA5DG2is0nMcyugA3X3mFOam12t55y
	CE+WYWO61hpcIHlUJgxxDua6yGqiuA67a8GW9DXPx2NZ56914uMDvJEeddqN15WqJyQaV+jYPMoAs
	i2WlFHkiNlLDypkb6EihYGLeCBC1o/7tgqS734P5oJxcNJLnGcRtqdUyzwnSDFUOcdamRml0NNitZ
	nhDsR0o4pYuGLzrSKiZ+QCq+ithcv26y7sMrs/n7HSFqNmlgWdBCLnQlaR17VOTdmC0owTvLFsv6l
	SQBjEPBU7BYpwv7Uo4yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4M2x-0000000CTcW-3NUO;
	Wed, 09 Sep 2026 17:25:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4M2s-0000000CTb6-16fO;
	Wed, 09 Sep 2026 17:25:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 90BCB601F0;
	Wed,  9 Sep 2026 17:25:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD6531F000FF;
	Wed,  9 Sep 2026 17:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788974713;
	bh=pGC6HZ9uyZkKy06/6NNUy5COxbIDi6w5V6zYh4L2LLQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=W24FkBl5KvkzxbniUTFT3e5LDRnH2G5w9A6DSLU8/IKFQ+F88esI3/gY6j3yyXHBL
	 Ow5Qw769UBFZHL1VJNQiWhbM1696eQYezkbX0FAXsfr58MoNhzdZd4mX11WCNid4PS
	 jzYTqa3JTTL4CA8rtD+m3Yvxj8KARVZ2wHhw75LI54IEUqtCq0V1A+eNe7DxjCfTqw
	 neS4N8WNEJePRmlY8NgblD2FuCKIq6ov8qVj4E/fpvUc6gLw7pKw9G5tYkdQBiQuH/
	 8rjDJwsDwvDF/LCbRXPHy2rClREH/ta27xO8Hj34IW50I5F2ml++zqMYSGGNLiKpV0
	 LeePmTnGMZ1PQ==
Date: Wed, 9 Sep 2026 19:25:03 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v3 11/12] phy: phy-mtk-dp: Add PHYD Lane EN register mask
 to SoC data
Message-ID: <cydeh263kd5o2un27oeplqx2phe7vzhxvk53kr7dbvtplazafv@rs37qtkhguhj>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-12-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707154245.198361-12-angelogioacchino.delregno@collabora.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKdWwgMDcsIDIwMjYgYXQgMDU6NDI6NDRQTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gSW4gcHJlcGFyYXRpb24gZm9yIGFkZGluZyBzdXBwb3J0IGZv
ciB0aGUgZURQIFBIWSBmb3VuZCBpbiBuZXdlcgo+IFNvQ3MsIHRyYW5zZmVyIHRoZSByZWdpc3Rl
ciBtYXNrIGZvciBQSFlEX1RYX0xOX0VOIHRvIFNvQyBzcGVjaWZpYwo+IGRhdGEuCj4gCj4gU2ln
bmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8u
ZGVscmVnbm9AY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5
LW10ay1kcC5jIHwgMTMgKysrKysrKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9tZWRp
YXRlay9waHktbXRrLWRwLmMgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWRwLmMKPiBp
bmRleCA0NjAzZjI4ZDE0NjYuLmY1YWFkYzVmZGM0MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Bo
eS9tZWRpYXRlay9waHktbXRrLWRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHkt
bXRrLWRwLmMKPiBAQCAtMjIwLDYgKzIyMCw3IEBAIHN0cnVjdCBtdGtfZHBfcGh5YV9pbXBfc2Vs
IHsKPiAgICogQHJlZ3NfYW5hX2xhbmU6ICBSZWdpc3RlciAobGF5b3V0KSBvZmZzZXRzIGZvciBh
bmFfbGFuCj4gICAqIEByZWdzX2RpZ19nbGI6ICAgUmVnaXN0ZXIgKGxheW91dCkgb2Zmc2V0cyBm
b3IgZGlnX2dsYgo+ICAgKiBAcmVnc19kaWdfbGFuZTogIFJlZ2lzdGVyIChsYXlvdXQpIG9mZnNl
dHMgZm9yIGRpZ19sYW4KPiArICogQG1hc2tfZGlnX3R4X2xuOiBSZWdpc3RlciBtYXNrIGZvciBQ
SFlEX1RYX0xOX0VOIGZpZWxkCj4gICAqIEB2YWxfZGlnX2JpdHJhdGU6SVAgVmVyc2lvbiBzcGVj
aWZpYyByZWdpc3RlciB2YWx1ZXMgZm9yIEJpdCBSYXRlIHNldHRpbmcKPiAgICogQGFuYV9iaWFz
X3I6ICAgICBJbnRlcm5hbCByZXNpc3RhbmNlICJSIiBTZWxlY3Rpb24gU2V0dGluZ3MgKGdsb2Jh
bCkKPiAgICogQGFuYV9ja3R4X2ltcDogICBUWCBDbG9jayBJbXBlZGFuY2UgU2VsZWN0aW9uIFNl
dHRpbmdzIChnbG9iYWwpCj4gQEAgLTIzOSw2ICsyNDAsOSBAQCBzdHJ1Y3QgbXRrX2RwX3BoeV9w
ZGF0YSB7Cj4gIAljb25zdCB1OCAqcmVnc19kaWdfZ2xiOwo+ICAJY29uc3QgdTggKnJlZ3NfZGln
X2xhbmU7Cj4gIAo+ICsJLyogUmVnaXN0ZXIgbWFza3MgKi8KCkR1cGxpY2F0ZSBjb21tZW50LiBX
aXRoIHRoaXMgcmVtb3ZlZCwKClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1h
bml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j
4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
