Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7710FC54E73
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6evQxF3AzI3IvyO81g4ljxgU4MPrZ3MpSA5ZXJwOoc=; b=nwEAwLlbZGYd8+
	oyeZds3f7jg0qOkJBSR5RH59tGcjsdYisv4s9I+OKKKXLd5cBuZ0HMQuSfdoN756imuX7w7iab+oE
	5DHxmooAQpeA7F+a4oZeJvgeTM00/YSVqMNnGzl6f7+EubI787f/vNaHxkVJEdLtFzssaRy1iaKHz
	oEKC6OeErx8gY0NhUuc4yMrPo4MGCLqQfPixBetl3jztCLI5hthR+/FsSvOFFkn/ieapgCzohTsxv
	k8ykqbaZkpSVb3H9IRR6yhRlHWpZ11JSPhhw4zOea9N3qHgMfYi3mFM5FdOW1gE52UJbHk4OMCYge
	KbOE8zcXgXMl0LFh98dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxv-0000000CLPp-3y4l;
	Tue, 19 Mar 2024 10:45:07 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxm-0000000CLF0-1GSY
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:45:03 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-33fd8a2a3e6so1572627f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845082; x=1711449882; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HDlVBiiHg4pmaOoXuH8MpX01GVb560GIyVnt1+W2Ilw=;
        b=dsiWsN7MyJ7O4PZrjWBqyG+Uvh7dj3qHgnRQkdvXwnlOMk5XV49yCxASrvvItd3Cyn
         jr3dqoiHR6Nhqjl7zofcVmhuNKKB4Oau5Dg2+u7/qW9ksDgPFZe83e41ILsJxmfP5Ahk
         4OMdx0S0rl3xOSz2lQJtUUy/7F41OCMsxBDZ2VTvIIoPvAgCDxgAVVJX20xXRgSSbnYb
         pwiDgyr7VALMUFl2/9HHOIH4KWRUa5nyxQqA+GAWHvzTlKLvQkxnOOwXuI63/zOuq5s5
         bZcrLZLx6TC7NqakMiLyMd6KX3NbtODYReOlAEw4KyFgGxdBLLj69R3bKL/vKGJMQmBf
         d4ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845082; x=1711449882;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HDlVBiiHg4pmaOoXuH8MpX01GVb560GIyVnt1+W2Ilw=;
        b=JKTJo9wQiAGTHZNzGrotmVTKZYSud/K0tucjGb2boXa/UdGMlJ03k1sxGgz8krf/Q6
         TFTachRe+8eLKgwJus82JhfaA3iK2laDsQ5m91hDKFybQTM3Z+YcO5lwn5g1IBefvcNO
         jKULg1+ofimO5WfPuzaeYyG8OQZg5kykg0ZipjPl7OMHCsmIfipJ2M+hkkYKlvygUJ/7
         zbUG/yvR3AXt2evBUObnMQTfEif71VuZTitXecOxYRtlKKpbzWTZVfoN/VI6lpfn70cq
         jKTxgRDreAV1BnijjAaXE+MOO9zRp2hmfKRLzMdpAHAdccDQbVLfCxj5f6Odo9aFDoUN
         j+Cw==
X-Forwarded-Encrypted: i=1; AJvYcCWiwZpkGyoIT2OpuQpzZvrIcsw9w7MXCNK3sAxoYoqnQeNceAhXTJJ8U9uMW2qYDT3cqlbpDJxJDno50NQm+vIkqsl62IIpJRbPI3fOlw==
X-Gm-Message-State: AOJu0YzRFh5xTQu69nfQFuQLy2iI+8qZEZMtX6nqPMhEAAt2CbNTsZ2a
	EMDq9VryIFT1garRZPV03J+ZGr9tlWnJx7s0N6keW8rE/QQCxEvnnzloi9z1TdA=
X-Google-Smtp-Source: AGHT+IGZs6bS4wuGXvJcnPNcRn+hN4DIRrSoCaWLbaixhzIt8JvTEga0/2Q3eL0YWuG9FLqGwZMk3w==
X-Received: by 2002:adf:fbd1:0:b0:33e:7054:5b2b with SMTP id d17-20020adffbd1000000b0033e70545b2bmr1463846wrs.4.1710845082283;
        Tue, 19 Mar 2024 03:44:42 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d4d45000000b0033e03a6b1ecsm12029459wru.18.2024.03.19.03.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 03:44:41 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 19 Mar 2024 11:44:28 +0100
