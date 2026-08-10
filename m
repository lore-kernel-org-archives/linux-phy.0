Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27135C5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7uIUzQDAvmZ4TD2Ov8jKaukJL5Q8NsioPUeamTCG6u0=; b=mvCcT1/WV/XYkK
	yUfoO9mGVqbwT8uk+wVL1JzS/LcdL2u5NBZ6CX5UMVDDsXWQZJ2DRNzbRRaZUnQo5623UB3q5kDWz
	dml9b4s+PWJ9zULeBnrHxUKsa8YjYdCq73Hp0bB6K5N/g/5G9eGtfmO8Yh9i7ZyjDCLRm+ie++SgE
	7s5KCf6hYptGukdzvaOxJEJc40OBLV8gRWIr74hBLujQyyA4WTYoTE93OBzoW+ezkk6Nhcfsd3W3p
	glfZ5MsZQbi81avZ6OYr7b5F5wu9xIeOb1k0p22qQqhWDAqCUiynLylTsTWsG/51NqVWbCSaBJzUh
	Rr7vhfDrQW+k+WvKADGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOMS-0000000Be9s-3YJ7;
	Mon, 10 Aug 2026 11:40:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOMQ-0000000Be9Z-1rIv
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:40:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 36E04414B3;
	Mon, 10 Aug 2026 11:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DA131F000E9;
	Mon, 10 Aug 2026 11:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786362006;
	bh=yWCtd6KZTOCiMRDJqDYqwaxkxcrA6w1WKuZjnsnwL5o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MDve/JcXYxu3FSqX6m5tr1XSzSck5nHU8k8mT3ZY2kfmuobnFXucByv9QHOnHjYrj
	 o2tuCD26N0Z03/mlSALJUNwfXJp8NYVoFNzrLX4H37vKyAQGSAaIlTnV83eo4UB033
	 mn/+ZJsD/5WpPrVG5//qZdCe7MJU9octSWNbAhEhWPxobnbmlxQTK8CrSpitQf0hr2
	 0fkX4xWJO5jHkSgmUtWePILv5Ax+tmceWFe1PslkZUs8ubfGia7vJ9Cm3fPzpmXcJ7
	 SiFMuBkfAkrZbi0FJ6PqZa76aAIoeXJuUfjgaDOiMUgja7VxGUj7JUve/DjGJVK6MK
	 E4BE03lfiSDrg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 4/4] arm64: dts: qcom: sa8775p: Add qref and refgen
 supply for PCIe PHYs
To: "Ziyue Zhang" <ziyue.zhang@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260810112735.1326807-5-ziyue.zhang@oss.qualcomm.com>
References: <20260810112735.1326807-1-ziyue.zhang@oss.qualcomm.com>
 <20260810112735.1326807-5-ziyue.zhang@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 11:40:04 +0000
