Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADA72C352A1
	for <linux-phy@archiver.kernel.org>; Tue,  6 Dec 2022 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kpjjwDK+SNprlkM0WVkxVssGfxnEcr9eCID4my4SgI=; b=A2FpSQYun+o0Y0
	ap8fYtMfs3hlhVE1Evbn2eZJ8ZFMwFQSxQtpyBqWJq4c19Af0zmJF4nRYpaJByF7euvG+0CLv+NZf
	ObXhfXweqZk6vS1hmm7Eiek4LCT/gxnh8ePjjPIaR/GpsZD0MEI5mlwLkIZpvrWj53QK993RyLolj
	8rjx6qENYEeI9OyTcO9n+6SjGq+8r0Z2vL+6NlqMm1DfBX0cRG/QmBe++SS3a/PzYDTSZZY+d7xZT
	Anq7dp0rssUR1u7n1dZ75qBwMlQtaJZrBR1oP1X3LGG5xcSy4yDVZmYoFai/4on6aRfTJU5osOHM2
	KXtfGqpdZSIM1/wOy/Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2deD-000jb4-2t; Tue, 06 Dec 2022 19:30:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2cXd-00HEM0-VN
	for linux-phy@lists.infradead.org; Tue, 06 Dec 2022 18:19:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 544A8616D1;
	Tue,  6 Dec 2022 18:19:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDEF4C433D6;
	Tue,  6 Dec 2022 18:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670350780;
	bh=5IIMsF3hyMhRWR1C0sOBc5Q+GX2fXKnSorHbhuPPsrA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Z+/luLFArmMBihoJ/T5ti21pasRUOs7wlBPKIOKYVSJobl4pfhykrsSYe3DPdLDjQ
	 SvEOOaxHxchf7hKOhXAR9brEb14N5TM6laHnrhGWPY/usdeHoOx19dhjvoKtie/1Bx
	 Oie/lBe4a24l/2ErWyfe1MScQBCfKPlJTahnk2ciOJPs+viDvxUiMTqAplLxVrX8dv
	 4+3ING3BhjEY3JvWV1f9BROnsAw89WFSvneZahvjQGaLh40M7r797C9pCMIZfNX+HF
	 F1D9Gtl+qX95viCm2mILsoY0/2WfNYvekVW2hH8yVEZ8UFD9rpzTUBgr3IU8O4jpyE
	 FQRguYePYm3Sg==
From: Bjorn Andersson <andersson@kernel.org>
To: robh+dt@kernel.org,
	konrad.dybcio@somainline.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kishon@kernel.org,
	dmitry.baryshkov@linaro.org,
	devicetree@vger.kernel.org,
	Christian Marangi <ansuelsmth@gmail.com>,
	Andy Gross <agross@kernel.org>,
	vkoul@kernel.org,
	linux-phy@lists.infradead.org
Cc: robimarko@gmail.com
Subject: Re: (subset) [PATCH 1/2] phy: qcom-qmp-pcie: split pcs_misc init cfg for ipq8074 pcs table
Date: Tue,  6 Dec 2022 12:18:46 -0600
Message-Id: <167035076325.3155086.2621246704414752041.b4-ty@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221103212125.17156-1-ansuelsmth@gmail.com>
References: <20221103212125.17156-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_101942_065663_F0366299 
X-CRM114-Status: UNSURE (   9.31  )
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

On Thu, 3 Nov 2022 22:21:24 +0100, Christian Marangi wrote:
> Commit af6643242d3a ("phy: qcom-qmp-pcie: split pcs_misc region for ipq6018
> pcie gen3") reworked the pcs regs values and removed the 0x400 offset
> for each pcs_misc regs.
> 
> This change caused the malfunction of ipq8074 downstream since it still
> has the legacy pcs table where pcs_misc are not placed on a different
> table and instead put together assuming the offset of 0x400 for the
> related pcs_misc regs.
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: qcom: ipq6018: improve pcie phy pcs reg table
      commit: 08f399a818b0eff552b1f23c3171950a58aea78f

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
