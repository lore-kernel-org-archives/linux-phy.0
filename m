Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98083C7EE25
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tibV0T9Ez1+UQLdIow8DzW/epqDlqJMrKhykV4E+ktA=; b=nHPeQxKDo1rHOJ
	xEzpYiljiBv+DXdjXlKZb4TRM0aYZDAauWzi4r8+RcJjG9lzaUpa9nEBpUF14XKjmXlaKS0RFZIcC
	NjdyXbHN1nkAlbu4xuyfGXb44W1XzC0EuwBJG1UL0wSd8IDT2X09k48pQw9JWCBinkskHfVG7ka9R
	wipcEy3MoP1NmdWaIYonYyvhrNXL/ikJ3YzSxgRukkoZ3D0Z851wCRjkyqrMVQliLhoCQT0vjIQVd
	Uf+S8n3itJk/aNvjdB81ZET/c1bTBIe/28kJllkj1YiT6pfGc7RzvLXwg2wq8Tn8xHyHo5npU5hgS
	IsJg3XhXrPka67RD9Q1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8eD3-003NNi-0k;
	Mon, 12 Jun 2023 09:51:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8eD1-003NMK-23
	for linux-phy@bombadil.infradead.org;
	Mon, 12 Jun 2023 09:51:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=HRB5rCUQICPP4KdYl/nzNPsexRgByDiqLi2dGSM6LQs=; b=dnPfAivQWE1gHP0ag9itAEbiZ8
	eJP5SW4zB7iL9NEa9tAEVXKt8F4198avMnOhQBmiRyUs8EZXuCEFCXbvf6fzzDWchAwwhjaL09iPl
	jJc59zrvA6GW3LHX9KtuP4PiLEQoa5/qAmg6DZ+h3wy5h/XWgPCHTg5CIabk7NIXii+s2MxyvpJy2
	ZSBAz00Eoua1SEI9s0w0l0sfIemM1ZSrZ4Veqo5+58/4V043thgWUZSSKsXNAFecS/HZAoFuqqZqm
	gdhvc+C9RU+ap/Qq0+memzNDqCTcfX2kyNuym8Ug+V9HSKmK4F2IrMPz5cjpY8YLEYXNrccaOGSmg
	N27WmCDw==;
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnC-008k5X-0T
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:24:56 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f004cc54f4so4767816e87.3
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561892; x=1689153892;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HRB5rCUQICPP4KdYl/nzNPsexRgByDiqLi2dGSM6LQs=;
        b=wki9pfOT5Rxd5I9FVQ1tRg38zuoF06hGoB1Obw/n5Dat40yAA3EhR9Z0NsWmcyoRqW
         vQyNN2w2lHRcUgiG1L332CkRuWKahCVsNNsrZv5eNwW8gCsYqzw1Thzr5uyHZFzdU2L4
         R7UVTsB1Dp1LYr35Igwj8+TEs389mw3klOojuK2W5JThLmNPLnC3tMYuuLyJ3Gp6zCG/
         qEcP61vcWik5dCgYIOPqXuug1GJFZUuqfw8tCK6B4Pkjc+BH8zPcoLzziPa8F0Qnz+ca
         ViB763l7KUgMeerwWnhj0R3xgWRs8nSt3qCvm/3rh1uZ+miXI5BfQi7gRLCTXh6Ux3Ff
         c3wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561892; x=1689153892;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HRB5rCUQICPP4KdYl/nzNPsexRgByDiqLi2dGSM6LQs=;
        b=Ahn/VSS5d4uQFxHBNtfwYYx7azDEWG5Mtt1GV6y/v6TuBiWUDyJjgM5z+J4ZVrW8Jm
         ZWLfXTcqrmkP3JAPYYtZ13q8nM8sFuYPrUQMyAl07Gno8rTX87jumSNNGYRwmG9MxVnO
         g2/8SEi1wMkO3DbNNf08WWfqILEmkS75WWfhusVlrBqiUp4dIWTFApu0mkfY1hAJOnDS
         iNzhjPW4x4fwi15lDHXZUGf814Xnw8Vdk6QqT0X6E5lQ4I3QQCqHJu4PCh0TK4TFZsK9
         thNM5J/5hmknsDQfPydFIygxmQkMof2IhD5PC4bi3YjGoI1FK4C6bqPbSl5/9FNI40+j
         +WnQ==
X-Gm-Message-State: AC+VfDwOmY5UZm/J/OuQ82OLQAHsf1/iymQLk0zy48aAWXG+bgimhRl8
	5AZTw4OF6B5ww4HxtUji0KWRhw==
X-Google-Smtp-Source: ACHHUZ6MsoAALe/nXViObuQKYmMum7GoTveImC1ZSm+c8DJ1aav0op6ATtx6I9EHAENx6igoyGBseA==
X-Received: by 2002:a05:6512:2e2:b0:4f6:2233:6d27 with SMTP id m2-20020a05651202e200b004f622336d27mr3519648lfq.31.1686561892365;
        Mon, 12 Jun 2023 02:24:52 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:51 -0700 (PDT)
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
Subject: [PATCH 18/26] net: stmmac: add new switch to struct plat_stmmacenet_data
Date: Mon, 12 Jun 2023 11:23:47 +0200
Message-Id: <20230612092355.87937-19-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_102454_329697_B48A094F 
X-CRM114-Status: GOOD (  13.91  )
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
