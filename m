Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D504DC47079
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jan 2024 14:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jc2P2kxOVny3ql1iz3IDCTVKE5j3bVb17GxtJfwsggk=; b=iO1oXbMKhte5HE
	9cfrsmQ3pQLRnWkM6PfDFzQK9iE3z4WPKiJ+Q1ihgYprXLbmZTIFqnKz9+3ayAWc6DW9/k5ZPF4Ar
	/PA85NVqcaqKrUtXo1uiV9T7zDsmIkNI171oW1HW8fmN0bF7FhmAxNb94I7ZhT5+Mtbh6owU41WN9
	SlBMI0kdLi2dy1uHRDG/DsRgVTTtvcePWyB5QyhvTdgttKEJw2o9zwgrn3JkGFNqFDE8yPDIfveDT
	7mkPi03/9czGY+OtKDoW+ou2+cpU5eBvtqgDrpu1BGM+vW0T77d3G9senfj1eaRYqFcqiYhCinpMI
	4+CylnBY9DkJ4vA0+H2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLP5L-00EOtv-1v;
	Thu, 04 Jan 2024 14:52:39 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLP5H-00EOs3-1f
	for linux-phy@lists.infradead.org;
	Thu, 04 Jan 2024 14:52:36 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50e7c6f0487so585135e87.3
        for <linux-phy@lists.infradead.org>; Thu, 04 Jan 2024 06:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704379948; x=1704984748; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0Pny2BSPukPAhGXigrPkfA0Ifies1v/dCldSs0QzD7E=;
        b=mFitBdlaZiodM3YsnkumLMUYLtv7G2eV8Ad6ZqKEbAgtKkD5h+bd6inY78bQQXwNhL
         C8etU6SmFLCpjDwX4tdqA+LEkcekt9H/Y5YfpFRDPx9CCxNXzaznMF9/fQAvRyuEo/VX
         sVIKvr+kv8ADCTlwMMXKT+t5KLM9npabpHeLEZuDtyjUPpHN/9aBcNaKQsDum8Olownt
         r8IFsvFCR6NSltaGKAAyfFXPLVM7TG9pBmQ+X90iqH+LWr64wBN3BbmXdPqf3pUq3ax3
         /Lj7XsK325K27IfJ0581H1FzYNlQGBGQvbtEPiTwb+2pdL1taK4ulfEwKEiEtApKcRSz
         7T0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704379948; x=1704984748;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Pny2BSPukPAhGXigrPkfA0Ifies1v/dCldSs0QzD7E=;
        b=bvG80IXEo+p5IgtJJ53IQXlYR+WZ9VDtWoQugOcgqx6pjuGl+KCleEnOn4qC6IB3Q8
         bYIMKmGNNN8JrLAkTD9t1vLkeFSPMg4QOflCYFCbHYQgZ7SMC/64KBVW7pGfhNs1wX7Y
         ZGeebQCfKPcowtcw8xVT9e8HSxuw0vSrdDX9oRz9sfo5A08sR3HsPrc7un3jGfVhf2G2
         YvDMDvhq8grUAqlo/4KLGz6WXUKPMgtZDsh5/06yVMx1BuoUzbuy5kfLVeZp+s3chVBj
         IMNe10CBNoEU1NE40TmNNjDLnBUamE8Tn7CMRMyvoIaHQrxT5eEBODZ3J1LzgGlTSuxc
         yuBw==
X-Gm-Message-State: AOJu0YzqH4Xg0xE282ifujcE9/s9uHDXt8kb0Js4vCu0dcoGy0Bubbc7
	nrPvWYKoehhI6keN4xpW7lxX6Fr41FPrspzVUxZP0xeFnPM=
X-Google-Smtp-Source: AGHT+IE4LZWjBT5Z/puJV/oZPwrany2VzsqiWwCpLplthDr8O07eEdSVga0vwXHDRi/sQPI1vh9NaA==
X-Received: by 2002:a05:6512:31c8:b0:50e:3d3b:93fa with SMTP id j8-20020a05651231c800b0050e3d3b93famr326971lfe.12.1704379948432;
        Thu, 04 Jan 2024 06:52:28 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id k24-20020a056402049800b00555e52fed52sm7970592edv.91.2024.01.04.06.52.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jan 2024 06:52:28 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 04 Jan 2024 16:52:11 +0200
Subject: [PATCH 1/2] phy: qualcomm: eusb2-repeater: Fix the regfields for
 multiple instances
MIME-Version: 1.0
Message-Id: <20240104-phy-qcom-eusb2-repeater-fixes-v1-1-047b7b6b8333@linaro.org>
References: <20240104-phy-qcom-eusb2-repeater-fixes-v1-0-047b7b6b8333@linaro.org>
In-Reply-To: <20240104-phy-qcom-eusb2-repeater-fixes-v1-0-047b7b6b8333@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2217; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=GBupTnz16tRW20CMsCR0zbSfZA0/1o+u+nwhSpb/+hg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBllsYnkiZEJ2ippfJ4YOmJHOtwfvnPW4tdNoU63
 9GcXv2t91mJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZZbGJwAKCRAbX0TJAJUV
 VuqaD/9GVe1aAodgsSe7hiRo3X1qEr2g4Aeq/yTsLR3B39oPuRDl3pt654Y3Pg8R7VoZY26NLNE
 BcxraqReoegqo8rhI00yrd0REuYL+cu3T6341Q4pQKmVLZxhH9+V0ZUvE3eImTwOYKho2ruB7AE
 uye/FilmWm9RbsA3EAiJWuQk9AvmoBiieS05lt2obl1N52TsqQDD6yQeOQRGGgGdD010R9I1iDV
 ZrBLLBA6JJJJuRQoFNW9a9PSriB+qNHpTxkKqhBCYjcFT66fq8XWFzbB8U7o3IIAJ6IExZ5mRrH
 nu1eg9mpQa6IVjynBnlLqY6Kd8K8HQ8bE46Yr4f5iifehM/ymdyJosX/LLbSFSsw0c92GBRch4Y
 YQTg8GeSt6bNCRBwL5NfroooDri7DzNo9IvJMFBNvlDsvb1UcGC/3wTQtRiaPSy2c/RnK2+Kgnl
 IN8TxKZ9YPZku0ZlK32PmRlDBLhPOXEy2b5qdbFphU5o18pSYPwPnk1/YYTHeCXwE4E0hpUpuh8
 sWtjlO0MexqQGvuoYTPCSgZRcCC4TiSwBXBoq5gGQMlIBMsRi1rCJ75S4xFd8WfJlUyhvLOXV4R
 hkBfhlhWWol93KmOKT9jceVxk+M1ampz28t/gkZNS8ArnOP2j63+Q67xnLpwODXI4gEGKxotZg/
 shOi5CRLWVWDUWg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_065235_557881_A3E296BA 
X-CRM114-Status: GOOD (  13.92  )
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
