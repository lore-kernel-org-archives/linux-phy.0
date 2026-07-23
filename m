Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE564C44524
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 07:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/f/ny+fv7kRVDquQgHWAzJXQMYcqm7cVlkj9Zwn6Lc=; b=uOS6Di+RUBINqd
	xRr6PlXjryM+zAChH6+AqaRnTmtl6X8etHV2eX8ymKKhaI1Cm272qwz7+lARRwsfw1ydLus9svTKC
	a2/8faFtxqMo1VuEZ7mfJqS/4ScLi1WKiXROvLzgw9E2bWOQq0uaw0oWVKF4A7O+BBts6BVvZ5nXM
	S0xM1/xZlmXSbY3FSeUNWfrSeDZO/Imj+wFShDkmyUCDE7AwO1nWJ32DGwu/q7F9mV/dhPj4lmjah
	EQsOnBZS6QaTlcDmpyBXrfSWTipbj7RixSouYZfaO1zHi9dunpWdrdAC/zJs+RDVgSggeh+eNYdbZ
	Pn6NR2fMDYYuigTEgvrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmngG-0000000Dcmk-0hY2;
	Thu, 23 Jul 2026 07:17:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmngE-0000000Dcme-3Ag1
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 07:17:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2747043680;
	Thu, 23 Jul 2026 07:17:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E16A1F000E9;
	Thu, 23 Jul 2026 07:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784791038;
	bh=L2dHxw1+FjBVaynepTYaddjUmqfLavHLp027eVP6FcY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Y8h6+fadHj8vEmJO5CecJFS/etgHP/NeFcQzd+PL0aM9CsGr+kd51X/e9H5ZbJf/2
	 Xn+1MN8+2ylNKbNgfg8wipS1dG11z61DkMyNzXtAh9Ph8EV3zo5bha8ZdQDWLY2UZJ
	 UpK/eV/WZIAo4CklIi0lasWOHDKaZ+zgrr/HGNbNzHL3fZ4Iu0Qs75pQMtMJ/0ePZY
	 iG7yFnj7uSfzLtLwRIaQAmpwxuM/gkamXA3ydT7VuVIJolXtWxTb6ApNxvTAd3BX0/
	 fIc21WxicxeDKqALw11QFWSSou72wqGyd/n+8OTVxX41sIAgsQ+bpf5L55l7ZEJXd0
	 X4NtzJmzS39Hg==
Date: Thu, 23 Jul 2026 09:17:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 1/6] dt-bindings: phy: qcom: Add Glymur QMP PCIe
 multiple link-mode PHY
Message-ID: <20260723-rational-caribou-of-prestige-dcdbc7@quoll>
References: <20260722-glymur_linkmode_0722-v6-0-bba8156b8cbb@oss.qualcomm.com>
 <20260722-glymur_linkmode_0722-v6-1-bba8156b8cbb@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260722-glymur_linkmode_0722-v6-1-bba8156b8cbb@oss.qualcomm.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Jul 22, 2026 at 07:30:18PM -0700, Qiang Yu wrote:
> Add qcom,glymur-qmp-pcie-multiphy.yaml as a standalone binding
> for the Glymur Gen5 PCIe PHY hardware block. This block supports two
> link modes, selected at runtime via a TCSR syscon register:
> 
> 1. x8 - a single 8-lane PHY instance is exposed
> 2. x4+x4 - two independent 4-lane PHY instances are exposed
> 
> Keep this as a separate schema from qcom,sc8280xp-qmp-pcie-phy.yaml
> rather than folding it into the shared compatible list there, since the
> two PHY instances active in x8 mode require twice as many clocks,
> resets, and power-domains as any other entry in that file, and adding
> Glymur-specific properties like qcom,link-mode and reg-names there
> would only apply to this one compatible.
> 
> Document the required clocks, resets, and power-domains for both PHY
> instances, and use #phy-cells = <1>, where the cell value is the PHY
> index within the active link mode.
 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  .../phy/qcom,glymur-qmp-gen5x8-pcie-phy.yaml       | 177 +++++++++++++++++++++
>  1 file changed, 177 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
