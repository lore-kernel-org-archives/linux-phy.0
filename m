Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6685FC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S2geDjG4k+L9e/eGTltLoJ7CzIcf6T5511dzRDkLZXg=; b=YK5ss0W03nwEJE
	nvey8Rildt7yruNEJIhaFVkhdVV45QJtv8t87TieT5tVO7KtmVc/K4htnY6CeL+Y2mUq1Wgfh3w44
	zUyUl7ejmf3Bvu7gkBL6Di4tO8lvovUYaNwEaIh7fx8iy8Jv8AnrI+v6RuMJKwipm44bGVeboxUJn
	Xe1253kBuHghXLq5FW2fkiVp5LZ823GIH55TjwWV5q6/mxFY5hqZ2CzuzdMa/5q6w+5DlC1rBFG2X
	FaYtg0EBAqS9R0x+qvsgVjI//NdzItYqNyt1McVnpQn9eGrPB7leNWQawBQH1P71QHPfHO3JeGW6F
	x8J8wKbbS1QMBz7a/E1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8g3x-00HFXx-H5; Tue, 05 Jul 2022 10:45:49 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f5a-00Gqkf-Mg
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:43:28 +0000
Received: by mail-lj1-x236.google.com with SMTP id q8so1362965ljj.10
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2ab413gdwtDugt/vVoNpZLN3OueUtdPSW3pOsPY0eIA=;
        b=aUrw39s7dVf37cIsqMKPx9I6HXW/P8HGStiA3MG9OJNRanVijJTRkmDPQs2yhgZHvv
         BiBoGbrGHQ80m/N4sj6hmoVLKkJn/tfMowHNQ5yTvI9RH9+Zrnm2kBxT79TIk5exMdok
         HVErmAizGVY+PCJpxKLS0ZwUrV2ZX501/Pzoy5VM093P2btiDL3jXm4E3ret4vn18ihL
         HpxiBydBzu9vgVkNYT7i2k1wRJndN6pS+xPqF6yvlXj2FKNCU1MKf/g5ViYuGFvIjDr4
         ndSR9D/9J1giUn9EHJZM285lRlwF43xOvWAebRoAFF02uj6TNjuvFRTVxe+BaGhf6PrD
         OryQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2ab413gdwtDugt/vVoNpZLN3OueUtdPSW3pOsPY0eIA=;
        b=osgYW52jOJKh9Vf6k0A4WvlYpTLMgfmnbXVYQqMyDcwmuvlKAnYvXMBrEaAgCWriOg
         EVPlNKgd0B0ehVoLPW2cxzcvoq2kyh9vyGruQQgV8se1UtYoZAHDZpuqBU37v5eTQqWR
         pbFokrU1cP6jxBwKnAgW1ZHs2MBeZrEwWOWy2DOykFykCiv3rSgO9Mbd2pIgxOzczSBR
         AxgkvhNDHReDl4OppE26bgl7qWdFPoUjZ1xsGoFAcMM/WBFP3bM8bhuf2SUfEQX8bxzF
         SFoTZdSo/FsTtUOFif6AOltnBhJLo0WjPDLW6OvFl0NlbRkom7xRy9m9/dCuqi0bnY4m
         NoIg==
X-Gm-Message-State: AJIora9ELEWMthYaFiyET0miQaBzDcqIt7MM+q2aulirUSFymSx5ymMy
	JGi8keL7xsmKjUltugLlc0QKqA==
X-Google-Smtp-Source: AGRyM1t7whgeURk+a2fcEZ3EeONDU5tMsm89Rj4KPv/UI/jeGIA4bKTAT1ip1PACMPqrTiz5Zjey4Q==
X-Received: by 2002:a2e:8182:0:b0:25d:380e:402 with SMTP id e2-20020a2e8182000000b0025d380e0402mr814660ljg.160.1657014201878;
        Tue, 05 Jul 2022 02:43:21 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b00482f206b087sm491683lfs.39.2022.07.05.02.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 02:43:21 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 00/28] phy: qcom-qmp: split register tables
