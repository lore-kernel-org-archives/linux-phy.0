Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 584C6C5CFDB
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 19:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NVec/r67wqJls86NwaUCYrm4r7JUfwSvKL8WN0nHE0U=; b=rH4F/odiAmZZi5
	GmfXWgcQRpkviMNSouv8YczrNEoCqsTXSnpGu3XQPDtJ+3wEd6umguLiardweSFfEAp344mXWB+9I
	Q3DIKu4XKf10MuVZ7cnKTc5vlOL4oJ/Qy9+curgqFf3E14a29JhxrzPwODsOYCTFod+8WoJ1lUAWH
	nPGexqnBgxQoo1x42kEb4WdGO3XhU5jMbtqAUdm/uIvqSCxdi8NDBVKYDRms9DpZAl4dQxUSeKujl
	g2qLBgRN4my16BfVXTFnumdJT28lcBYZGkDCOTiGe8AlVrkWQJ1ECqr3mESCgW+ygmZsSC5sSeplL
	7sYXrK8VCylTHfMpKPjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuEhQ-0000000GttR-3LeR;
	Wed, 12 Aug 2026 19:33:16 +0000
Received: from mx.nabladev.com ([178.251.229.89])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuEhM-0000000Gts8-1z7B;
	Wed, 12 Aug 2026 19:33:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8786311A705;
	Wed, 12 Aug 2026 21:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1786563185;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=ED8eqHdTv64gQstfC56Ow6bZBOe8x1ePNie/0Y4oVZU=;
	b=fGnrOCSTNX2NlStNgvZoVWdpVAUR25aGrikNpgSdV49w063CUcRdklzwrUw0lXsfYzbLar
	BrcehqdHgDePwKkNLArWE3zazdl9BWMK+QSIk0HzCcixVgskQCh+UWKIyVz2Je+t7K5rzI
	ufSKA7pnRYl/J9/AkoadK2RQc1uHTMiq30zPZtOkemGNy4J7xRkQrBK/9r//7lOCWKdA3V
	KD0FGZ9C/nn4pgl+AJ6jEEFql6+HRySPbQ0HGOw8IhIuqeWGmJqTJjMZ7YiVOB1htEceaO
	Fr5MoprhMTjIgLJyIM0d3hLQaL4Xk3cV2UfPOIIF6OE12DZVqesaDb9aY0j3JA==
Message-ID: <ea21d4fb-04a1-4280-9a73-6f566be2b015@nabladev.com>
Date: Wed, 12 Aug 2026 20:30:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] dt-bindings: phy: Document ST STM32MP25 USB2-FEMTO
 PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-usb@vger.kernel.org, Pankaj Dev <pankaj.dev@st.com>,
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
 Rahul Kumar <rahul.kumar05@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Christian Bruel <christian.bruel@foss.st.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Rosen Penev <rosenp@gmail.com>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20260812010157.1772849-1-marex@nabladev.com>
 <20260812010157.1772849-2-marex@nabladev.com>
 <20260812-silky-omniscient-dalmatian-b268cb@quoll>
 <ff691741-a110-44e8-90e7-ac54a96de1af@nabladev.com>
 <ff957fbb-b8ed-485d-adaa-18258ed693a6@kernel.org>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <ff957fbb-b8ed-485d-adaa-18258ed693a6@kernel.org>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_123312_667527_90627601 
