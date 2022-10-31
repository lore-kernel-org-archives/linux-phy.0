Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C820FA3746
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 18:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qe68r0++4cBzYJ4OurwlvMhihwoErubgunM4zjGWYQE=; b=DZHGO6tHKaCF0H
	pET8Agq0ZZcBLpDFkumIpiMkwJFl4coETqPkoItm6ddzpok2le9Ya/rDEYVN5Tq8n2oG2iShyBa6E
	LYHbQziXQphOKIrBvh+5XzGSSXonuCl6q5ehDqRpw7ubEXXh/VC1FwigCOsytDxusvaEWz9Xe0N0p
	sk5I81in0+twhJpgjlNDHSXpCdgFr6CZj3HkBbFg+6Pw7p7cNbLHaZbDd8QKFfOqLx4NdWoF8MTYu
	YFi0FDfITdIapEu4zChYWmY0T5xjfwnoQVrqHT823YK4dAtMgil3vv7c78/yXvhVtSjH45zgYxZo2
	UOrP4uQeHl3Y5WG8VbOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ7R-00DaFY-TC; Mon, 31 Oct 2022 18:02:41 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZ7P-00Da9c-J3
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 18:02:40 +0000
Received: by mail-pj1-x1032.google.com with SMTP id l6so11066970pjj.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 11:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lUeGzsrZuppVjIQtllMBu80KGrOeXpmn2SHkGIO0dZI=;
        b=PfJeKC0nW0q3FOQ1HV8xzNPscrseO9wqTqzlujbVfJPQuw7OoUcyI8/HA/e6PYuwT9
         3NterFjq9Q098c76cYnNqbeUtlN+WMHXuh7lACe917zc5WAf39BIAwfLrMwS2/aQsYZD
         B/OV3MzAXaa5x35p7F+o9zFuK0yDd5yBkAWrVkResNl6h/sBsLhwxS3rkKfV9dj8UdIC
         DW3vG619Oo5+c4yO875QCVLCP4aDNBfHKzCERADUuVj7MvxDl+0UGwOODaIF28SjJfdf
         1X9F3SBkWggTSH/xUQYCndFrMatu+5Rcoxkbt8VfJQLekIMJ/7qVYlfL7fC53l2wotZ3
         LDXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lUeGzsrZuppVjIQtllMBu80KGrOeXpmn2SHkGIO0dZI=;
        b=GlZVRp242BApfiZR4izAaliAm5E8Fky+w1y9L4CS3YWF4u/8nZOXY97u82GRKNabMX
         fWlyvF/AsDf1FhFPmxtN/jbgf+frWYhf8pzcok+wQMXgVJj1Cx3FFU576ZqhTllBnVwM
         OxSEW2cJNbegYl7UsxVuQl6ni4OAGM29RWF3J1NhVJBo6fD46eT0N9jtR2z5/7CiAL3x
         02wVxV75e+sfCYTovrO3Gjidmom7UpDvo3lAXPSRNWU//Jm6OViR3ju1sc8QQLBnWEe0
         4++adNG8q3QP40/k0AKZQehO1uFH8Xumv6e3jlJygT6sUBpTvEHTR4Zmn5fvmdiBdF93
         G/6Q==
X-Gm-Message-State: ACrzQf0/wlSKIrl5e7d8xeKiIPSI/8MEEQX8VBtp07VNEi+vwA0Mem4S
	yQ/XajYfIZJLYdKqS1q5QxlA
X-Google-Smtp-Source: AMsMyM6KutCiKgVhfqnh64n0pNMgZINaIjYKukeENSzy9/oeepbkEm7QVIBjPIPLzso18X716IcE3g==
X-Received: by 2002:a17:90b:153:b0:213:b853:5db1 with SMTP id em19-20020a17090b015300b00213b8535db1mr13077729pjb.168.1667239356552;
        Mon, 31 Oct 2022 11:02:36 -0700 (PDT)
Received: from localhost.localdomain ([117.193.209.221])
        by smtp.gmail.com with ESMTPSA id q14-20020a170902a3ce00b00186c6d2e7e3sm4742224plb.26.2022.10.31.11.02.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 11:02:34 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: martin.petersen@oracle.com,
	jejb@linux.ibm.com,
	andersson@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org,
	robh+dt@kernel.org,
	quic_cang@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	ahalaney@redhat.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 00/15] ufs: qcom: Add HS-G4 support
Date: Mon, 31 Oct 2022 23:32:02 +0530
Message-Id: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_110239_651636_3740B4C8 
X-CRM114-Status: GOOD (  14.24  )
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

But this requires both the UFS controller and UFS device to agree to a
common gear. For finding the max supported gear, a separate register is
used for the UFS controller and devicetree is used for the UFS device.
Based on the max gear of both, the UFS driver will decide which gear to
use during runtime.

This series has been tested on Qcom RB5 development platform powered by
SM8250 SoC that uses HS-G4.

Merging Strategy:
-----------------

The PHY patches are expected to go through PHY tree and UFS, MAINTAINERS
patches are expected to go through SCSI tree. Finally, the binding and
devicetree patches can go through ARM MSM tree. There is no build dependency
between the patches.

Thanks,
Mani

Changes in v2:

* Collected reviews from Dmitry
* Renamed "max-gear" property to "max-device-gear"
* Used min() for deciding which gear to use instead of open comparision
* Added comment about the old register name

Manivannan Sadhasivam (15):
  phy: qcom-qmp-ufs: Move register settings to qmp_phy_cfg_tables struct
  phy: qcom-qmp-ufs: Add support for configuring PHY in HS Series B mode
  phy: qcom-qmp-ufs: Add support for configuring PHY in HS G4 mode
  phy: qcom-qmp-ufs: Add HS G4 mode support to SM8250 SoC
  phy: qcom-qmp-ufs: Move HS Rate B register setting to tables_hs_b
  dt-bindings: ufs: Add "max-device-gear" property for UFS device
  arm64: dts: qcom: qrb5165-rb5: Add max-device-gear property to UFS
    node
  scsi: ufs: ufs-qcom: Remove un-necessary goto statements
  scsi: ufs: ufs-qcom: Remove un-necessary WARN_ON()
  scsi: ufs: ufs-qcom: Use bitfields where appropriate
  scsi: ufs: ufs-qcom: Use dev_err_probe() for printing probe error
  scsi: ufs: ufs-qcom: Fix the Qcom register name for offset 0xD0
  scsi: ufs: ufs-qcom: Factor out the logic finding the HS Gear
  scsi: ufs: ufs-qcom: Add support for finding HS gear on new UFS
    versions
  MAINTAINERS: Add myself as the maintainer for Qcom UFS driver

 .../devicetree/bindings/ufs/ufs-common.yaml   |   5 +
 MAINTAINERS                                   |   8 +
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts      |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 350 +++++++++++++-----
 drivers/ufs/host/ufs-qcom.c                   | 175 +++++----
 drivers/ufs/host/ufs-qcom.h                   |  68 ++--
 6 files changed, 390 insertions(+), 217 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
