Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7023CC54F54
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 12:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+wzO67/74kkehvOLunRvwMzRx+6+uCeldyoilpbPv5U=; b=CEs1TlkuptZGm3
	qqPVpfoyEWlkONe/XOIGoI3NU5oy7c+2F+le3dGSes+acMjtVCdI3iYQPZDgi6hr2wqqnpqcMPm5G
	6AiOL5sO+AWj9YL40VtDZ9Zr8o3Yr0w3OFVHuYftZkUrtC6RLORrBlWiQhfoDeTAmBwkoVeRzj0cD
	8xJ5mF8/GuC9+p4mZvxUda9KtTvU7OVqntjFzGyrBm2z14oTzAvZdR5x9pC1aA6zE6Rlw4c+FpBqL
	44EFbzsCed96HlWK4YrlQbjmE+VIhJbX+Jn2jDnhs5eW82ailjujsAZXBiZeO3qyGQ82vxC3oW92x
	DQWyoNQubLOCgsh5oedA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpmmD-0000000CWiv-0fQZ;
	Fri, 31 Jul 2026 12:55:49 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpmmA-0000000CWi4-2Ff6;
	Fri, 31 Jul 2026 12:55:47 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1785502536; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=NAceC1nZ03Z8OJtT3c/AkcqWZgr6iyrkBVJVptqz1VI1XwcNZa5DUKJu2CuJO8K/6aH+uUpXT8xMYH0MA0kYdHATwK7tlzsgyozc/uiGdQYHzU71iVpB32hC91kPKVKU08a6HR2iZZnug91O2geOadZ7E65Uc7zB2Iy1jRwaCNc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1785502536; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=zAhwrWMY6PvLC/P8M84L7525EvKre07drBqR9LRCx8A=; 
	b=ex6DKoFlliJOmgcPdpT8RNRN+jpjfYz+mbeqTHrF3BFMyXYN2691fJROBKkKZaW5LOS0Xq34KSoe1b5HJkWtoW7LQ21D+v8L+xJg8pR5G0L2WFPZ0xAm6b5E38EDijVKIzNBZPe1F2uQnbiPI3agEnbkcLR8y1KrwkNkOpF8NX0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=louisalexis.eyraud@collabora.com;
	dmarc=pass header.from=<louisalexis.eyraud@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1785502536;
	s=zohomail; d=collabora.com; i=louisalexis.eyraud@collabora.com;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=zAhwrWMY6PvLC/P8M84L7525EvKre07drBqR9LRCx8A=;
	b=E5hGGX8nJlFV4riMFbzQfwVYLjS+jFZyeZtpkU8eqm8AHTNUVc3Nk5lYPYk/G20m
	uRZPT2CBMnSHVw4riWDfmAw3RHLX3ib58YjKzTibCNPgZlbdWvLIL4bMUMnwZ1B+9zs
	w8BEK0diuqrVdbbMbZVulLYAM9BLKWAdGxBaaG0U=
Received: by mx.zohomail.com with SMTPS id 1785502535132267.4450717048104;
	Fri, 31 Jul 2026 05:55:35 -0700 (PDT)
Message-ID: <d418ce620a6128d7dac0c8e56f2a07653e5d035e.camel@collabora.com>
Subject: Re: [PATCH v10 24/26] arm64: dts: mediatek: mt8195: Align ufshci
 node to dt-bindings changes
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
  Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger	 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno	 <angelogioacchino.delregno@collabora.com>,
 Peter Wang <peter.wang@mediatek.com>,  Chaotian Jing
 <chaotian.jing@mediatek.com>, Alim Akhtar <alim.akhtar@samsung.com>, Avri
 Altman	 <avri.altman@sandisk.com>, Bart Van Assche <bvanassche@acm.org>,
 Stanley Jhu	 <chu.stanley@gmail.com>, "James E.J. Bottomley"	
 <James.Bottomley@hansenpartnership.com>, "Martin K. Petersen"	
 <martin.petersen@oracle.com>, Philipp Zabel <p.zabel@pengutronix.de>, Liam
 Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 kernel@collabora.com, 	linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, 	linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, Nicolas Frattaroli	
 <nicolas.frattaroli@collabora.com>
