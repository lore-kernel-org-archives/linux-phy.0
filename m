Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2EB2C47088
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 17:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7M4YNmSIUzr2RFVuUbM/aJF8/gm06JGAPGQBn1+PJyo=; b=fRX5OyazgnFt30
	A0aYBLQinXSGQgIRu2FYTyO8bPW3vjY4QTvSOcPuetuTIyAwbt4k9dzL3+2k4BIxltA5iwB7iNKwM
	iAJ9710wWYFi5UBwk+WFatYSzGBcOa7gfRQY/z1M7HoVs+n3jiVWJvJnCcGJSpbCU2aGb3Zj1RhA7
	W5VX3FtRq4s5OWpFFb8Sn5gjYMm9qz+6+zBFELRlwgCKP8UO6ajdY7rwPhjRA3qiLjfNqQHuFyMQh
	rUaELCW42r8PEJ57QFInzZUONrIz4arSweDAuaKnXvz5UM4WBX5s3u+7DHWJsXxcAdJvbOZym8fU8
	6aK/Uf5FkQJ2i91Aa0OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nc0-0099Fw-RK; Thu, 01 Dec 2022 17:44:40 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0nb7-0098YA-1j
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 17:43:46 +0000
Received: by mail-pj1-x1036.google.com with SMTP id o12so2509981pjo.4
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 09:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BpBie4jkW/BfxvQG7eHd3js6+LWawB9Le/asGO1bMFA=;
        b=UCOwgQt8RZigkWNgSd1ke+sJbq8LSwRBcqZB8crZW/+D3bvgWNt4ttG8AdBYOqpVtc
         n4N29Eo3116K73DwQjoSmAP49oYkVYTOE3mCM3/O+BXc6YPjvOQjduuPiNN9mLboIuse
         NNnX7dpqmBfuLMlOtIV5+TGEqQ1puds6oF9YDHp5NK9pkZMhDAHkL1hkWTcSCiCnMsXC
         0z6+8qnk2Y4IrUbyTXIrH/a8BRw0Rg/M+ozcLt9hEAeIOoWWPDNPXAGyCNShLhUJJ/FR
         V8AQKugEHC5BqiR31HbMDUQjYullb0JIvr513FZb05CyRYweUXsDfLaTOzgHd5FNP/nc
         x7lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BpBie4jkW/BfxvQG7eHd3js6+LWawB9Le/asGO1bMFA=;
        b=dig/8rclWh2ugqp7XBcvwy9JS+1g1yVfKcYIyZVRN3ojdd5sA7D6Xf+6lGqPLZMxWv
         9dLTsEaY7Sn++Zds3I7bAfQWzesWqArOTRw7BbJaisjrJ1PEJGSRQ5VuneKHPIs1pPfq
         9mzKJxFFmRqbcaPn7LHPp4sDe3GDRNLqFsIaXDcsKWFyfW2NwMCHulQ3YIna1K/AT70/
         gJRzVYkaan0YRswsH1oJXDwQ9QR8uI01/x/cuqXEqsiKLpmlIcOiD5wBSv1tFhAFTZsM
         VttXTydRSVxYReneH9IwaSHCUf1woEakK79bBk9dTpKTf2dTyGTcTeG1E4CndCTmiInv
         HDGw==
X-Gm-Message-State: ANoB5plF72urpwbWLNG6KYXwT2dVdz2PDjc/uU7cepRhoUolcRlFz73u
	GArtPBZo03jveFZoFlg/Vd5v
X-Google-Smtp-Source: AA0mqf7lrHvbI6R/i7eq5zc7oayucCfI5hEsfEFmlM7cZP1cBPnHiT5XX45q3DnUog1aq7u69hZeZg==
X-Received: by 2002:a17:90a:e2c1:b0:219:5bdb:2b45 with SMTP id fr1-20020a17090ae2c100b002195bdb2b45mr12216640pjb.71.1669916622611;
        Thu, 01 Dec 2022 09:43:42 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.39])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016d9b101413sm3898743pll.200.2022.12.01.09.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 09:43:41 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org
Cc: quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 00/23] ufs: qcom: Add HS-G4 support
Date: Thu,  1 Dec 2022 23:13:05 +0530
Message-Id: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_094345_195383_66CBE34D 
X-CRM114-Status: GOOD (  17.47  )
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

Hello,

