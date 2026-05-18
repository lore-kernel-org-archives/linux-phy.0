Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A9E9CD4F3C
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 12:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMPTLUqA0/ArupsJjoWYgbqVofg5UcB7MZ1TzkiI4mM=; b=oqH2IArQTXSus3
	bvjlJcagpRSGqRsmUeMB4AarsTUNuM0wO6vDqxUyzAyfttE7qWMPe+UITjLcx6FlF3ftAUOGtlr9k
	4eLQMWCnDk+aaPc2QriJYwAKpsdYgI0op47nQRazTXq+bbLKr+PtzD+nP48U2cmFa/DnAW95AaUM0
	axyquXDA8fNGfzvs6ZsaBiNjtt6L8EIh9Dp3UmaEXadoHAe6kAVwOs8XKkSgrj0INcPSTaxJW1DeX
	Z3lbssv2JgyoOmAG8r1nHaLXySC19rW4PZlF3Xh9emhg0psW6xMx4sUTtvkNs/NQ4xCTft7n5B2OJ
	5jd9PVptKQNKsU9LfV/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOwrb-0000000Fab5-442K;
	Mon, 18 May 2026 12:14:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOwra-0000000FaaX-3vfM
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 12:14:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 03043601E9;
	Mon, 18 May 2026 12:14:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2665DC2BCB7;
	Mon, 18 May 2026 12:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779106465;
	bh=GNYTfMcpdYqvc5O6r9OZMMFpvN0zVIdv7qdjGK/a46A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U0auKsWR6IY5dSn2or0lJLFBvKIhnen8FrW7e70aiBBrFqnjKp5HWAwWjshEbXK9y
	 bjdtatA1i8duY1hH3i7Iha/fO3EkWu9cN1ef8m8zBNocKK2eN7htVpFliI/ZpBjSVA
	 iA0a/YR8mqjL1rLeTslcic5VukgHquImcj0pQe2znlVKo0EHuhRh/ybXSPz7kQDpVs
	 6LRiJ+GpVBHw+2O6iFryXfIeTsHSPu7PtrMS7nKl75sC/RbmOOGPo4DDka0RC7bLlq
	 OezasHM8gt4CzVFdvM7DbhUgf5q4ORIiTot9m8QUJqR68pgCNjo1GiW9BAGagizcjZ
	 TNvkzRDadjgbg==
Date: Mon, 18 May 2026 14:14:23 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Peter Chen <peter.chen@kernel.org>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 5/6] dt-bindings: phy: tegra: Document Nvidia Tegra
 XMM6260 PHY
Message-ID: <20260518-mustard-rabbit-of-ecstasy-eed3b6@quoll>
References: <20260511135703.62470-1-clamor95@gmail.com>
 <20260511135703.62470-6-clamor95@gmail.com>
 <20260515-utopian-malamute-of-patience-367e8e@quoll>
 <CAPVz0n2wrAdU0JKx7eb7uosCcoGayqNchK591VPph-5_nBAMXg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPVz0n2wrAdU0JKx7eb7uosCcoGayqNchK591VPph-5_nBAMXg@mail.gmail.com>
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

