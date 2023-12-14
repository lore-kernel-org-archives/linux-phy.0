Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37B52C4167D
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 10:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QyoLK9aLFWWLkm3JP7aI4MyXnSva/M/JdjLJy9VxRXw=; b=1nUqTlpfZO4712
	ilv+v+PevHwOqNUxdmnO01pwDUwPlw9MMwVpr8tMwOxpQZ0ZsqJBwo6ogV6dxKPcic74xGOsQrYBW
	wAbO20jdk/XRElPaJErLil9WyhQezY0emSX+gvvbCxFeOmLFq11HtdaCwbRJXKqVaSUUq10v0XVAJ
	BBUJAX+WPWG0kgp9EK6gAMnx8TZWrj8QWuAmYs5eecDfvk1XyrS7oOlv4Q21DwkvjW137RjcdTaLo
	wysP0B6mXueG+h76zVgWq0nIr126EUBaJz8h5GC0SPKTeWuHx1PieYg4C9UHdhvSWBEohCJYHKhzE
	X3NGb1rHbtaVsK/P9ufQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDj7o-00HVQk-35;
	Thu, 14 Dec 2023 10:39:28 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDj7l-00HVQ5-2t
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 10:39:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5C8AD6218E;
	Thu, 14 Dec 2023 10:39:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C20BDC433C7;
	Thu, 14 Dec 2023 10:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702550363;
	bh=yCEKQFaUrCZAt0Cggx/F1wMYgUKW9axB5dGFHkP8rxE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E5w1HLkELARynQCRfDz4e/qOmrfpq/znPX7uuY+43vvYzB0JhDPZMpD90pHmb5+TS
	 pNar2GRPHylpBIgI/yXLg6mSjR+fHWHM2uVwD2+F2k704AHEnw2/vMDfKjf8ELTWss
	 8eXju5pKQonG+EN/Yo1CpqF0H0SVscHiWzDnC0NVCY4kaNyXJ/g3//zAF0xokFehC0
	 fmBrk5E0ySQus/FAPaF6KjZxe/ESQiEWaN/g/KjbxZeOr7Z3+lqXZzEmX4ieiqil7I
	 KmdayZLawHOGmHZMUHl8LDeyVicfnTJfI0uFpU+0YfCp/GgPDK0ggj/UhIzGnQlF3T
	 xyyVq54yS3Wnw==
Date: Thu, 14 Dec 2023 16:09:07 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
	sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 00/16] Fix Qcom UFS PHY clocks
Message-ID: <20231214103907.GL2938@thinkpad>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
 <ZXrVxmxY6wZprbBa@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZXrVxmxY6wZprbBa@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_023926_001691_4656B101 
X-CRM114-Status: GOOD (  18.31  )
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

