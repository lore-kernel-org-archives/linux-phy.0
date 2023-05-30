Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40D6EC77B73
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 07:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/SIG6W/fwSdvhhCF9rqzK5JF92nXvslH3bN8VviBgA=; b=tygGuitIkJ8Mvh
	YhCS53eLhvRgIRYVUr4LjLlqOdlazHQQ61hK8oX9sP/MDMLITRH2XKj6cB76LZuQsbl5cS8Ehl4hB
	yaOB6OgWPbaiI48H5mntpvcmbl5ffK9Kl1js7t7N3yoK2sstbnJ8XobUBIaZjKda1BQHJraDR+xy2
	j5yxueUReDrrYbR4hYK8QhRir8Q4LiknLcVaupm4LaIQpevedMZbejGmLso+SeMAKlBRNE8gdVYGv
	nqpE7av3clAgBATqy9B0+HOkiJq3S1Uqk7A0qDJRQ8gQdCh8jfwwk6iZni5xXQ1IYzE6DH8doWLOI
	EXnCW9A/MZ85c6TKPGOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3tqY-00CkGB-2y;
	Tue, 30 May 2023 07:32:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3tqW-00CkFL-2I
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 07:32:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8875760D54;
	Tue, 30 May 2023 07:32:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 649C6C433D2;
	Tue, 30 May 2023 07:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1685431963;
	bh=d/OQC623C020own5jXPNP8Wrr5LphZTC2y5V5K1Fmlc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RUzZ3/pbtf1Fbdww88A1RZ8YBfAcq8BaUwdgGXriVxL0DEN+13cFIA0iX0k3OXCn2
	 hJGgE4ffVxBs/Ow9a5QzZwTelBq0j7ZHfm0NdPLnKcedM+o/G1p5I4AuAwjvk2aX6V
	 hYnulYpqINz3wyanB+OvLJfmNPla0W0GQvca2B/g=
Date: Tue, 30 May 2023 08:32:40 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stanley =?utf-8?B?Q2hhbmdb5piM6IKy5b63XQ==?= <stanley_chang@realtek.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Michael Grzeschik <m.grzeschik@pengutronix.de>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Flavio Suligoi <f.suligoi@asem.it>,
	Matthias Kaehlcke <mka@chromium.org>,
	Mathias Nyman <mathias.nyman@linux.intel.com>,
	Ray Chi <raychi@google.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH v2 1/3] usb: phy: add usb phy notify port status API
Message-ID: <2023053014-reassure-footwork-f51c@gregkh>
References: <20230525022617.30537-1-stanley_chang@realtek.com>
 <2023052905-maimed-studied-3563@gregkh>
 <647ded70ff024a3081cbf5c45f5da12c@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <647ded70ff024a3081cbf5c45f5da12c@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_003244_786249_B22FFE3D 
X-CRM114-Status: GOOD (  19.91  )
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

