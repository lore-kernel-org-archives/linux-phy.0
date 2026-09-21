Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0AD9C982ED
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 11:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIDyCLWKfg+oXolsgDGteJU1667tUTamIWeYVMIPNss=; b=3hUtwlL7KIfpTb
	QROAYYtpVVPy7/7E0DVYQC/N+afz6tbzTv48WorEFTjdveO1oRexiNjJckJZT+nb5EqddTyol8+qu
	89IakUjrsRMEkoR4jt1536BHQQsih+excopQtsB4oeKV4fFK+lUokI+ObNagBaISxEvrfTum1A1E4
	pLRlyB7GU4cQHJz/KpHhlJniqFoAHae26oDqDxL+A1DQr35beyOa8WiC+a7To9xv8vNMOgc3jgJC3
	doH0uHZ0bjMi2F0hjmkdaYkIjGNQzNrQ+TG98k+fDp4b6vbr1MTmcvEGX12BU1IqDrixtIggxAjrR
	gEyNPJS0veb4T8c+WvRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8c1B-00000001rWe-19wU;
	Mon, 21 Sep 2026 11:17:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8c1A-00000001rVP-1wqH
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 11:17:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E26E2601F9;
	Mon, 21 Sep 2026 11:17:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BA791F00893;
	Mon, 21 Sep 2026 11:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789989423;
	bh=EWpvnS9sJSHrGCy+MFZE6qg3yzgkz6vfigCSQ78iMBA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LhfZ6J3SDa1TNs3WY8M7GWvBfvuJ1Gf+IzRAbT9jLnwEskR2+sCXEQki59C3fFHNM
	 kCWJk1MOaJlXTnuPx6JT9+Jv76qTZgTspxBO1ZEi7SO/OA1u+mUTFFO+ZkLJrh8x+M
	 T6uxRFUx23szXsImepIHkY4328i7Wf0zquQ98Odwki9IFnVTdVyBsl9lr5ApuLDL3Q
	 eP94wzVnqzBxJ5SvV/gMgisLtWrp9CnD2TdhuOTvg3bgw67Qyd9pKUp/4wNbnprZbC
	 dS8+e+ucvdBdDMUNCryhioCUoZ0zHg3bDANz4nOp9fzanrjZxwxTw+d1tmMA6tYhzy
	 Rg4xDX07oikPg==
Date: Mon, 21 Sep 2026 13:16:55 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 0/4] PCI: qcom: Align PHY init sequence with HPG
Message-ID: <u76xfze53ilx6pd7wydsutax7urcbvlhlos64o6cvzku6e5wrs@jugdukoksabu>
References: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
 <20260916155504.GA926264@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260916155504.GA926264@bhelgaas>
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

