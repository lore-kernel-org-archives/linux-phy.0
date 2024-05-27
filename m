Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F159C25B74
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 08:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=awhTSBViwD6625hl81u/pe1HQMsd2Qe3qmXMaIxmzqM=; b=rLDLmPAMf83T4p
	W4NOcwCEu/FdjQssHLkuhXF47p7Q53H5EIFljESjohdjUY/Eo0IlrL443++qg7eGAf69t4Xo1ezVD
	obkVEcZOM7DtVNmvIGocnClQzBYLagO1b0Lds2zOkcl8fNnRz9HKH/UMCy0piP+5It5/zCD7rzxkv
	t8N37On3SDiKMif1eV5nwgWcwP9Rup/rAcAQrlB7VA0P66zQRqUxPdUnV2EVS6dNko+SS4YL/X8qm
	0MvNDp5N4iV8fHjqmLHyaEcxALxkz74mjxdm4GNcUDNoRoNgfMNn14pPTYvCQVBZ2uRSqtcIQQZ4d
	Rn89L6F7BA+Saht4T62g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwR-0000000EHJs-3yqU;
	Mon, 27 May 2024 08:42:51 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwO-0000000EHGo-408S
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 08:42:50 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-354be94c874so3907490f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 01:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716799366; x=1717404166; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D2IsXERwwkHQn+Hp66Wd5IbKCroL6ys71asrAFeZRd0=;
        b=v7gkUXVakUaCMupsXrQ37u1VDxC9CcPiN/JMaZvunzlRSW0hVvh5mrc+d8r04qiym8
         7RQskHL1UdE7fgMl3Hs8toVfcFvKCrTkwTw6WGEvvBjXE1NzqibJ6WOM8ZdAVFRiDStK
         t3Y4sptwc3CYMWkaQbXywdOqAEy8bRs9fItCXi8MVl8JuVgP1gEGApQfju4C8nIr+5ia
         S6i7CP0TOGYM5QCri07c01/4uosnBn2Bj0jsj5ugbnxcF9kfqFlSsrsmYMhERq4kFvv/
         OOjUCGeTapz97i48Q+HeWVryq24oM9M+lhKgTiRAx9+krewrLYNYBRCjSFgy0IkHQF/i
         80YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799366; x=1717404166;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D2IsXERwwkHQn+Hp66Wd5IbKCroL6ys71asrAFeZRd0=;
        b=N0Yt4+YSQScR9Bk1mpjgBqI5e4Wc2ueyzxRN6gOeQbP4YOZWnkajOamoMO7Oj84JQE
         A2oPPiyv4RNqspRMZq1Rn9UMkeUzM7Cu/BBjC/sRB24CjaLpACmsz5+L0KxYkgaFcV3L
         bjlAzMoTjqLVcqvfT3YXca8AaAA8leQfzQdINHNJuFVK4yNRYO41FtrTi1TnRtKzUNnB
         kuFOY2QHv4OGtzGi3Io1ZClEfYmPBm2JFSXnvsYV2PTPfofYBaIMu68B8nrRfiYUNQ1b
         pfP++DNW9MoFYNoor3CcttbXfUocD1hWwBhOA8dmKB08C4dnhh17sEIr13TD8BZK7Kfa
         qY9g==
X-Forwarded-Encrypted: i=1; AJvYcCVxLEFFSXFqS70Zm9B+3wfyRvq8BsoQXDQfB2IGXr3y3p0wmfJST+glFCiUpSh/QYfDZqb+niqXqsIbdKN+V5hRGp3S+Hd0Mj/1PrWOiw==
X-Gm-Message-State: AOJu0YxSHs2Hls5iMgrryysX5fmN2ehrBy8Xuc1Wod57LAUgMns+n46e
	98zvsw/lymLXwE1d2eCrlUsaxMlVCv+C5zMy3i1UJckW++AoNPw5Dtm3s+5SEBg=