T24gVHVlLCBNYXkgMzAsIDIwMjMgYXQgMDI6MTk6NDVBTSArMDAwMCwgU3RhbmxleSBDaGFuZ1vm
mIzogrLlvrddIHdyb3RlOgo+IEhpIEdyZWcsCj4gCj4gPiA+IC0tLSBhL2luY2x1ZGUvbGludXgv
dXNiL3BoeS5oCj4gPiA+ICsrKyBiL2luY2x1ZGUvbGludXgvdXNiL3BoeS5oCj4gPiA+IEBAIC0x
NDQsNiArMTQ0LDEwIEBAIHN0cnVjdCB1c2JfcGh5IHsKPiA+ID4gICAgICAgICovCj4gPiA+ICAg
ICAgIGludCAgICAgKCpzZXRfd2FrZXVwKShzdHJ1Y3QgdXNiX3BoeSAqeCwgYm9vbCBlbmFibGVk
KTsKPiA+ID4KPiA+ID4gKyAgICAgLyogbm90aWZ5IHBoeSBwb3J0IHN0YXR1cyBjaGFuZ2UgKi8K
PiA+ID4gKyAgICAgaW50ICAgICAoKm5vdGlmeV9wb3J0X3N0YXR1cykoc3RydWN0IHVzYl9waHkg
KngsCj4gPiA+ICsgICAgICAgICAgICAgaW50IHBvcnQsIHUxNiBwb3J0c3RhdHVzLCB1MTYgcG9y
dGNoYW5nZSk7Cj4gPiA+ICsKPiA+ID4gICAgICAgLyogbm90aWZ5IHBoeSBjb25uZWN0IHN0YXR1
cyBjaGFuZ2UgKi8KPiA+ID4gICAgICAgaW50ICAgICAoKm5vdGlmeV9jb25uZWN0KShzdHJ1Y3Qg
dXNiX3BoeSAqeCwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgIGVudW0gdXNiX2RldmljZV9z
cGVlZCBzcGVlZCk7Cj4gPiAKPiA+IFdoeSBjYW4ndCB0aGlzIGJlIHBhcnQgb2YgdGhlIHNhbWUg
bm90aWZ5X2Nvbm5lY3QoKSBjYWxsYmFjaz8KPiAKPiBUaGUgbm90aWZ5IGNvbm5lY3QgaXMgYXQg
ZGV2aWNlIHJlYWR5LiBCdXQgSSB3YW50IG5vdGlmeSBwb3J0IHN0YXR1cyBjaGFuZ2UgYmVmb3Jl
IHBvcnQgcmVzZXQuCj4gCj4gPiBXaGF0IG1ha2VzIGl0IGRpZmZlcmVudCBzb21laG93PyAgUGxl
YXNlIGRvY3VtZW50IHRoaXMgbXVjaCBiZXR0ZXIuCj4gCj4gSW4gUmVhbHRlayBwaHkgZHJpdmVy
LCB3ZSBoYXZlIGRlc2lnbmVkIHRvIGR5bmFtaWNhbGx5IGFkanVzdCBkaXNjb25uZWN0aW9uIGxl
dmVsIGFuZCBjYWxpYnJhdGUgcGh5IHBhcmFtZXRlcnMuCj4gU28gd2UgZG8gdGhpcyB3aGVuIHRo
ZSBkZXZpY2UgY29ubmVjdGVkIGJpdCBjaGFuZ2VzIGFuZCB3aGVuIHRoZSBkaXNjb25uZWN0ZWQg
Yml0IGNoYW5nZXMuCj4gUG9ydCBzdGF0dXMgY2hhbmdlIG5vdGlmaWNhdGlvbjoKPiAxLiBDaGVj
ayBpZiBwb3J0c3RhdHVzIGlzIFVTQl9QT1JUX1NUQVRfQ09OTkVDVElPTiBhbmQgcG9ydGNoYW5n
ZSBpcyBVU0JfUE9SVF9TVEFUX0NfQ09OTkVDVElPTi4KPiAgIFRoZSBkZXZpY2UgaXMgY29ubmVj
dGVkLCB0aGUgZHJpdmVyIGxvd2VycyB0aGUgZGlzY29ubmVjdGlvbiBsZXZlbCBhbmQgY2FsaWJy
YXRlcyB0aGUgcGh5IHBhcmFtZXRlcnMuCj4gMi4gVGhlIGRldmljZSBkaXNjb25uZWN0cywgdGhl
IGRyaXZlciBpbmNyZWFzZXMgdGhlIGRpc2Nvbm5lY3QgbGV2ZWwgYW5kIGNhbGlicmF0ZXMgdGhl
IHBoeSBwYXJhbWV0ZXJzLgo+IAo+IElmIHdlIGFkanVzdCB0aGUgZGlzY29ubmVjdGlvbiBsZXZl
bCBpbiBub3RpZnlfY29ubmVjdCAsIHRoZSBkaXNjb25uZWN0IG1heSBoYXZlIGJlZW4gdHJpZ2dl
cmVkIGF0IHRoaXMgc3RhZ2UuIAo+IFNvIHdlIG5lZWQgdG8gY2hhbmdlIHRoYXQgYXMgZWFybHkg
YXMgcG9zc2libGUuCgpQbGVhc2UgcHV0IHRoaXMgdHlwZSBvZiBpbmZvcm1hdGlvbiBpbiB0aGUg
Y2hhbmdlbG9nIGFuZCBpbiB0aGUgY29tbWVudHMKZm9yIHRoZSBjYWxsYmFjayB3aGVuIHlvdSBy
ZXN1Ym1pdCBpdC4KCnRoYW5rcywKCmdyZWcgay1oCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
