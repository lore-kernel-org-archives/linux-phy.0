Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0CFEC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 00:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goLKlhtGGKwAMi6Uo0NdvBhZMQxwNzbigEaQdWQpcMU=; b=4h96gciG0/8ePH
	PN070Oj9wHRTU3jYCk4arrpgGXFM3uti5A8B6CMGlangIc1gAGvmlwKXrAnAoL9TQKtFe8GycSaRh
	K4VdNgoGIlW3/TnSHJCvgWOWI46Qd/uVejyfQdZ3sO9i2Nlf1mC/PmUw/6Rn+1DMXthGcQWrTOPwQ
	jTf31qrcHTQwRf85Relyqg18I2BMsroIeYzK/f+yywd96taNvD5lXDQctIkK8yzew5fwSqxXAtlTl
	qSdqNCjUTHHiHrE8kbxuExK0xvKxZjg0KCpV4nGH98LrGs3qmqM9HumtLE6/9yC7pPG7U3Kh3+gNg
	yvDqjgv/VbcTtUpxPGcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyjbN-00A7ne-9V; Wed, 08 Jun 2022 00:31:13 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyjbK-00A7mC-Iv
	for linux-phy@lists.infradead.org; Wed, 08 Jun 2022 00:31:11 +0000
Received: by mail-lf1-x12e.google.com with SMTP id h23so30778621lfe.4
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 17:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tllnWBs+UGxhhWXIcjfZ+e5qmbWUYZGw6yCtZxBST84=;
        b=YZipEr4h49uVw66wFY6bPD+55x6UrZUAzf77eBcu4p4FhYUWwWPX5Jxg23ZhM1oz4f
         SGNda4wOY5ew3nFu84EGE9dvoo2tDVkSMKy2aoIXwI+BtkjVuPuoOFUZzUte/yGzEvyH
         tlovAvyEKuAtbqrfw/i5FSgHt/DmLAE8h5OvVukczknrtwVFIX1+2HV3gdOJDdmj8Ug6
         vZfyv0Yb+9Zth4o5KwxaoOnqzzpbq0GRJRJB26S/6XsoCi5tmq8ZXeA62NUGN7dt7Xkl
         ho5FMNGjKc5U6aaTVvGENCu6SiTmPi9Z0ncPCABYgnk8qdkQ/LOV2TnvFULN98mxcSPS
         rrJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tllnWBs+UGxhhWXIcjfZ+e5qmbWUYZGw6yCtZxBST84=;
        b=WoQ+xccSX0lei7jKOXkxa3v5eo0EhxOFLJryFyXKnr1+Y4NGLP52DgobxUZvsWruJo
         cK+nAWIIaRWcsgcZdg3ekIx4Wm7vEZr6JQc2bPNlmTsM/3t/FYUxoZlXoxGy+QW7YBut
         CmOkFcjYrSU+Kr+21iO5DCf6ENU8CWu1Pu1b6+vLytfg0ccQoREpIbg1zFOcYaUdtHf+
         IZjLWx10RQoRvxAhDjVUhN3DkQ9qhvxKG5JQY+d4F5KGUMk52O23FWv4ISc6cNSaSdyg
         iOeNb3Q08LbQB45WmJMhZCVEEsKVLdRh0UUmn53swlQTC09hUV4wAcGsOAlUuo+Yw2l6
         QzKw==
X-Gm-Message-State: AOAM531GJaNgAvlqufmqVfEzhtjKWPAJU1yBwD6T2fHXy/C2YUvZ1+Y/
	z5RIDADjNHCLNqIcskmgAgAoGocPJRbnPWwXtE/HoQ==
X-Google-Smtp-Source: ABdhPJyo5f5njABBdN4Co2swLGpTaz3v7QZAy+orZgzo+cwe/JRf5HKYeRo5bFVyQle3DdTjfdNdAA==
X-Received: by 2002:a05:6512:239f:b0:479:2ef0:3004 with SMTP id c31-20020a056512239f00b004792ef03004mr10837331lfv.208.1654648266436;
        Tue, 07 Jun 2022 17:31:06 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h28-20020ac2597c000000b00478635ebdccsm3464569lfp.251.2022.06.07.17.31.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 17:31:05 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 2/2] phy: qcom-qmp: properly sort QSERDES_V5_COM_foo
Date: Wed,  8 Jun 2022 03:30:59 +0300
Message-Id: <20220608003059.2910252-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220608003059.2910252-1-dmitry.baryshkov@linaro.org>
References: <20220608003059.2910252-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_173110_659282_DD9E529B 
X-CRM114-Status: GOOD (  10.05  )
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

Sort the defines in the QSERDES_V5_COM_foo namespace according to the
register addresses.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index b9a91520439c..01f9b4cc08f8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -1093,8 +1093,8 @@
 #define QSERDES_V5_COM_LOCK_CMP1_MODE0			0x0ac
 #define QSERDES_V5_COM_LOCK_CMP2_MODE0			0x0b0
 #define QSERDES_V5_COM_LOCK_CMP1_MODE1			0x0b4
-#define QSERDES_V5_COM_DEC_START_MODE0			0x0bc
 #define QSERDES_V5_COM_LOCK_CMP2_MODE1			0x0b8
+#define QSERDES_V5_COM_DEC_START_MODE0			0x0bc
 #define QSERDES_V5_COM_DEC_START_MODE1			0x0c4
 #define QSERDES_V5_COM_DIV_FRAC_START1_MODE0		0x0cc
 #define QSERDES_V5_COM_DIV_FRAC_START2_MODE0		0x0d0
@@ -1122,8 +1122,8 @@
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x1ac
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x1b0
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE1	0x1b4
-#define QSERDES_V5_COM_BIN_VCOCAL_HSCLK_SEL		0x1bc
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE1	0x1b8
+#define QSERDES_V5_COM_BIN_VCOCAL_HSCLK_SEL		0x1bc
 
 /* Only for QMP V5 PHY - TX registers */
 #define QSERDES_V5_TX_RES_CODE_LANE_TX			0x34
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
