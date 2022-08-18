Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C23B6C00140
	for <linux-phy@archiver.kernel.org>; Thu, 18 Aug 2022 11:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjKpDAvbsDC3PiJDdycSxWAZJfWauQ/AJ7UzochLsu0=; b=GIltBmj8jRjiEI
	SG7NZ0qiDTuEMoKIMmsVU19x/rrwXhsGxLjo8r1JPW6t5BdVf2MIy3IZQdotEoHOVLikhfp08FP0F
	f83lJJcd5aoRCuCCrRoDTnwsV+oAl4oN74gwpcPq28zOTrDkPwRpHbntM80bqyuW0ZeEJdtfCOCok
	Z3ycARDq54yMTocJA5Mak2NRelLYJLfL52njkLbtKCryiEYm/Bq+5gvvUuCPM8iNEsYzIhQ6tnWcc
	/nnhpYrvyq4dvkE4Flt097MGqFPrKI8c3Wt8AMZOuhTKOWsv3k/0gcA0VbctrHTddElg1a/6o9Vks
	itU8oPdZ3/X67tLd6phQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOe21-0040Fb-4k; Thu, 18 Aug 2022 11:49:49 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOe1p-00406X-Nz; Thu, 18 Aug 2022 11:49:39 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 201D684AD1;
	Thu, 18 Aug 2022 13:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1660823376;
	bh=WQ7yFrQ43wD2Xkn26HybdsHzAjFarYakjSFUugC018Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=vZDJ1fJAUFbWwzww70/2p9YtQEUDjkybt/5NKA8MGGL0xZ1DXdx8R/OwD/6avok0D
	 HSNAacSM4iumUbfKWf7LQuGe5eRkuxTCRRzXBm0HZk6V5nVlkoSiJMDk1nT0llmBya
	 9lHUCoEqo3ZGQ/FbraGhW6WNhxBIHsfWw1q2q/XJ2zB03WeBQzKqkDHl/xi+iSJswU
	 3MMi1HFnJmUmkmf63iU9t7PUCWIvVcCk0yIxz41Dcd5RQ1Hki1E6yyEsptF1i0n7hS
	 nbUodWhvuNkixEWY81SSW0PsexFf9IzbAfLbfrmAWBVHpLyLwQ5+JjZdTO7RaMxrhc
	 v74Pxqt8adMww==
Message-ID: <05dcf1a0-067a-ed50-b07d-b796d22e7b7b@denx.de>
Date: Thu, 18 Aug 2022 13:49:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v3 0/6] Add the iMX8MP PCIe support
To: Hongxing Zhu <hongxing.zhu@nxp.com>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>
References: <1660806153-29001-1-git-send-email-hongxing.zhu@nxp.com>
 <2afdb802-9a86-8313-ebfa-9f2fee7e0023@denx.de>
 <AS8PR04MB8676D575ED7FD81B0451BD028C6D9@AS8PR04MB8676.eurprd04.prod.outlook.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <AS8PR04MB8676D575ED7FD81B0451BD028C6D9@AS8PR04MB8676.eurprd04.prod.outlook.com>
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_044938_216003_7878A1FA 
X-CRM114-Status: GOOD (  12.65  )
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

