Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 790D2CA5FE3
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sV1O4I4m0APghL1OHORQIFkfW0yWVTiN+bsxiIVOdo0=; b=IM+mSESaG3s36x
	uoTaasLjgglJX0umID/TZ4EGbaOIfFS5dZT0HJixNwcrKXetJb1XicvZz9iriN4SgDAfhV/UgYsvy
	l4w/nlk/Hau8jn+cS0PfNneEC6e856hzhPLdTSeAFHxYKqlSIEo1Y8BMbxfNzv5AMiQJc9L04llx5
	2XxRmp1FPl5DRfHLO2JpGvjANYXBXUXFtwDy2RdoWtRwIGSrLCb+4BhXaKQYi9xC12AYklmj62Jwd
	n8hfbI0ALccsQRSEGON77ehcoh7A3uu2Pd9czzUoJdWgUPCK0MwXuH6aFH5eVUxgi62hB1g//BVh5
	F3u/dVsdGKrhQ2AQ69Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAo-0000000DHwz-0lDP;
	Sat, 03 Oct 2026 09:36:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAn-0000000DHwC-0Unm
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:36:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8D7AD60D8E;
	Sat,  3 Oct 2026 09:36:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 712071F0089B;
	Sat,  3 Oct 2026 09:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791020212;
	bh=9rhRbAKRd8QTnsTQCApOaG9M18WsJMAAMTO/MZrrxYk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=bwGhAKLFcOssrHdXZXLoDrru0tqsnEbiGpFDae3MVW2eop9vEkhy9gBMsb0udXVrA
	 kii3oRjvUYFrilgqJ3f8mnPCcErFcmupiXgwf+ETXWc6KNG2QF6ki6lf1keyD/rdh9
	 Bsk26U4SrortqzjWyNJ/+Mz8SyqgJccjnOM3QH5Phkd08J2n5m4Lj2vVWTrpKDRs9z
	 thpFGJp3SLVDwFo8c3Mce9knMRB3FswgV/Vc0bZIVAKA5cPI0oEIb+uGaWOYg2YCrV
	 csfgjRfGdgQ5e8CBE+cjMNQeLR1ruCfuAcykXPn/HvF+9H8+F2nCQ5qmgRbenIr5Ks
	 j9XzMR/0UgEXw==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
 brgl@kernel.org, Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Shawn Guo <shengchao.guo@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
In-Reply-To: <20260921-nord-usb-phy-v3-0-68aa02b12b96@oss.qualcomm.com>
References: <20260921-nord-usb-phy-v3-0-68aa02b12b96@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/3] phy: qcom: Add USB PHY support for Nord SoC
Message-Id: <179102020808.199361.16211288333861014170.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 11:36:48 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Mon, 21 Sep 2026 13:47:04 +0200, Bartosz Golaszewski wrote:
> The series documents Nord in qcom,snps-eusb2-phy and
> qcom,sc8280xp-qmp-usb43dp-phy bindings, updates qmp-combo PHY driver for
> Nord SoC support.
> 
> 

Applied, thanks!

[1/3] dt-bindings: phy: qcom,snps-eusb2-phy: Document the Nord eUSB2 PHY
      commit: 4d1f3875f32894c4082b79540fe3d77cede6d260
[2/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Document the Nord QMP PHY
      commit: 674e602140a19a63c406e1096d0aeb76e8e16af9
[3/3] phy: qcom: qmp-combo: Add USB3+DP PHY support for Nord
      commit: bb0417288ea40a5f57676529cae95f3c20bd697c

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
