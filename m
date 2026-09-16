Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 365E4C88E77
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 10:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZI/SXd3Pl87Yhtd+0HfPJBpYEnQ1n97p22VUQbfvzI=; b=mUEQpBZuoNzb0u
	3RHepzJ2TXQx+8IX2DtBHnMHfvY7uTfOtTwfWXgbCMyC8IdyiyI0LtU3Pkj/Kc0CBn6ZjGZm0cB9z
	idcPZeb5b2t7gRXEIWUUDj+VYfe1VXc3xHUN6v1YZ9DSHt6WbeH2i9Ztptx02f+hC2/H0+sDDIMIB
	rmUNEi6Uk5T11pveSoITGRGPODa6tZs3Gmslk4zolF5eudcdWQLdYT9TQmaRiZ43g6RqqdC5gya3K
	CUHSpKInT6t1cK0BNk4FPAd2lI9UgMTGq/IQF7n2SvGalx3W73ZLcwPfzElk8zcQLcJ6Qlunr9a0x
	pz/lhmclIf9MfUJHDQMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6mwA-00000008ysH-3BV5;
	Wed, 16 Sep 2026 10:32:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6mw9-00000008ys0-38un
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 10:32:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CA6B060234;
	Wed, 16 Sep 2026 10:32:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39B731F000FF;
	Wed, 16 Sep 2026 10:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789554740;
	bh=OStslCeIURQ1G+onkNNhfV2sdhWO+nBcbl9KRVafGyY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SvwSmzgrHR00QhcjtoFqP7EuRJnuUejS417nrhMj+4ofe/x8QUlAkK2EH5x3fItU8
	 LBWs0wCyqbpraGI0GDvZs9VEUUvROUNrNPNUHoKJ7MUK017QaH6uZ3JY0i3m0bZg42
	 oFmpByOEX0b05wsdmd1J322b7fM26g8YUszGSfXTsxypY29upPY5IxfZIjKpcM8nb9
	 9dDUx+D7h+NRzsUic1Kyl3P/dfvA2qLURY+flFv6ozO/N6hDc7tSsfLl/c9nGZJe3R
	 Sk/R/drOx4m556qSB2TYnd/4fb3cp1X0DlLpSNz3vJ7jAj1n/rEMtwM8/I+09mX9Pc
	 aGKarpHJkrGRg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sa8775p: Add qref and refgen
 supply for PCIe PHYs
To: "Ziyue Zhang" <ziyue.zhang@oss.qualcomm.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260916102023.2054761-5-ziyue.zhang@oss.qualcomm.com>
References: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
 <20260916102023.2054761-5-ziyue.zhang@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 10:32:19 +0000
Message-Id: <20260916103220.39B731F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGR0OiBxY29tOiBzYTg3
NzVwOiBtaXNzaW5nIHJlZmdlbi1zdXBwbHkgYnJlYWtzIFBDSWUgUEhZIHByb2JlCi0tCgpjb21t
aXQgMDFmZTY3NmZmOTk3Y2IwOWFlMGVhZTE3Mjk2NmQwMDdjNmZmODE0MgpBdXRob3I6IFppeXVl
IFpoYW5nIDx6aXl1ZS56aGFuZ0Bvc3MucXVhbGNvbW0uY29tPgoKYXJtNjQ6IGR0czogcWNvbTog
c2E4Nzc1cDogQWRkIHFyZWYgYW5kIHJlZmdlbiBzdXBwbHkgZm9yIFBDSWUgUEhZcwoKVGhpcyBj
b21taXQgYWRkcyB2ZGRhLXFyZWYtc3VwcGx5IGFuZCB2ZGRhLXJlZmdlbi1zdXBwbHkgcHJvcGVy
dGllcyB0byB0aGUKUENJZSBQSFkgbm9kZXMgaW4gdGhlIFNBODc3NXAgTGVtYW5zLUVWSyBhbmQg
TGVtYW5zLVJJREUgZGV2aWNlIHRyZWVzLiBUaGlzCmVuc3VyZXMgc3RhYmxlIG9wZXJhdGlvbiBh
bmQgcHJldmVudHMgb2NjYXNpb25hbCBzeXN0ZW0gY3Jhc2hlcy4KCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9sZW1hbnMtZXZrLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9sZW1hbnMtZXZrLmR0cwo+IGluZGV4IGE0NTQ4NWI1NGE1YjcuLjExZmIxMWIxNjFm
YzEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2xlbWFucy1ldmsuZHRz
Cj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2xlbWFucy1ldmsuZHRzCj4gQEAgLTg1
MSw2ICs4NTEsOCBAQCAmcGNpZTAgewo+ICAmcGNpZTBfcGh5IHsKPiAgCXZkZGEtcGh5LXN1cHBs
eSA9IDwmdnJlZ19sNWE+Owo+ICAJdmRkYS1wbGwtc3VwcGx5ID0gPCZ2cmVnX2wxYz47Cj4gKwl2
ZGRhLXFyZWYtc3VwcGx5ID0gPCZ2cmVnX2w0YT47Cj4gKwl2ZGRhLXJlZmdlbi1zdXBwbHkgPSA8
JnZyZWdfbDdhPjsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIG5vZGUgYWxzbyBuZWVkIGEg
cmVmZ2VuLXN1cHBseSBwcm9wZXJ0eT8KCkxvb2tpbmcgYXQgdGhlIFFNUCBQQ0llIFBIWSBkcml2
ZXIgZm9yIFNBODc3NXAsIHNhODc3NXBfcW1wX3BoeV92cmVnX2wgbWFuZGF0ZXMKNSByZWd1bGF0
b3JzLCBpbmNsdWRpbmcgcmVmZ2VuOgoKZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1w
LXBjaWUuYzoKc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBzYTg3NzVwX3FtcF9waHlfdnJlZ19s
W10gPSB7CgkidmRkYS1waHkiLCAidmRkYS1wbGwiLCAidmRkYS1xcmVmIiwgInZkZGEtcmVmZ2Vu
IiwgInJlZmdlbiIsCn07CgpXaGVuIHFtcF9wY2llX3ZyZWdfaW5pdCgpIGNhbGxzIGRldm1fcmVn
dWxhdG9yX2J1bGtfZ2V0KCksIGl0IGV4cGVjdHMgYWxsCnJlZ3VsYXRvcnMgaW4gdGhpcyBhcnJh
eSB0byBiZSBwcmVzZW50LiBXaXRob3V0IHJlZmdlbi1zdXBwbHkgZGVmaW5lZCBoZXJlIChvcgpp
biB0aGUgYmFzZSBQSFkgbm9kZSBwY2llMF9waHkgaW4gbGVtYW5zLmR0c2kpLCB3b24ndCBkZXZt
X3JlZ3VsYXRvcl9idWxrX2dldCgpCmZhaWwgd2l0aCAtRU5PREVWIGFuZCBicmVhayB0aGUgUENJ
ZSBQSFkgcHJvYmUgZGV0ZXJtaW5pc3RpY2FsbHkgYXQgYm9vdCB0aW1lPwoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxNjEwMjAy
My4yMDU0NzYxLTEteml5dWUuemhhbmdAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTQKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
