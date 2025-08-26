Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C62F5CA0EFA
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 06:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKLNGo+5bPzjuZu6005tvQnuy66BwnaO7YD3K1Ry5AI=; b=pyA7MUSnQI7Icf
	3RRjzMvPdnN5R5tAkZvGWqryWT+D2NYWDNyPRmmvKixXiLGB/xVbp/NO+TCQqI0U0+4+LGrW3Ttl6
	qXsdEbZFtLVHEUyIJ6E3WZWq3xLcbWNh4WivI9W/O5gyDFKAdsf82S93k2bEzGnOQjFFdWOfFM6+4
	bY3lcXX2JSzuGMtaXzFKDyPU+Bwm9Lastrx24GZXGfRimiQ7LVf6Nd0OZyEOc6Wtb00uAA/J4r7kv
	OM3svAzav85TLppehGbMmoGc7Q1pcC/lBQSPmyhaT+v5gCiXAIlomNZNR42SqrdX5XPXPabouD3zr
	NppAtt8AgIcVsihmcK8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqn0b-0000000Af92-1IiZ;
	Tue, 26 Aug 2025 06:18:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqn0Y-0000000Af8g-0B6d
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 06:18:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AB99941950;
	Tue, 26 Aug 2025 06:18:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C714EC4CEF1;
	Tue, 26 Aug 2025 06:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756189093;
	bh=TufPpZh+5km23M/SOb+uejlv3zSfmFKXfTQaS89ZyJw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XQzX4xdIcvcaavyDzRTUsYZ2OZUrJufij98mjWbxGcZeGCqD+CBo2QCXLr6Usp83U
	 AKMwXLjiCcoyrK7uhTShCLMkMjVA0a7eFAOV+gg8JsNSqV/emBvBg8gzX0w6Q8hRxd
	 YbSdrOAbvYwt47IaVMYKOXtxTZrv9g4XiAzZmrG1mgu2Wfwtu1phe7R5l6jDuC5XY4
	 //preh2SFWda0re1aktjTK22g9R7Lem4dilWBdIqrTFW4x7riB5bEpXGpA6bhsxLXw
	 L+/gcEs4yK1CrSO9eevpU4KbfvpZOPFNbUVawY+krKmOG6e2W07uLg+Qw9oSU9vxSA
	 wHREnYoKtBlXw==
Date: Tue, 26 Aug 2025 11:47:58 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
Subject: Re: [PATCH v2 3/3] PCI: qcom: Restrict port parsing only to pci
 child nodes
Message-ID: <rurdrz3buvb7paqgjjr7ethzvaeyvylezexcwshpj73xf7yeec@i52bla6r5tx7>
References: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
 <20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_231814_181559_D062F304 
X-CRM114-Status: GOOD (  15.38  )
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

T24gVHVlLCBBdWcgMjYsIDIwMjUgYXQgMTA6NDg6MTlBTSBHTVQsIEtyaXNobmEgQ2hhaXRhbnlh
IENodW5kcnUgd3JvdGU6Cj4gVGhlIHFjb21fcGNpZV9wYXJzZV9wb3J0cygpIGZ1bmN0aW9uIGN1
cnJlbnRseSBpdGVyYXRlcyBvdmVyIGFsbCBhdmFpbGFibGUKPiBjaGlsZCBub2RlcyBvZiB0aGUg
UENJZSBjb250cm9sbGVyJ3MgZGV2aWNlIHRyZWUgbm9kZS4gVGhpcyBjYW4gbGVhZCB0bwo+IGF0
dGVtcHRzIHRvIHBhcnNlIHVucmVsYXRlZCBub2RlcyBsaWtlIE9QUCBub2RlcywgcmVzdWx0aW5n
IGluIHVubmVjZXNzYXJ5Cj4gZXJyb3JzIG9yIG1pc2NvbmZpZ3VyYXRpb24uCj4gCgpXaGF0IGVy
cm9ycz8gRXJyb3JzIHlvdSBhcmUgc2VlaW5nIG9uIHlvdXIgc2V0dXAgb3IgeW91IGVudmlzaW9u
PwoKPiBSZXN0cmljdCB0aGUgcGFyc2luZyBsb2dpYyB0byBvbmx5IGNvbnNpZGVyIGNoaWxkIG5v
ZGVzIG5hbWVkICJwY2llIiBvcgo+ICJwY2kiLCB3aGljaCBhcmUgdGhlIGV4cGVjdGVkIG5vZGUg
bmFtZXMgZm9yIFBDSWUgcG9ydHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+CgpTaW5jZSB0aGlz
IGlzIGEgZml4LCAnRml4ZXMnIHRhZyBpcyBuZWVkZWQuCgo+IC0tLQo+ICBkcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9wY2llLXFjb20uYyB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9w
Y2llLXFjb20uYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gaW5k
ZXggMjk0YmFiZTE4MTZlNGQwYzJiMjM0M2ZlMjJkODlhZjcyYWZjZDZjZC4uNWRiZGI2OWZiZGQx
YjliNzhhM2ViYmEzY2Q1MGQ3ODE2OGYyZDU5NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaWUtcWNvbS5jCj4gQEAgLTE3NDAsNiArMTc0MCw4IEBAIHN0YXRpYyBpbnQgcWNvbV9w
Y2llX3BhcnNlX3BvcnRzKHN0cnVjdCBxY29tX3BjaWUgKnBjaWUpCj4gIAlpbnQgcmV0ID0gLUVO
T0VOVDsKPiAgCj4gIAlmb3JfZWFjaF9hdmFpbGFibGVfY2hpbGRfb2Zfbm9kZV9zY29wZWQoZGV2
LT5vZl9ub2RlLCBvZl9wb3J0KSB7Cj4gKwkJaWYgKCEob2Zfbm9kZV9uYW1lX2VxKG9mX3BvcnQs
ICJwY2llIikgfHwgb2Zfbm9kZV9uYW1lX2VxKG9mX3BvcnQsICJwY2kiKSkpCgpNYXkgSSBrbm93
IHdoaWNoIHBsYXRmb3JtIGhhcyAncGNpJyBhcyB0aGUgbm9kZSBuYW1lIGZvciB0aGUgYnJpZGdl
IG5vZGU/IEFGQUlLLAphbGwgcGxhdGZvcm1zIGRlZmluaW5nIGJyaWRnZSBub2RlcyBoYXZlICdw
Y2llJyBhcyB0aGUgbm9kZSBuYW1lLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j
4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
