Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81EE4E77197
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jan 2025 05:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTjPF3YdF86ZYBih/w8jW6tESiy2/swHjsV9KfiSdBM=; b=27NvIXDH87imjY
	04h/b4y1Vv69WxgA36qsXvV3TPIQZlyxo7VbllsjXKuRonO9YxhT5qQ2DIwpkY+glpc9pKwv+z0Um
	h5WIRLmm6vkAYirDtHK/q1E/Kn0TSRNDtztsAe9TownTzqfhWrmTPOrmeqtBdvzI4ukkq/si1vJqK
	6fJYzZOuZzDZC8JdWPjUmkvVZMO5LToDC5pVJC0/3+KspJV8oe587Lenro4Ad36uZRrb+MAwHbEgd
	YSVR/hUUvw64IlGSBIn/oDHHyV2zwiyZY2YrOzvscsRQwBm8SlRB7aO0nuSvM7/VVl3SQTS/FkUdU
	tGfCbADR5C5nXyBxCt5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV21e-00000003XLF-1DXt;
	Tue, 07 Jan 2025 05:21:10 +0000
Received: from lelvem-ot02.ext.ti.com ([198.47.23.235])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV20M-00000003X3X-1e8I;
	Tue, 07 Jan 2025 05:19:54 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 5075Jew52898436
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 6 Jan 2025 23:19:40 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736227180;
	bh=X5hwSvlRCClaxrbaE3Pweqn6Owtz9NF12Mv+xkT8vkY=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=IrrSZBZcuZx2R6+GrAlg1pC0JcvfkZvB8eJuYFEmHBRhw7rDsV6V3/Hx8F60pXisQ
	 Dy7i8Y8EaORKN5wtIR5L6pRPIl27vePow6cvxOHpSTJLtBx9kSnuISlopL7PQ+c6kS
	 NWQvqmxWSdwxCG6ceGVxp3xKY11eIFLpVSaXrrMg=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 5075JeLI003001
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 6 Jan 2025 23:19:40 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 6
 Jan 2025 23:19:39 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 6 Jan 2025 23:19:39 -0600
Received: from localhost (uda0492258.dhcp.ti.com [10.24.72.104])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 5075JcRl126152;
	Mon, 6 Jan 2025 23:19:39 -0600
Date: Tue, 7 Jan 2025 10:49:38 +0530
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
Message-ID: <wsdjqishkw2mh3xns4okku4vomehp6x3fjqs7e32ye27gankjx@fbbo3td66fk3>
References: <20250106131925.263240-1-s-vadapalli@ti.com>
 <20250106131925.263240-3-s-vadapalli@ti.com>
 <24498c4e-c517-46b9-8d0c-ff1e3a308228@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24498c4e-c517-46b9-8d0c-ff1e3a308228@wanadoo.fr>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_211950_522622_E8AE50FB 
X-CRM114-Status: GOOD (  22.11  )
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

