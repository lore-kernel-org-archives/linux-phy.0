Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ED67CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYtJFPvjvIXiGYeul9/R4ofRW3VjXWdp0LuMOqcFDyg=; b=d8ugSpc+xyNxt2
	gcRE7WPNTOAYhvMNIQorY5c4cIometi3QsTIVzZoSoQhaNdbF72WMjNeGQ1Y5AZVSUVp17F8VKydD
	l3rtfQ0VtUrjfkISHSlP/bOWka4Uyv+EOiTuejyo+upI+Grz88RKMSgapkJlKlrkgpPfoUWmYUqzR
	ytx1MeDnhFxX72nPxHUfzTI6OkeulzLN6a6Qx40UwGVg6UimRAtXLXc7t0yRH69Xn6bmotZ6mV1PV
	8LEKgoIoXRQ0PNMIL6dMOh196DfeqGqixGU26DTNCsJNKTshm7AmwnXhTDAJNpju/MKIFaKe8yPWQ
	08OllZ0kINXAc64l4MOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG4b-0000000AZB3-35JA;
	Mon, 12 Oct 2026 13:28:13 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG4a-0000000AZAP-19hi
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:28:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B63D64360E;
	Mon, 12 Oct 2026 13:28:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 162C61F0089B;
	Mon, 12 Oct 2026 13:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791811691;
	bh=z3uQj8rmXX/RAU8ketplhZtR7BScD3XYlU78bGQDudw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Vi18rG/rYDfi2sMxD4UF8pK429JysTdP0UukFs8Tcl4A8wlYvg+iD75byJknXdsue
	 pojbOlBrdKqRRsqz07kVKGDDFVGzYx8Lo7zc0lxE/1G/TmOk2BmDy8RH5EsPkT/3fb
	 y1sTLQ1GEnolJ1dJDBXgO6xS2vaMM7TtwNexTZezGar4WhcLqlsR24gMAe9qEjjS2t
	 1v8kkUNcjhLuIzxyhersJ5nVsuxgvQScghS9wvfdraAg03sqsrhadr1gF1FBPZYOV9
	 fSs41yHV7aQlf18xdOF34h5iNbSyl3nvq/NxP9vqHKd9OEeXpQHPpfkPY0ou4z6Spc
	 lTDB7vdxf6m1Q==
Date: Mon, 12 Oct 2026 18:58:03 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Myeonghun Pak <mhun512@gmail.com>
Cc: Justin Chen <justin.chen@broadcom.com>, 
	Al Cooper <alcooperx@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, Ijae Kim <ae878000@gmail.com>
Subject: Re: [PATCH] phy: broadcom: brcm-usb: unwind clocks on probe failure
Message-ID: <aszekmfBKpAY-4WL@debian>
References: <20260913012956.16443-1-mhun512@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260913012956.16443-1-mhun512@gmail.com>
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

