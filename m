Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ECABC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 11:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XElkgpLv8un5DLaEN8Mr2p1BDRaTRvyp3C1bf46+9ak=; b=HNKZykMZJC2EX2
	pof9SwhSjv5hgSMZnwCSdjR94LoiJB3zx7T3uM7KS+av+vDAdt6r9MMacJT/Nrnp213z0N+IrPITe
	g5uQOAHGS4A/hb4zoYvvY48W10M7llSGOQDIwToaw8HOirQjA8sZrbNDzR+j7PN18eGm8JLlaHZpB
	+Axd4MDtBBay51aqSBSSqamRfukdYLGO+wzPcxx+XmfKD7D/dWYuFXLGdfrHUhySlpvw76UUrtfig
	MxTNzSPm1lAkAZ6oNKIp4azlr7kd94G7f7G1PuaMxMADuaej3WoUcEkvQiO26oQbTs4f85C2+B9Wc
	Y/fraXN5Q7YlDFzaZcrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED2-008sTs-O0; Fri, 30 Sep 2022 11:29:36 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeECx-008sOb-Op
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 11:29:33 +0000
Received: by mail-lf1-x133.google.com with SMTP id i26so6388508lfp.11
        for <linux-phy@lists.infradead.org>; Fri, 30 Sep 2022 04:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=vIDkgRqfhjUmomvSduq4fmHrKuO3RUgAcTc+dtt+CUk=;
        b=ydif9lIzqY90u1FKGEvclXnG0M4jrWUiGoWw66bONL4ZH83s/hZ7iVtd0w6zHJOFKk
         nXaN29Ezvl/5v0w2vOATyDYepokt282vfrrkXYXeviuMeAVMXaPTjpndLAbmCIRwXym9
         L29GCMOaz6utHHIwV3ePujlPA9c1YGcNPB/ZbC4NxebyzpkNdfRUM1+vWe0vdNWHO5Xn
         YwIul7tso9uu5h9xt711G/ZRrfrXq+iBe60yW4g8vk18mwMlrLoLN1dz54bw+zH/kxFO
         upSOZZzdYTFeCwNtJfcgSLzVx5qoWcNSctSYSRTSd9kJmKh7g0QywbnjYzZlD1sspeqD
         rceA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=vIDkgRqfhjUmomvSduq4fmHrKuO3RUgAcTc+dtt+CUk=;
        b=VMlqlf9KCAl+1ZeeouZ/eyAAVjbwJIcGxjiiqnB1g5/jHbDiQPgq6rXFH4w9L7duJz
         mab3me3IJgyFW9Ic70+yfiqdEGR+i/blEB3H8Mc3WfzwDBira06r4VZKImbx1ycnE6Ju
         7fJAs1zXAuaLv07SMkyi/JYO4BguVlUYPshNJNWVZ1B5xEdfMwXJJjnMKKRT3UzGU3cd
         IknNfh0yWsG4VNu0T1QNyri0nNc3rR34P2FFfnExdfkqWhzbQpJAtBjjR7H8aOcQ8b9N
         BhyIh8X1/Wo3NGeAW+J6kDEfHHg19wrOMlUnSyATR5/+DiSBo1+UdR0HC4nDdbtmt2XT
         V2jQ==
X-Gm-Message-State: ACrzQf1isEShD0VWFoA97uq7v1JQP8taIYbsbWKrweMgGR/75eRjx3SX
	87KHWl/CHitXtpfIxns515jztQ==
X-Google-Smtp-Source: AMsMyM5GHJYmHYi+WA7TC3udjalv2izE9wNvILZWrIGaM3yMYD4vj3nkc2fzDBxu5P/WNZxBwYkcbg==
X-Received: by 2002:a19:f515:0:b0:49e:da3d:1710 with SMTP id j21-20020a19f515000000b0049eda3d1710mr3120877lfb.600.1664537367841;
        Fri, 30 Sep 2022 04:29:27 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v18-20020a197412000000b0049493c14b17sm264672lfe.181.2022.09.30.04.29.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 04:29:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 00/12] phy: qcom-qmp: rework register layout tables
Date: Fri, 30 Sep 2022 14:29:14 +0300
Message-Id: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_042931_828877_93DE0FF0 
X-CRM114-Status: UNSURE (   7.41  )
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
 - https://lore.kernel.org/linux-arm-msm/20220929092916.23068-1-johan+linaro@kernel.org/
 - https://lore.kernel.org/linux-arm-msm/20220929190017.529207-1-dmitry.baryshkov@linaro.org/

Changes since v1:
 - Rebased on top v2 of Johan's patchset rather than including a set of
   patches from him
 - Fixed the ipq8074 regs layout name

Dmitry Baryshkov (12):
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
  phy: qcom-qmp-combo: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
  phy: qcom-qmp-combo: rework regs layout arrays
  phy: qcom-qmp: move type-specific headers to particular driver

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 32 +++++----
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  |  6 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 65 +++++++++----------
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h    | 25 +++++++
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v3.h    |  3 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v5.h    |  4 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h    | 19 +++---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 65 ++++++++++---------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 64 +++++++++---------
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 13 ----
 10 files changed, 154 insertions(+), 142 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v2.h


base-commit: 9aa0dade8f6b4cdcbb114e1a06037939ee3238bc
prerequisite-patch-id: a215a53b87b45ab7b9d05f5f16c7b482ae028718
prerequisite-patch-id: 010c26cf77c7f56fedaaa66a1f8fadc9939aae71
prerequisite-patch-id: 2e8310286716f8b3bcf331853d3c5a1797c032cb
prerequisite-patch-id: d775ed1ac260031e17fd271ab2cb34313a8b6c53
prerequisite-patch-id: 930f311572ae61bd84705076758e33034e04ea92
prerequisite-patch-id: aca076a9c695e1467647de0b4b84d952bed6c16d
prerequisite-patch-id: 73e929b730cac661568299f48d82306d8261ebcf
prerequisite-patch-id: 24317186315a38af3d28e4982885d845863c6e37
prerequisite-patch-id: c21d2af14dbafd48588286d2fb13ea9d53073798
prerequisite-patch-id: 5d4e6d0b71cf42a8119ef7ea89927fde78272dae
prerequisite-patch-id: 3b233d85169099f8d1de48cebee66123d100ec85
prerequisite-patch-id: 7439ce7f28477d7e47b66425fad86ecfd0854c7a
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