This series adds HS-G4 support to the Qcom UFS driver and PHY driver.
The newer Qcom platforms support configuring the UFS controller and PHY
in dual gears (i.e., controller/PHY can be configured to run in two gear
speeds). This is accomplished by adding two different PHY init sequences
to the PHY driver and the UFS driver requesting the one that's required
based on the platform configuration.

Initially the ufs-qcom driver will use the default gear G2 for enumerating
the UFS device. Afer enumeration, the max gear supported by both the
controller and device would be found out and that will be used thereafter.
But for using the max gear after enumeration, the ufs-qcom driver requires
the UFS device to be reinitialized. For this purpose, a separate quirk has
been introduced in the UFS core along with a callback and those will be used
by the ufs-qcom driver.

This series has been tested on following platforms:

* Qcom RB5 development platform powered by SM8250 SoC
* SM8450 based dev board

Merging Strategy:
-----------------

The PHY patches are expected to go through PHY tree and UFS, MAINTAINERS
patches are expected to go through SCSI tree.

NOTE: Since this series targets multiple SoCs (base like SM8350) and
(derivative like SC8280XP), testing on all of these platforms is really
appreciated. Although, if the series works for base SoC, then for derivatives
also it should work.

Thanks,
Mani

Changes in v4:

* Dropped HS G3 specific setting from SM8350 default init sequence
* Added G4 support to SM8350 and SC8280XP
* Covered all qcom files under drivers/ufs/host in MAINTAINERS file
* Added missing Suggested-by tags for Can Guo
* Rebased on top of linux-next 20221201

Changes in v3:

* Dropped the "device-max-gear" DT property and switched to reinitialization (Krzysztof)
* Added HS-G4 support to all compatible SoCs (SM8150, SM8250 and SM8450). This will also
  benefit the derivative SoCs of these platforms like SC8180x, SC8280x etc...
* Splitted the qmp_phy_init_tbl changes into separate patches (Vinod)
* Collected reviews from Andrew H

Changes in v2:

* Collected reviews from Dmitry
* Renamed "max-gear" property to "max-device-gear"
* Used min() for deciding which gear to use instead of open comparision
* Added comment about the old register name

Manivannan Sadhasivam (23):
  phy: qcom-qmp-ufs: Remove _tbl suffix from qmp_phy_init_tbl
    definitions
  phy: qcom-qmp-ufs: Rename MSM8996 PHY definitions
  phy: qcom-qmp-ufs: Move register settings to qmp_phy_cfg_tbls struct
  phy: qcom-qmp-ufs: Add support for configuring PHY in HS Series B mode
  phy: qcom-qmp-ufs: Add support for configuring PHY in HS G4 mode
  phy: qcom-qmp-ufs: Move HS Rate B register setting to tbls_hs_b
  phy: qcom-qmp-ufs: Add HS G4 mode support to SM8150 SoC
  phy: qcom-qmp-ufs: Add HS G4 mode support to SM8250 SoC
  phy: qcom-qmp-ufs: Avoid setting HS G3 specific registers
  phy: qcom-qmp-ufs: Add HS G4 mode support to SM8350 SoC
  phy: qcom-qmp-ufs: Add HS G4 mode support to SM8450 SoC
  phy: qcom-qmp-ufs: Add HS G4 mode support to SC8280XP SoC
  scsi: ufs: ufs-qcom: Remove un-necessary goto statements
  scsi: ufs: ufs-qcom: Remove un-necessary WARN_ON()
  scsi: ufs: ufs-qcom: Use bitfields where appropriate
  scsi: ufs: ufs-qcom: Use dev_err_probe() for printing probe error
  scsi: ufs: ufs-qcom: Fix the Qcom register name for offset 0xD0
  scsi: ufs: core: Add reinit_notify() callback
  scsi: ufs: core: Add support for reinitializing the UFS device
  scsi: ufs: ufs-qcom: Factor out the logic finding the HS Gear
  scsi: ufs: ufs-qcom: Add support for reinitializing the UFS device
  scsi: ufs: ufs-qcom: Add support for finding max gear on new platforms
  MAINTAINERS: Add myself as the maintainer for Qcom UFS drivers

 MAINTAINERS                                   |   8 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h    |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 454 +++++++++++++-----
 drivers/ufs/core/ufshcd-priv.h                |   6 +
 drivers/ufs/core/ufshcd.c                     |  63 ++-
 drivers/ufs/host/ufs-qcom.c                   | 170 +++----
 drivers/ufs/host/ufs-qcom.h                   |  70 +--
 include/ufs/ufshcd.h                          |   8 +
 8 files changed, 532 insertions(+), 248 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
