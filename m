Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D0EED37E39
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 14:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qf6n3Ml5RluqHA14UIUGgYNsbfjbHwI4W3xOeR/Tn4Q=; b=aBP35NRXnRw1z/
	k8e1L9qqE5Bvsk8N+G/QeLTsUGgXGhKLU085bmQofhXzKl018b+88Yf+LMLxTS3T/NZxgpj62nZXM
	vWONbJhBU48g2uhTPztsK+r5oJdawJYf1/anKfCJr/BpH20YP0lVkUwqkOmMLCnw4dBL1x8+okHXk
	ZYRxK0c0ozqOYzygBLLReMZry20hOT8ULtCZrNGgrCD7teGHXGTjBLjtMfVwPMrXUvU1WNhtofI7Q
	IwMrmcYeVCSZ5x2sscz7zcT3LSdWWZs/MAaRW1ZRSh7PGHlS7VGmQq1oPS77XEjgGSdzrNCzge0vl
	1PmjU8F4N58V/TZMcbWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1Rg-00000009RQn-2LjO;
	Wed, 14 Jan 2026 14:02:00 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1Re-00000009RQE-3lUF
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 14:01:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4BCFB60121;
	Wed, 14 Jan 2026 14:01:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7CE2C16AAE;
	Wed, 14 Jan 2026 14:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768399318;
	bh=kJhvl3EkrS4B0d2VSCeSVXXCmsFOhMvFP2J20W/nJW4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=OOIhG+T8Lu31VSqPSEo81r4DzfrvCUJ8Iuj5SP8MXGkRkkM2iMy+T2o60MWfSskfR
	 RTMu8aXCJWxluNabl8JiTX6GRnxHlLnCrHBdtSiTNJL8gR7iTi+t73WbRdAtJX0p4d
	 x/gHVyGiM7ee8ffelzXQcAqRXnBa7iOXslDhBUMMvtCl+EB6XGMfTkZ48Vgz8IRANN
	 mqjTKQYHzm4LwkV4xR6y4sMB7Hwpw6Jh5wrfpZa2caA3Vav5zsTmkROQvkyl4+PTfz
	 G2c32phJuOC01ddzzZDLlgq15+GWGAiOhSoKHaq+1xtJeg+i+dgc/GqDXNL9mrE+nt
	 Wr5UCYnib6uAw==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org, 
 konradybcio@kernel.org, taniya.das@oss.qualcomm.com, 
 dmitry.baryshkov@oss.qualcomm.com, manivannan.sadhasivam@oss.qualcomm.com, 
 Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
In-Reply-To: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
Subject: Re: (subset) [PATCH V4 0/4] Add UFS support for x1e80100 SoC
Message-Id: <176839931330.937923.4419261616983851594.b4-ty@kernel.org>
Date: Wed, 14 Jan 2026 19:31:53 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Tue, 06 Jan 2026 21:12:03 +0530, Pradeep P V K wrote:
> Add UFSPHY, UFSHC compatible binding names and UFS devicetree
> enablement changes for Qualcomm x1e80100 SoC.
> 
> Changes in V4:
> - Update ufs@ with ufshc@ in SoC dtsi [Mani]
> - Retain complete change history in cover letter [Dmitry]
> - Remove "jedec,ufs-2.0" compatible from ufshc dt-bindings
>   and SoC dtsi files [Krzysztof, Mani]
> - Remove RB-by tag from Krzysztof and AB-by tag from Mani on
>   UFSHC dt-binding file as it has changes and needs re-review.
> - Add RB-by for QMP UFS PHY dt-binding [Krzysztof]
> - Add RB-by for SoC dtsi [Konrad, Abel, Taniya, Mani]
> - Add RB-by for board dts [Konrad]
> - Link to V3:
>   https://lore.kernel.org/all/0689ae93-0684-4bf8-9bce-f9f32e56fe06@oss.qualcomm.com
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP UFS PHY compatible
      commit: be9d2cf10b46bc2c177aa9cb27b71d665d1e0e7e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
