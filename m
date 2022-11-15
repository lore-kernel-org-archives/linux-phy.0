Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86780C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 16:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLO0nyXoY96MQUT6gpAhL0Cx3S5llF9OMMBfy7CjYPA=; b=Sfs4LCMrwCcfgz
	yDmPKkQydi+SVMwyyFlKeYidpI/yWopQWdAKoOXdJbwDCsU1i1ibVP2qQtitiLTw5NsJ8omOBOEPV
	++Qz+7k/vYkg4YVQ8eeUHNMJmRbUwx70pOqba/+VwnbeDfpdPawaqj26w3oX1CMms7/5B1skNN0EN
	jbMV1x/OdIk5ecqQLzqW8Rswiv3bkblxfFPHeb05m3hrvjCU4pvroBzK09lJOI6+OlWh4uPhp4DMZ
	ywRy8VHiK53PKvl0tfJDKOlYx+TmslZDgVWCgUJQ9/vu/W67XPwrRF2pumxvvcqIRA8Yp1uxSBUaa
	Zs5YC21SNiAQYYFPM+pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouz5q-00DALX-RW; Tue, 15 Nov 2022 16:47:26 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouz5d-00D94M-Ay; Tue, 15 Nov 2022 16:47:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E4FD13D5;
	Tue, 15 Nov 2022 08:47:14 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB9273F587;
	Tue, 15 Nov 2022 08:47:06 -0800 (PST)
Date: Tue, 15 Nov 2022 16:47:04 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
Cc: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Rob
 Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Icenowy Zheng <uwu@icenowy.me>,
 soc@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 09/11] ARM: dts: suniv: add device tree for PopStick
 v1.1
Message-ID: <20221115164704.1d9db428@donnerap.cambridge.arm.com>
In-Reply-To: <4752971.GXAFRqVoOG@kista>
References: <20221106154826.6687-1-andre.przywara@arm.com>
	<20221106154826.6687-10-andre.przywara@arm.com>
	<4752971.GXAFRqVoOG@kista>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_084713_500607_F1DC7C00 
X-CRM114-Status: GOOD (  26.94  )
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

