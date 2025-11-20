Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F129CF9C72
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 17:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VGhHjrg9vDp+YOse7dtKETOQZNZLcfyTsYtUNnD7gZs=; b=yxkIYI4k4OixeT
	pdUP38Dbw9nc6N2ORwRziS6PrvfATkCzgYcmzhKpbntTo+JBCbfDwAcrFQx+SXwWVj8XzH7epB31D
	ZzNmn4e9uIyctLCnECteYTdBxUkMCSH3qzFf7JpHdhPwJxa2EwCxqZDbm6zwPMjTod8gUiER2qHxK
	JCF1XUGA3hskQNYjtN1IG/0teDH3Fd+/I4FObcNyEnvSw9RwD3zyg5rP4Sf6RZgNSA0yHTC0XAc4R
	3xNyiVpajgWiL7t1cjD9eKuozRH6ubYl0KwCq1GoDPV5iGGhplnCcL9/cLKSPWoe2R24Sy3+hgSdO
	qhyDE45DecyYpqOg4y7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8C6-00000007460-2xpK;
	Thu, 20 Nov 2025 17:11:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8C4-0000000743u-1exp
	for linux-phy@lists.infradead.org;
	Thu, 20 Nov 2025 17:11:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CC62D435A5;
	Thu, 20 Nov 2025 17:11:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC1A4C4CEF1;
	Thu, 20 Nov 2025 17:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658699;
	bh=CzNgQDtqsMlCOrg+Jv4nr2hesjVeTWdR3pTTkDHKWDA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=SFR04STcUedDKoj5s2nDLfSh9lEinHLB/UuCxrmFwn5Mvg7vVNpcKxM0K64MwvFDm
	 N4scXGHWYNwe1uMlqPG7kvaJdMAuMwHWSSpvBBFKhMMEEZRWs1lgBu8Ij2YPp+BNMU
	 CeAsZ18FlTVvuClEQCLuGcvL2qcIOvjcs5tDNdNu7Z07tl3r8gb4qzc4mK1Dre4VZA
	 +pieLtevmp4YMzjI9GfMjKQUNZbmns3bRloD7M8mg1K/7V0cLmGJemtU48HQriPzUw
	 M/E9uo/QnMmvMzyj74Nu7HjuRWgRu/idiYHvCkgRCuQfWvsqnl+FPI7BinV9q074HL
	 eGa0TKSVdW7dA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251119-topic-x1e80100-hdmi-v7-0-2bee0e66cc1b@linaro.org>
References: <20251119-topic-x1e80100-hdmi-v7-0-2bee0e66cc1b@linaro.org>
Subject: Re: (subset) [PATCH v7 0/3] arm64: qcom:
 x1e78100-lenovo-thinkpad-t14s: add support for HDMI output
Message-Id: <176365869552.207696.3147796021521061532.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:41:35 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_091140_482479_C2C0F835 
X-CRM114-Status: UNSURE (   7.09  )
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


On Wed, 19 Nov 2025 09:45:39 +0100, Neil Armstrong wrote:
> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> connected to the third QMP Combo PHY 4 lanes.
> 
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 1/2 DP + 2 USB3
> - 1/2/4 DP
> - 2 USB3
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Document lanes mapping when not using in USB-C complex
      commit: 3faa2d0e794093df21c96550829d67d7d38e24bb
[2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort lanes mapping from DT
      commit: f842daf740114a8783be566219db34c6a0f1d02c

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
