Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 494B0C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1J5BoTqXTErpvxUQzqI3w88zEJ2WUbtB9Kti88qvRJc=; b=BGj/xnvROJkwMD
	SMxfhwNpNZPz5ZjNrRbP26uUzQNoc0SQ0f/odyQ2ALplqOeSO3VDbnUFBgoBfV7+6mxZ5BSC7gF7z
	OvyUZ2vWR+tzEOTqYl05a1mWBBrrginM44Kkg+LI0dbjM+5IluRjBao+MBJ/tClHESj0Y0ZqfEm9o
	ldS3pkWfLtg1BVy4fxEsWRUvo0IqmCdxGkyKcxStsOalcaVTbUoHFrDUxZNMPXiGVmJ8Hut6aA69H
	Cj8WIwhGPNtgMlHrrzNqeB/YqntE8O96C8tU7zm6GQs+dL2p1+CCGXwumIc30o/K7aA1Tu7VzqSpZ
	5cAIULcFqoXnmc3CRmKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0i-009UkW-K8; Fri, 10 Jun 2022 19:09:32 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0f-009UiX-Er
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:09:31 +0000
Received: by mail-lj1-x232.google.com with SMTP id c30so115138ljr.9
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gLsdbvbL1GnoQrrTbzy6Gec/O/qKU4xZK6Wey9+yF/8=;
        b=c/0TlxwTcHaNLIU8EWhRGTZLKrdOpq3wUbOeStSv+jBfAluwfh0RyzGJy8nfG8sleF
         SP8TStqXS0Pn8KCT32d+Tp7eC4xpS/JLLTqTyiPbjEXG7tuUGpMKlU1xPLTpjCY44SSH
         PUk2OCOcOZ7/z8FI8PvwBsuVuQ+DkelPMqWHPcuREOO+oDiyJeE1S1HImjAX+KVA3Yby
         ayZg7VA06YmsG58NFv3ZFus0jIcYKj7Ui4xmVvmKQQgtPO39fEnePc9872rbyRx5W9ek
         GHpoPt93I1Jd3/QA6AKqQyn+H0TIqnK82qzCNjtK/uuDbr1dXldhLXZRwYWWr1fi7nCY
         l1Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gLsdbvbL1GnoQrrTbzy6Gec/O/qKU4xZK6Wey9+yF/8=;
        b=LOfsX/KYV41qi3BlTUv+pUBgkERRK7V3v8Z7Y8DLZV1GwAW0/Nx3cpjMS04UcwstpQ
         YSTSNU2DiwsJ2XyBMe3olQjfuiDvk+S8VyQ/UMsGiCiTslVKtimjIzdqV9GipGStWec2
         WC/MmmfcXE9loXanwFO9nJLKOuwKJTAOj5OovLqsZkKCdWa4Qp1eYwoUEtoV1Rf+Q88C
         XbGXQ8DCa7l7w9yosKQkUqiuGA0rSDiYkc1WN5lJvF9vJ49QyBSJTB1l4K314Fngtqz8
         I2VkjyQLldZeqL1caolbFo3hhCkb6y0uYTjpbgIVh4oxdlKROM8kehee7Atl+rRNyozz
         pxkQ==
X-Gm-Message-State: AOAM532tvh/p5J+M0tTOd7UVj0jEk9raY90LYAjo9/OdhCQCBjpfU0M0
	5g8tDo5htQoM4b93Y9lTtNJuow==
X-Google-Smtp-Source: ABdhPJz0VdDb7Rz4nDlYlAWIc7bwfdFur2vyhvxdCBBz9N0AWg7Su6VOhsFYjz8iuNYcmAlLNQlNAQ==
X-Received: by 2002:a2e:7c16:0:b0:255:5bb8:fc47 with SMTP id x22-20020a2e7c16000000b002555bb8fc47mr30337451ljc.245.1654888167317;
        Fri, 10 Jun 2022 12:09:27 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.09.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:09:26 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 00/28] phy: qcom-qmp: split register tables
Date: Fri, 10 Jun 2022 22:08:57 +0300
Message-Id: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_120929_548012_A5A0853D 
X-CRM114-Status: UNSURE (   7.98  )
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

