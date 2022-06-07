Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA5B0CCA47C
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 21:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x88kNIKm/qj3vUEVgiiYYYhxeOETVQoOCi+fzEnMA9Q=; b=s0NLLF1JhCk5jP
	38ftZ4uNvgYKWnRakGztL9Vdr/Wy6snGFvGQ+/JGvFR6aVbJ3s2CenjCpaCtLhoRF1CewhwE7Oxio
	IcGEp1Xm18KIVY273Z+ySy9F/JWi4mM9mKvtrPxCa31dKBPv8zmgIJqErquyPNapD6zeACsFeG8PP
	PQSLlRo2C2KruGNQ8X5ipIVMNoHz/Pfe9n2TlbjUN2UV/X+HjzE1/XIKwvL6QzdVadcNgy/a27XnE
	jZQrTT6ELG/dIOiRkX7KExSj8A6L1ndIQynakzczWkfOwAxPNmuMFQ+QO+dumnJ1oSdmY7C1M8rgu
	xoJV+YVYNlN/3GNocT7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygoE-009m2Q-2c; Tue, 07 Jun 2022 21:32:18 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygoB-009lzB-46
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 21:32:16 +0000
Received: by mail-lf1-x135.google.com with SMTP id a15so30267828lfb.9
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 14:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/EMuaw8f99+zuol+Pslz84IOxSbC2zWg9rufPj8Gszw=;
        b=HhaK9gsTeW9KFD71hYHS15gkzPqIUFfsrm77V2YsjJ4EX5XtQ9PcOfgG9z6s/sKwjL
         YfwLx/gunsxgvDCX/rmu8ZsqTCqcN5LbI6kMRCROMMC3tY96SCYAj/C8CIpwITer/XBh
         Z2TULXInPZjAw18EY1ODVpX5RYyPFE4l1OJMprNJHufrQAgbhcx0E+mFNVBNZCd0/LKN
         SqbMraU+pIl2iIQNLV3h+xwcaNruLx71gcGJqgtCUOEF1RS5GkqZLO1mrHHU6GtG4Cds
         ZjjT8kJDaSGvSBI2n7nAius9cC0FoVyq0cyuU2IseEfR2nwhGDr0ZkrW5hWxotu2wGwu
         q1TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/EMuaw8f99+zuol+Pslz84IOxSbC2zWg9rufPj8Gszw=;
        b=0VHkQ3Ri27xa08bgyFaSpRfCBZxtA/53VRHPKFU3mL1RQ3nUENNfGZolmnTtI3PyPd
         mgL5I4/ns7HRjno9ecNzf04mOcVVmGOq8pRIT68hd5G3tkPpinLm9rFB/zZ+8O7qvKwl
         a/BbrVuEEBkbFX1dHqnhVaFyXBFQV+c1/mCWplMNrndZKBa13L4WQNpcM1QcBx++tBqJ
         bNRdB1QcXbG4lewsR3TW4+eFOgQgQg2p2ZH7bZhcI9uS9A6fkJlKfeDWdWuan6+v0deL
         ffwjJPAKU1bdmBfq5Jm+79sfhS362bJ3atkVOrcFb+Jaiz0iixY4TvqYAf1lVkEORlqj
         aQVQ==
X-Gm-Message-State: AOAM530UmVYYh5cFahBm95M7shnnye5B6agRFxqcrwDQzSs29Vzxh4RX
	M4n68R/tFmp1C+CMF5l7cuRdiQ==
X-Google-Smtp-Source: ABdhPJzkxnRuzcWsJIuLV5bpokvPPwTzUNr3THlMbyScHKNy/89s5chKhJJChIzmjkG8nggxyoSISw==
X-Received: by 2002:a19:e307:0:b0:479:47a5:3c4f with SMTP id a7-20020a19e307000000b0047947a53c4fmr8399800lfh.593.1654637525001;
        Tue, 07 Jun 2022 14:32:05 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g23-20020ac24d97000000b0047255d21153sm3411343lfe.130.2022.06.07.14.32.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:32:04 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 00/30] phy: qcom-qmp: split the QMP PHY driver
Date: Wed,  8 Jun 2022 00:31:33 +0300
Message-Id: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_143215_203447_862363F7 
X-CRM114-Status: GOOD (  14.13  )
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

Changes since RFC v3:
 - Fix MODULE_DEVICE_TABLE for the combo PHY.

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
  phy: qcom-qmp-pcie: drop all non-PCIe compatibles support
  phy: qcom-qmp-pcie-msm8996: drop all compatibles except
    msm8996-pcie-phy
  phy: qcom-qmp-ufs: drop all non-UFS compatibles support
  phy: qcom-qmp-usb: drop all non-USB compatibles support
  phy: qcom-qmp-combo: drop all non-combo compatibles support
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
