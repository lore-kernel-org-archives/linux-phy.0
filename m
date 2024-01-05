Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50344C4707B
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jan 2024 10:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2TsaAc4/wmaEcWmIax2+NQdgRFWfEHDPqpsfwnO5EmY=; b=OrgZ4Nip6CYJ++
	vtJBHJ6KGsGUrUZeVAIniYDuFQovC7unG6sw3Gf+AKXv51LRJyiiNElddydPNWJnl7TPb24Phsarj
	E2e4RhZM6PJGmXseMtW4qh4BwFBAWhzh7pVqy+YoXhJ218+NRhAMxxkJq8hQJUzi6D6FAS5PD/QG/
	g0IoA5iA319y4J4lC7E5XktwQl9qcSl+uk0KqtqoNEy6byU525fmIFfX/ZYqhgt+2zlZg6VqCebHe
	cyoMIFYtyGVJQlsH2R7xfE7N8QAKXdmpNQkwFX93/TMFiYph51gBSbl52bBH2tMimcsuhsZx59t06
	liOQCUluWqAdbXjuzM7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLhFi-00GVCh-0B;
	Fri, 05 Jan 2024 10:16:34 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLhFe-00GVB2-2E
	for linux-phy@lists.infradead.org;
	Fri, 05 Jan 2024 10:16:32 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a28b2e1a13fso159251366b.3
        for <linux-phy@lists.infradead.org>; Fri, 05 Jan 2024 02:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704449789; x=1705054589; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M2SbbmAUvxuz+3O7vyQxuSBbpMgT1hRNIR0aHAh7TUs=;
        b=Cz+mRX9H3cxbY8nGdmgUSGDqP71GTBGj1TXBWiL9dbHA6USMAAKYd6OAVTTp/CpzSs
         QUxorinbikHMJxcBGKtVV7DUuzKhCkU+Xt833Wpy64/J7UVBVDNdZc2ntCyhlSIzKkI/
         JoWuh3rmJGxNjlj9ASMZ8kAxn4PYdDO4fC2r5rr86z+4HZA081mox3XgL4oNRhrEQqiV
         wk7aTKn5qExCEXC+2viKHOXQMYhrdcR/v9y4e5QrNHdbiNKZBnRpVMywer+ZYx5do7rx
         pioqiYLNSRbyTnVUWHRu5pUdEzGmfGbFxXlHhpLTTyZBhpMXkhR8M21M1tiTZEpnQKvd
         lnuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704449789; x=1705054589;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M2SbbmAUvxuz+3O7vyQxuSBbpMgT1hRNIR0aHAh7TUs=;
        b=mP9UBzFOWXof7bYIj9LCT97xvV7/84yv4Avi01X9jVNnIBR27OcYDMZqJTSGHzedlb
         07h7XTCnRAggGOrQbfXmU5wt+WIoaUXbb7Ds4ZV+2MnyYoku13pVzU2Dynpt5f8SJ/zM
         FpTTunHDjTBvCp9Ty0+QvqOpvK4Y/ZyfGJB/S055mCrYEeN2sLTWBGhTDRFeIWs2VAxd
         CG9Ql8D4tFksGHhzJiXT/A3MKoAuS4r/aTKxCK29jePEZkgclweziQGqn1Vj7t9xYCEW
         QM2EaK8LA02Q7rNFjVIpTJQgSi5Zgx3lbSg0CY4nMFpxGvCVo4sKGGn71XsfWTmFoaqb
         2HYA==
X-Gm-Message-State: AOJu0YwkZ546sjONV0CzcfrsZDPd8DjqPzBjJUbFCCyfblApgX25cdut
	WzajC1orCQjSkb5rh2BzVlFR3e0gUw9aLg==
X-Google-Smtp-Source: AGHT+IGXz2g8H97RWKY+7sFScbllJc8+MA2CAHJyVkS1v+Mjo7+A0HD5O0yVEja/MabxVgS6haXrfg==
X-Received: by 2002:a17:906:1d9:b0:a28:ad97:e214 with SMTP id 25-20020a17090601d900b00a28ad97e214mr1018779ejj.1.1704449789326;
        Fri, 05 Jan 2024 02:16:29 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id o9-20020a170906358900b00a2824bff5b1sm713180ejb.216.2024.01.05.02.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 02:16:28 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 05 Jan 2024 12:16:16 +0200
Subject: [PATCH v2 1/2] phy: qualcomm: eusb2-repeater: Fix the regfields
 for multiple instances