T24gTW9uLCBKYW4gMDYsIDIwMjUgYXQgMTE6MDU6MzVQTSArMDEwMCwgQ2hyaXN0b3BoZSBKQUlM
TEVUIHdyb3RlOgo+IExlIDA2LzAxLzIwMjUgw6AgMTQ6MTksIFNpZGRoYXJ0aCBWYWRhcGFsbGkg
YSDDqWNyaXTCoDoKPiA+IEZyb206IFN3YXBuaWwgSmFraGFkZSA8c2pha2hhZGVAY2FkZW5jZS5j
b20+Cj4gPiAKPiA+IEFkZCByZWdpc3RlciBzZXF1ZW5jZXMgYW5kIHN1cHBvcnQgZm9yIFBDSWUg
bXVsdGlsaW5rICsgVVNCIGNvbmZpZ3VyYXRpb24KPiA+IGZvciAxMDBNSHogcmVmZXJlbmNlIGNs
b2NrLiBUaGUgc2FtZSBTU0MgaXMgdXNlZCBmb3IgYm90aCBQQ0llIGFuZCBVU0IuCj4gPiAKPiA+
IFNpZ25lZC1vZmYtYnk6IFN3YXBuaWwgSmFraGFkZSA8c2pha2hhZGVAY2FkZW5jZS5jb20+Cj4g
PiBDby1kZXZlbG9wZWQtYnk6IFNpZGRoYXJ0aCBWYWRhcGFsbGkgPHMtdmFkYXBhbGxpQHRpLmNv
bT4KPiA+IFNpZ25lZC1vZmYtYnk6IFNpZGRoYXJ0aCBWYWRhcGFsbGkgPHMtdmFkYXBhbGxpQHRp
LmNvbT4KPiA+IC0tLQo+IC4uLgo+IAo+ID4gQEAgLTI1MTMsNiArMjUxNyw0NCBAQCBpbnQgY2Ru
c190b3JyZW50X3BoeV9jb25maWd1cmVfbXVsdGlsaW5rKHN0cnVjdCBjZG5zX3RvcnJlbnRfcGh5
ICpjZG5zX3BoeSkKPiA+ICAgCQlwaHlfdDEgPSBmbnMoY2Ruc19waHktPnByb3RvY29sX2JpdG1h
c2ssIDApOwo+ID4gICAJCXBoeV90MiA9IGZucyhjZG5zX3BoeS0+cHJvdG9jb2xfYml0bWFzaywg
MSk7Cj4gPiArCj4gPiArCQkvKioKPiAKPiBXaHkga2VybmVsLWRvYyBsaWtlIHN0YXJ0IG9mIGNv
bW1lbnQ/Cj4gT25seSAvKiA/Cj4gCj4gPiArCQkgKiBQQ0llIE11bHRpbGluayBjb25maWd1cmF0
aW9uIGNhbiBiZSBzdXBwb3J0ZWQgYWxvbmcgd2l0aCBhCj4gPiArCQkgKiBub24tUENJZSBwcm90
b2NvbC4gVGhlIGV4aXN0aW5nIGxpbWl0YXRpb24gYXNzb2NpYXRlZCB3aXRoCj4gPiArCQkgKiB0
aGUgc3RhbmRhbG9uZSBQQ0llIE11bHRpbGluayBjb25maWd1cmF0aW9uIHN0aWxsIHJlbWFpbnMs
Cj4gPiArCQkgKiBpbXBseWluZyB0aGF0IHRoZXJlIGNhbiBiZSBvbmx5IHR3byBsaW5rcyAoc3Vi
bm9kZXMpIG9mIHRoZQo+ID4gKwkJICogUEhZIHR5cGUgUENJZSB3aGljaCBjb25zdGl0dXRlIHRo
ZSBQQ0llIE11bHRpbGluay4KPiA+ICsJCSAqCj4gPiArCQkgKiBTdWNoIGNvbmZpZ3VyYXRpb25z
IGFyZSBoYW5kbGVkIGJ5IGludHJvZHVjaW5nIGEgbmV3IHByb3RvY29sCj4gPiArCQkgKiBuYW1l
bHkgVFlQRV9QQ0lFX01MLiBCb3RoIG9mIHRoZSBQQ0llIGxpbmtzIHdoaWNoIGhhdmUgdGhlCj4g
PiArCQkgKiBwcm90b2NvbCBhcyBUWVBFX1BDSUUgc2hhbGwgYmUgdHJlYXRlZCBhcyB0aG91Z2gg
dGhlIHByb3RvY29sCj4gPiArCQkgKiBjb3JyZXNwb25kaW5nIHRvIHRoZW0gaXMgVFlQRV9QQ0lF
X01MIG9ubHkgZm9yIHRoZSBzYWtlIG9mCj4gPiArCQkgKiBjb25maWd1cmluZyB0aGUgU0VSREVT
Lgo+ID4gKwkJICoKPiA+ICsJCSAqIFBDSWUgTXVsdGlsaW5rIGNvbmZpZ3VyYXRpb24gY2FuIGJl
IGlkZW50aWZpZWQgYnkgY2hlY2tpbmcgaWYKPiA+ICsJCSAqIHRoZXJlIGFyZSBleGFjdGx5IHR3
byBsaW5rcyB3aXRoIHBoeV90eXBlIHNldCB0byBUWVBFX1BDSUUuCj4gPiArCQkgKiBwaHlfdDEg
YW5kIHBoeV90MiBhcmUgbW9kaWZpZWQgaW4gc3VjaCBjYXNlcyB0byBzdXBwb3J0IHRoZQo+ID4g
KwkJICogUENJZSBNdWx0aWxpbmsgY29uZmlndXJhdGlvbiB3aXRoIGEgbm9uLVBDSWUgcHJvdG9j
b2wuCj4gPiArCQkgKi8KPiAuLi4KPiAKPiA+IEBAIC0zMTM0LDYgKzMxODAsMzcgQEAgc3RhdGlj
IHZvaWQgY2Ruc190b3JyZW50X3BoeV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiA+ICAgCWNkbnNfdG9ycmVudF9jbGtfY2xlYW51cChjZG5zX3BoeSk7Cj4gPiAgIH0KPiA+
ICsvKiBNdWx0aWxpbmsgUENJZSBhbmQgVVNCIFNhbWUgU1NDIGxpbmsgY29uZmlndXJhdGlvbiAq
Lwo+ID4gK3N0YXRpYyBzdHJ1Y3QgY2Ruc19yZWdfcGFpcnMgbWxfcGNpZV91c2JfbGlua19jbW5f
cmVnc1tdID0gewo+ID4gKwl7MHgwMDAyLCBQSFlfUExMX0NGR30sCj4gPiArCXsweDg2MDAsIENN
Tl9QRElBR19QTEwwX0NMS19TRUxfTTB9Cj4gPiArfTsKPiAKPiBNYXliZSBjb25zdCBjb3VsZCBi
ZSBhZGRlZCBoZXJlIGFuZCBiZWxvdz8KPiAKPiA+ICsKPiA+ICtzdGF0aWMgc3RydWN0IGNkbnNf
cmVnX3BhaXJzIG1sX3BjaWVfdXNiX3hjdnJfZGlhZ19sbl9yZWdzW10gPSB7Cj4gPiArCXsweDAx
MDAsIFhDVlJfRElBR19IU0NMS19TRUx9LAo+ID4gKwl7MHgwMDEzLCBYQ1ZSX0RJQUdfSFNDTEtf
RElWfSwKPiA+ICsJezB4MDgxMiwgWENWUl9ESUFHX1BMTERSQ19DVFJMfQo+ID4gK307CgpJIHdp
bGwgdXBkYXRlIHRoaXMgcGF0Y2ggYmFzZWQgb24geW91ciBmZWVkYmFjayBpbiB0aGUgdjMgc2Vy
aWVzLiBUaGFuawp5b3UgZm9yIHRoZSByZXZpZXcuCgpSZWdhcmRzLApTaWRkaGFydGguCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
