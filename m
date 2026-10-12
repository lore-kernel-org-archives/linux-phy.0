Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BA5ACA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 12:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7tFgqyvCDgtVMcBPT/WjLnEfX8r7g7ppnuPdyBJ+1A=; b=KtekNx+l6Y7CnY
	7FodeZNH0Ge4K5GNkSML8eTMrA/r5ZdeJ+B2Gc07HURin1La4OrfihELefzQbxY5KygWG7hlP9/Rx
	uMhV1xUJirveW2rzlkYZS0L6MFVzdTwrsa/eeWZCS/ENelNCMTFkekwtPMLb6DinByNbao6A8Yh5s
	nRoaJ5l+mvmNI3hSOjeQc/i7xC+4KaKDQOegDlwcfTBm3ggwm6EfVFj0D0Mj6MC4rCx1bg/ZjArx1
	OA7Kgz6PchqTq2qcjxC6ed59F2HzLADYbu2eeYrfuimO+wKRHQrzVphU+WaKWcnYql1MJHRHaCeDN
	v2AXLdcXwfDguJweWTbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFRz-0000000AUqs-3GoF;
	Mon, 12 Oct 2026 12:48:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFRu-0000000AUqX-2Tkl
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 12:48:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ACC1060229;
	Mon, 12 Oct 2026 12:48:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CF8E1F0089B;
	Mon, 12 Oct 2026 12:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791809293;
	bh=vTV/O8cQCIdqTWk1rejODfRz9VObDHG+pxwgvTRExLM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IhtpWfCaNrwNreL5w8MpcWCPQgGQmZVP2UGp3dAalVRV7iQfLqI2vsMjlxu0LRiyT
	 M7WWZTh/5cpmUnIJhnH6Ztx8xsdHys7Y7InwmAErIkdNuuT4ePBqReBY8bMgu9k1LM
	 BUJ6aR8CgvHbHOpV4wGso08iNvx/JLUoqkpWEiBoTKqx6VlYcW5+0FISd1zArRYp6q
	 nf52Lvgj8Xxsc43nL7Pt2CmOTL59i0CIj6MLA1jrn/v1UDaE3HT4la7pG+vhv65+Wq
	 hLkrLVOUuSftrtju38PX2+CMQ+/rLHrdnm7N90vUPJbCMgyx2PmPW47qqawMVKvRf+
	 9B0v70z6DjWWQ==
Date: Mon, 12 Oct 2026 18:18:01 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: george.moussalem@outlook.com
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
	Nitheesh Sekar <quic_nsekar@quicinc.com>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Varadarajan Narayanan <quic_varada@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	Stanislaw Pal <kuncy7@gmail.com>
Subject: Re: [PATCH v4 08/13] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp: Add
 support for USB3 PHY on IPQ5018
Message-ID: <aszVkqtadyCIjU_7@debian>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
 <20260908-ipq5018-usb3-v4-8-b789702f0695@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260908-ipq5018-usb3-v4-8-b789702f0695@outlook.com>
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

