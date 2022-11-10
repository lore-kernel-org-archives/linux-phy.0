Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 689C6C07E9D
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 19:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2+j837JYy/kA9C6i7vc3xeWcS+7ty8Ff4lfpLpAMys=; b=zqz+O0IJ9qR4en
	KTeKD7j1EM8hnq7bob33qPArpFFroUPjhJQtXJbKsisvrpea07uqVJ+cGi7ZlmlSsuVB/mPTtwNFl
	s1Uz7TVyiXrODVeAp/xaplFCt1Zx6oqk0GmgR35R+1YPJFXUSq8nTviney/cvpAGix2vhBNcB/jCw
	XKKa4DQXM+QeIGBXwkk+R6Dh/8uwS6CCKyCiFbl01mirek1AYNxShv5dCJEMvKJTXWq5jwmhwDWTg
	tjemcy63ntEqxmwCc9pfPkkKv0SDCJWGr7KwCmKXI+Thg9C6sVSVL9UTgFTf4IaRgZS+hSIabcmdf
	I73Om7dWRjskKaVVl89A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otDI1-008mJi-3L; Thu, 10 Nov 2022 19:32:41 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otD8c-008ffu-Oj
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 19:23:02 +0000
Received: by mail-lj1-x234.google.com with SMTP id l8so2048930ljh.13
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 11:22:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ss+R42CNBHIHLS2XAWDJxwiWvT6NqxNzbFS7Tsy5NgA=;
        b=luOpQF+aalxNssLwmiGa+0n7OBgK9dp488UgA0pdb5FQaQt2N7p0+yW7ORT2HmMVb6
         +WbM2+CPM432YHmxMPCvS7lK50rxW4DvJy3xlo3pCRm9q/dhzydhIXSKrm0HnNFAE6FO
         CaRNDx5CM7TVuhMHHzv0ya9xVDy9+tMFpFiDpT/5GlhprXVMo2r7kQmNnjzZG3Zt9fWi
         OECGChK0hxGUuAlimKiAcOEaZbw9TVS7QcHeBnyh46LeQ+JNvtlIUsAfuvwncoocM273
         gyUnGQn1mbkZRRKxJh0pcw6OCrkSn6adQfbq7Z/Xeq2S1+JpKjbZdwBgHxYE8hJgxCfx
         uN3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ss+R42CNBHIHLS2XAWDJxwiWvT6NqxNzbFS7Tsy5NgA=;
        b=o8zY9TU3Az44MdrNazlQ1TdhJz6H2UlvkoAKKi7g8MZFRDaQGW0AgMSDDHKHpgY7su
         vrhj1NYxz6p2E4/7pSqGRkxuJpdXbzSOOavzMv7WfTMfkyLshFpdxysaGJSQSDGwlHpF
         HpKoZbqVbjyYHpQ4ngzBUOSgdIYP4Z1juJUn/kkvH3284PSZEtWj29j4lNQFgWwhiWAR
         RwDtbazokJb/GAgSSbHyCFXGocDRDtcQ4mTJt/Fv630t0u94bJI9nJY3L+pY98ZQ9yLR
         IOIMpYO4qTfTlt9eMuEgeBse52UgLKr63lBgsqceewjH5U52gJaQMvgUmvHGf0yLV2kZ
         FByQ==
X-Gm-Message-State: ACrzQf2fLDEM/y9E0y9Lwvkyrssude2X4YEt2OGLhx2BMAMltJlCx99T
	KMVfeHhgWTsTfEG4HH6ooj3GGw==
X-Google-Smtp-Source: AMsMyM5plQcJVpMaW0hsjj4qUFUQyn3OoKLOLwXeWOnKHn8Y9Bk8xk7/WmVkDsNP+Y9BloZwBe2TMA==
X-Received: by 2002:a2e:549:0:b0:26f:bf8e:20e8 with SMTP id 70-20020a2e0549000000b0026fbf8e20e8mr9777182ljf.451.1668108175999;
        Thu, 10 Nov 2022 11:22:55 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h8-20020a05651c124800b0027758f0619fsm40345ljh.132.2022.11.10.11.22.55
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
Subject: [PATCH v3 10/13] phy: qcom-qmp-usb: remove QPHY_PCS_MISC_TYPEC_CTRL reg
Date: Thu, 10 Nov 2022 22:22:45 +0300
Message-Id: <20221110192248.873973-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
References: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_112258_900191_8E7C2630 
X-CRM114-Status: UNSURE (   8.73  )
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

The QPHY_PCS_MISC_TYPEC_CTRL register is not used, remove it from
register layout.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 3d920a834486..1c2c17880a40 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -94,8 +94,6 @@ enum qphy_reg_layout {
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
 	QPHY_PCS_POWER_DOWN_CONTROL,
-	/* PCS_MISC registers */
-	QPHY_PCS_MISC_TYPEC_CTRL,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
 };
@@ -136,7 +134,6 @@ static const unsigned int qcm2290_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0xd8,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = 0xdc,
 	[QPHY_PCS_STATUS]		= 0x174,
-	[QPHY_PCS_MISC_TYPEC_CTRL]	= 0x00,
 };
 
 static const struct qmp_phy_init_tbl ipq8074_usb3_serdes_tbl[] = {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