T24gV2VkLCBTZXAgMTYsIDIwMjYgYXQgMTA6NTU6MDRBTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBUdWUsIFNlcCAxNSwgMjAyNiBhdCAxMTowNDoyMFBNIC0wNzAwLCBRaWFuZyBZ
dSB3cm90ZToKPiA+IEhQRyByZXF1aXJlcyB0aGUgY29udHJvbGxlci9QSFkgR0RTQ3MgdG8gYmUg
cG93ZXJlZCB1cCBhbmQgYWxsCj4gPiBjbG9ja3MgZW5hYmxlZCwgdGhlbiB0aGUgY29udHJvbGxl
cidzIHJlc2V0IGFuZCB0aGUgUEhZJ3MgcmVzZXQKPiA+IHRvZ2dsZWQgdG9nZXRoZXIgYXMgb25l
IGdyb3VwLCB3aXRoIFBBUkZfREVWSUNFX1RZUEUgc2V0IHJpZ2h0Cj4gPiBhZnRlci4gVGhpcyBz
ZXJpZXMgYWRkcyB0aGUgY2FsbGJhY2tzIG5lZWRlZCBvbiBib3RoIHNpZGVzIHRvCj4gPiByZWFs
aXplIHRoYXQgc2VxdWVuY2U6IGEgcGh5X3Jlc2V0KCkgY2FsbCB0aGUgY29udHJvbGxlciBtYWtl
cyBhcwo+ID4gcGFydCBvZiBpdHMgb3duIHJlc2V0LCBhbmQgbWF0Y2hpbmcgcGh5X29wczo6aW5p
dC9waHlfb3BzOjpyZXNldCBvbgo+ID4gdGhlIFBIWSBzaWRlLgo+IAo+IFRoaXMgb2JzZXJ2YXRp
b24gaXMgbm90IHJlbGF0ZWQgdG8gdGhpcyBzZXJpZXM7IGl0J3MgYSBxdWVzdGlvbiBhYm91dAo+
IFBDSSBob3N0IGNvbnRyb2xsZXIgaW5pdGlhbGl6YXRpb24gb3JkZXJpbmcgaW4gZ2VuZXJhbCBi
ZWNhdXNlIGl0Cj4gc2VlbXMgbGlrZSB0aGlzIGlzIGEgcGVyZW5uaWFsIGlzc3VlLiAgSXMgdGhl
cmUgYW55dGhpbmcgd2UgY2FuIGRvIHRvCj4gY29udmVyZ2Ugb24gc29tZSBzb3J0IG9mIGdlbmVy
aWMgc3RhbmRhcmQgb3IgdHlwaWNhbCBvcmRlcmluZyBhY3Jvc3MKPiBkcml2ZXJzPwo+IAo+IEZv
ciBleGFtcGxlLCB3aGlsZSBsb29raW5nIGF0IGEgcGF0Y2ggdGhhdCBjaGFuZ2VkIG9yZGVyaW5n
IGluIGEKPiBkaWZmZXJlbnQgZHJpdmVyIChub3QgcWNvbSksIEkgYXNrZWQgR2VtaW5pIGZvciBz
b21lIGd1aWRhbmNlIGFuZCBpdAo+IGNhbWUgdXAgd2l0aCB0aGUgZm9sbG93aW5nIG9yZGVyaW5n
IHJlY29tbWVuZGF0aW9ucywgd2hpY2ggc2VlbQo+IHByZXR0eSBnZW5lcmljOgo+IAo+ICAgLSBh
c3NlcnQgZG93bnN0cmVhbSBQRVJTVCMgc28gcGh5c2ljYWwgbGFuZXMgcmVtYWluIHF1aWV0IHdo
aWxlCj4gICAgIHNldHRpbmcgdXAgdGhlIGhvc3QKPiAKPiAgIC0gYXNzZXJ0IGxvY2FsIHJlc2V0
cyAoY29yZSAmIFBIWSkKPiAKPiAgIC0gZW5hYmxlIGFuZCBzdGFiaWxpemUgcG93ZXIgKElQIGNv
cmUsIEkvTyByYWlscywgUEhZcykKPiAKPiAgIC0gZW5hYmxlIGFuZCBzdGFiaWxpemUgY2xvY2tz
LCBpbmNsdWRpbmcgcmVmY2xrIGFuZCBUX1BFUlNUX0NMSwo+IAo+ICAgLSBpbml0aWFsaXplIFBI
WXMKPiAKPiAgICAgLSBkZWFzc2VydCBQSFkgcmVzZXQgb3IgYWxsb3cgcmVnaXN0ZXIgYWNjZXNz
IHRvIFBIWQo+IAo+ICAgICAtIHdhaXQgZm9yIFBIWSBQTEwgbG9jayB0byByZWZjbGsKPiAKPiAg
ICAgLSBwcm9ncmFtIFBIWSBwYXJhbWV0ZXJzICYgY2FsaWJyYXRpb24KPiAKPiAgICAgLSB2ZXJp
ZnkgUEhZIHJlYWR5Cj4gCj4gICAtIGRlYXNzZXJ0IGxvY2FsIGNvcmUgcmVzZXQKPiAKPiAgIC0g
Y29uZmlndXJlIFJDIChkZXZpY2UgdHlwZSwgTVBTLCBtYXggbGluayBzcGVlZCwgd2lkdGgsIGV0
YykKPiAKPiAgIC0gZGVhc3NlcnQgZG93bnN0cmVhbSBQRVJTVCMKPiAKPiAgIC0gZW5hYmxlIExU
U1NNCj4gCj4gSWYgdGhpcyBjb3VsZCBiZSBtYWRlIGdlbmVyaWMgZW5vdWdoLCBtYXliZSBzb21l
dGhpbmcgbGlrZSBpdCBjb3VsZCBiZQo+IGluY2x1ZGVkIGluIERvY3VtZW50YXRpb24vUENJL2Nv
bnRyb2xsZXIvcGNpLWNvbnRyb2xsZXItZHJpdmVycy5yc3Q/CgpTb21lIG9mIHRoZXNlIHNlcXVl
bmNlcyBjb3VsZCBiZSBnZW5lcmFsaXNlZCwgYnV0IHRoZSBwcm9ibGVtIGlzLCBwcmV0dHkgbXVj
aAplYWNoIGNvbnRyb2xsZXIgc2VxdWVuY2UgZm9sbG93IGEgaGFyZHdhcmUgcmVmZXJlbmNlIG1h
bnVhbCBhbmQgdGhvc2UKcmVjb21tZW5kIGEgc3BlY2lmaWMgc2VxdWVuY2UuIFNvIGlmIHdlIGRp
dmVyZ2UgZnJvbSB0aGF0IHJlY29tbWVuZGVkIHNlcXVlbmNlLAp0aGVuIGdldHRpbmcgaGVscCBm
cm9tIHRoZSBoYXJkd2FyZSB0ZWFtIGZvciBhbnkgaXNzdWUgd291bGQgYmUgdHJpY2t5LiBBdGxl
YXN0LAp0aGlzIGlzIHRoZSBjYXNlIHdpdGggUWNvbSBjb250cm9sbGVycy4KCi0gTWFuaQoKLS0g
CuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
