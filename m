Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC1C5C98332
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 14:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8GijQhtYkZ4vu7xvriSg1r/T7caJ/J9Cqpjqmgw3oQQ=; b=FjNSiouuBbiIP3
	M2wIG9McnPlBJOzqLE3CqpgR2JusWTDhUx3t9chbcy2Z2LZ9YU1OLwZHtwdn4UV4FOpL651oRgaQU
	Y4jYaNkuHLIm7/UZmgaRi2ktgtod3D6nhkOIWiBpQb3doZDcfHUUHKgc/wrpxErMd0oMXdQipjjpA
	QieCpV4PJXjTIZgJrR2PmuW6ACuPb9UKWHWj6nzkFai5Oyrw43SDLUu4huKHC5yy0riOXKVMBdmKx
	+1MUA/mcRY5GlbSMfTsSvksTksLCJe0hGuNS/mszRSzmzrlejjzNKd1VuWd+5e5SkSMdGNncvlNTZ
	ut2t3OFi8nPEFT1WjhzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xATOG-0000000FWKi-27bR;
	Sat, 26 Sep 2026 14:28:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xATOF-0000000FWKO-0gJq;
	Sat, 26 Sep 2026 14:28:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 92FF740BFA;
	Sat, 26 Sep 2026 14:28:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD98A1F000FF;
	Sat, 26 Sep 2026 14:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790432914;
	bh=GrtPLSHuGFunnRTeKC4/1IN66fdE0NzWWL3U7Y3AHv4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=aBtdPr31z/4GcOnJrdt3AhE2XxsFsQyD7QXH+VW6d6xyIfsz+DlsLlMqtxRYXUtCW
	 YF6nXiDf2SY5uUdHmLvtbMoi99zYMBCuuJlS7Sq6kOzTVWiYejOtPIW5QAbTepVnnY
	 bSV1wy+HkDjJpUMwjiHqAnGDfpRbKzNqhMAZ3+3IiegN32oXLJh5EZw3uIluodP5cE
	 9mPYUYKe+7WYsir25v17JCGAQ10geajRqfdmzqhX7m2Y8oCUonD4lSWm8q72HTHIji
	 t/mv2DLMA9ZlgVjRQ6qfe0hhgGYvf9qwkbEy5p5QW06W0y/CGQ9q+rKcVaWvDSckgd
	 TUV2YCHZ7Yhmg==
Date: Sat, 26 Sep 2026 16:28:15 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v11 1/3] dt-bindings: phy: Add documentation for Airoha
 AN7581 USB PHY
Message-ID: <n73mmftx3ur7uw7yybztl2z2z2u6qgoec6mpplp55vbb6mt2fk@ps2grf5tsvpr>
References: <20260724184523.193661-1-ansuelsmth@gmail.com>
 <20260724184523.193661-2-ansuelsmth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260724184523.193661-2-ansuelsmth@gmail.com>
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

