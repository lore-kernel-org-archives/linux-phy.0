Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 487C6C76196
	for <linux-phy@archiver.kernel.org>; Sun, 26 Mar 2023 02:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10fX12epJEFs1+nr8MinRjJ6/RC5CiuM/pbTyL/pBj0=; b=Xf+RzPcySgaZcH
	O4GpniPHD1WHor925++oiI2wz9yp079p8mbDdnRVYNlosHn5DXQKVM+uLj6NwAxTcinaLBlPpR9h3
	yMCuwAABwNF+U+/H2Uj6rdz1lRP2nxow9Ou7rEVM/iy1jhHSfCITierkeVDpxk6/daOuM6W76E3Yv
	qPu0jTJMQ4DY9GKKeth/an4CF2Zbo1BS6Z5sIMxBKvIRnp182E6y681wW83ayQE2aW0bcyPq6oZ40
	7TtUHCulW1yWou41hnuFWrEPKeY+7LdvsXBtFSDKHIMsnOWyeNKo0QJlBbekqqvqffw+gMsiDSQGb
	akedPsXFvtIr4yRSzVyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgFhi-007pY1-2p;
	Sun, 26 Mar 2023 02:01:54 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgEhX-007jq5-2G
	for linux-phy@lists.infradead.org;
	Sun, 26 Mar 2023 00:57:41 +0000
Received: by mail-lf1-x132.google.com with SMTP id h25so6936218lfv.6
        for <linux-phy@lists.infradead.org>; Sat, 25 Mar 2023 17:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679792257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/jiwlN12y/3lXv9SjJsbLHWnt36d7YrELH3I9tTCd7I=;
        b=vTGFavBy2aHVjppySsM5ApbeUeN8qjB6OsWDUtgU1FXhFSsCY5Gt1iYuHrxd+1Uoop
         3twqKocLw/GZaYUMPR43vCRgdHUdWz/AQB3Hvgr7ZsmUR8FhjBvDSFCu15gEiQAIAwM/
         mlUf6f8ve6Kda53iPy2puV3ev6Yi7OktRtGKUZfGqHsJ+6x6vI3x9Z7lWWyRMwSBCvJD
         g+LSmTyhZnt4046FNTIAKfzfFveYmSeKhUWXFTzjlppEBQKot8ulmGNHK0ixGSrvIygB
         M8jQiAxMXG5furrFaD/vZvBA9JaT+li5hDJB1rR2BQL8I9QCtvXX8icXzePz3iN4UPGO
         ahCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679792257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/jiwlN12y/3lXv9SjJsbLHWnt36d7YrELH3I9tTCd7I=;
        b=ampOMwzQJ/K7JiSsQnA80xq5STCKsKv9ATgeslImY6nDJhmO6KQKM92OJWNBMAHj7m
         pr8eALPj4L5EeHeTgBKDhMJWbStxqskG5LuW08v88/l8DfUBtd5gx5xCeJcahp+cvhdd
         rH5FBFc0ENOZsk2rok0pWYhigoAzvITAqc6/Cy+f2+fFbg77OEP6zD057M93gFPKe0eZ
         AkZob6LuSNulKF+tN5M9aapTN+rNsAFh0fWhwY0CaAE1SDRHbfQjgM98wqgSfOq6l3xW
         1KE8N4Z49SQb33WHRJhLFuGhjYvpUFoN7IKuIANONqhYLbreODSugKqCZw1bmSg2lwF4
         rBCA==
X-Gm-Message-State: AAQBX9eIXwPnt35Ag+kpZocF6lmA5D9YJx5y95X25ilptVNgwMKXp4Mi
	Mh2RiMGhzza2ubN0yqymCcsn2w==
X-Google-Smtp-Source: AKy350bxkn7X48K305kMP5x677EFfaBENdJPfVvDWXKQZ2VJfebcbY838+mJTkwrmSxZJY9r0ENwVg==
X-Received: by 2002:ac2:5476:0:b0:4eb:c30:2777 with SMTP id e22-20020ac25476000000b004eb0c302777mr528023lfn.54.1679792256988;
        Sat, 25 Mar 2023 17:57:36 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n13-20020ac242cd000000b004e7fa99f3f4sm3996858lfl.265.2023.03.25.17.57.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 17:57:36 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 4/9] phy: qcom-qmp-combo: add qcom,sc7280-qmp-usb3-dp-phy compat entry
Date: Sun, 26 Mar 2023 03:57:28 +0300
Message-Id: <20230326005733.2166354-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_175739_745578_E630E751 
X-CRM114-Status: UNSURE (   8.71  )
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

Add separate device entry for Combo USB+DP QMP PHY on sc7280 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 5ce68d211998..8fadf92095c5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3431,6 +3431,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
 		.data = &sc7180_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,sc7280-qmp-usb3-dp-phy",
+		.data = &sm8250_usb3dpphy_cfg,
+	},
 	{
 		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
 		.data = &sc8180x_usb3dpphy_cfg,
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