Message-Id: <20260810114005.9DA131F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gUmVkdW5kYW50IGRlZmlu
aXRpb24gb2YgYHZkZGEtcmVmZ2VuLXN1cHBseWAgaW4gdGhlIGxlYWYgYm9hcmQgZmlsZXMgYHFj
czkxMDAtcmlkZS5kdHNgIGFuZCBgcWNzOTEwMC1yaWRlLXIzLmR0c2AuCi0tCgotLS0gUGF0Y2gg
WzRdOiBbUEFUQ0ggdjEgNC80XSBhcm02NDogZHRzOiBxY29tOiBzYTg3NzVwOiBBZGQgcXJlZiBh
bmQgcmVmZ2VuIHN1cHBseSBmb3IgUENJZSBQSFlzIC0tLQpjb21taXQgOTVlNDVmNjNhYjEyMTYz
MzM3NzBmNTFiZGUwZjBiZTk4MWNhMzZmOQpBdXRob3I6IFppeXVlIFpoYW5nIDx6aXl1ZS56aGFu
Z0Bvc3MucXVhbGNvbW0uY29tPgoKYXJtNjQ6IGR0czogcWNvbTogc2E4Nzc1cDogQWRkIHFyZWYg
YW5kIHJlZmdlbiBzdXBwbHkgZm9yIFBDSWUgUEhZcwoKVGhlIFFNUCBQQ0llIFBIWXMgb24gU0E4
Nzc1cCByZXF1aXJlIGRlZGljYXRlZCBxcmVmIGFuZCByZWZnZW4gdm9sdGFnZQpzdXBwbGllcyBm
b3Igc3RhYmxlIG9wZXJhdGlvbi4gVGhpcyBjb21taXQgYWRkcyB2ZGRhLXFyZWYtc3VwcGx5IGFu
ZAp2ZGRhLXJlZmdlbi1zdXBwbHkgaW4gdGhlIGJvYXJkIGZpbGVzIHRvIHByZXZlbnQgb2NjYXNp
b25hbCBzeXN0ZW0gY3Jhc2hlcy4KClsgLi4uIF0KCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcWNvbS9sZW1hbnMtcmlkZS1jb21tb24uZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9sZW1hbnMtcmlkZS1jb21tb24uZHRzaQo+IGluZGV4IDQwZjg4NDk4OTk5YmQuLjhk
YzRhNWY0NjFlOWUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2xlbWFu
cy1yaWRlLWNvbW1vbi5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2xlbWFu
cy1yaWRlLWNvbW1vbi5kdHNpCj4gQEAgLTk4Myw2ICs5ODMsOCBAQCAmcGNpZTEgewo+ICAmcGNp
ZTBfcGh5IHsKPiAgCXZkZGEtcGh5LXN1cHBseSA9IDwmdnJlZ19sNWE+Owo+ICAJdmRkYS1wbGwt
c3VwcGx5ID0gPCZ2cmVnX2wxYz47Cj4gKwl2ZGRhLXFyZWYtc3VwcGx5ID0gPCZ2cmVnX2w0YT47
Cj4gKwl2ZGRhLXJlZmdlbi1zdXBwbHkgPSA8JnZyZWdfbDdhPjsKPiAgCj4gIAlzdGF0dXMgPSAi
b2theSI7Cj4gIH07Cj4gQEAgLTk5MCw2ICs5OTIsOCBAQCAmcGNpZTBfcGh5IHsKPiAgJnBjaWUx
X3BoeSB7Cj4gIAl2ZGRhLXBoeS1zdXBwbHkgPSA8JnZyZWdfbDVhPjsKPiAgCXZkZGEtcGxsLXN1
cHBseSA9IDwmdnJlZ19sMWM+Owo+ICsJdmRkYS1xcmVmLXN1cHBseSA9IDwmdnJlZ19sNGE+Owo+
ICsJdmRkYS1yZWZnZW4tc3VwcGx5ID0gPCZ2cmVnX2w3YT47Cj4gIAo+ICAJc3RhdHVzID0gIm9r
YXkiOwo+ICB9Owo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzOTEw
MC1yaWRlLXIzLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M5MTAwLXJpZGUtcjMu
ZHRzCj4gaW5kZXggN2ZjMmRlMGQzZDVlMi4uMWI2YTRmOWNiOGY3ZSAxMDA2NDQKPiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzOTEwMC1yaWRlLXIzLmR0cwo+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M5MTAwLXJpZGUtcjMuZHRzCj4gQEAgLTE0LDMgKzE0LDEx
IEBAIC8gewo+ICAJbW9kZWwgPSAiUXVhbGNvbW0gVGVjaG5vbG9naWVzLCBJbmMuIExlbWFucyBS
aWRlIFJldjMiOwo+ICAJY29tcGF0aWJsZSA9ICJxY29tLHFjczkxMDAtcmlkZS1yMyIsICJxY29t
LHFjczkxMDAiLCAicWNvbSxzYTg3NzVwIjsKPiAgfTsKPiArCj4gKyZwY2llMF9waHkgewo+ICsJ
dmRkYS1yZWZnZW4tc3VwcGx5ID0gPCZ2cmVnX2w3YT47Cj4gK307Cj4gKwo+ICsmcGNpZTFfcGh5
IHsKPiArCXZkZGEtcmVmZ2VuLXN1cHBseSA9IDwmdnJlZ19sN2E+Owo+ICt9OwoKW1NldmVyaXR5
OiBMb3ddClRoaXMgaXNuJ3QgYSBidWcsIGJ1dCBhcmUgdGhlc2UgdmRkYS1yZWZnZW4tc3VwcGx5
IGFzc2lnbm1lbnRzIG5lY2Vzc2FyeSBpbgp0aGUgbGVhZiBib2FyZCBmaWxlcz8KClNpbmNlIGxl
bWFucy1yaWRlLWNvbW1vbi5kdHNpIGFscmVhZHkgYWRkcyB0aGVzZSBleGFjdCBzYW1lIHZyZWdf
bDdhCmFzc2lnbm1lbnRzIGZvciBib3RoIHBjaWUwX3BoeSBhbmQgcGNpZTFfcGh5LCByZWRlZmlu
aW5nIHRoZW0gaW4KcWNzOTEwMC1yaWRlLXIzLmR0cyBzZWVtcyByZWR1bmRhbnQuCgo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzOTEwMC1yaWRlLmR0cyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M5MTAwLXJpZGUuZHRzCj4gaW5kZXggYjBjNWZkZGU1NmFl
YS4uY2MxNTAyNWZkYmMxYSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
cWNzOTEwMC1yaWRlLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M5MTAw
LXJpZGUuZHRzCj4gQEAgLTE0LDMgKzE0LDExIEBAIC8gewo+ICAJbW9kZWwgPSAiUXVhbGNvbW0g
VGVjaG5vbG9naWVzLCBJbmMuIExlbWFucyBSaWRlIjsKPiAgCWNvbXBhdGlibGUgPSAicWNvbSxx
Y3M5MTAwLXJpZGUiLCAicWNvbSxxY3M5MTAwIiwgInFjb20sc2E4Nzc1cCI7Cj4gIH07Cj4gKwo+
ICsmcGNpZTBfcGh5IHsKPiArCXZkZGEtcmVmZ2VuLXN1cHBseSA9IDwmdnJlZ19sN2E+Owo+ICt9
Owo+ICsKPiArJnBjaWUxX3BoeSB7Cj4gKwl2ZGRhLXJlZmdlbi1zdXBwbHkgPSA8JnZyZWdfbDdh
PjsKPiArfTsKCltTZXZlcml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVnLCBidXQgc2ltaWxhcmx5
IGhlcmUsIGRvZXMgcWNzOTEwMC1yaWRlLmR0cyBuZWVkIHRvIGR1cGxpY2F0ZQp0aGUgdmRkYS1y
ZWZnZW4tc3VwcGx5IGFzc2lnbm1lbnRzIHRoYXQgYXJlIGFscmVhZHkgaW5oZXJpdGVkIGZyb20K
bGVtYW5zLXJpZGUtY29tbW9uLmR0c2k/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODEwMTEyNzM1LjEzMjY4MDctMS16aXl1ZS56
aGFuZ0Bvc3MucXVhbGNvbW0uY29tP3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