X-CRM114-Status: GOOD (  17.23  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gOC8xMi8yNiAxOjIyIFBNLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDEyLzA4
LzIwMjYgMTI6NTYsIE1hcmVrIFZhc3V0IHdyb3RlOgo+PiBPbiA4LzEyLzI2IDEyOjE1IFBNLCBL
cnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pj4gT24gV2VkLCBBdWcgMTIsIDIwMjYgYXQgMDI6
NTU6NDFBTSArMDIwMCwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+Pj4gRnJvbTogUGFua2FqIERldiA8
cGFua2FqLmRldkBzdC5jb20+Cj4+Pj4KPj4+PiBEb2N1bWVudCBVU0IyIFBIWSBmb3IgU1RNMzJN
UDI1IFVTQjIgY29udHJvbGxlcnMsIHdoaWNoIGluY2x1ZGVzIHRoZQo+Pj4+IFVTQjIuMCBob3N0
LW9ubHkgY29udHJvbGxlciBhbmQgVVNCIDIuMCBwYXJ0IG9mIHRoZSBEV0MzIGNvbnRyb2xsZXIu
Cj4+Pj4gVHdvIHN1Y2ggUEhZcyBpbiB0b3RhbCBhcmUgcHJlc2VudCBpbiBTVE0zMk1QMjUgU29D
LCB0aGV5IGJvdGggYXJlCj4+Pj4gc2xpZ2h0bHkgZGlmZmVyZW50LCB0aGVyZWZvcmUgdGhleSB1
c2UgZGlmZmVyZW50IGNvbXBhdGlibGUgc3RyaW5nCj4+Pgo+Pj4gV2hhdCBpcyBzbGlnaHRseSBk
aWZmZXJlbnQ/IFRoaXMgc2hvdWxkIGJlIGVpdGhlciBoZXJlLCBvciBiZXR0ZXIsIGluCj4+PiAi
ZGVzY3JpcHRpb24iIHBhcnQuCj4+Cj4+IFRoZXkgYXJlIGJvdGggU3lub3BzeXMgRkVNVE8tUEhZ
ICwgYnV0IHRoZXkgYXJlIGVhY2ggYXR0YWNoZWQgdG8gYQo+PiBkaWZmZXJlbnQgY29udHJvbGxl
ciAob25lIHRvIFVTQiAyLjAgaG9zdCAsIHRoZSBvdGhlciB0byBEV0MzIERSRCkgLCBhbmQKPj4g
dGhlaXIgY29udHJvbCBiaXRzIGluIHRoZSBzeXN0ZW0gY29udHJvbGxlciByZWdpc3RlciBhcmUg
ZGlmZmVyZW50IGZvcgo+PiBlYWNoIHZhcmlhbnQuCj4+Cj4+IEkgZXh0ZW5kZWQgdGhlIGRlc2Ny
aXB0aW9uIGluIFYyLgo+IAo+IERlcGVuZGluZyBvbiB0aGUgYWN0dWFsIGRpZmZlcmVuY2UsIHRo
aXMgcmF0aGVyIGJlbG9uZ3MgdG8gdGhlIHBoYW5kbGUKPiB0byBzeXNjb24sIGluc3RlYWQgb2Yg
c2VwYXJhdGUgY29tcGF0aWJsZS4KCk1vZGVsaW5nIHRoYXQgaW4gdGhlIHBoYW5kbGUgdG8gc3lz
Y29uIHdvbid0IHNjYWxlLCB0aGUgUEhZIGRyaXZlciBpcyAKc2ltcGxlIHRodXMgZmFyIGFuZCBk
b2VzIG5vdCBjb250cm9sIGFsbCB0aGUgYml0cyBpbiB0aGF0IHN5c2NvbiwgaWYgd2UgCndlcmUg
dG8gc29tZWhvdyBleHRlbmQgdGhlIHBoYW5kbGUgdG8gc3lzY29uIHRvIGRlc2NyaWJlIHRoZSB2
YXJpb3VzIGJpdCAKbWFwcGluZ3MgYW5kIGRpZmZlcmVuY2VzIGluIGl0LCBpdCB3b3VsZCBsb29r
IGF3ZnVsIHF1aWNrbHkuIEhlbmNlIHRoZSAKc2VwYXJhdGUgY29tcGF0aWJsZSBzdHJpbmdzLCBz
byB0aGUgZHJpdmVyIGNhbiBtYXRjaCBvbiB0aGVtLCBkZXJpdmUgCm1hdGNoIGRhdGEgZnJvbSB0
aGVtIGFuZCB1c2UgdGhlIG1hdGNoIGRhdGEgdG8gZmlndXJlIG91dCBkaWZmZXJlbmNlcyBvZiAK
ZWFjaCBpbnN0YW5jZS4KCj4+Pj4gdG8gZGlzY2VybiB0aGVtLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9m
Zi1ieTogQ2zDqW1lbnQgTGUgR29mZmljIDxjbGVtZW50LmxlZ29mZmljQGZvc3Muc3QuY29tPgo+
Pj4+IFNpZ25lZC1vZmYtYnk6IEZhYnJpY2UgR2FzbmllciA8ZmFicmljZS5nYXNuaWVyQGZvc3Mu
c3QuY29tPgo+Pj4+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIFZhc3V0IDxtYXJleEBuYWJsYWRldi5j
b20+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogUGFua2FqIERldiA8cGFua2FqLmRldkBzdC5jb20+Cj4+
Pj4gU2lnbmVkLW9mZi1ieTogUmFodWwgS3VtYXIgPHJhaHVsLmt1bWFyMDVAc3QuY29tPgo+Pj4K
Pj4+IEluY29tcGxldGUvaW5jb3JyZWN0IERDTyBjaGFpbi4gV2hvIHNlbmRzIGl0PyBSYWh1bD8K
Pj4gVGhpcyBpcyBsaWZ0ZWQgZnJvbSB0aGUgU1QgZG93bnN0cmVhbSBrZXJuZWwgZm9yaywgaXQn
cyBhIGNvbWJpbmF0aW9uIG9mCj4+IGEgYnVuY2ggb2YgY29tbWl0cyB0aGVyZSBhbmQgdGhlbiBj
bGVhbmVkIHVwLiBQYW5rYWogYW5kIEZhYnJpY2UgZGlkCj4+IG1vc3Qgb2YgdGhlIGRvd25zdHJl
YW0gd29yaywgSSBkaWQgdGhlIGNsZWFuIHVwIGZvciB1cHN0cmVhbWluZy4gSQo+PiBjb2xsZWN0
ZWQgdGhlIFNvQiBsaW5lcyBmcm9tIGFsbCB0aGUgY29tbWl0cyBmcm9tIFNUIGRvd25zdHJlYW0g
Zm9yayBhbmQKPj4gYWRkZWQgbWluZSwgaGVuY2UgdGhpcyBsaXN0LiBIb3cgc2hhbGwgSSBhZGRy
ZXNzIHRoaXMgY29ycmVjdGx5LCB3aXRoCj4+IHNvbWUgQ28tZGV2ZWxvcGVkLWJ5IHRhZyA/IFdo
byBnZXRzIHdoaWNoIHRhZyA/Cj4gCj4gRXZlcnl0aGluZyBleHBsYWluZWQgaW4gc3VibWl0dGlu
ZyBwYXRjaGVzLiBUaGUgU29CcyByZXByZXNlbnQgdGhlCj4gY2hyb25vbG9naWNhbCBsaWZlY3ls
ZSBvZiB0aGUgcGF0Y2guIFBlcnNvbiBzZW5kaW5nIHRoZSBwYXRjaCBpcwo+IG9idmlvdXNseSB0
aGUgbGFzdCBvbmUgdG91Y2hpbmcuIEhvdyBSYWh1bCBjb3VsZCB0b3VjaCB0aGUgY29kZSBBRlRF
Ugo+IHlvdSBzZW50IGl0PwpGaXhlZCBmb3IgYWxsIHBhdGNoZXMgaW4gVjIsIHRoYW5rcy4KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
