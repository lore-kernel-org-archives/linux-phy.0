Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A492CFD376
	for <linux-phy@archiver.kernel.org>; Fri, 28 Nov 2025 11:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HWFNF+nAoVIBc3OM8OMpZFHIoZ/an/wgpPxaGeAP1Gs=; b=xnQZs9LSQlrf3Q
	WuA1uzGLY4p3MjRuPQrKqHX2IywQH42DuVLBmOlooTg7kS4HGxKYKFqK32TzUSpvVRs19R20lr55Z
	n/x4aNj2cz9AK8WbSc0ffIxgmQ41CFPQgf67ACW6py14P9ZNabMg2SH0Rlajl90/pDo1HUg2vKsXt
	L4tN4Q3DSx9Wu5t5RCRpIqvp4mQoRzwKSFfvRBy5nYVTsilWZYTDl9GM685EoYBYgYb+4Ivnjbhau
	ooHzt7Sl4Ckx2+LzOM/ZYZ1KeCeSPVi2LEtmTJCCaLrepShfHc0ra2wFlsYbMmD0tlUWJ/PmDY2uD
	TTAKPGzA0Qnd8jnPtgPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOwm8-00000000MTa-2vN2;
	Fri, 28 Nov 2025 11:36:32 +0000
Received: from elvis.franken.de ([193.175.24.41])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOwm5-00000000MT0-4ACt
	for linux-phy@lists.infradead.org;
	Fri, 28 Nov 2025 11:36:31 +0000
Received: from uucp by elvis.franken.de with local-rmail (Exim 3.36 #1)
	id 1vOwm4-0005X9-00; Fri, 28 Nov 2025 12:36:28 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 75E7FC0256; Fri, 28 Nov 2025 12:35:59 +0100 (CET)
Date: Fri, 28 Nov 2025 12:35:59 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: =?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>,
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org,
	=?iso-8859-1?Q?Beno=EEt?= Monin <benoit.monin@bootlin.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v4 6/7] MIPS: mobileye: eyeq5: add two Cadence GEM
 Ethernet controllers
Message-ID: <aSmJH7A7FfQ7Pfdo@alpha.franken.de>
References: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
 <20251124-macb-phy-v4-6-955c625a81a7@bootlin.com>
 <87y0nq4hd2.fsf@BLaptop.bootlin.com>
 <aSlxGFPP-oURLpPq@alpha.franken.de>
 <87v7iu4eob.fsf@BLaptop.bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87v7iu4eob.fsf@BLaptop.bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_033630_325246_D75DE40E 
X-CRM114-Status: GOOD (  19.64  )
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

T24gRnJpLCBOb3YgMjgsIDIwMjUgYXQgMTE6NDc6MTZBTSArMDEwMCwgR3JlZ29yeSBDTEVNRU5U
IHdyb3RlOgo+IFRob21hcyBCb2dlbmRvZXJmZXIgPHRzYm9nZW5kQGFscGhhLmZyYW5rZW4uZGU+
IHdyaXRlczoKPiAKPiA+IE9uIEZyaSwgTm92IDI4LCAyMDI1IGF0IDEwOjQ5OjEzQU0gKzAxMDAs
IEdyZWdvcnkgQ0xFTUVOVCB3cm90ZToKPiA+PiBIZWxsbyBUaG9tYXMsCj4gPj4gCj4gPj4gPiBB
ZGQgYm90aCBNQUNCL0dFTSBpbnN0YW5jZXMgZm91bmQgaW4gdGhlIE1vYmlsZXllIEV5ZVE1IFNv
Qy4KPiA+PiA+Cj4gPj4gPiBBY2tlZC1ieTogVGhvbWFzIEJvZ2VuZG9lcmZlciA8dHNib2dlbmRA
YWxwaGEuZnJhbmtlbi5kZT4KPiA+PiAKPiA+PiBDYW4geW91IGNvbmZpcm0gdGhhdCB5b3Ugd2ls
bCBpbmNsdWRlIHRoaXMgcGF0Y2ggYW5kIHRoZSBmb2xsb3dpbmcgb25lCj4gPj4gaW4geW91ciBt
aXBzLW5leHQgYnJhbmNoPwo+ID4KPiA+IEkgaGF2ZW4ndCBwbGFubmVkIGRvaW5nIHRoaXMuCj4g
Pgo+ID4+IEFzIHlvdSBnYXZlIHlvdXIgQWNrZWQtYnkgb24gaXQsIEkgYmVsaWV2ZSB0aGlzIHdp
bGwgYmUgdGhlIGNhc2UsIGJ1dCBJCj4gPj4gd2FudCB0byBiZSBzdXJlIHRoZXkgYXJlbid0IGZv
cmdvdHRlbi4KPiA+Cj4gPiB0aGUgIEFja2VkLWJ5IGlzIG1lYW50IGZvciBpbmNsdWRpbmcgdGhl
IHBhdGNoZXMgaW50byB0aGUgdHJlZSwgd2hlcmUgdGhlCj4gPiByZXN0IG9mIHRoaXMgc2VyaWVz
IGlzIGdvaW5nIGluLgo+IAo+IEhvd2V2ZXIsIGFjY29yZGluZyB0byB0aGUgY292ZXIgbGV0dGVy
LCB0aGVyZSBhcmUgbm8gYnVpbGQgZGVwZW5kZW5jaWVzCj4gYmV0d2VlbiB0aGVzZSBwYXRjaGVz
IGFuZCB0aGUgZHJpdmVyLXJlbGF0ZWQgcGF0Y2guIEZ1cnRoZXJtb3JlLCBzaW5jZQo+IGl0IGlu
dHJvZHVjZXMgYSBuZXcgY29tcGF0aWJsZSBzdHJpbmcsIGV2ZW4gaWYgdGhlIGRyaXZlciBwYXJ0
IGlzIG5vdAo+IHlldCBtZXJnZWQsIHdlIHdvbuKAmXQgZXhwZXJpZW5jZSBhbnkgcmVncmVzc2lv
bi4gVGhlcmVmb3JlLCBJIGJlbGlldmUgaXQKPiBpcyBzYWZlIHRvIG1lcmdlIHRoZXNlIHR3byBw
YXRjaGVzIHVubGVzcyB5b3UgaGF2ZSBhbnkgY29uY2VybnMgYWJvdXQKPiB0aGVtLgoKbm8gY29u
Y2VybnMsIGJ1dCBhcmVuJ3QgdGhleSB1c2VsZXNzIHdpdGhvdXQgdGhlIGNvZGUgY2hhbmdlcyA/
CgpUaG9tYXMuCgotLSAKQ3JhcCBjYW4gd29yay4gR2l2ZW4gZW5vdWdoIHRocnVzdCBwaWdzIHdp
bGwgZmx5LCBidXQgaXQncyBub3QgbmVjZXNzYXJpbHkgYQpnb29kIGlkZWEuICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgWyBSRkMxOTI1LCAyLjMgXQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
