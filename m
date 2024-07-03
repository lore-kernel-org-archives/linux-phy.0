Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FF5DC2BD09
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jul 2024 09:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTv9XYzpzNl9PlVBRG/PvpSxS7rjwVZ85c/p/Xc2//0=; b=ffCskyzj17Z6Uv
	lK8G9ARVdj3ZIlVQ2T9sme3pcmKWdOMcva4TBnh6bD7OJTwkGRVCKkdkrcqX43Kf0zGh19Qjc90GT
	M5mTlScFz8yKNgolwOerJZU4PQcAC2nTD4zSSV7YcMm/z7DsODATW/gxi2MsjUHLcq9bNcyb8TbVQ
	pimz/vaH/pGE4QieeCfF0LL+7nUWNdhTiRCCT0lG+vxpoPS3SOcregsV4yPgYgeEnn85XSuHisvfg
	LBlRK9i2gUXrVzkc5NEYHIJZeVb/LJ3S1i5XVCJ9Y7Zkh2tOsZoZ5zYyKumJ6dzd7tJZO7SECMpFZ
	D1t4r7O72LVhnvo69n0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOvyo-00000009Vo6-04t8;
	Wed, 03 Jul 2024 09:08:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOvyl-00000009Vng-0F56
	for linux-phy@lists.infradead.org;
	Wed, 03 Jul 2024 09:08:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sOvyc-0000LM-Ui; Wed, 03 Jul 2024 11:08:34 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sOvyc-006oeT-ED; Wed, 03 Jul 2024 11:08:34 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sOvyc-0004Il-1C;
	Wed, 03 Jul 2024 11:08:34 +0200
Message-ID: <c551445782f327205c5cdb59717e2879e0982d80.camel@pengutronix.de>
Subject: Re: [PATCH v5 4/4] arm64: dts: renesas: rz-smarc: Replace fixed
 regulator for USB VBUS
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Biju Das <biju.das.jz@bp.renesas.com>, Geert Uytterhoeven
	 <geert@linux-m68k.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,  Geert Uytterhoeven
 <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "biju.das.au" <biju.das.au@gmail.com>
Date: Wed, 03 Jul 2024 11:08:34 +0200
In-Reply-To: <TY3PR01MB11346C77668002325FD916DBD86DD2@TY3PR01MB11346.jpnprd01.prod.outlook.com>
References: <20240702180032.207275-1-biju.das.jz@bp.renesas.com>
	 <20240702180032.207275-5-biju.das.jz@bp.renesas.com>
	 <CAMuHMdUmvWPPBVqhtpu2dovwQg7YA7TVZBRnATUiY+1QRy0B1w@mail.gmail.com>
	 <TY3PR01MB11346C77668002325FD916DBD86DD2@TY3PR01MB11346.jpnprd01.prod.outlook.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_020843_118225_FA0B2E06 
X-CRM114-Status: GOOD (  19.92  )
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

