Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FF04E77199
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jan 2025 12:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YL+rdeIP4zHIYXuvUyILLZRZ3XGFqdO4uBbI5I4tT3c=; b=yIbCz1CFHmCmvN
	jF6TFMvQk4qS74sR+mLNmRxDZUI8N/oL7KGXzRIIl912XCvXyLfHvc4F58BqV8fZaLmmVuzrfhU09
	oLyJYhDtjk7e96mtPgVyqXyQSUmCkBPGQx2utk2m8ELlrGpyWUqI3KIo6F2qyTpH51Rki/aeUdUhw
	7bL1SuXJgIWdqNDj0tKshElXkd1Vp+7dW8roqk4OUUs7zRS0id1xEmXAF7DuoQGe1zPra52jytqfh
	Yos7B1m7ZcbQNymN1T5bD73NX/cF8FzcJFAHxEXh7Oq/P1PZq2KkM9vHCjySFxrRUMvCbdeEQYxZa
	Vn2yTX+fqryZPFKSazfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrYh-0000000BqEY-3VIt;
	Thu, 09 Jan 2025 12:22:43 +0000
Received: from fllvem-ot04.ext.ti.com ([198.47.19.246])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVrWO-0000000Bpfe-0X46;
	Thu, 09 Jan 2025 12:20:21 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 509CKCjk3159059
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 9 Jan 2025 06:20:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736425212;
	bh=aldVJPdw0EUIAhOcl//mQC1NBVldpSMbv7V7noWQKqk=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=UvSGZZoLZvA7vllP9vpaphtJXUr4U4mp1cM3lCZtAaAO/a69XRabBlIo/j1V6Oxig
	 KCLpvKhkLwJR7Q6FaIqbhbL2Vsx7UiNi72r12aZUhoc48NJ7k3JSgRyuGA081E5CTv
	 tnMqhltsMQYQJSX5nn2veqBkQ1obe3hhNG5//bsM=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 509CKBqo049829
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 9 Jan 2025 06:20:12 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 9
 Jan 2025 06:20:10 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 9 Jan 2025 06:20:10 -0600
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.104])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 509CK9i6014553;
	Thu, 9 Jan 2025 06:20:10 -0600
Date: Thu, 9 Jan 2025 17:50:09 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
CC: Siddharth Vadapalli <s-vadapalli@ti.com>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <sjakhade@cadence.com>, <rogerq@kernel.org>,
        <thomas.richard@bootlin.com>, <u.kleine-koenig@baylibre.com>,
        <eballetb@redhat.com>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <srk@ti.com>
Subject: Re: [PATCH v2 2/2] phy: cadence-torrent: Add PCIe multilink + USB
 with same SSC register config for 100 MHz refclk
Message-ID: <wgc5npcq3ncwskeab53quxvxle6nivf34lcqjd3gcmtnr6756m@l5pgiqkcxnm6>
References: <20250106131925.263240-1-s-vadapalli@ti.com>
 <20250106131925.263240-3-s-vadapalli@ti.com>
 <24498c4e-c517-46b9-8d0c-ff1e3a308228@wanadoo.fr>
 <wsdjqishkw2mh3xns4okku4vomehp6x3fjqs7e32ye27gankjx@fbbo3td66fk3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <wsdjqishkw2mh3xns4okku4vomehp6x3fjqs7e32ye27gankjx@fbbo3td66fk3>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_042020_263720_4EC1F81A 
X-CRM114-Status: GOOD (  24.14  )
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

