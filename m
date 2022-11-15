Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1764C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 17:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eAKKoISXUkH1MpFctoJdb7KX19UmN+knqXp5ugFRnX4=; b=uoIHg5uJVjQ5Lc
	ryQC8ZoCaTipYY6R/HhaGGWw8xMXL3IgkWBDLt8N+4WyJKtnpon8vAuhdcMXBeP3eZexEorbRoc0t
	T+2NdfnLzl9SJ5Zc/NEDy12fDsovU83BAUG56JvtJTzj0Z6DYWINdEgL4eYV9pFD30BzWrWrPVeMD
	CWECqGAZE8aaqJzGKGe17zEwaN78PRTD4l9km0rVinFnUxzXSnw5OkAFkUNfR04rEVjz9AH8ArDKW
	gDyUEreLsT9cb2SIS+fxppl7aIikDeHWKM/ut8a/HO57X4GgCJE8wL9qsrThZfpqMNDbbRH7UyWZs
	3SvlMdeNigjOXoviXB1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ov0Bf-00DbKa-DU; Tue, 15 Nov 2022 17:57:31 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ov0BU-00DbHt-5w; Tue, 15 Nov 2022 17:57:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3662F13D5;
	Tue, 15 Nov 2022 09:57:19 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 023943F587;
	Tue, 15 Nov 2022 09:57:10 -0800 (PST)
Date: Tue, 15 Nov 2022 17:57:08 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Jernej =?UTF-8?B?xaBrcmFiZWM=?=
 <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>, Samuel Holland
 <samuel@sholland.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Icenowy Zheng <uwu@icenowy.me>,
 soc@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 03/11] phy: sun4i-usb: add support for the USB PHY on
 F1C100s SoC
Message-ID: <20221115175708.3e69dcd8@donnerap.cambridge.arm.com>
In-Reply-To: <e861e62f-4148-b867-0155-e71b1cee0b81@linaro.org>
References: <20221106154826.6687-1-andre.przywara@arm.com>
	<20221106154826.6687-4-andre.przywara@arm.com>
	<Y2ypy0CM8rJGu2g4@matsya>
	<4438485.LvFx2qVVIh@jernej-laptop>
	<52920a00-8e29-f7f4-0cbd-ceb638ded970@linaro.org>
	<20221115104426.20728ba5@donnerap.cambridge.arm.com>
	<4516dcfb-b928-d454-18a6-bd725f39cc24@linaro.org>
	<20221115161917.328ec91a@donnerap.cambridge.arm.com>
	<e861e62f-4148-b867-0155-e71b1cee0b81@linaro.org>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_095720_341740_A7B6449E 
X-CRM114-Status: GOOD (  37.81  )
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