T24gTW9uLCAwNyBOb3YgMjAyMiAxODozNTowOSArMDEwMApKZXJuZWogxaBrcmFiZWMgPGplcm5l
ai5za3JhYmVjQGdtYWlsLmNvbT4gd3JvdGU6CgpIaSBKZXJuZWosCgo+IERuZSBuZWRlbGphLCAw
Ni4gbm92ZW1iZXIgMjAyMiBvYiAxNjo0ODoyNCBDRVQgamUgQW5kcmUgUHJ6eXdhcmEgbmFwaXNh
bChhKToKPiA+IEZyb206IEljZW5vd3kgWmhlbmcgPHV3dUBpY2Vub3d5Lm1lPgo+ID4gCj4gPiBQ
b3BTdGljayBpcyBhIG1pbmltYWwgQWxsd2lubmVyIEYxQzIwMHMgZG9uZ2xlLCB3aXRoIGl0cyBV
U0IgY29udHJvbGxlcgo+ID4gd2lyZWQgdG8gYSBVU0IgVHlwZS1BIHBvcnQsIGEgU0Qgc2xvdCBh
bmQgYSBTUEkgTkFORCBmbGFzaCBvbiBib2FyZCwgYW5kCj4gPiBhbiBvbi1ib2FyZCBDSDM0MCBV
U0ItVUFSVCBjb252ZXJ0ZWQgY29ubmVjdGVkIHRvIEYxQzIwMHMncyBVQVJUMC4KPiA+IAo+ID4g
QWRkIGEgZGV2aWNlIHRyZWUgZm9yIGl0LiBBcyBGMUMyMDBzIGlzIGp1c3QgRjFDMTAwcyB3aXRo
IGEgZGlmZmVyZW50Cj4gPiBEUkFNIGNoaXAgY28tcGFja2FnZWQsIGRpcmVjdGx5IHVzZSBGMUMx
MDBzIERUU0kgaGVyZS4KPiA+IAo+ID4gVGhpcyBjb21taXQgY292ZXJzIHRoZSB2MS4xIHZlcnNp
b24gb2YgdGhpcyBib2FyZCwgd2hpY2ggaXMgbm93IHNoaXBwZWQuCj4gPiB2MS4wIGlzIHNvbWUg
aW50ZXJuYWwgc2FtcGxlIHRoYXQgaGF2ZSBub3QgYmVlbiBzaGlwcGVkIGF0IGFsbC4KPiA+IAo+
ID4gU2lnbmVkLW9mZi1ieTogSWNlbm93eSBaaGVuZyA8dXd1QGljZW5vd3kubWU+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBBbmRyZSBQcnp5d2FyYSA8YW5kcmUucHJ6eXdhcmFAYXJtLmNvbT4KPiA+IC0t
LQo+ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICB8ICAz
ICstCj4gPiAgLi4uL2Jvb3QvZHRzL3N1bml2LWYxYzIwMHMtcG9wc3RpY2stdjEuMS5kdHMgIHwg
OTkgKysrKysrKysrKysrKysrKysrKwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTAxIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9v
dC9kdHMvc3VuaXYtZjFjMjAwcy1wb3BzdGljay12MS4xLmR0cwo+ID4gCj4gPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUgYi9hcmNoL2FybS9ib290L2R0cy9NYWtlZmls
ZQo+ID4gaW5kZXggNmFhN2RjNGRiMmZjLi4wMjQ5YzA3YmQ4YTYgMTAwNjQ0Cj4gPiAtLS0gYS9h
cmNoL2FybS9ib290L2R0cy9NYWtlZmlsZQo+ID4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvTWFr
ZWZpbGUKPiA+IEBAIC0xMzkxLDcgKzEzOTEsOCBAQCBkdGItJChDT05GSUdfTUFDSF9TVU45SSkg
Kz0gXAo+ID4gIAlzdW45aS1hODAtb3B0aW11cy5kdGIgXAo+ID4gIAlzdW45aS1hODAtY3ViaWVi
b2FyZDQuZHRiCj4gPiAgZHRiLSQoQ09ORklHX01BQ0hfU1VOSVYpICs9IFwKPiA+IC0Jc3VuaXYt
ZjFjMTAwcy1saWNoZWVwaS1uYW5vLmR0Ygo+ID4gKwlzdW5pdi1mMWMxMDBzLWxpY2hlZXBpLW5h
bm8uZHRiIFwKPiA+ICsJc3VuaXYtZjFjMjAwcy1wb3BzdGljay12MS4xLmR0Ygo+ID4gIGR0Yi0k
KENPTkZJR19BUkNIX1RFR1JBXzJ4X1NPQykgKz0gXAo+ID4gIAl0ZWdyYTIwLWFjZXItYTUwMC1w
aWNhc3NvLmR0YiBcCj4gPiAgCXRlZ3JhMjAtYXN1cy10ZjEwMS5kdGIgXAo+ID4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bml2LWYxYzIwMHMtcG9wc3RpY2stdjEuMS5kdHMKPiA+
IGIvYXJjaC9hcm0vYm9vdC9kdHMvc3VuaXYtZjFjMjAwcy1wb3BzdGljay12MS4xLmR0cyBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi43ZDY5YjVmY2I5MDUKPiA+
IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bml2LWYxYzIwMHMt
cG9wc3RpY2stdjEuMS5kdHMKPiA+IEBAIC0wLDAgKzEsOTkgQEAKPiA+ICsvLyBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKPiA+ICsvKgo+ID4gKyAqIENvcHlyaWdo
dCAyMDIyIEljZW5vd3kgWmhlbmcgPHV3dUBpY2Vub3d5Lm1lPgo+ID4gKyAqLwo+ID4gKwo+ID4g
Ky9kdHMtdjEvOwo+ID4gKyNpbmNsdWRlICJzdW5pdi1mMWMxMDBzLmR0c2kiCj4gPiArCj4gPiAr
I2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgo+ID4gKyNpbmNsdWRlIDxkdC1iaW5k
aW5ncy9sZWRzL2NvbW1vbi5oPgo+ID4gKwo+ID4gKy8gewo+ID4gKwltb2RlbCA9ICJQb3Bjb3Ju
IENvbXB1dGVyIFBvcFN0aWNrIHYxLjEiOwo+ID4gKwljb21wYXRpYmxlID0gInNvdXJjZXBhcnRz
LHBvcHN0aWNrLXYxLjEiLCAic291cmNlcGFydHMscG9wc3RpY2siLAo+ID4gKwkJICAgICAiYWxs
d2lubmVyLHN1bml2LWYxYzIwMHMiLCAiYWxsd2lubmVyLHN1bml2LSAgCj4gZjFjMTAwcyI7Cj4g
PiArCj4gPiArCWFsaWFzZXMgewo+ID4gKwkJc2VyaWFsMCA9ICZ1YXJ0MDsKPiA+ICsJfTsKPiA+
ICsKPiA+ICsJY2hvc2VuIHsKPiA+ICsJCXN0ZG91dC1wYXRoID0gInNlcmlhbDA6MTE1MjAwbjgi
Owo+ID4gKwl9Owo+ID4gKwo+ID4gKwlsZWRzIHsKPiA+ICsJCWNvbXBhdGlibGUgPSAiZ3Bpby1s
ZWRzIjsKPiA+ICsKPiA+ICsJCWxlZCB7Cj4gPiArCQkJZnVuY3Rpb24gPSBMRURfRlVOQ1RJT05f
U1RBVFVTOwo+ID4gKwkJCWNvbG9yID0gPExFRF9DT0xPUl9JRF9HUkVFTj47Cj4gPiArCQkJZ3Bp
b3MgPSA8JnBpbyA0IDYgR1BJT19BQ1RJVkVfSElHSD47IC8qIFBFNiAgIAo+ICovCj4gPiArCQkJ
bGludXgsZGVmYXVsdC10cmlnZ2VyID0gImhlYXJ0YmVhdCI7Cj4gPiArCQl9Owo+ID4gKwl9Owo+
ID4gKwo+ID4gKwlyZWdfdmNjM3YzOiByZWd1bGF0b3ItM3YzIHsKPiA+ICsJCWNvbXBhdGlibGUg
PSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ICsJCXJlZ3VsYXRvci1uYW1lID0gInZjYzN2MyI7Cj4g
PiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiA+ICsJCXJlZ3VsYXRv
ci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ID4gKwl9Owo+ID4gK307Cj4gPiArCj4gPiAr
Jm1tYzAgewo+ID4gKwljZC1ncGlvcyA9IDwmcGlvIDQgMyBHUElPX0FDVElWRV9MT1c+OyAvKiBQ
RTMgKi8KPiA+ICsJYnVzLXdpZHRoID0gPDQ+Owo+ID4gKwlkaXNhYmxlLXdwOwo+ID4gKwl2bW1j
LXN1cHBseSA9IDwmcmVnX3ZjYzN2Mz47Cj4gPiArCXN0YXR1cyA9ICJva2F5IjsKPiA+ICt9Owo+
ID4gKwo+ID4gKyZvdGdfc3JhbSB7Cj4gPiArCXN0YXR1cyA9ICJva2F5IjsKPiA+ICt9Owo+ID4g
Kwo+ID4gKyZzcGkwIHsKPiA+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ICsJcGlu
Y3RybC0wID0gPCZzcGkwX3BjX3BpbnM+Owo+ID4gKwlzdGF0dXMgPSAib2theSI7Cj4gPiArCj4g
PiArCWZsYXNoQDAgewo+ID4gKwkJY29tcGF0aWJsZSA9ICJzcGktbmFuZCI7Cj4gPiArCQlyZWcg
PSA8MD47Cj4gPiArCQlzcGktbWF4LWZyZXF1ZW5jeSA9IDw0MDAwMDAwMD47Cj4gPiArCQkjYWRk
cmVzcy1jZWxscyA9IDwxPjsKPiA+ICsJCSNzaXplLWNlbGxzID0gPDE+Owo+ID4gKwo+ID4gKwkJ
cGFydGl0aW9ucyB7ICAKPiAKPiAibWFrZSBkdGJzX2NoZWNrIiBpcyBub3QgaGFwcHkgd2l0aCBj
ZWxscyBhbmQgcGFydGl0aW9ucy4gRG8gd2UgcmVhbGx5IG5lZWQgCj4gdGhlbT8gSWYgeWVzLCB0
aGVuIGJpbmRpbmcgbmVlZHMgdG8gYmUgdXBkYXRlZCBiZWZvcmVoYW5kLgoKUmlnaHQsIG15IGR0
LXZhbGlkYXRlIHJ1biBkaWRuJ3QgaW5pdGlhbGx5IGNvbXBsYWluLCBidXQgZG9lcyBub3csIGFm
dGVyCnVwZGF0aW5nIGR0LXNjaGVtYS5naXQuClNvIHllcywgSSB3aWxsIGp1c3QgZHJvcCB0aGUg
cGFydGl0aW9ucywgZm9yIG5vdy4gVGhlIHBhcnRpdGlvbiBzY2hlbWUKc2VlbXMgdG8gYmUgbGVn
aXQsIGFzIGRlc2NyaWJlZCBpbiBtdGQvZml4ZWQtcGFydGl0aW9ucy55YW1sLCBidXQgaXQKYXBw
YXJlbnRseSBqdXN0IG5lZWRzIHRvIGJlIHNvbWVob3cgaW5jbHVkZWQgaW4gc3BpLW5hbmQueWFt
bC4gV2lsbCBkbwp0aGF0IGxhdGVyLCB0aGVuIHVwZGF0ZSB0aGlzIC5kdHMuCgpDaGVlcnMsCkFu
ZHJlCgo+IAo+ID4gKwkJCWNvbXBhdGlibGUgPSAiZml4ZWQtcGFydGl0aW9ucyI7Cj4gPiArCQkJ
I2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gPiArCQkJI3NpemUtY2VsbHMgPSA8MT47Cj4gPiArCj4g
PiArCQkJcGFydGl0aW9uQDAgewo+ID4gKwkJCQlsYWJlbCA9ICJ1LWJvb3Qtd2l0aC1zcGwiOwo+
ID4gKwkJCQlyZWcgPSA8MHgwIDB4MTAwMDAwPjsKPiA+ICsJCQl9Owo+ID4gKwo+ID4gKwkJCXVi
aUAxMDAwMDAgewo+ID4gKwkJCQlsYWJlbCA9ICJ1YmkiOwo+ID4gKwkJCQlyZWcgPSA8MHgxMDAw
MDAgMHg3ZjAwMDAwPjsKPiA+ICsJCQl9Owo+ID4gKwkJfTsKPiA+ICsJfTsKPiA+ICt9Owo+ID4g
Kwo+ID4gKyZ1YXJ0MCB7Cj4gPiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiArCXBp
bmN0cmwtMCA9IDwmdWFydDBfcGVfcGlucz47Cj4gPiArCXN0YXR1cyA9ICJva2F5IjsKPiA+ICt9
Owo+ID4gKwo+ID4gKyZ1c2Jfb3RnIHsKPiA+ICsJZHJfbW9kZSA9ICJwZXJpcGhlcmFsIjsKPiA+
ICsJc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4gPiArCj4gPiArJnVzYnBoeSB7Cj4gPiArCXN0
YXR1cyA9ICJva2F5IjsKPiA+ICt9Owo+ID4gLS0KPiA+IDIuMzUuNSAgCj4gCj4gCgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
