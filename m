Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C24FDC369A2
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 07:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RXTy4BDhk1lnNO51aoQbORpIOSh9qRHla2BbPBaTDig=; b=EKfLTJscz/je8w
	sX8nIFTtmc1FwlrwmP0WwjxM5wKnxfvFdHKG5/0kIQSuiefmwlSamuCdKskivN0dxeFXi/VU4tmQl
	orftihwtHuHaTpDQEmeJRnRxORr0i+okXsAp3bJ3E01l1o7VHDnGgeXAXPvFDllFRbaC9PoDbPKTa
	o4MhgRKfQHemgYgev1V/FWcE88tUcnb9IyxQwVDk5e0DbvatiLb/9qmtMaJJWHIzsUeu6vEZ38iEw
	3IidFXtZ7z2Ggwl7iuQ8PyAAVFPAp+/Sggwj4EVMOQmcYDHUK4OunmPyzh8Y5srFExZc2ucf7r5Yw
	sR4pBy2SyVR1ENyUCRGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38qm-0000000Csak-2AF5;
	Fri, 11 Apr 2025 07:30:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38ph-0000000CrsO-0m3v
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 07:29:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 89AA161135;
	Fri, 11 Apr 2025 07:29:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76DDCC4CEE2;
	Fri, 11 Apr 2025 07:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744356588;
	bh=FpvFJBCNZeQwsrZwlHDgycSPFQVP2F3VGtux5Rvt/7g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X7KDETyqBKkomQxqCqCT5fjZcfO0jb23vcPrDVG2sfYqceJ+FujzpC3NdTw+6+eH8
	 ymkaW9HwrpugRm1tkoiu4yyUCbdE6FFc9uyLC0Ghx+MzXCJ+yIldW9qrRB5ZQGc6cg
	 dTrVb61IvUc7ne+xSt6VbTT+bKA4Q6v6m1795KE38u8ULO4YsP9VGBOAFtcximuSaZ
	 ds4phx3rmrS8DodJf1vyl/Q4qBfPbu2EnvZX2GWhDM7BPZ37w3ljtnP/Grsp9trsg+
	 xCYkh7D5KkMbLl+Ao0NYtw6nK6MpFesNfCjGTR8zzzdJ/vbQnezh9J8wofR6ynMDVQ
	 ebSTpatkqc3IQ==
Date: Fri, 11 Apr 2025 12:59:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Wenbin Yao <quic_wenbyao@quicinc.com>
Cc: kishon@kernel.org, p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org,
	abel.vesa@linaro.org, quic_qianyu@quicinc.com,
	neil.armstrong@linaro.org, manivannan.sadhasivam@linaro.org,
	quic_devipriy@quicinc.com, konrad.dybcio@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 0/2] phy: qcom: qmp-pcie: Add PCIe PHY no_csr reset
 support
Message-ID: <Z/jE6FzW4MM98hgv@vaman>
References: <20250319094544.3980357-1-quic_wenbyao@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250319094544.3980357-1-quic_wenbyao@quicinc.com>
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

On 19-03-25, 17:45, Wenbin Yao wrote:
> The series aims to skip phy register programming and drive PCIe PHY with
> register setting programmed in bootloader by simply toggling no_csr reset,
> which once togglled, PHY hardware will be reset while PHY registers are
> retained.
> 
> First, determine whether PHY setting can be skipped by checking
> QPHY_START_CTRL register and the existence of nocsr reset. If it is
> programmed and no_csr reset is supported, do no_csr reset and skip BCR
> reset which will reset entire PHY.
> 
> This series also remove has_nocsr_reset flag in qmp_phy_cfg structure and
> decide whether the PHY supports nocsr reset by checking the existence of
> nocsr reset in device tree.
> 
> The series are tested on X1E80100-QCP and HDK8550.
> 
> The commit messages of this patchset have been modified based on comments
> and suggestions.

This does not apply for me on phy/next, pls rebase and resend

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