T24gVHVlLCAxNSBOb3YgMjAyMiAxNzoyOTowOSArMDEwMApLcnp5c3p0b2YgS296bG93c2tpIDxr
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgoKSGksCgo+IE9uIDE1LzExLzIw
MjIgMTc6MTksIEFuZHJlIFByenl3YXJhIHdyb3RlOgo+ID4gT24gVHVlLCAxNSBOb3YgMjAyMiAx
NjowMDo1NCArMDEwMAo+ID4gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3Nr
aUBsaW5hcm8ub3JnPiB3cm90ZToKPiA+IAo+ID4gSGksCj4gPiAgIAo+ID4+IE9uIDE1LzExLzIw
MjIgMTE6NDQsIEFuZHJlIFByenl3YXJhIHdyb3RlOiAgCj4gPj4+IE9uIFR1ZSwgMTUgTm92IDIw
MjIgMTE6MDM6MjQgKzAxMDAKPiA+Pj4gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtv
emxvd3NraUBsaW5hcm8ub3JnPiB3cm90ZToKPiA+Pj4KPiA+Pj4gSGksCj4gPj4+ICAgICAKPiA+
Pj4+IE9uIDE1LzExLzIwMjIgMDc6MDEsIEplcm5laiDFoGtyYWJlYyB3cm90ZTogICAgCj4gPj4+
Pj4gRG5lIMSNZXRydGVrLCAxMC4gbm92ZW1iZXIgMjAyMiBvYiAwODozNTozOSBDRVQgamUgVmlu
b2QgS291bCBuYXBpc2FsKGEpOiAgICAgIAo+ID4+Pj4+PiBPbiAwNi0xMS0yMiwgMTU6NDgsIEFu
ZHJlIFByenl3YXJhIHdyb3RlOiAgICAgIAo+ID4+Pj4+Pj4gRnJvbTogSWNlbm93eSBaaGVuZyA8
dXd1QGljZW5vd3kubWU+Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gVGhlIEYxQzEwMHMgU29DIGhhcyBv
bmUgVVNCIE9URyBwb3J0IGNvbm5lY3RlZCB0byBhIE1VU0IgY29udHJvbGxlci4KPiA+Pj4+Pj4+
Cj4gPj4+Pj4+PiBBZGQgc3VwcG9ydCBmb3IgaXRzIFVTQiBQSFkuICAgICAgCj4gPj4+Pj4+Cj4g
Pj4+Pj4+IFRoaXMgZG9lcyBub3QgYXBwbHkgZm9yIG1lLCBwbGVhc2UgcmViYXNlIGFuZCByZXNl
bmQKPiA+Pj4+Pj4KPiA+Pj4+Pj4gQWxzbywgY29uc2lkZXIgc3BsaXR0aW5nIHBoeSBwYXRjaGVz
IGZyb20gdGhpcy4gSSBkb250IHRoaW5rIHRoZXJlIGlzCj4gPj4+Pj4+IGFueSBkZXBlbmRlbmN5
ICAgICAgCj4gPj4+Pj4KPiA+Pj4+PiBEVCBwYXRjaGVzIGluIHRoaXMgc2VyaWVzIGRlcGVuZCBv
biBmdW5jdGlvbmFsaXR5IGFkZGVkIGhlcmUuCj4gPj4+Pj4gICAgICAgCj4gPj4+Pgo+ID4+Pj4g
RFRTIGFsd2F5cyBnb2VzIHNlcGFyYXRlbHkgZnJvbSBkcml2ZXIgY2hhbmdlcyBiZWNhdXNlIGl0
IGlzIGEgaGFyZHdhcmUKPiA+Pj4+IGRlc2NyaXB0aW9uLiBEZXBlbmRpbmcgb24gZHJpdmVyIG1l
YW5zIHlvdSBoYXZlIHBvdGVudGlhbCBBQkkgYnJlYWssIHNvCj4gPj4+PiBpdCBpcyBhbHJlYWR5
IGEgd2FybmluZyBzaWduLiAgICAKPiA+Pj4KPiA+Pj4gV2UgdW5kZXJzdGFuZCB0aGF0IDstKQo+
ID4+PiBXaGF0IEplcm5laiBtZWFudCB3YXMgdGhhdCB0aGUgRFRTIHBhdGNoZXMgYXQgdGhlIGVu
ZCBkZXBlbmQgb24gcGF0Y2gKPiA+Pj4gMDEvMTAsIHdoaWNoIGFkZHMgdG8gdGhlIFBIWSBiaW5k
aW5nIGRvYy4gSSBhbSBub3Qgc3VyZSBpZiBWaW5vZCdzCj4gPj4+IHN1Z2dlc3Rpb24gd2FzIGFi
b3V0IHNwbGl0dGluZyBvZmYgMDEvMTAsIDAzLzEwLCBhbmQgMTAvMTAsIG9yIGp1c3QgdGhlCj4g
Pj4+IHR3byBsYXR0ZXIgd2hpY2ggdG91Y2ggdGhlIGRyaXZlci4KPiA+Pj4KPiA+Pj4gSSBjYW4g
c3BsaXQgb2ZmIDAzLzEwIGFuZCAxMC8xMCwgcmViYXNlZCBvbiB0b3Agb2YgbGludXgtcGh5Lmdp
dC9uZXh0LCBhbmQKPiA+Pj4gc2VuZCB0aGF0IHRvIFZpbm9kLgo+ID4+PiBUaGVuIEkgd291bGQg
a2VlcCAwMS8xMCBpbiBhIHJlc3BpbiBvZiB0aGlzIHNlcmllcyBoZXJlLCB0byBzYXRpc2Z5IHRo
ZQo+ID4+PiBkZXBlbmRlbmN5IG9mIHRoZSBsYXRlciBEVFMgcGF0Y2hlcywgYW5kIFZpbm9kIGNh
biBwaWNrIHRoYXQgb25lIHBhdGNoIGZyb20KPiA+Pj4gdGhlcmU/ICAgIAo+ID4+Cj4gPj4gVGhl
cmUgaXMgbm8gaGFyZCBkZXBlbmRlbmN5IG9mIERUUyBvbiBiaW5kaW5ncy4gWW91IGNhbiBzcGxp
dCB0aGVzZSAoYW5kCj4gPj4gc29tZSBtYWludGFpbmVycyBwcmVmZXIgdGhhdCB3YXkpIGFuZCBp
biBEVFMgcGF0Y2hlcyBqdXN0IHByb3ZpZGUgdGhlCj4gPj4gbGluayB0byB0aGUgYmluZGluZ3Ms
IHNheWluZyBpdCBpcyBpbiBwcm9ncmVzcy4gIAo+ID4gCj4gPiBCdXQgdGhhdCBicmVha3MgIm1h
a2UgZHRic19jaGVjayIsIGRvZXNuJ3QgaXQ/ICAKPiAKPiBUaGUgY2hlY2sgd2lsbCBiZSBicm9r
ZW4gYW55d2F5IGJlY2F1c2UgYmluZGluZyBnb2VzIHZpYSBkcml2ZXIKPiBzdWJzeXN0ZW0gYW5k
IERUUyBnb2VzIHZpYSBhcm0tc29jLgo+IAo+IElmIGJvdGggbWFrZSB0byB0aGUgbGludXgtbmV4
dCBhbmQgbmV4dCByZWxlYXNlLCB0aGVuIGl0J3Mgbm90IGEgcHJvYmxlbS4KPiAKPiA+IAo+ID4g
SSB3b3VsZCB0aGluayB0aGF0IHRoZSBEVCBiaXRzIC0gYmluZGluZ3MgZmlyc3QsIHRoZW4gRFRT
IGZpbGVzIHVzaW5nIGl0IC0KPiA+IHNob3VsZCBiZSBidW5kbGVkLiBUaGlzIGlzIGhvdyBJIGlt
YWdpbmUgdGhlIGZ1dHVyZShUTSksIHdoZXJlIERUcyBhbmQKPiA+IGJpbmRpbmdzIGxpdmUgb3V0
c2lkZSB0aGUga2VybmVsIHJlcG8uICAKPiAKPiBZZXMsIHRoYXQncyBwcmVmZXJyZWQuIFRoZXJl
Zm9yZSBpbiBEVFMgcGF0Y2ggeW91IHNheSB0aGUgYmluZGluZyBpcyBub3QKPiBtZXJnZWQgYW5k
IGl0IGlzIGhlcmUgLSBsb3JlIGxpbmsuCj4gCj4gPiAgIAo+ID4+IFRoZSBiaW5kaW5ncyBzaG91
bGQgYmUgaG93ZXZlciBrZXB0IHdpdGggZHJpdmVyIGNoYW5nZXMgYXMgaXQgZ29lcyB0aGUKPiA+
PiBzYW1lIHdheS4gIAo+ID4gCj4gPiBJIHVuZGVyc3RhbmQgdGhhdCB0aGUgYmluZGluZ3MgZGVz
Y3JpYmUgdGhlIGNvbnRyYWN0IHRoZSBkcml2ZXIgYWN0cyBvbiwKPiA+IGJ1dCBnb2luZyBmb3J3
YXJkIEkgdGhpbmsgZHJpdmVyIGNoYW5nZXMgd291bGQgbmVlZCB0byBjb21lIGxhdGVyLCB0aGVu
Cj4gPiAoc2luY2UgdGhleSB3aWxsIGxpdmUgaW4gYSBzZXBhcmF0ZSByZXBvIGF0IHNvbWUgZGF5
KT8KPiA+IE1heWJlIHBvaW50aW5nIHRvIHRoZSBiaW5kaW5nIGNoYW5nZXMgaW4gcHJvZ3Jlc3M/
ICAKPiAKPiBMYXRlciBhcyBvbmUgY29tbWl0IGxhdGVyIC0geWVzLiBMYXRlciBhcyBvdGhlciBv
cHRpb24gLSBub3QgcmVhbGx5LCB3aHk/Cj4gCj4gPiBTbyB3aXRoIGEgc2VwYXJhdGUgcmVwbyB3
ZSB3b3VsZCBhY3R1YWxseSBuZWVkIHRvIHVwc3RyZWFtIGp1c3QgdGhlCj4gPiBiaW5kaW5ncyBm
aXJzdCwgdGhlbiBjb3VsZCBwdXNoIGRyaXZlciBjaGFuZ2VzIGFuZCAuZHRzIGZpbGVzCj4gPiBp
bmRlcGVuZGVudGx5PyAgCj4gCj4gVGhlcmUgaXMgbm8gc2VwYXJhdGUgcmVwbywgc28gd2UgdGFs
ayBhYm91dCBMaW51eCBjYXNlIG5vdy4KPiAKPiA+IEFuZCBmb3Igbm93IGl0IGxvb2tzIGxpa2Ug
d2UgYXJlIHN0dWNrIHdpdGggcHV0dGluZyBldmVyeXRoaW5nIGluIG9uZQo+ID4gc2VyaWVzLCB0
byBtYWtlIGJvdGggY2hlY2twYXRjaCBhbmQgZHRic19jaGVjayBoYXBweS4gIAo+IAo+IFlvdSBz
aG91bGQgcmF0aGVyIG1ha2UgbWFpbnRhaW5lcnMgaGFwcHkgOikgYW5kIGhlcmUgb25lIGFza2Vk
IHRvIHNwbGl0LgoKV2VsbCwgaGUgYXNrZWQgdG8gc3BsaXQgb2ZmIHRoZSBVU0IgUEhZIHBhdGNo
ZXMgZnJvbSB0aGUgcmVzdCBvZiB0aGUKc2VyaWVzLCBzaW5jZSB0aGVyZSBpcyBzb21lIGNvbmZs
aWN0IHdpdGggdGhlIHJlY2VudGx5IG1lcmdlZCBINjE2IFVTQiBQSFkKcGF0Y2hlcy4gSXQgaXMg
c3RpbGwgdW5jbGVhciB0byBtZSB3aGV0aGVyIHRoaXMgc3BsaXQgaW5jbHVkZXMgdGhlIGJpbmRp
bmcKcGF0Y2gsIG9yIGp1c3QgdGhlIHR3byBwYXRjaGVzIHRvdWNoaW5nIHRoZSBhY3R1YWwgY29k
ZS4KCkNoZWVycywKQW5kcmUuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
