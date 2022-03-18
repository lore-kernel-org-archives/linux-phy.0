Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27127C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 18 Mar 2022 18:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iawjYjOT4z2KriAv0lsp9rSmxIKe7698pBz8X8IuyJc=; b=FZcYf+yc/t4EWh
	HzSWkqswkLxIlnyiQW+N6R3Z1lVEsvX8F1gz+h/t7DQ3DnSKFbCrHno+A19ubGf+S28S7XJVwBTIt
	GdywDpmmCswMqS5zb9IEq7yPl+oBADqFz8CbbQI8IPAxOp4bR1PR/0ip8QJFJKsx68fjAaWWim26d
	Ea6sumidAV8T2cBa/ztii1+FQfvWr07VnhlkeeKkibC9gR804NmeAcnQJEp7fz1oE8p4ZRg3k+/yM
	n5DDvDuNWpoxtIqhjvikvePwJvnb3rnFAv2OF3/JFLAqWFcNXLvNSSxe0zr6/AJslMeSmAtoOMqgj
	M0xpn+HZ800Dm7Fz/VPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVHU3-002d4I-Ng; Fri, 18 Mar 2022 18:37:55 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVHTw-002d2o-S4
 for linux-phy@lists.infradead.org; Fri, 18 Mar 2022 18:37:54 +0000
Received: by mail-wr1-x430.google.com with SMTP id b19so12806686wrh.11
 for <linux-phy@lists.infradead.org>; Fri, 18 Mar 2022 11:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fairphone.com; s=fair;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pxcaI5PPLcGqvRUtBX2rA37vADL045EnXxAdViDUp7s=;
 b=g7+BklOg6UNgkaO/bdUqX0jYsNzP27+FAasuZEgPJW3QJDk40vorEenEEKDhjKtfny
 UjJVD5LEkSyhU3ZxaPYz5UVYFIE5seVV4wkii0XOOtauOBv4F3FVG61Vj/XM4hyB7ol5
 htp4dEhDw+a5pLzI9CSWsuzrounXfpMiA5vuXCZgXafIUY1xw5GY/aaTPKoM/UHrxfB6
 lZE8GXqP6mTkBovnPexaEe8XAoUVmq+Qdz+LL9jzigJWpx7pz/q9LW8Bxuvaz8cTYXkR
 CHVJO4QIla3DhOKX3P+7+atzyF4N2yv7+JNsuhELKE99Q88vRCIAquqlq1tqFohOctpN
 NGMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pxcaI5PPLcGqvRUtBX2rA37vADL045EnXxAdViDUp7s=;
 b=4rW8a6kUH1CQXRH5shCn4wVka4DFfV3Zw2ORm0FqYaJPGESkRHnOTSRY8XFUyYmQPj
 hZO0WLSMX+H4RnuJFxfg4yT+LAd3hnaLUWqNRe/nAn4uNp7WLDTVVxBOHnTJKegNz7u0
 G/lb1F6ahw0mJsjAndMv9w1LLr5cp+Z9nxG9KZkdpmj2oKbOi8bIpyhOWSHPnBZ8Hcvq
 u8YcCO6eNNJq44QngMLBHGmT970XiprVD9FHjfW0tKBzaorfn+f/0kOzZiCFZzum13xZ
 UirSnFMeboYs31sgwe/g+GkTaE5UtRyz6rha6W1vXPEZbMZvc01FMGOOs2pCgFafpk2h
 yjQw==
X-Gm-Message-State: AOAM5306rZkiUfvrijH5MSusKd7tKgvpb97MvL3EEVnr5O/0iRbUmm7K
 KIIzbkIORY/Ysxan6eSOMZKmwe1BWnXf3A==
X-Google-Smtp-Source: ABdhPJyt/aqgd/G4xClL3pIIdid5DVsjFmvlts76WqZtBshuebteGpuiNLrrMsW0WKMaCy4sAj1cfg==
X-Received: by 2002:a05:6402:4311:b0:416:6a08:a9 with SMTP id
 m17-20020a056402431100b004166a0800a9mr10954842edc.346.1647628228837; 
 Fri, 18 Mar 2022 11:30:28 -0700 (PDT)
Received: from otso.arnhem.chello.nl (a246182.upc-a.chello.nl.
 [62.163.246.182]) by smtp.gmail.com with ESMTPSA id
 y8-20020a50eb08000000b00418b114469csm4567551edp.52.2022.03.18.11.30.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Mar 2022 11:30:28 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] phy: qcom-qmp: Add SM6350 UFS PHY support
Date: Fri, 18 Mar 2022 19:30:01 +0100
Message-Id: <20220318183004.858707-4-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220318183004.858707-1-luca.weiss@fairphone.com>
References: <20220318183004.858707-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_113748_926116_F7F532CD 
X-CRM114-Status: UNSURE (   9.71  )
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

The SM6350 UFS PHY is compatible with the one from SDM845. Add a
compatible for that.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index b144ae1f729a..1628275265b5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -6007,6 +6007,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm6115-qmp-ufs-phy",
 		.data = &sm6115_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm6350-qmp-ufs-phy",
+		.data = &sdm845_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sm8150-qmp-ufs-phy",
 		.data = &sm8150_ufsphy_cfg,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
