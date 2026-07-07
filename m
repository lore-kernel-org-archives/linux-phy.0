Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61D83C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 06:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Ee/a2hOEoX4xIGOSVCDnuF4mwHyJkthHomClUDdYU8=; b=ogZ28y10/jRJ3+
	fnIqn3UNQXJv8l25fNb2YcLZSViuTCWE/BNEGbr/vOsCYXJAkBG+W1Hx6gmo3J+TnZBc2zLMZeHfN
	xTRoH1e8OdKMZkU2EfKi86xcS8Q5Wqf9GTK1Vxy5qofmOEKqYzJoDK6rYQfQV2mlejy1pL+3Ts0En
	lOTHeNjeS8AaCKcs3+ipKl4CzAB4JLLymRwzG4UddrskYc9/wrpJemmci+Wsve72FDKF5pDxub9WD
	hAgNGqMAFRWSuiJXhm6Rl5HWvCeUlqlPlPUOLUHhwCUavIHqOXErNMwuRtRkhVfMJO77PoxWb7G2c
	qcFBHnItr6wkJphMzGuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgzbQ-0000000EFXv-03yB;
	Tue, 07 Jul 2026 06:48:20 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgzbP-0000000EFXi-135x
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 06:48:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4C579601DE;
	Tue,  7 Jul 2026 06:48:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 886F51F000E9;
	Tue,  7 Jul 2026 06:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783406898;
	bh=Hac1D+DwkuFoG+G5po4P0T2lLHD81goBLdqm6cccAAY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TH9OBtFkWh6yDb+swE9L0AP0Cfza5ifewJC9fCyNVxzdtFX654XOAQxmTCIdwkF5c
	 roEsiK2qWY5xCEu2XhpkJE+Cmfle4Wo8HAabFOyCG6VIwXhDzZrQJws5B9GPtecC8J
	 KFEUfU9X4jbwcoD6inu5drqF13ClAh/qGkKr+/3xXumgYeQAqhEO9wYsd3+zID3DMk
	 FRwjkVSOr75iihiK3gkw4Z6Gq50N5pBmoIEIgix0/J2VfcTR3+XZFDmuJ+m2uUoLVj
	 nD/DNGbw5E6kErE0yg63oi2Lr4mtbZgJlPmreVJwo/M4mq9pZ6CdNRByUJ6CPt2/F6
	 QQxnhtlwEhecQ==
Date: Tue, 7 Jul 2026 08:48:08 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, Bartosz Golaszewski <brgl@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 3/9] dt-bindings: PCI: Add bindings for endpoint gpios
Message-ID: <34ao6p6f3alyqynyscpdmc7k4svmbcrlmamzhwjq2qdn47lnm5@u5bpordfbams>
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <20260701-shikra-upstream-v1-3-e1a721eb8943@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701-shikra-upstream-v1-3-e1a721eb8943@oss.qualcomm.com>
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

