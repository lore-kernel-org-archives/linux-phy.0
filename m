Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7409EC54EBE
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 18:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyew6tD8gIRIci+l5BJe2xRO/Z9QYCaYqjewQmQbWfc=; b=34AjddmaWXYxAG
	NTGmn5N85PLrtfFzJ92IgyngLL+5no3hS6leGyokXsEo3dg1eYDcrEgkFjUYlRyS49WGJNG5ZAXbo
	BjGv+yU+YEhwyikTL8qQx8sPq/z0aB5mPeAv8Fr9jOEWYQxHxqZGbO1o1oryunrW/rKjkBCPkMkNq
	8orctIu/YAv60RtxUExJ63jS1FZf6H0S8wpKJIL+wUOkD2DmsOElZ9r33cMCkFHfTGAh+gcfX4EqD
	PenAifM6e2KorNiyt8BqCm59LME59y4O+LbcRdZ11JA45gM1kAaFGm3Byc69HaTP4+KCpg+Z2MK4k
	+FUn8r9EfPESTPnbNOtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG22x-00GEre-59; Thu, 12 Jan 2023 18:11:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG22r-00GEpA-8a
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 18:11:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D8CEE6205E;
	Thu, 12 Jan 2023 18:11:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D532C433EF;
	Thu, 12 Jan 2023 18:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673547078;
	bh=e9yPK7TZJvP1zoLJQk/+QeUmK3azBWzZaBFbPTCZohg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ooxc0flHYymtC64vxIBgO57px1OutEmc0gG+ScIIm2Gm0ibgCfNM4TZIniIQVwvRd
	 HFYWodA9eNtwklxbIa35Z80q6587epj1OtdIDUrT2Qzb8NXT45TfhHivKubo7Y40Ko
	 6CmUP9CQ1Kx3K4vT0lgslAWT1OiuDRMTAwmedVe6IQc674QKmbVGUagVgkQZdmWZX/
	 R6dKWNOQPDW6eO5nBFgqQZx+bHaIht/Yz1r94xK2ZyWnWFa4OL0mURRsLzhGlcCXtA
	 9gQjBRo2Q6xUKGraDc2d79ZWErpp6kMk0Zy9fgbMCnPzJLMdBVOitV5C/Hkq7dj6Dw
	 zumkcz+vgp8xA==
Date: Thu, 12 Jan 2023 23:41:13 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
	quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org, ahalaney@redhat.com,
	abel.vesa@linaro.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
	bvanassche@acm.org
Subject: Re: [PATCH v5 00/23] ufs: qcom: Add HS-G4 support
Message-ID: <Y8BNQZ/CFljuxsSL@matsya>
References: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221222141001.54849-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_101121_393421_0D3FBF86 
X-CRM114-Status: GOOD (  17.01  )
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

On 22-12-22, 19:39, Manivannan Sadhasivam wrote:
> Hello,
> 
> This series adds HS-G4 support to the Qcom UFS driver and PHY driver.
> The newer Qcom platforms support configuring the UFS controller and PHY
> in dual gears (i.e., controller/PHY can be configured to run in two gear
> speeds). This is accomplished by adding two different PHY init sequences
> to the PHY driver and the UFS driver requesting the one that's required
> based on the platform configuration.
> 
> Initially the ufs-qcom driver will use the default gear G2 for enumerating
> the UFS device. Afer enumeration, the max gear supported by both the
> controller and device would be found out and that will be used thereafter.
> But for using the max gear after enumeration, the ufs-qcom driver requires
> the UFS device to be reinitialized. For this purpose, a separate quirk has
> been introduced in the UFS core along with a callback and those will be used
> by the ufs-qcom driver.

The series lgtm. This fails for me to apply though due to other patches
I have picked up.

Can you please rebase the phy patches and send those 

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
