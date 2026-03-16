Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D762EF46436
	for <linux-phy@archiver.kernel.org>; Mon, 16 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixtBXdX05dtCqp5Rv8nkreTJ+g6cwgh5X7r6ft2RAFg=; b=z7Mv7GHPMRd6C3
	cVaC2M9xuR7X3BuJFh4y/Rg+H+od1L7DvNKXUmCWR1Sh95mN/ZPg1hYKIQn7/3v5b2nVksV7iEsWg
	D5a5KkqW6ySU3lmDyvnJ4o+1mIdByYcCkMnlHJdPC7GI6mQoREfwkM4ws6tNm2We0w7adU4zuLxso
	sqFsL7AIzFXoXOk599/1CS/HA46hit6gP7CS3qS/w2fElcFUie5Cwq6rFx6MzzK9+4Ksp7C3sdQvD
	k0lOQJlpfWrdeN3CkgnYgdCouRetED0kj2aVSzBHx9iDSKcIogUMyPDLlYWJL22p2mgfdzB4Pg9RT
	QJBV5+mgyn78ArbNvwug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w24Ld-00000003e7t-21So;
	Mon, 16 Mar 2026 09:34:53 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w24LZ-00000003e73-2Fan;
	Mon, 16 Mar 2026 09:34:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773653685;
	bh=huznZbedhmfKAQ7o1PThsloEGLLlgDE3FaFdxbHkFzM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KVh9wOn6flNT06ymoubOrhTAc4HQuH2n0xoQOqvRKKGz3l4L4JyXkaQyt/I5gJGHy
	 q1gH4+D44ARcUdx6BB4s2Ls6kxck50Z4lBz9HtwSXt7zl71FDLdy1iLtPgAOjnt8Yw
	 md1peYXCFL5bjCSoTdqA8Ije8wf5cFEZtFrXLqht0jfh0bJyRe/dTl/x77D/M0u1hM
	 qAWf/3Ia48qQkh8e5rxXn1+bcrvjsGDLvM71CwedhfosOI4DErzMw0JRln+49FSkVb
	 gNqx+5UnbTE01bR3Y6zenuTDqRj6Y601tfI731khfggd6ltvBTxXfqMGuzhOPg/1PW
	 4Jkb8AyypdR+w==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1986E17E0EF1;
	Mon, 16 Mar 2026 10:34:44 +0100 (CET)
Message-ID: <538cb0a5-046d-4ec1-bd4c-d5a01dae7b06@collabora.com>
Date: Mon, 16 Mar 2026 10:34:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 03/23] dt-bindings: ufs: mediatek,ufs: Add mt8196
 variant
To: Rob Herring <robh@kernel.org>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Peter Wang <peter.wang@mediatek.com>, Stanley Jhu <chu.stanley@gmail.com>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Chaotian Jing <Chaotian.Jing@mediatek.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 kernel@collabora.com, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>
References: <20260306-mt8196-ufs-v9-0-55b073f7a830@collabora.com>
 <4089450.ElGaqSPkdT@workhorse> <yq14imrwp3z.fsf@ca-mkp.ca.oracle.com>
 <5973984.DvuYhMxLoT@workhorse>
 <CAL_JsqKGxrNuaTb9+n3ZYjAdY=UHC6z-neXK-aieTXeROCN5og@mail.gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <CAL_JsqKGxrNuaTb9+n3ZYjAdY=UHC6z-neXK-aieTXeROCN5og@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_023449_807305_FBC7243A 
X-CRM114-Status: GOOD (  17.19  )
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

