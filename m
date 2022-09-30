Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E468BC43217
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 11:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgWXpzgUYOC6hTYq0CxbiWJqrr8lz5r6jwcrWYpw+Is=; b=PlbbNlVWD54mf+
	E74+jloyqo8VWDPBG2UFqrnlbMQ7++OuXhAXR/iEd3PhZnRCfQ0EKmhGLCu7CV+1yWJr4PLP4TAGb
	WyJll5mqHBi9rVxhjqEkuNmKg9CobISxay+UQ5pko7yOidajE/LR/7pavQhdFUxMnV3RTIpXn3l6h
	wwHfkvost6BOQY6e6sogrBBa5cPSHvV4vWHu3+R1mZCYMnmwsrWbYMi63RfLTPZ890TJiKMkvyWfX
	SdxF4L9XIz9Qw67EIAzQyQtdHQ59/sJkvEZ6kN2mYeJkgMLwANx/ADWox/Uhn7rGvyKay1M52bfqC
	g1J4hrUNczBuhrHwny1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED8-008sYl-B4; Fri, 30 Sep 2022 11:29:42 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED3-008sS4-7X
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 11:29:40 +0000
Received: by mail-lj1-x22d.google.com with SMTP id bs18so2894047ljb.1
        for <linux-phy@lists.infradead.org>; Fri, 30 Sep 2022 04:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=5/vixtPVZkNkXwA8g/Wl3HRra55OPPTRqrek9aKxpRA=;
        b=FQXC9u9sfCjtSQqMdEmKfr6D1t5lzONskOH/77NbuQRQC0f6OhTox3k5aU+qltGF3e
         0bAZGp693ICUNzVRb67Q2Qu8sDu4E3DjuW2DOSAj2UmdB+h4oeP6MCjHnjc0KsZdJxdd
         ZGqQZ2VM6kQ2x+v1KxqBU3qTlyFUg9hgiD3+Mv4qBdci4XndWBCxW+JONBGu9nRB2wTi
         DKhgPmv7JMwP0tUMN7Glp+rAF51QpAYNbunJl+1NNycSZbYhDPdx1cv6/gPvnW64cJmG
         AEDcZ6cnu0RWAztTqQftIumgSxTKHnD+/zc8maXrPpbhoQcw6JQ91aeGnOLy3ysgTIco
         vWIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=5/vixtPVZkNkXwA8g/Wl3HRra55OPPTRqrek9aKxpRA=;
        b=F1WxK9L3ijxmb4YIjcx0hR2fNker2ttQ/KV/o9ZMbbwGINNiYxh8rgglWgP4wNmLXH
         crmDJHklODG2AANq51v4wtB5uYe+oCGxJW59qTJf6vUVbo2wVjyrgo8CMnRo3Bx1kRzY
         4XCMAy9ezw0oaAVfOJtc5IFSyueMhtxLTjmcmmq+ONVUsOZubhsnpc2lfMf9TWvZYs2/
         J2Icw/mdvge5Tu8zQW3ZEp/ATG4/ZxR0/hnxgdAfZFNA4YCd33MXetFQKLoZ++ixNCLb
         8k//JdsB8C8GrS278aAQkoKjN241aBM9Vh5LhuSu1VNU5/C7BTsE3OLl0fwVQzEHPCMd
         cE6g==
X-Gm-Message-State: ACrzQf0vV58tP9HAyx4Cn0oo0wdRPxkSKKO5wSFwUbXqq3pHzmCkT+SH
	raiZDon0n/PFgOxL70/AohKt3F9qhzC1dA==
X-Google-Smtp-Source: AMsMyM4mj1hHkePWqkhEaiLtBWp+h7SUrH93IwVH7yyCGbwN0KoAm+nJalUZuP64LEQav1u80Cqwog==
X-Received: by 2002:a2e:b611:0:b0:26d:36a:696b with SMTP id r17-20020a2eb611000000b0026d036a696bmr2684439ljn.257.1664537373280;
        Fri, 30 Sep 2022 04:29:33 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v18-20020a197412000000b0049493c14b17sm264672lfe.181.2022.09.30.04.29.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 04:29:32 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 07/12] phy: qcom-qmp-usb: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
Date: Fri, 30 Sep 2022 14:29:21 +0300
Message-Id: <20220930112926.638543-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
References: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_042937_323002_AFE683B4 
X-CRM114-Status: GOOD (  10.40  )
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
index 0f286c648872..9d112aa34ba3 100644
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
 
@@ -111,7 +108,6 @@ enum qphy_reg_layout {
 	QPHY_PCS_STATUS,
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
-	QPHY_PCS_LFPS_RXTERM_IRQ_STATUS,
 	QPHY_PCS_POWER_DOWN_CONTROL,
 	/* PCS_MISC registers */
 	QPHY_PCS_MISC_TYPEC_CTRL,
@@ -125,7 +121,6 @@ static const unsigned int usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_STATUS]		= 0x17c,
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x0d4,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x0d8,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_STATUS] = 0x178,
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 };
 
@@ -135,7 +130,6 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
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