T24gVHVlLCBKYW4gMDcsIDIwMjUgYXQgMTA6NDk6MzhBTSArMDUzMCwgU2lkZGhhcnRoIFZhZGFw
YWxsaSB3cm90ZToKPiBPbiBNb24sIEphbiAwNiwgMjAyNSBhdCAxMTowNTozNVBNICswMTAwLCBD
aHJpc3RvcGhlIEpBSUxMRVQgd3JvdGU6Cj4gPiBMZSAwNi8wMS8yMDI1IMOgIDE0OjE5LCBTaWRk
aGFydGggVmFkYXBhbGxpIGEgw6ljcml0wqA6Cj4gPiA+IEZyb206IFN3YXBuaWwgSmFraGFkZSA8
c2pha2hhZGVAY2FkZW5jZS5jb20+Cj4gPiA+IAo+ID4gPiBBZGQgcmVnaXN0ZXIgc2VxdWVuY2Vz
IGFuZCBzdXBwb3J0IGZvciBQQ0llIG11bHRpbGluayArIFVTQiBjb25maWd1cmF0aW9uCj4gPiA+
IGZvciAxMDBNSHogcmVmZXJlbmNlIGNsb2NrLiBUaGUgc2FtZSBTU0MgaXMgdXNlZCBmb3IgYm90
aCBQQ0llIGFuZCBVU0IuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTd2FwbmlsIEpha2hh
ZGUgPHNqYWtoYWRlQGNhZGVuY2UuY29tPgo+ID4gPiBDby1kZXZlbG9wZWQtYnk6IFNpZGRoYXJ0
aCBWYWRhcGFsbGkgPHMtdmFkYXBhbGxpQHRpLmNvbT4KPiA+ID4gU2lnbmVkLW9mZi1ieTogU2lk
ZGhhcnRoIFZhZGFwYWxsaSA8cy12YWRhcGFsbGlAdGkuY29tPgo+ID4gPiAtLS0KPiA+IC4uLgo+
ID4gCj4gPiA+IEBAIC0yNTEzLDYgKzI1MTcsNDQgQEAgaW50IGNkbnNfdG9ycmVudF9waHlfY29u
ZmlndXJlX211bHRpbGluayhzdHJ1Y3QgY2Ruc190b3JyZW50X3BoeSAqY2Ruc19waHkpCj4gPiA+
ICAgCQlwaHlfdDEgPSBmbnMoY2Ruc19waHktPnByb3RvY29sX2JpdG1hc2ssIDApOwo+ID4gPiAg
IAkJcGh5X3QyID0gZm5zKGNkbnNfcGh5LT5wcm90b2NvbF9iaXRtYXNrLCAxKTsKPiA+ID4gKwo+
ID4gPiArCQkvKioKPiA+IAo+ID4gV2h5IGtlcm5lbC1kb2MgbGlrZSBzdGFydCBvZiBjb21tZW50
Pwo+ID4gT25seSAvKiA/Cj4gPiAKPiA+ID4gKwkJICogUENJZSBNdWx0aWxpbmsgY29uZmlndXJh
dGlvbiBjYW4gYmUgc3VwcG9ydGVkIGFsb25nIHdpdGggYQo+ID4gPiArCQkgKiBub24tUENJZSBw
cm90b2NvbC4gVGhlIGV4aXN0aW5nIGxpbWl0YXRpb24gYXNzb2NpYXRlZCB3aXRoCj4gPiA+ICsJ
CSAqIHRoZSBzdGFuZGFsb25lIFBDSWUgTXVsdGlsaW5rIGNvbmZpZ3VyYXRpb24gc3RpbGwgcmVt
YWlucywKPiA+ID4gKwkJICogaW1wbHlpbmcgdGhhdCB0aGVyZSBjYW4gYmUgb25seSB0d28gbGlu
a3MgKHN1Ym5vZGVzKSBvZiB0aGUKPiA+ID4gKwkJICogUEhZIHR5cGUgUENJZSB3aGljaCBjb25z
dGl0dXRlIHRoZSBQQ0llIE11bHRpbGluay4KPiA+ID4gKwkJICoKPiA+ID4gKwkJICogU3VjaCBj
b25maWd1cmF0aW9ucyBhcmUgaGFuZGxlZCBieSBpbnRyb2R1Y2luZyBhIG5ldyBwcm90b2NvbAo+
ID4gPiArCQkgKiBuYW1lbHkgVFlQRV9QQ0lFX01MLiBCb3RoIG9mIHRoZSBQQ0llIGxpbmtzIHdo
aWNoIGhhdmUgdGhlCj4gPiA+ICsJCSAqIHByb3RvY29sIGFzIFRZUEVfUENJRSBzaGFsbCBiZSB0
cmVhdGVkIGFzIHRob3VnaCB0aGUgcHJvdG9jb2wKPiA+ID4gKwkJICogY29ycmVzcG9uZGluZyB0
byB0aGVtIGlzIFRZUEVfUENJRV9NTCBvbmx5IGZvciB0aGUgc2FrZSBvZgo+ID4gPiArCQkgKiBj
b25maWd1cmluZyB0aGUgU0VSREVTLgo+ID4gPiArCQkgKgo+ID4gPiArCQkgKiBQQ0llIE11bHRp
bGluayBjb25maWd1cmF0aW9uIGNhbiBiZSBpZGVudGlmaWVkIGJ5IGNoZWNraW5nIGlmCj4gPiA+
ICsJCSAqIHRoZXJlIGFyZSBleGFjdGx5IHR3byBsaW5rcyB3aXRoIHBoeV90eXBlIHNldCB0byBU
WVBFX1BDSUUuCj4gPiA+ICsJCSAqIHBoeV90MSBhbmQgcGh5X3QyIGFyZSBtb2RpZmllZCBpbiBz
dWNoIGNhc2VzIHRvIHN1cHBvcnQgdGhlCj4gPiA+ICsJCSAqIFBDSWUgTXVsdGlsaW5rIGNvbmZp
Z3VyYXRpb24gd2l0aCBhIG5vbi1QQ0llIHByb3RvY29sLgo+ID4gPiArCQkgKi8KPiA+IC4uLgo+
ID4gCj4gPiA+IEBAIC0zMTM0LDYgKzMxODAsMzcgQEAgc3RhdGljIHZvaWQgY2Ruc190b3JyZW50
X3BoeV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ID4gICAJY2Ruc190
b3JyZW50X2Nsa19jbGVhbnVwKGNkbnNfcGh5KTsKPiA+ID4gICB9Cj4gPiA+ICsvKiBNdWx0aWxp
bmsgUENJZSBhbmQgVVNCIFNhbWUgU1NDIGxpbmsgY29uZmlndXJhdGlvbiAqLwo+ID4gPiArc3Rh
dGljIHN0cnVjdCBjZG5zX3JlZ19wYWlycyBtbF9wY2llX3VzYl9saW5rX2Ntbl9yZWdzW10gPSB7
Cj4gPiA+ICsJezB4MDAwMiwgUEhZX1BMTF9DRkd9LAo+ID4gPiArCXsweDg2MDAsIENNTl9QRElB
R19QTEwwX0NMS19TRUxfTTB9Cj4gPiA+ICt9Owo+ID4gCj4gPiBNYXliZSBjb25zdCBjb3VsZCBi
ZSBhZGRlZCBoZXJlIGFuZCBiZWxvdz8KPiA+IAo+ID4gPiArCj4gPiA+ICtzdGF0aWMgc3RydWN0
IGNkbnNfcmVnX3BhaXJzIG1sX3BjaWVfdXNiX3hjdnJfZGlhZ19sbl9yZWdzW10gPSB7Cj4gPiA+
ICsJezB4MDEwMCwgWENWUl9ESUFHX0hTQ0xLX1NFTH0sCj4gPiA+ICsJezB4MDAxMywgWENWUl9E
SUFHX0hTQ0xLX0RJVn0sCj4gPiA+ICsJezB4MDgxMiwgWENWUl9ESUFHX1BMTERSQ19DVFJMfQo+
ID4gPiArfTsKPiAKPiBJIHdpbGwgdXBkYXRlIHRoaXMgcGF0Y2ggYmFzZWQgb24geW91ciBmZWVk
YmFjayBpbiB0aGUgdjMgc2VyaWVzLiBUaGFuawo+IHlvdSBmb3IgdGhlIHJldmlldy4KCkkgaGF2
ZSBwb3N0ZWQgdGhlIHYzIHNlcmllcyBhdDoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1
MDEwOTEyMTYxNC43NTQ0NjYtMS1zLXZhZGFwYWxsaUB0aS5jb20vCgpSZWdhcmRzLApTaWRkaGFy
dGguCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