T24gOC8xOC8yMiAxMjo1MywgSG9uZ3hpbmcgWmh1IHdyb3RlOgo+PiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+PiBGcm9tOiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4KPj4gU2VudDog
MjAyMuW5tDjmnIgxOOaXpSAxNzoyMAo+PiBUbzogSG9uZ3hpbmcgWmh1IDxob25neGluZy56aHVA
bnhwLmNvbT47IHAuemFiZWxAcGVuZ3V0cm9uaXguZGU7Cj4+IGwuc3RhY2hAcGVuZ3V0cm9uaXgu
ZGU7IGJoZWxnYWFzQGdvb2dsZS5jb207IGxvcmVuem8ucGllcmFsaXNpQGFybS5jb207Cj4+IHJv
YmhAa2VybmVsLm9yZzsgc2hhd25ndW9Aa2VybmVsLm9yZzsgdmtvdWxAa2VybmVsLm9yZzsKPj4g
YWxleGFuZGVyLnN0ZWluQGV3LnRxLWdyb3VwLmNvbQo+PiBDYzogbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmc7IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOwo+PiBsaW51eC1wY2lAdmdl
ci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7Cj4+IGxp
bnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGtlcm5lbEBwZW5ndXRyb25peC5kZTsgZGwtbGlu
dXgtaW14Cj4+IDxsaW51eC1pbXhAbnhwLmNvbT4KPj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MyAw
LzZdIEFkZCB0aGUgaU1YOE1QIFBDSWUgc3VwcG9ydAo+Pgo+PiBPbiA4LzE4LzIyIDA5OjAyLCBS
aWNoYXJkIFpodSB3cm90ZToKPj4+IEJhc2VkIG9uIHRoZSA2LjAtcmMxIG9mIHRoZSBwY2kvbmV4
dCBicmFuY2guCj4+PiBUaGlzIHNlcmllcyBhZGRzIHRoZSBpLk1YOE1QIFBDSWUgc3VwcG9ydCBh
bmQgaGFkIGJlZW4gdGVzdGVkIG9uCj4+PiBpLk1YOE1QIEVWSyBib2FyZCB3aGVuIG9uZSBQQ0ll
IE5WTUUgZGV2aWNlIGlzIHVzZWQuCj4+Pgo+Pj4gLSBpLk1YOE1QIFBDSWUgaGFzIHJldmVyc2Vk
IGluaXRpYWwgUEVSU1QgYml0IHZhbHVlIHJlZmVyIHRvCj4+IGkuTVg4TVEvaS5NWDhNTS4KPj4+
ICAgICBBZGQgdGhlIFBIWSBQRVJTVCBleHBsaWNpdGx5IGZvciBpLk1YOE1QIFBDSWUgUEhZLgo+
Pj4gLSBBZGQgdGhlIGkuTVg4TVAgUENJZSBQSFkgc3VwcG9ydCBpbiB0aGUgaS5NWDhNIFBDSWUg
UEhZIGRyaXZlci4KPj4+ICAgICBBbmQgc2hhcmUgYXMgbXVjaCBhcyBwb3NzaWJsZSBjb2RlcyB3
aXRoIGkuTVg4TU0gUENJZSBQSFkuCj4+PiAtIEFkZCB0aGUgaS5NWDhNUCBQQ0llIHN1cHBvcnQg
aW4gYmluZGluZyBkb2N1bWVudCwgRFRTIGZpbGVzLCBhbmQgUENJZQo+Pj4gICAgIGRyaXZlci4K
Pj4+Cj4+PiBNYWluIGNoYW5nZXMgdjItLT52MzoKPj4+IC0gRml4IHRoZSBzY2hlbWEgY2hlY2tp
bmcgZXJyb3IgaW4gdGhlIFBIWSBkdC1iaW5kaW5nIHBhdGNoLgo+Pj4gLSBJbnNwaXJlZCBieSBM
dWNhcywgdGhlIFBMTCBjb25maWd1cmF0aW9ucyBtaWdodCBub3QgcmVxdWlyZWQgd2hlbgo+Pj4g
ICAgIGV4dGVybmFsIE9TQyBpcyB1c2VkIGFzIFBDSWUgcmVmZXJyZW5jZSBjbG9jay4gSXQncyB0
cnVlLiBSZW1vdmUgYWxsCj4+PiAgICAgdGhlIEhTSU8gUExMIGJpdCBtYW5pcHVsYXRpb25zLCBh
bmQgUENJZSB3b3JrcyBmaW5lIG9uIGkuTVg4TVAgRVZLCj4+IGJvYXJkCj4+PiAgICAgd2l0aCBv
bmUgTlZNRSBkZXZpY2UgaXMgdXNlZC4KPj4+IC0gRHJvcCB0aGUgIzQgcGF0Y2ggb2YgdjIsIHNp
bmNlIGl0IGhhZCBiZWVuIGFwcGxpZWQgYnkgUm9iLgo+Pj4KPj4+IE1haW4gY2hhbmdlcyB2MS0t
PnYyOgo+Pj4gLSBJdCdzIG15IGZhdWx0IGZvcmdldCBpbmNsdWRpbmcgVmlub2QsIHJlLXNlbmQg
djIgYWZ0ZXIgaW5jbHVkZSBWaW5vZAo+Pj4gICAgIGFuZCBsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZy4KPj4+IC0gTGlzdCB0aGUgYmFzZW1lbnRzIG9mIHRoaXMgcGF0Y2gtc2V0LiBUaGUg
YnJhbmNoLCBjb2RlcyBjaGFuZ2VzIGFuZCBzbyBvbi4KPj4+IC0gQ2xlYW4gdXAgc29tZSB1c2Vs
ZXNzIHJlZ2lzdGVyIGFuZCBiaXQgZGVmaW5pdGlvbnMgaW4gIzMgcGF0Y2guCj4+Pgo+Pj4gRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9mc2wsaW14OC1wY2llLXBoeS55YW1s
IHwgIDE2Cj4+ICsrKysrKystLQo+Pj4gYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14
OG1wLWV2ay5kdHMgICAgICAgICAgICAgICAgIHwgIDUzCj4+ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrCj4+PiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRzaSAg
ICAgICAgICAgICAgICAgICAgfCAgNDYKPj4gKysrKysrKysrKysrKysrKysrKysrKysrLQo+Pj4g
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWlteDYuYyAgICAgICAgICAgICAgICAgICAg
ICAgIHwgIDE3Cj4+ICsrKysrKysrKy0KPj4+IGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNs
LWlteDhtLXBjaWUuYyAgICAgICAgICAgICAgICAgICB8IDE1MAo+PiArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tCj4+IC0tLS0t
LS0tLS0tLS0tLS0tLQo+Pj4gZHJpdmVycy9yZXNldC9yZXNldC1pbXg3LmMgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPj4+IDYgZmlsZXMgY2hhbmdlZCwgMjMyIGlu
c2VydGlvbnMoKyksIDUxIGRlbGV0aW9ucygtKQo+Pgo+PiBGb3IgdGhlIGVudGlyZSBzZXJpZXM6
Cj4+Cj4+IFRlc3RlZC1ieTogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+Cj4+Cj4gSGkgTWFy
ZWs6Cj4gVGhhbmtzIGZvciB5b3VyIGtpbmRseSBoZWxwIHRvIHRlc3QgaXQuCgpHbGFkbHkuIFRo
YW5rIHlvdSBmb3IgeW91ciBjb250aW51ZWQgZWZmb3J0IC4KCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