T24gRnJpLCBKdWwgMjQsIDIwMjYgYXQgMDg6NDU6MjBQTSArMDIwMCwgQ2hyaXN0aWFuIE1hcmFu
Z2kgd3JvdGU6Cj4gQWRkIGRvY3VtZW50YXRpb24gZm9yIEFpcm9oYSBBTjc1ODEgVVNCIFBIWSB0
aGF0IGRlc2NyaWJlIHRoZSBVU0IgUEhZCj4gZm9yIHRoZSBVU0IgY29udHJvbGxlci4KPiAKPiBB
aXJvaGEgQU43NTgxIFNvQyBzdXBwb3J0IGEgbWF4aW11bSBvZiAyIFVTQiBwb3J0LiBUaGUgVVNC
IDIuMCBtb2RlIGlzCj4gYWx3YXlzIHN1cHBvcnRlZC4gVGhlIFVTQiAzLjAgbW9kZSBpcyBvcHRp
b25hbCBhbmQgZGVwZW5kcyBvbiB0aGUgU2VyZGVzCj4gbW9kZSBjdXJyZW50bHkgY29uZmlndXJl
ZCBvbiB0aGUgc3lzdGVtIGZvciB0aGUgcmVsZXZhbnQgVVNCIHBvcnQuCj4gCj4gVG8gY29ycmVj
dGx5IGNhbGlicmF0ZSwgdGhlIFVTQiAyLjAgcG9ydCByZXF1aXJlIGNvcnJlY3QgdmFsdWUgaW4K
PiAiYWlyb2hhLHVzYjItbW9uaXRvci1jbGstc2VsIiBwcm9wZXJ0eS4gQm90aCB0aGUgMiBVU0Ig
Mi4wIHBvcnQgcGVybWl0Cj4gc2VsZWN0aW5nIG9uZSBvZiB0aGUgNCBtb25pdG9yIGNsb2NrIGZv
ciBjYWxpYnJhdGlvbiAoaW50ZXJuYWwgY2xvY2sgbm90Cj4gZXhwb3NlZCB0byB0aGUgc3lzdGVt
KSBidXQgZWFjaCBwb3J0IGhhdmUgb25seSBvbmUgb2YgdGhlIDQgYWN0dWFsbHkKPiBjb25uZWN0
ZWQgaW4gSFcgaGVuY2UgdGhlIGNvcnJlY3QgdmFsdWUgbmVlZHMgdG8gYmUgc3BlY2lmaWVkIGlu
IERUCj4gYmFzZWQgb24gYm9hcmQgYW5kIHRoZSBwaHlzaWNhbCBwb3J0LiBOb3JtYWxseSBpdCdz
IG1vbml0b3IgY2xvY2sgMSBmb3IKPiBVU0IxIGFuZCBtb25pdG9yIGNsb2NrIDIgZm9yIFVTQjIu
Cj4gCj4gVG8gY29ycmVjdGx5IHNldHVwIHRoZSBTZXJkZXMgbW9kZSBhdHRhY2hlZCB0byB0aGUg
VVNCIDMuMCBtb2RlLCBhIHBoeXMKPiBwcm9wZXJ0eSBpcyByZXF1aXJlZCB3aXRoIHRoZSBwaGFu
ZGxlIHBvaW50aW5nIHRvIHRoZSBjb3JyZWN0IFNlcmRlcyBwb3J0Cj4gcHJvdmlkZWQgYnkgdGhl
IFNDVSBub2RlLiBQcm92aWRpbmcgdGhlIHBoeXMgcHJvcGVydHkgaXMgb3B0aW9uYWwgaWYgVVNC
Cj4gMy4wIGlzIG5vdCB1c2VkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBNYXJhbmdp
IDxhbnN1ZWxzbXRoQGdtYWlsLmNvbT4KPiBSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3Nr
aSA8a3J6eXN6dG9mLmtvemxvd3NraUBvc3MucXVhbGNvbW0uY29tPgo+IC0tLQo+ICAuLi4vYmlu
ZGluZ3MvcGh5L2Fpcm9oYSxhbjc1ODEtdXNiLXBoeS55YW1sICAgfCA2MiArKysrKysrKysrKysr
KysrKysrCj4gIE1BSU5UQUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICA2ICsrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNjggaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9haXJvaGEsYW43
NTgxLXVzYi1waHkueWFtbAo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L2Fpcm9oYSxhbjc1ODEtdXNiLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9haXJvaGEsYW43NTgxLXVzYi1waHkueWFtbAo+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5mNDJlM2Q0OWE2MWYKPiAt
LS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9haXJvaGEsYW43NTgxLXVzYi1waHkueWFtbAo+IEBAIC0wLDAgKzEsNjIgQEAKPiArIyBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZQo+ICslWUFN
TCAxLjIKPiArLS0tCj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L2Fp
cm9oYSxhbjc1ODEtdXNiLXBoeS55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiArCj4gK3RpdGxlOiBBaXJvaGEgQU43NTgxIFNv
QyBVU0IgUEhZCj4gKwo+ICttYWludGFpbmVyczoKPiArICAtIENocmlzdGlhbiBNYXJhbmdpIDxh
bnN1ZWxzbXRoQGdtYWlsLmNvbT4KPiArCj4gK2Rlc2NyaXB0aW9uOiA+Cj4gKyAgVGhlIEFpcm9o
YSBBTjc1ODEgU29DIFVTQiBQSFkgZGVzY3JpYmVzIHRoZSBVU0IgUEhZIGZvciB0aGUgVVNCIGNv
bnRyb2xsZXIuCj4gKwo+ICsgIEFpcm9oYSBBTjc1ODEgU29DIHN1cHBvcnQgYSBtYXhpbXVtIG9m
IDIgVVNCIHBvcnQuIFRoZSBVU0IgMi4wIG1vZGUgaXMKPiArICBhbHdheXMgc3VwcG9ydGVkLiBU
aGUgVVNCIDMuMCBtb2RlIGlzIG9wdGlvbmFsIGFuZCBkZXBlbmRzIG9uIHRoZSBTZXJkZXMKPiAr
ICBtb2RlIGN1cnJlbnRseSBjb25maWd1cmVkIG9uIHRoZSBzeXN0ZW0gZm9yIHRoZSByZWxldmFu
dCBVU0IgcG9ydC4KPiArCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29tcGF0aWJsZToKPiArICAgIGNv
bnN0OiBhaXJvaGEsYW43NTgxLXVzYi1waHkKPiArCj4gKyAgcmVnOgo+ICsgICAgbWF4SXRlbXM6
IDEKPiArCj4gKyAgYWlyb2hhLHVzYjItbW9uaXRvci1jbGstc2VsOgo+ICsgICAgZGVzY3JpcHRp
b246IERlc2NyaWJlIHdoYXQgb3NjaWxsYXRvciBhY3Jvc3MgdGhlIGF2YWlsYWJsZSA0Cj4gKyAg
ICAgIHNob3VsZCBiZSBzZWxlY3RlZCBmb3IgVVNCIDIuMCBTbGV3IFJhdGUgY2FsaWJyYXRpb24u
Cj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKPiAr
ICAgIGVudW06IFswLCAxLCAyLCAzXQo+ICsKPiArICBwaHlzOgo+ICsgICAgaXRlbXM6Cj4gKyAg
ICAgIC0gZGVzY3JpcHRpb246IHBoYW5kbGUgdG8gU2VyZGVzIFBIWS4gT3B0aW9uYWwgaWYgVVNC
IDMuMCBpcyBub3QgdXNlZC4KPiArCj4gKyAgJyNwaHktY2VsbHMnOgo+ICsgICAgZGVzY3JpcHRp
b246IFRoZSBjZWxsIGNvbnRhaW5zIHRoZSBtb2RlLCBQSFlfVFlQRV9VU0IyIG9yIFBIWV9UWVBF
X1VTQjMsCj4gKyAgICAgIGFzIGRlZmluZWQgaW4gZHQtYmluZGluZ3MvcGh5L3BoeS5oLgo+ICsg
ICAgY29uc3Q6IDEKPiArCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJsZQo+ICsgIC0gcmVn
Cj4gKyAgLSBhaXJvaGEsdXNiMi1tb25pdG9yLWNsay1zZWwKPiArICAtICcjcGh5LWNlbGxzJwo+
ICsKPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4gKwo+ICtleGFtcGxlczoKPiArICAt
IHwKPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9zb2MvYWlyb2hhLHNjdS1zc3IuaD4KClJv
YidzIGJvdCB0cmlnZ2VyZWQgY29tcGlsYXRpb24gZXJyb3IgZHVlIHRvIHRoaXMgbWlzc2luZyBo
ZWFkZXIuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
