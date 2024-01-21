Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 540D6C47DB7
	for <linux-phy@archiver.kernel.org>; Sun, 21 Jan 2024 16:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXl3TU8K2e2gpLm5eoYkEplO88Ie5mryFe1Fw8FhUFU=; b=JnfqT/vkDsBHR1
	2hZTeKLO24ftkqpYmPnCaTlPQeRKf0vWLwhZGQY3XOf4ZlH25vsR4d4bv3TtDAxkard/xhTf5Qcqn
	ymAzhN8HdFyd1Bc9/Q9k+db+14PzzvrYKxMopLmh0uAcwX8J1/Ma0c4G7XjZLN5gyN+Xsf6w3xMlM
	7BRAc1hwuSWV9wJn4qUAIf84ZP6xIuWScQWu5XgnrdZIJt1MCxeSwI6LH32OZ+ODk+jDxs64WQgM+
	HA8bueA9u+/QBAlcWeCJVWA2Cy4W3KFsUoAxjFHFBlU/SOcU8DyeC4UzJCsmWsfVK61lw3MamOPmF
	aK9UwwBzqgFrSG0G3POQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAK-009lxU-31;
	Sun, 21 Jan 2024 16:59:24 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAI-009lve-0f
	for linux-phy@lists.infradead.org;
	Sun, 21 Jan 2024 16:59:23 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-339231c062bso1485361f8f.0
        for <linux-phy@lists.infradead.org>; Sun, 21 Jan 2024 08:59:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705856361; x=1706461161; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T+6WENXvJzBB49YV3y2BUzN0W4hKGmw5Xn61RrMIgRs=;
        b=WWIOZ+SOn9r5kkFER2UYR14MNdR7uAF/+ZIwOR8noEjXnZR1Dex9vRiG/Mth6hSs6B
         vNBmXjn9ROKLfy6cATcmueR4KhFsaIh+gEppYa2UMLKLvw2u+lFpVKXBg8whPNzMsc69
         mEQHe6eM/UW426nHPgHhZOoA7/DP3NqSiov39xpujQgLWcS5aqpCgdAaAyPmnbkHiARe
         UUcaPjSK5phwdMI7/kSzlgXd3Kh6Z7lLDbdmpC7V+O+BKQASYBClTFlKKlInH0b2RNkq
         ExXOpLopZHs6IkXMoxwKr3aItOCcextDS2kJeDaah1UZ2OeM2ZBDPhrljHIyuhLJpCwI
         r0zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705856361; x=1706461161;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T+6WENXvJzBB49YV3y2BUzN0W4hKGmw5Xn61RrMIgRs=;
        b=ooG6rQH6rLBuy0pDiBKoD/R09mzxPUiRNwjH/PGTBAnsGPW0uJQdLMRdeZQkDjvwss
         HHambGlyNFmScagk6FARmFWkiooVY3nKHIVBrUUaKzBrqpkde0z1QwUuSOOt/i1joE9Z
         aH4RxYXvkI8zmcW0HbyoJjAXB3qPbfdRAez/mVl9Yri6dyv/kJrWkUfI4UBDuAOEefTs
         T1qMLcNce6wSMCtaAiV5jS4iApFjWIqJohnXXDFWw7mVQ+UGiLV3fJSDIDIoQ09cmNu+
         BrMFw9nA/yCVu6KPNNPi/u3TwDBfwM2KWjgZFbav+Vt5aRcM/W/BUEOKRXBoxD7YNlkI
         OcxQ==
X-Gm-Message-State: AOJu0YxFqea+10WtzEZiVUfeKxOjrzmCoSlccbnGIbiRlOqT/WRT7f56
	+Z18FXE/r9KqEt4u1DI2OQZ6HUveEC6pNju62Dj7OB2wLyVbzUjk
X-Google-Smtp-Source: AGHT+IGKDLspvXbJOtsgxvDfAuNqgIbRDm7R7ElQMadvYLL94yJb/D6uXw5FOYyFeAiMNtop26bL1Q==
X-Received: by 2002:adf:ea88:0:b0:337:d649:da82 with SMTP id s8-20020adfea88000000b00337d649da82mr1495551wrm.101.1705856360907;
        Sun, 21 Jan 2024 08:59:20 -0800 (PST)
Received: from david-ryuzu.localdomain ([178.26.111.181])
        by smtp.googlemail.com with ESMTPSA id q5-20020adff505000000b00339214d70b5sm6541115wro.85.2024.01.21.08.59.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jan 2024 08:59:20 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
Date: Sun, 21 Jan 2024 17:57:45 +0100
Subject: [PATCH v4 5/8] phy: qcom: qmp-ufs: Add SC7180 support
MIME-Version: 1.0
Message-Id: <20240121-sm7125-upstream-v4-5-f7d1212c8ebb@gmail.com>
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
In-Reply-To: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 ~postmarketos/upstreaming@lists.sr.ht, David Wronek <davidwronek@gmail.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1705856354; l=882;
 i=davidwronek@gmail.com; s=20240121; h=from:subject:message-id;
 bh=8+nVfXj0pK+UjGyYY9L8MCyBz+TFFNaW6LNlpt4ylqk=;
 b=kfHyJ/tjpR2+eR1yN56hNm0nYVS3p8pzrA69vt9HClWzleBmTA8xfzM1UGjRKCjNUZ3gJoXeK
 xrtY34kSzyyAqbfw/wsmQQZWdSqyTCxxbx2lA4kyLhZ2PefdBtNDzaa
X-Developer-Key: i=davidwronek@gmail.com; a=ed25519;
 pk=PJIYyFK3VrK6x+9W6ih8IGSJ5dxRXHiYay+gG1qQzqs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_085922_247040_DAC7E570 
X-CRM114-Status: GOOD (  10.74  )
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

The SC7180 UFS PHY is identical to the one found on SM7150. Add a
compatible for it.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 3c2e6255e26f..0276de802d78 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1880,6 +1880,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sa8775p-qmp-ufs-phy",
 		.data = &sa8775p_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sc7180-qmp-ufs-phy",
+		.data = &sm7150_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sc7280-qmp-ufs-phy",
 		.data = &sc7280_ufsphy_cfg,

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
