Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3D8BC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 18:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+SosuIUiQhiGTLlRIkGso7SUwcfsmXxidkNhWm+b560=; b=SBTjJdeupFUNw7
	LSyaDtMLmLZXA7k9beKyPKfxQccWxYxRHWipP6a0+SuBwjjhbYDxtilov1B+/B+gVN6kF389R+CTp
	3QObXexKJ1lo1kCt5jlYlOqvY8csMHJn75GHMtj8U+p4nxvPXpbyiO3Glh8jdIZLfQBsmAFj7Vu96
	t9pD6yNRCAqsdXYBnEq1FvBnkp4ZRGBz0aJJ2EHpnDkzHttYgO9fQvZ2wMl3MAd8J9NVKnaQI9v/C
	zshLHLfmGirzQ8hr0SOy/gmT4WGbEHVuPy10mgqIx6b34YKMmwfzkv0hYsjcFdIM7WhlWGZQP0hDu
	OfmPCdDsK7w/niPeNq9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYuA2-009nuM-V6; Mon, 28 Mar 2022 18:32:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYuA0-009nty-5E
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 18:32:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 983AD611B9;
 Mon, 28 Mar 2022 18:32:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BBD2C340F0;
 Mon, 28 Mar 2022 18:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648492331;
 bh=qTJLwlHIWwP5+DZq5BGQzbEGxvcxsBdd85KV4h6WqpI=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=OMy5p4bwpv+sG05puY/dpOhz9ypxUvmCeyDMkoTWMl10RTF08relfzTYGCROzpOAd
 POh3wBAcf/VcCcOhl0v0QT+hMgKMGnhZrSBmbCO64TISvszUPv1/R2HvTsyzVqbYSc
 LL8uYBu6Zo2X2h1AEQMeTiEnPFqDFItqLXJ3WykdLkhQ2RUN2fwlvErXpoh7xCqxr5
 vCu1qe/nSZwfYFqakjtivLjA6O6hqihbJk8NoC3JWGARq3Y2qZ7C2SXs/UYqCVImNS
 SK/T9B81DsGmzhD4INH9Rw09vqst4Hf1I+ziwgczt7pWLuUaWkRQBceCLjWR/Ub9p7
 NGZsPMinE4C7A==
Message-ID: <90520a06-8c18-dbed-627b-afe9824cacc0@kernel.org>
Date: Mon, 28 Mar 2022 20:32:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>
Cc: "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>, =?UTF-8?B?7KCE66y46riw?=
 <moonki.jun@samsung.com>
References: <CGME20220328084319epcms2p3670d7836bb111e0d9c648aeebfde8603@epcms2p3>
 <20220328084319epcms2p3670d7836bb111e0d9c648aeebfde8603@epcms2p3>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220328084319epcms2p3670d7836bb111e0d9c648aeebfde8603@epcms2p3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_113212_319942_A5A67947 
X-CRM114-Status: GOOD (  15.67  )
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

T24gMjgvMDMvMjAyMiAxMDo0Mywg7J207JmV7ISdIHdyb3RlOgo+IEFkZCBkZXNjcmlwdGlvbiB0
byBzdXBwb3J0IEF4aXMsIEFSVFBFQy04IFNvQy4KPiBBUlRQRUMtOCBpcyB0aGUgU29DIHBsYXRm
b3JtIG9mIEF4aXMgQ29tbXVuaWNhdGlvbnMKPiBhbmQgUENJZSBwaHkgaXMgZGVzaWduZWQgYmFz
ZWQgb24gU0FNU1VORyBQSFkuCj4gCj4gU2lnbmVkLW9mZi1ieTogV2FuZ3Nlb2sgTGVlIDx3YW5n
c2Vvay5sZWVAc2Ftc3VuZy5jb20+Cj4gLS0tCj4gIC4uLi9iaW5kaW5ncy9waHkvYXhpcyxhcnRw
ZWM4LXBjaWUtcGh5LnlhbWwgICAgICAgIHwgNjcgKysrKysrKysrKysrKysrKysrKysrKwo+ICAx
IGZpbGUgY2hhbmdlZCwgNjcgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9heGlzLGFydHBlYzgtcGNpZS1waHku
eWFtbAo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L2F4aXMsYXJ0cGVjOC1wY2llLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9heGlzLGFydHBlYzgtcGNpZS1waHkueWFtbAo+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4gaW5kZXggMDAwMDAwMC4uZjVmNDE2Ngo+IC0tLSAvZGV2L251bGwKPiArKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2F4aXMsYXJ0cGVjOC1wY2llLXBo
eS55YW1sCj4gQEAgLTAsMCArMSw2NyBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlCj4gKyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBo
dHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvYXhpcyxhcnRwZWM4LXBjaWUtcGh5Lnlh
bWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55
YW1sIwo+ICsKPiArdGl0bGU6IEFSVFBFQy04IFNvQyBQQ0llIFBIWSBEZXZpY2UgVHJlZSBCaW5k
aW5ncwoKcy9EZXZpY2UgVHJlZSBCaW5kaW5ncy8vCgo+ICsKPiArbWFpbnRhaW5lcnM6Cj4gKyAg
LSBKZXNwZXIgTmlsc3NvbiA8amVzcGVyLm5pbHNzb25AYXhpcy5jb20+Cj4gKwo+ICtwcm9wZXJ0
aWVzOgo+ICsgIGNvbXBhdGlibGU6Cj4gKyAgICBjb25zdDogYXhpcyxhcnRwZWM4LXBjaWUtcGh5
Cj4gKwo+ICsgIHJlZzoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBQSFkg
cmVnaXN0ZXJzLgo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBQSFkgY29kaW5nIHN1YmxheWVyIHJl
Z2lzdGVycy4KPiArCj4gKyAgcmVnLW5hbWVzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gY29u
c3Q6IHBoeQo+ICsgICAgICAtIGNvbnN0OiBwY3MKPiArCj4gKyAgY2xvY2tzOgo+ICsgICAgaXRl
bXM6Cj4gKyAgICAgIC0gZGVzY3JpcHRpb246IFBDSWUgUEhZIHJlZmVyZW5jZSBjbG9jawo+ICsK
PiArICBjbG9jay1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiByZWZfY2xr
Cj4gKwo+ICtyZXF1aXJlZDoKPiArICAtIGNvbXBhdGlibGUKPiArICAtICIjcGh5LWNlbGxzIgo+
ICsgIC0gcmVnCj4gKyAgLSByZWctbmFtZXMKPiArICAtIGNsb2Nrcwo+ICsgIC0gY2xvY2stbmFt
ZXMKPiArICAtIHNhbXN1bmcsZnN5cy1zeXNyZWcKCkl0IHNlZW1zIHlvdSBjb3BpZWQgc29tZSB0
aGluZ3MgZnJvbSBzb21lIG90aGVyIGJpbmRpbmdzLCBzbyBwbGVhc2UKY2xlYW4gaXQgdXAgdG8g
cmVhbGx5IGZpdCB5b3VyIGRldmljZS4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
