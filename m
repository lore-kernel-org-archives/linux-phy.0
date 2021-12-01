Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14A93C4332F
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 07:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NYF9+Yz2X+2eYJ1w4xM/6yOBFoeVd635Knjt6mzfPMk=; b=quZizZa1ATSue7
	CKXNxVbkZwb8dmRd+/HjyKQiCPbDL6Uk9DrKlJ9HR9qmZwctCG3Rg34Oep3hku4r64UXvBDOMbzNC
	6KSeq5uEnOCPgQqFm0JWaEI3v6WPKDLl0lYdi1cH/5Gl4dbGU2g3VhO0ldpxG8o5waRgeq7nfRaT2
	zdGyDmEm4NQPDNolHuyW4T/Upf2+LYXyk0D/UxNZRFMpptiao50/wtCB5c00HO7M9gDAqPArrAGQy
	Ll55oK74OSXfDCUw3VO+u0W43L/61o6Sp0FEpzyrL0MPc4zDoPpwXM7F94m5Ug4y+qAwsRfiQ64GU
	rSQbcA+GZ6aTYFvqwVhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msKIg-007idJ-Fz; Wed, 01 Dec 2021 07:45:10 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msKIe-007ick-QX
 for linux-phy@lists.infradead.org; Wed, 01 Dec 2021 07:45:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7DA6BB81DBD;
 Wed,  1 Dec 2021 07:45:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C5A9C53FCC;
 Wed,  1 Dec 2021 07:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638344706;
 bh=OH2rEpGPL9jDaE26jPFWGFb1qKd2RjGNeO1dPGYzF9g=;
 h=From:To:Cc:Subject:Date:From;
 b=hg/BrIUBlR2QkSkQzQzzYFobCtPBhuAi5gpAFIRD2oCyDIbXzU+Wi+lz004uSpigF
 xDUOCGio3ydiWV/6j4SwFlNp5XTvVgWX8hyctLD+yh/ufAs/Qgrj45rdhPD4dDOQLn
 L+5VcZ1CPIHY/MJRhjCVRGdpZ0VhSo9SOrHZS9hGb2NbVB/F64kB9oVNwsAnAH3Kxq
 xJH8VxfKtZ+3vlzDhc4FifVYpbLqkmXbtT1Nx4+QckCdpJ8CLJ5h6jM7BKyCLvUAIp
 jAXsv8TXC+ZBupwiuUwz29rBO/gex+m1xu/ykELnVWY7QMJTdq8rKL+BjNshUcyfIn
 GpE0p/M5S9row==
From: Vinod Koul <vkoul@kernel.org>
To: "Martin K. Petersen" <martin.petersen@oracle.com>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] scsi|phy: Add SM8450 UFS & Phy support
Date: Wed,  1 Dec 2021 13:14:53 +0530
Message-Id: <20211201074456.3969849-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_234509_023197_27618B61 
X-CRM114-Status: UNSURE (   7.04  )
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

Add the binding documentation for ufs SM8450 compatible, phy compatible and
SM8450 UFS QMP Phy support.

Vinod Koul (3):
  scsi: ufs: dt-bindings: Add SM8450 compatible strings
  dt-bindings: phy: qcom,qmp: Add SM8450 UFS phy compatible
  phy: qcom-qmp: Add SM8450 UFS QMP Phy

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  1 +
 .../devicetree/bindings/ufs/ufshcd-pltfrm.txt |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp.c           | 32 +++++++++++++++++++
 3 files changed, 34 insertions(+)

-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
