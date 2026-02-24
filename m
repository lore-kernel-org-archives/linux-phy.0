Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC6ECF4BB60
	for <linux-phy@archiver.kernel.org>; Tue, 24 Feb 2026 17:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egzyFewJv2dWvmXr1fnKnUny8nyycOZdgCqVSp6TwaI=; b=UfRA+yO/74Ewpg
	ykewShI0duTMfOgrWvw+EQfiptE5e0myjqP7h3xq9k1+DjRnOBEq9638CJurFxyh1zyGO4HdOmP88
	CS6ysXYQ+zNAedMnNjjuyI9OJOXD8y0Em+Xp3L/dBcw91ACzBJ8DS83PmVl6F4n/wmVa5acWzAeAd
	h/I9LAeACzyu/aVHoje5oEOrP6yY08ZS6Gdr08ZuQ88qDqLDhlSvn83ZsgLbn3RR4MORdvPbjShAT
	WHXGW9AClSScA37HxsAMoTENyVmqQ7ZEsPGG6aT/PJPGYkFXtoQCiRwAMBP/bSLoWiJeqQdr+86e4
	xTCrTVG+tmd2TOZcTfXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuw5M-00000002UCY-1XHA;
	Tue, 24 Feb 2026 17:20:36 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuw5I-00000002UBy-30Cm
	for linux-phy@lists.infradead.org;
	Tue, 24 Feb 2026 17:20:35 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 1C3F04E41097;
	Tue, 24 Feb 2026 17:20:28 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CD97C5FD9D;
	Tue, 24 Feb 2026 17:20:27 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1B5B6103691E0;
	Tue, 24 Feb 2026 18:20:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1771953626; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=yExKHNVxFpAWclIgqpsx9aPnPMbndULosVf0raAPb3E=;
	b=izeIcZpv+zsH5ELNbOIzYlKCtln4IHs8bL9rxTlwSelk/V31o5uggfMUVFBKn/HZkqFQR1
	B3EjMM2VOo2QAZCf/5hybFnRzacICR/WOCQrqVciux9Lq2xZgTHaatWPJcjfaQNE0sgObT
	nIsEl/tqis/DAsnbs/ghu2yJMekY4WC3aTFFIXCkF4T+ygxoCDG2Re9mFpwqQjJxU20qbw
	zuulRut0W17M1O+/7iOa8dWt/Mpc0IZnQfwkZsHLddTE7c5R4h2tdH2iJRlNwMhiF/TCkc
	l8wXwmQ52SmerOLUpdQELx1AQ/Rac3tknpWBCfrgvCjLbb+O0rJionLKZUXTag==
Mime-Version: 1.0
Date: Tue, 24 Feb 2026 18:20:21 +0100
Message-Id: <DGND4VXM9X0N.2CP1VBD8E128M@bootlin.com>
Cc: "Vladimir Kondratiev" <vladimir.kondratiev@mobileye.com>,
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Thomas Bogendoerfer"
 <tsbogend@alpha.franken.de>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 <linux-mips@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, =?utf-8?q?Beno=C3=AEt_Monin?=
 <benoit.monin@bootlin.com>, "Tawfik Bayouk" <tawfik.bayouk@mobileye.com>,
 "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>, "Luca Ceresoli"
 <luca.ceresoli@bootlin.com>
To: "Vladimir Oltean" <olteanv@gmail.com>, =?utf-8?q?Th=C3=A9o_Lebrun?=
 <theo.lebrun@bootlin.com>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Subject: Re: [PATCH v6 3/8] phy: Add driver for EyeQ5 Ethernet PHY wrapper
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
 <20260127-macb-phy-v6-3-cdd840588188@bootlin.com>
 <20260210193516.temrg46yozxma7xb@skbuf>
In-Reply-To: <20260210193516.temrg46yozxma7xb@skbuf>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_092033_255513_45033EBC 
X-CRM114-Status: GOOD (  31.32  )
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

