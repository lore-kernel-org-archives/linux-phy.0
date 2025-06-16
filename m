Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACE4BC71135
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 06:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QTCNg+V0o5o7QxAcoZctJDlAemFExuZsG1/ZsGil/m0=; b=xgUfHa2NEWHAHo
	V8/EaRKh+TRcuM+h6Zfvoi1M4eGIJEplMQm/XNfHB8EXYOo/euypgWQXkBe3wfDaoCIaPmWwarAB/
	vW4XeJf9vEp0DF6tVrY16izLeovm3vOEWt0LPf8wWCEyszmzo1v+35XZsOa0VLtsiqFo9aMzxfMgL
	ImT7CFuoil5iBz5V7R5AcCMp0iIwK87d4OeIqfhTv3y8pNzRPArZtjFlD4GhrM+Id65E9Y/4PobEi
	HUAKr4BPMjqlMASQuXcLYHE8deHyn7y8Z1pRDs/UoQ142Og+LeslPA5zTYU7ZjG48x0uJJRvJexgp
	Wn5iyQyugNY+Z1A02+Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR3BA-00000003UkJ-1TKW;
	Mon, 16 Jun 2025 06:18:48 +0000
Received: from fllvem-ot03.ext.ti.com ([198.47.19.245])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR36D-00000003UJz-3Gnd;
	Mon, 16 Jun 2025 06:13:43 +0000
Received: from fllvem-sh03.itg.ti.com ([10.64.41.86])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTP id 55G6DVqa3652018;
	Mon, 16 Jun 2025 01:13:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1750054411;
	bh=PbePVXAnMrFx3laArIYlOarAwsO6nrtRal5gw+k7HPw=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=aqe8bAOVWlwvCXQzofsHlrGhV70JZTeV80w+JGPr0deR/7RJ96lIcB1zrYGi/a7J1
	 dJZyLrFzYsLi5sQzNedX183nodE1DNJhaSMxchgQ4YKdk8IMpLtyYo9UYqhOTSs+m0
	 wxIJb1ihqXpG3vSnk66lFKTDAUsODOCLKJdfOxt0=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by fllvem-sh03.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 55G6DVe4548863
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Mon, 16 Jun 2025 01:13:31 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Mon, 16
 Jun 2025 01:13:30 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Mon, 16 Jun 2025 01:13:30 -0500
Received: from localhost (dhcp-172-24-227-169.dhcp.ti.com [172.24.227.169])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 55G6DTwu3762941;
	Mon, 16 Jun 2025 01:13:30 -0500
Date: Mon, 16 Jun 2025 11:43:29 +0530
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Siddharth Vadapalli <s-vadapalli@ti.com>,
        Enric Balletbo i Serra
	<eballetb@redhat.com>,
        Roger Quadros <rogerq@kernel.org>, <kishon@kernel.org>,
        <sjakhade@cadence.com>, <thomas.richard@bootlin.com>,
        <christophe.jaillet@wanadoo.fr>, <u.kleine-koenig@baylibre.com>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>
Subject: Re: [PATCH v3 1/2] phy: cadence-torrent: Add PCIe multilink
 configuration for 100 MHz refclk
Message-ID: <8f576dd7-2954-4a0c-95b7-23b5e303f321@ti.com>
References: <20250109121614.754466-1-s-vadapalli@ti.com>
 <20250109121614.754466-2-s-vadapalli@ti.com>
 <fccedc26-0bb9-4078-8a94-4199f6b383c1@kernel.org>
 <CALE0LRsdsTU-NLN4fgh2c8qnS-pPP1BDJvjnvsSOnud8amk3=A@mail.gmail.com>
 <6b747de0-9d10-43e9-a2b1-23a129301538@ti.com>
 <aE7UbTT0UHgEliDM@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aE7UbTT0UHgEliDM@vaman>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250615_231341_943040_D5D035F2 
X-CRM114-Status: GOOD (  13.41  )
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

T24gU3VuLCBKdW4gMTUsIDIwMjUgYXQgMDc6NDA6NTNQTSArMDUzMCwgVmlub2QgS291bCB3cm90
ZToKCkhlbGxvIFZpbm9kLAoKPiBPbiAxMi0wNi0yNSwgMTU6MzQsIFNpZGRoYXJ0aCBWYWRhcGFs
bGkgd3JvdGU6Cj4gPiBPbiBUaHUsIEp1biAxMiwgMjAyNSBhdCAxMDo0ODoyMEFNICswMjAwLCBF
bnJpYyBCYWxsZXRibyBpIFNlcnJhIHdyb3RlOgo+ID4gCj4gPiBIZWxsbyBFbnJpYywKPiA+IAo+
ID4gPiBIaSBhbGwsCj4gPiA+IAo+ID4gPiBPbiBUaHUsIEphbiA5LCAyMDI1IGF0IDU6MzXigK9Q
TSBSb2dlciBRdWFkcm9zIDxyb2dlcnFAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4g
Pgo+ID4gPiA+Cj4gPiA+ID4gT24gMDkvMDEvMjAyNSAxNDoxNiwgU2lkZGhhcnRoIFZhZGFwYWxs
aSB3cm90ZToKPiA+ID4gPiA+IEZyb206IFN3YXBuaWwgSmFraGFkZSA8c2pha2hhZGVAY2FkZW5j
ZS5jb20+Cj4gPiA+ID4gPgo+ID4gPiA+ID4gQWRkIHJlZ2lzdGVyIHNlcXVlbmNlcyB0byBzdXBw
b3J0IFBDSWUgbXVsdGlsaW5rIGNvbmZpZ3VyYXRpb24gZm9yIDEwME1Iego+ID4gPiA+ID4gcmVm
ZXJlbmNlIGNsb2NrLiBNYXhpbXVtIHR3byBQQ0llIGxpbmtzIGFyZSBzdXBwb3J0ZWQuCj4gPiA+
ID4gPgo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogU3dhcG5pbCBKYWtoYWRlIDxzamFraGFkZUBj
YWRlbmNlLmNvbT4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFNpZGRoYXJ0aCBWYWRhcGFsbGkg
PHMtdmFkYXBhbGxpQHRpLmNvbT4KPiA+ID4gPgo+ID4gPiA+IFJldmlld2VkLWJ5OiBSb2dlciBR
dWFkcm9zIDxyb2dlcnFAa2VybmVsLm9yZz4KPiA+ID4gPgo+ID4gPiAKPiA+ID4gVGhlc2UgcGF0
Y2hlcyBzZWVtIGdvb2QgYW5kIGhhdmUgYmVlbiByZXZpZXdlZCBidXQgbG9vayBzdGFsbGVkIGhl
cmUuCj4gPiA+IFRoZXJlIGlzIGFueSBjaGFuY2UgdG8gcmViYXNlIGl0IG9uIHRvcCBvZiB0aGUg
bWFpbmxpbmU/Cj4gPiAKPiA+IFRoZSBwYXRjaGVzIGFwcGx5IGNsZWFubHkgb24gdGhlIGxhdGVz
dCBsaW51eC1uZXh0IHRhZ2dlZCBuZXh0LTIwMjUwNjEyLgo+IAo+IENhbiB5b3UgcmVwb3N0CgpT
dXJlLCBJIHdpbGwgZG8gc28uCgpSZWdhcmRzLApTaWRkaGFydGguCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
