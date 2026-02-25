Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B997FD3756
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 12:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UKcgTKz40VCeBPxrStfcJZtxZiOUq1ew+kIdLrQ5og=; b=hYFUW4w3EZAPo/
	Y9NjzeP8ff2FhOhafszLczTRfDA+ZVH5H0oXMCxtxzHb01mlpMfW/0Gdc9fLs5qKDivJ0CAeBkcu7
	IYZqV8jl+tUUWIRXJ5YQq9GnUnaB6ZFodLr8yrJtDyhDYMK2AuDEfo2FZb7mmW0ksowMoOUHIgPiP
	QFyJINR2Oiq6EFk3LUxN14TupACcXcg705q9JE3d40H/BAn6vRoAVjIM2gFX+cDL6LWucDxYWF1cg
	zYSlBiSuxdFSPNaRmHac+iE/+ubZz9Rhcavy0D5l5g2XtLaQk3t7/u5qYCM0KfaV1A2+DB4qq9bGP
	VBN2VYidm3pkbNN6/zfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvEFd-000000041Ku-3X27;
	Wed, 25 Feb 2026 12:44:25 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvEFa-000000041Jx-1VP8;
	Wed, 25 Feb 2026 12:44:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772023459;
	bh=wJo7H+wg7oWjDPXBu3O5+/hGWpnIf4Wz8/+O3JhSsoY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ROxU34RDm7sR9Vf1z2KVIJOAc33DQRkColUGHO9bPXNdfSXDKCWB+kgKzU/2LahbC
	 IN2jKNzQGcZbLJ9PVmjr3InHvPCLUq/KKnrb8n5HYQg5Lh5ftnWAzx8chNslc9RTVq
	 NfzXDc5kK9IQcM/6uZoFCAQoTrm9pGb9fLjUgJ8kRqEL6oY5uDdn+XkRWCqK7eyZk6
	 eO4ja1rhXmf0aTJhPhhqnL3lckGI/QJKVaTWxkIXtFVzIVhdEgGWpqM9a6bQGuxz/F
	 ghh74A4oAgJgKSFzLwI/sXuUDRZkWBTEhNID/9IlYsvGoFNAeXsmUakRKmQeXcQJBb
	 0tJf+Pq55HDKA==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AEEBE17E012E;
	Wed, 25 Feb 2026 13:44:18 +0100 (CET)
Message-ID: <821f0078-9d4d-4548-ae6f-5f43cf5bcd6d@collabora.com>
Date: Wed, 25 Feb 2026 13:44:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 22/23] scsi: ufs: mediatek: Remove undocumented
 "clk-scale-up-vcore-min"
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
 <20260216-mt8196-ufs-v7-22-b5f2907c6da7@collabora.com>
 <e452951498ae82433337ca428bd49c7358194dd8.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <e452951498ae82433337ca428bd49c7358194dd8.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_044422_595476_DAB89A6D 
X-CRM114-Status: GOOD (  13.62  )
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

SWwgMjUvMDIvMjYgMTE6MzcsIFBldGVyIFdhbmcgKOeOi+S/oeWPiykgaGEgc2NyaXR0bzoKPiBP
biBNb24sIDIwMjYtMDItMTYgYXQgMTQ6MzcgKzAxMDAsIE5pY29sYXMgRnJhdHRhcm9saSB3cm90
ZToKPj4gVGhlIE1lZGlhVGVrIFVGUyBkcml2ZXIgY29udGFpbnMgc3VwcG9ydCBmb3IgYW4gdW5k
b2N1bWVudGVkLAo+PiBub24tdmVuZG9yLXByZWZpeGVkIHUzMiBwcm9wZXJ0eSBuYW1lZCAiY2xr
LXNjYWxlLXVwLXZjb3JlLW1pbiIuCj4+Cj4+IFNpbmNlIGl0IGlzIG5vdCBwYXJ0IG9mIGFueSBi
aW5kaW5nLCBhbmQgd291bGQgbm90IHBhc3MgYSBiaW5kaW5ncwo+PiByZXZpZXcgaW4gaXRzIGN1
cnJlbnQgZm9ybSwgcmVtb3ZlIGl0Lgo+Pgo+PiBUbyByZXR1cm4gdGhpcyBmdW5jdGlvbmFsaXR5
LCBpdCBuZWVkcyB0byBiZSByZXN1Ym1pdHRlZCBpbiBhIHNlcmllcwo+PiB0aGF0IGFsc28gaW50
cm9kdWNlcyBpdCB0byB0aGUgYmluZGluZywgYW5kIGp1c3RpZmllcyB3aGF0IGl0IGlzIHVzZWQK
Pj4gZm9yLiBDb21wYXRpYmlsaXR5IHdpdGggZG93bnN0cmVhbSBkZXZpY2UgdHJlZXMgaXMgbm90
IGEgdmFsaWQKPj4ganVzdGlmaWNhdGlvbiBmb3IgaXRzIGV4aXN0ZW5jZS4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3Jh
LmNvbT4KPiAKPiBDYW4gTVQ4MTk2IHdvcmsgb24gR2VhciA1IHdpdGhvdXQgcmFpc2luZyBWY29y
ZT8KPiBJJ20gYWZyYWlkIGl0IG1pZ2h0IGNhdXNlIHByb2JsZW1zLgo+IE1heWJlIHdlIGNhbiBh
ZGQgdGhlIGNvcnJlY3QgYmluZGluZyBmb3IgTVQ4MTk2Pwo+IAoKTWlnaHQgY2F1c2UgcHJvYmxl
bXMgYXMgbXVjaCBhcyBsaXRlcmFsbHkgb24gZXZlcnkgb3RoZXIgTWVkaWFUZWsgU29DIHdpdGgg
dGhlCmN1cnJlbnQgdmVyc2lvbiBvZiB0aGlzIGRyaXZlci4KCkJlc2lkZXMsIHRoZSByaWdodCB3
YXkgb2YgZGVjbGFyaW5nIGZyZXE8LT52b2x0YWdlIHJlbGF0aW9uc2hpcCBpcyB3aXRoIE9QUAp0
YWJsZXMsIG5vdCB3aXRoIGN1c3RvbSBwcm9wZXJ0aWVzIGludmVudGVkIG91dCBvZiB0aGUgYmx1
ZSAtIGFuZCBzdXBwb3J0IGZvciBPUFBzCmJlaW5nIGdlbmVyaWMgaXMgYWxyZWFkeSBzdXBwb3J0
ZWQgaW4gVUZTSENJLCBzby4uLiBtb3JhbCBvZiB0aGUgc3Rvcnk6CgpBcyBsb25nIGFzIHRoZSBw
bGF0Zm9ybSBpcyBjb3JyZWN0bHkgY29uZmlndXJlZCBpbiB0aGUgZGV2aWNldHJlZSwgaXQncyBn
b2luZyB0bwp3b3JrIHdpdGhvdXQgYW55IGtpbmQgb2YgaXNzdWVzLgoKUmVnYXJkcywKQW5nZWxv
Cgo+IFRoYW5rcwo+IFBldGVyCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
