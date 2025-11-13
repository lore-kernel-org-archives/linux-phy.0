Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 280E2CD4F43
	for <linux-phy@archiver.kernel.org>; Thu, 13 Nov 2025 04:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSLgOgyseKAhtQ94q5fSzc1h4EK0akQj9zJ/1kTEAd4=; b=DHfbvLS7JzY004
	6H9r0OaPl72bOALCy9G0sgPYbfkHFfMa/BXuN4IWbgaL8H8pc/Z55ISaxfRkXy9O7/y+h+0RReqR3
	dNJk1tq5S22txMiKWsZIMZIahSo0SDNwijNBdp3uLdzpkAr4KPQwd+Ay0TSv7UKQhVIf1ez+OYTh3
	u5MJHet5JMDWtVyrg67Djb3l/bLuOMJJlbvRaN8F+V0QREM8mHwgit+rXo4A0Z1Y4sxqB4cCtWNYs
	KZpKPZdWv5BQPXhnC9PjltddY4DgW+pF++2vuGeBYU9bEx0CJrp6HY5AlZB62sxbKU+G24fUtn6q4
	UeK4wACovFwNDc18u3hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJPIv-00000009tZu-2gk0;
	Thu, 13 Nov 2025 04:51:29 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJPIs-00000009tZS-40Tf
	for linux-phy@lists.infradead.org;
	Thu, 13 Nov 2025 04:51:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4C8F941741;
	Thu, 13 Nov 2025 04:51:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE866C4CEF5;
	Thu, 13 Nov 2025 04:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763009486;
	bh=u1EUAM6v70Id6ffUyitEzHKUzjJqyDleo4+wyX4xB1k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=glxU1WrfDP8k7P6d3p7QCqNLd/d0t4Ua5Ee2ES1XSQCxN18wR1pQ9PmT6R34ZsMIw
	 98yDh/372bYdTHroq4t9dCea9YG1KlGigje2VMM79I5aPcbW87MGqfy2zdB5EuVoNC
	 Y5NbC56Z1LU/eJzkxVYbsr2HRFDUMxcSCBK1xP5OYd0Z+JVPoIBHVOpv8COG/H/5GX
	 yVVm6/g2ol54DCjzv/CvJz07pBN/iE4jwdOef808YZUHqn2vmW3M3/gjka3QWCM29G
	 7mRdDZjQGYH/cpoRKXYI91HFubJxa7/JJf5pQnEUOw/iw2iaVTifsX2swIWmJGOQ24
	 fgRgHp7z08NZQ==
Date: Thu, 13 Nov 2025 10:21:06 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: Add PCIe3 and PCIe5 support for
 HAMOA-IOT-SOM platform
Message-ID: <nkcxf3gnpvjilvw36f65e3olynta2jebki2rkc4tmka7poux6j@g6xksv3aobpp>
References: <20251112090316.936187-1-ziyue.zhang@oss.qualcomm.com>
 <20251112090316.936187-2-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251112090316.936187-2-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_205127_058751_6827AB2F 
X-CRM114-Status: GOOD (  14.63  )
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