T24gRnJpLCBNYXkgMTUsIDIwMjYgYXQgMTE6Mzc6MzRBTSArMDMwMCwgU3Z5YXRvc2xhdiBSeWhl
bCB3cm90ZToKPiDQv9GCLCAxNSDRgtGA0LDQsi4gMjAyNuKAr9GALiDQviAxMToyMCBLcnp5c3p0
b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+INC/0LjRiNC1Ogo+ID4KPiA+IE9uIE1vbiwg
TWF5IDExLCAyMDI2IGF0IDA0OjU3OjAwUE0gKzAzMDAsIFN2eWF0b3NsYXYgUnloZWwgd3JvdGU6
Cj4gPiA+IERvY3VtZW50IHRoZSBYTU02MjYwIFBIWSB1c2VkIGJ5IHZhcmlvdXMgZGV2aWNlcyBi
YXNlZCBvbiB0aGUgTnZpZGlhIFRlZ3JhCj4gPiA+IFNvQywgZGVzY3JpYmluZyBpdHMgdXNhZ2UK
PiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogU3Z5YXRvc2xhdiBSeWhlbCA8Y2xhbW9yOTVAZ21h
aWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gIC4uLi9iaW5kaW5ncy9waHkvbnZpZGlhLHRlZ3JhLXht
bTYyNjAueWFtbCAgICB8IDU4ICsrKysrKysrKysrKysrKysrKysKPiA+ID4gIDEgZmlsZSBjaGFu
Z2VkLCA1OCBpbnNlcnRpb25zKCspCj4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9udmlkaWEsdGVncmEteG1tNjI2MC55YW1sCj4g
PiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L252aWRpYSx0ZWdyYS14bW02MjYwLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L252aWRpYSx0ZWdyYS14bW02MjYwLnlhbWwKPiA+ID4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKPiA+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4wMzQ2NDMzYzk3NzIKPiA+ID4gLS0t
IC9kZXYvbnVsbAo+ID4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L252aWRpYSx0ZWdyYS14bW02MjYwLnlhbWwKPiA+ID4gQEAgLTAsMCArMSw1OCBAQAo+ID4g
PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTItQ2xhdXNlKQo+
ID4gPiArJVlBTUwgMS4yCj4gPiA+ICstLS0KPiA+ID4gKyRpZDogaHR0cDovL2RldmljZXRyZWUu
b3JnL3NjaGVtYXMvcGh5L252aWRpYSx0ZWdyYS14bW02MjYwLnlhbWwjCj4gPiA+ICskc2NoZW1h
OiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiA+ID4gKwo+
ID4gPiArdGl0bGU6IE52aWRpYSBUZWdyYSBQSFkgZm9yIFhNTTYyNjAgbW9kZW0KPiA+Cj4gPiBY
TU02MjYwIGlzIEluZmluZW9uIG1vZGVtLCBzbyBhbnkgY29tYmluYXRpb24gd2l0aCBudmlkaWEs
dGVncmEgaXMgdmVyeQo+ID4gY29uZnVzaW5nLgo+ID4KPiAKPiBNYXkgeW91IHBsZWFzZSBzdWdn
ZXN0IGhvdyB0byBhZGp1c3QgdGhlIG5hbWUgdGhlbj8gVGhhbmsgeW91LgoKRGVwZW5kaW5nIHdo
YXQgaXMgdGhhdC4gU3RhcnQgZGVzY3JpYmluZyBoYXJkd2FyZSwgbm90IGRyaXZlciBiZWhhdmlv
cgp0byBoZWxwIGluIHRoYXQuCgo+IAo+ID4gPiArCj4gPiA+ICtkZXNjcmlwdGlvbjoKPiA+ID4g
KyAgQSBoYXJkd2FyZSBjb25maWd1cmF0aW9uIHVzZWQgaW4gVGVncmEgU29DcyB0byBwcm92aWRl
IHByb3BlciBpbnRlcmFjdGlvbgo+ID4gPiArICBiZXR3ZWVuIHRoZSBhcHBsaWNhdGlvbiBwcm9j
ZXNzb3IgYW5kIHRoZSBtb2RlbSwgYXMgd2VsbCBhcyBjb250cm9sIG92ZXIKPiA+ID4gKyAgb25l
IG9mIHRoZSBTb0MncyBVU0IgbGluZXMgZm9yIHRoZSBtb2RlbS4KPiA+ID4gKwo+ID4gPiArbWFp
bnRhaW5lcnM6Cj4gPiA+ICsgIC0gU3Z5YXRvc2xhdiBSeWhlbCA8Y2xhbW9yOTVAZ21haWwuY29t
Pgo+ID4gPiArCj4gPiA+ICtwcm9wZXJ0aWVzOgo+ID4gPiArICBjb21wYXRpYmxlOgo+ID4gPiAr
ICAgIGNvbnN0OiBudmlkaWEsdGVncmEteG1tNjI2MAo+ID4KPiA+IEFsc28gaGVyZS4KPiA+Cj4g
PiBXaGF0IHNvcnQgb2YgcGh5IGlzIHRoaXM/IFNvIGZhciBsb29rcyBtb3JlIGxpa2UgYSBzb2Z0
d2FyZSBjb25zdHJ1Y3QuCj4gPgo+IAo+IEluZmluZW9uIFhNTTYyNjAgZG9lcyBub3Qgd29yayBh
cyBhbiBvcmRpbmFyeSBVU0IgbW9kZW0sIGl0IGlzIGEKPiBzdGFuZGFsb25lIENQVSB3aGljaCBq
dXN0IGV4cG9zZXMgaXRzZWxmIHRvIEFQIHZpYSBVU0IuIEluIG9yZGVyIHRvIGRvCj4gc28sIGl0
IGhhcyB0byBoYXZlIGNvbnRyb2wgb3ZlciBhIFVTQiBidXMgb2YgQVAgd2hpY2ggaXMgZGVkaWNh
dGVkIHRvCj4gaXQuIEluIGNhc2Ugb2YgVGVncmEgLSBYTU02MjYwIGludGVyYWN0aW9uIGl0IGxv
b2tzIGxpa2UgdGhpczogc2Vjb25kCj4gVGVncmEgVVNCIGNvbnRyb2xsZXIgaXMgc2V0IGludG8g
SFNJQyBtb2RlIGFuZCBpcyBkZWRpY2F0ZWQgc29sZWx5IHRvCj4gdGhlIG1vZGVtLCBtb2RlbSBj
b250cm9scyB0aGlzIFVTQiBidXMuIFRoZW4gdGhlIG1haW4gWE1NNjI2MCBkcml2ZXIKPiBwZXJm
b3JtcyBwb3dlciBhbmQgaW5pdCBzZXF1ZW5jZSBhbmQgb25jZSBpdCBpcyByZWFkeSBpdCBjYWxs
cyBwaHkgdG8KPiByZWdpc3RlciBjb250cm9sbGVyLiBQaHkgaGFzIGl0cyBvd24gc3VwcGx5LCBj
b250cm9scyBVU0IgY29udHJvbGxlcgo+IGRlL3JlZ2lzdGVyIGFuZCB1c2luZyBlbmFibGUgR1BJ
TyBzZW5kcyBzaWduYWwgdG8gbW9kZW0gdG8gcHJvY2VlZC4KPiBBZGRpdGlvbmFsbHksIHNpbmNl
IHNvbWUgWE1NNjI2IHZlcnNpb25zIGhhdmUgYSBmZXcgc3RlcHMgdG8gc2V0dXAKPiBleHBvc2lu
ZyBkaWZmZXJlbnQgVVNCIGRldmljZXMsIHBoeSBoYW5kbGVzIGNvbnRyb2xsZXIgcmVpbml0IGZv
ciBlYWNoCj4gc3RlcC4gSWYgdHJlYXQgWE1NNjI2MCBhcyBhbiBzaW1wbGUgVVNCIG1vZGVtIGl0
IHdpbGwgbmV2ZXIgaW5pdC4KPiAKPiBPbmUgbW9yZSBiZW5lZml0IG9mIGhhdmluZyBQSFkgaXMg
dGhhdCBtb2RlbSBkcml2ZXIgaXRzZWxmIGlzIGdlbmVyaWMKPiBhbmQgUEhZIGhhbmRsZXMgU29D
IHNwZWNpZmljIGNvbmZpZ3VyYXRpb25zIHJlcXVpcmVkIGJ5IHRoZSBtb2RlbS4KPiBTaW5jZSB0
aGlzIG1vZGVtIHdhcyB1c2VkIG9uIGEgdmFyaWV0eSBvZiBkaWZmZXJlbnQgU29DJ3MgKEV4eW5v
cyBhbmQKPiBPTUFQIGZvciBleGFtcGxlKSB0aGV5IGNhbiByZXVzZSBtb2RlbSdzIGRyaXZlciBh
bmQgcHJvdmlkZSBvbmx5IFBIWQo+IHdoaWNoIGhhbmRsZXMgbW9kZW0gaW50ZXJhY3Rpb25zIHdp
dGggdGhlIFVTQiBidXMuCgpXaXRob3V0IGFueSByZWdpc3RlcnMgaGVyZSwgdGhpcyBpcyBub3Qg
YSBQSFkgYnV0IGEgcG93ZXIgc2VxdWVuY2luZywKanVzdCBsaWtlIHdlIGRvIGZvciBvdGhlciBV
U0Igb3IgUENJIGRldmljZXMuCgpPcHRpb25hbGx5LCBpdCBjb3VsZCBiZSBwYXJ0IG9mIGV4aXN0
aW5nIFVTQiBwaHksIHdoZW4gY29uZmlndXJpbmcgaXQgaW4KSFNJQyBtb2RlLCBidXQgaXQgc2Vl
bXMgeW91IGFkZCBoZXJlIHN1cHBsaWVzIGZvciB0aGUgbW9kZW0sIG5vdCBhY3R1YWwKcGh5IGFz
IHRoZSBwaHkgaXMgdW5kZWZpbmVkLgoKVGhlIHByb2JsZW0gaXMgdGhhdCBpbiB0aGUgcGF0Y2gg
YW5kIGV4cGxhbmF0aW9uIHlvdSBtaXggZHJpdmVyIG1vZGVsCmFuZCBkcml2ZXIgYmVoYXZpb3Is
IHNvIEkgcmVhbGx5IGRvbid0IGtub3cgd2hhdCBpcyB0aGlzIGhhcmR3YXJlLiBBbmQKaXQgaXMg
bm90IG15IGpvYiB0byBndWVzcywgYnR3LiBBIHBhcnRpYWwgYXJndW1lbnQvcHJvb2Ygd2h5IHRo
aXMgaXMgbm90CmEgUEhZLCBpcyB0aGF0IHlvdSByZWZlcmVuY2UgdGhlIFVTQiBpbiB0aGUgbm9k
ZSwgc28gcGh5LXByb3ZpZGVyCnJlZmVyZW5jZXMgdGhlIHBoeS1jb25zdW1lci4gVGhhdCdzIHJl
dmVyc2UuIElmIHRoaXMgaXMgUEhZLCBpdCdzIFVTQidzCkhTSUMgcGh5LCB0aHVzIHRoaXMgbmVl
ZHMgdG8gYmUgcmVmZXJlbmNlZCBieSBVU0IuCgpJZiB0aGlzIGlzIHBvd2VyIHNlcXVlbmNpbmcs
IHRoZW4gaXQgY2FuIGJlIHJlcHJlc2VudGVkIGFzIFVTQiBkZXZpY2UsCmp1c3QgbGlrZSB3ZSBk
byBmb3IgYWxsIFVTQiBkZXZpY2VzLCBidXQgdGhlbiBpdCBpcyBub3QgUEhZIGFuZApwaHktY2Vs
bHMgYXJlIG5vdCBhcHByb3ByaWF0ZS4KCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
