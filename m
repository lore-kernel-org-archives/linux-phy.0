Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F911EB64DD
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQnr0fRbic2fYXOvvrXYcbsHRUqNhPcVZzGpuT0cEcY=; b=IxTHMfvK/hUhXK
	TH2kfL9P5ugYE7cljVAMiHfTbdARWGbdrzOLYjnB051fCSso6SvErs/pjEO6tY0aUdorRok8evIhX
	zViaIiWZaeKDeVQoJn6rJ+5dqE7vlF7loa+5rN4NMMBQf4eHRFKeKbjEHpq2Tf2rIrvgkhAWLIIFM
	ciDoYMx1q6xdJ/TIQHrU0wqND0S/lD5bS8OPhFt4eGpzi75GW/0Y8xx8ygnWIMFa9uNxH+HRHd9NH
	TTcAMw3A4zAUOaSvpRZVy2jlC3ttMHqi++7nrgAtQ/KTVYMEad7e57UjYS/FEBJVd3dkByvUPdPMM
	a/jBPorLtJV3EmuQNSkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lt0-00Ephb-0e;
	Thu, 15 Jun 2023 12:15:34 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsQ-00EpCh-0Q
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:15:00 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-30af159b433so7580208f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831294; x=1689423294;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=shVe7iXJ1awuGuKmYEwLb77YVMpGOLIOU4Dax+RDeEA=;
        b=dlDrDMLMnb7Fqq0jlcStDO6lq+BgV1BfRZwnKtZFFdb4XCdj/yS1mzXym+jFMCCAFW
         e7gmAgV+RXQSXrLTUFhmgTfDuga7xUrMOkEZucx+NwOVw2xhebk+U/OcZCJ1mX8ljybX
         n9K6gSI2fpxqPuQjXTfUX0EdBVZ8P9KiVOGqSNDqM1rg/Y3N6CJZcxz2gvWpmRzxduVN
         /JxdvSpLleT1D8Tnvkvw33d/dz8cC2YVWHwLtxy9s0j7+Jb9zNDSq/9VB2mXZ2g3EDdK
         BpXjShwkImCDkpDNrzFR3lQOvZsHH+V23Zb7CiSVLKAzYHIWPyxPmFDfc4uFbK2HY8Yh
         wmvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831294; x=1689423294;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=shVe7iXJ1awuGuKmYEwLb77YVMpGOLIOU4Dax+RDeEA=;
        b=UcxJLoQMNki1YyblZBO3cm4wRuMO1SXDZkmJlfXDNjyaHbDLM8wUSHMlu1orlMQ9Nt
         bSV+JXwvzZY4Ja5FBrhejZJTCnt6EPkJKfpjUTZkIfvz7cnxA7bTC++gpnY2tJ/KVVwN
         /SPrmAFcIak6YUEy6+QKQTCa66NKgOGEoTyPZtAHjpWBCuxKFy7iRMt3uslNpZjwDiC7
         IoPMthND0wlXDWzBJpRYsPSla0tdwLNygt1ULc/6jrqyignCoDgYPz4GMB1mTXDIy8Or
         s2eZ6Uf1DCJpaN0eFXxBbvFoWwD9WCsx44VFwi67H7J8tyE9kBrFF3LCXqW54ttcJR3g
         3sBw==
X-Gm-Message-State: AC+VfDxb0oO9pPuB0WBdBt4GgvLeueeSGWDRCOCoIQGq8zG0i0RAWr0R
	rxepPWcqR+e6DzaR8EIB2m6TuA==
X-Google-Smtp-Source: ACHHUZ4BkD4qzQRvEGU7o6thVVlbRBFaFM9VgeCVSPJzBcEEoIH1q6H2OVvNrwnKfIKircfJZPizMA==
X-Received: by 2002:adf:f8d0:0:b0:311:14ab:5621 with SMTP id f16-20020adff8d0000000b0031114ab5621mr1145607wrq.30.1686831294636;
        Thu, 15 Jun 2023 05:14:54 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:54 -0700 (PDT)
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
	Jose Abreu <Jose.Abreu@synopsys.com>
Subject: [PATCH v2 16/23] net: stmmac: add new switch to struct plat_stmmacenet_data
Date: Thu, 15 Jun 2023 14:14:12 +0200
Message-Id: <20230615121419.175862-17-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051458_174017_45C7A6F8 
X-CRM114-Status: GOOD (  14.19  )
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

On some platforms, the PCS can be integrated in the MAC so the driver
will not see any PCS link activity. Add a switch that allows the platform
drivers to let the core code know.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Jose Abreu <Jose.Abreu@synopsys.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 2 +-
 include/linux/stmmac.h                            | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index fa07b0d50b46..fdcf1684487c 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -5793,7 +5793,7 @@ static void stmmac_common_interrupt(struct stmmac_priv *priv)
 		}
 
 		/* PCS link status */
-		if (priv->hw->pcs) {
+		if (priv->hw->pcs && !priv->plat->has_integrated_pcs) {
 			if (priv->xstats.pcs_link)
 				netif_carrier_on(priv->dev);
 			else
diff --git a/include/linux/stmmac.h b/include/linux/stmmac.h
index 225751a8fd8e..06090538fe2d 100644
--- a/include/linux/stmmac.h
+++ b/include/linux/stmmac.h
@@ -293,5 +293,6 @@ struct plat_stmmacenet_data {
 	bool sph_disable;
 	bool serdes_up_after_phy_linkup;
 	const struct dwmac4_addrs *dwmac4_addrs;
+	bool has_integrated_pcs;
 };
 #endif
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