Date: Tue,  5 Jul 2022 12:42:52 +0300
Message-Id: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024326_804871_5B0114DD 
X-CRM114-Status: UNSURE (   8.48  )
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

As discussed during sc8280xp PHY review, rework and split QMP register
tables. Create separate files for most of QMP register kinds. The only
things left are various DP registers, which will be handled separately.

Changes since RFC:
 - Rebased on top of phy/next

Dmitry Baryshkov (28):
  phy: qcom-qmp: fix the QSERDES_V5_COM_CMN_MODE register
  phy: qcom-qmp-ufs: remove spurious register write in the msm8996 table
  phy: qcom-qmp-combo,usb: add support for separate PCS_USB region
  phy: qcom-qmp-pcie: split pcs_misc region for ipq6018 pcie gen3
  phy: qcom-qmp: drop special QMP V2 PCIE gen3 defines
  phy: qcom-qmp: rename QMP V2 PCS registers
  phy: qcom-qmp: use QPHY_V4_PCS for ipq6018/ipq8074 PCIe gen3
  phy: qcom-qmp: move QSERDES registers to separate header
  phy: qcom-qmp: move QSERDES V3 registers to separate headers
  phy: qcom-qmp: move QSERDES V4 registers to separate headers
  phy: qcom-qmp: move QSERDES V5 registers to separate headers
  phy: qcom-qmp: move QSERDES PLL registers to separate header
  phy: qcom-qmp: move PCS V2 registers to separate header
  phy: qcom-qmp: move PCS V3 registers to separate headers
  phy: qcom-qmp: move PCS V4 registers to separate headers
  phy: qcom-qmp: move PCS V5 registers to separate headers
  phy: qcom-qmp: move PCIE QHP registers to separate header
  phy: qcom-qmp: split allegedly 4.20 and 5.20 TX/RX registers
  phy: qcom-qmp: split allegedly 4.20 and 5.20 PCS registers
  phy: qcom-qmp: split PCS_UFS V3 symbols to separate header
  phy: qcom-qmp: qserdes-com: add missing registers
  phy: qcom-qmp: qserdes-com-v3: add missing registers
  phy: qcom-qmp: qserdes-com-v4: add missing registers
  phy: qcom-qmp: qserdes-com-v5: add missing registers
  phy: qcom-qmp: pcs-v3: add missing registers
  phy: qcom-qmp: pcs-pcie-v4: add missing registers
  phy: qcom-qmp-usb: replace FLL layout writes for msm8996
  phy: qcom-qmp-usb: define QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME register

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |   57 +-
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  |   34 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-qhp.h  |  123 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  267 ++--
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v3.h   |   17 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4.h   |   72 +
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h    |   17 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |   16 +
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h    |   17 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h    |   18 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v4.h    |   31 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h    |   27 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v4.h    |   34 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v5.h    |   36 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h    |   46 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h    |  145 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v4.h    |  135 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v4_20.h |   15 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h    |   17 +
 .../qualcomm/phy-qcom-qmp-qserdes-com-v3.h    |  111 ++
 .../qualcomm/phy-qcom-qmp-qserdes-com-v4.h    |  123 ++
 .../qualcomm/phy-qcom-qmp-qserdes-com-v5.h    |  124 ++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com.h   |  140 ++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-pll.h   |   66 +
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v3.h   |   68 +
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v4.h   |  233 ++++
 .../phy-qcom-qmp-qserdes-txrx-v4_20.h         |   43 +
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v5.h   |  231 +++
 .../phy-qcom-qmp-qserdes-txrx-v5_20.h         |   60 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h  |  205 +++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |   45 +-
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  153 +-
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 1242 +----------------
 33 files changed, 2488 insertions(+), 1480 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcie-qhp.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v3.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v4.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v4.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v5.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v3.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v4.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v4_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v3.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v4.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v5.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-pll.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v3.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v4.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v4_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx.h

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
