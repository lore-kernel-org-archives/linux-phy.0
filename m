Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04DBCC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 07:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KnLSFcOEq4YZpDTzKVx/itAx2Ru/FDsC3ZXIIETuwX8=; b=rSMBx8VRj2fqGp
	nwFmRYXNQd4blsr26nB5vHAHyjFAmI/Uyxmh0t9iq35fSj48E8b0+4u9Vc5MFKqGJsHETmIGIUpT0
	TpWiVlwMO3sb8FUrw6Fngqp6Dy3wDLSC37y/HWw/tp4HS4vldz45lApO5Vms1/0HD1h3a+kzNu6JJ
	4pTjAVLdYVlvRljlD2PNnO//DXccj9AfgUi205+xkz+ue/L9OvaBVV6GPFv69j2qwRn1G6G5sjwOm
	wWwbQSzlMug9SZ+7CFRCjIWpEPIqXs4JWP05xY3iLauDhWC5IsA8CkJY7yQlwQBnsFzImfrP8b/XV
	N+eJtDdIeaGLshdCLpFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwexI-001xRO-Bm; Thu, 02 Jun 2022 07:09:16 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwexF-001xPK-I4
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 07:09:15 +0000
Received: by mail-lj1-x230.google.com with SMTP id r8so3747828ljp.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 00:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=u+c3gcANzBU0S2++2DLVJJA31QArxjO8Cm7S9YoKYHk=;
        b=cLHJxha2/msURnLFsR3yWxkTiLxcJgVahhpKWYXAiMgleq6+z5jhULbC+7LGk4IzwC
         HLap4UV4PtNYji/abbVzPvtKAmQN0IittOW+jv2cXr/j4omS0A3GvIbIhR8kbFdCt/pB
         rJDiJk8UaD6vtV49f61tys7NKw1uh4leQ9J2Nj/onkUudqggb1YHCq39zCs+nbQ3QzCy
         C1O7b9J5WNvLJc7e4IR2s+aE01UrWmyVs3TNELRKkfDS0Uw/ksxWnvQCNDGAJOpEa3Op
         yMh1Q5EjTm8rRRubNr/z26WawjNK55NFXcWtJlNbdQEcE952Xps7vcJY3ruWpY20K632
         GPVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=u+c3gcANzBU0S2++2DLVJJA31QArxjO8Cm7S9YoKYHk=;
        b=tHuY1c8hCIQRi4iJzhy8yb1s8LDzD1ZeUWCDrC3MjQdCQGBTYNjtq31dD6NTEKAOUh
         mLn78TBlbeCQgO0QMxDht1JYS9Kdx37yl2h6S4MktTZOrB5uWC/yOkfNw8yn4FUInDLW
         c2ZIRM0zrHf6g8onBjBiG6/+YdPGRsz6hdFvIYf4XeHI3iO/n3JWTja31ycExeU7APXF
         1tiuPvCbwhpcGo2RvvFoLd5Iobx2QVr8qUINDDcpNivsrBqZ/QRXfvlg8XRsHl6U2K4o
         ykWHa4n0zE6eDez6Adsvb055pL+4wpKJerGwUqBmu9xxJPoQe76TxMqEGzuiDMIbWWu9
         mPYA==
X-Gm-Message-State: AOAM530CXwgrxsuxQgfOcH0IUncz+CoZrzRhV4yiJlcs/wsZNHK4ct/+
	f+DA+hPXYiTU7bVOLLGjw7RE7A==
X-Google-Smtp-Source: ABdhPJztGpktqqV0PJNWGuzm+9HcLnoyM7abtl++WoUKtgG+1VTbZ0L+t7g074qv7ZKS7ERo15e+7g==
X-Received: by 2002:a2e:8e73:0:b0:255:71f4:7db6 with SMTP id t19-20020a2e8e73000000b0025571f47db6mr2011844ljk.315.1654153750987;
        Thu, 02 Jun 2022 00:09:10 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d25-20020a056512369900b0047255d21114sm870218lfs.67.2022.06.02.00.09.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 00:09:10 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v3 00/30] phy: qcom-qmp: split the QMP PHY driver
