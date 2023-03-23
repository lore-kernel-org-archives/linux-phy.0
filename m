Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51C44C6FD1D
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 14:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0DH/XF+6536xNMPkBIriHZ+bJM5KTlwtvDKvg16PvE=; b=XK/iQQ/0KWm2o5
	BnymRSGYhV7FZ/OEj15GLuYv2uLQv99wP7PRN7vsfdcwbLkGcpgQ2ST4bwZEay70aDxaKdzOsHQuN
	4yNdM5UJTzLQtILDYLTU5uS3hmggglBwGRV0U2LXyD7ctDeBUIjlYlMhZoGh3NyX7l4HsJnxkiAHV
	/HuRmqqYFl08Pz7W5DQBeI0zz8MqcL9+pI+ChzkeM/jc1oN2Wda0WHohcyg2xodY5JRxtcE7ORvAW
	IhjfvOWgiTEws9y0dSYkl9hKUA8Qoawr85eAKxsztCQfLQsy0B5HlvjV0BvslIZCpWIdp2SyDzhUh
	mReEI6FFYMHrOIq494lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfME5-002DiP-2V;
	Thu, 23 Mar 2023 14:47:37 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfME3-002DhH-0O
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 14:47:36 +0000
Received: by mail-lf1-x12d.google.com with SMTP id t11so28101867lfr.1
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 07:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679582848;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7FnaHvkF/EeUZFXtYAGWVdOTWkg/zMiRbhBKZ4hSqrA=;
        b=K8hQz8uz6sDTC4RwHRVPoE7V1oYrLzk/9kyOh2PrHn0B50om43st3+8UiBs4scpFze
         7SMi1tW/2k70JsGXVnW5JjaoUCdTxNtIKvK1XBtLI5139dIvqXgXsGR7PqTBU4g/QPqY
         U16nBl+GxTIRAvmbNeFQN/fH/m2kN+yyio79+rveLgOZkehlgzMynOZhpLAQUb2hsSOp
         66bpDv71DR8u2RhgDd4ykLpDuLoUrLqboulR7cTrVV3jvB2lMBsLQrnkYfHufV4CaIzA
         KAwGTQYWGNbYoAtH9914HV/AxRdy7vPcVO9LYHCYCD/r/drKZD+/19xWbcPiI9kxjNiV
         8eSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679582848;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7FnaHvkF/EeUZFXtYAGWVdOTWkg/zMiRbhBKZ4hSqrA=;
        b=g8njPxd64rZ4seDq48hP2w8qLh0HHo28AqHPDpXocA8bQxKwf5l1Y8WpNT4Cj/WTbw
         2l0mRNBXFeTTpBUqiHWD3Hrtep4EKQjZdTmeFgYGwuvaPBXNm5jlwtWsigqoyR6L5DTh
         g9/p4EoMu8NjppGw1vA63+FIP02j2clJPlDXZXuRqn7QJxa5KBkRprkl944z35O72i0m
         gafagpEgg9Ow8s2cDgY+Sw/xiAQrkQwUkqSBGsSCQRBEHO+uLl/R8FPPEd8+M64ZuDOY
         v+RC5hmnnRAmOwxOq9TNv/zQVZ5C6XbUxzALq/TwyjRUf0X2JcL6KQGZQFAc1d74w8Uf
         1S9w==
X-Gm-Message-State: AO0yUKXi7H34bGlC/4z/6+St4JkKH3LTPEzhkuDjTNFh1TIvMW95Zdni
	ubjQtjnkgTQqmUeuYwJtlzfCdw==
X-Google-Smtp-Source: AK7set8g5D2AaDWEp61cURfkGfT32ewkiNOn9Lfx/3jzOjCBt4S0jUTaGPcOfbyKpiBkVYvluUxLnQ==
X-Received: by 2002:a05:6512:15b:b0:4b5:8507:9ae6 with SMTP id m27-20020a056512015b00b004b585079ae6mr3297539lfo.2.1679582848198;
        Thu, 23 Mar 2023 07:47:28 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z15-20020ac24f8f000000b004e83fc5f627sm2922033lfs.188.2023.03.23.07.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 07:47:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 2/2] phy: qcom-qmp-combo: use qmp_combo_offsets_v3 instead of _v6
Date: Thu, 23 Mar 2023 17:47:26 +0300
Message-Id: <20230323144726.1614344-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230323144726.1614344-1-dmitry.baryshkov@linaro.org>
References: <20230323144726.1614344-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_074735_181859_687BBFF4 
X-CRM114-Status: UNSURE (   8.62  )
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

The qmp_combo_offsets_v3 table is already used for v3 and v4 PHYs. Reuse
it for v6 too, dropping the separate qmp_combo_offsets_v6.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 3b488d12c933..6850e04c329b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1417,22 +1417,6 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
 	.dp_dp_phy	= 0x2200,
 };
 
-static const struct qmp_combo_offsets qmp_combo_offsets_v6 = {
-	.com		= 0x0000,
-	.txa		= 0x1200,
-	.rxa		= 0x1400,
-	.txb		= 0x1600,
-	.rxb		= 0x1800,
-	.usb3_serdes	= 0x1000,
-	.usb3_pcs_misc	= 0x1a00,
-	.usb3_pcs	= 0x1c00,
-	.usb3_pcs_usb	= 0x1f00,
-	.dp_serdes	= 0x2000,
-	.dp_txa		= 0x2200,
-	.dp_txb		= 0x2600,
-	.dp_dp_phy	= 0x2a00,
-};
-
 static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
 	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
@@ -1759,7 +1743,7 @@ static const struct qmp_phy_cfg sm8350_usb3dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8550_usb3dpphy_cfg = {
-	.offsets		= &qmp_combo_offsets_v6,
+	.offsets		= &qmp_combo_offsets_v3,
 
 	.serdes_tbl		= sm8550_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8550_usb3_serdes_tbl),
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
