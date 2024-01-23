Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31F6DC47DDB
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 14:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DA5ohBCUFz+96LCsIYP7I0ANrUO+2YjjFkam054wWFs=; b=0mB8Rf+eHXT5Lx
	CX2P4G8AsWzne2hqgtkQg3n722OjiOIQL+2dH0GyLfY2hIj0oyPIIvP1W0jjiLPtC0UEZ6pLaqd9W
	2Eg7ohq1ArFWdetylbaMAHcOzDxrQ6+S7UMIacUHLWEi8lIYWJ/59Xe6RWwLYN+hYKiBiR0oCr8Z2
	TBiePU6gEHW6RFlWtc/jnPFwf5aSRGP+oDulIKD3IEWtQmA7Ury+69qUi9kAJ1QJpjea0uj8qTOzZ
	ko2kLY0o4lD0XNke/W6tMH9s1IDxfJLntoBmwOaVI+R78Ll+u37qkkaTJ2Bh/Eh+wy1r4lLvUT37C
	k24VLcBkYGlTvFqTkMBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSHeo-00GnB6-2D;
	Tue, 23 Jan 2024 14:21:42 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSHef-00Gn56-1G
	for linux-phy@lists.infradead.org;
	Tue, 23 Jan 2024 14:21:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4D87ACE2F23;
	Tue, 23 Jan 2024 14:21:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FE4FC43394;
	Tue, 23 Jan 2024 14:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706019662;
	bh=Y3qVpfbCxdi1d6OaDH52Zm0yMJAKCZVxKIP2XOv+Uh0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KQ6BgqFe5lqpaeLoQOivVHcS6KBduwAPtR3O3W7jM4WjMA9t70U/Vf9J5Fxcv3lYy
	 BjAKvF+rg1czCAOE9OfmpNyRdsciGK12wL6SQR0tnzXMGTojWVZvcYtbA8bs95ypi+
	 XOK3Y+T6ekbrRebuH7A5QI3XpV7CzkBYPzm2vg39U4BjNM+97fWccGKZ3oy0w6D56V
	 7/nPbd9NXJebFmQ9S1OeVoZmj+pTUGO4OCeW5LUVLQmtxpHVT5le/ihEkCvlnIf5RG
	 mZI130IvUBYtwlXv1oqx+q4ilCM5JDOeutz50/qiKciwIPXgdkUAEgwPW1MPgH8ktz
	 1tuwB+jf9qhAA==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
References: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
Subject: Re: (subset) [PATCH v2 0/6] phy: qcom: qmp-usbc: properly handle
 the clamping register
Message-Id: <170601965814.371263.12044570572262863017.b4-ty@kernel.org>
Date: Tue, 23 Jan 2024 19:50:58 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_062133_608898_6B1431A7 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
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


On Wed, 17 Jan 2024 16:04:21 +0200, Dmitry Baryshkov wrote:
> The USB-C PHY on the MSM8998, QCM2290, SM6115 and several other platforms
> doesn't have built-in PCS_MISC_CLAMP_ENABLE register. Instead clamping
> is handled separately via the register in the TCSR space. Make the new
> phy-qcom-qmp-usbc driver correctly handle the clamp register.
> 
> For backwards compatibility the driver treats these registers as
> optional. They are only required for the PHY suspend/resume. However the
> schema declares corresponding property as required, it should be present
> on all relevant platforms.
> 
> [...]

Applied, thanks!

[2/6] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: add TCSR registers
      commit: f2b2f86a8bd19feb70649abf8a63d639f4c838d8
[3/6] phy: qcom: qmp-usbc: handle CLAMP register in a correct way
      commit: 01b086ccdeffac96f107228d581e0925e1c83f87

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
