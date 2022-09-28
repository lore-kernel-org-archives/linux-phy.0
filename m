Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 087E7C6FA94
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNTHHb5UuHT4omqhbeP7RW6jdIcZy7Zc+1MqZ6DqSMY=; b=IvoIn9A4vUVnX5
	6KANWWuyCfzsORsyzf/GDAtAGzSAamIgTlMn/O8O7snDHe1OVYcseI7+Ijf3omVJKhb87ibQcE9+Y
	UaCwgn9Ie1EQ4dwflcmIknvtM/7rhfiX8Miv01xqP20VwHwz5VMTUstUW89MndhirBa6SvIDdX+IK
	NZ+g0gIljAwaM38ZJ2yUpWJMt+A+ExFEaREMHrBZI/wqO73MQUM5N707wTI+co0RTJ3JJZ5R/6th1
	MleqPn1xmM56zM7WTb4XCe4bGvpwYi9I94Extscm/Zec3Ws/nYPAa5jsFc5BqUZZ4G/I3g9X3nAQR
	NAIMQCUa1XZ6VBDuhWqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCO-000cNz-Fc; Wed, 28 Sep 2022 23:10:40 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCI-000cFf-8s
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:35 +0000
Received: by mail-lf1-x12d.google.com with SMTP id bu25so20668784lfb.3
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=VAKC0xhD9A/vbD1jCZpQDa2lUX76J4j0ycJCoRe8Fdo=;
        b=Ik72d0BFtpAjooyK1kS9/n+yLxjD/AaHJzIAVWUu5L6oNj4NmSTeVxOlUQ7MLZmNhn
         Kv55WADv19CSbdzt7v8jvwq72F2OR8lfP40He2kKwiuCp8Hu3cedmqz/LDESBQ5qcZz1
         pz7ULYhDcqDrBj5e47tb8IQmj5x1RCPGlLjZBmli0YH0dyN1kgKvNS/7FjVvhukASPh4
         Enlc6OUw7BW+f7kQ8HeqeR3JgRLWiAqN8QQlhtQfHVUf+D8z1afAc3ZljMvhTm58ONTw
         FsWWvK4moQcRNy7CefeSr7I6+dAMlysJJkYrkbPDCxiiqhnkd17WJkXiOhofzMOw++0n
         mMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=VAKC0xhD9A/vbD1jCZpQDa2lUX76J4j0ycJCoRe8Fdo=;
        b=0bfmQnRkp+Z5qMq7ff8sgcTjIT7Bv52cC8d3pL6cIJ0PxJyJ37yxF6DaOOCSXJynun
         h2yizTZaZtZveFDu0KefkqUEtmskeTCkklbHgHXQi5CSGlTdDSV8mmRx4WlVGg79Y5/D
         u07RUFWnQzJ/H2AtO+UkdnJFZh6HwIuj/3VQnVcaMWbP1beUFlWqQpPaUnWj9T46mFPE
         F7hMcy3EB+GU4GUGg/3vJVHAduA+866r5FPTLP4mO7ogT+jAa80cdetpw/U8l0xjgZtb
         yEGcINj1tnvXRaGR539McKW9GGay+x8qXPXb4RRM3iw5n3OFUFNFzLJz8qIrrX7eh6B5
         3piQ==
X-Gm-Message-State: ACrzQf2KMhMGlyOpfcLWSqsAPJVIUic7bjhXd8x32h8xLeGz+DHMMzl+
	CHX7Rja8/bzEQfiY3JECBIrHkw==
X-Google-Smtp-Source: AMsMyM4sKWjTHuMt0ScOHq9OPO5gNi7CzTFn1lD+zq9sw8hERqK2ZhFDu49ENH1U8pChutdlgeOPYg==
X-Received: by 2002:a05:6512:308f:b0:49a:5a59:aa25 with SMTP id z15-20020a056512308f00b0049a5a59aa25mr118781lfd.44.1664406625151;
        Wed, 28 Sep 2022 16:10:25 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 16:10:24 -0700 (PDT)
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
Subject: [PATCH 12/18] phy: qcom-qmp-usb: remove QPHY_PCS_LFPS_RXTERM_IRQ_STATUS reg
Date: Thu, 29 Sep 2022 02:10:08 +0300
Message-Id: <20220928231014.455201-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161034_334495_493A431F 
X-CRM114-Status: GOOD (  10.24  )
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
index 866955a36315..43b7ad2c9479 100644
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
