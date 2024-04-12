Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90A00C04FF6
	for <linux-phy@archiver.kernel.org>; Fri, 12 Apr 2024 11:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tl+YSRQF+ZZoEYZ/8uAEpRS0g0T4OUEYKbemaEg590w=; b=Cq2/21i4mEIm2v
	FjT9eabmX25X1ItK411LJQwRAAkuU+DPbYbrdFgTzvy6k473I38non0s7msIw53Esgr/YR9BqeoXR
	HXqF7gKH0/ZzJLsOCI+76ri45Cny3xnrSlEOr+7vsRZnmRODvu4l8cILtgLMbwMnunQo4H3darvky
	1FttfYTcsjCvXFCt79STpjuegND6xwXExHO8JPAOuai0EVOAjbtYoSiGXnI5mgchDPGIN7USE/4ra
	S+S+qBoqhlfi0O3LOxPfPAabium4q6uNpQnV51gcMAfEsP5QnTuJSokQc/IbWwWvthL/UR4x0lff3
	UthPjlGiyDwsOFRTf0Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvFBy-0000000Gx74-3p5o;
	Fri, 12 Apr 2024 11:35:38 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvFBt-0000000Gx0x-3tUL
	for linux-phy@lists.infradead.org;
	Fri, 12 Apr 2024 11:35:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3C663CE38B2;
	Fri, 12 Apr 2024 11:35:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E685C2BD10;
	Fri, 12 Apr 2024 11:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712921730;
	bh=y5TAKF6PSxBn9qjkmf3G8Xrddl8HmQ3V5U+f22zFewU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=hrlXkGq9nh2VLQbtmqg2koLxXrvG0CY+ZLe7qWB/5ntrzSuwz6zyj+xFNSUC/xd60
	 nLpehDcO0HdjSAjE9GbHDuDemh6T7cT+2RwgtEASJSrItj7+9Z4I04Hq9UodNu+fjo
	 igSk0mOp0Vu8PUNOE4FEfTDA7G1z2i8FrVZqSunCBpaWpuniOwIUSOzGeLaOZnh2JO
	 yNbI4rv6FzbXB3it9w5Vmyl4UWmOebTVX2u+Vvbg7C78bj4HNRCY/x+TkaHgnb/On/
	 MAD/bqhgWMyPrbbQHnbfe340KOiWOJdtxGDTvRfKE8pTArf7ku24OOnqPfn69INMJ9
	 PQ9ga8g1tu0rg==
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20240408093023.506-1-johan+linaro@kernel.org>
References: <20240408093023.506-1-johan+linaro@kernel.org>
Subject: Re: [PATCH] phy: qcom: qmp-combo: fix VCO div offset on v5_5nm and
 v6
Message-Id: <171292172572.599648.13799054915753507931.b4-ty@kernel.org>
Date: Fri, 12 Apr 2024 17:05:25 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_043534_390720_EB67A1A2 
X-CRM114-Status: UNSURE (   6.63  )
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


On Mon, 08 Apr 2024 11:30:23 +0200, Johan Hovold wrote:
> Commit 5abed58a8bde ("phy: qcom: qmp-combo: Fix VCO div offset on v3")
> fixed a regression introduced in 6.5 by making sure that the correct
> offset is used for the DP_PHY_VCO_DIV register on v3 hardware.
> 
> Unfortunately, that fix instead broke DisplayPort on v5_5nm and v6
> hardware as it failed to add the corresponding offsets also to those
> register tables.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: qmp-combo: fix VCO div offset on v5_5nm and v6
      commit: 025a6f7448f7bb5f4fceb62498ee33d89ae266bb

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
