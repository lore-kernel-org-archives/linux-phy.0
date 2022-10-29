Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C0FFC433FE
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 14:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=krIeA2OUBOV5ux5Tz7te6nKdOqLqhFCXJDyNk8ISYfo=; b=phOwIDKgb+9JmJ
	4VO6HZL7cAGT5ZMS/jh67zHKryZNrzcuV7by+F2872IuYqgy9OOqsg+Cz26UO+wFPIs+joe3JFeQ8
	UoNFrO6UdVD1k5NdTJT1xR7+P+Y4WlRpMZGa+eXHDu9yGxSxplz/glYpv1IfjFpgVcX8XerMdqg53
	RgNXDTogqJ2EKA0SLHrM5oBV4HK6gK59fRyJwaxEpAnIw97b6m/mvuNhk7CBJgQrn4OT1OYi1/PhT
	+CQFg3yhmgpC38h7Z1rp78vjgAETFgk/FX/1wqQ/Z9JgGq9BbiDPlRmll5Zr6AKKqBsV5wr6Aj0sd
	jZdtE8W1jDvvgyGY+I7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomdk-006U57-MS; Sat, 29 Oct 2022 14:16:48 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oomdh-006U3s-PW
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 14:16:47 +0000
Received: by mail-pg1-x532.google.com with SMTP id h185so7142853pgc.10
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 07:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GQ4PiNcI1cLiE7ryjV3rS13VZXM0Dj58HsM9AOiZxhg=;
        b=oElrO+L1rk9mNgPaQGCjkZqLOoN/67uzSPW+WcTDNV/dlPycNO8b7MS7IsMpWIqNYF
         xUKaohiK08X2rxqOr13PkPDChzujijVPpSmqeRsCG7kud8ymS/F0+HcRTnPW6YYan+yE
         3+cWdpU8fOsgsRZYLXIRI02fIS0y2CeZAwSxlu+5fUeu1jdfyfDoq6Caf6QXsldiT/jD
         SzhPRlTtn1xW79PNSMOhpUNh/SJ1FAx9j4LyXvmmK5rJEIhjWxpaziqq8dBgcSbPQ+/B
         /Ap/tPE5e76VysGg9KnP9bcX+MsEHSt5O1haM/qoj16CapP+unQWLDmi3wBOt4lNbfbq
         5Gcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GQ4PiNcI1cLiE7ryjV3rS13VZXM0Dj58HsM9AOiZxhg=;
        b=uLCO5IESnuwQ1hhlTbcYYi7/4x8vQ6YOdeeTNhXPBEuFcg23wxWSesxhbO5XahnaK3
         XEmxlHaZhzyXZinEbZSHVjLkPgEKyf3V7Cww6fjfw8qIdRaN/0b7mSY99LUTvf1T0fhb
         aPq5mp9eWErEbaZYVMbnYg7gE9m0qHWKf1K5lh92py8MhR9sIm6pabJhsHaAm9NhZujK
         yCzRFk9hitcl99S/mKNi2oEI+KOsbW3Z96HttOL68FYjB8mm8D9bzcB/kPqFKv/ZTt/x
         BXIHLJ7JCXgSU6uHn6vQviLVERE8DnKtHiEo3oGZWfUzu7yQRB6Rygp47oI8Iiv4bNRF
         09/g==
X-Gm-Message-State: ACrzQf2fBOazLXHxRngpjpQsoW4yJ3fTTzig0FuEHHAGHI7s1HGgK78u
	DCZo7njzH51f4rfH5Ge5aU0h
X-Google-Smtp-Source: AMsMyM6rJuqEreNrU5xX/uOHOar39X19G2dhV8I6IvYMk82ydVaceF1ziLNEgSrN26R2pCFJQ7ehaQ==
X-Received: by 2002:a65:6d93:0:b0:42c:50ec:8025 with SMTP id bc19-20020a656d93000000b0042c50ec8025mr4151085pgb.62.1667053003345;
        Sat, 29 Oct 2022 07:16:43 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.18])
        by smtp.gmail.com with ESMTPSA id u4-20020a170902e5c400b001866049ddb1sm1370157plf.161.2022.10.29.07.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 07:16:42 -0700 (PDT)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 00/15] ufs: qcom: Add HS-G4 support
Date: Sat, 29 Oct 2022 19:46:18 +0530
Message-Id: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_071645_920333_0E7D7703 
X-CRM114-Status: GOOD (  12.80  )
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

Manivannan Sadhasivam (15):
  phy: qcom-qmp-ufs: Move register settings to qmp_phy_cfg_tables struct
  phy: qcom-qmp-ufs: Add support for configuring PHY in HS Series B mode
  phy: qcom-qmp-ufs: Add support for configuring PHY in HS G4 mode
  phy: qcom-qmp-ufs: Add HS G4 mode support to SM8250 SoC
  phy: qcom-qmp-ufs: Move HS Rate B register setting to tables_hs_b
  dt-bindings: ufs: Add "max-gear" property for UFS device
  arm64: dts: qcom: qrb5165-rb5: Add max-gear property to UFS node
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
 drivers/ufs/host/ufs-qcom.c                   | 177 +++++----
 drivers/ufs/host/ufs-qcom.h                   |  64 ++--
 6 files changed, 389 insertions(+), 216 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
