Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B07FEC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 11:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02JPCQOmre043fxbDl9Aufy1pIP1PJ+p/izUixz40Ec=; b=aLIn8XRXqnAVNO
	2awANLS/NXkuO9REBHfSRtabFW0w4DGZKTzcAemeLopqoNdWCXar0xXL81OiyZ3bvjZ9X3kUuTuq/
	vw8PqotD1CkJebvm9p6h/6rYv+hxJqS7N3WxtIohhbgWJz2PhClf1CgXe7XXr0IZGY3pZJ0Xwb9jD
	mTY9j4DrMLdrLE9tv5QNYHt5zttBqzU4p5cI67C2jPpG+mWMwPwDoo4c/Cz1MXpoglrmccHdjVrfz
	8nUEp61FiEZwIxMlMOfFLqzweslCAkgK/SeY1YDUn+5UviOEze/LB31Gdxv6OL+E4mR0lsLTNNyAs
	F1u/N+x2fjJNXlU85mGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED8-008sY8-5I; Fri, 30 Sep 2022 11:29:42 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED2-008sOb-Qw
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 11:29:38 +0000
Received: by mail-lf1-x133.google.com with SMTP id i26so6389017lfp.11
        for <linux-phy@lists.infradead.org>; Fri, 30 Sep 2022 04:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=rhKbdwst/BpiiCM8rfoNFs8xFLwWZ1VpBtGfoWNHjyY=;
        b=SbDF+xVR5lG7PY23ZXYceZysJ4jjy4ueblk/PkL9nDhZzMVv3K6lsIecR3CSU6yfzH
         qMcsUiIWFD4g9z2dgF8lWDT+SpFz/MvhYoMFwQKxTeXAaYKYTLsT85fTCj+s/y9EDFJy
         EVUtv42B81iIVvNckcttXFKgOkVuH91iUOvhEHrS/BWjaUe8mcri2BGcaI4Ru4YVcYqj
         g5S5qmEG6avIZ4hjdIhSNUDHUxu2+awGRl7LRJf+v6QTuPcNKjOMyHzTferufPI5XCqa
         oF1tQmFuYcapB6WsczpFhSlds2scE/FnyZkJx76rs1O1ubQfb7+fYYjxKK2qX3cbEqYZ
         8meA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=rhKbdwst/BpiiCM8rfoNFs8xFLwWZ1VpBtGfoWNHjyY=;
        b=K/fAZLJNzAC1tJgAS0fikZXNEyGjeDJeklctvDPFVxGli1sPeIC5mwWb8y2iS/3+P2
         SzdBVuHmdv3UFDkiTXoEzgnbESKj5fYlZYeBSL/FTh192lPm/RCS68pC7UpJ0fsSw5eW
         QwvpfKojuVzThVsmgIdmPD7QDQiQxHQZqbeoWBJPPBGovLguk5/cA6K8I+k5HFR3YmTL
         /OBS6MyjoEmXQxIYaekfvliIu5rVOIAxIw9JLigaOg1fs2XE78ukPnskJU+a16NnehLN
         9ghbR7OIh8/RIsD2xJT9jLCt8Dkc+CHnx4/qyfSKAoN2G6rEBugkP/AquSHHrXPx420K
         a2Tg==
X-Gm-Message-State: ACrzQf3lcHgsZGg9r+qO6jWWjfxw4PWP8BgMcYgyIomzDrFVaNCsEVzR
	ZJ/1TPpI2ip2mlSYF1HQbZRoeQ==
X-Google-Smtp-Source: AMsMyM4cKowmpUdWeUiIIEkz3wvzEVVMQC87WqGvRP4Ku9XEeyOduLgiNZSeB36AwyaVWSUeHyYbJQ==
X-Received: by 2002:a05:6512:3054:b0:49f:f05:1fa5 with SMTP id b20-20020a056512305400b0049f0f051fa5mr2988916lfb.107.1664537376227;
        Fri, 30 Sep 2022 04:29:36 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v18-20020a197412000000b0049493c14b17sm264672lfe.181.2022.09.30.04.29.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 04:29:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 11/12] phy: qcom-qmp-combo: rework regs layout arrays
Date: Fri, 30 Sep 2022 14:29:25 +0300
Message-Id: <20220930112926.638543-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
References: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_042936_911318_25B55683 
X-CRM114-Status: GOOD (  10.19  )
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

Use symbolic names for the values inside reg layout arrays. New register
names are added following the PCS register layout that is used by the
particular PHY.

Note: ipq8074 tables appear to use a mixture of v2 and v3 registers.
This might need additional fixes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 24 +++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index cf675a00e391..0561df216fb1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -114,23 +114,23 @@ enum qphy_reg_layout {
 };
 
 static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x08,
-	[QPHY_PCS_STATUS]		= 0x174,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x0d8,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x0dc,
+	[QPHY_SW_RESET]			= QPHY_V3_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V3_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V3_PCS_PCS_STATUS,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V3_PCS_POWER_DOWN_CONTROL,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR,
 };
 
 static const unsigned int qmp_v4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x44,
-	[QPHY_PCS_STATUS]		= 0x14,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x40,
+	[QPHY_SW_RESET]			= QPHY_V4_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V4_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V4_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_POWER_DOWN_CONTROL,
 
 	/* In PCS_USB */
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x008,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = 0x014,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 };
 
 static const struct qmp_phy_init_tbl qmp_v3_usb3_serdes_tbl[] = {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
