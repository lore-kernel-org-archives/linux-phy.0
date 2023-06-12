Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20783C7EE2E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F/MripPZa9UaLQlPrYj17kXn3IIDy2Wpfhh+X/xDbRU=; b=kdg0YO00DuqKlI
	Kogsj5FUSzyMq9T/Ug/CIabI6CDfl07kZWOgMZZ7cGNYINi9OfqfQBMo7km+AyYFo+b5f6p9nQT2L
	YK3FKGOCY0KSTb2ihT6t+RoT2dOZelzZc/4jpfyB+bQim2aeegkBgnhLk60fQJ+m8/tAgsNaSnyLs
	JFujqSsLVbUX2CarphPWVwrZRikiKj9tbEq07vI44sRS2yiHT0BSStXrP2Jg+Vm+XE6t9XGQRHaPF
	6Tx3WEfqR+NU2lNaSRXyVUVY8VcZ232d37eBNeuWc1SwN3Gk6hULZw1FZp19XKaY9M7VBEVeN1dlD
	BdlYJoTGI3aHCzOicIkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dmx-003GyS-2J;
	Mon, 12 Jun 2023 09:24:39 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dmr-003GqC-2m
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:36 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f738f579ceso29731365e9.3
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561873; x=1689153873;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nw89zfIb59CUkEP5Ai7VazKbf1+XGop4tAXeykv2kzc=;
        b=HRwjTwYewLxWQA+IGypwGPKaQrnA/Wdf9eY6XI4irbPBTq5zqp+2jE6iNjFNtIYokW
         2oIEi8K0Q2UE5Z4nrTuXXwlFdZVRdWBaBE7cy60Qy7h/+cwcRoMnGmDUebo+KXdoZpJL
         krYZKDOSyXAb2+9dK0/JnM/iDhOCDkbgaUG0trEr0awFRqhl55hQSXimZWLdwG1iVSKJ
         UWqoodIwJxKQa+GGye9WeMzU9XFxA9B8lZIsyeuOVvLx55vIwvivdM9BhrKky0GucXSe
         3MeQ54jO/tnJl3G9RxNYKxVxEscpNh+t3vjVw/fQoj8SrecH7Q9NLffXL5EiKFZp2QiB
         d36A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561873; x=1689153873;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nw89zfIb59CUkEP5Ai7VazKbf1+XGop4tAXeykv2kzc=;
        b=TV9qjANW1VzNYSAsWsAMZi81YAypyzMP8eOAGksPUWpMnJj6p+w2Sz+xCbOpNs2Mjg
         nEVdFbQ6zm/KuUO7RFcBC6SGBnDQRMrmDtzUgjPCVDX0Zvf7R7kzaEhccZ0ZAP7AMmIW
         9MUOMg6KdC2eRM+lEDE3vzVka2Wf0P0peFAyU+FwIesFrsFN7aR2GtgzXGjiwKlaBe9N
         IJtiMYJcMNMBl54XRL5FCD8b11IhikNq8A8lETnlZ2Tw9Hx99OZmcyl7WbfjsDJXS+2e
         Eqp0vdCEMDHgWwfrId1PzxjQIk+lz8ubhfeZkAUyhkCcyX4uJ2W51ocwcajKxB6aakrE
         PI7Q==
X-Gm-Message-State: AC+VfDwHqEW5BLY6GXIviO7i1PGzFRuqSuah3Yz3vWakWGl8j8AsnyKI
	jlt9OZH79/kp+cP19f9WN2QqHg==
X-Google-Smtp-Source: ACHHUZ6VK6LTUJw/yW/4XN49HQihty5f846MrrT4EG2EUTljwzIKfAE33lIeunjnfm1wqIWVNxQbdA==
X-Received: by 2002:a7b:c347:0:b0:3f7:e7d5:6123 with SMTP id l7-20020a7bc347000000b003f7e7d56123mr5820770wmj.41.1686561873262;
        Mon, 12 Jun 2023 02:24:33 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:32 -0700 (PDT)
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
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 05/26] net: stmmac: dwmac-qcom-ethqos: shrink clock code with devres
Date: Mon, 12 Jun 2023 11:23:34 +0200
Message-Id: <20230612092355.87937-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022433_909653_0C1F3296 
X-CRM114-Status: GOOD (  13.44  )
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
