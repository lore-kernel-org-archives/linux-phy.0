Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B4DFC3DA78
	for <linux-phy@archiver.kernel.org>; Sat, 14 Jan 2023 07:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MJsMkYatAvhzwRjj3fup4JlwGlTTF5NNnBnkEgO35BU=; b=2odNsjyJWb9CPK
	nukbQFags4Rv32S+WPbBmbalhirojmud6gP7xaspCBFsG5oMI9n00citAWEZlIPfaMm6xg7g2x99t
	ShJj2+g2ClkSim8j2h8apl/f+uNNlykAETWCf8zTszLAGO4qpvthMiOskEGFFdHbm5PWI2WDcbckW
	auw0lTymTAj985IrSFxWvlooHI657O6w5csrmwm5c9ne70na/3PSm6cs3fm9vYPbtZVh8P85wwKRG
	mXc4y2MRas9Nl4JuRyFvFLC1kcpqPCWmAGuM9NtqindY2gGZ68gytZQGCp1vlKn5G47arL7DL7Vdd
	Xu/h2S5drhM+p/RSWUow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGagH-005O4X-6C; Sat, 14 Jan 2023 07:10:21 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGagE-005O41-R4
	for linux-phy@lists.infradead.org; Sat, 14 Jan 2023 07:10:20 +0000
Received: by mail-pj1-x1035.google.com with SMTP id w4-20020a17090ac98400b002186f5d7a4cso29147428pjt.0
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 23:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sSRWg/4zGEapOLoUyhMBgX8aOXNkOAFMgET/1+nTQE4=;
        b=bRJcssISo9IAfeK4THgoBt6skESEzyfXTePiPnw0yhJweh5YhPuTh2W/8PemUboL+8
         ztySbBz4eO3FS5SlVxjtrAd+CtqchUJU+WAM34Ln5pKxO0+geu4fKjcN1gX9ztpERlON
         OQfssc0igRxGC6KdnDyealcTYGAL4QdllVKAX5q/LCMET+0wvg3YQWdKGnX5pneg/Kdv
         qgtd8wKUV4+sH9D5VzShC2HuIy0mOfPH/OKFwvFaX1wHc4uzQmtIEQ6qjHuXDcDbtKeM
         nmzmMeBYpkUl4t03ym9sX443wnoiz1lsEUvJZOrRQv+dzCVWtFzn6NFWAVkPQctYP/VG
         4Oow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sSRWg/4zGEapOLoUyhMBgX8aOXNkOAFMgET/1+nTQE4=;
        b=cGQyd5yXBQvP9lOM8CE+MEbejf6KJs9k2ytTxZ32TymmsHtt/g77+vcp6AorZmaU8B
         nn7Twl+QNRjSxdm2xVwn9FO3bTDuvGBarxgAmi79OoGBpaVcnqtPCY8WcA6Qnc7ECwpT
         TxnW07N+0KzZMMRwq0oUO6ylAO1h8MiuQnY4GhpXwxQ5hcnRjmSSrhDEXtWq2QlHED75
         4d3rFtriSkuNax4KIClmlenujkqFyL1HP/vfx805eNki5eGH5uleqDU44aeG/RcRrCJn
         +4WDS0LoTFmQRgwZ87LBIva6j1uE8fc2uWCIIBmL0Yhb5e8ZK0wWUlfmR0prEsMM+mK1
         1gHw==
X-Gm-Message-State: AFqh2kqv31Su9D6oNGnVwJ+/FuYZ/RX8BM7QDW2rPiFh3lpcflkZHaRm
	RITI73WJq3HjLGWZiRGfPUMAX/jMWY2Q70s=
X-Google-Smtp-Source: AMrXdXsQyL9okZ8HVHcbKkohG31EAuqNbrZIJsCcIOcofHKEjPOsG2qPhe1otBe2CoHDuA6CmBA/ww==
X-Received: by 2002:a17:903:2614:b0:194:6627:d7ab with SMTP id jd20-20020a170903261400b001946627d7abmr7212332plb.12.1673680215934;
        Fri, 13 Jan 2023 23:10:15 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.156])
        by smtp.gmail.com with ESMTPSA id q10-20020a170902e30a00b00192a04bc620sm15225358plc.295.2023.01.13.23.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 23:10:14 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vkoul@kernel.org
Cc: andersson@kernel.org,
	quic_cang@quicinc.com,
	quic_asutoshd@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	abel.vesa@linaro.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 00/12] ufs: qcom: Add HS-G4 support
Date: Sat, 14 Jan 2023 12:39:57 +0530
Message-Id: <20230114071009.88102-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_231018_934152_F2571CD6 
X-CRM114-Status: GOOD (  16.20  )
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
* Qdrive3/sa8540p-ride board based on SC8280XP (derivative)

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

Changes in v6:

* Rebased on top of phy/next
* Dropped SCSI patches as they got applied

Changes in v5:

* Collected Review and tested-by tags
* Reworded patch 18/23 (Bart) and also the comment for reinit_notify

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

Manivannan Sadhasivam (12):
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

 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h    |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 454 +++++++++++++-----
 2 files changed, 339 insertions(+), 116 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
