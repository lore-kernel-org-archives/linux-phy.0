Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1922C83F2C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 14:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IBWqgr01VwwP/VRSw9tEGS5nBut5hF2eRPOAwYHsWNs=; b=j2bIcSl8iqdI1W
	z7ULoggqypAulpmFuLgmDp9m6SBJK7yYDZ/FJd9sEr+N30PjVTST+gpxRwhqrtj9mHGW/cDKn6Rfp
	t5YWQfZYiXcFn9+UTgSj5z95N9p8VA6QoYZkw2dxgJbMikGPSkdRj1hBCNR9Mwf4SIgZVLDjrkoua
	KOD9BOBMmjQpTt0BDsZOA/bTPHi34rsWc9h/7kZClmGFcZ0NxX2dZcp7FnHAHJuE6+26fv3yvKpwW
	+TdBhSW5AOAHFzY4+8hMvt1pgo+SddbX0bWbeYGcqr7jV6ZZf3FX4bK5wN3ahXGbd8V6teLtsLcWv
	ZkAfi4etJucKG04zFdTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdWno-0069En-22;
	Tue, 05 Sep 2023 14:13:12 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdWnl-0069Dq-18;
	Tue, 05 Sep 2023 14:13:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 91547143D;
	Tue,  5 Sep 2023 07:13:43 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E63A23F67D;
	Tue,  5 Sep 2023 07:13:03 -0700 (PDT)
Date: Tue, 5 Sep 2023 15:13:01 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Chen-Yu
 Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel
 Holland <samuel@sholland.org>, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] phy: sun4i-usb: Fix a W=1 compilation failure
Message-ID: <20230905151301.591fa238@donnerap.manchester.arm.com>
In-Reply-To: <e1a5eea0-33a0-4a58-912a-9548d249ea5d@kadam.mountain>
References: <0bc81612171baaa6d5dff58c8e009debc03e1ba8.1693735840.git.christophe.jaillet@wanadoo.fr>
	<20230904005855.658819b3@slackpad.lan>
	<e1a5eea0-33a0-4a58-912a-9548d249ea5d@kadam.mountain>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_071309_506044_A54981BA 
X-CRM114-Status: GOOD (  25.01  )
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