T24gU2F0LCBTZXAgMTIsIDIwMjYgYXQgMDk6Mjk6NTZQTSAtMDQwMCwgTXllb25naHVuIFBhayB3
cm90ZToKPiBicmNtX3VzYl9waHlfZHZyX2luaXQoKSBlbmFibGVzIHRoZSBvcHRpb25hbCBVU0Iy
IGFuZCBVU0IzIGNsb2NrcyBiZWZvcmUKPiBjcmVhdGluZyBhbGwgUEhZcyBhbmQgYWNxdWlyaW5n
IHRoZSByZW1haW5pbmcgcHJvYmUgcmVzb3VyY2VzLiAgU2V2ZXJhbAo+IGxhdGVyIGZhaWx1cmVz
IHJldHVybiB3aXRob3V0IGRpc2FibGluZyBjbG9ja3MgdGhhdCB3ZXJlIGFscmVhZHkgZW5hYmxl
ZCwKPiBhbmQgZGVmZXJyZWQgcHJvYmUgcmV0cmllcyBjYW4ga2VlcCBpbmNyZWFzaW5nIHRoZWly
IGVuYWJsZSBjb3VudHMuCj4gCj4gVHJhY2sgZWFjaCBzdWNjZXNzZnVsIGNsb2NrIGVuYWJsZSBh
bmQgdW53aW5kIG9ubHkgdGhvc2UgY2xvY2tzLCBpbiByZXZlcnNlCj4gb3JkZXIsIHdoZW4gaW5p
dGlhbGl6YXRpb24gZmFpbHMuICBLZWVwIHRoZSBleGlzdGluZyBzdWNjZXNzZnVsIHByb2JlIHBh
dGgKPiB1bmNoYW5nZWQuICBUaGlzIGlzIGxpbWl0ZWQgdG8gdGhlIEJDTTQ5MDggYW5kIEJyb2Fk
Y29tIFNUQiBVU0IgUEhZIGRyaXZlci4KPiAKPiBUaGlzIGlzc3VlIHdhcyBpZGVudGlmaWVkIGR1
cmluZyBvdXIgb25nb2luZyBzdGF0aWMtYW5hbHlzaXMgcmVzZWFyY2ggd2hpbGUKPiByZXZpZXdp
bmcga2VybmVsIGNvZGUuCj4gCj4gRml4ZXM6IDQ5ODU5ZTU1ZTM2NCAoInBoeTogdXNiOiBwaHkt
YnJjbS11c2I6IEFkZCBCcm9hZGNvbSBTVEIgVVNCIHBoeSBkcml2ZXIiKQo+IEFzc2lzdGVkLWJ5
OiBPcGVuQUk6R1BULTUuNgo+IENvLWRldmVsb3BlZC1ieTogSWphZSBLaW0gPGFlODc4MDAwQGdt
YWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBJamFlIEtpbSA8YWU4NzgwMDBAZ21haWwuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IE15ZW9uZ2h1biBQYWsgPG1odW41MTJAZ21haWwuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYnJjbS11c2IuYyB8IDQ4ICsrKysrKysrKysrKysr
KysrKysrKy0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzNSBpbnNlcnRpb25zKCspLCAxMyBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJy
Y20tdXNiLmMgYi9kcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYnJjbS11c2IuYwo+IGluZGV4IDU5
ZDc1NmExMC4uMjczZjdiNTg2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L2Jyb2FkY29tL3Bo
eS1icmNtLXVzYi5jCj4gKysrIGIvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJyY20tdXNiLmMK
PiBAQCAtNDA0LDYgKzQwNCw4IEBAIHN0YXRpYyBpbnQgYnJjbV91c2JfcGh5X2R2cl9pbml0KHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gIHsKPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9
ICZwZGV2LT5kZXY7Cj4gIAlzdHJ1Y3QgcGh5ICpncGh5ID0gTlVMTDsKPiArCWJvb2wgdXNiXzIw
X2Nsa19lbmFibGVkID0gZmFsc2U7Cj4gKwlib29sIHVzYl8zMF9jbGtfZW5hYmxlZCA9IGZhbHNl
Owo+ICAJaW50IGVycjsKPiAgCj4gIAlwcml2LT51c2JfMjBfY2xrID0gb2ZfY2xrX2dldF9ieV9u
YW1lKGRuLCAic3dfdXNiIik7Cj4gQEAgLTQxMywxNSArNDE1LDE5IEBAIHN0YXRpYyBpbnQgYnJj
bV91c2JfcGh5X2R2cl9pbml0KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gIAkJZGV2
X2luZm8oZGV2LCAiQ2xvY2sgbm90IGZvdW5kIGluIERldmljZSBUcmVlXG4iKTsKPiAgCQlwcml2
LT51c2JfMjBfY2xrID0gTlVMTDsKPiAgCX0KPiAtCWVyciA9IGNsa19wcmVwYXJlX2VuYWJsZShw
cml2LT51c2JfMjBfY2xrKTsKPiAtCWlmIChlcnIpCj4gLQkJcmV0dXJuIGVycjsKPiArCWlmIChw
cml2LT51c2JfMjBfY2xrKSB7Cj4gKwkJZXJyID0gY2xrX3ByZXBhcmVfZW5hYmxlKHByaXYtPnVz
Yl8yMF9jbGspOwo+ICsJCWlmIChlcnIpCj4gKwkJCXJldHVybiBlcnI7Cj4gKwkJdXNiXzIwX2Ns
a19lbmFibGVkID0gdHJ1ZTsKClRoaXMgbG9va3MgdWdseSA6KCBFaXRoZXIgdXNlIHR3byBlcnIg
bGFiZWxzIG9yIGp1c3QgY2x1YiBib3RoCmNsa19kaXNhYmxlX3VucHJlcGFyZSgpIGNhbGxzIGlu
IG9uZSBlcnIgbGFiZWwgYXMgY2xrIGZyYW1ld29yayB3aWxsIGJhaWwgb3V0CnNhZmVseSBpZiB0
aGUgY2xrIHBvaW50ZXIgaXMgTlVMTC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCu
o+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