Dmitry Baryshkov (28):
  phy: qcom-qmp: fix the QSERDES_V5_COM_CMN_MODE register
  phy: qcom-qmp-ufs: remove spurious register write in the msm8996 table
  phy: qcom-qmp-combo,usb: add support for separate PCS_USB region
  phy: qcom-qmp-pcie: split pcs_misc region for ipq6018 pcie gen3
  phy: qcom-qmp: drop special QMP V2 PCIE gen3 defines
  phy: qcom-qmp: rename QMP V2 PCS registers
  phy: qcom-qmp: use QPHY_V4_PCS for ipq6018 PCIe gen3
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  151 +-
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
 33 files changed, 2430 insertions(+), 1422 deletions(-)
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


base-commit: f2906aa863381afb0015a9eb7fefad885d4e5a56
prerequisite-patch-id: f52dbc05bf69fb568e419d4b3cc3e3167e66fdce
prerequisite-patch-id: 75325349faf0a5d03169c0e346e219aa6e9e2e34
prerequisite-patch-id: fd0d31b88815a063900e51d7fa43f0657e9bf199
prerequisite-patch-id: 127079ad7676d0a91633e0227fa8067e07ba5e16
prerequisite-patch-id: e1fda799ccecbe179918a035d74295cf6c676576
prerequisite-patch-id: 01257a2f8313340e16fceb543fb1e39d3b3a9dff
prerequisite-patch-id: 5b80656870ba8112d0081505c10eb18047e03bc0
prerequisite-patch-id: 026f6c0a97d060a4b4bd540c66b9c92a60be6467
prerequisite-patch-id: e0ab8bc41c5dfbfc1e4ca0a3452c4b9000e786ac
prerequisite-patch-id: 5aca31b312c42cd70aefc1ad3a3d0e1a304a3526
prerequisite-patch-id: a0836fb0c4a9f00bf3b90f0df6f923fac7d20419
prerequisite-patch-id: a838218fc5cfc88b37e853d0aeac896ed6bb0c8b
prerequisite-patch-id: c17c628846f764fbf8ae9cdd6aa6e044b6b8ed4b
prerequisite-patch-id: 0276f1729fdf05e827587ee501faff8996070596
prerequisite-patch-id: d6002b739470a16dcdb701aa2bb9d8944722e04e
prerequisite-patch-id: f8ce1ba0712bedc9a4379d6590521aeef0d86701
prerequisite-patch-id: e5d3f9dc8f33abc18338b1689188657f9efc7b2a
prerequisite-patch-id: 94e8c42fb29b73e1eaf27dd25b8aded167d17419
prerequisite-patch-id: b888ee2d82244fb22f4a4a2d94f7e6d6ff3b922e
prerequisite-patch-id: 1360d22b5503c77367d67c7ac6233ef15e1bc7e7
prerequisite-patch-id: 496a516b2c5e2b3804e5c1a37bc59b2e0969d837
prerequisite-patch-id: 6b52172119ce3830f270dacadc2259de5a2b2c45
prerequisite-patch-id: abf04bb169f5cdcc3c58647729834211f945fc20
prerequisite-patch-id: 84807f8860e6567ffca1fbe2e934e009ef36db12
prerequisite-patch-id: 0de78da52c1ecc43d7d4167471e0cf290798a732
prerequisite-patch-id: 899a7fe75ef015f808773590a1b60d9b037fbbd5
prerequisite-patch-id: 8a0395d5e3061215f743a6050a8d0dd0ee2140cf
prerequisite-patch-id: 329e2ad8ea910d6701adac31e163fe82da56dbb6
prerequisite-patch-id: c1f6035eaf8c420eaa6a4f6f462969e63709ce69
prerequisite-patch-id: 515b2bf64463fc98e3e489b5a6e9569f49678cec
prerequisite-patch-id: a66d720ee35e8a332ac346a913f19a3f4753a6d9
prerequisite-patch-id: e7ece8387072ac18443f60fb01f0c017d8f1dcbd
prerequisite-patch-id: 0d06bd0bc88a369e25e41633676b1357cc698748
prerequisite-patch-id: 10992734e33173d2fca08f18bf73799e202a11f3
prerequisite-patch-id: c9e0cbe235a153a47857fa1b06d618dca8dece94
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
