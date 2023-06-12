Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF31AC7EE43
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5joUyAMeS1K8hKOhALJMONi7/1SKQxyvn3gwTyfx7E0=; b=sGewsrLL1THKYs
	Lyr34f3p699R4PaP1Cd1/qhq+OwmnHT2lVLz3pVBR0ZdMF+/OssTF8YPSsn/QH8B8XSqTNBkrsHfg
	MOepMRn5b/FS/T2RIk0y7OS6zIPXMUWTZwtXIzaNp5RnQrygBpTGHJYd4N//t0yCCVgNT314zQKWx
	8AT2YHNr0ootveYFx2Z4i4ByxE67p2iILqq+4f3gvP23gGA8iOXmsqO64Mw/to2/PtaVLRdWKzRv+
	d4LF96nicUA6N/D6W7uI4xeRjWNCaFp9lnSOLzzQKfnnN7f1XINXT89QFxwJuAJSubh8grxFf4NYp
	uLHv1dM1v+zoyAW4im1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnY-003HN2-1p;
	Mon, 12 Jun 2023 09:25:16 +0000
Received: from mail-lf1-f41.google.com ([209.85.167.41])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dn9-003H5i-1T
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:52 +0000
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-4f654d713c0so4287839e87.3
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561886; x=1689153886;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c3HXmWBI5xLrWbOkueODzJ5MVGSA4Kc5TK/lazRH0B0=;
        b=kzgUUkMC5jsWR5xW0+ANRcf2btdakfoFVSpYBSE9CikTfQlpt+AqLN7zdBbZJFtLme
         xv5/N8+XHKqeOLiYheLN/vH4zRYHi9T6pytx/a+feZ6Ar+vvWiN0Eku+dctJjFBED96f
         y6dlmLfFclU/1M8/Dkh0s6PVP4tPSxlThdgfNA1wtRmX3AYoPWL+galeUX+z96THhp9l
         eoKOC7/6cBKs8NL0f/gd6xfgLidEidiAmfGdioadvL+hjOWjmHTAkyP/TtqA63cg+m8E
         1Ro1pxSPqRZ/FZLWuM9+n+8mX+utAr5AZu5GwTebLop+/HDkLST5jFVWE05M/IewJtwh
         TSsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561886; x=1689153886;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c3HXmWBI5xLrWbOkueODzJ5MVGSA4Kc5TK/lazRH0B0=;
        b=Kn1YybmKw0LjRo48Lak77zDDBVVvxV6NxzqPFLJCR5kbnwLmXGlfpJRS/s89VtM4tz
         /HBcKGIioNHclBjdZUc03Rrr+4+USFu4+Eorc6rOVa6LYV5x3IoDdKpC7lcoqGNJansV
         wq1WP8dL0r7zTP04/nkWS5p0WJDKNKMECUdix40epj9QlI2J7lNz7vCaV4ne5WJgb+tP
         jRtrLYEaFKXslkGXGAiVJ5TCok+bxU6IPVTo70D6nR2QjWf9qjzd1MV9HfPSppLkTY/e
         AKVq+8UxJmIEBZacrlqcqQgiZiVwPYI5JP8dV2BftJmEkRqwJ/cqTB50bMmgSFvKFUiI
         /gbw==
X-Gm-Message-State: AC+VfDyGwogrKq9P8D102+fDjlX6GfkpU9Q6nlyRpxvyuxMZFciYkIr/
	rLxNsKSy3ofqV7Nz1WddBKt/dA==
X-Google-Smtp-Source: ACHHUZ5ccKjNrjHtWSXeFcXvi6pGIDd0bXqsgL6lZowErwFAW975a65dQyiL/g71vDQz5+NfmBtGXA==
X-Received: by 2002:a05:6512:615:b0:4f2:5d38:2c37 with SMTP id b21-20020a056512061500b004f25d382c37mr3795687lfe.15.1686561886665;
        Mon, 12 Jun 2023 02:24:46 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:46 -0700 (PDT)
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
Subject: [PATCH 14/26] net: stmmac: dwmac-qcom-ethqos: add optional phyaux clock
Date: Mon, 12 Jun 2023 11:23:43 +0200
Message-Id: <20230612092355.87937-15-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022451_502767_17702DFF 
X-CRM114-Status: GOOD (  13.85  )
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

On sa8775p we don't use the RGMII clock but have an additional PHYAUX
clock so add support for it to the driver.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c   | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 252dca400071..2f6b9b419601 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -94,6 +94,7 @@ struct qcom_ethqos {
 
 	unsigned int rgmii_clk_rate;
 	struct clk *rgmii_clk;
+	struct clk *phyaux_clk;
 	struct phy *serdes_phy;
 	unsigned int speed;
 
@@ -604,6 +605,13 @@ static int ethqos_clks_config(void *priv, bool enabled)
 			return ret;
 		}
 
+		ret = clk_prepare_enable(ethqos->phyaux_clk);
+		if (ret) {
+			clk_disable_unprepare(ethqos->rgmii_clk);
+			dev_err(&ethqos->pdev->dev, "phyaux enable failed\n");
+			return ret;
+		}
+
 		/* Enable functional clock to prevent DMA reset to timeout due
 		 * to lacking PHY clock after the hardware block has been power
 		 * cycled. The actual configuration will be adjusted once
@@ -611,6 +619,7 @@ static int ethqos_clks_config(void *priv, bool enabled)
 		 */
 		ethqos_set_func_clk_en(ethqos);
 	} else {
+		clk_disable_unprepare(ethqos->phyaux_clk);
 		clk_disable_unprepare(ethqos->rgmii_clk);
 	}
 
@@ -669,6 +678,12 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 		goto out_config_dt;
 	}
 
+	ethqos->phyaux_clk = devm_clk_get_optional(dev, "phyaux");
+	if (IS_ERR(ethqos->phyaux_clk)) {
+		ret = PTR_ERR(ethqos->phyaux_clk);
+		goto out_config_dt;
+	}
+
 	ret = ethqos_clks_config(ethqos, true);
 	if (ret)
 		goto out_config_dt;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
