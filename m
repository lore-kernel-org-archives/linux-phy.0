Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B702C04A95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TjmZQLg8XLdQ+TG+Eb1NVclCDatxUeuX/wRoTqZW7Us=; b=HQPbPYybQPlcWX
	RQ9Z9E3nKpdL6hKGj0kc3zRjviYBrQEsWltRd6IwrFV8OabDrbGYVhMcmbYrHMobsEY2I+K565XCw
	TDNjqChp7OaNgYin/gkmx7WJTxE3C4niu2vE4W3tw/j96BlloJuCtqWtDk1cGsgQqSbdAH6PVoSDE
	E2RDFlkzEDjeWEOCh494G/iMUyfrFwijg1aKsnyxrOhIlc+f4cK+kzUnPKuOOEmCViz1ErS0il7U0
	J+I+kvMbLQJ35vlQMLKxBtZCzsbTEfST9sIK7UkdhHvuIIWJLpEujxZZicN6TLNpm0CWMFeaYtvOW
	MtUnTuX3a+EHFqmcKH9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgC6-000cDU-Vq; Wed, 28 Sep 2022 23:10:22 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgC4-000cCE-Pr
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:22 +0000
Received: by mail-lj1-x236.google.com with SMTP id b24so15896191ljk.6
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=X0NOTACpx4gos0GrFhmPRT3Qd6/8r9KDHNKmLpoawNI=;
        b=MjRLCW7tChVww6tVVgFX0+WtYQQ6sFktR301e9qC0Y8cidh0tiz1Z83s/WlaN8ENaI
         loajrs3a4bMd1crzI/D+QDh+aHqqEDtCaENBWSj7CIqHQvcxzNDBo1IbRNQunTTbmAUJ
         XqGUJN1pKCU+P2lsNnHitOJa9YiUbKZzLpPHqsMpVOxBZSsoNaJ9OfImdsGhlCQ2lpXL
         kfg+UMm4r6mngia4mDVtuSSLyLfZEVggpujKoRUFkU7vWKuhydktNOBnWCkJb4GO8zDv
         FSqWEaed2mSbMZsc/sE7uya/SL7RChaIrYK40LZ9sbrXQbFNphGVeZn9gpb8CNjec0GJ
         Of8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=X0NOTACpx4gos0GrFhmPRT3Qd6/8r9KDHNKmLpoawNI=;
        b=OSuUnpFO2L5Co7zm9H6myaVVlzz5QJswfHbPBxOJz0b7xY+Z8MXmMWo93z66YT1yXY
         aF55BJZFax98AMFYiYtcyxCzIk7D9zwu8DNcsilTC4D8uJbFeTL2QyIMQl7azxOreTmJ
         k1PXq9wkODh6jK0y82DWUZ+yQKwAaCjsE2QNxJFZw5By/fMsmo6p8ahpLUypACLq8O5X
         x/7xSFyQTHaDVZLM69Xh852ELKYbfnQClDGaXa+AQ1f9VL0ucN42PP8PI4ojcsTtaThz
         Wxv5NfG7JL8Ko5tpRuFVteX5mYRaTKOpY6fTI3S5V/t4pJZ6YL8SbvvOLD7zc7tDf5lA
         Yn6g==
X-Gm-Message-State: ACrzQf3Y4PlG61jMJyihNkkATFWOGGnMubfxzGC7e+A6VHs9lixavJOr
	DSWB4vVwNvrBgcYDMnmEY7nV+g==
X-Google-Smtp-Source: AMsMyM71QRt0u6mDSPzAgz2TW30gsYkTZ0fY0orNieeH8IsaaSTzSqLVrz+O7q8aZMiNt79xEhEuqA==
X-Received: by 2002:a05:651c:2108:b0:26c:6102:5d3b with SMTP id a8-20020a05651c210800b0026c61025d3bmr66272ljq.168.1664406616263;
        Wed, 28 Sep 2022 16:10:16 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 16:10:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 00/18] phy: qcom-qmp: rework register layout tables
Date: Thu, 29 Sep 2022 02:09:56 +0300
Message-Id: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161020_862183_986A9038 
X-CRM114-Status: UNSURE (   8.50  )
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

This is an alternative implementation of the QMP PHY driver cleanup
proposed by Johan at [1]. This patchset changes register layout tables
to use symbolic names instead of bare values and attempts to tie the reg
layout with the version of the QMP PHY.

[1] https://lore.kernel.org/linux-phy/20220928152822.30687-1-johan+linaro@kernel.org

Dmitry Baryshkov (12):
  phy: qcom-qmp-pcie: rework regs layout arrays
  phy: qcom-qmp-pcie: rename regs layout arrays
  phy: qcom-qmp-ufs: split UFS-specific v2 PCS registers to a separate
    header
  phy: qcom-qmp-ufs: rework regs layout arrays
  phy: qcom-qmp-ufs: rename regs layout arrays
  phy: qcom-qmp-usb: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
  phy: qcom-qmp-usb: remove QPHY_PCS_MISC_TYPEC_CTRL reg
  phy: qcom-qmp-usb: rework regs layout arrays
  phy: qcom-qmp-pcie-msm8996: rework regs layout arrays
  phy: qcom-qmp-combo: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
  phy: qcom-qmp-usb: rework regs layout arrays
  phy: qcom-qmp: move type-specific headers to particular driver

Johan Hovold (6):
  phy: qcom-qmp-pcie: drop unused common-block registers
  phy: qcom-qmp-pcie: clean up power-down handling
  phy: qcom-qmp-pcie-msm8996: clean up power-down handling
  phy: qcom-qmp-combo: clean up power-down handling
  phy: qcom-qmp-ufs: clean up power-down handling
  phy: qcom-qmp-usb: clean up power-down handling

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 49 ++++------
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 16 +---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 91 ++++++++-----------
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h    | 25 +++++
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h    |  3 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h    |  4 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h    | 19 ++--
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 81 ++++++++---------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 82 +++++++----------
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 13 ---
 10 files changed, 175 insertions(+), 208 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
