Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51162CD4F26
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 07:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCA+SJPB9Wxg3pcunvif6Ndkvq9nX4erQ8/e+S/Lsl4=; b=HoTMORLuBs6sIi
	mIqDMkeSRVRXalg1xrDbY1P4ttIxyyM+WQV1KLpZe1Kyz7e32OjQnc00+jDx7T9I+FR16Q40kCnfq
	nwLZgJH505ffp2ZB+OFMRfYtEJvjYRQn/cJS3CG+kbCdn/rZT8lZNotDheT18i5CSKDH6Oa6lXm0I
	SuJUVHBeGRifdsVpHcwKBoe4CF3XhCcFqVG8en8FT+BsY7tPv++N6Lnu0u4lk6YPTO9ep8hUnH6yy
	wzrLB0AGQNzTYIECMS/o1uDK/Rp+6wdqbLz+h/y/T44WfWawEic36SXv5Q7UzBrSh/B/1EqxEOi//
	csSnVWHHztqcWvhNN92w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMhtb-0000000FzKf-3dXi;
	Tue, 12 May 2026 07:51:15 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMhta-0000000FzKS-0IcA
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 07:51:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 37B1E60120;
	Tue, 12 May 2026 07:51:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AD63C2BCB0;
	Tue, 12 May 2026 07:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778572272;
	bh=GIepLcHTJURrppAg6CpDxGEX4YxETo5qs9bcQX5fU9g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jMRWmgM4TFh1Xb+dEKyEYsgBNhVzaPuDSi4CMld9Xc58a83X1lERve1GKOFKGOOlM
	 lclh2p1Cyp8UHep/JRikDLFtYAaIAhEN7MNNF83RuNj9VBxa9HjoL15dC8LHgiCRn6
	 POYYwA4NSblSpzS/bS6hJXZ6BiLJtrA6jBokTNtCmwsYv5X8ECFQ/JBJQ1YmrBiydz
	 ZUNaDzq5IjjKeDXyHNHVfFLbR3H79rYP8H/ra8KNgDugQY3Llud74XWQlfODlcpIPR
	 She2M/Sh1Vldu+LE7kVEn7mjEhO5kBfQ1wU0sCWhqwM24nkczmqARGsHYqrLcq2mgA
	 aBEaFoIQFA8Aw==
Date: Tue, 12 May 2026 15:51:06 +0800
From: "Peter Chen (CIX)" <peter.chen@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 2/6] usb: chipidea: tegra: Avoid controller/PHY init
 if bus is externally controlled
Message-ID: <agLb6mgP45jHjvNt@nchen-desktop>
References: <20260511135703.62470-1-clamor95@gmail.com>
 <20260511135703.62470-3-clamor95@gmail.com>
 <agJ/T8nBGWEoblmd@nchen-desktop>
 <CAPVz0n173syW9rXy7Qt_N=mChe6WBRLvjRDypcJEC50hPL4OMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPVz0n173syW9rXy7Qt_N=mChe6WBRLvjRDypcJEC50hPL4OMQ@mail.gmail.com>
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

