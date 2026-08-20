Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AFC3C5DF81
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 06:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXLjqQ20jr3dEvlBApaI6KsfnGpfIXA7P6eK+CxOY4Q=; b=R+45Zzs1EGnnaA
	ZRqavMLuABmKwkZpb7tw8mN8KqbVAuzGmxNZp9XgdERCO5P9JR8ZnEURh/0YOClniXdzrIJccEhjq
	84cFDukOY+sx8JbJpFTF0sSXbRj5xUGVZdl67Txu7MkCd2Becw+iUFeovEIpPgKi7myZZflz0LBHR
	og+kbbLGd/+eeP2cpYYVdFWrHhWSeH2e4z3L9UwOjYDTGtUvLjPtEqahnVS+Xuf3/7KhlbfeQLXCl
	Zn6sCAaw6+Nv56bnxlZnR3X++eeUQ4YwXJ7RFV9wP5h4Of/6gGNF5FWHy2w7oBhTY9CPJukhgSvdL
	O2C1/Z/OjYGGULsOZcfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwwOn-0000000AxTp-3iOY;
	Thu, 20 Aug 2026 06:37:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwwOm-0000000AxTd-0BlM
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 06:37:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7E4B261887;
	Thu, 20 Aug 2026 06:37:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36C161F000E9;
	Thu, 20 Aug 2026 06:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787207831;
	bh=twd2hSp8RXg3LcsDoxYwRo7i50y6T+ujr1ovcDjawE0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Ok/DAA3eMFFl3/EWYXUD2twPDDVgtQwMkJXiHJGNHh6Eo32qhZeSj4aUxialCU/8s
	 HWLYoqylq1c3LnfmcHEsE5X0hABdyMlXeutQWGqdKMGbLjwS2YAELUV6OHblo1oq3B
	 nw7mWKvG+WknE7khshEXgzsiomzLJkPINLEkEFQNewgYzEx2nCxeh9RyWjpqVEW2k6
	 g9MBuNJIWXZCYo4X2YLdMQGqvzFEqtoeEfI0bCYR3oh9+IOUbHpyKXI9inxtjxp7f/
	 dOF7ZxrsYY6wyU6cOHPMi3p+nMftlHDrBub3VkBVXPCwF4wJPZqHI8njlS3nshnDqf
	 DiWAf/FcdlLmg==
Date: Thu, 20 Aug 2026 08:37:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Chen <peter.chen@kernel.org>, Pavankumar Kondeti <quic_pkondeti@quicinc.com>, 
	Stephen Boyd <stephen.boyd@linaro.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
	Greg Kroah-Hartman <gregkh@suse.de>, Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 01/10] dt-bindings: pinctrl: qcom,tlmm-common: allow
 functions on the HSIC pins
Message-ID: <20260820-handsome-vehement-buzzard-07fc64@quoll>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-1-e5f93ea76ffa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb-hsic-v1-1-e5f93ea76ffa@oss.qualcomm.com>
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

On Mon, Aug 10, 2026 at 06:42:05PM +0300, Dmitry Baryshkov wrote:
> The common TLMM state schema requires the function property for GPIO
> pins and forbids it for all special pins. That rule is wrong for the
> MSM8974 HSIC pads: unlike the SDC pads, hsic_data and hsic_strobe are
> muxable pin groups (between the gpio and hsic_ctl functions, see
> HSIC_PINGROUP in pinctrl-msm8x74.c), and the msm8974 schema already
> lists hsic_ctl in its function enum. As a result any valid HSIC
> pinctrl state fails validation.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
