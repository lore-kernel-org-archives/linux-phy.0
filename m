Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 360E5EB64DC
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1XH9SM0p8KwwpV/xgUKZPUAD+d6U4IHTJkTJtBFLr5c=; b=o1Jra1U1BPBvNi
	p+PWjFO/+uJhkZjC2OW4zKAFHuijzcKihdpQj6v3M+wUUG9gMod7oFBuesx3zndIaropRB4y+T/mt
	HYanKvDMFivQZtF5xG+KdYizOGmScR1BvLWU5Oow9WH75axi1irVBACebIM/SpXG+mIzzD56OIgbF
	d/H+PltaRlW8BgS9kpYnyt7W+0PK6ag2KdIvyij+OY+wPRp3mcKeaX72AcrkRXn9UFndMUN+lx+nj
	nZNDXY8nP+7zdp/fJj0eWNRL/oUR4Qbgy71O0OSihyewgzMe2ylJ5O+V14vHF1uEEo9mxbJrEWmVV
	68snnzo9OIb/Roz8aGkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsH-00Ep87-2I;
	Thu, 15 Jun 2023 12:14:49 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsB-00Eoz0-1L
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:14:44 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3f8c74af64fso17304795e9.1
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831279; x=1689423279;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fg9HPnaQs4uw+/BUPOC0tDtzoyUDTGe4TgouVRsxWgE=;
        b=uTY+xgtBs8To4v9GTEN+G7yekk2CqT/3OfaDsJwmVgqkQPcVz7HnQLkldua9jW9pQn
         s5ghUQQ9iwBaJDt4M+PuOIloRdWa754NBFaTnwgjQT9x9NniSfGwuOeuV0hwCz4kWNEN
         d2nsFzZPs0ZUd4babHrA8gBfkI5uIuKp5U8foazQM5HkEd4OoSFMYfi6Z4SKuj4ABDbt
         027bJqZixgL8R9QZNF+XeHUMpcYm9qpbmaNB+Ftmd/2c8up1hpJojsAi92t9RBgBzPRZ
         CVuE/7PT/vT3S9l/cDmTlQj05vBrKb87Lq36F1ISxs8cN7b50TTt1QXU7WTLIzW8QB9K
         oRwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831279; x=1689423279;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fg9HPnaQs4uw+/BUPOC0tDtzoyUDTGe4TgouVRsxWgE=;
        b=kqgiU6vvE3CjF5NT9OwMeMpp70hwL417HkUWk414db4CeIZWpoLAGljzKEsHJX2g0J
         vrJJ8odHn4EeUBESaztKVUTUjThAmM23kGfqfwKUHEWr/rk93iVINSBbwK5NurusqJ0z
         UmUCT4XEqJ11ORAPdu12c1FneZRdDHPsttSbxz8s3PpLdhWYn786ydOT036Jhz05jNor
         2JOqKg5TTDdd1EzQKIIqqE0t3OmDWOrOPkchYCdA8Y7IISMOx7tO9HOkCYMRTcVUCKP4
         VNuv7E+mI37wnKxFaHo1KBRNYPyqaNuSKS81jAP2S4j+WEURIWKqI0aHVtralAyy1Ih1
         dvpg==
X-Gm-Message-State: AC+VfDwoLjRhSHLaHdNEoSH9WHvVBHSMbRUc8g4+BCT5g2rV6wuQbi2e
	sPe355OKsLArt6L6Htz6aaqOcQ==
X-Google-Smtp-Source: ACHHUZ6Uk6asHy55RemUww5ML8r7mU3nmTyGBsumX9attMu4qXc0CRCwbJ3KGESKakbxKbjqWZ6FPw==
X-Received: by 2002:a5d:4208:0:b0:2f8:e190:e719 with SMTP id n8-20020a5d4208000000b002f8e190e719mr10993391wrq.65.1686831279396;
        Thu, 15 Jun 2023 05:14:39 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:38 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH v2 05/23] net: stmmac: dwmac-qcom-ethqos: shrink clock code with devres
Date: Thu, 15 Jun 2023 14:14:01 +0200
Message-Id: <20230615121419.175862-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051443_470295_8A276DA0 
X-CRM114-Status: GOOD (  13.61  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

We can use a devm action to completely drop the remove callback and use
stmmac_pltfr_remove() directly for remove. We can also drop one of the
goto labels.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
---
 .../stmicro/stmmac/dwmac-qcom-ethqos.c        | 24 +++++++++----------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index c801838fae2a..2da0738eed24 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -586,6 +586,11 @@ static int ethqos_clks_config(void *priv, bool enabled)
 	return ret;
 }
 
+static void ethqos_clks_disable(void *data)
+{
+	ethqos_clks_config(data, false);
+}
+
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
@@ -636,6 +641,10 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_mem;
 
+	ret = devm_add_action_or_reset(&pdev->dev, ethqos_clks_disable, ethqos);
+	if (ret)
+		goto err_mem;
+
 	ethqos->speed = SPEED_1000;
 	ethqos_update_rgmii_clk(ethqos, SPEED_1000);
 	ethqos_set_func_clk_en(ethqos);
@@ -653,27 +662,16 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 
 	ret = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
 	if (ret)
-		goto err_clk;
+		goto err_mem;
 
 	return ret;
 
-err_clk:
-	ethqos_clks_config(ethqos, false);
-
 err_mem:
 	stmmac_remove_config_dt(pdev, plat_dat);
 
 	return ret;
 }
 
-static void qcom_ethqos_remove(struct platform_device *pdev)
-{
-	struct qcom_ethqos *ethqos = get_stmmac_bsp_priv(&pdev->dev);
-
-	stmmac_pltfr_remove(pdev);
-	ethqos_clks_config(ethqos, false);
-}
-
 static const struct of_device_id qcom_ethqos_match[] = {
 	{ .compatible = "qcom,qcs404-ethqos", .data = &emac_v2_3_0_data},
 	{ .compatible = "qcom,sc8280xp-ethqos", .data = &emac_v3_0_0_data},
@@ -684,7 +682,7 @@ MODULE_DEVICE_TABLE(of, qcom_ethqos_match);
 
 static struct platform_driver qcom_ethqos_driver = {
 	.probe  = qcom_ethqos_probe,
-	.remove_new = qcom_ethqos_remove,
+	.remove_new = stmmac_pltfr_remove,
 	.driver = {
 		.name           = "qcom-ethqos",
 		.pm		= &stmmac_pltfr_pm_ops,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