MIME-Version: 1.0
Message-Id: <20240105-phy-qcom-eusb2-repeater-fixes-v2-1-775d98e7df05@linaro.org>
References: <20240105-phy-qcom-eusb2-repeater-fixes-v2-0-775d98e7df05@linaro.org>
In-Reply-To: <20240105-phy-qcom-eusb2-repeater-fixes-v2-0-775d98e7df05@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elliot Berman <quic_eberman@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2272; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=vIbUfNQlZTi1v25Ve+Sd4HHhwYJTXbuLuFkWrD7aJiM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBll9b412/e8NdvgMxOeqdne0SbNS5xvfDpT5ibA
 mNOTJNMutmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZZfW+AAKCRAbX0TJAJUV
 VvHvEACX+B/Dfb3IwGS3F1o+zp26fCXYgaMHeIrlqxwCWDSKYGcmjmCH8lBMHKOVzaPSKz+hExZ
 Q8sVmp0CuZkAAhuTs4YQSywX54L1BLD49ApRdASsfzvucIUXcqOf4aW4E8UvBTXX2YrD2xZG/+b
 Y9jus7yZF0GCbabI9hnxd4HYaDn+KBzSoWz5+iEzU3kLsYI+MyzkdmNxXJnZwm+khQ3YqjjbXgd
 FUe9CotAQlXu6OFqSBCC4PJ4uOWdPWT1XB9QK/3PqqH9C1d3A35KC8lG7dybHfsexHrBwxux/1s
 1qMtc2xw/yLtQp1OZSyPiHU4OkoyRBiKYMYllWjutWCzxXAqD0FLax+k3AsCcXQLUECjKERivM2
 5FMIdxS318g9etxPl/7BsnbOV10/yUoVazYudaCCnXiOlfv6b6gcWRm4zghRc9kt73QPKO35Bt0
 JsTc/w1u0H8WwceWNV65T2AXOmMLX0b56orO7CGuXtXQJGhc1OaknOcgURit54n0LFtEt9BHh4m
 PLms9g4BJbcBgqkkkqxFD4Dg+h0zbMKRRHI+k/2Y9wNxX7U9OsYwTtJinUMgNyNHKIHDtIdVyo2
 CUBQAeg9Ms+1f8fHsSSD6NiYiJbNIeDwBkQSjeg5WXg2Y05qbrEc/AxcY6tKQhoAmeGac8G8W1k
 pzX3kGTBm2uD7dA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_021630_725719_57A64397 
X-CRM114-Status: GOOD (  14.02  )
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

The global regmap fields offsets currently get incremented with the base
address of the repeater. This issue doesn't get noticed unless the probe
defers or there are multiple repeaters on that platform. So instead of
incrementing the global ones, copy them for each instance of the
repeater.

Fixes: 4ba2e52718c0 ("phy: qualcomm: phy-qcom-eusb2-repeater: Use regmap_fields")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index a623f092b11f..5f5862a68b73 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -101,6 +101,7 @@ struct eusb2_repeater {
 	struct regmap_field *regs[F_NUM_FIELDS];
 	struct phy *phy;
 	struct regulator_bulk_data *vregs;
+	struct reg_field *regfields;
 	const struct eusb2_repeater_cfg *cfg;
 	enum phy_mode mode;
 };
@@ -140,8 +141,8 @@ static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 
 static int eusb2_repeater_init(struct phy *phy)
 {
-	struct reg_field *regfields = eusb2_repeater_tune_reg_fields;
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
+	struct reg_field *regfields = rptr->regfields;
 	struct device_node *np = rptr->dev->of_node;
 	u32 init_tbl[F_NUM_TUNE_FIELDS] = { 0 };
 	u8 override;
@@ -262,15 +263,21 @@ static int eusb2_repeater_probe(struct platform_device *pdev)
 	if (!regmap)
 		return -ENODEV;
 
+	rptr->regfields = devm_kmemdup(dev, eusb2_repeater_tune_reg_fields,
+				       sizeof(eusb2_repeater_tune_reg_fields),
+				       GFP_KERNEL);
+	if (!rptr->regfields)
+		return -ENOMEM;
+
 	ret = of_property_read_u32(np, "reg", &res);
 	if (ret < 0)
 		return ret;
 
 	for (i = 0; i < F_NUM_FIELDS; i++)
-		eusb2_repeater_tune_reg_fields[i].reg += res;
+		rptr->regfields[i].reg += res;
 
 	ret = devm_regmap_field_bulk_alloc(dev, regmap, rptr->regs,
-					   eusb2_repeater_tune_reg_fields,
+					   rptr->regfields,
 					   F_NUM_FIELDS);
 	if (ret)
 		return ret;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
