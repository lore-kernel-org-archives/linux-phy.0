Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08A7EC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 24 Nov 2022 22:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAAOxpbRJZ0nZuH0B4UqfZj3kcUGaUoaSjnT04zoaZQ=; b=cg1MnFT0WjBTg4
	7i1z298sIXrZS4OTbtt+TCl5O89dzWu8Ee4jLIGamOyjlXLB/00tgcOJHosDP0mgaXEkYqTLrpOGf
	8fLi+MxNgeHQ9NpXAqeUiYQSZu40qycIJwm7rNaYIWBKUbH1ftdNhlTPK+d+Am0781howDAd61MGZ
	zr9EvS1LvbJDu+H5o1YJaQVRPgZTYpkcu3e+yoZLncxTewl4rgkGaN6ey4AP3HlarjrhSkpMUzlgq
	Me5sPiwsSMWUY9rViye2yjrkh5kwiFzIGthslFrZUfc81KmyZZsjv0GxXcsZ1Q0/rDnnUUpyW1nwN
	g5wCrA/7v2fedRyEiExw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyKUv-00BfpI-6J; Thu, 24 Nov 2022 22:15:09 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyKUi-00BfnD-Pd; Thu, 24 Nov 2022 22:14:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 00D4F23A;
	Thu, 24 Nov 2022 14:14:53 -0800 (PST)
Received: from slackpad.lan (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 54B603F73B;
	Thu, 24 Nov 2022 14:14:45 -0800 (PST)
Date: Thu, 24 Nov 2022 22:13:13 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Jernej
 =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>, Chen-Yu Tsai
 <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Icenowy Zheng <uwu@icenowy.me>,
 soc@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 03/11] phy: sun4i-usb: add support for the USB PHY on
 F1C100s SoC
Message-ID: <20221124221313.14b36324@slackpad.lan>
In-Reply-To: <Y3+uqtNe/tafRwp2@matsya>
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
	<Y3+uqtNe/tafRwp2@matsya>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_141456_971511_D2A338C6 
X-CRM114-Status: GOOD (  45.13  )
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