Date: Thu,  2 Jun 2022 10:08:39 +0300
Message-Id: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_000913_642160_BA71A0E9 
X-CRM114-Status: GOOD (  13.80  )
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

While adding support for the PCIe EP mode support to the QMP driver I
couldn't help but notice that the QMP PHY driver has slowly become the a
beast with tons of conditions and corner cases being inserted here and
there.r

This an RFC for an attempt to to cleanup the QMP driver by splitting the
QMP PHY driver into five smaller drivers, each targeting a particular
family of PHY backends (DP/combo, PCIe, UFS, USB and a separate driver
for the MSM8996 PCIe PHY). Yes, this results in some code duplication,
but I hope that the end result is still better than the current
situation.

Changes since RFC v2:
 - After dicussion with Vinod, revert back to the approach from RFC v1:
   copy the source and clean it up rather than creating new drivers from
   the blank space. This lowers the risc of breaking any of the platforms.
 - Drop common phy-qcom-qmp-lib.c for now. The goal of this patchseries
   is to be merged early during the development cycle to unblock further
   QMP driver development. Additional cleanups and code unification can
   come up later.

Changes since RFC v1:
 - Split the patchset to be able to get through the email size
   limitations
 - Minor correcions to the split drivers

Dmitry Baryshkov (30):
  phy: qcom-qmp: create copies of QMP PHY driver
  phy: qcom-qmp-combo: drop all non-combo compatibles support
  phy: qcom-qmp-pcie: drop all non-PCIe compatibles support
  phy: qcom-qmp-pcie-msm8996: drop all compatibles except
    msm8996-pcie-phy
  phy: qcom-qmp-ufs: drop all non-UFS compatibles support
  phy: qcom-qmp-usb: drop all non-USB compatibles support
  phy: qcom-qmp-combo: change symbol prefix to qcom_qmp_phy_combo
  phy: qcom-qmp-pcie: change symbol prefix to qcom_qmp_phy_pcie
  phy: qcom-qmp-pcie: change symbol prefix to qcom_qmp_phy_pcie_msm8996
  phy: qcom-qmp-ufs: change symbol prefix to qcom_qmp_phy_ufs
  phy: qcom-qmp-usb: change symbol prefix to qcom_qmp_phy_usb
  phy: qcom-qmp: switch to new split QMP PHY driver
  phy: qcom-qmp: drop old QMP PHY driver source
  phy: qcom-qmp-combo: drop support for PCIe,UFS PHY types
  phy: qcom-qmp-pcie: drop support for non-PCIe PHY types
  phy: qcom-qmp-pcie-msm8996: drop support for non-PCIe PHY types
  phy: qcom-qmp-ufs: drop support for non-UFS PHY types
  phy: qcom-qmp-usb: drop support for non-USB PHY types
  phy: qcom-qmp-combo: cleanup the driver
  phy: qcom-qmp-pcie: cleanup the driver
  phy: qcom-qmp-pcie-msm8996: cleanup the driver
  phy: qcom-qmp-ufs: cleanup the driver
  phy: qcom-qmp-usb: cleanup the driver
  phy: qcom-qmp-pcie: drop multi-PHY support
  phy: qcom-qmp-ufs: drop multi-PHY support
  phy: qcom-qmp-usb: drop multi-PHY support
  phy: qcom-qmp-combo: use bulk reset_control API
  phy: qcom-qmp-pcie: use bulk reset_control API
  phy: qcom-qmp-pcie-msm8996: use bulk reset_control API
  phy: qcom-qmp-usb: use bulk reset_control API

 drivers/phy/qualcomm/Makefile                 |    8 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 2579 +++++++
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 1081 +++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 2404 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 1390 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 2751 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp.c           | 6350 -----------------
 7 files changed, 10212 insertions(+), 6351 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-combo.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb.c
 delete mode 100644 drivers/phy/qualcomm/phy-qcom-qmp.c

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
