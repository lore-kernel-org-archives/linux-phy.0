Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FA93C6FD1F
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 09:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZtemahV1sHPNXqOwpwqF3uaSZIavPiclOIqWQF4m7k=; b=nziQL6xXE6rnuI
	TTnMJt/gGMoTEbdaLOrEVkbnTh1sgcwh5hZF3XAhoINuYs4eobwZHKNkBjeUDMuBhrJFcx/nzpuxF
	AhcmS6ClGoWrv6kDUnewAzzPiR2KCEg6IlihL0ZN5onL0w6nw/GakLlGeYcC9j+hCAYkPGrTnOali
	WR0C6lnwTcfQlq9ndnNALRu+sDGfmzP9gSnhLG+H6vRKP5olKt4KL+ay28mf/TTBWJD7c+KD5vBtj
	mC/AnyLjFwUoaeXyQ+Z4cZ3iPXQXbG5XyUeOxo6N51pwAEhiB4jhnkATpDZuYl8xm5A+6p4zsHICT
	mFxCGCy6LyhYli0gADtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnbQN-00000006dXi-3O6X;
	Fri, 22 Mar 2024 09:42:55 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnbQJ-00000006dTw-1BGD
	for linux-phy@lists.infradead.org;
	Fri, 22 Mar 2024 09:42:52 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4147d09eb8aso1671055e9.1
        for <linux-phy@lists.infradead.org>; Fri, 22 Mar 2024 02:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711100568; x=1711705368; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lb/oBLLSq3Y47GgvH465o/0zrmlnVPupUFrj/+nzYaw=;
        b=oQFYzn9g1cXsgOmQkMDqX+G+zjaUPqPOdIbrgXH4NG6exGPGTe6oRRgTDau+1dMeli
         X+kJkpeng2u0wCGTAvZaTJnoLOdm3NICex5blAGgfB90AW/Wn+p5Cp0/99g3+zU/TH47
         /yxBC16aOR6OtD4JC6ctLjZlA/LgbEqUE7+PXAdgb2e2mP2qyeEtmo89uev8tCK5/CSR
         3zAfQyS1QYUf8w+rXPzUR9i2tdCmAmAcW58EP8quGs7CT24y7OEILrCsBTmeUeZRv9ez
         1z1a9uOFjvm/BgSw+C8l3DHEIBooPSTVjKfP0MmsIwA8tkTIRuxxYmRY6luqekfLg6PN
         gTuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711100568; x=1711705368;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lb/oBLLSq3Y47GgvH465o/0zrmlnVPupUFrj/+nzYaw=;
        b=hejWUvy3F2SBsJI9tjZML6WDhgx3CQCK202TsX1tC6Hy3RrDH/+CzoFPjs0BVdgsCP
         mPQfnCHODC8GFk65dGam2Ps6kvgOSqLBSqNEYk6xut/yFQRWN6ZSPIHDj3pkKmt/rdly
         yZ4jHCCaaBEUHzeRzyaaYm+H82ApYK41qLTe/OxN+JVaCj2DCQn65Jgd9VDaqpOd9zgh
         YCIs1uG/sMk2RLBZgEBw5iLqhKQVHpQqPgianxPRbXWaUN6pMCiIpeNNeGRSSXSQd9QY
         MVjdwPNo8RizmaDj8Xhvlb/SeQOcJBdlSjT5Vg0g/kWQlbDzBgTXrFY9xRHrHbcRxKTH
         ZtIg==
X-Forwarded-Encrypted: i=1; AJvYcCWlReQoeMG4zJN56VS8b+kEL1rh0TptGwsZ7Zk+5DZP+HSkOQoOSTAra1ghkNsHwG/fOL1uWgaYQ6jQxeLPdmeLkOXwAfjV37QOHaPNJA==
X-Gm-Message-State: AOJu0YzcO+h6Zq1T0vu/W8ESnXE7mG0H+UkndBsWlluDKE2AV8xL0+GT
	iWpVjQkjiEuDGQjU3vTelHabZ9gSq905BXruvbMfpKfyCH2ynIq+UvsTUPqgvFM=
