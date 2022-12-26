Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C049C3DA7A
	for <linux-phy@archiver.kernel.org>; Mon, 26 Dec 2022 03:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q1Qu+DP5GLtLQf3Vw7HFsduwDXejuPLoYC0c1ImuMdU=; b=vfrgjur0k3OT3I
	zgE27hlgrbirODszVtppqc5edVRhpYkHIINLWvymua9RlwavhhHgO5jYij7tue8eQE6NP5O5GUPcC
	4yZXpg+lm1YOIX9afeCrUzoNNPyIYWKwLeDrelz4x5H0RASFxCOCfExmeufv2WSENiIKZg8pBKVh8
	1+nNMnjdc+Nnf8hH/9gUZ4t8xreZjIYO/mUk0HPQuD86Umyxy8Jo/C1eHSbPvXCxoeXGuubi5xUfx
	xj4q7NBQHEwGlcnaJXqM7ey7jJSKymQlimfiSOGFWAtldhXWlnbWZ5DIknXhtObAt+2rL5gXmtFW2
	iIQNKHMroJAINmd4LUGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9duC-001EqH-HT; Mon, 26 Dec 2022 03:12:00 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9dtI-001EMK-Nr
	for linux-phy@lists.infradead.org; Mon, 26 Dec 2022 03:11:10 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 1so14567235lfz.4
        for <linux-phy@lists.infradead.org>; Sun, 25 Dec 2022 19:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7cZwQ38RrZGBM4qHYSFGd7K3TwyC7n/w0FHJkPUy2UM=;
        b=d/Yki0h9RLUN0YgcObkHaRmLIYER3QWByufpawk5BJQx/MdCP0EZsQItpFKimAp2GS
         39tpkX+yOkUy8MYz76J53ZctqZSgdzW9Zpr3c39Ew/3cJthhMP05xmGDJH5F0NxSaFwO
         PT+uY82RsUoC7Ld/KxCdcFw4Vp1+d0yGn8wLHcbGwGEp6CF9vK5bKayAeGivi8NDjWsV
         twKQcZh4CVSG8sViR+ijpSBjE3UqlUIJwNkXoz9ZXAAXMNQnA5Y2u8tuYUB9FZzD1ncx
         yYJNCbkGUBMMQpvu6H6a/6Gzo2iVviYn2x4KOIMaZCmJ+DftLF/UQNgmsHfQddky02zQ
         INdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7cZwQ38RrZGBM4qHYSFGd7K3TwyC7n/w0FHJkPUy2UM=;
        b=0pAiHLfj/QRUSyYw6kwDdCxHQDQbCKcoAkSZlJY1Q0cBzGPOawKfbiHn/qGlNmmzd1
         9cckcuCC5zHdR0+sJm6/R//aZFn3osCvJwa9x3drh0aCRvpDGsfEKJ7Xtys4pcXnBJef
         N0X3YtV8IpjqF1x7Lr7WfoH2UsyogS9kB+hpJ2ATzwiwIyKzHwENUhl2TQkoSIUWegzA
         m92TBgYmbXjfj2hPzIXuxtoQRkQBMqvAbMc/A+bLq+gWL7WYz4oty/myhQs9tO4wOVIs
         j29jdsTKlCnN6XVf9rT/t/OonTFsq28Mit+7ltUEvJ+4BItCp7d++ldKTHqOaejciRhD
         khKw==
X-Gm-Message-State: AFqh2kq2jruBYOjY0NcGPKGEmIEM038KpGA/Sb1kygqzak94cOAD1b5b
	VWJ/QVCxRQHITxee2QI6uYQ2zg==
X-Google-Smtp-Source: AMrXdXtUJXYjP2vE9/p73yxJ8VQ86vsLLtQtSPCQEbyULCnvNly/4uYW2VX78eJciCYFcv8qUUL/+w==
X-Received: by 2002:a05:6512:2004:b0:4b5:64b7:24f0 with SMTP id a4-20020a056512200400b004b564b724f0mr5539082lfb.29.1672024261872;
        Sun, 25 Dec 2022 19:11:01 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a12-20020a2e860c000000b0027f770526ebsm1165388lji.75.2022.12.25.19.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 19:11:01 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/3] phy: qualcomm: pcie2: register as clock provider
Date: Mon, 26 Dec 2022 05:10:58 +0200
Message-Id: <20221226031059.2563165-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221226031059.2563165-1-dmitry.baryshkov@linaro.org>
References: <20221226031059.2563165-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_191104_852322_6D6CE715 
X-CRM114-Status: GOOD (  10.04  )
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

Register pcie2 PHY as a clock provider to enable using it in the
DT-based clock lookup.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-pcie2.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-pcie2.c b/drivers/phy/qualcomm/phy-qcom-pcie2.c
index 5407e59bb185..11a2bb958681 100644
--- a/drivers/phy/qualcomm/phy-qcom-pcie2.c
+++ b/drivers/phy/qualcomm/phy-qcom-pcie2.c
@@ -243,7 +243,11 @@ static int phy_pipe_clksrc_register(struct qcom_phy *qphy)
 	fixed->fixed_rate = 250000000;
 	fixed->hw.init = &init;
 
-	return devm_clk_hw_register(qphy->dev, &fixed->hw);
+	ret = devm_clk_hw_register(qphy->dev, &fixed->hw);
+	if (ret < 0)
+		return ret;
+
+	return devm_of_clk_add_hw_provider(qphy->dev, of_clk_hw_simple_get, &fixed->hw);
 }
 
 static int qcom_pcie2_phy_probe(struct platform_device *pdev)
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
