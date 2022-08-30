Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE36BECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 07:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iMjS1tSYfmK+Gd3KHgXlGYjyxtvLhPcvX0hkuGUtdTI=; b=S5wWWBJa74PdYT
	3sktIgf1bGowLOj9l8kKfzwlBw8KehIcHwjyC7pp3Z/p5qaqcYrykmKbWwtukuzZhBCM5bT+3THux
	qpknvuSFMPTD8lSXGj0OAk5Av0hFghvMZsGsJ9oRzrJIPwfZgvR342uxjPI2oj9Y4rDlt6sa3oYN0
	S4lfpe+CgJRAF/8/GgLjKK5VXkThiwwcPiMZE7cmFc9FPBEUha1zFgqHnl8t4O9qnCCfL9wHURrLr
	JzdGiTfDTvaELOxPU/JqEWn4j87UYuc1gPGv5o+hHDygJUpy2VJSEzY6QdmKqdVMsFeKE+xGhBDSe
	AUSzZMA2MRYfzLODLZBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSw3y-00EwSN-Oa; Tue, 30 Aug 2022 07:53:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvx7-00Et44-W0
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 07:46:32 +0000
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1oSvwt-00058t-RN; Tue, 30 Aug 2022 09:46:15 +0200
Message-ID: <6c02b8af4c887eb58ccf03d0ee107e2f5c7f17de.camel@pengutronix.de>
Subject: Re: [PATCH v4 0/6] Add iMX8MP PCIe support
From: Lucas Stach <l.stach@pengutronix.de>
To: Hongxing Zhu <hongxing.zhu@nxp.com>, "p.zabel@pengutronix.de"
	 <p.zabel@pengutronix.de>, "bhelgaas@google.com" <bhelgaas@google.com>, 
	"lorenzo.pieralisi@arm.com"
	 <lorenzo.pieralisi@arm.com>, "robh@kernel.org" <robh@kernel.org>, 
	"shawnguo@kernel.org"
	 <shawnguo@kernel.org>, "vkoul@kernel.org" <vkoul@kernel.org>, 
	"alexander.stein@ew.tq-group.com"
	 <alexander.stein@ew.tq-group.com>, "marex@denx.de" <marex@denx.de>, 
	"richard.leitner@linux.dev"
	 <richard.leitner@linux.dev>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>,  dl-linux-imx <linux-imx@nxp.com>
Date: Tue, 30 Aug 2022 09:46:14 +0200
In-Reply-To: <AS8PR04MB867602341382CB5D63379DC88C799@AS8PR04MB8676.eurprd04.prod.outlook.com>
References: <1661760917-9558-1-git-send-email-hongxing.zhu@nxp.com>
	 <c668fff254b9f56b699a2714bb8c016e3b0cc5b5.camel@pengutronix.de>
	 <AS8PR04MB867602341382CB5D63379DC88C799@AS8PR04MB8676.eurprd04.prod.outlook.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_004630_082936_64DCAF9F 
X-CRM114-Status: GOOD (  32.66  )
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

