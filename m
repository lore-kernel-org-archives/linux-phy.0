Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C8A0C982FA
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 13:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0GrVRA5UJQ3x0MyLsfLPeoIeyVhQyvMIuRJdWmjhzo=; b=BLcA4O20Wp7xOO
	nJSMTUhRd2crHERfxyd1R/zWliey9MDu7HaPwzdqzDkAhmI/8M3DkypGNlu4mRzrfTI8olCML/sMs
	gc2lsVamEYy8FMnN+8NFUUtmsjdaZ0mMq1RSnnAw+2pUpPZb1S3bNy6g0cm7o86B3ZXKO2BvkqXn0
	xg+ee/7nsE42Jf0+2AxkoukoiXimj+K7dZ4cfBewYOQImPm5Uj0382uP9mSMRQNx6miSJ9TCcfHac
	mwuMz4NBcxQ6Fr8HjenPx2GspxRJ54HsB37lcIiCDoLSNnJ7KMBSJqH3JVJ/letsOFJPOKG3COb1H
	c/M88pexln1EfEq7HQ+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x90LH-00000005U1R-3DgM;
	Tue, 22 Sep 2026 13:15:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x90LG-00000005U10-0iUe
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 13:15:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6AAEB60E07;
	Tue, 22 Sep 2026 13:15:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC2371F000FF;
	Tue, 22 Sep 2026 13:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790082925;
	bh=RDmILnS69iCDqBGrV+DzvEqx/4VWsco+asG5Xcvrajc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZdtNwO08OPlHYOCw0qsQ1DkoJVljhe6kQ2vGsP5S6G9dMJa31CAGgEsp1oecXHqIV
	 H1nQUBrMrNnJYMRg65OdsvVQn0NhwWpqiaL+D1LxW3ef0CUoMC3owIgcrlRQEt57NV
	 hd7Q+rNVRggaVGqXDdsseEJZWxE2uDRH9B4kcSi6GODs1rqi57IHM0g7ysr8ZyG4GB
	 9PhUrGYFciY4GLLFpcVMxJDd3y0PByS/Yfhk1iEYkFzAmvJSJ4s7UiDFCXPIRWRuk3
	 iwgXvO0QuGy71UV9Am/zPtcAk9QnbcTQzxzaw/vR5s5mT7eVlrhiJ+rRw8TYgPu3U9
	 /H5ZrrM1vcSOA==
Date: Tue, 22 Sep 2026 15:15:16 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bryan O'Donoghue <bod@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v18 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
Message-ID: <6h6rw73eu7jd57g3v2v233ostssqtngojqyx3fwfzkjswa3ybt@t3dkzk2zwig4>
References: <20260917-x1e-csi2-phy-v18-0-6515b5255fa9@linaro.org>
 <20260917-x1e-csi2-phy-v18-2-6515b5255fa9@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260917-x1e-csi2-phy-v18-2-6515b5255fa9@linaro.org>
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

