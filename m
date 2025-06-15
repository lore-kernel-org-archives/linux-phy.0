Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D29DEC61CE8
	for <linux-phy@archiver.kernel.org>; Sun, 15 Jun 2025 17:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IK+bkhVq3Wst1sTw0YmX6ru+vuC+LqfsYeYoq4ZOErg=; b=hrT5aAUWKgRzWZ
	cq8ykZo06tnlAWBsz8HgBZyeOiIlboYYNZOs+vTsUjM5rWyfVpfRCq2a1ZW9IN8qws1uNXQkGCcEd
	D8XBoKMYpyP0HUvRn7oVVLQsqrRHBL5dYSbyDSnFIOwLTeslY3gAMW/cqStN7KM095RfnNGCkH3/1
	WBKEXWlgV4SfwQ5Kys32eG2FbTSafSG9jHpK+4VRNpT2VUoaWGrCj3HYKo5YYY8SHYkMQXV4C1JHQ
	e4tUTlUD0/a+xuNalMokWaLYpVtHLcTZ9xLWzQmeHr4xnxRjSc7R7yw9CNfgcJxCanIHkCuEz8TIz
	s2d42tYRSvBXLGYOyauw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqjW-00000002gmS-28wa;
	Sun, 15 Jun 2025 17:01:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqb4-00000002fte-3tUo
	for linux-phy@lists.infradead.org;
	Sun, 15 Jun 2025 16:52:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5EB7661137;
	Sun, 15 Jun 2025 16:52:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8997EC4CEF1;
	Sun, 15 Jun 2025 16:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750006362;
	bh=XMEHfO8NpJNJDxf49A9byfF0rBihRzDMUh8boP0Kq0A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=oK36/PSjkrxG8EOfMVNPaCUtiPyt3ifZtN+IkUCbfXv620FHXgbVr10r8sD9GvOAJ
	 /PEmxB99ZO1DI+1AuuY8U+btN5aiPN5MIglPOkfpPN4ZxXDWl+utbmnc924Ze+sJ67
	 auc+WnBCg+KR3phBU9OyEAG+qTz2OcZ7Cx59Z3USZd27d32vDHpehQj/IczLwT34yY
	 R+NfE4HcTsljkqtTSxrKM1sH2LBo/138PprfgvRk9rXFzYGkroUN+spD4iqtMUE6c4
	 xJn185QDPN8tr7fsF2lqOoaf3FFR9nFDwyO/PQBh6eb2XfORG28Jyh5nCeBVQGNsRj
	 q9+kkDmb2/CZA==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, James.Bottomley@HansenPartnership.com, 
 martin.petersen@oracle.com, bvanassche@acm.org, andersson@kernel.org, 
 neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com, 
 dmitry.baryshkov@oss.qualcomm.com, Manivannan Sadhasivam <mani@kernel.org>, 
 Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
In-Reply-To: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
References: <20250526153821.7918-1-quic_nitirawa@quicinc.com>
Subject: Re: (subset) [PATCH V6 00/10] Refactor ufs phy powerup sequence
Message-Id: <175000635719.1180927.17273493527375634687.b4-ty@kernel.org>
Date: Sun, 15 Jun 2025 22:22:37 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
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


On Mon, 26 May 2025 21:08:11 +0530, Nitin Rawat wrote:
> In Current code regulators enable, clks enable, calibrating UFS PHY,
> start_serdes and polling PCS_ready_status are part of phy_power_on.
> 
> UFS PHY registers are retained after power collapse, meaning calibrating
> UFS PHY, start_serdes and polling PCS_ready_status can be done only when
> hba is powered_on, and not needed every time when phy_power_on is called
> during resume. Hence keep the code which enables PHY's regulators & clks
> in phy_power_on and move the rest steps into phy_calibrate function.
> 
> [...]

Applied, thanks!

[02/10] scsi: ufs: qcom: add a new phy calibrate API call
        commit: 399c75b6a9ed2fd609f9ad4c22cdd6364bc9d441
[03/10] phy: qcom-qmp-ufs: Rename qmp_ufs_enable and qmp_ufs_power_on
        commit: dbd20821946a74e803208a25dddfafe1ae2e34e6
[04/10] phy: qcom-qmp-ufs: Refactor phy_power_on and phy_calibrate callbacks
        commit: cbfd6c124f27ad2b4c0f617dc40ad8a08a063463
[05/10] phy: qcom-qmp-ufs: Refactor UFS PHY reset
        commit: d58b9ff47775042acc501d0a892af8bd08128a65
[06/10] phy: qcom-qmp-ufs: Remove qmp_ufs_com_init()
        commit: 7bcf4936aac6ec8d6fafbfd6f4f62302e5296a0d
[07/10] phy: qcom-qmp-ufs: Rename qmp_ufs_power_off
        commit: acc6b0d73d902d3296d8c77878a9b508c2c6a5bf
[08/10] phy: qcom-qmp-ufs: Remove qmp_ufs_exit() and Inline qmp_ufs_com_exit()
        commit: 7f600f0e193a6638135026c3718ac296ed3f5044
[09/10] phy: qcom-qmp-ufs: refactor qmp_ufs_power_off
        commit: a079b2d715340482e425ff136b55810ab8279800
[10/10] scsi: ufs: qcom : Refactor phy_power_on/off calls
        commit: 77d2fa54a94574f767d5fb296b6b8e011eba0c8e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
