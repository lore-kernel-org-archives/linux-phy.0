Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF38DECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 14:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1bVAPw2YOdwh0qU4OxrRRpw64reDy/eM8Tekb++4Fw=; b=t2X5XlfzoSsp3s
	g6UDiLFWSWbpwkWuWIAdqnRK9MsH8v+wp/+zThsTCahcgEKKeGP9ykeLNepjhigjKYUVwL2tscVPe
	j4IoXAyyrBCC6o+g2O6+Q/np5nV0lkmh/qbgBnVT9qc26MZ1bICt+X7UuJkzjmI7ox4XzE1nnwZrd
	FK6mC8CD+eKHFyKLFx8IKoB6twdNMhtt/bFUKf6NL01PNa8IGPKGqz6/TWoMrJ7xPMuYV6JO6bCLm
	NNTOz6iDW6VRor8V1a4nn1KHCU4fSYoiFEocXzPKeokh3fPc3LQ5iwocXueriF2cI5uKTo6Ga7vcs
	k+/ZppaYJFOLp2Mru/NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omytM-0020lZ-8P; Mon, 24 Oct 2022 14:57:28 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omyt7-0020gF-MS; Mon, 24 Oct 2022 14:57:15 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1666623425; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UM5dIx/4JCtgw2pFhQX2FBPell4w0p3prcLhJ9Xl8sjeSXdWck/11kv1VO2BUVt+aCtGYRRciHNJIrgTrlby8I9vLnAaLfSS/d6zh4XmNOIE7GHYUZAOTnZtYjxUngHy5AzMLimaY2xyQHrG02P5e56cPCmmRpa3BZc+CrI0Q08=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1666623425; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=QQUAzeD8aKn6vfQ4194+hXQmHVFhvbqRGZcAWeeulV0=; 
	b=dny98F8sv/tEnWGIyk1FvKy5TgekX+a2+On5B8f1l6cpzMJbxa9AhmykRY7WiE2n3i/Q2CmgbwfV8eV5v3USQ28IwpWzRYgoyhw/eQkGw2fvvE5/pB2S8kWHcmq9Hf15xvSWb2/mvH08fTlNQGK/zCYumcVb0+uTUFunxNlHtTU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1666623425;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:References:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=QQUAzeD8aKn6vfQ4194+hXQmHVFhvbqRGZcAWeeulV0=;
	b=KxJWw+/g6vGuWJ4PSVZbgXj526uXN3Ma0OsdySm9orcLSgPdqC0eRBgIbBq9J/Cz
	gyDQY3k5WVd0lRTv7bGajO6tXeWRK63IeNRzMrLvTOEn2cdWWkkLwytO+hYWnobC0FQ
	jFEds1m9444cO7ioPsn2D+ZC3gm6xlqUs98QfMTo=
Received: from edelgard.fodlan.icenowy.me (112.94.102.105 [112.94.102.105]) by mx.zohomail.com
	with SMTPS id 1666623423433294.70361609256247; Mon, 24 Oct 2022 07:57:03 -0700 (PDT)
Message-ID: <0612c54fd441585141d37ecbc8508d412b3c3a14.camel@icenowy.me>
Subject: Re: [PATCH v2 06/10] ARM: suniv: add USB-related device nodes
From: Icenowy Zheng <uwu@icenowy.me>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, soc@kernel.org,
 linux-kernel@vger.kernel.org,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org,  linux-usb@vger.kernel.org
Date: Mon, 24 Oct 2022 22:56:58 +0800
In-Reply-To: <20221024151643.23217a25@donnerap.cambridge.arm.com>
References: <20221012055602.1544944-1-uwu@icenowy.me>
	 <20221012055602.1544944-7-uwu@icenowy.me>
	 <20221024151643.23217a25@donnerap.cambridge.arm.com>
Organization: Anthon Open-Source Community
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_075713_781284_EC5EB179 
X-CRM114-Status: GOOD (  20.83  )
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

