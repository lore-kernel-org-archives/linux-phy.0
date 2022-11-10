Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D632EC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 19:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zITq4EHwn2uGem7EuUiGwYqccGOCLjPfqYYf73nJMzg=; b=HYiMvl6tj31/XJ
	YelLhtGiujwi0Dq33PkPF123B47ft7B1WAgniNyS4vfiYaa9edfW8s7niWLGLDUx1CY+ksTrkQhdk
	/3CshhwbddUjiRRM7yfJFjgXH2or/+2eJRb9n3jqUfdHka0mxnmrSHcQQTfSZWPQZdWHgQ4wz82no
	Bmo3LMLFwOffLXsh34NKZXb/ouQYGpXgW6eVy2hzBFDOe0TbKshvDwaGJw7otMfzFXQqRO32D2Mfu
	0PxvL5zpx5nWMw5w3P/VZ4JwIKfR06EnHOjAijpnuCf9BbDTI5dD6yOtVhwzKqPGPzgx6PCXFXq3i
	dHY73ocR9n9ebT4VtphA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otDHz-008mHi-VS; Thu, 10 Nov 2022 19:32:39 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otD8c-008ffF-KT
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 19:23:00 +0000
Received: by mail-lf1-x135.google.com with SMTP id j4so5122715lfk.0
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 11:22:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NzgfHXCd9bT9AU1uUDCeffQ3kVak86+68W/RoCE18ZU=;
        b=b/3yIlzQq8JBW9V1+6+OL36Lnum6Dg9vpAiHCaByGjfWZHFLeyVHDmv4jIRPHS2R3q
         bgu7/2gUiymdjHKS/7QJEzw+44aH8/6c2jcQhb8ce9NND11YJG/H8d/wf+GibVkr6+cl
         9DE5Wmj6OaPrg4RSdZPQkc95XF/2Vx1empRu4jj2RKnId865DJM3uF6HZYuKotLypsVF
         QdWdgEjPNU6osNIDbE4Ay44y90CTudY4UWaHIG9i3pAeYPwr3PJnXo0a2cknQ8xqTVFN
         TgejzpXwxF+vi/Hd6dekKCnMglQj5sZcyBw4rHVznHFCYH+q8pPu14zzEyce9MeJ6Aqc
         WFIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NzgfHXCd9bT9AU1uUDCeffQ3kVak86+68W/RoCE18ZU=;
        b=wWsQB8CDKYOrUzdWti2Nr+Cunl1M7a/K+/TtqgN4mL8BvUe+0lOb4Y7gxhqESPXjKh
         otkKnCyD3mLDeuS8MAQVaUdSL5tnnD2oMkDNCzAoMK9zdQyUOxXN8B7OVH6R0RSIpPEQ
         DMh3Eb7gfVcVB+lD+s80mT8+PM2mUgGdA2nmVUhT1k5oWtmoqcvpgDCNXPPy273Y1HgC
         +08B1UT/AHYaAJXeMADmgWvfVWloEs/PeohsfjgyA3pmnRItAavpSq2Ngzc7bGSvaTVO
         wTUTMdG7XoqfYdmljxslSwmGmhQ60Wp9Bsm5q0F+ioNI7PWYZ2UA+qnVhhlwDajAlvqD
         kYEw==
X-Gm-Message-State: ACrzQf3TXIL8nu2JpzfPyYvVB/rYUqiNcIxj8xpiR+pdlyZjkURwBA5D
	UHktyGZ3yU/NiPWUed6NvE6oAg==
X-Google-Smtp-Source: AMsMyM7KTkQx49nWHjMV5Z4sGcjZK4dvqQG4bNovDTIA/Mq5+i4U6+k877QouxVZdGrBRL+eAXX1Hg==
X-Received: by 2002:a19:385a:0:b0:4a2:5008:d235 with SMTP id d26-20020a19385a000000b004a25008d235mr1857987lfj.7.1668108175368;
        Thu, 10 Nov 2022 11:22:55 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h8-20020a05651c124800b0027758f0619fsm40345ljh.132.2022.11.10.11.22.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 11:22:55 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 09/13] phy: qcom-qmp-usb: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
Date: Thu, 10 Nov 2022 22:22:44 +0300
Message-Id: <20221110192248.873973-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
References: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_112258_737681_53A99F0C 
X-CRM114-Status: GOOD (  10.20  )
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

The QPHY_PCS_LFPS_RXTERM_IRQ_STATUS register is not used, remove it from
register layout.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h | 1 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c    | 6 ------
 2 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
index 431e9148b8d0..c7e8e2a28e6e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
@@ -28,6 +28,7 @@
 #define QPHY_V2_PCS_FLL_CNT_VAL_L			0x0c8
 #define QPHY_V2_PCS_FLL_CNT_VAL_H_TOL			0x0cc
 #define QPHY_V2_PCS_FLL_MAN_CODE			0x0d0
+#define QPHY_V2_PCS_LFPS_RXTERM_IRQ_STATUS		0x178
 #define QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB	0x1a8
 #define QPHY_V2_PCS_OSC_DTCT_ACTIONS			0x1ac
 #define QPHY_V2_PCS_RX_SIGDET_LVL			0x1d8
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 55029ea63f73..3d920a834486 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -56,9 +56,6 @@
 /* QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR register bits */
 #define IRQ_CLEAR				BIT(0)
 
-/* QPHY_PCS_LFPS_RXTERM_IRQ_STATUS register bits */
-#define RCVR_DETECT				BIT(0)
-
 /* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
 #define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
 
@@ -96,7 +93,6 @@ enum qphy_reg_layout {
 	QPHY_PCS_STATUS,
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
-	QPHY_PCS_LFPS_RXTERM_IRQ_STATUS,
 	QPHY_PCS_POWER_DOWN_CONTROL,
 	/* PCS_MISC registers */
 	QPHY_PCS_MISC_TYPEC_CTRL,
@@ -110,7 +106,6 @@ static const unsigned int usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_STATUS]		= 0x17c,
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x0d4,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x0d8,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_STATUS] = 0x178,
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 };
 
@@ -120,7 +115,6 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_STATUS]		= 0x174,
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x0d8,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x0dc,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_STATUS] = 0x170,
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 };
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
