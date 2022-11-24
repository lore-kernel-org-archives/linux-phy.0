Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F3C7C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 24 Nov 2022 17:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqoKCWMEfIBmprL6o646J5o5j3hhkZHGDavdiki8TMQ=; b=tXQK01ZAlvzYoM
	IUVN1d+lbEGn0U5aprvOK7yCgp2QPa9UtyvI8hu9A6ugjcruMa6gPPCs27PI47Hqks6i2Wpiov0XR
	jrFZRQn1t+DwFPbIcf90rAKa/T1TLB8n2R6iBdhrDz1NWNNCyeBEwjDOrBDMhD944YxALhSQT9G4r
	NdyPAUcaeajileZORqyPJ/z511KiEOAGupalVWXvBE8XUomewCNOT730MVV/Rhf1ngslNzmAvgFG7
	jXkqZLSHk82v5QxPjc64fQ5JVZykI+sf6p8PY61KwEfnqtPiYIf/NwApXjsCyOuOZLucw8fpBmveU
	eteKidTIJx+QrhEwTfeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyGMB-00AdL4-0B; Thu, 24 Nov 2022 17:49:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyGLw-00AdCW-Qp; Thu, 24 Nov 2022 17:49:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5154762100;
	Thu, 24 Nov 2022 17:49:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00263C433D6;
	Thu, 24 Nov 2022 17:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669312174;
	bh=+FlFXwA4BT9cnPk5H4M42/t77aWGGWs13a3QcCxdhAU=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=HX106bVOpI00gL+UDHyqzoeKh/YIHr6tVqdWw5kdo+sapaeEkwpEh+QMvICfLeMw7
	 AjrjYX5g9YY+sSrOcHQV64rrYcBLRagbdwHU+euW+vq+z9CkuDj/qdGS8sl2pVlG8p
	 s7gylWCf/RnKo02TbtUWAqouum4KKYUGjZ4vtbpSK9BlPfT1tjCu/1iPnqzk+axtpa
	 +B80e6kO3v6bn8n4/SqzYyTsOBPFfeuOFG4dD35Svo5oZUEF/Q3uCTfYsoGx2x2NNQ
	 n/dLetgLsW4SGHKVj+6adqiuk+eVUmyciskZjnIrOhUUgxW2CwaBzXvPXfTckVOnvB
	 1ZSrNdJ0jVIrg==
Date: Thu, 24 Nov 2022 23:19:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Icenowy Zheng <uwu@icenowy.me>, soc@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 03/11] phy: sun4i-usb: add support for the USB PHY on
 F1C100s SoC
Message-ID: <Y3+uqtNe/tafRwp2@matsya>
References: <20221106154826.6687-1-andre.przywara@arm.com>
 <20221106154826.6687-4-andre.przywara@arm.com>
 <Y2ypy0CM8rJGu2g4@matsya>
 <4438485.LvFx2qVVIh@jernej-laptop>
 <52920a00-8e29-f7f4-0cbd-ceb638ded970@linaro.org>
 <20221115104426.20728ba5@donnerap.cambridge.arm.com>
 <4516dcfb-b928-d454-18a6-bd725f39cc24@linaro.org>
 <20221115161917.328ec91a@donnerap.cambridge.arm.com>
 <e861e62f-4148-b867-0155-e71b1cee0b81@linaro.org>
 <20221115175708.3e69dcd8@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221115175708.3e69dcd8@donnerap.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_094936_967134_162AB4D6 
X-CRM114-Status: GOOD (  46.34  )
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

