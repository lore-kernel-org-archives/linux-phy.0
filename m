Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86244C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 07:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEmS/5G31pF+OOHr7Yk2l4AWOARKUwr73InUHf8AAIc=; b=Ci/ANlMiHAYp+0
	0IwdFPzPzOsEOpfUeH4fqJeZEChNMC/452VxQ7UKJF8+blK1wEcRwbynfmLB+dpeA7h1EReke6eTw
	wMF1HWlxNswQ/ueRkPE23MabsE3g9Cq+6Yt2DDaD7xhKIEgyWWMJeBzV13QpzA9V0XyC8imwwua23
	9LZWGBxDBU1NBLAIcCfxLXNbndBc0xPNZYRhnO8+hdZW2/dgOwor+PQyzYGFlmKtMbd46Od5riDNC
	tudYfmYZaHE85NH9T0IFFKvB2xtrkiBIunN8HOwKElt+Cag5rcMe7pF92zXEhp1Hdl99NsYNTKtic
	ZYPR8Ml9J0oCorklkahQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh05P-0000000EJ36-3bBg;
	Tue, 07 Jul 2026 07:19:20 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh05N-0000000EJ2m-1k8K
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 07:19:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 849AB618A7;
	Tue,  7 Jul 2026 07:19:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46E591F000E9;
	Tue,  7 Jul 2026 07:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783408756;
	bh=Nhjnutzwtwz3q8GwPHJ0ZxGLEwpmozqj79iMSPN6uNs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=KVhFohHRaEweA2Slii/hMfFQnSN88fx4CX0ZCsb55V87G7cE4LR8oSZEH3Sl5diev
	 tbGgM+jMz3PIn94T3y8FqGbLyZa8kgmTq0z6jp8IjcrJTTbFhZHEPGxkU36gWlFiWa
	 k3YOyG0S3QsIZgsXUyykpQHlFj2aX+RQTLpdD329Gjspe3sWBNoLBkmNi/p4YbMm4n
	 iEy5bDTp6w2S+1z/bYcolRsPojNTrWeVeOiWPtFs1nuzZ0f6zTkPPFnWPwxN7o6VnI
	 CuyT8J/4NvjivdumwW3CqDtBxvKM1/QrOm5qs+T8QDkr5bBqu9p8uYEppXwIhjq4A+
	 owudE6F/UAwBA==
Date: Tue, 7 Jul 2026 09:19:06 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: pci: qcom,hawi-pcie: Add Maili PCIe
 compatible
Message-ID: <dxtlmourfju7ue6nab2yx5lv6cf2z7w3okdfr6zwxvskday6nt@xnl63h5kojts>
References: <20260703-vdev_maili_dt_bindings-v1-0-c9df0916cd5e@oss.qualcomm.com>
 <20260703-vdev_maili_dt_bindings-v1-1-c9df0916cd5e@oss.qualcomm.com>
 <20260706-pastoral-okapi-of-reading-e5bdb3@quoll>
 <yntj62kr7tixc7capwdr6xhv2zpisfrjg62bwftgiuujf4fzt5@cjdrkglo4dv5>
 <9967f1a0-a9e3-4d62-b5df-7f625610a89d@kernel.org>
 <43b5xhqvnapamfv4aomid647kaxrudgjcbnnca23t3vxitv67t@njdlthj2oisa>
 <92b7efac-32c3-4a89-9b08-55da294a6bc0@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <92b7efac-32c3-4a89-9b08-55da294a6bc0@kernel.org>
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

