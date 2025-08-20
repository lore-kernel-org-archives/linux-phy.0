Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49132CA0EFC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 20:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9FFoeqac6LU0cAOpMC+vwr6Vxd1tvQybbVX/3c82f4=; b=tVzsZK7UDGw8Nc
	1vIVmmT2oXuUnZ0tkiusUMj0fEfGGF3ZloG75WsUP9aU3CU2wWDg+00qjrVzFCjd0njPRqvLzBAhd
	uw9oed/D8uq6K4RcG5zM7mU4n39OusF22PLmQz2JfqqWrPhZU6PsyWQ/uKnAUlsHSiRfE0syEodNv
	lsZpaIgbKYCUqnTMl4LL77t0gwyyJfoInl2U5ZerXnvxj1tL983lMb0Kmhe7/h+0Z5opicCKOnh/v
	ifC65Wtmtpnp5YC1amvdsvtvS08aRP3weyZ6A73HScHRKF+9691gmqvkW1RA6mLXbV+7Fpb3c0sbQ
	+d85mcejcdyxxhG+gwwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uopn8-0000000Ev6K-3orY;
	Wed, 20 Aug 2025 20:52:18 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uomDN-0000000ETLE-0Bwg
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 17:03:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9A93E460F2;
	Wed, 20 Aug 2025 17:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DC58C113CF;
	Wed, 20 Aug 2025 17:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755709388;
	bh=5ZHmymgOYeWXL2v8PEhC2ET76mFW+CcsvLg+ooMQLO0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=RHIHIadGNrUp2md1QHmXNK/JDVWUQ8OxoVvOtyK6h+OiCILwXeuAkMpbBup0R0I7F
	 mCrGfLPcjd89D/Qoa5Eebk7oe+CUw2r6gVZi+UwR08LlkZEuHgYlu3C6f3EmtX/I36
	 4L4SkW5Aq3wTK73soPUZyMHz9MgOuWfl4t1GqMrR2pOhOrk3mlES/Lw8tNhDBSHyQS
	 JRbzBcHoodVvl4gQg4uIRV6/Nva7eSMPasd8TAMsXx5LY7c8ixvmUxrWdBtr+a0nAL
	 f+7D47+SH0v3HoLZKnpXokk3RXgO221DT8cRl3XWPRIgSuEHEtcyrQp1VQUzKMZk9Q
	 NSDiyi3AUVG+A==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
In-Reply-To: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v4 0/6] arm64: qcom: allow up to 4 lanes for
 the Type-C DisplayPort Altmode
Message-Id: <175570938300.66459.13600812398405419297.b4-ty@kernel.org>
Date: Wed, 20 Aug 2025 22:33:03 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_100309_107845_226E3751 
X-CRM114-Status: UNSURE (   7.79  )
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


On Thu, 07 Aug 2025 18:33:18 +0200, Konrad Dybcio wrote:
> Register a typec mux in order to change the PHY mode on the Type-C
> mux events depending on the mode and the svid when in Altmode setup.
> 
> The DisplayPort phy should be left enabled if is still powered on
> by the DRM DisplayPort controller, so bail out until the DisplayPort
> PHY is not powered off.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch
      commit: 3bad7fe22796a420c6e16b591c37ed1bd6cc2a30
[2/6] phy: qcom: qmp-combo: Rename 'mode' to 'phy_mode'
      commit: 5daf1bbc73e249075373e030e7221f46c175e04b
[3/6] phy: qcom: qmp-combo: store DP phy power state
      commit: 86390472554b2e8fb4cba16a139cade94be58f72
[4/6] phy: qcom: qmp-combo: introduce QMPPHY_MODE
      commit: dd331112c0adaebbc8fc767fc805da4a641576db
[5/6] phy: qcom: qmp-combo: register a typec mux to change the QMPPHY_MODE
      commit: 896277138c1344cf9f5c415298f048ee29da274d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
