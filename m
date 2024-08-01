Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C669C52D6F
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 06:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BakG34Mj2dgBfL86cVtxSdifkUieZ0/V1XjhM1fWh0c=; b=RLtLyUESR1OM0d
	i/h3AFjOxiWg81zdVH3gnXMEFdF1N8alT7f96wOJs0yHGjp6ghEUAEK4gMzu/7EyJpEN/9Vfq4uF/
	wR3AoosllwsaO2nJJfab3VKqrj0HFWGdly+j/5eVwa0og9Uanrow7jsrX7geRpR1XNczBPQ0rPjml
	9Soq/2f/T8SD35HpnX7lJa/dPR7ZQyhqTAb9x6viTjqi6tK1udsHUOgPgYCKNNXxlAsguhVZH3cbc
	cjLBekR1suL6XnGhySdnHZdbyqWSm3amYGN6EGij175OJGr2GH52NtPoTOa+AfWL7VeV8rztTKn4b
	SxKKRt4uFrFfng6TE1Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPix-000000045Im-2xkc;
	Thu, 01 Aug 2024 06:55:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZPid-000000045CA-1fMu
	for linux-phy@lists.infradead.org;
	Thu, 01 Aug 2024 06:55:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E253A62381;
	Thu,  1 Aug 2024 06:55:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE8E0C4AF09;
	Thu,  1 Aug 2024 06:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722495322;
	bh=OudlCk6ZCHSbP8VDOgLZcY6M2eIeDTLJfMtcwrWBJ5Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=d2d6q4kMLEJ1TUmfGxRj4r1ltVks3/KQsw39C2US6QNaXxSn4T5JrD8sWOXZw0nHn
	 Y0XVA+he4bJcYpWJ23QURc/wamYsIcmsntJdP7f6efQ7ah0AxWAMyZrjkTKETEK+vK
	 G6pIrTY0GtDp7pDgUigR8GK5h3xvHfF9rnoXtp8e/jDmyHvYSC/eYSlrUpBHHxCpUY
	 76wPMhAl1w4jxhvApoBpdGgNO3dW63HFm40FQlhaNmsK9emO/nSafFUkIe1usbP078
	 W/nrk1/KnSanbFB4R4C8EKWUQv2IH6nBzhaI4M2ott5L3K/14FcuisOlz/W538re8N
	 RL8fdu555AV4w==
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: kishon@kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dmitry.baryshkov@linaro.org
In-Reply-To: <20240731152548.102987-1-manivannan.sadhasivam@linaro.org>
References: <20240731152548.102987-1-manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v3] phy: qcom: qmp: Add debug prints for register
 writes
Message-Id: <172249532035.256913.2685367794999812971.b4-ty@kernel.org>
Date: Thu, 01 Aug 2024 12:25:20 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_235523_513999_AAA81897 
X-CRM114-Status: UNSURE (   4.94  )
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


On Wed, 31 Jul 2024 20:55:48 +0530, Manivannan Sadhasivam wrote:
> These register prints are useful to validate the init sequence against the
> Qcom internal documentation and also to share with the Qcom hw engineers to
> debug issues related to PHY.
> 
> Sample debug prints:
> 
> qcom-qmp-pcie-phy 1c0e000.phy: Writing Reg: QSERDES_V5_COM_SYSCLK_EN_SEL Offset: 0x0094 Val: 0xd9
> qcom-qmp-pcie-phy 1c0e000.phy: Writing Reg: QSERDES_V5_COM_HSCLK_SEL Offset: 0x0158 Val: 0x11
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: qmp: Add debug prints for register writes
      commit: 4e92d504475ea5841716ad775f412342520a3d26

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