T24gV2VkLCBKdWwgMDEsIDIwMjYgYXQgMTI6MzI6NDVBTSArMDUzMCwgU3VzaHJ1dCBTaHJlZSBU
cml2ZWRpIHdyb3RlOgoKVXNlIHByb3BlciBwcmVmaXggZm9yIHRoZSBzdWJqZWN0LgoKPiBBZGQg
ZGV2aWNldHJlZSBiaW5kaW5ncyBmb3IgVEM5NTYzIEdQSU8ncyB3aGljaCBhcmUKPiB1c2VkIHRv
IGNvbnRyb2wgZW5kcG9pbnQgcG93ZXIgYW5kIHJlc2V0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFN1
c2hydXQgU2hyZWUgVHJpdmVkaSA8c3VzaHJ1dC50cml2ZWRpQG9zcy5xdWFsY29tbS5jb20+Cj4g
LS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS90b3NoaWJhLHRjOTU2My55YW1sICAg
IHwgMjIgKysrKysrKysrKysrKysrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGNpL3Rvc2hpYmEsdGM5NTYzLnlhbWwgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Rvc2hpYmEsdGM5NTYzLnlhbWwKPiBpbmRleCBiM2Fk
MDVkOTAyMDEuLmY5ZjcxZjI4YWE5MiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGNpL3Rvc2hpYmEsdGM5NTYzLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Rvc2hpYmEsdGM5NTYzLnlhbWwKPiBAQCAtMjYs
NiArMjYsMTEgQEAgcHJvcGVydGllczoKPiAgICByZWc6Cj4gICAgICBtYXhJdGVtczogMQo+ICAK
PiArICBncGlvLWNvbnRyb2xsZXI6IHRydWUKPiArCj4gKyAgJyNncGlvLWNlbGxzJzoKPiArICAg
ICAgICBjb25zdDogMgoKRml4IGluZGVudC4KCj4gKwo+ICAgIHJlc3gtZ3Bpb3M6Cj4gICAgICBt
YXhJdGVtczogMQo+ICAgICAgZGVzY3JpcHRpb246Cj4gQEAgLTY5LDYgKzc0LDE3IEBAICRkZWZz
Ogo+ICAgICAgdHlwZTogb2JqZWN0Cj4gIAo+ICAgICAgcHJvcGVydGllczoKPiArICAgICAgcmVz
ZXQtZ3Bpb3M6Cj4gKyAgICAgICAgZGVzY3JpcHRpb246Cj4gKyAgICAgICAgICBTcGVjaWZ5IHRo
ZSBUQzk1NjMgR1BJTyB1c2VkIHRvIHJlc2V0IHRoZSBlbmRwb2ludAo+ICsgICAgICAgICAgY29u
bmVjdGVkIHRvIHRoZSBwYXJ0aWN1bGFyIFRDOTU2MyBkb3duc3RyZWFtIHBvcnQuCj4gKwoKVGhp
cyB0aGUgUEVSU1QjIHNpZ25hbCwgaXNuJ3QgaXQ/IElmIHNvLCBtZW50aW9uIGl0IGFzLWlzLgoK
PiArICAgICAgZXAtcHdyLWVuLWdwaW9zOgo+ICsgICAgICAgIGRlc2NyaXB0aW9uOgo+ICsgICAg
ICAgICAgU3BlY2lmeSB0aGUgVEM5NTYzIEdQSU8gdXNlZCBmb3IgZW5hYmxpbmcgcG93ZXIgdG8K
PiArICAgICAgICAgIHRoZSBlbmRwb2ludCBjb25uZWN0ZWQgdG8gdGhlIHBhcnRpY3VsYXIgVEM5
NTYzCj4gKyAgICAgICAgICBkb3duc3RyZWFtIHBvcnQuCj4gKwoKU28gdGhpcyBHUElPIGNvbnRy
b2xzIDMuM3Ygc3VwcGx5IHRvIHRoZSBlbmRwb2ludD8gSWYgc28sIGl0IHNob3VsZCBiZSBkZXNj
cmliZWQKYXMgYSBHUElPIGNvbnRyb2xsZWQgcmVndWxhdG9yOgoKCXZyZWdfcGNpZV8zdjM6IHJl
Z3VsYXRvci1wY2llLTN2MyB7CgkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwkJCgkJ
Li4uCgkJZ3BpbyA9IDwmdGM5NTYzIDIgR1BJT19BQ1RJVkVfSElHSD47CgkJLi4uCgl9OwoKQW5k
IHRoZW4geW91IHNob3VsZCBsZXQgdGhlIHB3cmN0cmwgZHJpdmVyIGNvbnRyb2wgdGhlIHVwc3Ry
ZWFtIHBvcnQuIFRoZSB1cHNpZGUKaGVyZSBpcyB0aGF0IHRoZSBwd3JjdHJsIGRyaXZlciBhbHJl
YWR5IGNvbnRyb2xzIGJvdGggMy4zdiBhbmQgcmVzZXQtZ3Bpb3MKKFBFUlNUIykuIFNvIHlvdSBk
byBub3QgbmVlZCB0byBoYXZlIGFueSBjaGFuZ2UgaW4gdGhlIFRDOTU2MyBkcml2ZXIuCgotIE1h
bmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u
4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
