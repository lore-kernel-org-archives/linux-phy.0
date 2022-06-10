Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87700CCA47F
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 19:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IThsmm6vOZzNyCYyFfFG4g2UvX7Pu4DNGXZmARQgXTI=; b=pqmse3fFs1HsGe
	iafkUID8Vx9Iw3d/X/4MLBWPbOtv0eBmcyCXUHTA9SYeW3GHCY/il2URuwvzqVDw9OLfBqq7uB+NW
	fOTveE3rF5G+td2ufDnLEtrNfsc0WYfV8AHIYdqwO84sl++UdpI0qy6jGLAoCfA6FoXVNF+Mwdmz1
	LrhHTjwVA365DMBLPrH5KXJjarHt9Gvq39DBbQi95OOzOisyGGrHPGXRbY6Omt5Wipo045M24ER9w
	Yel1+WLva6jfTyG2NFpMq36rtJLouMqF6fVRP4jSzJ79ZnXTCK0Z7C1NgUsR3FOVveU02emdTSPTZ
	ov/CHELqWjDAsg+5H+Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0k-009UlE-Nq; Fri, 10 Jun 2022 19:09:34 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk0i-009UjP-61
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 19:09:33 +0000
Received: by mail-lj1-x22c.google.com with SMTP id h23so143015ljl.3
        for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 12:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=01bj+k2iK46i8ygWClSrCFjTLx488NH70cSKsBIKTsg=;
        b=e2UYcv7lC0jZz+Wigj6FNk1yThV/KB1KLaVVjLjyM+YOg8FsAGBF7KPSxASPLIy8cm
         UxmcpYP0PeJ5I9x5xdlgmX/wDSneUlY053PwKo/g91oyJnM/tlL6mzxDCND49SfnM4WM
         2EKcBQZa/RZrhLT7rBqn/WXsmMHvqPXUZ0iXaJxsh6D0ERC9i+sxUZQOW1dGxcENluBZ
         2PQ28CXz/mj/a0eYrYWgda6MSkIkr5xNj2zNSxgZWK2IyQ9hOwRhtVV1ph5G+kjSrhdB
         webI1/D+Z7ecQk4fcPq2tevTdW+cVDVvbOuzLjenNwNKQbXGLoYHMgjZ+A8NNSMziGVA
         x3qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=01bj+k2iK46i8ygWClSrCFjTLx488NH70cSKsBIKTsg=;
        b=G5d3/zGVP4jANa+VMoAw0Ty9poF7bcxlGEAzA5qLXc0GIQz/Nhqr+QI4/7CHDoyxgV
         Pz7u2PdnsHE5uxqZucEQqCwHyWk2BYL/xvO2KzwQwRQFrmTlxdoreLMeVs9vTd/WyoqP
         cxbiPPeqTOhNmcMWoInqsT+559Xr+K41S5HoDRvbm8keq5/j1rFqXCVleW7oUyai1O2/
         Dps+cMeYmIVQ93Eir/E6dRslz30YYaJsoXTt31/mBnLC9qq4ILv3bK7fRmqJWp1HM0mi
         36jbe1zcSNtWTsjj4RcXaQ1alYz0PvSKFZ+jPI6f0UqAyE+W9/Y9DOnpEQRHCwwX93YD
         3jEQ==
X-Gm-Message-State: AOAM531whio32inclsVl8EIhbqEwg68pf0OdOMuj4IRYHFzYqlmK1epR
	e+qyejm/X/ni6lsHPKn3E7z4Mg==
X-Google-Smtp-Source: ABdhPJwOfc8XsZXdVD6QUYDj3rblILAvfam/8wo18Ug1btVrQE079zdGPlnq58qSzQa40Lb0HXg/Zg==
X-Received: by 2002:a2e:9893:0:b0:255:951f:9694 with SMTP id b19-20020a2e9893000000b00255951f9694mr15655945ljj.283.1654888169533;
        Fri, 10 Jun 2022 12:09:29 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h2-20020a2e9002000000b00253e1833e8bsm26614ljg.117.2022.06.10.12.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 12:09:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH 01/28] phy: qcom-qmp: fix the QSERDES_V5_COM_CMN_MODE register
Date: Fri, 10 Jun 2022 22:08:58 +0300
Message-Id: <20220610190925.3670081-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
References: <20220610190925.3670081-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_120932_265231_34092AF0 
X-CRM114-Status: UNSURE (   9.40  )
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

Change QSERDES_V5_COM_CMN_MODE to be defined to 0x1a0 rather than 0x1a4.
The only user of this register name (sm8450_qmp_gen4x2_pcie_serdes_tbl)
should use the 0x1a0 register, as stated in the downstream dtsi tree.

Fixes: 2c91bf6bf290 ("phy: qcom-qmp: Add SM8450 PCIe1 PHY support")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index f4ee5884c076..581f09c71667 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -1116,7 +1116,8 @@
 #define QSERDES_V5_COM_CORE_CLK_EN			0x174
 #define QSERDES_V5_COM_CMN_CONFIG			0x17c
 #define QSERDES_V5_COM_CMN_MISC1			0x19c
-#define QSERDES_V5_COM_CMN_MODE				0x1a4
+#define QSERDES_V5_COM_CMN_MODE				0x1a0
+#define QSERDES_V5_COM_CMN_MODE_CONTD			0x1a4
 #define QSERDES_V5_COM_VCO_DC_LEVEL_CTRL		0x1a8
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x1ac
 #define QSERDES_V5_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x1b0
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