T24gMjYtMDUtMTIgMDk6MTM6NDAsIFN2eWF0b3NsYXYgUnloZWwgd3JvdGU6Cj4g0LLRgiwgMTIg
0YLRgNCw0LIuIDIwMjbigK/RgC4g0L4gMDQ6MTYgUGV0ZXIgQ2hlbiAoQ0lYKSA8cGV0ZXIuY2hl
bkBrZXJuZWwub3JnPiDQv9C40YjQtToKPiA+Cj4gPiBPbiAyNi0wNS0xMSAxNjo1Njo1NywgU3Z5
YXRvc2xhdiBSeWhlbCB3cm90ZToKPiA+ID4gSWYgdGhlIFVTQiBjb250cm9sbGVyIGFuZCBQSFkg
YXJlIGV4dGVybmFsbHkgY29udHJvbGxlZCwgdGhlbiB0aGUKPiA+ID4gcmVnaXN0cmF0aW9uIG9m
IHRoZSBjb250cm9sbGVyIGFuZCB0aGUgUEhZIGluaXRpYWxpemF0aW9uIHNob3VsZCBiZQo+ID4g
PiBza2lwcGVkLCBzaW5jZSB0aGVzZSBjb25maWd1cmF0aW9ucyBtdXN0IGJlIGRvbmUgYnkgdGhl
IGRldmljZSB0aGF0Cj4gPiA+IGNvbnRyb2xzIHRoZSBidXMgdG8gd29yayBjb3JyZWN0bHkuCj4g
PiA+Cj4gPgo+ID4gSSBmaW5kIHlvdSBvbmx5IGNvbnRyb2wgVVNCIGNvbnRyb2xsZXIgZGV2aWNl
IGFkZCBhdCBQSFkgZHJpdmVyLCBtb3N0IG9mIFVTQiBkcml2ZXJzCj4gPiBoYXMgUEhZIGNvbnRy
b2wsIGZvciBjaGlwaWRlYSwgaXQgaGFzIFBIWSBjb250cm9sIGF0IGNvcmUuYywgd291bGQgcGxl
YXNlIHRyeSB0bwo+ID4gYWRhcHQgZm9yIGl0Pwo+ID4KPiAKPiBVc3VhbGx5IHllcywgYnV0IHRo
aXMgaXMgbm90IHRoZSBjYXNlIGZvciBUZWdyYSB1bmZvcnR1bmF0ZWx5LiBBcyB5b3UKPiBjYW4g
c2VlIFRlZ3JhIHNwZWNpZmljIHNlY3Rpb24gb2YgQ2hpcGlkZWEgZHJpdmVyIHNwZWNpZmljYWxs
eQo+IGRlc2NyaWJlcyB3aHkgaXQgaGFzIHRvIHNldCBQSFkgbWFudWFsbHkuCj4gCj4gLyoKPiAg
KiBVU0IgY29udHJvbGxlciByZWdpc3RlcnMgc2hvdWxkbid0IGJlIHRvdWNoZWQgYmVmb3JlIFBI
WSBpcwo+ICAqIGluaXRpYWxpemVkLCBvdGhlcndpc2UgQ1BVIHdpbGwgaGFuZyBiZWNhdXNlIGNs
b2NrcyBhcmUgZ2F0ZWQuCj4gICogUEhZIGRyaXZlciBjb250cm9scyBnYXRpbmcgb2YgaW50ZXJu
YWwgVVNCIGNsb2NrcyBvbiBUZWdyYS4KPiAgKi8KPiAKPiBTbyBpbiBvcmRlciB0byBwcm92aWRl
IGNvcnJlY3Qgd29yayBvZiBVU0Igd2hlbiBzZXQgYnkgYW4gZXh0ZXJuYWwKPiBkZXZpY2UsIGJv
dGggUEhZIGFuZCBjb250cm9sbGVyIGluaXQvYWRkIG11c3QgYmUgc2tpcHBlZC4KCllvdSBjb3Vs
ZCBjYWxsIGdlbmVyaWMgUEhZIEFQSXMgYXQgY2lfaGRyY190ZWdyYS5jLCBhZnRlciBQSFkgaW5p
dCBvciBwb3dlciBvbiwKY2FsbCBjb250cm9sbGVyIGluaXRpYWxpemF0aW9uLgoKPiAKPiA+IFBl
dGVyCj4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTdnlhdG9zbGF2IFJ5aGVsIDxjbGFtb3I5NUBn
bWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy91c2IvY2hpcGlkZWEvY2lfaGRyY190
ZWdyYS5jIHwgMzYgKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQo+ID4gPiAgMSBmaWxlIGNo
YW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQo+ID4gPgo+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy91c2IvY2hpcGlkZWEvY2lfaGRyY190ZWdyYS5jIGIvZHJpdmVycy91
c2IvY2hpcGlkZWEvY2lfaGRyY190ZWdyYS5jCj4gPiA+IGluZGV4IDM3Mjc4OGYwZjk3MC4uNTkz
MzkwYTgxOGQxIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3VzYi9jaGlwaWRlYS9jaV9oZHJj
X3RlZ3JhLmMKPiA+ID4gKysrIGIvZHJpdmVycy91c2IvY2hpcGlkZWEvY2lfaGRyY190ZWdyYS5j
Cj4gPiA+IEBAIC0zMiw2ICszMiw3IEBAIHN0cnVjdCB0ZWdyYV91c2Igewo+ID4gPiAgICAgICBz
dHJ1Y3QgY2xrICpjbGs7Cj4gPiA+Cj4gPiA+ICAgICAgIGJvb2wgbmVlZHNfZG91YmxlX3Jlc2V0
Owo+ID4gPiArICAgICBib29sIGV4dGVybmFsbHlfY29udHJvbGxlZDsKPiA+ID4gIH07Cj4gPiA+
Cj4gPiA+ICBzdHJ1Y3QgdGVncmFfdXNiX3NvY19pbmZvIHsKPiA+ID4gQEAgLTMxMiwyMCArMzEz
LDI1IEBAIHN0YXRpYyBpbnQgdGVncmFfdXNiX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCj4gPiA+ICAgICAgIGlmIChkZXZpY2VfcHJvcGVydHlfcHJlc2VudCgmcGRldi0+ZGV2
LCAibnZpZGlhLG5lZWRzLWRvdWJsZS1yZXNldCIpKQo+ID4gPiAgICAgICAgICAgICAgIHVzYi0+
bmVlZHNfZG91YmxlX3Jlc2V0ID0gdHJ1ZTsKPiA+ID4KPiA+ID4gKyAgICAgaWYgKGRldmljZV9w
cm9wZXJ0eV9wcmVzZW50KCZwZGV2LT5kZXYsICJudmlkaWEsZXh0ZXJuYWwtY29udHJvbCIpKQo+
ID4gPiArICAgICAgICAgICAgIHVzYi0+ZXh0ZXJuYWxseV9jb250cm9sbGVkID0gdHJ1ZTsKPiA+
ID4gKwo+ID4gPiAgICAgICBlcnIgPSB0ZWdyYV91c2JfcmVzZXRfY29udHJvbGxlcigmcGRldi0+
ZGV2KTsKPiA+ID4gICAgICAgaWYgKGVycikgewo+ID4gPiAgICAgICAgICAgICAgIGRldl9lcnJf
cHJvYmUoJnBkZXYtPmRldiwgZXJyLCAiZmFpbGVkIHRvIHJlc2V0IGNvbnRyb2xsZXIiKTsKPiA+
ID4gICAgICAgICAgICAgICBnb3RvIGZhaWxfcG93ZXJfb2ZmOwo+ID4gPiAgICAgICB9Cj4gPiA+
Cj4gPiA+IC0gICAgIC8qCj4gPiA+IC0gICAgICAqIFVTQiBjb250cm9sbGVyIHJlZ2lzdGVycyBz
aG91bGRuJ3QgYmUgdG91Y2hlZCBiZWZvcmUgUEhZIGlzCj4gPiA+IC0gICAgICAqIGluaXRpYWxp
emVkLCBvdGhlcndpc2UgQ1BVIHdpbGwgaGFuZyBiZWNhdXNlIGNsb2NrcyBhcmUgZ2F0ZWQuCj4g
PiA+IC0gICAgICAqIFBIWSBkcml2ZXIgY29udHJvbHMgZ2F0aW5nIG9mIGludGVybmFsIFVTQiBj
bG9ja3Mgb24gVGVncmEuCj4gPiA+IC0gICAgICAqLwo+ID4gPiAtICAgICBlcnIgPSB1c2JfcGh5
X2luaXQodXNiLT5waHkpOwo+ID4gPiAtICAgICBpZiAoZXJyKQo+ID4gPiAtICAgICAgICAgICAg
IGdvdG8gZmFpbF9wb3dlcl9vZmY7Cj4gPiA+ICsgICAgIGlmICghdXNiLT5leHRlcm5hbGx5X2Nv
bnRyb2xsZWQpIHsKPiA+ID4gKyAgICAgICAgICAgICAvKgo+ID4gPiArICAgICAgICAgICAgICAq
IFVTQiBjb250cm9sbGVyIHJlZ2lzdGVycyBzaG91bGRuJ3QgYmUgdG91Y2hlZCBiZWZvcmUgUEhZ
IGlzCj4gPiA+ICsgICAgICAgICAgICAgICogaW5pdGlhbGl6ZWQsIG90aGVyd2lzZSBDUFUgd2ls
bCBoYW5nIGJlY2F1c2UgY2xvY2tzIGFyZSBnYXRlZC4KPiA+ID4gKyAgICAgICAgICAgICAgKiBQ
SFkgZHJpdmVyIGNvbnRyb2xzIGdhdGluZyBvZiBpbnRlcm5hbCBVU0IgY2xvY2tzIG9uIFRlZ3Jh
Lgo+ID4gPiArICAgICAgICAgICAgICAqLwo+ID4gPiArICAgICAgICAgICAgIGVyciA9IHVzYl9w
aHlfaW5pdCh1c2ItPnBoeSk7Cj4gPiA+ICsgICAgICAgICAgICAgaWYgKGVycikKPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgIGdvdG8gZmFpbF9wb3dlcl9vZmY7Cj4gPiA+ICsgICAgIH0KPiA+
ID4KPiA+ID4gICAgICAgLyogc2V0dXAgYW5kIHJlZ2lzdGVyIENoaXBJZGVhIEhEUkMgZGV2aWNl
ICovCj4gPiA+ICAgICAgIHVzYi0+c29jID0gc29jOwo+ID4gPiBAQCAtMzQyLDEyICszNDgsMTQg
QEAgc3RhdGljIGludCB0ZWdyYV91c2JfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiA+ID4gICAgICAgaWYgKG9mX3VzYl9nZXRfcGh5X21vZGUocGRldi0+ZGV2Lm9mX25vZGUp
ID09IFVTQlBIWV9JTlRFUkZBQ0VfTU9ERV9VTFBJKQo+ID4gPiAgICAgICAgICAgICAgIHVzYi0+
ZGF0YS5mbGFncyAmPSB+Q0lfSERSQ19TVVBQT1JUU19SVU5USU1FX1BNOwo+ID4gPgo+ID4gPiAt
ICAgICB1c2ItPmRldiA9IGNpX2hkcmNfYWRkX2RldmljZSgmcGRldi0+ZGV2LCBwZGV2LT5yZXNv
dXJjZSwKPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGRldi0+bnVt
X3Jlc291cmNlcywgJnVzYi0+ZGF0YSk7Cj4gPiA+IC0gICAgIGlmIChJU19FUlIodXNiLT5kZXYp
KSB7Cj4gPiA+IC0gICAgICAgICAgICAgZXJyID0gZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCBQ
VFJfRVJSKHVzYi0+ZGV2KSwKPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICJmYWlsZWQgdG8gYWRkIEhEUkMgZGV2aWNlIik7Cj4gPiA+IC0gICAgICAgICAgICAgZ290byBw
aHlfc2h1dGRvd247Cj4gPiA+ICsgICAgIGlmICghdXNiLT5leHRlcm5hbGx5X2NvbnRyb2xsZWQp
IHsKPiA+ID4gKyAgICAgICAgICAgICB1c2ItPmRldiA9IGNpX2hkcmNfYWRkX2RldmljZSgmcGRl
di0+ZGV2LCBwZGV2LT5yZXNvdXJjZSwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBwZGV2LT5udW1fcmVzb3VyY2VzLCAmdXNiLT5kYXRhKTsKPiA+ID4g
KyAgICAgICAgICAgICBpZiAoSVNfRVJSKHVzYi0+ZGV2KSkgewo+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgZXJyID0gZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCBQVFJfRVJSKHVzYi0+ZGV2
KSwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImZhaWxl
ZCB0byBhZGQgSERSQyBkZXZpY2UiKTsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGdvdG8g
cGh5X3NodXRkb3duOwo+ID4gPiArICAgICAgICAgICAgIH0KPiA+ID4gICAgICAgfQo+ID4gPgo+
ID4gPiAgICAgICByZXR1cm4gMDsKPiA+ID4gLS0KPiA+ID4gMi41MS4wCj4gPiA+Cj4gPgo+ID4g
LS0KPiA+Cj4gPiBCZXN0IHJlZ2FyZHMsCj4gPiBQZXRlcgoKLS0gCgpCZXN0IHJlZ2FyZHMsClBl
dGVyCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