T24gVHVlLCBTZXAgMDgsIDIwMjYgYXQgMDE6NDE6MDFQTSArMDQwMCwgR2VvcmdlIE1vdXNzYWxl
bSB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gRnJvbTogR2VvcmdlIE1vdXNzYWxlbSA8Z2VvcmdlLm1v
dXNzYWxlbUBvdXRsb29rLmNvbT4KPiAKPiBBZGQgc3VwcG9ydCBmb3IgdGhlIFVTQjMgUEhZIG9u
IElQUTUwMTggY2hpcHNldHMuCj4gCj4gVGhlIFBIWSBvdXRwdXRzIGEgMjUwTUh6IFBJUEUgY2xv
Y2sgcm91dGVkIHRvIGFuZCBnYXRlZCBieSB0aGUgR0NDLCBzbwo+IHJlZ2lzdGVyIGEgZml4ZWQg
cmF0ZSBjbG9jay4gSW4gYWRkaXRpb24sIGFkZCB0aGUgcmVnaXN0ZXIvdmFsdWUgcGFpcnMKPiBm
b3IgdGhlIFBIWSBpbml0aWFsaXphdGlvbiBzZXF1ZW5jZS4KPiAKPiBUaGUgY29kZSB0byBhY3F1
aXJlIGNsb2NrcyBhbmQgcmVzZXRzIGlzIHRoZSBzYW1lIGFzIGZvciBQQ0llIHNvIG5vCj4gY2hh
bmdlcyBhcmUgbmVlZGVkLiBBZGQgYSBVU0IzLXNwZWNpZmljIGhlbHBlciBmdW5jdGlvbiB0byBh
Y3F1aXJlIHRoZQo+IHJlcXVpcmVkIHJlZ3VsYXRvciBhbmQgVENTUiBzeXNjb24gZm9yIFVTQiBt
dXggc2VsZWN0aW9uLiBUaGUgUENJZSBhbmQKPiBVU0IzIHBhZHMgYXJlIG11eGVkIHNvIHNlbGVj
dCBVU0IzIG1vZGUgaW4gVENTUiB3aGljaCBuZWVkcyB0byBvY2N1cgo+IGJlZm9yZSB0aGUgRFdD
MyBVU0IzIGNvbnRyb2xsZXIgcmVzZXRzLiBPdGhlcndpc2UsIHRoZSBTUyBsaW5rIGRvZXNuJ3QK
PiB0cmFpbiBhbmQgcmVtYWlucyBzdHVjayBpbiBSWC5EZXRlY3QuCj4gCj4gQWRkIFBIWSBvcHMg
Zm9yIFVTQjMgcG93ZXIgb24vb2ZmIHNlcXVlbmNlcyB0byBhY2NvdW50IGZvciBVU0IzLXNwZWNp
ZmljCj4gZGVsYXkgdGltaW5ncyBhbmQgZW5hYmxpbmcvZGlzYWJsaW5nIHRoZSBQSFkgc3VwcGx5
Lgo+IAo+IFJlbmFtZSB0aGUgZXhpc3RpbmcgcmVzZXQgZGVsYXkgdGltaW5ncyB0byBkZXNjcmli
ZSB0aGV5IGFyZSBmb3IgUENJZS4KPiBMYXN0bHksIGFkZCB0aGUgVVNCMyBQSFkgdHlwZSB0byB0
aGUgVU5JUEhZIFBIWSB0eXBlIGVudW0gYW5kIHJlbW92ZSB0aGUKPiBHRU4yIGFuZCBHRU4zIFBD
SWUgdHlwZXMgYXMgdGhlIGRyaXZlciBtYWtlcyBubyBkaXN0aW5jdGlvbiBiZXR3ZWVuIHRoZQo+
IHR3byB3aGljaCBhbHNvIG1ha2VzIGl0IGVhc2llciB0byBkaXN0aW5ndWlzaCBiZXR3ZWVuIHRo
ZSBQQ0llIGFuZCBVU0IzCj4gUEhZcy4KPiAKPiBUZXN0ZWQtYnk6IFN0YW5pc2xhdyBQYWwgPGt1
bmN5N0BnbWFpbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogR2VvcmdlIE1vdXNzYWxlbSA8Z2Vvcmdl
Lm1vdXNzYWxlbUBvdXRsb29rLmNvbT4KCkxHVE0hIEp1c3Qgb25lIG1pbm9yIG5pdCBiZWxvdy4g
V2l0aCB0aGF0IGZpeGVkLAoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFu
aXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+Cgo+IC0tLQo+ICAuLi4vcGh5L3F1
YWxjb21tL3BoeS1xY29tLXVuaXBoeS1wY2llLXVzYjMtMjhscC5jICB8IDE3OCArKysrKysrKysr
KysrKysrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE1OSBpbnNlcnRpb25zKCspLCAxOSBkZWxl
dGlvbnMoLSkKPiAKClsuLi5dCgo+ICtzdGF0aWMgaW5saW5lIGludCBxY29tX3VuaXBoeV91c2Iz
X2dldF9yZXNvdXJjZXMoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiArCQkJCQkJIHN0
cnVjdCBxY29tX3VuaXBoeSAqcGh5KQoKRHJvcCB0aGUgJ2lubGluZScga2V5d29yZCBwbGVhc2Uu
IE1vZGVybiBjb21waWxlcnMgd2lsbCBpbmxpbmUgZnVuY3Rpb25zIG9uCnRoZWlyIG93biBpcnJl
c3BlY3RpdmUgb2YgdGhpcyBrZXl3b3JkLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N
4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
