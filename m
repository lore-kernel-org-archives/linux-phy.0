Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6EFFC5478C
	for <linux-phy@archiver.kernel.org>; Wed, 28 Feb 2024 17:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p/cNtAMgnWmCSONVzfJDxCX//PuD5lO+jeF/bOZkDQs=; b=nZVZSf97oOISDz
	S/ybtlgwQ633+kgS2QHjq9VeMdT9C6kZ4HCRIAvZV1UjEXLVGD8oH+KYlA2U1H5W0ZrGC3jkySit3
	s9BbbCu8VHhXdwrrR8s38nDHguTlahYpoM4Uxqaww4RHAXW5V0qnXgR+rtONKGGyCXvVFOd85eHf2
	RlM5j8Y6eKwXxGNOpqJ+3KTsqXCZQCbl74kwgiqK7ILJLutq/zopAiI2kkHd7wkWy9Xpr17ZNREZ5
	G22HTrZGRYVUgCtNr9aO/ZxD5yz1b01M0Lyv+l5dpkS1Babg5xxRifF029S1lV2xZ/rGPbaHLJvfy
	J456TsiHuiatpMLtpAqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfNMu-0000000ADwB-17Zb;
	Wed, 28 Feb 2024 17:05:20 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfNMr-0000000ADuq-1Gcd
	for linux-phy@lists.infradead.org;
	Wed, 28 Feb 2024 17:05:18 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-412b434effaso6220285e9.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Feb 2024 09:05:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709139915; x=1709744715; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=raKlYsxX1CoUA1rEC+HT6CFp25O9+mSwte0XpksV7ko=;
        b=s6S2HAQr5hBo0nV0Xliv7Yj8FAv2Nmm4uWgby8RohftMIO6b09/UeGV/J5ZK6Pwgmi
         aNxI4NzxBulDYvh9nQ9llOTMfNwOo+DFOiWXMlinqcyMwxYhM6/DclO9UjZ6U4tjLNsS
         rK4NCYFQkQ6IwqY85hifR2M5QLQfEfuMq3b4raUvs3WEm0oTBsyX39KmTJ5tXxyZj/jP
         bfD+a6OvjdCJiwJL0HLpe4kY8jLxo6KOum1Y1sVo8ItFWcxbDTFzvr3W4Qos36q0iT1t
         4mmOyG7rYPEcbLtSHxO+O5Wtq/fDZwSHyNOmZrelkW3OKAn5Lgksd/4gVuNnScOO2EwV
         woZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709139915; x=1709744715;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=raKlYsxX1CoUA1rEC+HT6CFp25O9+mSwte0XpksV7ko=;
        b=FDaRXs6kemfVZmuqveCMvUebHGxh/VpetClHjaXpYyLd+mLHs9y1P2d5qTjJhHi3t3
         OiwCAGk2PpnXxqFCHBAfsYFK/IYJHDHHTDZ244uckC9Z8C1aaLEoUzlMmgppVa3PDGsN
         /FyRd94NHGUbuKkHGGujotWmQVEuzpc1skCgsolte313RQWkYNhOZ7fKS2MO0nxJ1xaX
         kjd80t5I2uIXVPSIx3gt+uTLw9PvRXgvdbWCydAElBRtR9IiNNW/oDsM9Y0ZS6Y1QI4U
         0rNvlT2aYRTa+T0w2ZUBJ61tCL4dJpBmrHCKv/jrA9A5AOz0RZ+Qf2sVfS8yWB8tvMzJ
         I0Jg==
X-Forwarded-Encrypted: i=1; AJvYcCXEqyRFVmPkbTa78ZpX4vPzHN7oTt/Bh7iEFJf1TBcAqhq3rvavgvJQiYkEsBVSmFV05LfcuUKNUQ9mesQrvXTEu313v4dFLy+B5SVw8Q==
X-Gm-Message-State: AOJu0Yx0FsMvlvLsbgBgzepPr7XVvWeXR1n/gpDnawFPUXZflHUmlE83
	+MpLK8cO7m/1rV2tS4FZ/4atFW2CP+qb/SILh3HMFrFkPlziLUmXivIDC8kUL5JmCn9s5K8umet
	/w/g=