QW0gRGllbnN0YWcsIGRlbSAzMC4wOC4yMDIyIHVtIDAyOjU4ICswMDAwIHNjaHJpZWIgSG9uZ3hp
bmcgWmh1Ogo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IEx1Y2FzIFN0
YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+ID4gU2VudDogMjAyMuW5tDjmnIgyOeaXpSAy
MzoyMAo+ID4gVG86IEhvbmd4aW5nIFpodSA8aG9uZ3hpbmcuemh1QG54cC5jb20+OyBwLnphYmVs
QHBlbmd1dHJvbml4LmRlOwo+ID4gYmhlbGdhYXNAZ29vZ2xlLmNvbTsgbG9yZW56by5waWVyYWxp
c2lAYXJtLmNvbTsgcm9iaEBrZXJuZWwub3JnOwo+ID4gc2hhd25ndW9Aa2VybmVsLm9yZzsgdmtv
dWxAa2VybmVsLm9yZzsgYWxleGFuZGVyLnN0ZWluQGV3LnRxLWdyb3VwLmNvbTsKPiA+IG1hcmV4
QGRlbnguZGU7IHJpY2hhcmQubGVpdG5lckBsaW51eC5kZXYKPiA+IENjOiBsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZzsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7Cj4gPiBsaW51eC1w
Y2lAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7
Cj4gPiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBrZXJuZWxAcGVuZ3V0cm9uaXguZGU7
IGRsLWxpbnV4LWlteAo+ID4gPGxpbnV4LWlteEBueHAuY29tPgo+ID4gU3ViamVjdDogUmU6IFtQ
QVRDSCB2NCAwLzZdIEFkZCBpTVg4TVAgUENJZSBzdXBwb3J0Cj4gPiAKPiA+IEhpIFJpY2hhcmQs
Cj4gPiAKPiA+IGluc3RlYWQgb2YgcmV2aWV3IGNvbW1lbnRzIEkgc2VudCB5b3UgYSB0d28gcGF0
Y2hlcyB0byByZXdvcmsgdGhpbmdzIG1vcmUgdG8KPiA+IG15IGxpa2luZy4gSG9wZSB5b3UgYWdy
ZWUgd2l0aCB0aGUgYXBwcm9hY2guCj4gPiAKPiA+IE9uZSBxdWVzdGlvbiwgdGhvdWdoOiBkaWQg
eW91IHRlc3QgdGhpcyB3aXRoIGRldmljZXMgd2l0aCBHZW4yLzMgc3BlZWRzPyBUaGUKPiA+IE1h
cnZlbGwgV2lGaSBtb2R1bGUgb24gbXkgRVZLIGJvYXJkIG9ubHkgbGlua3Mgd2l0aCBHZW4xLCB3
aGlsZSBpdCBjbGFpbXMKPiA+IEdlbjIgc3BlZWQgaW4gdGhlIExua0NhcCByZWdpc3Rlci4gSG93
ZXZlciwgaXQgZG9lcyBzZWVtIHRvIGNvbWUgdXAgd2l0aAo+ID4gR2VuMSBhcyB0aGUgdGFyZ2V0
IGxpbmsgc3BlZWQgaW4gTG5rQ3RsMiwgc28gbWF5YmUgdGhlIGRldmljZSBpcyBhdCBmYXVsdCBo
ZXJlLgo+IEhpIEx1Y2FzOgo+IFRoYW5rcyBmb3IgeW91ciBoZWxwIG9uIHRoaXMgc2VyaWVzLgo+
IEknbSBhZ3JlZSB3aXRoIHlvdXIgYXBwcm9hY2gsIGFuZCBsZXQgYmxrLWN0cmwgZHJpdmVyIGRv
IHRoZSBoc2lvbWl4IHJlc2V0cy4KPiBDYW4gSSBpbmNsdWRlIHRoZSAjMSBwYXRjaCBpbnRvIHRo
aXMgc2VyaWVzLCBhbmQgcmViYXNlIHRoZSAyIyBmaXh1cCEgcGF0Y2gKPiDCoGludG8gdGhlIHBo
eSBjaGFuZ2VzIHBhdGNoIHdpdGggeW91ciBzaWduLW9mZj8KPiAKU3VyZSwgdGhhdCdzIHdoeSBJ
IHNlbnQgdGhlbSB0aGlzIHdheS4gRmVlbCBmcmVlIHRvIGluY2x1ZGUgdGhlbSBpbgp5b3VyIHNl
cmllcyB3aXRoIG15IHNpZ24tb2ZmLgoKPiBZZXMsIEkgZGlkIHRoZSBHZW4zIE5WRU0gZGV2aWNl
IHRlc3RzIG9uIGkuTVg4TVAgRVZLIGJvYXJkLgo+IFRoZSBHZW4zIHdvcmtzIGZpbmUuCj4gTG9n
czoKPiAiCj4gWyAgICAxLjgwODAzM10gcGh5IHBoeS0zMmYwMDAwMC5wY2llLXBoeS4xOiBwaHlf
cG93ZXJfb24gd2FzIGNhbGxlZCBiZWZvcmUgcGh5X2luaXQKPiBbICAgIDEuODIyNjA5XSBpbXg2
cS1wY2llIDMzODAwMDAwLnBjaWU6IGlBVFUgdW5yb2xsOiBlbmFibGVkCj4gWyAgICAxLjgzNjYy
MF0gaW14NnEtcGNpZSAzMzgwMDAwMC5wY2llOiBpQVRVIHJlZ2lvbnM6IDQgb2IsIDQgaWIsIGFs
aWduIDY0SywgbGltaXQgMTZHCj4gWyAgICAxLjk1MDQyN10gaW14NnEtcGNpZSAzMzgwMDAwMC5w
Y2llOiBQQ0llIEdlbi4xIHgxIGxpbmsgdXAKPiBbICAgIDIuMDU4MTM4XSBpbXg2cS1wY2llIDMz
ODAwMDAwLnBjaWU6IFBDSWUgR2VuLjMgeDEgbGluayB1cAo+IFsgICAgMi4wNjM3MzFdIGlteDZx
LXBjaWUgMzM4MDAwMDAucGNpZTogTGluayB1cCwgR2VuMwo+IFsgICAgMi4wNjg2MTldIGlteDZx
LXBjaWUgMzM4MDAwMDAucGNpZTogUENJZSBHZW4uMyB4MSBsaW5rIHVwCj4gIgpUaGFua3MgZm9y
IHRoZSBjb25maXJtYXRpb24uCgpBbHNvIGNhbiB5b3UgcGxlYXNlIHJlb3JkZXIgdGhlIHNlcmll
cywgdG8gaGF2ZSB0aGUgRFQgY2hhbmdlcyBhdCB0aGUKZW5kPwoKUmVnYXJkcywKTHVjYXMKCj4g
Cj4gQmVzdCBSZWdhcmRzCj4gUmljaGFyZCBaaHUKPiA+IAo+ID4gUmVnYXJkcywKPiA+IEx1Y2Fz
Cj4gPiAKPiA+IEFtIE1vbnRhZywgZGVtIDI5LjA4LjIwMjIgdW0gMTY6MTUgKzA4MDAgc2Nocmll
YiBSaWNoYXJkIFpodToKPiA+ID4gQmFzZWQgb24gdGhlIDYuMC1yYzEgb2YgdGhlIHBjaS9uZXh0
IGJyYW5jaC4KPiA+ID4gVGhpcyBzZXJpZXMgYWRkcyB0aGUgaS5NWDhNUCBQQ0llIHN1cHBvcnQg
YW5kIHRlc3RlZCBvbiBpLk1YOE1QIEVWSwo+ID4gPiBib2FyZCB3aGVuIG9uZSBQQ0llIE5WTUUg
ZGV2aWNlIGlzIHVzZWQuCj4gPiA+IAo+ID4gPiAtIGkuTVg4TVAgUENJZSBoYXMgcmV2ZXJzZWQg
aW5pdGlhbCBQRVJTVCBiaXQgdmFsdWUgcmVmZXIgdG8KPiA+IGkuTVg4TVEvaS5NWDhNTS4KPiA+
ID4gwqDCoEFkZCB0aGUgUEhZIFBFUlNUIGV4cGxpY2l0bHkgZm9yIGkuTVg4TVAgUENJZSBQSFku
Cj4gPiA+IC0gQWRkIHRoZSBpLk1YOE1QIFBDSWUgUEhZIHN1cHBvcnQgaW4gdGhlIGkuTVg4TSBQ
Q0llIFBIWSBkcml2ZXIuCj4gPiA+IMKgwqBBbmQgc2hhcmUgYXMgbXVjaCBhcyBwb3NzaWJsZSBj
b2RlcyB3aXRoIGkuTVg4TU0gUENJZSBQSFkuCj4gPiA+IC0gQWRkIHRoZSBpLk1YOE1QIFBDSWUg
c3VwcG9ydCBpbiBiaW5kaW5nIGRvY3VtZW50LCBEVFMgZmlsZXMsIGFuZCBQQ0llCj4gPiA+IMKg
wqBkcml2ZXIuCj4gPiA+IAo+ID4gPiBNYWluIGNoYW5nZXMgdjMtLT52NDoKPiA+ID4gLSBSZWdh
cmRpbmcgUGhpbGxpcCdzIHN1Z2dlc3Rpb25zLCBhZGQgZml4IHRhZyBpbnRvIHRoZSBmaXJzdCBj
b21taXQuCj4gPiA+IC0gQWRkIFJldmlld2VkIGFuZCBUZXN0ZWQgdGFncy4KPiA+ID4gCj4gPiA+
IE1haW4gY2hhbmdlcyB2Mi0tPnYzOgo+ID4gPiAtIEZpeCB0aGUgc2NoZW1hIGNoZWNraW5nIGVy
cm9yIGluIHRoZSBQSFkgZHQtYmluZGluZyBwYXRjaC4KPiA+ID4gLSBJbnNwaXJlZCBieSBMdWNh
cywgdGhlIFBMTCBjb25maWd1cmF0aW9ucyBtaWdodCBub3QgcmVxdWlyZWQgd2hlbgo+ID4gPiDC
oMKgZXh0ZXJuYWwgT1NDIGlzIHVzZWQgYXMgUENJZSByZWZlcnJlbmNlIGNsb2NrLiBJdCdzIHRy
dWUuIFJlbW92ZSBhbGwKPiA+ID4gwqDCoHRoZSBIU0lPIFBMTCBiaXQgbWFuaXB1bGF0aW9ucywg
YW5kIFBDSWUgd29ya3MgZmluZSBvbiBpLk1YOE1QIEVWSwo+ID4gYm9hcmQKPiA+ID4gwqDCoHdp
dGggb25lIE5WTUUgZGV2aWNlIGlzIHVzZWQuCj4gPiA+IC0gRHJvcCB0aGUgIzQgcGF0Y2ggb2Yg
djIsIHNpbmNlIGl0IGhhZCBiZWVuIGFwcGxpZWQgYnkgUm9iLgo+ID4gPiAKPiA+ID4gTWFpbiBj
aGFuZ2VzIHYxLS0+djI6Cj4gPiA+IC0gSXQncyBteSBmYXVsdCBmb3JnZXQgaW5jbHVkaW5nIFZp
bm9kLCByZS1zZW5kIHYyIGFmdGVyIGluY2x1ZGUgVmlub2QKPiA+ID4gwqDCoGFuZCBsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZy4KPiA+ID4gLSBMaXN0IHRoZSBiYXNlbWVudHMgb2YgdGhp
cyBwYXRjaC1zZXQuIFRoZSBicmFuY2gsIGNvZGVzIGNoYW5nZXMgYW5kIHNvIG9uLgo+ID4gPiAt
IENsZWFuIHVwIHNvbWUgdXNlbGVzcyByZWdpc3RlciBhbmQgYml0IGRlZmluaXRpb25zIGluICMz
IHBhdGNoLgo+ID4gPiAKPiA+ID4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9mc2wsaW14OC1wY2llLXBoeS55YW1sIHwgIDE2Cj4gPiArKysrKysrLS0KPiA+ID4gYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLWV2ay5kdHMgICAgICAgICAgICAgICAgIHwg
IDUzCj4gPiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiBhcmNoL2FybTY0L2Jv
b3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRzaSAgICAgICAgICAgICAgICAgICAgfCAgNDYKPiA+
ICsrKysrKysrKysrKysrKysrKysrKysrKy0KPiA+ID4gZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpLWlteDYuYyAgICAgICAgICAgICAgICAgICAgICAgIHwgIDE3Cj4gPiArKysrKysrKyst
Cj4gPiA+IGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtLXBjaWUuYyAgICAgICAg
ICAgICAgICAgICB8IDE1MAo+ID4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrLS0tLS0tLQo+ID4gLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiA+
IGRyaXZlcnMvcmVzZXQvcmVzZXQtaW14Ny5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgMSArCj4gPiA+IDYgZmlsZXMgY2hhbmdlZCwgMjMyIGluc2VydGlvbnMoKyksIDUx
IGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gW1BBVENIIHY0IDEvNl0gcmVzZXQ6IGlteDc6IEZp
eCB0aGUgaU1YOE1QIFBDSWUgUEhZIFBFUlNUIHN1cHBvcnQKPiA+ID4gW1BBVENIIHY0IDIvNl0g
ZHQtYmluZGluZzogcGh5OiBBZGQgaU1YOE1QIFBDSWUgUEhZIGJpbmRpbmcgW1BBVENIIHY0Cj4g
PiA+IDMvNl0gcGh5OiBmcmVlc2NhbGU6IGlteDhtLXBjaWU6IEFkZCBpTVg4TVAgUENJZSBQSFkg
W1BBVENIIHY0IDQvNl0KPiA+ID4gYXJtNjQ6IGR0czogaW14OG1wOiBBZGQgaU1YOE1QIFBDSWUg
c3VwcG9ydCBbUEFUQ0ggdjQgNS82XSBhcm02NDogZHRzOgo+ID4gPiBpbXg4bXAtZXZrOiBBZGQg
UENJZSBzdXBwb3J0IFtQQVRDSCB2NCA2LzZdIFBDSTogaW14NjogQWRkIGlNWDhNUCBQQ0llCj4g
PiA+IHN1cHBvcnQKPiA+IAo+IAoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