T24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgMTE6MTU6MzRBTSArMDEwMCwgSm9oYW4gSG92b2xkIHdy
b3RlOgo+IE9uIFRodSwgRGVjIDE0LCAyMDIzIGF0IDAyOjQwOjQ1UE0gKzA1MzAsIE1hbml2YW5u
YW4gU2FkaGFzaXZhbSB3cm90ZToKPiAKPiA+IFRoaXMgc2VyaWVzIGZpeGVzIHRoZSBjbG9ja3Mg
c3VwcGxpZWQgdG8gUU1QIFBIWSBJUHMgaW4gdGhlIFFjb20gU29Dcy4gQWxsCj4gPiBvZiB0aGUg
UWNvbSBTb0NzIGV4Y2VwdCBNU004OTk2IHJlcXVpcmUgMyBjbG9ja3MgZm9yIFFNUCBVRlM6Cj4g
PiAKPiA+ICogcmVmIC0gMTkuMk1IeiByZWZlcmVuY2UgY2xvY2sgZnJvbSBSUE0vUlBNaAo+ID4g
KiByZWZfYXV4IC0gQXV4aWxpYXJ5IHJlZmVyZW5jZSBjbG9jayBmcm9tIEdDQwo+ID4gKiBxcmVm
IC0gUVJFRiBjbG9jayBmcm9tIEdDQyBvciBUQ1NSIChUQ1NSIHNpbmNlIFNNODU1MCkKPiA+IAo+
ID4gTVNNODk5NiBvbmx5IHJlcXVpcmVzICdyZWYnIGFuZCAncXJlZicgY2xvY2tzLgo+ID4gCj4g
PiBIZW5jZSwgdGhpcyBzZXJpZXMgZml4ZXMgdGhlIGJpbmRpbmcsIERUIGFuZCBHQ0MgZHJpdmVy
IHRvIHJlZmxlY3QgdGhlCj4gPiBhY3R1YWwgY2xvY2sgdG9wb2xvZ3kuCj4gCj4gSXMgdGhpcyBi
YXNlZCBvbiBkb2N1bWVudGF0aW9uIGZvciBhbGwgdGhlIFNvQ3Mgb3Igb24gaW5mZXJlbmNlIGZy
b20gdGhlCj4gY3VycmVudCAodXBzdHJlYW0gYW5kIGRvd25zdHJlYW0pIGRldmljZXRyZWVzPwo+
IAoKSXQgaXMgYmFzZWQgb24gdGhlIGludGVybmFsIGRvY3VtZW50YXRpb24uIEV2ZW4gZG93bnN0
cmVhbSBkZXZpY2V0cmVlcyBhcmUKd3JvbmcuIEkgc2hvdWxkJ3ZlIG1lbnRpb25lZCBpdCBpbiB0
aGUgY292ZXIgbGV0dGVyLgoKPiBBcmUgeW91IHN1cmUgdGhhdCB5b3Ugc2hvdWxkIG5vdCBqdXN0
IGRlc2NyaWJlIHRoYXQgc29tZSBvZiB0aGVzZSBVRlMKPiByZWZlcmVuY2UgY2xvY2tzIGFyZSBz
b3VyY2VkIGZyb20gQ1hPIGluIHRoZSBjbG9jayBkcml2ZXIgaW5zdGVhZD8KPiAKCkkgZG9uJ3Qg
Z2V0IHlvdXIgY29tbWVudCBmdWxseS4gQ291bGQgeW91IHBsZWFzZSBlbGFib3JhdGU/Cgo+IFRh
a2UgYSBsb29rIGF0IGNvbW1pdHMKPiAKPiAJZjQ0NjAyMmI5MzJhICgiYXJtNjQ6IGR0czogcWNv
bTogc2M4MjgweHA6IGZpeCBVRlMgcmVmZXJlbmNlIGNsb2NrcyIpCj4gCWY2YWJjYzIxZDk0MyAo
ImNsazogcWNvbTogZ2NjLXNjODI4MHhwOiBhZGQgY3hvIGFzIHBhcmVudCBmb3IgdGhyZWUgdWZz
IHJlZiBjbGtzIikKPiAKCkJ0dywgdGhlc2UgY29tbWl0cyBhcmUgbm90IGFjY3VyYXRlLiBJbiBh
bGwgdGhlIFNvQ3MgYmVmb3JlIFNNODU1MCwgcmVmZXJlbmNlCmNsb2NrIGZvciB0aGUgVUZTIGRl
dmljZSBjb21lcyBmcm9tIHRoZSBVRlMgY29udHJvbGxlci4gVGhlcmUgaXMgYSBkZWRpY2F0ZWQK
cmVnaXN0ZXIgaW4gVUZTSEMgbWVtb3J5IG1hcCB0aGF0IGlzIGJlaW5nIHRvZ2dsZWQgYnkgdGhl
IGRyaXZlciB0bwplbmFibGUvZGlzYWJsZSByZWZlcmVuY2UgY2xvY2sgZm9yIHRoZSBVRlMgZGV2
aWNlLgoKU2luY2UgU004NTUwLCByZWZlcmVuY2UgY2xvY2sgaXMgZGlyZWN0bHkgc291cmNlZCBm
cm9tIFJQTWguIEknbSBwcmVwYXJpbmcgYQpzZXJpZXMgdG8gZml4IGl0LgoKVW5mb3J0dW5hdGVs
eSwgdGhpcyBpbmZvcm1hdGlvbiBpcyBub3QgZGVwaWN0ZWQgY29ycmVjdGx5IGluIHRoZSBkb3du
c3RyZWFtCmRldmljZXRyZWVzLgoKLSBNYW5pCgo+IEpvaGFuCj4gCgotLSAK4K6u4K6j4K6/4K61
4K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
