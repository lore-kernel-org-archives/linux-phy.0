Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80E85C982D0
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 05:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O19/676dTR1QYP3Sv4KmwcELucdbS80D+mL2sHCUlKY=; b=jvpJMOZ2U5MqWe
	7S8cR/bQtVqoeO7IOINEGuosxW2D49C31YNKuYzbakfbrb99wQj439KTOKUjUfa01Ae70nxYroN7N
	quNEvP3/jkrkI2RM5l6g6bHbx4v5Caq0pgfSNKVPEAikctH8FkHgclrOG4AyC8KMfTPQAS/zdb7Xd
	u9vFmgnAb4/wUcNDHynbvKlHWPV0uFJSK398B+gvpH75tysrh2TcIuZNqCP0HppqvMwSNHXxN92vN
	lDcuv+HvzR6oS8hlXqfr1rlcdv7fAWjHQUaTe/g/Gzxsts/nysc2+szr/IsMca2NSF5Krov4mIfC4
	TeIulAqSzzRWznAb970g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x74Jr-0000000AaTa-4A44;
	Thu, 17 Sep 2026 05:05:59 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x74Jr-0000000AaTT-2Gww
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 05:05:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 01BC641912;
	Thu, 17 Sep 2026 05:05:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01B7D1F000FF;
	Thu, 17 Sep 2026 05:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789621558;
	bh=DGo6AhwgmkpHtSr4d5GjSyskQfqpHDpbLVINJLURtfY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kIGDNRZepAWiHQRuUHfpKhopiZRy+tGkTS56I4aWiX2olLs5Ihu0jMa1dJk5g1Eov
	 y3RW1q2rWfAzsL9SLQ7GLIcvFRGgXJZ/vLmzb1xKmXFoJ+TpduJ8+Bji8x1iL8NtxX
	 qmLvSX+rD6xcM2oFs45gxyVGXg/8cyauZlLuiR2w2clwtnNvr4vDvbJTalBRn70tud
	 sm+//CRfiZX9M1z0i9pFhsmSS9khVwXD8JoN5gARWr6HetESQKFrJbAj0tUiJOiLiW
	 C0wQmkHWzid6e3GizGo1yfDwdYTz+VRPJrVdq2G5qQ2kgpc7uErJyXShKwLo0hXnfz
	 4w8Zxh6mLsgsA==
Date: Thu, 17 Sep 2026 07:05:36 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Bryan O'Donoghue <bod@kernel.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v17 3/5] phy: core: Add devm_phy_get_by_of_node()
Message-ID: <unvsbhemwvuuj46tau2ioc4v6yvvywpnocg3jy5qsrcz3w7mne@xczbo4otqxtl>
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
 <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-3-e2197a3e2551@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-3-e2197a3e2551@linaro.org>
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

T24gU3VuLCBTZXAgMDYsIDIwMjYgYXQgMDM6MTc6MDdQTSArMDEwMCwgQnJ5YW4gTydEb25vZ2h1
ZSB3cm90ZToKPiBBZGQgYSBkZXZtIHZhcmlhbnQgb2YgcGh5X2dldF9ieV9vZl9ub2RlKCkgdG8g
YWxsb3cgZm9yIHRoZSBmYW1pbGlhcgo+IHBhdHRlcm4gb2YgaGF2aW5nIGRldnJlcyBhdXRvbWF0
aWNhbGx5IHJlbGVhc2UgcmVzb3VyY2VzIG9uIHRoZSBkcml2ZXIncwo+IGV4aXQgcGF0aC4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBCcnlhbiBPJ0Rvbm9naHVlIDxicnlhbi5vZG9ub2dodWVAbGluYXJv
Lm9yZz4KPiAtLS0KPiAgZHJpdmVycy9waHkvcGh5LWNvcmUuYyAgfCAzNCArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrCj4gIGluY2x1ZGUvbGludXgvcGh5L3BoeS5oIHwgIDcgKysr
KysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYyBiL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMKPiBpbmRl
eCA0OTBhN2NkZTZkNDBhLi4yZTM1ODFlY2I0MmVlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5
L3BoeS1jb3JlLmMKPiArKysgYi9kcml2ZXJzL3BoeS9waHktY29yZS5jCj4gQEAgLTEwNTAsNiAr
MTA1MCw0MCBAQCBzdHJ1Y3QgcGh5ICpwaHlfZ2V0X2J5X29mX25vZGUoc3RydWN0IGRldmljZV9u
b2RlICpucCkKPiAgfQo+ICBFWFBPUlRfU1lNQk9MX0dQTChwaHlfZ2V0X2J5X29mX25vZGUpOwo+
ICAKPiArLyoqCj4gKyAqIGRldm1fcGh5X2dldF9ieV9vZl9ub2RlKCkgLSBkZXZtIG1hbmFnZWQg
bG9va3VwIGFuZCBvYnRhaW4gcGh5IHJlZmVyZW5jZSBieSBkZXZpY2Ugbm9kZQo+ICsgKiBAZGV2
OiBkZXZpY2UgcmVxdWVzdGluZyB0aGUgUEhZCj4gKyAqIEBucDogZGV2aWNlX25vZGUgb2YgdGhl
IFBIWSBwcm92aWRlcgo+ICsgKgo+ICsgKiBSZXR1cm5zIHBoeSBhc3NvY2lhdGVkIHdpdGggdGhl
IGRldmljZV9ub2RlIG9yIEVSUl9QVFIuIGRldnJlcyBtYW5hZ2VzCgonUmV0dXJuczonCgpSZXZp
ZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3Nz
LnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDg
rprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