T24gTWksIDIwMjQtMDctMDMgYXQgMDg6NTYgKzAwMDAsIEJpanUgRGFzIHdyb3RlOgo+IEhpIEdl
ZXJ0LAo+IAo+IFRoYW5rcyBmb3IgdGhlIGZlZWRiYWNrLgo+IAo+ID4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0KPiA+IEZyb206IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnRAbGludXgtbTY4
ay5vcmc+Cj4gPiBTZW50OiBXZWRuZXNkYXksIEp1bHkgMywgMjAyNCA5OjM2IEFNCj4gPiBTdWJq
ZWN0OiBSZTogW1BBVENIIHY1IDQvNF0gYXJtNjQ6IGR0czogcmVuZXNhczogcnotc21hcmM6IFJl
cGxhY2UgZml4ZWQgcmVndWxhdG9yIGZvciBVU0IgVkJVUwo+ID4gCj4gPiBIaSBCaWp1LAo+ID4g
Cj4gPiBPbiBUdWUsIEp1bCAyLCAyMDI0IGF0IDg6MDHigK9QTSBCaWp1IERhcyA8YmlqdS5kYXMu
anpAYnAucmVuZXNhcy5jb20+IHdyb3RlOgo+ID4gPiBSZXBsYWNlIHRoZSBmaXhlZCByZWd1bGF0
b3IgZm9yIFVTQiBWQlVTIGFuZCB1c2UgdGhlIHByb3BlciBvbmUgdGhhdAo+ID4gPiBjb250cm9s
cyByZWd1bGF0b3IgYmFzZWQgb24gVkJVUyBkZXRlY3Rpb24uCj4gPiA+IAo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBCaWp1IERhcyA8YmlqdS5kYXMuanpAYnAucmVuZXNhcy5jb20+Cj4gPiA+IC0tLQo+
ID4gPiB2NC0+djU6Cj4gPiA+ICAqIFVwZGF0ZWQgY29tbWl0IGRlc2NyaXB0aW9uLgo+ID4gCj4g
PiBUaGFua3MgZm9yIHRoZSB1cGRhdGUhCj4gPiAKPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yZW5lc2FzL3J6LXNtYXJjLWNvbW1vbi5kdHNpCj4gPiA+ICsrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVuZXNhcy9yei1zbWFyYy1jb21tb24uZHRzaQo+ID4gPiBAQCAtNTQsMTQgKzU0
LDYgQEAgY29kZWNfZGFpOiBzaW1wbGUtYXVkaW8tY2FyZCxjb2RlYyB7Cj4gPiA+ICAgICAgICAg
ICAgICAgICB9Owo+ID4gPiAgICAgICAgIH07Cj4gPiA+IAo+ID4gPiAtICAgICAgIHVzYjBfdmJ1
c19vdGc6IHJlZ3VsYXRvci11c2IwLXZidXMtb3RnIHsKPiA+ID4gLSAgICAgICAgICAgICAgIGNv
bXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ID4gLQo+ID4gPiAtICAgICAgICAgICAg
ICAgcmVndWxhdG9yLW5hbWUgPSAiVVNCMF9WQlVTX09URyI7Cj4gPiA+IC0gICAgICAgICAgICAg
ICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPiA+ID4gLSAgICAgICAgICAg
ICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ID4gPiAtICAgICAgIH07
Cj4gPiA+IC0KPiA+ID4gICAgICAgICB2Y2NxX3NkaGkxOiByZWd1bGF0b3ItdmNjcS1zZGhpMSB7
Cj4gPiA+ICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRvci1ncGlvIjsKPiA+
ID4gICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gIlNESEkxIFZjY1EiOyBAQCAtMTM5
LDYgKzEzMSw5IEBACj4gPiA+ICZvaGNpMSB7Cj4gPiA+IAo+ID4gPiAgJnBoeXJzdCB7Cj4gPiA+
ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gPiArICAgICAgIHVzYjBfdmJ1c19vdGc6IHJl
Z3VsYXRvci12YnVzIHsKPiA+IAo+ID4gVGhlIGxhYmVsIGlzIG5vdCByZWFsbHkgbmVlZGVkLCBp
cyBpdD8KPiAKPiBUaGUgbGFiZWwgaXMgdXNlZCBpbiB1c2IyX3BoeTAgbm9kZS4KPiAKPiB2YnVz
LXN1cHBseSA9IDwmdXNiMF92YnVzX290Zz47Cj4gCj4gPiAKPiA+ID4gKyAgICAgICAgICAgICAg
IHJlZ3VsYXRvci1uYW1lID0gInZidXMiOwo+ID4gPiArICAgICAgIH07Cj4gPiAKPiA+IEFsc28s
IGFzIHRoZSByZWd1bGF0b3ItdmJ1cyBzdWJub2RlIGlzIHJlcXVpcmVkLCBwZXJoYXBzIGl0IHNo
b3VsZCBiZSBtb3ZlZCB0byB0aGUgU29DLQo+ID4gc3BlY2lmaWMgLmR0c2k/IE9yIGRvIHlvdSBr
ZWVwIGl0IGhlcmUgZm9yIGJvYXJkLXNwZWNpZmljIGNvbnRyb2wgb2YgdGhlIHJlZ3VsYXRvciBu
YW1lLCBpLmUuIHRvCj4gPiBhdm9pZCBjb25mbGljdHM/Cj4gCj4gWWVzLCBqdXN0IHRvIGF2b2lk
IGNvbmZsaWN0cy4gTGF0ZXIgSSBjYW4gbW92ZSB0byBpbmRpdmlkdWFsIFNvQyBzcGVjaWZpYyBk
dHNpJ3MKCkFscmlnaHQsIHRoYW5rcyEgQXBwbGllZCB0byByZXNldC9uZXh0LgoKWzEvNF0gZHQt
YmluZGluZ3M6IHJlc2V0OiByZW5lc2FzLHJ6ZzJsLXVzYnBoeS1jdHJsOiBEb2N1bWVudCBVU0Ig
VkJVUyByZWd1bGF0b3IKICAgICAgaHR0cHM6Ly9naXQucGVuZ3V0cm9uaXguZGUvY2dpdC9wemEv
bGludXgvY29tbWl0Lz9pZD1mNjRmMmQ2ZmRkYTQKWzIvNF0gcmVzZXQ6IHJlbmVzYXM6IEFkZCBV
U0IgVkJVUyByZWd1bGF0b3IgZGV2aWNlIGFzIGNoaWxkCiAgICAgIGh0dHBzOi8vZ2l0LnBlbmd1
dHJvbml4LmRlL2NnaXQvcHphL2xpbnV4L2NvbW1pdC8/aWQ9NDA2OGYyMmU0YjQ3ClszLzRdIHBo
eTogcmVuZXNhczogcGh5LXJjYXItZ2VuMy11c2IyOiBDb250cm9sIFZCVVMgZm9yIFJaL0cyTCBT
b0NzCiAgICAgIGh0dHBzOi8vZ2l0LnBlbmd1dHJvbml4LmRlL2NnaXQvcHphL2xpbnV4L2NvbW1p
dC8/aWQ9MjQ4NDM0MDRlZmU0Cls0LzRdIGFybTY0OiBkdHM6IHJlbmVzYXM6IHJ6LXNtYXJjOiBS
ZXBsYWNlIGZpeGVkIHJlZ3VsYXRvciBmb3IgVVNCIFZCVVMKICAgICAgaHR0cHM6Ly9naXQucGVu
Z3V0cm9uaXguZGUvY2dpdC9wemEvbGludXgvY29tbWl0Lz9pZD1jMTI2N2UxYWZhZTYKCnJlZ2Fy
ZHMKUGhpbGlwcAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