T24gVHVlLCBKdWwgMDcsIDIwMjYgYXQgMDc6NTU6NDVBTSArMDIwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAwNy8wNy8yMDI2IDA2OjUzLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPiBPbiBNb24sIEp1bCAwNiwgMjAyNiBhdCAwNzozNTo1MlBNICswMjAwLCBLcnp5
c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4+IE9uIDA2LzA3LzIwMjYgMTg6MzYsIE1hbml2YW5u
YW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+Pj4gT24gTW9uLCBKdWwgMDYsIDIwMjYgYXQgMDg6NDY6
NDFBTSArMDIwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+Pj4+IE9uIEZyaSwgSnVs
IDAzLCAyMDI2IGF0IDA1OjM4OjQwUE0gKzA1MzAsIFZpdmVrIFBlcm5hbWl0dGEgd3JvdGU6Cj4g
Pj4+Pj4gQWRkIHFjb20sbWFpbGktcGNpZSBhcyBhIGNvbXBhdGlibGUgc3RyaW5nIHRoYXQgZmFs
bHMgYmFjayB0bwo+ID4+Pj4+IHFjb20saGF3aS1wY2llLCBhcyB0aGUgTWFpbGkgU29DIHJldXNl
cyB0aGUgSGF3aSBQQ0llIGNvbnRyb2xsZXIgSVAuCj4gPj4+Pj4KPiA+Pj4+PiBUaGUgTWFpbGkg
U29DIGlzIGEgZGVyaXZhdGl2ZSBvZiBIYXdpIGFuZCBzaGFyZXMgdGhlIHNhbWUgUENJZQo+ID4+
Pj4+IGNvbnRyb2xsZXIgYXJjaGl0ZWN0dXJlLCBhbGxvd2luZyByZXVzZSBvZiB0aGUgZXhpc3Rp
bmcgSGF3aSBQQ0llCj4gPj4+Pj4gRFQgYmluZGluZ3MuCj4gPj4+Pj4KPiA+Pj4+PiBTaWduZWQt
b2ZmLWJ5OiBWaXZlayBQZXJuYW1pdHRhIDx2aXZlay5wZXJuYW1pdHRhQG9zcy5xdWFsY29tbS5j
b20+Cj4gPj4+Pj4gLS0tCj4gPj4+Pj4gRGVwZW5kZW5jaWVzOgo+ID4+Pj4+IC0gUENJOiBxY29t
OiBBZGQgUENJZSBzdXBwb3J0IGZvciB1cGNvbWluZyBIYXdpIFNvQwo+ID4+Pj4+ICAgaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNjI1LWhhd2ktcGNpZS12NC0wLTFhNTc4NjAzY2Q4
NkBvc3MucXVhbGNvbW0uY29tLwo+ID4+Pj4KPiA+Pj4+IFNxdWFzaCB0aGUgcGF0Y2hlcyB0aGVu
Lgo+ID4+Pj4KPiA+Pj4KPiA+Pj4gQnV0IHRoZXNlIGFyZSB0d28gaW5kZXBlbmRlbnQgU29DIGFk
ZGl0aW9ucywgaXNuJ3QgaXQ/Cj4gPj4KPiA+PiBJdCdzIGFkZGluZyBhIHNpbmdsZSBjb21wYXRp
YmxlLCBubz8gSWYgYSBwYXRjaCBhZGRpbmcgYSBzaW5nbGUKPiA+PiBjb21wYXRpYmxlIGNhbm5v
dCBiZSBkb25lIHdpdGhvdXQgbXVsdGktcGF0Y2hzZXQgZGVwZW5kZW5jaWVzIG1ha2luZwo+ID4+
IHRlc3RpbmcgYnkgdG9vbGluZyBpbXBvc3NpYmxlLCB0aGVuIHByb2JhYmx5IHRoYXQgd29yayBz
aG91bGQgbm90IGJlCj4gPj4gc2VudCBzZXBhcmF0ZWx5IG9yIGV2ZW4gYXMgc2VwYXJhdGUgcGF0
Y2guIEFuZCBJIGFtIG5vdCBzYXlpbmcgYW55dGhpbmcKPiA+PiBuZXcgYmVjYXVzZSBoYWxmIGEg
eWVhciBhZ28gKGFyb3VuZCBLYWFuYXBhbGkgYW5kIEdseW11cikgSSB2b2ljZWQKPiA+PiBzdHJv
bmcgb3BpbmlvbiBhYm91dCB0aGF0Lgo+ID4+Cj4gPj4gQnV0IHJlYWxseSwgeW91IGRvIG5vdCBu
ZWVkIHRvIGFkZCB0d28gY29tcGF0aWJsZXMgaW4gdHdvIHNlcGFyYXRlIHBhdGNoZXMuCj4gPj4K
PiA+IAo+ID4gT2sgdGhlbi4gSSdsbCBzcXVhc2ggdGhpcyBwYXRjaCB3aXRoIEhhd2kgcGF0Y2gg
d2hpY2ggYWxyZWFkeSBnb3QgYXBwbGllZC4KPiAKPiBBcHBsaWVkPyBUaGF0J3Mgbm90IHdoYXQg
SSBoYWQgaW4gbWluZC4gVGhpcyBtZW50aW9ucyBleHRlcm5hbAo+IGRlcGVuZGVuY3ksIG5vdCBz
b21ldGhpbmcgd2hpY2ggd2FzIGFwcGxpZWQuIFNob3VsZCBiZSBzcXVhc2hlZCB0aGVyZS4KPiAK
CkkgbWVyZ2VkIHRoZSBkZXBlbmRlbmN5IGZvciA3LjMgYmVmb3JlIGxvb2tpbmcgYXQgdGhpcyBz
ZXJpZXMuIFNvIG5vdywgc3F1YXNoZWQKdGhpcyBwYXRjaCB3aXRoIHRoYXQuCgotIE1hbmkKCi0t
IArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
