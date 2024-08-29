Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC6C5C87FD3
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 19:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PVyLIMOFWSChVhLsCWDyM7s+l+4vVCnOBYnyhbdWOU=; b=drOg1/lR4kmEuX
	eG+l5K7V+MP76tkkgvdync2iHkBs+lzy0to/Ve6sgH1x6ZJRYx25nejQKf6LNGgpgLSy+FTDi5r1U
	x1RyZOhuRy450pbLbUVDABOoVY7ixpG8mpyMAzpv+H6CWf3adrOzkkP9K1dr+j2gQiSCL0ad/mI20
	OfsLr/xFnxHBLcutfBZmGJdVwtdGuuUcWxVIWGiWXbZn7DMxid7vOH2vXLabklVo/O6B+cDyiY+6Z
	W5SIxVJH648xabX1GSRO0FV1WfFI6khkHhhkPAgD3FszZmFg2aTDpNG4EjgO0V4HCdVjqARH+Gve5
	EM1sfe71zf0eiyMAh+Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjkUQ-00000003IUh-17iO;
	Thu, 29 Aug 2024 19:07:26 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjkSq-00000003IAb-0QdV
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 19:05:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4F36EA429B7;
	Thu, 29 Aug 2024 19:05:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8F0CC4CEC6;
	Thu, 29 Aug 2024 19:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724958346;
	bh=6VNX1ZO295qYsxEjzyqjGbUXtYFkzUXheM0fF+c+nfI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=k8FUDsFhUNYb+zvQpP/FYRheP4rphUgNqwkLiqz7RZjlLU8YifZ9mQ84zu0yfBRAJ
	 puqGlANAGw+3Wm1pD1UyHwfuZq1cqbrf8hNZY3d2ArrhRrhRj1/sACV0BVxiqQMu8d
	 WJtsbYAqzCinEK6pDpailWBj4IZdGU/03u0fUVhG2HFvF5qLndSGb7Ktk4E/nf/MNl
	 VKHe1ICXQm8ckXKSA3uIP/L+Ju9p9WPf0ID2pmrGQGJuZuZ56uZpidASqR8sn7dY1C
	 E5q8f22T3U856BI8HHGz8LPbAOkb9yU+snP1E0mPpfH4UPTkhEFXHTITjHd771GP++
	 9FJ3UAvPNXFbA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>
In-Reply-To: <20240805-phy-qcom-qmp-pcie-write-all-tbls-second-port-v3-1-6967c6bf61d1@linaro.org>
References: <20240805-phy-qcom-qmp-pcie-write-all-tbls-second-port-v3-1-6967c6bf61d1@linaro.org>
Subject: Re: [PATCH v3] phy: qcom: qmp-pcie: Configure all tables on port B
 PHY
Message-Id: <172495834439.405683.7952114059467744681.b4-ty@kernel.org>
Date: Fri, 30 Aug 2024 00:35:44 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_120548_285470_0D2AA0D3 
X-CRM114-Status: UNSURE (   5.38  )
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


On Mon, 05 Aug 2024 19:45:18 +0300, Abel Vesa wrote:
> Currently, only the RX and TX tables are written to the second PHY
> (port B) when the 4-lanes mode is configured, but according to Qualcomm
> internal documentation, the pcs, pcs_misc, serdes and ln_shrd tables need
> to be written as well.
> 
> 

Applied, thanks!

[1/1] phy: qcom: qmp-pcie: Configure all tables on port B PHY
      commit: 00c5f32283f377ec60870bccbd518d9feb7fbc52

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