5ZyoIDIwMjItMTAtMjTmmJ/mnJ/kuIDnmoQgMTU6MTYgKzAxMDDvvIxBbmRyZSBQcnp5d2FyYeWG
memBk++8mgo+IE9uIFdlZCwgMTIgT2N0IDIwMjIgMTM6NTU6NTggKzA4MDAKPiBJY2Vub3d5IFpo
ZW5nIDx1d3VAaWNlbm93eS5tZT4gd3JvdGU6Cj4gCj4gSGksCj4gCj4gPiBUaGUgc3VuaXYgU29D
IGhhcyBhIFVTQiBPVEcgY29udHJvbGxlciBhbmQgYSBVU0IgUEhZIGxpa2Ugb3RoZXIKPiA+IEFs
bHdpbm5lciBTb0NzLgo+ID4gCj4gPiBBZGQgdGhlaXIgZGV2aWNlIHRyZWUgbm9kZS4KPiAKPiBM
b29rcyBhbHJpZ2h0IHRvIG1lLCBjaGVja2VkIGFnYWluc3QgdGhlIG1hbnVhbCwgYWxzbyBjb21w
YXJlZAo+IGFnYWluc3QKPiBzb21lIG90aGVyIEFsbHdpbm5lciBVU0IgRFQgbm9kZXMuIEFsc28g
cGFzc2VzIHRoZSBiaW5kaW5nIGFuZCBEVEIKPiBjaGVja3MuCj4gCj4gSnVzdCBvbmUgc21hbGwg
cXVlc3Rpb24gYmVsb3csIGJ1dCBuZXZlcnRoZWxlc3M6Cj4gCj4gUmV2aWV3ZWQtYnk6IEFuZHJl
IFByenl3YXJhIDxhbmRyZS5wcnp5d2FyYUBhcm0uY29tPgo+IAo+ID4gU2lnbmVkLW9mZi1ieTog
SWNlbm93eSBaaGVuZyA8dXd1QGljZW5vd3kubWU+Cj4gPiAtLS0KPiA+IE5vIGNoYW5nZXMgc2lu
Y2UgdjEuCj4gPiAKPiA+IMKgYXJjaC9hcm0vYm9vdC9kdHMvc3VuaXYtZjFjMTAwcy5kdHNpIHwg
MjYKPiA+ICsrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAy
NiBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9z
dW5pdi1mMWMxMDBzLmR0c2kKPiA+IGIvYXJjaC9hcm0vYm9vdC9kdHMvc3VuaXYtZjFjMTAwcy5k
dHNpCj4gPiBpbmRleCAwZWRjMTcyNDQwN2IuLmEwMTU0MWJhNDJjNSAxMDA2NDQKPiA+IC0tLSBh
L2FyY2gvYXJtL2Jvb3QvZHRzL3N1bml2LWYxYzEwMHMuZHRzaQo+ID4gKysrIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvc3VuaXYtZjFjMTAwcy5kdHNpCj4gPiBAQCAtMTMzLDYgKzEzMywzMiBAQCBtbWMx
OiBtbWNAMWMxMDAwMCB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAjc2l6ZS1jZWxscyA9IDwwPjsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgfTsKPiA+IMKgCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdXNi
X290ZzogdXNiQDFjMTMwMDAgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBjb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW5pdi1mMWMxMDBzLQo+ID4g
bXVzYiI7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHJlZyA9IDwweDAxYzEzMDAwIDB4MDQwMD47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNsb2NrcyA9IDwmY2N1IENMS19CVVNfT1RHPjsKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVzZXRzID0gPCZj
Y3UgUlNUX0JVU19PVEc+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpbnRlcnJ1cHRzID0gPDI2PjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZXJydXB0LW5hbWVzID0gIm1jIjsKPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGh5cyA9IDwmdXNicGh5
IDA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBw
aHktbmFtZXMgPSAidXNiIjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZXh0Y29uID0gPCZ1c2JwaHkgMD47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFsbHdpbm5lcixzcmFtID0gPCZvdGdfc3JhbSAx
PjsKPiAKPiBXaGF0IGlzIHRoaXMgIjEiIGZvcj8gSSBzZWUgaXQgYWxsIG92ZXIgdGhlIG90aGVy
IEFsbHdpbm5lciBTUkFNCj4gcHJvcGVydGllcywgYnV0IGNhbid0IGZpbmQgYW55IGRvY3VtZW50
YXRpb24gYWJvdXQgdGhhdCBudW1iZXIsIG5vcgo+IGNhbiBJCj4gc2VlIHRoYXQgaXQgd291bGQg
YmUgdXNlZCBpbiB0aGUgY29kZS4KCkl0IG1lYW5zIG1hcHBpbmcgdGhlIFNSQU0gdG8gZGVkaWNh
dGVkIGRldmljZSBpbnN0ZWFkIG9mIENQVS4KClRoaXMgaW5mb3JtYXRpb24gaXMgYXZhaWxhYmxl
IGluIHByZXZpb3VzIHN1bnhpLXNyYW0udHh0IGJpbmRpbmcsIGJ1dApsb3N0IHdoZW4gY29udmVy
dGluZyB0byBqc29uIHNjaGVtYSwgbWF5YmUgYmVjYXVzZSBpdCBkb2VzIG5vdCBmaXQgd2VsbApp
biBqc29uIHNjaGVtYS4KCj4gCj4gRG9lcyBhbnlvbmUga25vdz8KPiAKPiBDaGVlcnMsCj4gQW5k
cmUKPiAKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
c3RhdHVzID0gImRpc2FibGVkIjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9
Owo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHVzYnBoeTogcGh5QDFj
MTM0MDAgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBjb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW5pdi1mMWMxMDBzLXVzYi0KPiA+IHBoeSI7Cj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlZyA9IDww
eDAxYzEzNDAwIDB4MTA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqByZWctbmFtZXMgPSAicGh5X2N0cmwiOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjbG9ja3MgPSA8JmNjdSBDTEtfVVNCX1BIWTA+
Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjbG9j
ay1uYW1lcyA9ICJ1c2IwX3BoeSI7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJlc2V0cyA9IDwmY2N1IFJTVF9VU0JfUEhZMD47Cj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlc2V0LW5hbWVzID0gInVz
YjBfcmVzZXQiOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAjcGh5LWNlbGxzID0gPDE+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoH07Cj4gPiArCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGNjdTogY2xvY2tAMWMyMDAwMCB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBjb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW5pdi1mMWMxMDBz
LWNjdSI7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZWcgPSA8MHgwMWMyMDAwMCAweDQwMD47Cj4gCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
