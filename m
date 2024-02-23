Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5066EC54798
	for <linux-phy@archiver.kernel.org>; Fri, 23 Feb 2024 12:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PaNeyXy15c0FsQcE+uSMoFP8uZe1vcQ+xSU1+jwDwU=; b=vS4RnUA/K70674
	qa+Ay+aHKV8zG6F/fUwU6l7FWL+Hh90FghTViEEB6QSIPo7Yo5eApQNSCyH/6fAHp5q158715OOKG
	pe69EZR6RkzMeSJfQWcoHMePwSA//Fb8h15Dk91jVP9Zs/SU2V3WZWkHRAk6nsEQlt54irpbFcgID
	TXlEOXUbVpRYfvar1Hoh6Dt5u+HDmByTnEwAzBk/FpDuccjV3l/GcXOZclGd9oCBGLmoqReCw2gjZ
	Q6zABisqzMmv2ahGYyezGg0lQiiNw2buIBzvbJyP3gpu72fWl7g3mxIoOmFJWeSOrpaXjZCUGcUcM
	jX8zEi1rWwGxmd0OFcYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUPo-00000009HdA-3QJt;
	Fri, 23 Feb 2024 12:12:32 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdUPl-00000009Hci-0XmO
	for linux-phy@lists.infradead.org;
	Fri, 23 Feb 2024 12:12:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 184A6CE2AD8;
	Fri, 23 Feb 2024 12:12:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D745C433F1;
	Fri, 23 Feb 2024 12:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708690346;
	bh=Si1cSo6cLV2RpagB4x8pLhXBiIQGrzIpVFKNX/ozh2Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Olt4mu6uPKZ/cjBiywTyt2Ub7F7gzZx+1aKJHPDuRQG492D9JyACSCH0QbvofRGL6
	 54ZktXNYcTFGuq739eTCqu7H8Kk97Ax6y0HBNUCo2yx1otQTwylGzTcUapDFR+FWKK
	 mtCRJDQT1YQxieVk7T5QA+rf2VdtDni6/G8syEx4rd+SKaU/WwJ7mVQlKXvnvyacxp
	 slChlzkNGHYlf7dWZakTUQjZPRJTozACw1wNfKtcv2Y2NMv7MmRTzSM4TTDX6nwDge
	 2zvavTeGYZ1F9yllFA+SmFsVC5xz6eZdAISZZsAblES20t2GmsnpsrrUIVmO66VlrK
	 Napj67BGrguBg==
Date: Fri, 23 Feb 2024 17:42:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shengyang Chen <shengyang.chen@starfivetech.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"kishon@kernel.org" <kishon@kernel.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	Minda Chen <minda.chen@starfivetech.com>,
	Changhuang Liang <changhuang.liang@starfivetech.com>,
	"rogerq@kernel.org" <rogerq@kernel.org>,
	"geert+renesas@glider.be" <geert+renesas@glider.be>,
	Keith Zhao <keith.zhao@starfivetech.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/2] phy: starfive: Add mipi dphy tx support
Message-ID: <ZdiLpvOgi8ztTT5V@matsya>
References: <20240206061921.107372-1-shengyang.chen@starfivetech.com>
 <20240206061921.107372-3-shengyang.chen@starfivetech.com>
 <ZcNc8zZzsVU6viBL@matsya>
 <NT0PR01MB107009D37C2BBD9AC5B3CC4FEF56A@NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <NT0PR01MB107009D37C2BBD9AC5B3CC4FEF56A@NT0PR01MB1070.CHNPR01.prod.partner.outlook.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_041229_599964_59764778 
X-CRM114-Status: GOOD (  26.20  )
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

