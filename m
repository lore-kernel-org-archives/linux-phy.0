Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3BEBC3DA6E
	for <linux-phy@archiver.kernel.org>; Fri, 16 Dec 2022 23:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q1Qu+DP5GLtLQf3Vw7HFsduwDXejuPLoYC0c1ImuMdU=; b=zuOozjT0+zU7xl
	3m4Lr9mQtYKV53Ayadf1o7FCHm6prUDT+pmmbdr6FwIBuDk4GPmk1biCIXyUsgzG2K2taAH+jsD+Z
	XAtvytPIfJgExzv4GlaWWeIXV6q+ub5NcWjpRfAT/G8FlTf4RG/OCrxJxJVU1TLdxcpkMPkGEaCnO
	CAzyunFX6bre3+5Rq1M+eeDzz3hMAiDgrG3cQQP+SzrOiEtGc8aNGopr51AHiL96/2P+AeVQJbDKq
	VeHmiCwNncV2sSxnn5dljw2K7cbJ5qLUJJ3dqtbXVhzE8E/aNz/w/uUlODMIZPF0PTM5/+Vtr1zAA
	T6m6B619X3EzP6cAthDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6KKJ-002jG4-Iq; Fri, 16 Dec 2022 23:41:15 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6KJd-002ivk-NP
	for linux-phy@lists.infradead.org; Fri, 16 Dec 2022 23:40:35 +0000
Received: by mail-lf1-x12c.google.com with SMTP id bf43so5795105lfb.6
        for <linux-phy@lists.infradead.org>; Fri, 16 Dec 2022 15:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7cZwQ38RrZGBM4qHYSFGd7K3TwyC7n/w0FHJkPUy2UM=;
        b=mO6GTEu8x/YM6wnvapt5u40IbV3efRsxnbpPo9jpp2d/qIdvVJ/I+NSdS4K5e09bbc
         bLPi/pf8fMQR4Mgz/LzlNEdN7+aVGsQempHQm9YJaTRyV2SbT2CX8ltb2jRgLwltuLti
         oMjrXTk/B8qk2KawhYNGWqEZ+k6z7IU35rNIUMtN6uBE9AoJiXmvxXNVWW7rxo4eV8Lm
         9VW88mGVFkA/n5GEFy0P7ishOxc+akf1xQLAmxJ3n4fBcu9EIwBm6ZWbVuEXPh1vhq5v
         0Po7UAgMl4y0stvdPm4FCgytDr6VzlS6VwhH17ZWa8ai1hjMcaDkXqSRGF4NAYCLjPzJ
         dxuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7cZwQ38RrZGBM4qHYSFGd7K3TwyC7n/w0FHJkPUy2UM=;
        b=H2fAZyOfvjugO4J/k9p+xvVOeJwXH1hQxZO85jsdBqOrIz9JkflDIhnaDeSLjwqea/
         jBhGNCqv61OgSfO65i9lJ/q1uwn6N+UK4CwN4Yxxqd85UnrB+byBumAUTLFFBO1bx4+Z
         i2ozNR2cc6d8LHAeIUvN9YUG3kDbU++7tu/DN1Ntz74iv7cVVie8DUk1Z1DjLVPQOZVc
         0BIFYPIhHBFoeDfYnGIeuvS3iwPkCoV8klkGD9ZUZ/VwwoVxnXuaAy1cx5wOljNn88G2
         98gzxoyFcADMfhReijtf5U6gxIgnxHYt7A40cbXiXhL+G1Xk+3lo+F9bCoSGOuYrnhNc
         kfuQ==
X-Gm-Message-State: ANoB5pncMdXijSygeg0VGBo4XtpFacMdD0eQ6Nu/Sah36MyAgp6QopLp
	np+My0fdMHD2LJQMwRTRnXM8MA==
X-Google-Smtp-Source: AA0mqf6LBdEGcgyFkutG3rmz4Csb86TyQrexMg3SEuzL6EnIva7pNhA9wUTmnPTfxzPeybD5RMF5Ig==
X-Received: by 2002:ac2:5a43:0:b0:4b5:90c5:281c with SMTP id r3-20020ac25a43000000b004b590c5281cmr9295436lfn.19.1671234029557;
        Fri, 16 Dec 2022 15:40:29 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a21-20020ac25055000000b004b40c2fccfdsm336950lfm.59.2022.12.16.15.40.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 15:40:29 -0800 (PST)
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
Subject: [PATCH 2/3] phy: qualcomm: pcie2: register as clock provider
Date: Sat, 17 Dec 2022 01:40:26 +0200
Message-Id: <20221216234027.539917-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221216234027.539917-1-dmitry.baryshkov@linaro.org>
References: <20221216234027.539917-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_154033_842874_9C1DF5E2 
X-CRM114-Status: UNSURE (   9.76  )
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
