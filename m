Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECC77CCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 09:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RN+wbbTNw3p+fuyPb5FdEpYkmMqGEDDTb4HuUyV+bEA=; b=ebZe2Ez36aRREH
	pLK2ewcpcXcSvy+TETInJMw1Udz2vCZy7Mv+YSlsq8v4mwrtpHHQyUgdu9r+4PdtWGkVbqeBg3hfO
	61B6eyyhngLgdoH8MUeHfnGzDwLITkE0aPe+lOWtlFTRSf93fB6qDT37dye8NH35obmxo41j1GBi7
	Cf8PPIyyXsgnnslzIn3pikj9jV+pSnQdGhTWl0qu68lOxuAYz1SKmoRslgTZ6BJq/tKOT7qGWgXCT
	SaMpBhfhF/4Np0Rr/rlg1mxoU4x6BLzlmp/poaaKd2TVV2HrYGscqtoz9IHkl+5g9BdZqAmhkYvD6
	nb/iU4LjlbBCwWOMxB+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHecL-00000002Xhw-2YGX;
	Fri, 16 Oct 2026 09:52:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHecK-00000002Xhn-1DcP
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 09:52:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B099360008;
	Fri, 16 Oct 2026 09:52:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11A011F000C4;
	Fri, 16 Oct 2026 09:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792144367;
	bh=S9qutPbcIRsUxmCjo4h9+V8s4IY3P9RUmUbWSOzj7zA=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=leqoxnEsn3QjFcjdO0gJ0pMZw1iU/iU5g+o1bqhkg788IHUpXjr1pGD/hhUoLgtNC
	 SB3EX13bmMngPwVi+7WcQvvckj3V04vFUFnmh6/FDjr6REr6wd5gKljlpXaVkLvQj6
	 NFX3g5Nd9Rxh8rVAQKwhsNoPmLzYpddljp72bDUCRbVUOBhcJLYZIYLmYNEirc7ewi
	 FHG+uvyGitTRqBHO3QRIbF2SWFR4+IDbUzqvQYqa6MFfpEbUz1/LEMfYRaAv44Ws9c
	 w+OIXOZnVi3Op/kZ5lrWM3asUvZhDzNaBAx+PzcfeM9WkXvSIJ2ZcDsAWr6jF8Rz70
	 nDgQlWDjktdPg==
MIME-Version: 1.0
Subject: Re: [PATCH v4 5/5] phy: qcom-qmp-ufs: Add Glymur support
From: Manivannan Sadhasivam <mani@kernel.org>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@sandisk.com>, Bart Van Assche <bvanassche@acm.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>, Abel Vesa <abelvesa@kernel.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com, 
 sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261009-glymur_ufs_qcb_enablement-v4-5-9a6ce83195b7@oss.qualcomm.com>
References: <20261009-glymur_ufs_qcb_enablement-v4-0-9a6ce83195b7@oss.qualcomm.com>
 <20261009-glymur_ufs_qcb_enablement-v4-5-9a6ce83195b7@oss.qualcomm.com>
Date: Fri, 16 Oct 2026 15:22:33 +0530
Message-Id: <179214435398.106618.10901078741061119278.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=653; i=mani@kernel.org;
 h=from:subject:message-id; bh=4m0G5Fxd7cEt9q2bJP/piomErw6XTud4jUu6ChyyiHc=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq0fPlItkYKusz+VRokfHGafUEG5kcst8lxkBry
 2INrDXc+MeJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCatHz5QAKCRBVnxHm/pHO
 9UlsB/93uTUB7pO9AQnLoeG9/we3xioUjw8aHx1Erb9VJTwehBSjCApaHinNikT4NqtncxFeqwz
 N9Mz7HST615kmLPHuvN5/1QYRFN3QmzXPWR/KOe4B/ysV4siNDmL+LUs0rPmscpYnEh5fibt5C3
 3OQSvD4ND+oEMoMxhhfuxcyPXVnGod9WS8lfSI+ofwsGnrug0E26/5Zqw2Jj1iQZKW/35GxRvy6
 grzKdo/E9uX2g0QJKREdZdlv0MBHL5dh7oWvwG5fhweIaWnEBJTc/hhVgz476KXaw8u7lEgRhVc
 kVLQC6fEfDHBciykF7POskcp8U4SpStbQWprFITTNm/fc0Jp
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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

On 2026-10-09 16:05 +0530, Pradeep P V K wrote:
> Add the init sequence tables and config for the UFS QMP phy found in
> the Glymur SoC.
> 
> Similar to SM8750, the QSERDES RX and TX register offsets for
> glymur SoC follow the v7 register layout, while the remaining
> (PCS, MPHY base) register offsets follow v6 layout. Update the
> register layouts accordingly.
> 
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
