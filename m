Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15DE1C55167
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 05:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K2BHp3x2KGbINrjNfAEDdpGbUYPEKnPEbm+6K+guKZQ=; b=zdFPIV4/gJeJ8a
	AoX0QLtd+ctMWGT8i7SSRPyyhRVBvou9yHsDBaadAamZq22i5VlBkONApZq/9sZUxsb4PEGI1fu2w
	3Ita0AEdBdy9845ruDVzkCzhFflA5cjX2ApH7QppBmgGSlNEoJ+uLnMGaMRiLCaOsudI7Mrmi+o55
	Dni8vdTYWSBSlR6LKZSjGUv0sHDqazPJ2VrZ9sVIOc0bWOQ7IyifwVy16hxbdpoRBBPaq7D7xJLh+
	6shXiG6pD6JmBbYNAswyePm2AdtNKJyGrQ8e8augGDB6ImkKjpEr5WGadFbdeGhPlKIAt+AiDpwQV
	tfX7kdhm6WAAszopeFKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfmu-0000000BnPK-3dz5;
	Fri, 31 Jul 2026 05:28:05 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfms-0000000BnP6-1UVP
	for linux-phy@lists.infradead.org;
	Fri, 31 Jul 2026 05:28:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A8FA6600C8;
	Fri, 31 Jul 2026 05:28:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BBA71F000E9;
	Fri, 31 Jul 2026 05:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785475681;
	bh=RWteTQyx9kct0DSpGm+L3leDy8X2DHVDiMmA7czI59o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MJzeJ7W3RScyt5gRZQJTWCq+Tfl9AdBNSOwuDc/vJsMiThtBMFz2tr3Q8W8CEi9y6
	 DemjszdJyG/SCOPLZuPe3RxfcZeB2vbyrips38r9M3kTVyrRFbt+29nz0D9RMiw5Fi
	 lmT34z41HIRki1f/vjgOqpDYCJyYXE86pWYTgi2BrVXufM3SoIfJeMESMxiNVpI7GN
	 gY/wQ+Qdq9PEOucNNEiW1c6R2L/vYVwyNRnOu9+ZDQlt7nuRWBtp6Wwg1QofEnCZ69
	 GinUF94rgna8urRH42hw5i3gJYQA7sDtFjfMkBQ54Xy8aJY+54ZDCMi2XsWLLG7/iY
	 WjLh2s8nXSCeQ==
Date: Fri, 31 Jul 2026 07:27:53 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v8 4/6] arm64: dts: qcom: glymur-crd: Add PHY supplies
 for pcie3_phy
Message-ID: <ax262nrs5rnnrmt3dtemfaqk47th5z5j524ayi4dktacgwzzac@yik7hriuti6s>
References: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
 <20260730-glymur_linkmode_0731-v8-4-a455265ad8bf@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260730-glymur_linkmode_0731-v8-4-a455265ad8bf@oss.qualcomm.com>
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

T24gVGh1LCBKdWwgMzAsIDIwMjYgYXQgMTA6MTM6NTNQTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gQ1JEIHdpcmVzIHRoZSBzaGFyZWQgR2VuNXg4IFBDSWUgUEhZJ3MgcmVndWxhdG9yIHN1cHBs
aWVzIHRocm91Z2gKPiBib2FyZC1zcGVjaWZpYyBQTUlDIHJhaWxzLiBBZGQgdGhlIHZkZGEtcGh5
LCB2ZGRhLXBsbCwgYW5kCj4gdmRkYS1yZWZnZW4wcDkvMXAyIHN1cHBsaWVzIGZvciAmcGNpZTNf
cGh5Lgo+IAo+IFJldmlld2VkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5x
dWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUWlhbmcgWXUgPHFpYW5nLnl1QG9zcy5xdWFs
Y29tbS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFu
LnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCu
o+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