SWwgMTAvMDMvMjYgMTk6MjEsIFJvYiBIZXJyaW5nIGhhIHNjcml0dG86Cj4gT24gTW9uLCBNYXIg
OSwgMjAyNiBhdCA1OjA04oCvQU0gTmljb2xhcyBGcmF0dGFyb2xpCj4gPG5pY29sYXMuZnJhdHRh
cm9saUBjb2xsYWJvcmEuY29tPiB3cm90ZToKPj4KPj4gT24gU2F0dXJkYXksIDcgTWFyY2ggMjAy
NiAxOTowMToxNyBDZW50cmFsIEV1cm9wZWFuIFN0YW5kYXJkIFRpbWUgTWFydGluIEsuIFBldGVy
c2VuIHdyb3RlOgo+Pj4KPj4+IE5pY29sYXMsCj4+Pgo+Pj4+PiAidWZzIiBpcyByZWR1bmRhbnQg
YXMgYWxsIHRoZSBjbG9ja3MgYXJlIGZvciBVRlMuIFNhbWUgY29tbWVudCBvbiBwcmlvcgo+Pj4+
PiBwYXRjaC4KPj4+Pgo+Pj4+IElzIHRoaXMgbmFtaW5nIGEgYmlnIGVub3VnaCBjb25jZXJuIHRv
IGJsb2NrIHRoaXMgc2VyaWVzIHdpdGggdHdvCj4+Pj4gZXhwbGljaXQgYWNrcyBvbiB0aGlzIHBh
dGNoIHRoYXQgZml4ZXMgYSB3aG9sbHkgYnJva2VuIGFuZCB1c2VsZXNzCj4+Pj4gYmluZGluZz8K
Pj4+Cj4+PiBJdCBpcyBpZiBpdCBjb21lcyBmcm9tIG9uZSBvZiB0aGUgRFQgbWFpbnRhaW5lcnMu
Cj4+Pgo+Pj4+IEkgYW0gdHJ5aW5nIHRvIHB1dCBvdXQgdGhpcyBkdW1wc3RlciBmaXJlIG9mIGEg
ZG93bnN0cmVhbSB0dXJkIHRoYXQKPj4+PiBtYWRlIGl0cyB3YXkgaW50byBtYWlubGluZSBhcyB0
aGUgcmV2aWV3IHByb2Nlc3MgaGFzIGJlZW4gY29tcGxldGVseQo+Pj4+IHN1YnZlcnRlZCwgYW5k
IGlzIG9ubHkgZ2V0dGluZyB3b3JzZSB3aXRoIGVhY2ggcGFzc2luZyBtb250aAo+Pj4KPj4+IFRo
aXMgaGFzIHRvIHN0b3AuIFBsZWFzZSByZWFkIERvY3VtZW50YXRpb24vcHJvY2Vzcy9jb2RlLW9m
LWNvbmR1Y3QucnN0Lgo+IAo+IEkgaGF2ZSBsaXR0bGUgZG91YnQgdGhhdCB0aGF0IGlzIGFuIGFj
Y3VyYXRlIGRlc2NyaXB0aW9uIG9mCj4gZG93bnN0cmVhbS4gQW5kIGlmIHByb3BlcnRpZXMgYXJl
IGdldHRpbmcgYWRkZWQgd2l0aG91dCBiaW5kaW5ncywgdGhlbgo+IHRoYXQgaXMgY2VydGFpbmx5
IGEgcHJvYmxlbSB0aGF0IHNob3VsZCBiZSBjb21wbGFpbmVkIGFib3V0Lgo+IAo+Pj4KPj4+Cj4+
Cj4+IEkgYXBvbG9naXNlIGZvciBteSB0b25lLCBpdCdzIG15IGZydXN0cmF0aW9uIGdldHRpbmcg
dGhlIGJldHRlciBvZiBtZS4KPj4KPj4gSSdsbCBiZSBoYW5kaW5nIG9mZiB0aGlzIHNlcmllcyB0
byBzb21lb25lIGVsc2UsIHNvIHlvdSB3b24ndCBoYXZlIHRvCj4+IGRlYWwgd2l0aCBtZSBhbnlt
b3JlLgo+Pgo+PiBJIGRvIGFzayBob3dldmVyIHRoYXQgeW91IGRvbid0IGFwcGx5IHBhdGNoZXMg
ZnJvbSBNZWRpYVRlayBibGluZGx5Owo+PiBpZiB0aGVyZSdzIGNvZGUgdG8gcmVhZCBhbiBPRiBw
cm9wZXJ0eSwgYW5kIHRoYXQgT0YgcHJvcGVydHkgaXMgbm90Cj4+IGluIHRoZSBiaW5kaW5nLCB0
aGVuIHRoZSBwYXRjaCBzaG91bGQgYmUgcmVqZWN0ZWQsIGV2ZW4gaWYgdGhlcmUncyBhbgo+PiBB
Y2sgZnJvbSB0aGUgTWVkaWFUZWsgbWFpbnRhaW5lci4KPiAKPiBUaGVyZSdzIGZ1bmN0aW9uYWxp
dHkgdG8gZmluZCB1bmRvY3VtZW50ZWQgY29tcGF0aWJsZXMgaW4ga2VybmVsIGNvZGUKPiAobWFr
ZSBkdF9jb21wYXRpYmxlX2NoZWNrKSwgYnV0IG5vdCBwcm9wZXJ0aWVzLiBTb3VuZHMgbGlrZSBJ
IG5lZWQgdG8KPiBhZGQgdGhhdC4KClJvYjogeWVzIHBsZWFzZSwgdGhhdCB3b3VsZCBoZWxwIGEg
bG90IGluIGdlbmVyYWwsIG5vdCBqdXN0IHdpdGggdGhpcyBVRlMgZHJpdmVyLgoKQ2hlZXJzLApB
bmdlbG8KCj4gCj4gUm9iCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