T24gVHVlLCA1IFNlcCAyMDIzIDEzOjMyOjA4ICswMzAwCkRhbiBDYXJwZW50ZXIgPGRhbi5jYXJw
ZW50ZXJAbGluYXJvLm9yZz4gd3JvdGU6CgpIaSwKCj4gT24gTW9uLCBTZXAgMDQsIDIwMjMgYXQg
MTI6NTg6NTVBTSArMDEwMCwgQW5kcmUgUHJ6eXdhcmEgd3JvdGU6Cj4gPiBPbiBTdW4sICAzIFNl
cCAyMDIzIDEyOjExOjA2ICswMjAwCj4gPiBDaHJpc3RvcGhlIEpBSUxMRVQgPGNocmlzdG9waGUu
amFpbGxldEB3YW5hZG9vLmZyPiB3cm90ZToKPiA+ICAgCj4gPiA+IFdpdGggZ2NjIDEyLjMuMCwg
d2hlbiB0aGlzIGZpbGUgaXMgYnVpbHQsIHdlIGdldCBlcnJvcnMgc3VjaCBhczoKPiA+ID4gCj4g
PiA+IGRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmM6IEluIGZ1bmN0aW9uIOKA
mHN1bjRpX3VzYl9waHlfcHJvYmXigJk6Cj4gPiA+IGRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHkt
c3VuNGktdXNiLmM6NzkwOjUyOiBlcnJvcjog4oCYX3ZidXPigJkgZGlyZWN0aXZlIG91dHB1dCBt
YXkgYmUgdHJ1bmNhdGVkIHdyaXRpbmcgNSBieXRlcyBpbnRvIGEgcmVnaW9uIG9mIHNpemUgYmV0
d2VlbiAyIGFuZCAxMiBbLVdlcnJvcj1mb3JtYXQtdHJ1bmNhdGlvbj1dCj4gPiA+ICAgNzkwIHwg
ICAgICAgICAgICAgICAgIHNucHJpbnRmKG5hbWUsIHNpemVvZihuYW1lKSwgInVzYiVkX3ZidXMi
LCBpKTsKPiA+ID4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBefn5+fgo+ID4gPiBkcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRp
LXVzYi5jOjc5MDoxNzogbm90ZTog4oCYc25wcmludGbigJkgb3V0cHV0IGJldHdlZW4gMTAgYW5k
IDIwIGJ5dGVzIGludG8gYSBkZXN0aW5hdGlvbiBvZiBzaXplIDE2Cj4gPiA+ICAgNzkwIHwgICAg
ICAgICAgICAgICAgIHNucHJpbnRmKG5hbWUsIHNpemVvZihuYW1lKSwgInVzYiVkX3ZidXMiLCBp
KTsKPiA+ID4gICAgICAgfCAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gPiA+IAo+ID4gPiBCZWNhdXNlIG9mIHRoZSBwb3NzaWJs
ZSB2YWx1ZSBvZiAnaScsIHRoaXMgY2FuJ3QgYmUgYW4gaXNzdWUgaW4gcmVhbCB3b3JsZCAgCj4g
PiAKPiA+IFdvdWxkIHVzaW5nICJ1OCBpOyIgaGVscD8gQWZ0ZXIgYWxsIGN1cnJlbnRseSB0aGVy
ZSBhcmUgb25seSA0IFBIWXMKPiA+IG1heCwgYW5kIGluIGdlbmVyYWwgdGhpcyBpc24ndCBleHBl
Y3RlZCB0byBiZSBtb3JlIHRoYW4gYSAiaGFuZGZ1bCIsIHNvCj4gPiA4IGJpdHMgc2hvdWxkIGJl
IHBsZW50eS4gQW4gdW5zaWduZWQgaXMgYmV0dGVyIGFueXdheS4gIAo+IAo+IEdlbmVyYWxseSB1
bnNpZ25lZCB0eXBlcyBhcmUgdHJpY2tpZXIgYW5kIGNhdXNlIGJ1Z3MuICBJJ3ZlIGJsb2dnZWQK
PiBhYm91dCB0aGlzIGJlZm9yZS4gIFRoZSB0aXRsZSBpcyBhIHByb2JhYmx5IG1vcmUgbmVnYXRp
dmUgdGhhbiBpdCBzaG91bGQKPiBoYXZlIGJlZW4uCj4gCj4gaHR0cHM6Ly9zdGF0aWN0aGlua2lu
Zy53b3JkcHJlc3MuY29tLzIwMjIvMDYvMDEvdW5zaWduZWQtaW50LWktaXMtc3R1cGlkLwo+IAo+
IE15IGJsb2cgbWVudGlvbnMgdTggaS4gIEkgd291bGQgc2F5IGF2b2lkIHRoYXQgdW5sZXNzIGZv
cmNlZCBieSBhbiBBUEkuCgpGYWlyIGVub3VnaCwgdGhlIHJlYXNvbiBJIHN1Z2dlc3RlZCB1OCB3
YXMgdG8gYWxsb3cgdXMgdXNpbmcgIiV1IiBpbiB0aGUKc25wcmludGYsIHNvIGFueSBzdGF0aWMg
Y2hlY2tlciB3b3VsZCBub3QgdHJ5IHRvIGFjY291bnQgZm9yIGEgcG90ZW50aWFsCictJyBjaGFy
YWN0ZXIuIEJlY2F1c2Ugbm90IGRvaW5nIHNvIHdvdWxkIHNwb2lsIHRoYXQgYXBwcm9hY2ggZm9y
IHRoZQoidXNiJWRfaHNpY18xMk0iIHN0cmluZyBmdXJ0aGVyIGRvd24uCgo+ID4gSXQgbGVhdmVz
IGEgYml0IG9mIGEgYml0dGVyIHRhc3RlLCB0aG91Z2gsIGFzIHdlIHNob3VsZG4ndCBkbyB0aGlz
IGtpbmQKPiA+IHR5cGUgdHdlYWtpbmcsIGVzcGVjaWFsbHkgbm90IHRvIHdvcmsgYXJvdW5kIHRo
ZSBjb21waWxlciB0cnlpbmcgdG8gYmUKPiA+IGNsZXZlciwgYnV0IHRoZW4gbm90IHNlZWluZyB0
aGUgd2hvbGUgcGljdHVyZSAodGhhdCAiaSIgaXMgYm91bmRlZCBieQo+ID4gY29tcGlsZSB0aW1l
IGNvbnN0YW50cyBub3QgZXhjZWVkaW5nICI0IikuICAKPiAKPiBZZWFoLiAgVGhlcmUgaXMgYWx3
YXlzIHRoZSBvcHRpb24gb2YganVzdCBpZ25vcmluZyB0aGUgc3RhdGljIGNoZWNrZXIKPiB3aGVu
IGl0IHRlbGxzIHlvdSB0byB3cml0ZSBiYWQgY29kZS4KCkFncmVlZCBvbiB0aGF0LCB0aG91Z2gg
SSBmaW5kIHRob3NlIGRpYWdub3N0aWNzIHVzZWZ1bCwgYW5kIGp1c3QgaWdub3JpbmcKb3IgbWFz
a2luZyB0aGVtIG1pZ2h0IGNvbWUgYmFjayBhbmQgaGF1bnQgdXMgbGF0ZXIuCgpTbyBJIHN0aWxs
IHRoaW5rIHdlIHNob3VsZCBmaXggdGhpcywgb25lIHdheSBvciB0aGUgb3RoZXIuCgpCdXQgSSBm
ZWVsIHRoaXMgZ29lcyBxdWl0ZSBmYXIgaW50byBiaWtlc2hlZGRpbmcgdGVycml0b3J5LCBzbyB3
ZSBzaG91bGQKcHJvYmFibHkganVzdCBnbyB3aXRoIG5hbWVbMzJdLgoKQ2hlZXJzLApBbmRyZS4K
Cj4gWW91IGRvbid0IGhhdmUgdG8gZXZlbiBsb29rIGF0IHRoZSAqd2hvbGUqIHBpY3R1cmUgdG8g
a25vdyB0aGF0IEdDQyBpcwo+IHdyb25nLiAgVGhlIEJJVChpKSB3b3VsZCBvdmVyZmxvdyBpZiBp
IGlzIG1vcmUgdGhhbiAzMS4KPiAKPiByZWdhcmRzLAo+IGRhbiBjYXJwZW50ZXIKPiAKCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