T24gMTUtMTEtMjIsIDE3OjU3LCBBbmRyZSBQcnp5d2FyYSB3cm90ZToKPiBPbiBUdWUsIDE1IE5v
diAyMDIyIDE3OjI5OjA5ICswMTAwCj4gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtv
emxvd3NraUBsaW5hcm8ub3JnPiB3cm90ZToKPiAKPiBIaSwKPiAKPiA+IE9uIDE1LzExLzIwMjIg
MTc6MTksIEFuZHJlIFByenl3YXJhIHdyb3RlOgo+ID4gPiBPbiBUdWUsIDE1IE5vdiAyMDIyIDE2
OjAwOjU0ICswMTAwCj4gPiA+IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dz
a2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiA+IAo+ID4gPiBIaSwKPiA+ID4gICAKPiA+ID4+IE9u
IDE1LzExLzIwMjIgMTE6NDQsIEFuZHJlIFByenl3YXJhIHdyb3RlOiAgCj4gPiA+Pj4gT24gVHVl
LCAxNSBOb3YgMjAyMiAxMTowMzoyNCArMDEwMAo+ID4gPj4+IEtyenlzenRvZiBLb3psb3dza2kg
PGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiA+Pj4KPiA+ID4+PiBI
aSwKPiA+ID4+PiAgICAgCj4gPiA+Pj4+IE9uIDE1LzExLzIwMjIgMDc6MDEsIEplcm5laiDFoGty
YWJlYyB3cm90ZTogICAgCj4gPiA+Pj4+PiBEbmUgxI1ldHJ0ZWssIDEwLiBub3ZlbWJlciAyMDIy
IG9iIDA4OjM1OjM5IENFVCBqZSBWaW5vZCBLb3VsIG5hcGlzYWwoYSk6ICAgICAgCj4gPiA+Pj4+
Pj4gT24gMDYtMTEtMjIsIDE1OjQ4LCBBbmRyZSBQcnp5d2FyYSB3cm90ZTogICAgICAKPiA+ID4+
Pj4+Pj4gRnJvbTogSWNlbm93eSBaaGVuZyA8dXd1QGljZW5vd3kubWU+Cj4gPiA+Pj4+Pj4+Cj4g
PiA+Pj4+Pj4+IFRoZSBGMUMxMDBzIFNvQyBoYXMgb25lIFVTQiBPVEcgcG9ydCBjb25uZWN0ZWQg
dG8gYSBNVVNCIGNvbnRyb2xsZXIuCj4gPiA+Pj4+Pj4+Cj4gPiA+Pj4+Pj4+IEFkZCBzdXBwb3J0
IGZvciBpdHMgVVNCIFBIWS4gICAgICAKPiA+ID4+Pj4+Pgo+ID4gPj4+Pj4+IFRoaXMgZG9lcyBu
b3QgYXBwbHkgZm9yIG1lLCBwbGVhc2UgcmViYXNlIGFuZCByZXNlbmQKPiA+ID4+Pj4+Pgo+ID4g
Pj4+Pj4+IEFsc28sIGNvbnNpZGVyIHNwbGl0dGluZyBwaHkgcGF0Y2hlcyBmcm9tIHRoaXMuIEkg
ZG9udCB0aGluayB0aGVyZSBpcwo+ID4gPj4+Pj4+IGFueSBkZXBlbmRlbmN5ICAgICAgCj4gPiA+
Pj4+Pgo+ID4gPj4+Pj4gRFQgcGF0Y2hlcyBpbiB0aGlzIHNlcmllcyBkZXBlbmQgb24gZnVuY3Rp
b25hbGl0eSBhZGRlZCBoZXJlLgo+ID4gPj4+Pj4gICAgICAgCj4gPiA+Pj4+Cj4gPiA+Pj4+IERU
UyBhbHdheXMgZ29lcyBzZXBhcmF0ZWx5IGZyb20gZHJpdmVyIGNoYW5nZXMgYmVjYXVzZSBpdCBp
cyBhIGhhcmR3YXJlCj4gPiA+Pj4+IGRlc2NyaXB0aW9uLiBEZXBlbmRpbmcgb24gZHJpdmVyIG1l
YW5zIHlvdSBoYXZlIHBvdGVudGlhbCBBQkkgYnJlYWssIHNvCj4gPiA+Pj4+IGl0IGlzIGFscmVh
ZHkgYSB3YXJuaW5nIHNpZ24uICAgIAo+ID4gPj4+Cj4gPiA+Pj4gV2UgdW5kZXJzdGFuZCB0aGF0
IDstKQo+ID4gPj4+IFdoYXQgSmVybmVqIG1lYW50IHdhcyB0aGF0IHRoZSBEVFMgcGF0Y2hlcyBh
dCB0aGUgZW5kIGRlcGVuZCBvbiBwYXRjaAo+ID4gPj4+IDAxLzEwLCB3aGljaCBhZGRzIHRvIHRo
ZSBQSFkgYmluZGluZyBkb2MuIEkgYW0gbm90IHN1cmUgaWYgVmlub2Qncwo+ID4gPj4+IHN1Z2dl
c3Rpb24gd2FzIGFib3V0IHNwbGl0dGluZyBvZmYgMDEvMTAsIDAzLzEwLCBhbmQgMTAvMTAsIG9y
IGp1c3QgdGhlCj4gPiA+Pj4gdHdvIGxhdHRlciB3aGljaCB0b3VjaCB0aGUgZHJpdmVyLgo+ID4g
Pj4+Cj4gPiA+Pj4gSSBjYW4gc3BsaXQgb2ZmIDAzLzEwIGFuZCAxMC8xMCwgcmViYXNlZCBvbiB0
b3Agb2YgbGludXgtcGh5LmdpdC9uZXh0LCBhbmQKPiA+ID4+PiBzZW5kIHRoYXQgdG8gVmlub2Qu
Cj4gPiA+Pj4gVGhlbiBJIHdvdWxkIGtlZXAgMDEvMTAgaW4gYSByZXNwaW4gb2YgdGhpcyBzZXJp
ZXMgaGVyZSwgdG8gc2F0aXNmeSB0aGUKPiA+ID4+PiBkZXBlbmRlbmN5IG9mIHRoZSBsYXRlciBE
VFMgcGF0Y2hlcywgYW5kIFZpbm9kIGNhbiBwaWNrIHRoYXQgb25lIHBhdGNoIGZyb20KPiA+ID4+
PiB0aGVyZT8gICAgCj4gPiA+Pgo+ID4gPj4gVGhlcmUgaXMgbm8gaGFyZCBkZXBlbmRlbmN5IG9m
IERUUyBvbiBiaW5kaW5ncy4gWW91IGNhbiBzcGxpdCB0aGVzZSAoYW5kCj4gPiA+PiBzb21lIG1h
aW50YWluZXJzIHByZWZlciB0aGF0IHdheSkgYW5kIGluIERUUyBwYXRjaGVzIGp1c3QgcHJvdmlk
ZSB0aGUKPiA+ID4+IGxpbmsgdG8gdGhlIGJpbmRpbmdzLCBzYXlpbmcgaXQgaXMgaW4gcHJvZ3Jl
c3MuICAKPiA+ID4gCj4gPiA+IEJ1dCB0aGF0IGJyZWFrcyAibWFrZSBkdGJzX2NoZWNrIiwgZG9l
c24ndCBpdD8gIAo+ID4gCj4gPiBUaGUgY2hlY2sgd2lsbCBiZSBicm9rZW4gYW55d2F5IGJlY2F1
c2UgYmluZGluZyBnb2VzIHZpYSBkcml2ZXIKPiA+IHN1YnN5c3RlbSBhbmQgRFRTIGdvZXMgdmlh
IGFybS1zb2MuCj4gPiAKPiA+IElmIGJvdGggbWFrZSB0byB0aGUgbGludXgtbmV4dCBhbmQgbmV4
dCByZWxlYXNlLCB0aGVuIGl0J3Mgbm90IGEgcHJvYmxlbS4KPiA+IAo+ID4gPiAKPiA+ID4gSSB3
b3VsZCB0aGluayB0aGF0IHRoZSBEVCBiaXRzIC0gYmluZGluZ3MgZmlyc3QsIHRoZW4gRFRTIGZp
bGVzIHVzaW5nIGl0IC0KPiA+ID4gc2hvdWxkIGJlIGJ1bmRsZWQuIFRoaXMgaXMgaG93IEkgaW1h
Z2luZSB0aGUgZnV0dXJlKFRNKSwgd2hlcmUgRFRzIGFuZAo+ID4gPiBiaW5kaW5ncyBsaXZlIG91
dHNpZGUgdGhlIGtlcm5lbCByZXBvLiAgCj4gPiAKPiA+IFllcywgdGhhdCdzIHByZWZlcnJlZC4g
VGhlcmVmb3JlIGluIERUUyBwYXRjaCB5b3Ugc2F5IHRoZSBiaW5kaW5nIGlzIG5vdAo+ID4gbWVy
Z2VkIGFuZCBpdCBpcyBoZXJlIC0gbG9yZSBsaW5rLgo+ID4gCj4gPiA+ICAgCj4gPiA+PiBUaGUg
YmluZGluZ3Mgc2hvdWxkIGJlIGhvd2V2ZXIga2VwdCB3aXRoIGRyaXZlciBjaGFuZ2VzIGFzIGl0
IGdvZXMgdGhlCj4gPiA+PiBzYW1lIHdheS4gIAo+ID4gPiAKPiA+ID4gSSB1bmRlcnN0YW5kIHRo
YXQgdGhlIGJpbmRpbmdzIGRlc2NyaWJlIHRoZSBjb250cmFjdCB0aGUgZHJpdmVyIGFjdHMgb24s
Cj4gPiA+IGJ1dCBnb2luZyBmb3J3YXJkIEkgdGhpbmsgZHJpdmVyIGNoYW5nZXMgd291bGQgbmVl
ZCB0byBjb21lIGxhdGVyLCB0aGVuCj4gPiA+IChzaW5jZSB0aGV5IHdpbGwgbGl2ZSBpbiBhIHNl
cGFyYXRlIHJlcG8gYXQgc29tZSBkYXkpPwo+ID4gPiBNYXliZSBwb2ludGluZyB0byB0aGUgYmlu
ZGluZyBjaGFuZ2VzIGluIHByb2dyZXNzPyAgCj4gPiAKPiA+IExhdGVyIGFzIG9uZSBjb21taXQg
bGF0ZXIgLSB5ZXMuIExhdGVyIGFzIG90aGVyIG9wdGlvbiAtIG5vdCByZWFsbHksIHdoeT8KPiA+
IAo+ID4gPiBTbyB3aXRoIGEgc2VwYXJhdGUgcmVwbyB3ZSB3b3VsZCBhY3R1YWxseSBuZWVkIHRv
IHVwc3RyZWFtIGp1c3QgdGhlCj4gPiA+IGJpbmRpbmdzIGZpcnN0LCB0aGVuIGNvdWxkIHB1c2gg
ZHJpdmVyIGNoYW5nZXMgYW5kIC5kdHMgZmlsZXMKPiA+ID4gaW5kZXBlbmRlbnRseT8gIAo+ID4g
Cj4gPiBUaGVyZSBpcyBubyBzZXBhcmF0ZSByZXBvLCBzbyB3ZSB0YWxrIGFib3V0IExpbnV4IGNh
c2Ugbm93Lgo+ID4gCj4gPiA+IEFuZCBmb3Igbm93IGl0IGxvb2tzIGxpa2Ugd2UgYXJlIHN0dWNr
IHdpdGggcHV0dGluZyBldmVyeXRoaW5nIGluIG9uZQo+ID4gPiBzZXJpZXMsIHRvIG1ha2UgYm90
aCBjaGVja3BhdGNoIGFuZCBkdGJzX2NoZWNrIGhhcHB5LiAgCj4gPiAKPiA+IFlvdSBzaG91bGQg
cmF0aGVyIG1ha2UgbWFpbnRhaW5lcnMgaGFwcHkgOikgYW5kIGhlcmUgb25lIGFza2VkIHRvIHNw
bGl0Lgo+IAo+IFdlbGwsIGhlIGFza2VkIHRvIHNwbGl0IG9mZiB0aGUgVVNCIFBIWSBwYXRjaGVz
IGZyb20gdGhlIHJlc3Qgb2YgdGhlCj4gc2VyaWVzLCBzaW5jZSB0aGVyZSBpcyBzb21lIGNvbmZs
aWN0IHdpdGggdGhlIHJlY2VudGx5IG1lcmdlZCBINjE2IFVTQiBQSFkKPiBwYXRjaGVzLiBJdCBp
cyBzdGlsbCB1bmNsZWFyIHRvIG1lIHdoZXRoZXIgdGhpcyBzcGxpdCBpbmNsdWRlcyB0aGUgYmlu
ZGluZwo+IHBhdGNoLCBvciBqdXN0IHRoZSB0d28gcGF0Y2hlcyB0b3VjaGluZyB0aGUgYWN0dWFs
IGNvZGUuCgpUaGF0IG1lYW4gc3BsaXQgb2ZmIFVTQiBwaHkgYW5kIGJpbmRpbmcgcGF0Y2hlcyBm
cm9tIHJlc3QgYW5kIHNlbmQgZm9yCnJldmlldwoKRFRTIG9yIGFueXRoaW5nIGVsc2Ugc2hvdWxk
IG5vdCBiZSBwYXJ0IG9mIHRoYXQKCi0tIAp+Vmlub2QKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