X-Google-Smtp-Source: AGHT+IFhE4WuO1ld2lVoDTkPPQv6d3HT+r0M5r+RWkj/TXlGNstu78Ey7pw4/2GYA85QgQZqG+O0hA==
X-Received: by 2002:a05:600c:511c:b0:414:5ee1:76f0 with SMTP id o28-20020a05600c511c00b004145ee176f0mr1056762wms.25.1711100568408;
        Fri, 22 Mar 2024 02:42:48 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c190900b0041461a922c2sm2547845wmq.5.2024.03.22.02.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 02:42:48 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Mar 2024 10:42:41 +0100
Subject: [PATCH v2 4/7] phy: qcom: qmp-pcie: register PHY AUX clock for
 SM8[456]50 4x2 PCIe PHY
MIME-Version: 1.0
Message-Id: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-4-3ec0a966d52f@linaro.org>
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
In-Reply-To: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1652;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=8/B+tWJIUShz0M+gAUIZn+3gLDyYGJDst8XwZRda3Rw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl/VKSX0G2gVAGe+4VuJE+nNjLNKffJh3KLPtIucIn
 AKkO/z+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZf1SkgAKCRB33NvayMhJ0QolD/
 0ZwywwKP3CIggFcboOnHfWwGFfJHpkbvVSlcFaSTIsVqQIh1NsG0NOgnaMs8K7kSCW4qldvyYSWJLx
 lUGlCw0sgB7r48+X0uPjMclw1c9hYL1VnnXD/auGKUVUFB1asZLcgsuth2+KxAgEu99YhJU8Dgu5Tt
 2uwCXAEYmjj2WNHQc3E4xbmT8wlbj4waQZ+smw+pRc5PTbDDEfaHQ85NRqkI8GWbDVzTGUBZ2gpKmw
 wNqV+tXDriMtobAUVXyYUNHVbXMih9DlTRK+4nPGSMab9WKOsNuPsg3BdFfsWOlKzINunw3qGuzb3G
 uSerAlGZRI+jkz5qLSvIY76pUpgg3yekA+Sx4/Ov36NpVX1GlZN/uBinJJ8zKODLxpCGOaGObp8diI
 sXQWMW0oRaJLz2l9q29XySQFcR+v2igz9C9uTtt9p3/ntQxOT+eeFAYB2L+VpvnLaOxK+7rdEIs/n3
 XGLlZ5LLYZ4JBUBJBzieB0grQrKqFeXO0AcTAV4Q6AMPDtDcL8tVm71odmjMYY5A57TSKDa6stNLqU
 yNa6woS5qq8NKV302aGjFtfpeURAmZoZ0d+BXjE79kcuaY2iT4aMYOS5qHfsJ104pzCnj+jCGad5IH
 CnS3MFNtIHxAUXJvCd/5I3IrIy1gEQjIoHiphog0zRSVNJ9Cs+1l8FJHIXDw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_024251_364032_9B3CB0FE 
X-CRM114-Status: UNSURE (   9.00  )
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

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
enable this second clock by setting the proper 20MHz hardware rate in
the Gen4x2 SM8[456]50 aux_clock_rate config fields.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 6c9a95e62429..e3103bcc24c4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3141,6 +3141,9 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
+
+	/* 20MHz PHY AUX Clock */
+	.aux_clock_rate		= 20000000,
 };
 
 static const struct qmp_phy_cfg sm8550_qmp_gen3x2_pciephy_cfg = {
@@ -3198,6 +3201,9 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
 	.has_nocsr_reset	= true,
+
+	/* 20MHz PHY AUX Clock */
+	.aux_clock_rate		= 20000000,
 };
 
 static const struct qmp_phy_cfg sm8650_qmp_gen4x2_pciephy_cfg = {
@@ -3228,6 +3234,9 @@ static const struct qmp_phy_cfg sm8650_qmp_gen4x2_pciephy_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
 	.has_nocsr_reset	= true,
+
+	/* 20MHz PHY AUX Clock */
+	.aux_clock_rate		= 20000000,
 };
 
 static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