SGVsbG8gVmxhZGltaXIsCgpPbiBUdWUgRmViIDEwLCAyMDI2IGF0IDg6MzUgUE0gQ0VULCBWbGFk
aW1pciBPbHRlYW4gd3JvdGU6Cj4gT24gVHVlLCBKYW4gMjcsIDIwMjYgYXQgMDY6MDk6MzFQTSAr
MDEwMCwgVGjDqW8gTGVicnVuIHdyb3RlOgo+PiArc3RhdGljIGludCBlcTVfcGh5X2luaXQoc3Ry
dWN0IHBoeSAqcGh5KQo+PiArewo+PiArCXN0cnVjdCBlcTVfcGh5X2luc3QgKmluc3QgPSBwaHlf
Z2V0X2RydmRhdGEocGh5KTsKPj4gKwlzdHJ1Y3QgZXE1X3BoeV9wcml2YXRlICpwcml2ID0gaW5z
dC0+cHJpdjsKPj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwcml2LT5kZXY7Cj4+ICsJdTMyIHJl
ZzsKPj4gKwo+PiArCWRldl9kYmcoZGV2LCAicGh5X2luaXQoaW5zdD0ldGQpXG4iLCBpbnN0IC0g
cHJpdi0+cGh5cyk7Cj4KPiBOaXRwaWNrOiBjYW4geW91IHBsZWFzZSByZW1vdmUgdGhlIGRlYnVn
Z2luZyBwcmludHMgYW5kIG1heWJlIGFkZCBzb21lCj4gdHJhY2UgcG9pbnRzIHRvIHRoZSBQSFkg
Y29yZSBpZiB5b3UgZmVlbCBzdHJvbmdseSBhYm91dCBoYXZpbmcgc29tZQo+IGludHJvc3BlY3Rp
b24/CgpBY2shCgo+PiArCj4+ICsJd3JpdGVsKDAsIGluc3QtPmdwKTsKPj4gKwl3cml0ZWwoMCwg
aW5zdC0+c2dtaWkpOwo+PiArCj4+ICsJdWRlbGF5KDUpOwo+Cj4gQ291bGQgeW91IHBsZWFzZSBh
ZGQgYSBtYWNybyBvciBjb21tZW50IGhpbnRpbmcgYXQgdGhlIG9yaWdpbiBvZiB0aGUKPiBtYWdp
YyBudW1iZXIgNSBoZXJlPyBZb3UgY291bGQgYWxzbyBwbGFjZSB0aGVzZSAzIGxpbmVzIGluIGEg
Y29tbW9uCj4gaGVscGVyLCBhbHNvIGNhbGxlZCBmcm9tIGVxNV9waHlfZXhpdCgpLCB0byBhdm9p
ZCBtaW5vciBjb2RlCj4gZHVwbGljYXRpb24uCgpBQ0ssIHNvbWV0aGluZyBuYW1lZCBgZXE1X3Bo
eV9yZWluaXQoKWAuCgpJIGRvbid0IGhhdmUgcHJlY2lzZSBleHBsYW5hdGlvbiBmb3IgdGhlIDXC
tXMgdmFsdWU7IEkgb25seSBrbm93IGl0IGlzCnRpbWUgdG8gbGV0IHRoZSBQSFkgc2V0dGxlIGJl
Zm9yZSBmdXJ0aGVyIHJlZ2lzdGVyIGNvbmZpZyB3cml0ZXMuCklzIHRoaXMgZW5vdWdoPwoKICAg
dWRlbGF5KDUpOyAvKiBzZXR0bGluZyB0aW1lICovCgo+PiArCj4+ICsJcmVnID0gcmVhZGwoaW5z
dC0+Z3ApIHwgRVE1X0dQX1RYX1NXUlNUX0RJUyB8IEVRNV9HUF9UWF9NX0NMS0UgfAo+Cj4gV2hl
biB5b3Ugd3JpdGUgMCB0byBpbnN0LT5ncCBhbmQgdGhlbiByZWFkIGl0IGJhY2ssIGRvIHlvdSBl
eHBlY3QgdG8KPiAoYSkgZ2V0IGJhY2sgMCBvcgo+IChiKSBhcmUgc29tZSBmaWVsZHMgbm9uLXJl
c2V0dGluZz8KPgo+IEkgc2VlIGJvdGggYXMgaW5jb25zaXN0ZW50LCBzaW5jZSBpZiAoYSksIHlv
dSBjYW4gcmVtb3ZlIHRoZQo+IHJlYWRsKGluc3QtPmdwKSBhbmQgZXhwZWN0IHRoZSBzYW1lIHJl
c3VsdC4gQW5kIGlmIChiKSwgaXQgYWxzbwo+IHNob3VsZG4ndCBtYXR0ZXIgaWYgeW91IHdyaXRl
IHplcm9lcyBhIHNlY29uZCB0aW1lLCBpZiBpdCB3YXMgZmluZSB0aGUKPiBmaXJzdCB0aW1lPwo+
Cj4gU2hvcnRseSBzYWlkLCBpcyByZWFkbChpbnN0LT5ncCkgcmVhbGx5IG5lZWRlZD8KClNvbWUg
ZmllbGRzIGFyZSBub24tcmVzZXR0aW5nIChCSVQgMzApLgpXaWxsIGRyb3AuIEkgd2FzIHRyeWlu
ZyB0byBwbGF5IGl0IHNhZmUgZm9yIG5vIGdvb2QgcmVhc29uLgoKPgo+PiArCSAgICAgIEVRNV9H
UF9TWVNfU1dSU1RfRElTIHwgRVE1X0dQX1NZU19NX0NMS0UgfAo+PiArCSAgICAgIEZJRUxEX1BS
RVAoRVE1X0dQX1JHTUlJX0RSViwgMHg5KTsKPgo+IFF1aWNrIHNhbml0eSBjaGVjayBvbiB5b3Vy
IHByb3Bvc2FsIHRvIHVzZSAjcGh5LWNlbGxzID0gPDE+LiBUaGlzIGlzIG5vdAo+IGEgcmVxdWVz
dCB0byBjaGFuZ2UgYW55dGhpbmcuCj4KPiBXaGF0IGlmIHlvdSBuZWVkIHRvIGN1c3RvbWl6ZSB0
aGUgUkdNSUkgZHJpdmUgc3RyZW5ndGggKG9yIHNvbWUgb3RoZXIKPiBzZXR0aW5nLCBtYXliZSBT
R01JSSBwb2xhcml0eSBpZiB0aGF0IGlzIGF2YWlsYWJsZSkgcGVyIGxhbmUsIGZvciBhCj4gcGFy
dGljdWxhciBib2FyZD8gSG93IHdvdWxkIHlvdSBkbyB0aGF0IGlmIGVhY2ggUEhZIGRvZXMgbm90
IGhhdmUgaXRzCj4gb3duIE9GIG5vZGU/CgpJIGhhdmUgbm8ga25vd2xlZGdlIG9mIHdoYXQgdGhh
dCAweDkgc3RhbmRzIGZvciwgSSBkaWRuJ3Qgc2VlIHRoZSBwb2ludApleHBvc2luZyBpdCB0byBk
ZXZpY2V0cmVlLiBXZSBjb3VsZCBwbGFuIGZvciB0aGUgZnV0dXJlIGFuZCBhZGQgYSBjZWxsCm9y
IGNyZWF0ZSBzdWJub2RlcywgYnV0IGhlcmUgSSBrZXB0IGl0IHNpbXBsZSBzdHVwaWQuIElzIGl0
IE9LPwoKPj4gKwl3cml0ZWwocmVnLCBpbnN0LT5ncCk7Cj4+ICsKPj4gKwlyZXR1cm4gMDsKPj4g
K30KPj4gKwo+PiArc3RhdGljIGludCBlcTVfcGh5X2V4aXQoc3RydWN0IHBoeSAqcGh5KQo+PiAr
ewo+PiArCXN0cnVjdCBlcTVfcGh5X2luc3QgKmluc3QgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsK
Pj4gKwlzdHJ1Y3QgZXE1X3BoeV9wcml2YXRlICpwcml2ID0gaW5zdC0+cHJpdjsKPj4gKwlzdHJ1
Y3QgZGV2aWNlICpkZXYgPSBwcml2LT5kZXY7Cj4+ICsKPj4gKwlkZXZfZGJnKGRldiwgInBoeV9l
eGl0KGluc3Q9JXRkKVxuIiwgaW5zdCAtIHByaXYtPnBoeXMpOwo+PiArCj4+ICsJd3JpdGVsKDAs
IGluc3QtPmdwKTsKPj4gKwl3cml0ZWwoMCwgaW5zdC0+c2dtaWkpOwo+PiArCXVkZWxheSg1KTsK
Pj4gKwo+PiArCXJldHVybiAwOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgaW50IGVxNV9waHlfc2V0
X21vZGUoc3RydWN0IHBoeSAqcGh5LCBlbnVtIHBoeV9tb2RlIG1vZGUsIGludCBzdWJtb2RlKQo+
PiArewo+PiArCXN0cnVjdCBlcTVfcGh5X2luc3QgKmluc3QgPSBwaHlfZ2V0X2RydmRhdGEocGh5
KTsKPj4gKwlzdHJ1Y3QgZXE1X3BoeV9wcml2YXRlICpwcml2ID0gaW5zdC0+cHJpdjsKPj4gKwlz
dHJ1Y3QgZGV2aWNlICpkZXYgPSBwcml2LT5kZXY7Cj4+ICsKPj4gKwlkZXZfZGJnKGRldiwgInBo
eV9zZXRfbW9kZShpbnN0PSV0ZCwgbW9kZT0lZCwgc3VibW9kZT0lZClcbiIsCj4+ICsJCWluc3Qg
LSBwcml2LT5waHlzLCBtb2RlLCBzdWJtb2RlKTsKPj4gKwo+PiArCWlmIChtb2RlICE9IFBIWV9N
T0RFX0VUSEVSTkVUKQo+PiArCQlyZXR1cm4gLUVPUE5PVFNVUFA7Cj4+ICsKPj4gKwlpZiAoIXBo
eV9pbnRlcmZhY2VfbW9kZV9pc19yZ21paShzdWJtb2RlKSAmJgo+PiArCSAgICBzdWJtb2RlICE9
IFBIWV9JTlRFUkZBQ0VfTU9ERV9TR01JSSkKPj4gKwkJcmV0dXJuIC1FT1BOT1RTVVBQOwo+Cj4g
Qm90aCBQSFlzIGFyZSBlcXVhbCBpbiBjYXBhYmlsaXRpZXMsIGFuZCBzdXBwb3J0IGJvdGggUkdN
SUkgYW5kIFNHTUlJLAo+IGNvcnJlY3Q/IEkgc2VlIHRoZSBkcml2ZXIgaXMgaW1wbGVtZW50ZWQg
YXMgaWYgdGhleSB3ZXJlLCBidXQgaXQgZG9lc24ndAo+IGh1cnQgdG8gYXNrLgoKRGF0YXNoZWV0
IGluZGljYXRlcyAwIGNhbiBkbyBTR01JSS9SR01JSSBhbmQgMSBjYW4gZG8gb25seSBSR01JSS4K
RGlkIHlvdSBpbXBseSB0aGF0IHRoZSBkcml2ZXIgY29kZSBzaG91bGQgcmVqZWN0IFNHTUlJIG9u
IFBIWSAxCmlmIGl0IGV2ZXIgZ2V0cyBhc2tlZCBmb3I/Cgo+PiArCj4+ICsJaW5zdC0+cGh5X2lu
dGVyZmFjZSA9IHN1Ym1vZGU7Cj4KPiBTaG9ydCBzdG9yeTogZG9uJ3QgcmVseSBvbiB0aGUgcGh5
X3NldF9tb2RlX2V4dCgpIC0+IHBoeV9wb3dlcl9vbigpIG9yZGVyLgo+IEltcGxlbWVudCB0aGUg
ZHJpdmVyIHNvIHRoYXQgaXQgd29ya3MgdGhlIG90aGVyIHdheSBhcm91bmQgdG9vLgo+Cj4gTG9u
ZyBzdG9yeToKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvYVh6RkgwOUFlSVJhd0N3
VUBzaGVsbC5hcm1saW51eC5vcmcudWsvCgpJIHdvdWxkbid0IG1pbmQsIGJ1dCB3aGF0IHNob3Vs
ZCBwaHlfcG93ZXJfb24oKSBkbyBpZiBubyBzdWJtb2RlIGhhcwpiZWVuIHByb3ZpZGVkIHRocm91
Z2ggcGh5X3NldF9tb2RlX2V4dCgpIHlldD8gR3Vlc3Mgb25lPyBGYWlsPwoKQWxzbyBvdXIgUEhZ
IHdpbGwgbmVlZCB0byBiZSByZXNldCB0byBjaGFuZ2UgaXRzIG1vZGUgaWYgd2UgZG8KcG93ZXJf
b24oKSBmb2xsb3dlZCBieSBzZXRfbW9kZSgpLCB3aGljaCBpbiBwcmFjdGljZSBpcyBuZXZlciBz
b21ldGhpbmcKd2Ugd2FudC4gTWF5YmUgdGhlcmUgaXMgYSBmbGFnIHRvIGluZGljYXRlIHRoYXQg
d2UgcmVxdWlyZSBhIHN1Ym1vZGUgdG8KcG93ZXIgb24/CgpUaGFua3MgZm9yIHRoZSBleHRlbnNp
dmUgcmV2aWV3IFZsYWRpbWlyLAoKLS0KVGjDqW8gTGVicnVuLCBCb290bGluCkVtYmVkZGVkIExp
bnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
