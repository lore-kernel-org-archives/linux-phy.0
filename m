Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96D53C79FA0
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 09:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kkxqWT7QnTldCLKR9YKOtbLZdlhu5h9T1MqLJmMroC0=; b=iuegtnGHm32Y8z
	pUkp2Olst5SaXv7MteP+7BJRrdZ8UBCULUiKaEY32MWYZabcPQVmzVvA7LnSm9Y93gND3SWKfhnaw
	G/LWwACLtjfqZ2nPXjL8uxFOv+ovbuf2z4J4ytBdbiqqmnfolCyTFMJ2Q7UFsE3qWmDscnaJdMakp
	q9zhrZtx4YcO/cRaAq3h6BXm5EdkUyQdHzvu17MRFlS1UncEKe1QNgvXiyPwnSwTb/u06MFQWkrgW
	zeaufi475lpYqsA31sG12/a3uURj8SbcOaKCTz58eCvtSS2Uo5wciabVoW//3X6IpPIf+pW7DtoNU
	6yjTKLBBEtKLp7bZbKDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3rkP-00000008V2c-1Afg;
	Tue, 08 Sep 2026 09:04:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3rkN-00000008V2V-3r05
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 09:04:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4E7DA601DB;
	Tue,  8 Sep 2026 09:04:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0F241F00A3F;
	Tue,  8 Sep 2026 09:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788858247;
	bh=H/JIf1NQjIb4TKJ8HaRrI6/3Q6deTgypMKedqqV6Ryo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=S0h589ZV4AEZ/CiNIf7DQhXV475vatv/xrvmCl5ggpO486l+4dhuZU6IIeBQuMP0I
	 hFA+oBn7YvExTPY4cZ/qeF1JWzo9X5vphAeo288ATXWZrj78LZ9A+E834N97+8pVSb
	 0nlsZWeMaBjhlPz5UuWBM+fg+nh5l7wrhs9yGANIa6PsBrsieQmmetK9+Ed7LFfZpS
	 SXqqgRHDcu0IV02ol/g6Nu5uJPiOJjROIAZyzexzr8WGurA6piJ89wLX/0/EVr8UXO
	 n9q/ZaLcpPYMqo4jvkQGIqGExduI5yb5CbKeXhccFEnu1cZd/Au7bY15UgSX1+2tHx
	 BiKwznyYr4y7w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: phy-snps-eusb2: fix FSEL_48_MHZ_VAL definition
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, Frank.Li@kernel.org, olteanv@gmail.com, vkoul@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260908085953.3315953-1-xu.yang_2@oss.nxp.com>
References: <20260908085953.3315953-1-xu.yang_2@oss.nxp.com>
Date: Tue, 08 Sep 2026 09:04:06 +0000
Message-Id: <20260908090406.A0F241F00A3F@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBNaXNzaW5nIEZJRUxEX1BSRVAoKSBmb3IgRVhZTk9TX1BIWV9DRkdfUExMX0ZCX0RJ
Vl8xMV84X01BU0sgY2F1c2VzIGJpdHMgMTE6OCB0byBhbHdheXMgZXZhbHVhdGUgdG8gMCwgYnJl
YWtpbmcgdGhlIDQ4TUh6IFBMTCBjb25maWd1cmF0aW9uLgotLQoKY29tbWl0IDhmMTBjZWEwMDVl
N2MzMGU3OGUzODU1YjFiM2RiMDM5ZWJhNjgwMjMKQXV0aG9yOiBYdSBZYW5nIDx4dS55YW5nXzJA
bnhwLmNvbT4KCnBoeTogcGh5LXNucHMtZXVzYjI6IGZpeCBGU0VMXzQ4X01IWl9WQUwgZGVmaW5p
dGlvbgogICAgCkFjY29yZGluZyB0byBTeW5vcHN5cyBlVVNCMiBQSFkgRGF0YWJvb2ssIEZTRUxf
NDhfTUhaX1ZBTCBzaG91bGQgYmUgMHg2CmZvciBzdXBwb3J0ZWQgNDggTUh6IHJlZmVyZW5jZSBj
bG9jay4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3BoeS1zbnBzLWV1c2IyLmMgYi9kcml2
ZXJzL3BoeS9waHktc25wcy1ldXNiMi5jCj4gaW5kZXggYWY0ZmExN2FjNmNiYy4uM2NiMThkNmVi
YzFkMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9waHktc25wcy1ldXNiMi5jCj4gKysrIGIv
ZHJpdmVycy9waHkvcGh5LXNucHMtZXVzYjIuYwo+IEBAIC0yMSw3ICsyMSw3IEBACj4gICNkZWZp
bmUgRlNFTF8yMF9NSFpfVkFMCQkJKDB4MSkKPiAgI2RlZmluZSBGU0VMXzI0X01IWl9WQUwJCQko
MHgyKQo+ICAjZGVmaW5lIEZTRUxfMjZfTUhaX1ZBTAkJCSgweDMpCj4gLSNkZWZpbmUgRlNFTF80
OF9NSFpfVkFMCQkJKDB4MikKPiArI2RlZmluZSBGU0VMXzQ4X01IWl9WQUwJCQkoMHg2KQoKW1Nl
dmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyB0aGUg
bWlzc2luZyBGSUVMRF9QUkVQKCkgcHJldmVudCB0aGUKNDhNSHogY29uZmlndXJhdGlvbiBmcm9t
IHdvcmtpbmcgb24gRXh5bm9zIGRldmljZXM/CgpXaGVuIHVzaW5nIHRoZSA0OE1IeiByZWZlcmVu
Y2UgY2xvY2ssIEVYWU5PU19ESVZfMTFfOF80OF9NSFpfVkFMIGlzIDB4MS4gCkhvd2V2ZXIsIGlu
IGV4eW5vc19ldXNiMl9yZWZfY2xrX2luaXQoKSwgdGhlIFBMTCBjb25maWcgaXMgd3JpdHRlbiB3
aXRob3V0IApzaGlmdGluZzoKCmRyaXZlcnMvcGh5L3BoeS1zbnBzLWV1c2IyLmM6ZXh5bm9zX2V1
c2IyX3JlZl9jbGtfaW5pdCgpIHsKCXNucHNfZXVzYjJfaHNwaHlfd3JpdGVfbWFzayhwaHktPmJh
c2UsIEVYWU5PU19VU0JfUEhZX0NGR19QTExDRkcxLAoJCQkJICAgIEVYWU5PU19QSFlfQ0ZHX1BM
TF9GQl9ESVZfMTFfOF9NQVNLLAoJCQkJICAgIGNvbmZpZy0+ZGl2XzExXzhfdmFsKTsKfQoKQmVj
YXVzZSBzbnBzX2V1c2IyX2hzcGh5X3dyaXRlX21hc2soKSBhcHBsaWVzIHRoZSBtYXNrIGJpdHdp
c2U6Cgpkcml2ZXJzL3BoeS9waHktc25wcy1ldXNiMi5jOnNucHNfZXVzYjJfaHNwaHlfd3JpdGVf
bWFzaygpIHsKCXJlZyAmPSB+bWFzazsKCXJlZyB8PSB2YWwgJiBtYXNrOwp9CgpTaW5jZSB2YWwg
aXMgMHgxIGFuZCBtYXNrIGlzIEVYWU5PU19QSFlfQ0ZHX1BMTF9GQl9ESVZfMTFfOF9NQVNLICgw
eDBGMDApLAp0aGUgYml0d2lzZSBBTkQgZXZhbHVhdGVzIHRvIDAsIGxlYXZpbmcgYml0cyAxMTo4
IHplcm9lZC4KClNob3VsZCBGSUVMRF9QUkVQKCkgYmUgdXNlZCBoZXJlIHRvIGVuc3VyZSB0aGUg
NDhNSHogY29uZmlndXJhdGlvbiBhcHBsaWVzCnByb3Blcmx5PwoKPiAgCj4gICNkZWZpbmUgRVhZ
Tk9TX1VTQl9QSFlfQ0ZHX1BMTENGRzAJKDB4OCkKPiAgI2RlZmluZSBQSFlfQ0ZHX1BMTF9GQl9E
SVZfMTlfOF9NQVNLCUdFTk1BU0soMTksIDgpCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTA4MDg1OTUzLjMzMTU5NTMtMS14dS55
YW5nXzJAb3NzLm54cC5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