T24gVGh1LCAyNCBOb3YgMjAyMiAyMzoxOTozMCArMDUzMApWaW5vZCBLb3VsIDx2a291bEBrZXJu
ZWwub3JnPiB3cm90ZToKCj4gT24gMTUtMTEtMjIsIDE3OjU3LCBBbmRyZSBQcnp5d2FyYSB3cm90
ZToKPiA+IE9uIFR1ZSwgMTUgTm92IDIwMjIgMTc6Mjk6MDkgKzAxMDAKPiA+IEtyenlzenRvZiBL
b3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiAKPiA+
IEhpLAo+ID4gICAKPiA+ID4gT24gMTUvMTEvMjAyMiAxNzoxOSwgQW5kcmUgUHJ6eXdhcmEgd3Jv
dGU6ICAKPiA+ID4gPiBPbiBUdWUsIDE1IE5vdiAyMDIyIDE2OjAwOjU0ICswMTAwCj4gPiA+ID4g
S3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPiB3cm90
ZToKPiA+ID4gPiAKPiA+ID4gPiBIaSwKPiA+ID4gPiAgICAgCj4gPiA+ID4+IE9uIDE1LzExLzIw
MjIgMTE6NDQsIEFuZHJlIFByenl3YXJhIHdyb3RlOiAgICAKPiA+ID4gPj4+IE9uIFR1ZSwgMTUg
Tm92IDIwMjIgMTE6MDM6MjQgKzAxMDAKPiA+ID4gPj4+IEtyenlzenRvZiBLb3psb3dza2kgPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiA+ID4+Pgo+ID4gPiA+Pj4g
SGksCj4gPiA+ID4+PiAgICAgICAKPiA+ID4gPj4+PiBPbiAxNS8xMS8yMDIyIDA3OjAxLCBKZXJu
ZWogxaBrcmFiZWMgd3JvdGU6ICAgICAgCj4gPiA+ID4+Pj4+IERuZSDEjWV0cnRlaywgMTAuIG5v
dmVtYmVyIDIwMjIgb2IgMDg6MzU6MzkgQ0VUIGplIFZpbm9kIEtvdWwgbmFwaXNhbChhKTogICAg
ICAgIAo+ID4gPiA+Pj4+Pj4gT24gMDYtMTEtMjIsIDE1OjQ4LCBBbmRyZSBQcnp5d2FyYSB3cm90
ZTogICAgICAgIAo+ID4gPiA+Pj4+Pj4+IEZyb206IEljZW5vd3kgWmhlbmcgPHV3dUBpY2Vub3d5
Lm1lPgo+ID4gPiA+Pj4+Pj4+Cj4gPiA+ID4+Pj4+Pj4gVGhlIEYxQzEwMHMgU29DIGhhcyBvbmUg
VVNCIE9URyBwb3J0IGNvbm5lY3RlZCB0byBhIE1VU0IgY29udHJvbGxlci4KPiA+ID4gPj4+Pj4+
Pgo+ID4gPiA+Pj4+Pj4+IEFkZCBzdXBwb3J0IGZvciBpdHMgVVNCIFBIWS4gICAgICAgIAo+ID4g
PiA+Pj4+Pj4KPiA+ID4gPj4+Pj4+IFRoaXMgZG9lcyBub3QgYXBwbHkgZm9yIG1lLCBwbGVhc2Ug
cmViYXNlIGFuZCByZXNlbmQKPiA+ID4gPj4+Pj4+Cj4gPiA+ID4+Pj4+PiBBbHNvLCBjb25zaWRl
ciBzcGxpdHRpbmcgcGh5IHBhdGNoZXMgZnJvbSB0aGlzLiBJIGRvbnQgdGhpbmsgdGhlcmUgaXMK
PiA+ID4gPj4+Pj4+IGFueSBkZXBlbmRlbmN5ICAgICAgICAKPiA+ID4gPj4+Pj4KPiA+ID4gPj4+
Pj4gRFQgcGF0Y2hlcyBpbiB0aGlzIHNlcmllcyBkZXBlbmQgb24gZnVuY3Rpb25hbGl0eSBhZGRl
ZCBoZXJlLgo+ID4gPiA+Pj4+PiAgICAgICAgIAo+ID4gPiA+Pj4+Cj4gPiA+ID4+Pj4gRFRTIGFs
d2F5cyBnb2VzIHNlcGFyYXRlbHkgZnJvbSBkcml2ZXIgY2hhbmdlcyBiZWNhdXNlIGl0IGlzIGEg
aGFyZHdhcmUKPiA+ID4gPj4+PiBkZXNjcmlwdGlvbi4gRGVwZW5kaW5nIG9uIGRyaXZlciBtZWFu
cyB5b3UgaGF2ZSBwb3RlbnRpYWwgQUJJIGJyZWFrLCBzbwo+ID4gPiA+Pj4+IGl0IGlzIGFscmVh
ZHkgYSB3YXJuaW5nIHNpZ24uICAgICAgCj4gPiA+ID4+Pgo+ID4gPiA+Pj4gV2UgdW5kZXJzdGFu
ZCB0aGF0IDstKQo+ID4gPiA+Pj4gV2hhdCBKZXJuZWogbWVhbnQgd2FzIHRoYXQgdGhlIERUUyBw
YXRjaGVzIGF0IHRoZSBlbmQgZGVwZW5kIG9uIHBhdGNoCj4gPiA+ID4+PiAwMS8xMCwgd2hpY2gg
YWRkcyB0byB0aGUgUEhZIGJpbmRpbmcgZG9jLiBJIGFtIG5vdCBzdXJlIGlmIFZpbm9kJ3MKPiA+
ID4gPj4+IHN1Z2dlc3Rpb24gd2FzIGFib3V0IHNwbGl0dGluZyBvZmYgMDEvMTAsIDAzLzEwLCBh
bmQgMTAvMTAsIG9yIGp1c3QgdGhlCj4gPiA+ID4+PiB0d28gbGF0dGVyIHdoaWNoIHRvdWNoIHRo
ZSBkcml2ZXIuCj4gPiA+ID4+Pgo+ID4gPiA+Pj4gSSBjYW4gc3BsaXQgb2ZmIDAzLzEwIGFuZCAx
MC8xMCwgcmViYXNlZCBvbiB0b3Agb2YgbGludXgtcGh5LmdpdC9uZXh0LCBhbmQKPiA+ID4gPj4+
IHNlbmQgdGhhdCB0byBWaW5vZC4KPiA+ID4gPj4+IFRoZW4gSSB3b3VsZCBrZWVwIDAxLzEwIGlu
IGEgcmVzcGluIG9mIHRoaXMgc2VyaWVzIGhlcmUsIHRvIHNhdGlzZnkgdGhlCj4gPiA+ID4+PiBk
ZXBlbmRlbmN5IG9mIHRoZSBsYXRlciBEVFMgcGF0Y2hlcywgYW5kIFZpbm9kIGNhbiBwaWNrIHRo
YXQgb25lIHBhdGNoIGZyb20KPiA+ID4gPj4+IHRoZXJlPyAgICAgIAo+ID4gPiA+Pgo+ID4gPiA+
PiBUaGVyZSBpcyBubyBoYXJkIGRlcGVuZGVuY3kgb2YgRFRTIG9uIGJpbmRpbmdzLiBZb3UgY2Fu
IHNwbGl0IHRoZXNlIChhbmQKPiA+ID4gPj4gc29tZSBtYWludGFpbmVycyBwcmVmZXIgdGhhdCB3
YXkpIGFuZCBpbiBEVFMgcGF0Y2hlcyBqdXN0IHByb3ZpZGUgdGhlCj4gPiA+ID4+IGxpbmsgdG8g
dGhlIGJpbmRpbmdzLCBzYXlpbmcgaXQgaXMgaW4gcHJvZ3Jlc3MuICAgIAo+ID4gPiA+IAo+ID4g
PiA+IEJ1dCB0aGF0IGJyZWFrcyAibWFrZSBkdGJzX2NoZWNrIiwgZG9lc24ndCBpdD8gICAgCj4g
PiA+IAo+ID4gPiBUaGUgY2hlY2sgd2lsbCBiZSBicm9rZW4gYW55d2F5IGJlY2F1c2UgYmluZGlu
ZyBnb2VzIHZpYSBkcml2ZXIKPiA+ID4gc3Vic3lzdGVtIGFuZCBEVFMgZ29lcyB2aWEgYXJtLXNv
Yy4KPiA+ID4gCj4gPiA+IElmIGJvdGggbWFrZSB0byB0aGUgbGludXgtbmV4dCBhbmQgbmV4dCBy
ZWxlYXNlLCB0aGVuIGl0J3Mgbm90IGEgcHJvYmxlbS4KPiA+ID4gICAKPiA+ID4gPiAKPiA+ID4g
PiBJIHdvdWxkIHRoaW5rIHRoYXQgdGhlIERUIGJpdHMgLSBiaW5kaW5ncyBmaXJzdCwgdGhlbiBE
VFMgZmlsZXMgdXNpbmcgaXQgLQo+ID4gPiA+IHNob3VsZCBiZSBidW5kbGVkLiBUaGlzIGlzIGhv
dyBJIGltYWdpbmUgdGhlIGZ1dHVyZShUTSksIHdoZXJlIERUcyBhbmQKPiA+ID4gPiBiaW5kaW5n
cyBsaXZlIG91dHNpZGUgdGhlIGtlcm5lbCByZXBvLiAgICAKPiA+ID4gCj4gPiA+IFllcywgdGhh
dCdzIHByZWZlcnJlZC4gVGhlcmVmb3JlIGluIERUUyBwYXRjaCB5b3Ugc2F5IHRoZSBiaW5kaW5n
IGlzIG5vdAo+ID4gPiBtZXJnZWQgYW5kIGl0IGlzIGhlcmUgLSBsb3JlIGxpbmsuCj4gPiA+ICAg
Cj4gPiA+ID4gICAgIAo+ID4gPiA+PiBUaGUgYmluZGluZ3Mgc2hvdWxkIGJlIGhvd2V2ZXIga2Vw
dCB3aXRoIGRyaXZlciBjaGFuZ2VzIGFzIGl0IGdvZXMgdGhlCj4gPiA+ID4+IHNhbWUgd2F5LiAg
ICAKPiA+ID4gPiAKPiA+ID4gPiBJIHVuZGVyc3RhbmQgdGhhdCB0aGUgYmluZGluZ3MgZGVzY3Jp
YmUgdGhlIGNvbnRyYWN0IHRoZSBkcml2ZXIgYWN0cyBvbiwKPiA+ID4gPiBidXQgZ29pbmcgZm9y
d2FyZCBJIHRoaW5rIGRyaXZlciBjaGFuZ2VzIHdvdWxkIG5lZWQgdG8gY29tZSBsYXRlciwgdGhl
bgo+ID4gPiA+IChzaW5jZSB0aGV5IHdpbGwgbGl2ZSBpbiBhIHNlcGFyYXRlIHJlcG8gYXQgc29t
ZSBkYXkpPwo+ID4gPiA+IE1heWJlIHBvaW50aW5nIHRvIHRoZSBiaW5kaW5nIGNoYW5nZXMgaW4g
cHJvZ3Jlc3M/ICAgIAo+ID4gPiAKPiA+ID4gTGF0ZXIgYXMgb25lIGNvbW1pdCBsYXRlciAtIHll
cy4gTGF0ZXIgYXMgb3RoZXIgb3B0aW9uIC0gbm90IHJlYWxseSwgd2h5Pwo+ID4gPiAgIAo+ID4g
PiA+IFNvIHdpdGggYSBzZXBhcmF0ZSByZXBvIHdlIHdvdWxkIGFjdHVhbGx5IG5lZWQgdG8gdXBz
dHJlYW0ganVzdCB0aGUKPiA+ID4gPiBiaW5kaW5ncyBmaXJzdCwgdGhlbiBjb3VsZCBwdXNoIGRy
aXZlciBjaGFuZ2VzIGFuZCAuZHRzIGZpbGVzCj4gPiA+ID4gaW5kZXBlbmRlbnRseT8gICAgCj4g
PiA+IAo+ID4gPiBUaGVyZSBpcyBubyBzZXBhcmF0ZSByZXBvLCBzbyB3ZSB0YWxrIGFib3V0IExp
bnV4IGNhc2Ugbm93Lgo+ID4gPiAgIAo+ID4gPiA+IEFuZCBmb3Igbm93IGl0IGxvb2tzIGxpa2Ug
d2UgYXJlIHN0dWNrIHdpdGggcHV0dGluZyBldmVyeXRoaW5nIGluIG9uZQo+ID4gPiA+IHNlcmll
cywgdG8gbWFrZSBib3RoIGNoZWNrcGF0Y2ggYW5kIGR0YnNfY2hlY2sgaGFwcHkuICAgIAo+ID4g
PiAKPiA+ID4gWW91IHNob3VsZCByYXRoZXIgbWFrZSBtYWludGFpbmVycyBoYXBweSA6KSBhbmQg
aGVyZSBvbmUgYXNrZWQgdG8gc3BsaXQuICAKPiA+IAo+ID4gV2VsbCwgaGUgYXNrZWQgdG8gc3Bs
aXQgb2ZmIHRoZSBVU0IgUEhZIHBhdGNoZXMgZnJvbSB0aGUgcmVzdCBvZiB0aGUKPiA+IHNlcmll
cywgc2luY2UgdGhlcmUgaXMgc29tZSBjb25mbGljdCB3aXRoIHRoZSByZWNlbnRseSBtZXJnZWQg
SDYxNiBVU0IgUEhZCj4gPiBwYXRjaGVzLiBJdCBpcyBzdGlsbCB1bmNsZWFyIHRvIG1lIHdoZXRo
ZXIgdGhpcyBzcGxpdCBpbmNsdWRlcyB0aGUgYmluZGluZwo+ID4gcGF0Y2gsIG9yIGp1c3QgdGhl
IHR3byBwYXRjaGVzIHRvdWNoaW5nIHRoZSBhY3R1YWwgY29kZS4gIAo+IAo+IFRoYXQgbWVhbiBz
cGxpdCBvZmYgVVNCIHBoeSBhbmQgYmluZGluZyBwYXRjaGVzIGZyb20gcmVzdCBhbmQgc2VuZCBm
b3IKPiByZXZpZXcKClRoYW5rcywgSSBmaWd1cmVkLCBhbmQgdGhhdCdzIHdoYXQgSSBkaWQ6Cgpo
dHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1hcm0ta2VybmVsLzIwMjIxMTE2MTUxNjAzLjgx
OTUzMy0xLWFuZHJlLnByenl3YXJhQGFybS5jb20vCgpIb3BlIHRoYXQgZml0cyEKCkNoZWVycywK
QW5kcmUKCj4gCj4gRFRTIG9yIGFueXRoaW5nIGVsc2Ugc2hvdWxkIG5vdCBiZSBwYXJ0IG9mIHRo
YXQKPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