T24gV2VkLCBOb3YgMTIsIDIwMjUgYXQgMDU6MDM6MTVQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gSEFNT0EgSW9UIFNPTSByZXF1aXJlcyBQQ0llMyBhbmQgUENJZTUgY29ubmVjdGl2aXR5
IGZvciBTQVRBIGNvbnRyb2xsZXIKPiBhbmQgU0RYNjUuCj4gQWRkIHRoZSByZXF1aXJlZCBzaWRl
YmFuZCBzaWduYWxzIChQRVJTVCMsIFdBS0UjLCBDTEtSRVEjKSwgcGluY3RybCBzdGF0ZXMKPiBh
bmQgcG93ZXIgc3VwcGx5IHByb3BlcnRpZXMgaW4gdGhlIGRldmljZSB0cmVlLCB3aGljaCBQQ0ll
MyBhbmQgUENJZTUKPiByZXF1aXJlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFppeXVlIFpoYW5nIDx6
aXl1ZS56aGFuZ0Bvc3MucXVhbGNvbW0uY29tPgo+IFJldmlld2VkLWJ5OiBLcmlzaG5hIENoYWl0
YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21tLmNvbT4KPiAtLS0KPiAg
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL2hhbW9hLWlvdC1zb20uZHRzaSB8IDc5ICsrKysrKysr
KysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNzkgaW5zZXJ0aW9ucygrKQo+IAo+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaGFtb2EtaW90LXNvbS5kdHNpIGIv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL2hhbW9hLWlvdC1zb20uZHRzaQo+IGluZGV4IDRkZTdj
MGFiYjI1YS4uYWJiOGVhMzIzZDc4IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS9oYW1vYS1pb3Qtc29tLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
aGFtb2EtaW90LXNvbS5kdHNpCj4gQEAgLTM5MCw2ICszOTAsMjIgQEAgJmdwdV96YXBfc2hhZGVy
IHsKPiAgCWZpcm13YXJlLW5hbWUgPSAicWNvbS94MWU4MDEwMC9nZW43MDUwMF96YXAubWJuIjsK
PiAgfTsKPiAgCj4gKyZwY2llMyB7Cj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsJ
cGluY3RybC0wID0gPCZwY2llM19kZWZhdWx0PjsKPiArCXBlcnN0LWdwaW9zID0gPCZ0bG1tIDE0
MyBHUElPX0FDVElWRV9MT1c+Owo+ICsJd2FrZS1ncGlvcyA9IDwmdGxtbSAxNDUgR1BJT19BQ1RJ
VkVfTE9XPjsKCkNhbiB5b3UgbW92ZSB0aGVzZSBHUElPcyBhbmQgUEhZIChpbiBTb0MgZHRzaSkg
cHJvcGVydGllcyB0byBSb290IFBvcnQgbm9kZT8KClNwZWNpZnlpbmcgUm9vdCBQb3J0IHByb3Bl
cnRpZXMgaW4gY29udHJvbGxlciBub2RlIGlzIGRlcHJlY2F0ZWQuCgotIE1hbmkKCj4gKwo+ICsJ
c3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJnBjaWUzX3BoeSB7Cj4gKwl2ZGRhLXBoeS1z
dXBwbHkgPSA8JnZyZWdfbDNjXzBwOD47Cj4gKwl2ZGRhLXBsbC1zdXBwbHkgPSA8JnZyZWdfbDNl
XzFwMj47Cj4gKwo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiAgJnBjaWU0IHsKPiAg
CXBlcnN0LWdwaW9zID0gPCZ0bG1tIDE0NiBHUElPX0FDVElWRV9MT1c+Owo+ICAJd2FrZS1ncGlv
cyA9IDwmdGxtbSAxNDggR1BJT19BQ1RJVkVfTE9XPjsKPiBAQCAtNDA3LDYgKzQyMywyMyBAQCAm
cGNpZTRfcGh5IHsKPiAgCXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiAgCj4gKyZwY2llNSB7Cj4g
KwlwZXJzdC1ncGlvcyA9IDwmdGxtbSAxNDkgR1BJT19BQ1RJVkVfTE9XPjsKPiArCXdha2UtZ3Bp
b3MgPSA8JnRsbW0gMTUxIEdQSU9fQUNUSVZFX0xPVz47Cj4gKwo+ICsJcGluY3RybC0wID0gPCZw
Y2llNV9kZWZhdWx0PjsKPiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwo+ICsJc3Rh
dHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJnBjaWU1X3BoeSB7Cj4gKwl2ZGRhLXBoeS1zdXBw
bHkgPSA8JnZyZWdfbDNpXzBwOD47Cj4gKwl2ZGRhLXBsbC1zdXBwbHkgPSA8JnZyZWdfbDNlXzFw
Mj47Cj4gKwo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiAgJnBjaWU2YSB7Cj4gIAlw
ZXJzdC1ncGlvcyA9IDwmdGxtbSAxNTIgR1BJT19BQ1RJVkVfTE9XPjsKPiAgCXdha2UtZ3Bpb3Mg
PSA8JnRsbW0gMTU0IEdQSU9fQUNUSVZFX0xPVz47Cj4gQEAgLTQ1NCw2ICs0ODcsMjkgQEAgJnRs
bW0gewo+ICAJZ3Bpby1yZXNlcnZlZC1yYW5nZXMgPSA8MzQgMj4sIC8qIFRQTSBMUCAmIElOVCAq
Lwo+ICAJCQkgICAgICAgPDQ0IDQ+OyAvKiBTUEkgKFRQTSkgKi8KPiAgCj4gKwlwY2llM19kZWZh
dWx0OiBwY2llMy1kZWZhdWx0LXN0YXRlIHsKPiArCQljbGtyZXEtbi1waW5zIHsKPiArCQkJcGlu
cyA9ICJncGlvMTQ0IjsKPiArCQkJZnVuY3Rpb24gPSAicGNpZTNfY2xrIjsKPiArCQkJZHJpdmUt
c3RyZW5ndGggPSA8Mj47Cj4gKwkJCWJpYXMtcHVsbC11cDsKPiArCQl9Owo+ICsKPiArCQlwZXJz
dC1uLXBpbnMgewo+ICsJCQlwaW5zID0gImdwaW8xNDMiOwo+ICsJCQlmdW5jdGlvbiA9ICJncGlv
IjsKPiArCQkJZHJpdmUtc3RyZW5ndGggPSA8Mj47Cj4gKwkJCWJpYXMtZGlzYWJsZTsKPiArCQl9
Owo+ICsKPiArCQl3YWtlLW4tcGlucyB7Cj4gKwkJCXBpbnMgPSAiZ3BpbzE0NSI7Cj4gKwkJCWZ1
bmN0aW9uID0gImdwaW8iOwo+ICsJCQlkcml2ZS1zdHJlbmd0aCA9IDwyPjsKPiArCQkJYmlhcy1w
dWxsLXVwOwo+ICsJCX07Cj4gKwl9Owo+ICsKPiAgCXBjaWU0X2RlZmF1bHQ6IHBjaWU0LWRlZmF1
bHQtc3RhdGUgewo+ICAJCWNsa3JlcS1uLXBpbnMgewo+ICAJCQlwaW5zID0gImdwaW8xNDciOwo+
IEBAIC00NzcsNiArNTMzLDI5IEBAIHdha2Utbi1waW5zIHsKPiAgCQl9Owo+ICAJfTsKPiAgCj4g
KwlwY2llNV9kZWZhdWx0OiBwY2llNS1kZWZhdWx0LXN0YXRlIHsKPiArCQljbGtyZXEtbi1waW5z
IHsKPiArCQkJcGlucyA9ICJncGlvMTUwIjsKPiArCQkJZnVuY3Rpb24gPSAicGNpZTVfY2xrIjsK
PiArCQkJZHJpdmUtc3RyZW5ndGggPSA8Mj47Cj4gKwkJCWJpYXMtcHVsbC11cDsKPiArCQl9Owo+
ICsKPiArCQlwZXJzdC1uLXBpbnMgewo+ICsJCQlwaW5zID0gImdwaW8xNDkiOwo+ICsJCQlmdW5j
dGlvbiA9ICJncGlvIjsKPiArCQkJZHJpdmUtc3RyZW5ndGggPSA8Mj47Cj4gKwkJCWJpYXMtZGlz
YWJsZTsKPiArCQl9Owo+ICsKPiArCQl3YWtlLW4tcGlucyB7Cj4gKwkJCXBpbnMgPSAiZ3BpbzE1
MSI7Cj4gKwkJCWZ1bmN0aW9uID0gImdwaW8iOwo+ICsJCQlkcml2ZS1zdHJlbmd0aCA9IDwyPjsK
PiArCQkJYmlhcy1wdWxsLXVwOwo+ICsJCX07Cj4gKwl9Owo+ICsKPiAgCXBjaWU2YV9kZWZhdWx0
OiBwY2llNmEtZGVmYXVsdC1zdGF0ZSB7Cj4gIAkJY2xrcmVxLW4tcGlucyB7Cj4gIAkJCXBpbnMg
PSAiZ3BpbzE1MyI7Cj4gLS0gCj4gMi4zNC4xCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j
4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
