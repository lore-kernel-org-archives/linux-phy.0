Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86C6BC7EE23
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/wgBzg3MeyOeg9j1YkeKwRCA2xmVOCMoOo1oCs65OE=; b=0mp0HNyFdSTvae
	3cOAuoOcMLDPH0K/f5A0rlVH4xc8bIVif9k/Hp/sTAi7viTRzYjohMqzXbYbPePwvlSyirPKWHUrx
	UdR+LaQkU/q/Zc2CL6uOkidFd6njVdkyf54l2g7X+b3Qemu4/PL+E+qjgQagIPgf9aA5/NrITovKP
	wBeAJcrNL3d1HO0DouwN+2LyH50DBVurhmyes+8S7vZ2SKxNijN72b0kjE0TXsX1oQ54RDVRKR8VU
	aFKRj8WVEBkNz581ZGUUZkFFntN5BAR4NeMzZJIXuBE02FvJbU/AX19kTYWvuBb9S2IxzPiUMgsO0
	9P/9pXxQmMAripRGYSEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dn9-003H7J-0c;
	Mon, 12 Jun 2023 09:24:51 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dmx-003Gu2-1o
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:41 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3f6d7abe934so27873095e9.2
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561875; x=1689153875;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IGA9dmnWHTO9MZBMILRr3rONKWHes12eMbHxxU5rYjo=;
        b=VJH/EqnpVIY9A4wdvuanh+zRJFMHoqtN9KlHUE4TXf8pfiMb7wFsH2Rj+361K8lWVj
         iK7LWDPTaXeD0dwIS2hHMT1FGQVyG7CkfGyoZjPt3BdhoFANevsCA4Mo5a8ppPcQhgdp
         SP9IO3RNxz+n007apXXHJ9NyObniN2jtUwd+h0QRHR2Bm+AD+4TYdaz+x15cqvuNjqJK
         +/B9tZ8/5bhK+Bt/im5KT0ddam05HuhL9bBrYeCt+Ua0bWcnkwuK/2cTvUpJFUP7Np4F
         TVwOCy8t2WTgdeXbdqUP2tULpIEZK61tC7Mi6OK+2RsGopFURjr79xtR0s8fMNOjKYNi
         Hzog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561875; x=1689153875;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IGA9dmnWHTO9MZBMILRr3rONKWHes12eMbHxxU5rYjo=;
        b=aKDX/5swg0sukmdBzmM59v0kCCvTTbZ4PN8FOkRz2zGwUqUGbNCr21FTFBTqAg+Sc5
         QcAnUorHHBrtyIyKLyzBiEeHixAMr5YWlL46dMonGz36ObCxKxOd50TlezndQYiiTzxs
         3xQoJXuUJNOHzdIYYk4SLUDmm9ZoO70YfIOCbvMW2USGLZcYLtOmgZ+QFuDp+dTPc6tT
         19ZE7ZjTB3pkdwyyL3l9QkQ1ZCXGHFXQL3FLJjLNKYP/58cs7TqG4YEBEoOEaWwlWBhq
         aWkAWzsVdB2Hwi2nfcR1mMRYZXSmGPXJCWbj4DooqOJM2VzxitgOqWB8CCjJASSiQlw4
         u72A==
X-Gm-Message-State: AC+VfDyCxRY/+7+hR56loSALRwrDP5haNSvtaEZlewf5Ug++CZ4h9YzQ
	21tzd3FQx5jW4qfWF/pXo9zcGw==
X-Google-Smtp-Source: ACHHUZ7q94E48lRzMF+w4RCtrzBLHXU/FPZYndcOaNII7cQ7K4Csdfi3e8CIsHRyLnxHiNiEqwfIkw==
X-Received: by 2002:a1c:f718:0:b0:3f7:3526:d96f with SMTP id v24-20020a1cf718000000b003f73526d96fmr5606394wmh.27.1686561874950;
        Mon, 12 Jun 2023 02:24:34 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:34 -0700 (PDT)
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
Subject: [PATCH 06/26] net: stmmac: dwmac-qcom-ethqos: rename a label in probe()
Date: Mon, 12 Jun 2023 11:23:35 +0200
Message-Id: <20230612092355.87937-7-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022439_616236_AF96ED8A 
X-CRM114-Status: GOOD (  10.80  )
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

The err_mem label's name is unclear. It actually should be reached on
any error after stmmac_probe_config_dt() succeeds. Name it after the
cleanup action that needs to be called before exiting.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 2da0738eed24..16e856861558 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -615,14 +615,14 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	ethqos = devm_kzalloc(&pdev->dev, sizeof(*ethqos), GFP_KERNEL);
 	if (!ethqos) {
 		ret = -ENOMEM;
-		goto err_mem;
+		goto out_config_dt;
 	}
 
 	ethqos->pdev = pdev;
 	ethqos->rgmii_base = devm_platform_ioremap_resource_byname(pdev, "rgmii");
 	if (IS_ERR(ethqos->rgmii_base)) {
 		ret = PTR_ERR(ethqos->rgmii_base);
-		goto err_mem;
+		goto out_config_dt;
 	}
 
 	data = of_device_get_match_data(&pdev->dev);
@@ -634,16 +634,16 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	ethqos->rgmii_clk = devm_clk_get(&pdev->dev, "rgmii");
 	if (IS_ERR(ethqos->rgmii_clk)) {
 		ret = PTR_ERR(ethqos->rgmii_clk);
-		goto err_mem;
+		goto out_config_dt;
 	}
 
 	ret = ethqos_clks_config(ethqos, true);
 	if (ret)
-		goto err_mem;
+		goto out_config_dt;
 
 	ret = devm_add_action_or_reset(&pdev->dev, ethqos_clks_disable, ethqos);
 	if (ret)
-		goto err_mem;
+		goto out_config_dt;
 
 	ethqos->speed = SPEED_1000;
 	ethqos_update_rgmii_clk(ethqos, SPEED_1000);
@@ -662,11 +662,11 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 
 	ret = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
 	if (ret)
-		goto err_mem;
+		goto out_config_dt;
 
 	return ret;
 
-err_mem:
+out_config_dt:
 	stmmac_remove_config_dt(pdev, plat_dat);
 
 	return ret;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
