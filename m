Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFD13F4612E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 14:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6lDPmELEcGEVcfRiCiy0uGKCEAIejeurODl/5DwSNg=; b=rTVZikBeu25rQr
	USHtNLbCwEeO79hEjbZLVCFvkMyk79cGWvNTMNekioTp5BDRZcL3vEY2CwoB2q6a6Y0oy6np6qzmo
	zSubebtnxQ9Wyj+Edb/+KkpOknbJdDC+mf3UwMg9T8gziF/X6kETeUqk+4N5SWtE9DVjVl509yKHF
	KQJ1rhLsRcFpbBXLu6rrOTnqgnobVUy1JQPEFsHLHuxnK1B5xxTnIcwl8uImAVg/dYZtfKg5T/yDg
	pjghEs7XSWPdB89w3YiK+64uzBvd49NnoPuXqeS5V+qqpYEE9uX00u1zhupP12Y40Anqud6CkiXCu
	w5I4fOnTRH9FS79BgyFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4gQb-0000000GwQc-1oN2;
	Mon, 23 Mar 2026 14:38:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4gQa-0000000GwQJ-1uZZ
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 14:38:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A9AF5600C4;
	Mon, 23 Mar 2026 14:38:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F4089C2BCB4;
	Mon, 23 Mar 2026 14:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774276727;
	bh=JxaE39HjMIayZ/X1bMIZ/1rC/oYGDrYhGiAgLFqCCiU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mF77bKymDbspYgN8/c/4wnJmzljsfMkFM8l3HXj6zPIAElLoIMqhDpZce5HAXGyiQ
	 hV3cZnt2MYdsY7eAqarYwan/z3F+y2PoEptMYb+7vw94errR9UIibpWJn8z17rL/oN
	 cCO2uizAnmAcNBEos7NYPUarP/Z5EkuBaXwf7FB8RNUPRqZ4aG1awjLT+5ad6WB9/J
	 1a7t7iD9Ceijg4REgv3+u/atJjYPd+35I2im2t4sXWfJDtcnhH/Clg9v09byq9ntOr
	 FRiA541FZ7hq/SeEfIrwEbeR1GJnFKn65F7sTSPS5xUhuSc+KJ+m/LbZuYAVqRYjqt
	 JkGhdazSAZFdA==
From: Bjorn Andersson <andersson@kernel.org>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	martin.petersen@oracle.com,
	konradybcio@kernel.org,
	taniya.das@oss.qualcomm.com,
	dmitry.baryshkov@oss.qualcomm.com,
	manivannan.sadhasivam@oss.qualcomm.com,
	Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	nitin.rawat@oss.qualcomm.com
Subject: Re: (subset) [PATCH V5 0/3] Add UFS support for x1e80100 SoC
Date: Mon, 23 Mar 2026 09:38:27 -0500
Message-ID: <177427670519.11515.12330098471987589032.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260211132926.3716716-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260211132926.3716716-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
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


On Wed, 11 Feb 2026 18:59:23 +0530, Pradeep P V K wrote:
> Add UFSPHY, UFSHC compatible binding names and UFS devicetree
> enablement changes for Qualcomm x1e80100 SoC.
> 
> Changes in V5:
> - Rebased on linux-next (next-20260210) to resolve merge conflicts.
> - Add RB-by for UFSHC dt-binding [Krzysztof]
> - Add AB-by for UFSHC dt-binding [Mani]
> - Add RB-by for SoC dtsi [Konrad, Abel, Taniya, Mani]
> - Add RB-by for board dts [Konrad, Mani]
> - Link to V4:
>   https://lore.kernel.org/all/20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
      commit: 23c6e96c5b60c2725db955b7ba6bf80609a7256d
[3/3] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
      commit: 5b1a4acc08e57712e85f9c8927b96a2843645f08

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
