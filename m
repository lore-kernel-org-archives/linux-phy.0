Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D5760A5BC9
	for <linux-phy@archiver.kernel.org>; Tue, 17 Nov 2026 01:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xubaeQOy;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=hwjZyrOs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0Ljcvas4ncC5u/P4k5x+1z85M4U38ShlOoW7HcA4ejU=; b=xubaeQOy3FcX23DTK9Tk4uX0JT
	0HBsNEGWJ6Af+xPEfrdjrVPQ/Q2tCIL2hqiOQQ67uegoHfGOaMyT1tyboSMc1fA3M7e5EMNtqKAZ7
	VKSnnDUTw8Qv8UD6jJs74qcxQ31ONvOsMwOODJkIhFcuZJl/TXmpDBDitqjGKhRJ5eMtoOk0upbIR
	eJJDC+upZFGhFeMpYJqQyAyuJjxKCBMPFGib8VixKEWNYfcroZqxD0R8heWEmdn7XGlcawqsP7HED
	0BJedM++W6CdS/AxWD/y72fNOUqryZ2y/Fv4UHmMJSFnvOz7YYgZ6C66unhuL4LP5Uo7TFPSu7AKI
	Pn/1vGlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT7da-00000004HaI-2AtN;
	Tue, 17 Nov 2026 01:05:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xT7dZ-00000004HZx-2cDo
	for linux-phy@lists.infradead.org;
	Tue, 17 Nov 2026 01:05:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AF38461CCC;
	Tue, 17 Nov 2026 01:05:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 807481F000C8;
	Tue, 17 Nov 2026 01:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794877528;
	bh=/UkWV9wiljkzpRUh8n4QsLNGR9pWBAR9Sxb+kw79GmM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=hwjZyrOs6yAoRkGGPgNJEV0zHRJ3l1a8JZxCQxZ1fZnf6bAagYd5S4W8mxpfpLz26
	 qBzpMhgnzP84EpVDOzE0bSN1uMIXepLYZqXU7gqGOhTNkk9RzINK3DqE93WDgnwBpL
	 T70W70hF/uCi5obVNYx3IwKNPHLikZxAD4xjzTRUhHxTdo2m0IomZaq9c4rdthrilo
	 1NVKz3UOXSkUuNJXznHRHcXQBlllKNC3DbPMPsAfEiY+ej29J0SpI/DFgfe3nrmOqX
	 unQAjP0iwH5yorg8KMsj5oAhNjH/AA9H7jXi8OPmuhnA5zehYCAiPGbdbGvQbb/37y
	 Byd0vv9RPhVZw==
From: Bjorn Andersson <andersson@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@sandisk.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	gopikrishna.garmidi@oss.qualcomm.com,
	jagadeesh.kona@oss.qualcomm.com,
	Abel Vesa <abel.vesa@oss.qualcomm.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	nitin.rawat@oss.qualcomm.com,
	sibi.sankar@oss.qualcomm.com,
	Taniya Das <taniya.das@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v5 0/3] Add UFS support for Glymur Qualcomm SoC
Date: Mon, 16 Nov 2026 19:04:54 -0600
Message-ID: <179487749333.432567.15654163830275784357.b4-ty@b4>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261028-glymur_ufs_qcb_enablement-v5-0-09cda5e3bab3@oss.qualcomm.com>
References: <20261028-glymur_ufs_qcb_enablement-v5-0-09cda5e3bab3@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Wed, 28 Oct 2026 17:54:45 +0530, Pradeep P V K wrote:
> This series adds the device tree support for the UFS PHY and UFS
> Host Controller, along with the required PHY driver updates to
> enable UFS support on the Glymur Qualcomm platform.

Applied, thanks!

[1/3] arm64: dts: qcom: glymur: Add UFS nodes
      commit: 6de5a900a65d8db587ee14ca9f2fb0b57ec094ed
[2/3] arm64: dts: qcom: glymur-qcb: Enable UFS
      commit: f05e50b7daec3b6ee914d4aed63e7fd145825f5c

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
