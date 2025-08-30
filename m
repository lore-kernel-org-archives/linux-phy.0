Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE949CA0FF9
	for <linux-phy@archiver.kernel.org>; Sat, 30 Aug 2025 03:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=moNc4aT+PMwvJMm+GSo0KjEsFTD7JhlzUNrUsDUUBx4=; b=g2GJ71dkJbH5UE
	0PoTBQPsHMyeYzfImMCe5WHZALp/zEjcztjmayjoNBtymYWIEuB3JZZq0/xX0lPgrVHYTf6qet0BG
	rk7LHhnj0dzpw4j8GDxtvZIPm7vjZCM0OucCNYDV94qsW+6aDoaUyHnDt9uVUDQBlwzx7fdierlTC
	9pLOWdK8KX/PGGP7QahjlhSC+w33T+UpbQcWe0jkk8X4uDe0rItK4EPYRfMZ8Pz+27na65ITK1bfA
	CV6BnS0l2qilBm2LgNG9D16u3svaBI88Ud9hKoAriBeKAS5CfcP+3cc7RumhBAjxinXiWLD2rQeuy
	Uj/FaXsEYbVnWJJnsw5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usCIF-00000007NeP-29Ap;
	Sat, 30 Aug 2025 03:30:19 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usCFR-00000007NV6-1Slg;
	Sat, 30 Aug 2025 03:27:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 91C3541A13;
	Sat, 30 Aug 2025 03:27:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8987C4CEF0;
	Sat, 30 Aug 2025 03:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756524444;
	bh=EeM6wlnVh/LaVPIABlVqVwrJnTHj5btsYvFNRr+o3EA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dTAFArBON0yO4GRK52P9RF2QBrxzNfdltDdA5zELoqtsVCQ8qiSO6pDUlks2ZZjEK
	 rzQyh3bjLI19GhDcj3+QqfT6AVed7T5PK/gdu9mq/PfFiUWq3Ji4tclqO5MdcUQqmE
	 ySIMTi1OyZVye6vts5e9F+Izv2qdvGyLjeAQKECltzDmsMd536rlLLAE2mxnj8I1aN
	 rYFzo6s9pJJHFJ8LQRCPsXESIvKeyFlVh0jgSu1MIsRS1vGNrMJpGP9sVTIxOTxVRl
	 B1Au4a4tvUyAIb3QmIDTbmabxrDQvssLhfIsQWbIKIAEJFTyx/LX7Cxc+s6M8LpvM+
	 O80tey/sz1fZQ==
Date: Sat, 30 Aug 2025 08:57:14 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shradha Todi <shradha.t@samsung.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org, 
	bhelgaas@google.com, jingoohan1@gmail.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, vkoul@kernel.org, kishon@kernel.org, arnd@arndb.de, 
	m.szyprowski@samsung.com, jh80.chung@samsung.com, pankaj.dubey@samsung.com
Subject: Re: [PATCH v3 07/12] dt-bindings: PCI: Add support for Tesla FSD SoC
Message-ID: <frnwfzh7j6x27evk6oo64cevpreq5s4tugewebcpropzmxpilf@trv2toljqptl>
References: <20250811154638.95732-1-shradha.t@samsung.com>
 <CGME20250811154725epcas5p428fa3370a32bc2b664a4fd8260078097@epcas5p4.samsung.com>
 <20250811154638.95732-8-shradha.t@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250811154638.95732-8-shradha.t@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_202725_411705_7F43D1F1 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
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