T24gVGh1LCBTZXAgMTcsIDIwMjYgYXQgMTI6NTg6MzlBTSArMDEwMCwgQnJ5YW4gTydEb25vZ2h1
ZSB3cm90ZToKPiBBZGQgYSBuZXcgTUlQSSBDU0kyIGRyaXZlciBpbiBEUEhZIG1vZGUgaW5pdGlh
bGx5LiBUaGUgZW50aXJlIHNldCBvZgo+IGV4aXN0aW5nIENBTVNTIENTSSBQSFkgaW5pdCBzZXF1
ZW5jZXMgYXJlIGltcG9ydGVkIGluIG9yZGVyIHRvIHNhdmUgdGltZQo+IGFuZCBlZmZvcnQgaW4g
bGF0ZXIgcGF0Y2hlcy4KPiAKPiBUaGUgZm9sbG93aW5nIGRldmljZXMgYXJlIHN1cHBvcnRlZCBp
biB0aGlzIGRyb3A6Cj4gInFjb20seDFlODAxMDAtY3NpMi1waHkiCj4gCj4gSW4tbGluZSB3aXRo
IG90aGVyIFBIWSBkcml2ZXJzIHRoZSBwcm9jZXNzIG5vZGUgaXMgaW5jbHVkZWQgaW4gdGhlIG5h
bWUuCj4gRGF0YS1sYW5lIGFuZCBjbG9jayBsYW5lIHBvc2l0aW9uaW5nIGFuZCBwb2xhcml0eSBz
ZWxlY3Rpb24gdmlhIG5ld2x5Cj4gYW1lbmRlZCBzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX21p
cGlfZHBoeXt9IGlzIHN1cHBvcnRlZC4KPiAKPiBUaGUgUXVhbGNvbW0gM1BIIGNsYXNzIG9mIFBI
WXMgY2FuIGRvIGJvdGggRFBIWSBhbmQgQ1BIWSBtb2RlLiBGb3Igbm93IG9ubHkKPiBEUEhZIGlz
IHN1cHBvcnRlZC4KPiAKPiBJbiBwb3J0aW5nIHNvbWUgb2YgdGhlIGxvZ2ljIG92ZXIgZnJvbSBj
YW1zcy1jc2lwaHkqLmMgdG8gaGVyZSBpdHMgYWxzbwo+IHBvc3NpYmxlIHRvIHJhdGlvbmFsaXNl
IHNvbWUgb2YgdGhlIGNvZGUuCj4gCj4gSW4gcGFydGljdWxhciB1c2Ugb2YgcmVndWxhdG9yX2J1
bGsgYW5kIGNsa19idWxrIGFzIHdlbGwgYXMgZHJvcHBpbmcgdGhlCj4gc2VlbWluZ2x5IHVzZWxl
c3MgYW5kIHVudXNlZCBpbnRlcnJ1cHQgaGFuZGxlci4KPiAKPiBUaGUgUEhZIHNlcXVlbmNlcyBh
bmQgYSBsb3Qgb2YgdGhlIGxvZ2ljIHRoYXQgZ29lcyB3aXRoIHRoZW0gYXJlIHdlbGwKPiBwcm92
ZW4gaW4gQ0FNU1MgYW5kIG1hdHVyZSBzbyB0aGUgbWFpbiB0aGluZyB0byB3YXRjaCBvdXQgZm9y
IGhlcmUgaXMgaG93Cj4gdG8gZ2V0IHRoZSByaWdodCBzZXF1ZW5jaW5nIG9mIHJlZ3VsYXRvcnMs
IGNsb2NrcyBhbmQgcmVnaXN0ZXItd3JpdGVzLgo+IAo+IFRoZSByZWdpc3RlciBpbml0IHNlcXVl
bmNlIHRhYmxlIGlzIGltcG9ydGVkIHZlcmJhdGltIGZyb20gdGhlIGV4aXN0aW5nCj4gQ0FNU1Mg
Y3NpcGh5IGRyaXZlci4gQSBmb2xsb3ctdXAgc2VyaWVzIHdpbGwgcmV3b3JrIHRoZSB0YWJsZSB0
byBleHRyYWN0Cj4gdGhlIHJlcGV0aXRpdmUgcGVyLWxhbmUgcGF0dGVybiBpbnRvIGEgbG9vcC4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBCcnlhbiBPJ0Rvbm9naHVlIDxicnlhbi5vZG9ub2dodWVAbGlu
YXJvLm9yZz4KCklmIHlvdSBhcmUgcGxhbm5pbmcgZm9yIGEgY2xlYW51cCBzZXJpZXMsIHBsZWFz
ZSBkcm9wICdpbmxpbmUnIGtleXdvcmQgZnJvbQonbWlwaV9jc2kycGh5X2RldmljZV9yZWdzKCkn
LgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNp
dmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
