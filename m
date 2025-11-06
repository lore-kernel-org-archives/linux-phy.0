Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B485DCCFA05
	for <linux-phy@archiver.kernel.org>; Thu,  6 Nov 2025 10:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZLrE1TyRnMZl5rlhRfEzMIiqZqX+cTCy7qsA6sSo5s=; b=FJQugBSY2Wpe2y
	UukJruoZylYIMzoTqnwL2YKu8QtpFvk5OnBZukcpzmKHozIhxzzGVsKJaemyw7FV1t0eQmamDpzv0
	m1q0qVAGFHVDAqiTY2uo2tME8EFtGYy12WS0hP5AyRCSaqId9cb1OsGKUX85UM1JggVz4Dc0Hdqr1
	NrOPAtnNWyGielJjoiBmZ3+IKGOOz02TdeRJgFkygmVk67aCjFi7K2yzbdRzD6bNErVysXTiWn9Z0
	iOPWoCFbtN+D038eJVPrVlq4HbmjDSBuZyeRa8zAWA4h0O2j8hzuVw8guhJh5h053McVWbyi1hk4s
	tawniit3G/Fl2OPz5osA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGxap-0000000FLsc-25SK;
	Thu, 06 Nov 2025 10:51:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGxal-0000000FLrQ-3WI3
	for linux-phy@lists.infradead.org;
	Thu, 06 Nov 2025 10:51:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vGxaR-00027U-O1; Thu, 06 Nov 2025 11:51:27 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vGxaR-007LZi-0X;
	Thu, 06 Nov 2025 11:51:27 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vGxaR-000000004PL-0HZk;
	Thu, 06 Nov 2025 11:51:27 +0100
Message-ID: <56a49462312d89fd0de6da273f698c0f89e73ada.camel@pengutronix.de>
Subject: Re: [PATCH v2 0/7] Add generic PHY driver used by MACB/GEM on EyeQ5
From: Philipp Zabel <p.zabel@pengutronix.de>
To: =?ISO-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>, Vladimir
 Kondratiev <vladimir.kondratiev@mobileye.com>, =?ISO-8859-1?Q?Gr=E9gory?=
 Clement	 <gregory.clement@bootlin.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,  Kishon Vijay Abraham
 I	 <kishon@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd	 <sboyd@kernel.org>, Thomas Bogendoerfer
 <tsbogend@alpha.franken.de>
Cc: linux-mips@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-clk@vger.kernel.org, =?ISO-8859-1?Q?Beno=EEt?= Monin	
 <benoit.monin@bootlin.com>, Maxime Chevallier
 <maxime.chevallier@bootlin.com>,  Tawfik Bayouk
 <tawfik.bayouk@mobileye.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, Conor Dooley	 <conor.dooley@microchip.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Andrew Lunn	 <andrew@lunn.ch>
Date: Thu, 06 Nov 2025 11:51:26 +0100
In-Reply-To: <20251101-macb-phy-v2-0-c1519eef16d3@bootlin.com>
References: <20251101-macb-phy-v2-0-c1519eef16d3@bootlin.com>
User-Agent: Evolution 3.56.1-1+deb13u1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_025147_879200_088C8069 
X-CRM114-Status: GOOD (  22.92  )
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