T24gTW9uLCBBdWcgMTEsIDIwMjUgYXQgMDk6MTY6MzNQTSBHTVQsIFNocmFkaGEgVG9kaSB3cm90
ZToKPiBBZGQgVGVzbGEgRlNEIFNvQyBzdXBwb3J0IGZvciBib3RoIFJDIGFuZCBFUC4KCkFkZCBz
b21lIGluZm8gYWJvdXQgdGhlIFBDSWUgY29udHJvbGxlciBoZXJlLiBMaWtlIHRoZSBkYXRhIHJh
dGUgc3VwcG9ydGVkLApsYW5lcywgaW50ZXJydXB0cywgYW55IHF1aXJrcyBldGMuLi4KCj4gCj4g
U2lnbmVkLW9mZi1ieTogU2hyYWRoYSBUb2RpIDxzaHJhZGhhLnRAc2Ftc3VuZy5jb20+Cj4gLS0t
Cj4gIC4uLi9iaW5kaW5ncy9wY2kvdGVzbGEsZnNkLXBjaWUtZXAueWFtbCAgICAgICB8IDkxICsr
KysrKysrKysrKysrKysrKysKPiAgLi4uL2JpbmRpbmdzL3BjaS90ZXNsYSxmc2QtcGNpZS55YW1s
ICAgICAgICAgIHwgNzcgKysrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDE2OCBp
bnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGNpL3Rlc2xhLGZzZC1wY2llLWVwLnlhbWwKPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvdGVzbGEsZnNkLXBjaWUu
eWFtbAo+IAoKWy4uLl0KCj4gKwo+ICtleGFtcGxlczoKPiArICAtIHwKPiArICAgICNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9jbG9jay9mc2QtY2xrLmg+Cj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGlu
Z3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgo+ICsKPiArICAgIHNvYyB7Cj4gKyAg
ICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8Mj47Cj4gKyAgICAgICAgI3NpemUtY2VsbHMgPSA8Mj47
Cj4gKwo+ICsgICAgICAgIHBjaWVyYzE6IHBjaWVAMTZiMDAwMDAgewo+ICsgICAgICAgICAgICBj
b21wYXRpYmxlID0gInRlc2xhLGZzZC1wY2llIjsKPiArICAgICAgICAgICAgcmVnID0gPDB4MCAw
eDE2YjAwMDAwIDB4MCAweDIwMDA+LAo+ICsgICAgICAgICAgICAgICAgICA8MHgwIDB4MTY4YzAw
MDAgMHgwIDB4MTAwMD4sCj4gKyAgICAgICAgICAgICAgICAgIDwweDAgMHgxODAwMDAwMCAweDAg
MHgxMDAwPjsKPiArICAgICAgICAgICAgcmVnLW5hbWVzID0gImRiaSIsICJlbGJpIiwgImNvbmZp
ZyI7Cj4gKyAgICAgICAgICAgIHJhbmdlcyA9ICA8MHg4MjAwMDAwMCAweDAgMHgxODAwMTAwMCAw
eDAgMHgxODAwMTAwMCAweDAgMHhmZmVmZmY+Owo+ICsgICAgICAgICAgICBjbG9ja3MgPSA8JmNs
b2NrX2ZzeXMxIFBDSUVfTElOSzFfSVBDTEtQT1JUX0FVWF9BQ0xLPiwKPiArICAgICAgICAgICAg
ICAgICAgICAgPCZjbG9ja19mc3lzMSBQQ0lFX0xJTksxX0lQQ0xLUE9SVF9EQklfQUNMSz4sCj4g
KyAgICAgICAgICAgICAgICAgICAgIDwmY2xvY2tfZnN5czEgUENJRV9MSU5LMV9JUENMS1BPUlRf
TVNUUl9BQ0xLPiwKPiArICAgICAgICAgICAgICAgICAgICAgPCZjbG9ja19mc3lzMSBQQ0lFX0xJ
TksxX0lQQ0xLUE9SVF9TTFZfQUNMSz47Cj4gKyAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImF1
eCIsICJkYmkiLCAibXN0ciIsICJzbHYiOwo+ICsgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9
IDwzPjsKPiArICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4gKyAgICAgICAgICAgIGRt
YS1jb2hlcmVudDsKPiArICAgICAgICAgICAgZGV2aWNlX3R5cGUgPSAicGNpIjsKPiArICAgICAg
ICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDExNyBJUlFfVFlQRV9FREdFX1JJU0lORz47CgpP
bmx5IG9uZSBTUEkgaW50ZXJydXB0PyBXaGF0IGFib3V0IElOVHg/IERvbid0IHlvdSBoYXZlIGFu
eSBleHRlcm5hbC9pbnRlcm5hbApNU0kgY29udHJvbGxlcj8KCi0gTWFuaQoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
