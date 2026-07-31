Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC4C0C55167
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 05:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpqkkL8+F7ij5OvWbjE90bvj5jmhk+hvE0AkTTM2v54=; b=THrupB2qyOCG4h
	p6cT8f0WqeXakcRLSCCuLSYd9cgzR2Ymck3mEPe7rNW3/FXBea3qrSdyEuX2PgWnux5a+CocDqXsS
	4IIMjrByO+nf5ydMCJiLs6RcIipTt8U7ADzxrR2FARWR0RkCPPPo9mrjXo106/SG5ObdrEVq79G4s
	3KnLP6NrMBj9odSd50QrliDuxxL4cM7jTSVN4B7Yw1Q3eQvwkrYwWLBgfJAQwxk5BYi61YA9yBB31
	Mj/LcryjXddc7WWJTWV4wrgdDXi2w1/Z/Mery+MuTjHltMQCpLeeDKIkRCDTxy6Dl9Iat7uspTvsG
	AUYgjOb2FqZtglNw2Mxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfoF-0000000BnUy-24QA;
	Fri, 31 Jul 2026 05:29:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpfoC-0000000BnUn-2GEt
	for linux-phy@lists.infradead.org;
	Fri, 31 Jul 2026 05:29:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CD63A600C8;
	Fri, 31 Jul 2026 05:29:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EA771F000E9;
	Fri, 31 Jul 2026 05:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785475763;
	bh=cTp49/urufGIvKtkJgllfunH0bQW3iYTFfunlJLSG+s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Gh8PYdaHO60tzjRGkQ2L11dX0oBfWGMugwrR4syVmRhamoWn33C94qZkZ0/Ckiw6u
	 k1W6IWfXVMn+Nfrnjao3uuWhU5yQM/d0t3Sedx2dCnUpn6b9OlWbeNfCqzZQm4jmP+
	 wdWJug4Fe8MPBdwJL3yZtgHJr3Gp9OfHyFTplb0VWzzoRBTdyqcUraQQJEmeVQNcBx
	 03JSZqhXVkXl9kgz1utF5PSseViBQlOMsUfckZYenHzL/7IBA6uyITxeRFvKEfVFBM
	 dzU9NjFOexa2dRvKnBVIYcNy72xo7WHRrPlgMzy9HQLTQRf7+Tyh3O5fv42mKp7xWj
	 VEPQ+1mGw9jEg==
Date: Fri, 31 Jul 2026 07:29:16 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 6/6] arm64: dts: qcom: mahua-crd: Add PHY supplies for
 pcie3b_phy
Message-ID: <ln6akt2ru2nomqzoxdekg5ay3ugqdemhmocxwdbufuozn2izyj@gazr6pb6z6rw>
References: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
 <20260730-glymur_linkmode_0731-v8-6-a455265ad8bf@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260730-glymur_linkmode_0731-v8-6-a455265ad8bf@oss.qualcomm.com>
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

T24gVGh1LCBKdWwgMzAsIDIwMjYgYXQgMTA6MTM6NTVQTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gTWFodWEgQ1JEIHdpcmVzIHRoZSBkZWRpY2F0ZWQgUENJZTNiIFBIWSdzIHJlZ3VsYXRvciBz
dXBwbGllcyB0aHJvdWdoCj4gYm9hcmQtc3BlY2lmaWMgUE1JQyByYWlscy4gQWRkIHRoZSB2ZGRh
LXBoeSBhbmQgdmRkYS1wbGwgc3VwcGxpZXMgZm9yCj4gJnBjaWUzYl9waHkuCj4gCj4gU2lnbmVk
LW9mZi1ieTogUWlhbmcgWXUgPHFpYW5nLnl1QG9zcy5xdWFsY29tbS5jb20+CgpSZXZpZXdlZC1i
eTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxj
b21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTg
rr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
