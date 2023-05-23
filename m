Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BB1BC7EE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 11:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PyD1HvDXz7OxYA4o9zcwLjMPlNJnbeNcnJVYESLdgB8=; b=doE9seGHxW143t
	aqQtfQPp+u2A1t2QxfKmZk5morvmGcDu6s/k1l/mnn2AgkfXteniEj8WSkoTbyeiTOpcrvkrSBjJu
	5aHVB86z/JmBqLMGe3jBZ8W3zv4nhK4zC//UjNhv1Q7l/2166Kndje3Sg2ahhwHDn3Z6XL8XvSoGy
	uBh/gphW4efdZrM8FcKGdhQVoVPlixxUNpHwFijkUHu5DWZe4hUdewa0ziHrDTBOExVK+uemGuzlC
	7OmoAGEJo82gMGTVS3Cjdxp2UHt8MYrMHsK65cejBlcnTA1E0kKHkN0EI7+SN6FsXFhfgNIEPJIyO
	bt3cNlOUZ1Sg9q859I/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1QdX-00A9Ij-0q;
	Tue, 23 May 2023 11:57:07 +0000
Received: from mail-lj1-f173.google.com ([209.85.208.173])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1QdS-00A9HK-0Q
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 11:57:05 +0000
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2af1ae3a21fso67632061fa.0
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 04:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684842958; x=1687434958;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8zAW8Q5S5rXjdmwhdT0daKqhZraK7B5DKGDiP4be9+o=;
        b=xZfiKPMNUc7Ut/YI6/ewXndUQ0oiSy8UR1G+OnXfueF0vQVXCEeZlea4FiKyabcS7D
         BIRW2GqXm8lecbKQuFT4j4Avd99hXl1Z6eASSc4hQLe1PKDBPGth0I+W4ZrTOeeMEHOJ
         pw7YaRxBQBO+BdLKAQAKY/0Y5PcD/i1N89hSDMczWP/YWnsamOKsgPAIqLoYRYWFB2mn
         DSSE0FFwVUAeTGhK+7agjtcGr0gZRyacvNiGYixiq1RLuSHmv9sfUrXP2zChB4TBhlUT
         xWBnuzuf/Pol+0gHO+YqQY6zzrGk5xYuAksds/7ZlYMZofBDgx0ykklTUOA1Sg1dtMGE
         mD3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684842958; x=1687434958;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8zAW8Q5S5rXjdmwhdT0daKqhZraK7B5DKGDiP4be9+o=;
        b=SAZsr0yF1mOlj4ftgwWhQLyV6wcb0EO4oLjc+1uFMcenkge7Z95HdIn2TZRYOahFZz
         m1Pwd29D/UzkX16y7jki2vPrAg41C4ymWtXgorR9Ii58xI2ghw0i0pARypuZq1XNnkdu
         62lVottHFvNwSclsI7qeCv5zhCoiRkAQUfRtOZNXOqxLDL6mgQzzsE9Q6CSR41e/8MjB
         uAwgm48xm64CcxvcL1qpSnLDhomCkdZJT1+W6zPaj7mAVEfcZiBl41FX9T6M+e2m6FqC
         Stb/oR6PktchSa1zJvkLQ/ywBuTx4rjiWNDKsWEmujSB86YA2FDLtsh5LwQfwOu8Bxog
         e6UA==
X-Gm-Message-State: AC+VfDyY4NUnIiPuOOkFbic+rbke9GstGUaxwmVLKdJr9F+xxoCMFDrp
	nPQtmZqCkSfmiRPK9TeDrLHHZw==
X-Google-Smtp-Source: ACHHUZ4RUSdkgR3aBpWxg/ICRjbkfam0oSMXvo9mqukxpwQaSjC3XWCHJ9x8Onb/kSokgWfQ3iCcbg==
X-Received: by 2002:a2e:9213:0:b0:2ad:9c26:3638 with SMTP id k19-20020a2e9213000000b002ad9c263638mr5720015ljg.52.1684842957660;
        Tue, 23 May 2023 04:55:57 -0700 (PDT)
Received: from eriador.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 4-20020a05651c008400b002aa42d728d9sm1585350ljq.36.2023.05.23.04.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 04:55:56 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: qcom-snps: Fix kerneldoc warning
Date: Tue, 23 May 2023 14:55:56 +0300
Message-Id: <20230523115556.3460131-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_045702_186281_4D5EADD9 
X-CRM114-Status: UNSURE (   8.56  )
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

Ad ddocumentation to the update_seq_cfg to fix the kerneldoc warning:

drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:136: warning: Function parameter or member 'update_seq_cfg' not described in 'qcom_snps_hsphy'

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index a59063596214..6fe442d0241b 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -120,6 +120,7 @@ struct phy_override_seq {
  * @vregs: regulator supplies bulk data
  * @phy_initialized: if PHY has been initialized correctly
  * @mode: contains the current mode the PHY is in
+ * @update_seq_cfg: PHY configuration bits
  */
 struct qcom_snps_hsphy {
 	struct phy *phy;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
