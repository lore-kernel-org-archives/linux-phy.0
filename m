Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34A3EC5AD4E
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 07:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KugjtvEsANYM71cGlFEw4Ig2zx7CLcysQxRprVajSTY=; b=4NS1eVa6JeFc+S
	WQxXPg1yOBIVQRRJAsuzlti6JWPtCx1ya7/ZoY6LDhucqDFEtcOY4WDev2/TUCWUHb20ZL/pvXl+e
	y6HibC/xR91Hr7BK/RZvf3hHtNM6PJIb81/X95BGSkgAm98wl4Ui+hwBd7GOdrYdr7YF122ChOSWE
	WXXN1lbLd31IcivT9g157EB9v+/5nfsBmRA4BU4kPJCgoApIp+tSJfU5ygg0gu9GpS7P7tDcZQ6RQ
	cje7SueNnI7usePT2EnpaUZ92FI6oR6rYKhOt2AZxayP+dVwsKw/4d0a+lwb5eBFcs3LWJ26noPkk
	5QThX7GFzGVbNkq5brcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKDu-0000000BBPb-3pBR;
	Mon, 10 Aug 2026 07:15:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKDu-0000000BBPR-0TyC
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 07:15:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9739B43BBB;
	Mon, 10 Aug 2026 07:15:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BFA01F000E9;
	Mon, 10 Aug 2026 07:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786346101;
	bh=OvZj6l0Ng7cZ0DmKBloJuS9guPd5/AykBMn1umdNDG0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XL/p6vkxUYnBWw4/iQvauZBceEPLr3GAIqDJor/ZL84TCqngN1P3L2SBwrIX+x98F
	 M7FBPZQcY2MPOSEHbA4xAHwlYSCyAh1GY6w2GDIZvkza8a6qh8uNKSrdMpZug0c4/E
	 YHuDxycBIL0CXyHt2Vror5K0SaN0cKjfdFhDi7nKn6RMYkU12rjyyfLaKqC36ohbAM
	 L1MkmkjaNGmcYuOzK3sQ98037msoRHTNRUS/f9Ry+IzDcwYfckgBroiK/KRjOj67pm
	 4zTqcUzhQgYB79faiPxpQYmsZbbgXog2cxj0E/MO5wbbAMwEypjtGl+Xh+uR+pSAtU
	 qaotYZpk4ieIQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 08/12] clk: zte: Introduce a driver for zx297520v3
 top clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: lee@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, mfd@lists.linux.dev, neil.armstrong@linaro.org, devicetree@vger.kernel.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260810-zx29clk-v10-8-63846490712c@gmail.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-8-63846490712c@gmail.com>