Subject: [PATCH 2/7] phy: qcom: qmp-pcie: refactor clock register code
MIME-Version: 1.0
Message-Id: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-2-926d7a4ccd80@linaro.org>
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2539;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=L9f7mVzB9wMW7O3NrZIDvpmvouDLp7SdgWUnDSjbq1A=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl+WyVqMHIPwowIY+jis50jKt8HWeaChSOf1n5Qo/s
 VvyV6LyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZflslQAKCRB33NvayMhJ0cTwD/
 4oCFX/soYZyw0allUAHdZ2JeGA2i8z2dwZVs45CGAYYDPZ5upLTxBHX1I4/AWQRFCIxqpE1bjcDX99
 7Z3Xz2KwKIjl8l3fAoGDoaCKj64IQ77VSio/mFt5PHdZDpYykBX/DIE0HM2IRt58mTmQxpSiWPgCZA
 T6FobLiQtF9uYKESOWkypSag5wV8BMNTsRF5PqeUpDirDyJk4Egdz9ovFUqVVWU57dHWDJmfzsZ6M9
 2oRAsipFxKpF2jmBJX0StNlWu5xwILHpTQ3a/XpeG/hDbZj2tahcHwEVl0mgl0mhaHLIvEtdqQJBdd
 lDs//mTTZnggxYSsxBoMrXEW3VE1FgHfuNUtD7AHFcYaQ4f3UTr3XUrZzJCEZOsLb3zvIr1MPMlbz1
 EYdHfIEGH1oEOB5sT5SIpc/ENEHHbvgPGCBHuKTp96Dw3tZOMzJ394vzmIhgNrCFUfhXKjffMH9Wyx
 Hxv3Wmmza4WfAfutfpUzBsd7gdocun1KTLduSxW2uLOb8QnlE1QFo8x2CUrEMKJsRU/R3Qqo+WZT0f
 K1Av2n3lmk3aoj5M8z5rys/HsZ9rGrSU+2XjJYtxQdwslYw9D+uaQKh/dXN9HqFysm1EVzyuTWRyHC
 Hy2CdIca4gZDAdlUpfoWdtQrNNxulOAH4x4Bj49WTLfeKSqecYX0XN1p9AzA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_034458_823838_6DB022B7 
X-CRM114-Status: GOOD (  12.53  )
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

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
in order to expose it, split the current clock registering in two parts:
- CCF clock registering
- DT clock registering

Also switch to devm_of_clk_add_hw_provider().

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 27 +++++++++++----------------
 1 file changed, 11 insertions(+), 16 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 8836bb1ff0cc..079b3e306489 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3635,11 +3635,6 @@ static int qmp_pcie_clk_init(struct qmp_pcie *qmp)
 	return devm_clk_bulk_get_optional(dev, num, qmp->clks);
 }
 
-static void phy_clk_release_provider(void *res)
-{
-	of_clk_del_provider(res);
-}
-
 /*
  * Register a fixed rate pipe clock.
  *
@@ -3664,7 +3659,7 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 	struct clk_init_data init = { };
 	int ret;
 
-	ret = of_property_read_string(np, "clock-output-names", &init.name);
+	ret = of_property_read_string_index(np, "clock-output-names", 0, &init.name);
 	if (ret) {
 		dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
 		return ret;
@@ -3683,19 +3678,19 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 
 	fixed->hw.init = &init;
 
-	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
-	if (ret)
-		return ret;
+	return devm_clk_hw_register(qmp->dev, &fixed->hw);
+}
 
-	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
+static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np)
+{
+	int ret;
+
+	ret = phy_pipe_clk_register(qmp, np);
 	if (ret)
 		return ret;
 
-	/*
-	 * Roll a devm action because the clock provider is the child node, but
-	 * the child node is not actually a device.
-	 */
-	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
+	return devm_of_clk_add_hw_provider(qmp->dev, of_clk_hw_simple_get,
+					   &qmp->pipe_clk_fixed.hw);
 }
 
 static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np)
@@ -3899,7 +3894,7 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
-	ret = phy_pipe_clk_register(qmp, np);
+	ret = qmp_pcie_register_clocks(qmp, np);
 	if (ret)
 		goto err_node_put;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
