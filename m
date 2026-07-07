Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50DC0C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 04:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJOoUNpZ55WWtkIatWSBKndfkysu3QWzhh5PFMWfHJM=; b=bfO0vNXW0v7mt2
	R+BWtoo1ItVlfaM0PWhzPi3K47P39O1j96PVxu7SSy60jNr0Gca26gCnobmUmrRRtvXhotRJ53CYV
	Uov8+t2uobLEkvOEaQHCHEX50rWtSMHaDo7pOGEr5bKPt96CsKwLNL48jmNV1nWYFg5ZtFbkH1cqU
	uZOCmac8lZdcCgbkw8o0rrKL82yOTPG+IpHgAArKndyMtRjQ1YILwlB2psjs3wdU1+S3q8MM24ud1
	kIaEUoOsKHMhCmJ0xALGWwew5tiGbCbDJ9Bg3SSAk27iB2GosQGMewhhIyKZ3q59tSJhcRIjcICmN
	hzqx/qlNSAOMuX2OiEfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgxoV-0000000E66r-2XeG;
	Tue, 07 Jul 2026 04:53:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgxoU-0000000E66g-3qBu
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 04:53:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4C7BC43B97;
	Tue,  7 Jul 2026 04:53:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2660F1F000E9;
	Tue,  7 Jul 2026 04:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783400022;
	bh=6nzkmfJ6Uv5FSEajJK/nz5K8722h+71LROCSrSNOHd0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IMZ9IxUkiFg23ctSK8a7yxkZG6exNx5yK0jQCw4PXitWmmu/xoNyyW+3vTyGvSwyy
	 YrYfcEuNDPLS7XEKoUUaSnPnLC7iwC2UsZeHjJGqdBCPeUzaH8Qj7G4Bf/y6rT11sT
	 W/kh4z654JE1eHhLzBQkahN62FQp61mIAlXvY504c35vCCxJjDZ2aUM57hRWc8PFTT
	 hP1yBcomR3DhQMjm55dMkhI1X/H6VBVvtkpuSc1AINdGgEoPqLqn645h850oOl/a3r
	 eg4h93UCUyXzESADe+GMJWNZmwRwr0O35LzFn4AaKkV67X4LGu7PkQH5xIEAh/XBpm
	 bRc30qJppXPqw==
Date: Tue, 7 Jul 2026 06:53:32 +0200
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
Message-ID: <43b5xhqvnapamfv4aomid647kaxrudgjcbnnca23t3vxitv67t@njdlthj2oisa>
References: <20260703-vdev_maili_dt_bindings-v1-0-c9df0916cd5e@oss.qualcomm.com>
 <20260703-vdev_maili_dt_bindings-v1-1-c9df0916cd5e@oss.qualcomm.com>
 <20260706-pastoral-okapi-of-reading-e5bdb3@quoll>
 <yntj62kr7tixc7capwdr6xhv2zpisfrjg62bwftgiuujf4fzt5@cjdrkglo4dv5>
 <9967f1a0-a9e3-4d62-b5df-7f625610a89d@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9967f1a0-a9e3-4d62-b5df-7f625610a89d@kernel.org>
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

T24gTW9uLCBKdWwgMDYsIDIwMjYgYXQgMDc6MzU6NTJQTSArMDIwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAwNi8wNy8yMDI2IDE4OjM2LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPiBPbiBNb24sIEp1bCAwNiwgMjAyNiBhdCAwODo0Njo0MUFNICswMjAwLCBLcnp5
c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4+IE9uIEZyaSwgSnVsIDAzLCAyMDI2IGF0IDA1OjM4
OjQwUE0gKzA1MzAsIFZpdmVrIFBlcm5hbWl0dGEgd3JvdGU6Cj4gPj4+IEFkZCBxY29tLG1haWxp
LXBjaWUgYXMgYSBjb21wYXRpYmxlIHN0cmluZyB0aGF0IGZhbGxzIGJhY2sgdG8KPiA+Pj4gcWNv
bSxoYXdpLXBjaWUsIGFzIHRoZSBNYWlsaSBTb0MgcmV1c2VzIHRoZSBIYXdpIFBDSWUgY29udHJv
bGxlciBJUC4KPiA+Pj4KPiA+Pj4gVGhlIE1haWxpIFNvQyBpcyBhIGRlcml2YXRpdmUgb2YgSGF3
aSBhbmQgc2hhcmVzIHRoZSBzYW1lIFBDSWUKPiA+Pj4gY29udHJvbGxlciBhcmNoaXRlY3R1cmUs
IGFsbG93aW5nIHJldXNlIG9mIHRoZSBleGlzdGluZyBIYXdpIFBDSWUKPiA+Pj4gRFQgYmluZGlu
Z3MuCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IFZpdmVrIFBlcm5hbWl0dGEgPHZpdmVrLnBl
cm5hbWl0dGFAb3NzLnF1YWxjb21tLmNvbT4KPiA+Pj4gLS0tCj4gPj4+IERlcGVuZGVuY2llczoK
PiA+Pj4gLSBQQ0k6IHFjb206IEFkZCBQQ0llIHN1cHBvcnQgZm9yIHVwY29taW5nIEhhd2kgU29D
Cj4gPj4+ICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNjI1LWhhd2ktcGNpZS12
NC0wLTFhNTc4NjAzY2Q4NkBvc3MucXVhbGNvbW0uY29tLwo+ID4+Cj4gPj4gU3F1YXNoIHRoZSBw
YXRjaGVzIHRoZW4uCj4gPj4KPiA+IAo+ID4gQnV0IHRoZXNlIGFyZSB0d28gaW5kZXBlbmRlbnQg
U29DIGFkZGl0aW9ucywgaXNuJ3QgaXQ/Cj4gCj4gSXQncyBhZGRpbmcgYSBzaW5nbGUgY29tcGF0
aWJsZSwgbm8/IElmIGEgcGF0Y2ggYWRkaW5nIGEgc2luZ2xlCj4gY29tcGF0aWJsZSBjYW5ub3Qg
YmUgZG9uZSB3aXRob3V0IG11bHRpLXBhdGNoc2V0IGRlcGVuZGVuY2llcyBtYWtpbmcKPiB0ZXN0
aW5nIGJ5IHRvb2xpbmcgaW1wb3NzaWJsZSwgdGhlbiBwcm9iYWJseSB0aGF0IHdvcmsgc2hvdWxk
IG5vdCBiZQo+IHNlbnQgc2VwYXJhdGVseSBvciBldmVuIGFzIHNlcGFyYXRlIHBhdGNoLiBBbmQg
SSBhbSBub3Qgc2F5aW5nIGFueXRoaW5nCj4gbmV3IGJlY2F1c2UgaGFsZiBhIHllYXIgYWdvIChh
cm91bmQgS2FhbmFwYWxpIGFuZCBHbHltdXIpIEkgdm9pY2VkCj4gc3Ryb25nIG9waW5pb24gYWJv
dXQgdGhhdC4KPiAKPiBCdXQgcmVhbGx5LCB5b3UgZG8gbm90IG5lZWQgdG8gYWRkIHR3byBjb21w
YXRpYmxlcyBpbiB0d28gc2VwYXJhdGUgcGF0Y2hlcy4KPiAKCk9rIHRoZW4uIEknbGwgc3F1YXNo
IHRoaXMgcGF0Y2ggd2l0aCBIYXdpIHBhdGNoIHdoaWNoIGFscmVhZHkgZ290IGFwcGxpZWQuCgot
IE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