Date: Mon, 10 Aug 2026 07:15:00 +0000
Message-Id: <20260810071501.0BFA01F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gYGFoYi13Y2xrYCBp
cyBhc3NpZ25lZCB0aGUgd3JvbmcgcGFyZW50IG11eCwgYnJlYWtpbmcgdGhlIGNsb2NrIHRvcG9s
b2d5LgotIFtMb3ddIFRoZSBkcml2ZXIgZmFpbHMgdG8gY29tcGlsZSBiZWNhdXNlIGl0IHVzZXMg
YGNvbnN0YCB2YXJpYWJsZXMgdG8gaW5pdGlhbGl6ZSBzdGF0aWMgYXJyYXkgZWxlbWVudHMsIHdo
aWNoIHZpb2xhdGVzIHRoZSBDIHN0YW5kYXJkIGZvciBjb25zdGFudCBleHByZXNzaW9ucy4KLS0K
Ci0tLSBQYXRjaCBbOF06IFtQQVRDSCB2MTAgMDgvMTJdIGNsazogenRlOiBJbnRyb2R1Y2UgYSBk
cml2ZXIgZm9yIHp4Mjk3NTIwdjMgdG9wIGNsb2NrcyAtLS0KY29tbWl0IGUwZjlhMWFhZmVkODY0
MDEwMmQ3YWNhMGJiYjBkODkwNzllODljNWYKQXV0aG9yOiBTdGVmYW4gRMO2c2luZ2VyIDxzdGVm
YW5kb2VzaW5nZXJAZ21haWwuY29tPgoKY2xrOiB6dGU6IEludHJvZHVjZSBhIGRyaXZlciBmb3Ig
engyOTc1MjB2MyB0b3AgY2xvY2tzCgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIGEgbmV3IGNsb2Nr
IGRyaXZlciBmb3IgdGhlIFpURSB6eDI5NzUyMHYzIFNvQy4KSXQgc3VwcG9ydHMgYmFzaWMgY2xv
Y2tzLCBpbmNsdWRpbmcgUExMcywgdGhlIEFIQiBidXMsIHRpbWVycywgYW5kIHRoZQpVU0IgY29u
dHJvbGxlci4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3p0ZS9jbGstengyOTc1MjB2My5j
IGIvZHJpdmVycy9jbGsvenRlL2Nsay16eDI5NzUyMHYzLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjUwNDA3NTU5MGU2ZDIKPiAtLS0gL2Rldi9udWxsCj4g
KysrIGIvZHJpdmVycy9jbGsvenRlL2Nsay16eDI5NzUyMHYzLmMKWyAuLi4gXQo+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IHp4X2Nsb2NrIHp4Mjk3NTIwdjNfdG9wX2Nsb2Nrc1tdID0gewpbIC4uLiBd
Cj4gKwkvKiBvc2MyNm0gZGl2aXNpb24gZm9yIGNsa19vdXRYICovCj4gKwlbWlhfQ0xLX09TQzI2
TV9EMl0gICAgICAgICA9IEZJWEVEX0RJVigib3NjMjZtLWQyIiwgY2xrX21haW5bMF0sIDIpLAoK
W1NldmVyaXR5OiBMb3ddCldpbGwgdGhpcyBjYXVzZSBhIGNvbXBpbGVyIGVycm9yPwoKSW4gc3Rh
bmRhcmQgQywgdmFyaWFibGVzIHF1YWxpZmllZCB3aXRoIGNvbnN0IGFyZSBub3QgY29uc2lkZXJl
ZCBjb25zdGFudApleHByZXNzaW9ucy4gVXNpbmcgY2xrX21haW4gYXJyYXkgZWxlbWVudHMgaGVy
ZSB0byBpbml0aWFsaXplIGVsZW1lbnRzIG9mIGEKc3RhdGljIGFycmF5IHdpbGwgbGlrZWx5IHRy
aWdnZXIgYW4gaW5pdGlhbGl6ZXIgZWxlbWVudCBpcyBub3QgY29uc3RhbnQgZXJyb3IuCgpbIC4u
LiBdCj4gKwlbWlhfQ0xLX1dEVF9UMThfRElWXSAgICAgICA9IERJVigid2R0LXQxOC1kaXYiLCBQ
QVJFTlRfSUQoWlhfQ0xLX1dEVF9UMThfTVVYKSwKPiArCQkJCQkgMHg0OCwgOCwgNCksCj4gKwlb
WlhfQ0xLX1VTSU0xX0RJVl0gICAgICAgICA9IERJVigidXNpbTEtZGl2IiwgY2xrX3Vua25vd24s
Cj4gKwkJCQkJIDB4NDgsIDEyLCAxKSwKCltTZXZlcml0eTogTG93XQpJcyB0aGlzIGFub3RoZXIg
cGxhY2Ugd2hlcmUgYSBjb25zdCB2YXJpYWJsZSAoY2xrX3Vua25vd24pIHdpbGwgdHJpZ2dlciBh
CmNvbXBpbGVyIGVycm9yIHdoZW4gdXNlZCBhcyBhIHN0YXRpYyBhcnJheSBpbml0aWFsaXplcj8K
ClsgLi4uIF0KPiArCS8qCj4gKwkgKiBBSEIgY2xvY2sgZ2F0ZXM6IERpc2FibGluZyB0aGVzZSBj
dXRzIG9mZiB0aGUgQTUzIGZyb20gcmVnaXN0ZXIgYWNjZXNzIGludG8gMHgxMzAwMDAvCj4gKwkg
KiAweDE0MDAwMCwgaW5jbHVkaW5nIHRoZSB0b3Bjcm0gcmVnaW9uLCBzbyBpdCBjYW4ndCBiZSBy
ZS1lbmFibGVkLiBNYXJrIHRoZW0gY3JpdGljYWwgZm9yCj4gKwkgKiB0aGF0IHJlYXNvbi4KPiAr
CSAqCj4gKwkgKiBHYXRpbmcgdGhpcyBvZmYgZG9lcyBub3Qgc3RvcCB0aGUgTTAgcnByb2MsIG5v
ciBkb2VzIGl0IHN0b3AgTTAgZnJvbSBhY2Nlc3NpbmcgdG9wY3JtLiBJdAo+ICsJICogZG9lcyBo
b3dldmVyIGdhdGUgb2ZmIE0wIGZyb20gdGhlIEFYSSBpbnRlcmNvbm5lY3QsIHNvIGl0IGNhbid0
IHJlYWQgUkFNLCBNYXRyaXgsIGV0Yy4gU28KPiArCSAqIHRoZXNlIGJpdHMgaGVyZSBtZXJlbHkg
Z2F0ZSB0aGUgYnVzLCBub3QgdGhlIGFjdHVhbCBkZXZpY2VzLgo+ICsJICovCj4gKwlbWlhfQ0xL
X0FIQl9QQ0xLXSAgICAgICAgICA9IEdBVEUoImFoYi1wY2xrIiwgUEFSRU5UX0lEKFpYX0NMS19B
SEJfTVVYKSwgMHg1NCwgMTIsCj4gKwkJCQkJICBDTEtfSVNfQ1JJVElDQUwpLAo+ICsJW1pYX0NM
S19BSEJfV0NMS10gICAgICAgICAgPSBHQVRFKCJhaGItd2NsayIsIFBBUkVOVF9JRChaWF9DTEtf
TTBfTVVYKSwgMHg1NCwgMTMsCj4gKwkJCQkJICBDTEtfSVNfQ1JJVElDQUwpLAoKW1NldmVyaXR5
OiBNZWRpdW1dCkRvZXMgYWhiLXdjbGsgaGF2ZSB0aGUgd3JvbmcgcGFyZW50IG11eCBhc3NpZ25l
ZCBoZXJlPwoKSXQgaXMgY3VycmVudGx5IGFzc2lnbmVkIFpYX0NMS19NMF9NVVggaW5zdGVhZCBv
ZiBaWF9DTEtfQUhCX01VWC4gVGhlIGNvbW1lbnRzCnN0YXRlIHRoYXQgY2hhbmdpbmcgdGhlIEFI
QiBtdXggYWZmZWN0cyBVU0IgbmV0d29yayBzcGVlZHMsIHdoaWNoIGltcGxpZXMKdGhhdCBaWF9D
TEtfQUhCX01VWCBpcyB0aGUgYWN0dWFsIGhhcmR3YXJlIHBhcmVudC4KClsgLi4uIF0KPiArCS8q
Cj4gKwkgKiBIb3cgZG9lcyB0aGlzIFJUQyB3b3JrPyBJIGRvbid0IGtub3csIHRoZSBaVEUga2Vy
bmVsIGRvZXMgbm90IHRhbGsgdG8gaXQuIFRoZSBhY3R1YWwgUlRDCj4gKwkgKiBpcyBvbiB0aGUg
STJDLWNvbm5lY3RlZCBQTUlDLgo+ICsJICovCj4gKwlbWlhfQ0xLX1JUQ19XQ0xLXSAgICAgICAg
ID0gR0FURSgicnRjLXdjbGsiLCBjbGtfdW5rbm93biwgMHg1NCwgMSwgMCksCgpbU2V2ZXJpdHk6
IExvd10KV2lsbCB0aGlzIGZhY2UgdGhlIHNhbWUgc3RhdGljIGFycmF5IGluaXRpYWxpemVyIGVy
cm9yIGFzIHRoZSBvdGhlciB1c2FnZXMKb2YgY2xrX3Vua25vd24/CgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODEwLXp4MjljbGst
djEwLTAtNjM4NDY0OTA3MTJjQGdtYWlsLmNvbT9wYXJ0PTgKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
