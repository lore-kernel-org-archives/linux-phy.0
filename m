Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07FF0C43217
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 19:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OHk4A9Sg8tftMb27Bzf4tYzzcsLAwtvdRx68/LzZkhU=; b=QRODOGlPlBW8sY
	6MkQbQ33XogNMnybPe8cm7tws+zmh5Jyw6yn8am7SrcppH3zUlDBhiJcuBeEfXEolcaqsYYq50i/S
	rW/d512uI7y40tGz7MASfiPbABHPlsdHdcFEYnFqRtsYKLdAyHrv50Y3MQ5ldCw+yqsOx4XLvlkfg
	GXkHP7ZeU2VDmJhQPimnzQg/D/X/U+iCPL0a5FU0OcKxmps6vOt9bClA43dFy/w6zT8rYuxPi7q2S
	ovyHYbltFF5wMSN6jODZC/ND6m2HdL7DGwtEBIEf2aSOB/02kuGoGBV2t06sqSflN8wy8mIN3AypE
	ePC4O5cU0EKjHxZbmgHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otDHx-008mF0-Cv; Thu, 10 Nov 2022 19:32:37 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otD8X-008fbu-CH
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 19:22:55 +0000
Received: by mail-lj1-x236.google.com with SMTP id h12so2063382ljg.9
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 11:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wrNpg77ahRGEeTxAe9TFC45qA5bJL7st8wtKiHZ8uas=;
        b=rtxETIm4InRDMRkVYJbmbeZX6R/9E239duFoSda+BPk4jYypOBm+KJ7L/FLNY2qoBO
         S+4sUKCBd3qQkOCfIqV5GM7nyiBL+ySATYawA0LX9z/ycXnL0W5GQk4MJglsqbzcU3gq
         +z0SXLf4OUx1Vo9MJ8C3SN/X7GopAiSYDLIMXkAO2e9cRnxOG4LBtMlnwUNHUoRj4SW/
         nc2TshyuTKeyeCkU7DHNdoaEVe9rV3jZ2x2fJCMDNVWfHBJJ+8Br/sp7/UNzO2U2nvwz
         b/faZVw4yxGLpj2FArshJz4Lzmzf+08enJ1WOYZYUA/xelO6g2Q1PfGoEP2b+PaqbEwK
         chJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wrNpg77ahRGEeTxAe9TFC45qA5bJL7st8wtKiHZ8uas=;
        b=bqx8Eju6lQMIbN0yqCvPPX+hv23fRbIO64a90/qsCbMIzM/HonDsyu6cnymsX0O0r3
         QcRgobrE0c/FTV3Mc95qSx+gh+nMhv4doNFPuaIWNlVYhBp5Zl5WwJBFm7DQA0eVbfuf
         HyjkO3vUwWLbcT1Sme5GT3RVhTXVxQi1pQvoLNSSyOKKTPpaG1WFWNl10XMG4crFYQeb
         mHyn+b/TGHIJ1F9vKwEw0cR7j7vDhs/sAJ7VXHN0NXhzOLIxbMZvaGjR3t20Z+EXvces
         Nz1bjLXh+gZ1aTv97JIryF6ytSCVS2gWQoC1vo7PKcKWgjyoZTCDX2tTu3qatjmg+cR+
         BfqA==
X-Gm-Message-State: ACrzQf3W0Z2Tm4GyG0x61XpsUCtj3mkxRSeBNUyuJpcsJ3++UTgH6rNu
	/Z8rlcDgA9sL+Ae51+PJo4NnIw==
X-Google-Smtp-Source: AMsMyM6ymy+U6hwgMTw5b9I7p/kKDSr2005t0hmOwsiHcwtLZDTzvGVa1akOwmCgD0g8kHq+9DPQNw==
X-Received: by 2002:a2e:bf0b:0:b0:277:63f7:492c with SMTP id c11-20020a2ebf0b000000b0027763f7492cmr9079122ljr.259.1668108169386;
        Thu, 10 Nov 2022 11:22:49 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h8-20020a05651c124800b0027758f0619fsm40345ljh.132.2022.11.10.11.22.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 11:22:49 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 00/13] phy: qcom-qmp: rework register layout tables
Date: Thu, 10 Nov 2022 22:22:35 +0300
Message-Id: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_112253_538670_B405A383 
X-CRM114-Status: UNSURE (   7.85  )
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

Rework register layout tables in QMP PHY drivers to use defined symbolic
names rather than bare numbers. Also rename each register layout array
to name the exact QMP version. While doing this, drop few unused
registers and apply other misc cleanups.

Dependencies:
- phy/next
- https://lore.kernel.org/linux-phy/20221110103345.729018-1-dmitry.baryshkov@linaro.org/
- https://lore.kernel.org/linux-phy/20221110151748.795767-1-dmitry.baryshkov@linaro.org

Changes since v2:
 - Rebased onto phy/next
 - Added two generic fixes
 - Dropped combo changes, they will be sent after Johan's pending
   series
 - Fixed names of the ufs regs layout tables

Changes since v1:
 - Rebased on top v2 of Johan's patchset rather than including a set of
   patches from him
 - Fixed the ipq8074 regs layout name

Dmitry Baryshkov (13):
  phy: qcom-qmp: fix typo in QSERDES_COM_CMN_RSVD5 value
  phy: qcom-qmp: remove duplicate v5_5nm register definitions
  phy: qcom-qmp-pcie: rework regs layout arrays
  phy: qcom-qmp-pcie: rename regs layout arrays
  phy: qcom-qmp-pcie-msm8996: rework regs layout arrays
  phy: qcom-qmp-ufs: split UFS-specific v2 PCS registers to a separate
    header
  phy: qcom-qmp-ufs: rework regs layout arrays
  phy: qcom-qmp-ufs: rename regs layout arrays
  phy: qcom-qmp-usb: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
  phy: qcom-qmp-usb: remove QPHY_PCS_MISC_TYPEC_CTRL reg
  phy: qcom-qmp-usb: rework regs layout arrays
  phy: qcom-qmp-usb: fix regs layout arrays
  phy: qcom-qmp: move type-specific headers to particular driver

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  3 +
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  |  6 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 82 ++++++++++---------
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h    | 25 ++++++
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h    |  3 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h    |  4 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h    | 19 ++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h    |  4 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com.h   |  2 +-
 .../phy-qcom-qmp-qserdes-txrx-v5_5nm.h        |  5 --
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 67 ++++++++-------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 76 ++++++++---------
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 14 +---
 13 files changed, 168 insertions(+), 142 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