X-Google-Smtp-Source: AGHT+IH29p2SuKBey7ncm8GpoVCcz7N2S4ULQ+Fp+iOZOvQYBRUfhgtHj2imzhZ7YEPLUJ932Wrw9g==
X-Received: by 2002:a05:600c:4f92:b0:412:b7cf:9189 with SMTP id n18-20020a05600c4f9200b00412b7cf9189mr62889wmq.36.1709139915134;
        Wed, 28 Feb 2024 09:05:15 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id m21-20020a05600c4f5500b00412b0ef22basm2659365wmq.10.2024.02.28.09.05.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 09:05:14 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 28 Feb 2024 18:05:13 +0100
Subject: [PATCH] phy: qcom: qmp-combo: fix duplicate return in
 qmp_v4_configure_dp_phy
MIME-Version: 1.0
Message-Id: <20240228-topic-sm8x50-upstream-phy-combo-fix-duplicate-return-v1-1-60027a37cab1@linaro.org>
X-B4-Tracking: v=1; b=H4sIAMhn32UC/x2NywrCMBAAf6Xs2YU0mlj8FfGQpqtdMA82iVRK/
 93gcWCY2aGQMBW4DTsIfbhwih3G0wB+dfFFyEtn0EpflNYT1pTZYwnTZhS2XKqQC5jXL/oU5oR
 P3nBp+c3eVUKh2iSinc14NldjlbLQ01moe//t/XEcP/jXYUOGAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=951;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=FVcXaV24hqf+O26y29mEYjF1sOtwwqLMlU2ptNFM73w=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl32fJaprd3yno2KQHTuZClgxf8NyyfMXSP+P3A5oe
 F2jmTQ+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZd9nyQAKCRB33NvayMhJ0QWoEA
 CkBL9dLTftxjIWRvnVqNsN90tY0MZj4bBejTiE/CMyzVjzNXn4YiMqSeEjnTZFohFMbGhnZpeCWJHi
 WzUM6e9tqdh3P+SUljyU8X/2nl2v8M3w6Knt/lQ0qri0SQSWg9H5PhIrXwFMNvP+8AZBMBFFzlY7MW
 hVrl5xaT3IZrfswDxrj0VPEVlOsUGPuzVmLyf1eXO8XFOOUFthXsDfpYFFjmBry8Zkqe6sDxjUcWQ8
 0iO1S6vb9lwIcnv5iaQYtQOsz7hyy8rUqLuDSzYvybuLhi8YfOZBQObKD2YLddyJcK0AeLYWlAogdT
 S4bMkWwjl6eZMdfX5OzqZCY35onEZr4/GkqtwhzEyqkP+iOl3Jfu+s9kQfTmZFvfRHzNgzEnMDebLU
 PRjD5BdwG5r32Xpn+4XC2tbOVS3A2hLBuKunjBRFJIz4VUOcV47CCst2MxqiWd4veeCFhv+TVD12wg
 K+nIRJNLb3KE+vEHeQd4foJOXAZGlH4LtuEnsxx7SqoP6SakW03RKwypmarjFBOKsVzNb9pbzHkvde
 8wOE5eLUG1/8eR1YI7JDOpNuceDmul9c2ek/jXNQjzgFxP+mdmjWdMt8JEleKrA+hIcngFNhGo+soW
 0PjZmR/JDVNDO7igA1yMEzrd/kiSK87cdPUN5Rco9xL4X/iTK2U4ZfcvWPwg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_090517_391618_A9D961A5 
X-CRM114-Status: UNSURE (   7.08  )
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

Remove duplicate "return 0" in qmp_v4_configure_dp_phy()

Fixes: 186ad90aa49f ("phy: qcom: qmp-combo: reuse register layouts for even more registers")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 546d3c6bee32..2f341613fd31 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2431,8 +2431,6 @@ static int qmp_v4_configure_dp_phy(struct qmp_combo *qmp)
 	writel(0x20, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
 
 	return 0;
-
-	return 0;
 }
 
 /*

---
base-commit: 20af1ca418d2c0b11bc2a1fe8c0c88f67bcc2a7e
change-id: 20240228-topic-sm8x50-upstream-phy-combo-fix-duplicate-return-6b5135756006

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