X-Google-Smtp-Source: AGHT+IEuz+Mn+QSgT8qOU9yvwfXCm9findguajR5dYkQSCJG+sgdEJaUN4Qzgzs1gYlk8BZWub0uFQ==
X-Received: by 2002:adf:ef06:0:b0:34d:ae55:9dbc with SMTP id ffacd0b85a97d-35526c2580emr8875481f8f.16.1716799366278;
        Mon, 27 May 2024 01:42:46 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3558889fb57sm8447292f8f.114.2024.05.27.01.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:42:45 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 27 May 2024 10:42:34 +0200
Subject: [PATCH v2 2/7] phy: qcom: qmp-combo: store DP phy power state
MIME-Version: 1.0
Message-Id: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-2-a03e68d7b8fc@linaro.org>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1271;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=VXXtf+CxFirDj8JdDAfT60xN71u6IzO9Gzrn6JM1ZZA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmVEd9DbrO5eFkHDcV7BFyfcSFoDY9GOFx9L/4cBoo
 QQ6F2O+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZlRHfQAKCRB33NvayMhJ0Tg/D/
 9Kqa4zSjLeuYBuHqUIvtro8GoSjzdAJC0SVyPEIE3mA+/kNewBJSEfNwiUMMBY1fNo9fWCmc1c48L6
 u8ZGhwLCHzgeaRLimAYjmOnVLkt07nXxitoanFkUB7H9EdvfB27rtRVyInZ2AbN+Di+s6fkts7F6LL
 2GtVJ9Swp1l8Sfyj+13LqoAqlSYAVlWRy2VP3wDxuX1SFfpwNz6AutNluqpWxy81/UeAZzVnOrdHa9
 u7r/Rn8vYHw2SjkswAcNvcrho9SgauKlXFGIl4rjC81ac3kRkNQ744gaEHAwwkqf8RQ5JjCEScknK9
 mFz1nH3KhRfI0eyPGKyA/pC+lorKwuxmWwzSRUWjQfkkTtJyN2kVE33oAPV+MA1xTvGM+688aoMZiI
 pUgcubIpMTm7O6K5/LgufrbYmyI7v0KTQRj6LY+g4N9I6nmIsia3FeUMNQudceI3nJBkTxQh4CMLFa
 GEuvAJSt8xK9oM7vBIiKSLTUW79MKJyCHaZ1Zi0G636u2Ja7sgbZtP6GV+7MlXo5pewjavhK1TwmfI
 JzB5LEVYoc+x05C5qxp72h+GU6A7cOooYQLgie1gTUOS6f4kz87Htmn8NY5k97f+NLvkhq04GY1hsa
 Lf1NjC/fT7WzTs5mkDb5jlQvIOGtZtkAsl7Y8zyhBzhOLQmiC5Ts6MWfWxcg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_014249_133402_63A2C9BA 
X-CRM114-Status: UNSURE (   9.18  )
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

Switching the PHY Mode requires the DisplayPort PHY to be powered off,
keep track of the DisplayPort phy power state.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7f999e8a433d..183cd9cd1884 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1512,6 +1512,7 @@ struct qmp_combo {
 	unsigned int dp_aux_cfg;
 	struct phy_configure_opts_dp dp_opts;
 	unsigned int dp_init_count;
+	bool dp_powered_on;
 
 	struct clk_fixed_rate pipe_clk_fixed;
 	struct clk_hw dp_link_hw;
@@ -2685,6 +2686,8 @@ static int qmp_combo_dp_power_on(struct phy *phy)
 	/* Configure link rate, swing, etc. */
 	cfg->configure_dp_phy(qmp);
 
+	qmp->dp_powered_on = true;
+
 	mutex_unlock(&qmp->phy_mutex);
 
 	return 0;
@@ -2699,6 +2702,8 @@ static int qmp_combo_dp_power_off(struct phy *phy)
 	/* Assert DP PHY power down */
 	writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
 
+	qmp->dp_powered_on = false;
+
 	mutex_unlock(&qmp->phy_mutex);
 
 	return 0;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