Date: Fri, 31 Jul 2026 14:55:28 +0200
In-Reply-To: <20260731-curious-unnatural-octopus-cef3e9@quoll>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
	 <20260730-mt8196-ufs-v10-24-bc5ecef202dc@collabora.com>
	 <20260731-curious-unnatural-octopus-cef3e9@quoll>
Organization: Collabora Ltd
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44) 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260731_055546_646242_93291320 
X-CRM114-Status: GOOD (  17.37  )
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

SGkgS3J6eXN6dG9mLAoKT24gRnJpLCAyMDI2LTA3LTMxIGF0IDEwOjI4ICswMjAwLCBLcnp5c3p0
b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIFRodSwgSnVsIDMwLCAyMDI2IGF0IDExOjQ5OjIwQU0g
KzAyMDAsIExvdWlzLUFsZXhpcyBFeXJhdWQgd3JvdGU6Cj4gPiBUaGUgTVQ4MTk1IFVGUyBob3N0
IGNvbnRyb2xsZXIgZHQgYmluZGluZ3Mgbm93IGRlc2NyaWJlIHNldmVyYWwKPiA+IGV4dHJhCj4g
PiByZXF1aXJlZCBjbG9ja3MgdGhhdCB3ZXJlIHByZXZpb3VzbHkgbWlzc2luZyBmcm9tIGNsb2Nr
IGRlc2NyaXB0aW9uCj4gPiBhbmQgZGVwcmVjYXRlcyB0aGUgZnJlcS10YWJsZS1oeiBwcm9wZXJ0
eSB1c2UgaW4gZmF2b3VyIG9mCj4gPiBvcGVyYXRpbmctcG9pbnRzLXYyIGluc3RlYWQuCj4gPiAK
PiA+IEN1cnJlbnRseSwgdGhlIHVmc2hjaSBub2RlIGRlY2xhcmVzIHRoZSBmcmVxLXRhYmxlLWh6
IHByb3BlcnR5IGJ1dAo+ID4gYWxsCj4gPiB2YWx1ZXMgY29udGFpbmVkIGluIHRoZSBhcnJheSBh
cmUgemVybywgdGh1cyBjb252ZXJ0aW5nIGl0IHRvIGFuCj4gPiBPUFAKPiA+IHRhYmxlIGlzIG5v
dCBuZWVkZWQuCj4gPiAKPiA+IFNvLCBhZGQgaW4gdWZzaGNpIG5vZGUgdGhlIHJ4X3N5bWJvbCBj
bG9ja3MgaW4gY2xvY2sgbGlzdCBhbmQKPiA+IHJlbW92ZQo+ID4gZnJlcS10YWJsZS1oeiBwcm9w
ZXJ0eS4KPiA+IEFsc28gcmVvcmRlciBwcm9wZXJ0aWVzIGluIG5vZGUuCj4gPiAKPiA+IFNpZ25l
ZC1vZmYtYnk6IExvdWlzLUFsZXhpcyBFeXJhdWQKPiA+IDxsb3Vpc2FsZXhpcy5leXJhdWRAY29s
bGFib3JhLmNvbT4KPiA+IC0tLQo+ID4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210
ODE5NS5kdHNpIHwgMjEgKysrKysrKysrKy0tLS0tLS0tLS0KPiA+IC0KPiA+IMKgMSBmaWxlIGNo
YW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+IAo+IERUUyBtdXN0IG5v
dCBiZSBjb21iaW5lZCB3aXRoIHBhdGNoc2V0IHRhcmdldHRpbmcgU0NTSS9VRlMsIGJlY2F1c2UK
PiBVRlMKPiBmb2xrcyB3ZXJlIGdyYWJiaW5nIGVudGlyZSB0aHJlYWQuIFBsZWFzZSBmb2xsb3cg
dGhlIHNhbWUgcnVsZXMgYXMKPiB3aGVuCj4gc3VibWl0dGluZyB0byBVU0IsIHNlcmlhbCBldGMu
Cj4gCkFjay4KSSdsbCBkcm9wIHRoZSAzIGRldmljZXRyZWUgcGF0Y2hlcyBpbiB0aGUgbmV4dCBy
ZXZpc2lvbiBhbmQgc2VuZCB0aGVtCmluIGEgbmV3IHNlcmllcy4KCkJlc3QgcmVnYXJkcywKTG91
aXMtQWxleGlzCgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPiAKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
