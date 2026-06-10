Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5A9BCD98C5
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 20:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPElhJ3zI+mgv8UlbPle4XGSizXQk3e+SVbV3mFpb1M=; b=zlaBBwE2GzzbrG
	X7CbAxCqcfU4ostzvJfSlihNV1upUgFNbPJGVLf01lTz8lXu3YFAheI3l4xwcwwX0s6LiIB6i4xkH
	BIiuwiO48x9QxukXsa3eYKh7KYtgwuQbubb0RtMlEJMChDsSYW83f6e6cvdUcr9EL/63Gbsx/dWbF
	lOHypmrFXDVcEYpBDgQuknVsdfxNZoZeda50GA2WeY7GEPzAwKvgmkjKwqGnL9Two7FTG63yH+uZP
	Ujnf4RGiF0jgLK63CEBrR1TIXQtlCv27soQ+7WTgEfxMrGf4/ebO/P26LaJGMfknbSAjwX0Tuo1h4
	iWZEZRiSbuU0sGIUZIRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXP60-00000008JC6-0nQ3;
	Wed, 10 Jun 2026 20:00:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXP5y-00000008JBx-45Ey
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 20:00:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5823C423D6;
	Wed, 10 Jun 2026 20:00:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1237A1F00893;
	Wed, 10 Jun 2026 20:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781121614;
	bh=lEiT5nfQy5M2WcLyUsRW0iH+7nklJOdrIO/F3wDlgbw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VAf4Nh34MZ0WafXhdetK/bmREXXT5GVeCvBWaxJYyp86JhxsavKNUzrAdEFZV9VgY
	 cE4Q5K4DAYXZe3I4n8TWkrTzIHhPqWF0zf7PU7ixahduD3Bw6Mb08seckroYON2Vzy
	 etJKo01eFEwOVlPfNc7+5DXWjJ5Bn01Sqvy3adj3ODYMsfY12AIQtSIxGcPXfMtpa5
	 s6SHxwZdKsgieg8qwtUnD2mEcX+fgx4Oug66gfEFA0gtrrRacskBeKgu7Lg3Riyxm3
	 k8n06TKWq3aL5N80saIPiQ8OLd/N/97UIhN2dE94WkarTO+7s5HFZFW5ZyvxoQNq+u
	 YphEfbhuFiEXw==
Date: Wed, 10 Jun 2026 15:00:13 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	YijieYang <yijie.yang@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: sc8280xp-qmp-pcie: Disallow
 bifurcation register on Purwa
Message-ID: <178112161290.713172.14002683325677777588.robh@kernel.org>
References: <20260610-topic-purwa_phy_shutup_warning-v2-1-951c1fbfe9b2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610-topic-purwa_phy_shutup_warning-v2-1-951c1fbfe9b2@oss.qualcomm.com>
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


On Wed, 10 Jun 2026 11:45:12 +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Neither of the two Gen4x4 PHYs found on Purwa supports bifurcation.
> The PHY is however physically laid out as if it were to, since there
> are two separate ports (A/B).
> 
> Split out a new if-then block to un-require the bifurcation register
> handle to squash this warning:
> 
> purwa-iot-evk.dtb: phy@1bd4000 (qcom,x1p42100-qmp-gen4x4-pcie-phy): 'qcom,4ln-config-sel' is a required property
> 
> Fixes: 2e1ffd4c1805 ("dt-bindings: phy: qcom,qmp-pcie: Add X1P42100 PCIe Gen4x4 PHY")
> Reported-by: Rob Herring <robh@kernel.org>
> Closes: https://lore.kernel.org/linux-arm-msm/176857775469.1631885.16133311938753588148.robh@kernel.org/
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Changes in v2:
> - Rebase
> - Don't drop the mention of the warning, as it now actually exists in
>   the tree..
> - Link to v1: https://lore.kernel.org/r/20260119-topic-purwa_phy_shutup_warning-v1-1-997a692b31c6@oss.qualcomm.com
> 
> To: Vinod Koul <vkoul@kernel.org>
> To: Neil Armstrong <neil.armstrong@linaro.org>
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: linux-phy@lists.infradead.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