T24gMjItMDItMjQsIDA4OjQ4LCBTaGVuZ3lhbmcgQ2hlbiB3cm90ZToKPiBIaSwgVmlub2QKPiAK
PiBUaGFua3MgZm9yIHJldmlldyBhbmQgY29tbWVudC4KPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tCj4gPiBGcm9tOiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgo+ID4gU2Vu
dDogMjAyNOW5tDLmnIg35pelIDE4OjM2Cj4gPiBUbzogU2hlbmd5YW5nIENoZW4gPHNoZW5neWFu
Zy5jaGVuQHN0YXJmaXZldGVjaC5jb20+Cj4gPiBDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5v
cmc7IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnOwo+ID4ga2lzaG9uQGtlcm5lbC5vcmc7
IHJvYmgrZHRAa2VybmVsLm9yZzsga3J6eXN6dG9mLmtvemxvd3NraStkdEBsaW5hcm8ub3JnOwo+
ID4gY29ub3IrZHRAa2VybmVsLm9yZzsgcC56YWJlbEBwZW5ndXRyb25peC5kZTsgTWluZGEgQ2hl
bgo+ID4gPG1pbmRhLmNoZW5Ac3RhcmZpdmV0ZWNoLmNvbT47IENoYW5naHVhbmcgTGlhbmcKPiA+
IDxjaGFuZ2h1YW5nLmxpYW5nQHN0YXJmaXZldGVjaC5jb20+OyByb2dlcnFAa2VybmVsLm9yZzsK
PiA+IGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlOyBLZWl0aCBaaGFvIDxrZWl0aC56aGFvQHN0YXJm
aXZldGVjaC5jb20+Owo+ID4gbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwo+ID4gU3ViamVj
dDogUmU6IFtQQVRDSCB2MyAyLzJdIHBoeTogc3RhcmZpdmU6IEFkZCBtaXBpIGRwaHkgdHggc3Vw
cG9ydAo+ID4gCj4gPiBPbiAwNi0wMi0yNCwgMTQ6MTksIFNoZW5neWFuZyBDaGVuIHdyb3RlOgo+
ID4gPiBBZGQgbWlwaSBkcGh5IHR4IHN1cHBvcnQgZm9yIHRoZSBTdGFyRml2ZSBKSDcxMTAgU29D
Lgo+ID4gPiBJdCBpcyBhIG1vZHVsZSB3aGljaCBpcyB1c2VkIHRvIHJlY2VpdmUgZGF0YSBmcm9t
IERTSSBkcml2ZXIgYW5kCj4gPiA+IHRyYW5zZmVyIGRhdGEgdG8gRFNJIGludGVyZmFjZSBsaWtl
IG1pcGkgc2NyZWVuLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTaGVuZ3lhbmcgQ2hlbiA8
c2hlbmd5YW5nLmNoZW5Ac3RhcmZpdmV0ZWNoLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBNQUlOVEFJ
TkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgNyArCj4gPiA+ICBkcml2ZXJz
L3BoeS9zdGFyZml2ZS9LY29uZmlnICAgICAgICAgICAgICB8ICAxMCArCj4gPiA+ICBkcml2ZXJz
L3BoeS9zdGFyZml2ZS9NYWtlZmlsZSAgICAgICAgICAgICB8ICAgMSArCj4gPiA+ICBkcml2ZXJz
L3BoeS9zdGFyZml2ZS9waHktamg3MTEwLWRwaHktdHguYyB8IDYzNQo+ID4gPiArKysrKysrKysr
KysrKysrKysrKysrCj4gPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDY1MyBpbnNlcnRpb25zKCspCj4g
PiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9waHkvc3RhcmZpdmUvcGh5LWpoNzExMC1k
cGh5LXR4LmMKPiA+ID4KPiA+ID4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5F
UlMgaW5kZXgKPiA+ID4gOTQ0YjhlYzMzNjM5Li41ZTA2MmI3MzkzY2IgMTAwNjQ0Cj4gPiA+IC0t
LSBhL01BSU5UQUlORVJTCj4gPiA+ICsrKyBiL01BSU5UQUlORVJTCj4gPiA+IEBAIC0yMDg2NCw2
ICsyMDg2NCwxMyBAQCBTOglTdXBwb3J0ZWQKPiA+ID4gIEY6CURvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvc3RhcmZpdmUsamg3MTEwLWRwaHktcngueWFtbAo+ID4gPiAgRjoJ
ZHJpdmVycy9waHkvc3RhcmZpdmUvcGh5LWpoNzExMC1kcGh5LXJ4LmMKPiA+ID4KPiA+ID4gK1NU
QVJGSVZFIEpINzExMCBEUEhZIFRYIERSSVZFUgo+ID4gPiArTToJS2VpdGggWmhhbyA8a2VpdGgu
emhhb0BzdGFyZml2ZXRlY2guY29tPgo+ID4gPiArTToJU2hlbmd5YW5nIENoZW4gPHNoZW5neWFu
Zy5jaGVuQHN0YXJmaXZldGVjaC5jb20+Cj4gPiA+ICtTOglTdXBwb3J0ZWQKPiA+ID4gK0Y6CURv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc3RhcmZpdmUsamg3MTEwLWRwaHkt
dHgueWFtbAo+ID4gPiArRjoJZHJpdmVycy9waHkvc3RhcmZpdmUvcGh5LWpoNzExMC1kcGh5LXR4
LmMKPiA+ID4gKwo+ID4gPiAgU1RBUkZJVkUgSkg3MTEwIE1NQy9TRC9TRElPIERSSVZFUgo+ID4g
PiAgTToJV2lsbGlhbSBRaXUgPHdpbGxpYW0ucWl1QHN0YXJmaXZldGVjaC5jb20+Cj4gPiA+ICBT
OglTdXBwb3J0ZWQKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3N0YXJmaXZlL0tjb25m
aWcKPiA+ID4gYi9kcml2ZXJzL3BoeS9zdGFyZml2ZS9LY29uZmlnIGluZGV4IDk1MDhlMjE0MzAx
MS4uZDBjZGQ3Y2I0YTEzIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3BoeS9zdGFyZml2ZS9L
Y29uZmlnCj4gPiA+ICsrKyBiL2RyaXZlcnMvcGh5L3N0YXJmaXZlL0tjb25maWcKPiA+ID4gQEAg
LTE1LDYgKzE1LDE2IEBAIGNvbmZpZyBQSFlfU1RBUkZJVkVfSkg3MTEwX0RQSFlfUlgKPiA+ID4g
IAkgIHN5c3RlbS4gSWYgTSBpcyBzZWxlY3RlZCwgdGhlIG1vZHVsZSB3aWxsIGJlIGNhbGxlZAo+
ID4gPiAgCSAgcGh5LWpoNzExMC1kcGh5LXJ4LmtvLgo+ID4gPgo+ID4gPiArY29uZmlnIFBIWV9T
VEFSRklWRV9KSDcxMTBfRFBIWV9UWAo+ID4gPiArCXRyaXN0YXRlICJTdGFyRml2ZSBKSDcxMTAg
RC1QSFkgVFggU3VwcG9ydCIKPiA+ID4gKwlkZXBlbmRzIG9uIEhBU19JT01FTQo+ID4gPiArCXNl
bGVjdCBHRU5FUklDX1BIWQo+ID4gPiArCXNlbGVjdCBHRU5FUklDX1BIWV9NSVBJX0RQSFkKPiA+
ID4gKwloZWxwCj4gPiA+ICsJICBDaG9vc2UgdGhpcyBvcHRpb24gaWYgeW91IGhhdmUgYSBTdGFy
Rml2ZSBELVBIWSBUWCBpbiB5b3VyCj4gPiA+ICsJICBzeXN0ZW0uIElmIE0gaXMgc2VsZWN0ZWQs
IHRoZSBtb2R1bGUgd2lsbCBiZSBjYWxsZWQKPiA+ID4gKwkgIHBoeS1qaDcxMTAtZHBoeS10eC5r
by4KPiA+ID4gKwo+ID4gPiAgY29uZmlnIFBIWV9TVEFSRklWRV9KSDcxMTBfUENJRQo+ID4gPiAg
CXRyaXN0YXRlICJTdGFyZml2ZSBKSDcxMTAgUENJRSAyLjAvVVNCIDMuMCBQSFkgc3VwcG9ydCIK
PiA+ID4gIAlkZXBlbmRzIG9uIEhBU19JT01FTQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvc3RhcmZpdmUvTWFrZWZpbGUKPiA+ID4gYi9kcml2ZXJzL3BoeS9zdGFyZml2ZS9NYWtlZmls
ZSBpbmRleCBiMzkxMDE4YjdjNDcuLmVlZGM0YTZmZWMxNQo+ID4gPiAxMDA2NDQKPiA+ID4gLS0t
IGEvZHJpdmVycy9waHkvc3RhcmZpdmUvTWFrZWZpbGUKPiA+ID4gKysrIGIvZHJpdmVycy9waHkv
c3RhcmZpdmUvTWFrZWZpbGUKPiA+ID4gQEAgLTEsNCArMSw1IEBACj4gPiA+ICAjIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gPiA+ICBvYmotJChDT05GSUdfUEhZX1NUQVJGSVZF
X0pINzExMF9EUEhZX1JYKQkrPSBwaHktamg3MTEwLWRwaHktcngubwo+ID4gPiArb2JqLSQoQ09O
RklHX1BIWV9TVEFSRklWRV9KSDcxMTBfRFBIWV9UWCkJKz0gcGh5LWpoNzExMC1kcGh5LXR4Lm8K
PiA+ID4gIG9iai0kKENPTkZJR19QSFlfU1RBUkZJVkVfSkg3MTEwX1BDSUUpCQkrPSBwaHktamg3
MTEwLXBjaWUubwo+ID4gPiAgb2JqLSQoQ09ORklHX1BIWV9TVEFSRklWRV9KSDcxMTBfVVNCKQkJ
Kz0gcGh5LWpoNzExMC11c2Iubwo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc3RhcmZp
dmUvcGh5LWpoNzExMC1kcGh5LXR4LmMKPiA+ID4gYi9kcml2ZXJzL3BoeS9zdGFyZml2ZS9waHkt
amg3MTEwLWRwaHktdHguYwo+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiBpbmRleCAw
MDAwMDAwMDAwMDAuLjAwYmUxMThjOTYwNgo+ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+ICsrKyBi
L2RyaXZlcnMvcGh5L3N0YXJmaXZlL3BoeS1qaDcxMTAtZHBoeS10eC5jCj4gPiA+IEBAIC0wLDAg
KzEsNjM1IEBACj4gPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsKPiA+
ID4gKy8qCj4gPiA+ICsgKiBEUEhZIFRYIGRyaXZlciBmb3IgdGhlIFN0YXJGaXZlIEpINzExMCBT
b0MKPiA+ID4gKyAqCj4gPiA+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMjMgU3RhckZpdmUgVGVjaG5v
bG9neSBDby4sIEx0ZC4KPiA+ID4gKyAqIEF1dGhvcjogS2VpdGggWmhhbyA8a2VpdGguemhhb0Bz
dGFyZml2ZXRlY2guY29tPgo+ID4gPiArICogQXV0aG9yOiBTaGVuZ3lhbmcgQ2hlbiA8c2hlbmd5
YW5nLmNoZW5Ac3RhcmZpdmV0ZWNoLmNvbT4gICovCj4gPiA+ICsKPiA+ID4gKyNpbmNsdWRlIDxs
aW51eC9jbGsuaD4KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9pby5oPgo+ID4gPiArI2luY2x1ZGUg
PGxpbnV4L21mZC9zeXNjb24uaD4KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiA+
ID4gKyNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L29mX2Rldmlj
ZS5oPgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L3BoeS9waHkuaD4KPiA+ID4gKyNpbmNsdWRlIDxs
aW51eC9waHkvcGh5LW1pcGktZHBoeS5oPgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3Jt
X2RldmljZS5oPgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L3BtX3J1bnRpbWUuaD4KPiA+ID4gKyNp
bmNsdWRlIDxsaW51eC9yZXNldC5oPgo+ID4gPiArCj4gPiA+ICsjZGVmaW5lIFNURl9EUEhZX0FQ
QklGU0FJRl9TWVNDRkcoeCkJCQkoeCkKPiA+ID4gKwo+ID4gPiArI2RlZmluZSAgU1RGX0RQSFlf
QU9OX1BPV0VSX1JFQURZX05fU0hJRlQJCTB4MFUKPiA+ID4gKyNkZWZpbmUgIFNURl9EUEhZX0FP
Tl9QT1dFUl9SRUFEWV9OX01BU0sJCUJJVCgwKQo+ID4gPiArI2RlZmluZSAgU1RGX0RQSFlfQ0ZH
X0wwX1NXQVBfU0VMX1NISUZUCQkJMHhDVQo+ID4gCj4gPiBsb3dlciBjYXNlIHBsZWFzZSwgaGVy
ZSBhbmQgZXZlcnl3aGVyZQo+IAo+IFNvcnJ5LCBJJ20gYSBsaXR0bGUgY29uZnVzZWQgYWJvdXQg
dGhpcy4KPiBEbyB5b3UgbWVhbiBjaGFuZ2luZyAnMHhDVScgdG8gJzB4Q3UnPwoKTm9wZSwgaXQg
c2hvdWxkIGJlIDB4Y1UsIGFsbCB0aGUgaGV4IHZhbHVlcyBzaG91bGQgYmUgaW4gbG93ZXIgY2Fz
ZQoKLS0gCn5WaW5vZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
