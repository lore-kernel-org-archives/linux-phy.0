Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5DD8C05027
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3mqeiamwLXow8A4c+o4XZUAyexuLQ+oTXMC4B3I8xQ=; b=W+b6qfaj9RRMd6
	d373mN07XmSpnNIRBOoTSzkEElOzSwYT+pArRCqpFfh0k9ZPwdqQ3tmfUr1spl+P6V1XHnhPPVTdX
	2C/QY5PBGYfyu/ANFZWn4VONVxLIiXN71mCabAF+K6PfWB/PBm+6+5cR3dnm/8YfWCR6rfLhhxRIe
	aTONtcbm0voTXrxnuIyKdC1SJz8jbw81E8bXGOBGeytWyRzJllYnBismG5WLj7E4QzQMluEjkyMAt
	64B1UdtnaTXyi8Ftt/0gpmUJDVtbsmt52ohHc83XY36MWrG27tDwpo168MsaWnoDbZyVjNou+AmXp
	YiRTU31cGpEQxtr39N1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZnR-00G2ZG-C0; Thu, 02 Feb 2023 13:38:37 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZnP-00G2Wj-6C
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:38:36 +0000
Received: by mail-wm1-x32c.google.com with SMTP id c10-20020a05600c0a4a00b003db0636ff84so1442008wmq.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 05:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Muj0r5cS4dp6xC+TSUuMKKW1WBd70kMvR15aSo0LNU=;
        b=GuFGabF19GTVDUCzru/UnbKSvOS9B/ICt6k9ACww5VSGO3p0hFqaTrHma6/TGzYSoN
         NYiaq9tSFPdR9ThkGaW4oVbEVxekMtXvSDApd4/FFjMJh2b+FhR+M1BINi/SkWKb6rTb
         GmDUxS9r7WTuunBrDRWhQ2bzAsaznuZO36UZahYbZpexZyfWnasIOdmx6YaG6a5qFb+r
         xREZc3YRSB1vhAz2fyZpLG6yMgBnxgEUUlvEkG/xguXU2a1LCffINx5jEbRYWHl7mvsF
         YhpcSYiKOsBKpDNubjWgVPgGlLczGa9iDzFVTNWgdHjNUFKdP5QLAkUz5QMk61ApNb1T
         SWvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Muj0r5cS4dp6xC+TSUuMKKW1WBd70kMvR15aSo0LNU=;
        b=fUNxquFCUhb1GhpsF0ibJFyKyS3ejm+jjT4u1dj6VQszK0y6b0vs2f0fgnHMpJI9gT
         2QVmeGKV8rc9us964FqLi1mtw99arLZDQLw05yZRm3BPbTo63eQYCRntqjOktjTUkkHC
         6DGulQH/sgdVgTEgOd8ArYqCLs7Llb7I09vHc3nSypi0Fs+Yy/7cf228Mt1UmTALpD8V
         HmTHgveebTEM+g34Q0Ke+AcOF0/QuXX0NdX/cUeVC5jhTRKWB536Xgd5oqaz0CnzhAL9
         Pwmj3D4EQwAye2U8uy/xPxaLBV/fzd/UkiXAhn0E/QclVCiAAT66A6Mz5jA/gG3BIAR7
         7I0Q==
X-Gm-Message-State: AO0yUKUwBKa9Mcpzr7wGdQPS6yswLatEQlnXE/QqAeB/48I/zXv2Xsj/
	rz9BQ5Mp1vjepGPD5RZ38BALog==
X-Google-Smtp-Source: AK7set8R4MkWRBydiDyX6RpsFozs0TBOeL0BRfzRO4g6tMz1cuywexaGfc1xJsDWiBomfrRoXqdnBA==
X-Received: by 2002:a05:600c:6018:b0:3dc:1ad6:55fd with SMTP id az24-20020a05600c601800b003dc1ad655fdmr5936251wmb.32.1675345112971;
        Thu, 02 Feb 2023 05:38:32 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id y10-20020a05600c364a00b003daf7721bb3sm4672657wmq.12.2023.02.02.05.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:38:32 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [RFC v3 5/7] phy: qcom: phy-qcom-snps-eusb2: Add support for eUSB2 repeater
Date: Thu,  2 Feb 2023 15:38:14 +0200
Message-Id: <20230202133816.4026990-6-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202133816.4026990-1-abel.vesa@linaro.org>
References: <20230202133816.4026990-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_053835_252089_3313A510 
X-CRM114-Status: GOOD (  14.68  )
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

From: Neil Armstrong <neil.armstrong@linaro.org>

For USB 2.0 compliance, eUSB2 needs a repeater. The PHY needs to
initialize and reset it. So add repeater support

Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
index 23ec162cc3bd..8d972d49732b 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
@@ -128,6 +128,8 @@ struct qcom_snps_eusb2_hsphy {
 	struct regulator_bulk_data vregs[EUSB2_NUM_VREGS];
 
 	enum phy_mode mode;
+
+	struct phy *repeater;
 };
 
 static int qcom_snps_eusb2_hsphy_set_mode(struct phy *p, enum phy_mode mode, int submode)
@@ -136,7 +138,7 @@ static int qcom_snps_eusb2_hsphy_set_mode(struct phy *p, enum phy_mode mode, int
 
 	phy->mode = mode;
 
-	return 0;
+	return phy_set_mode_ext(phy->repeater, mode, submode);
 }
 
 static void qcom_snps_eusb2_hsphy_write_mask(void __iomem *base, u32 offset,
@@ -235,6 +237,12 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
 	if (ret)
 		return ret;
 
+	ret = phy_init(phy->repeater);
+	if (ret) {
+		dev_err(&p->dev, "repeater init failed. %d\n", ret);
+		goto disable_vreg;
+	}
+
 	ret = clk_prepare_enable(phy->ref_clk);
 	if (ret) {
 		dev_err(&p->dev, "failed to enable ref clock, %d\n", ret);
@@ -342,6 +350,8 @@ static int qcom_snps_eusb2_hsphy_exit(struct phy *p)
 
 	regulator_bulk_disable(ARRAY_SIZE(phy->vregs), phy->vregs);
 
+	phy_exit(phy->repeater);
+
 	return 0;
 }
 
@@ -386,6 +396,12 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
 	if (ret)
 		return dev_err_probe(dev, ret,
 				     "failed to get regulator supplies\n");
+
+	phy->repeater = devm_phy_get(dev, "eusb2-repeater");
+	if (IS_ERR(phy->repeater))
+		return dev_err_probe(dev, PTR_ERR(phy->repeater),
+				     "failed to get repeater\n");
+
 	generic_phy = devm_phy_create(dev, NULL, &qcom_snps_eusb2_hsphy_ops);
 	if (IS_ERR(generic_phy)) {
 		dev_err(dev, "failed to create phy %d\n", ret);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