T24gU2EsIDIwMjUtMTEtMDEgYXQgMDk6NTMgKzAxMDAsIFRow6lvIExlYnJ1biB3cm90ZToKPiBF
eWVRNSBTb0NzIGludGVncmF0ZSB0d28gR0VNIGluc3RhbmNlcy4gQSBzeXN0ZW0tY29udHJvbGxl
ciByZWdpc3Rlcgo+IHJlZ2lvbiBuYW1lZCAiT0xCIiBoYXMgc29tZSBjb250cm9sIG92ZXIgdGhl
IEV0aGVybmV0IFBIWSBpbnRlZ3JhdGlvbi4KPiAKPiBQYXN0IGl0ZXJhdGlvbnMgWzBdIHRvdWNo
ZWQgdGhvc2Ugc3lzY29uIHJlZ2lzdGVycyBkaXJlY3RseSBmcm9tIE1BQ0IuCj4gSXQgd2FzIGEg
YmFkIGlkZWEuIEV4dGVuZCB0aGUgY3VycmVudCBPTEIgZWNvc3lzdGVtIHdpdGggYSBuZXcgZ2Vu
ZXJpYwo+IFBIWSBkcml2ZXIuCj4gIC0gT0xCIGlzIGNhcnJpZWQgYnkgb25lIG1haW4gcGxhdGZv
cm0gZHJpdmVyOiBjbGstZXllcS4KPiAgLSBJdCBpbnN0YW50aWF0ZXMgYXV4aWxpYXJ5IGRldmlj
ZXM6IHJlc2V0LWV5ZXEgJiBwaW5jdHJsLWV5ZXE1Lgo+ICAtIFdlIGFkZCBhIG5ldyBvbmU6IHBo
eS1leWVxNS1ldGguCj4gCj4gSGVyZSBpcyBhIERUIG92ZXJ2aWV3Ogo+IAo+ICAgIG9sYjogc3lz
dGVtLWNvbnRyb2xsZXJAZTAwMDAwIHsKPiAgICAgICAgICAgIGNvbXBhdGlibGUgPSAibW9iaWxl
eWUsZXllcTUtb2xiIiwgInN5c2NvbiI7Cj4gICAgICAgICAgICByZWcgPSA8MCAweGUwMDAwMCAw
eDAgMHg0MDA+Owo+ICAgICAgICAgICAgLy8gLi4uCj4gICAgICAgICAgICAjcmVzZXQtY2VsbHMg
PSA8Mj47Cj4gICAgICAgICAgICAjY2xvY2stY2VsbHMgPSA8MT47Cj4gICAgICAgICAgICAjcGh5
LWNlbGxzID0gPDE+OyAvLyA8PSB0aGlzIGlzIG5ldwo+ICAgIH07Cj4gCj4gICAgbWFjYjA6IGV0
aGVybmV0QDJhMDAwMDAgewo+ICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJtb2JpbGV5ZSxleWVx
NS1nZW0iOwo+ICAgICAgICAgICAgcGh5cyA9IDwmb2xiIDA+OyAvLyA8PSBHRU0gZGV2aWNlIGNv
bnN1bWVzIHRoZSBQSFkKPiAgICAgICAgICAgIC8vIC4uLgo+ICAgIH07Cj4gCj4gICAgbWFjYjE6
IGV0aGVybmV0QDJiMDAwMDAgewo+ICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJtb2JpbGV5ZSxl
eWVxNS1nZW0iOwo+ICAgICAgICAgICAgcGh5cyA9IDwmb2xiIDE+OyAvLyA8PSBzYW1lIHRoaW5n
IGZvciB0aGUgc2Vjb25kIGluc3RhbmNlCj4gICAgICAgICAgICAvLyAuLi4KPiAgICB9Owo+IAo+
IFRoZSBMaW51eCBNQUNCIGRyaXZlciBhbHJlYWR5IGNvbnN1bWVzIGEgZ2VuZXJpYyBQSFkgZm9y
IHNvbWUgb3RoZXIKPiBjb21wYXRpYmxlcywgdGhpcyBpcyBub3RoaW5nIG5ldy4gVGhlIE1BQ0Ig
c2VyaWVzIFsxXSBoYXMgYmVlbiBtZXJnZWQKPiBpbnRvIG5ldC1uZXh0L21haW4uCj4gCj4gLS0K
PiAKPiBPbmUgdG9waWMgdG8gdGFsayBhYm91dDogdGhlIHdob2xlICJ3ZSBtdXN0IGFzc2lnbiBj
aGlsZC0+b2Zfbm9kZQo+IG1hbnVhbGx5Ii4gQXV4aWxpYXJ5IGRyaXZlciBjb3JlIGRvZXMgbm90
IGRvIGl0IGF1dG9tYXRpY2FsbHksIHNvCj4gZWl0aGVyIHRoZSBwYXJlbnQgKGNsay1leWVxKSBv
ciB0aGUgY2hpbGRyZW4gbXVzdCBkbyBpdC4KPiAKPiBJbiBPTEIgbGFuZCwgdW50aWwgbm93LCBj
aGlsZHJlbiB3ZXJlIGRvaW5nIGl0IHdpdGggYQo+IGRldmljZV9zZXRfb2Zfbm9kZV9mcm9tX2Rl
dihkZXYsIGRldi0+cGFyZW50KSBjYWxsIGluIHByb2JlLgo+IAo+IFJlY2VudGx5LCBKZXJvbWUg
QnJ1bmV0IGFkZGVkIGRldm1fYXV4aWxpYXJ5X2RldmljZV9jcmVhdGUoKToKPiBlYWEwZDMwMjE2
YzEgKCJkcml2ZXIgY29yZTogYXV4aWxpYXJ5IGJ1czogYWRkIGRldmljZSBjcmVhdGlvbgo+IGhl
bHBlcnMiKS4gVXNpbmcgdGhhdCBjbGVhbnMgdXAgY2xrLWV5ZXEgYnV0IG1lYW5zIHdlIG11c3Qg
cmVtb3ZlCj4gZGV2aWNlX3NldF9vZl9ub2RlX2Zyb21fZGV2KCkgZnJvbSByZXNldC1leWVxIGlu
IHRoZSBzYW1lIHBhdGNoIHNlcmllcywKPiBhcyB0aGUgaGVscGVycyBkbyB0aGUgZGV2LT5vZl9u
b2RlIGFzc2lnbmVtZW50IGZyb20gdGhlIHBhcmVudCBkcml2ZXIuCj4gCj4gVGhhdCBleHBsYWlu
cyB3aHkgdGhlIGlkZWFsIHBhdGNoOgo+IFtQQVRDSCA0LzddIGNsazogZXllcTogYWRkIEV5ZVE1
IGNoaWxkcmVuIGF1eGlsaWFyeSBkZXZpY2UgZm9yIGdlbmVyaWMgUEhZcwo+IFR1cm5lZCBpbnRv
IHRob3NlIHRocmVlOgo+IFtQQVRDSCAzLzddIGNsazogZXllcTogdXNlIHRoZSBhdXhpbGlhcnkg
ZGV2aWNlIGNyZWF0aW9uIGhlbHBlcgo+IFtQQVRDSCA0LzddIGNsazogZXllcTogYWRkIEV5ZVE1
IGNoaWxkcmVuIGF1eGlsaWFyeSBkZXZpY2UgZm9yIGdlbmVyaWMgUEhZcwo+IFtQQVRDSCA1Lzdd
IHJlc2V0OiBleWVxOiBkcm9wIGRldmljZV9zZXRfb2Zfbm9kZV9mcm9tX2RldigpIGRvbmUgYnkg
cGFyZW50Cj4gCj4gLS0KPiAKPiBBYm91dCBtZXJnaW5nLCBpdCdsbCBwcm9iYWJseSBiZSBjb21w
bGV4LiBJIHNlZSBubyBidWlsZCBkZXBlbmRlbmNpZXMsCj4gYnV0IHRoZSBib2FyZCB3aWxsIGJl
IGluIGFuIG9kZCBzdGF0ZSBpZiBvbmx5IHNvbWUgcGF0Y2hlcyBhcmUgYXBwbGllZC4KPiBTb21l
IGRldl93YXJuKCkgYXQgYm9vdCBhbmQgZGV2LT5vZl9ub2RlIHJlZmNvdW50aW5nIGlzc3VlcyBh
dCB1bmxvYWQuCj4gCj4gIC0gW1BBVENIIDEvN10gZHQtYmluZGluZ3M6IHNvYzogbW9iaWxleWU6
IE9MQiBpcyBhbiBFdGhlcm5ldCBQSFkgcHJvdmlkZXIgb24gRXllUTUKPiAgICBXZSB0b3VjaCBk
dC1iaW5kaW5ncyBiZWNhdXNlIE9MQiBiZWNvbWVzIGEgUEhZIHByb3ZpZGVyLgo+ICAgID0+IGxp
bnV4LW1pcHMgKD8pCj4gCj4gIC0gW1BBVENIIDIvN10gcGh5OiBBZGQgZHJpdmVyIGZvciBFeWVR
NSBFdGhlcm5ldCBQSFkgd3JhcHBlcgo+ICAgIFdlIGFkZCB0aGUgZ2VuZXJpYyBQSFkgZHJpdmVy
IGluIGRyaXZlcnMvcGh5L3BoeS1leWVxNS1ldGguYyB3aXRoIHRoZQo+ICAgIHVzdWFsIEtjb25m
aWcsIE1ha2VmaWxlIGFuZCBNQUlOVEFJTkVSUyBjaGFuZ2VzLgo+ICAgID0+IGxpbnV4LXBoeSAo
PykKPiAKPiAgLSBbUEFUQ0ggNi83XSBNSVBTOiBtb2JpbGV5ZTogZXllcTU6IGFkZCB0d28gQ2Fk
ZW5jZSBHRU0gRXRoZXJuZXQgY29udHJvbGxlcnMKPiAgICBbUEFUQ0ggNy83XSBNSVBTOiBtb2Jp
bGV5ZTogZXllcTUtZXBtOiBhZGQgdHdvIENhZGVuY2UgR0VNIEV0aGVybmV0IFBIWXMKPiAgICBE
VFMgcGF0Y2hlcyB0byBhZGQgYm90aCB0aGUgI3BoeS1jZWxscyBvZiBPTEIgYW5kIHRoZSBNQUNC
IGluc3RhbmNlcy4KPiAgICA9PiBsaW51eC1taXBzCj4gCj4gIC0gW1BBVENIIDQvN10gY2xrOiBl
eWVxOiBhZGQgRXllUTUgY2hpbGRyZW4gYXV4aWxpYXJ5IGRldmljZSBmb3IgZ2VuZXJpYyBQSFlz
Cj4gICAgV2UgbXVzdCB1cGRhdGUgY2xrLWV5ZXEgYmVjYXVzZSBpdCBpbnN0YW50aWF0ZXMgYSBu
ZXcgYXV4ZGV2Lgo+ICAgID0+IGxpbnV4LWNsawo+IAo+ICAtIFtQQVRDSCAzLzddIGNsazogZXll
cTogdXNlIHRoZSBhdXhpbGlhcnkgZGV2aWNlIGNyZWF0aW9uIGhlbHBlcgo+ICAgIFtQQVRDSCA1
LzddIHJlc2V0OiBleWVxOiBkcm9wIGRldmljZV9zZXRfb2Zfbm9kZV9mcm9tX2RldigpIGRvbmUg
YnkgcGFyZW50Cj4gICAgV2l0aCB0aGUgZGV2LT5vZl9ub2RlIGFzc2lnbmVtZW50LCB3ZSBtdXN0
IGFsc28gY29ycmVjdCByZXNldC1leWVxLgo+ICAgID0+IHNlcGFyYXRlIHRoZW0gaW50byBsaW51
eC1jbGsgYW5kIGxpbnV4LXJlc2V0PwoKU2luY2UgMyBhbmQgNCBzaG91bGQgZ28gdmlhIGNsaywg
YW5kIDUgaGFzIGEgZGVwZW5kZW5jeSBvbiAzLCBJIHdvdWxkCnN1Z2dlc3QgbWVyZ2luZyB0aGVt
IGFsbCB0b2dldGhlci4KCnJlZ2FyZHMKUGhpbGlwcAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
