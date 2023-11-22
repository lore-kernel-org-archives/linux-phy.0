Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81781C61D9D
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N1X8KQ4WLf29QpYR+jFZ4X8TtbS2BhQzFY8l088ZNz0=; b=DVtOOaAS9/6aJK
	T03er7aGCUc/mDA+t3DWtgXjCA62K76MbF9RAXZL2YjO4IXgijCK4p+rtB55r+3nMDAcXS1AlxB9j
	kFoBOa5qHRItYxR9GWQ+xUwZy40U8Jtep2sYZs+oidkJ0JPSLgL671B9Frfd6bIZsuFfYO7UWvKlY
	Z9bPrbQFSa9Qtyaa6GBaGCoQMNRi9yOeVyv4Qf0+pgX1Gtd2yDc72baHC0cDmcE+ahISMxWu21uQQ
	czRPEvNNVcMlF2Ysqfu5s7RJ3LmkevUe5nm1US4H3RASxea3nw4+GEQFdtbEOQ4nv1pU5wMq5ysot
	uKJ9HErkBE+wbRoJgLGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kTC-001R0l-0p;
	Wed, 22 Nov 2023 10:28:34 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kT9-001Qza-25
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:28:32 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-548696eac92so5972122a12.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700648909; x=1701253709; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JWH+xw6Ri2lXNzhwQ91EPAGvbhscnciMIoUmHQSMYYs=;
        b=r/6SQItX07Jq5ZDHp0SXlPgeSCsFBKG8PRVYvoV+BM5MFEai67oln2V1MDMy8Uv8Yw
         AyBMYHsyF+UB6R4hxdraEE28hSifu+FUrGpmnK9ceH18HurZHDOqnbSGP6xzzDkeUrAM
         ivyhg0JFeLNJDfdzyJa8+DZ5F6AhN70jCQ2JpfrblQq+d5iD7Dvot02tPXMfrymI2tXm
         FUYDmqxmHbvINg+ud3k6yIaHrD0o1k9D9aHM+NsJa03bYV3o12YYXRF9LNjdT0JDrAuP
         s9i6ClGTuG5f9dB7Pkqtlwbh5/Eu9M1sMfGGrybB9hE9qPW/S8Nag5opu0uRJIxaZCbp
         4bbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700648909; x=1701253709;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JWH+xw6Ri2lXNzhwQ91EPAGvbhscnciMIoUmHQSMYYs=;
        b=C5cdSPdp9pgGxLqIreJ0xy5veLLGdCSigZ0E70Dfrmimbki70011HI57E+mhCmwyzs
         eVbGvN5hG2MvZhKxxl+090tP+GEIsPTl3iKs3Lt5LQH9zZuXAYB+q6Wx898p+U6XfLHx
         muKjRKW96DYKl1BV3sE/FNpc+mPayvzdVHD2Ht1DIvfvi6SvBGpvvxmadbf3xQUMTVV+
         mVpq1zk/PR1ngNccmwQiDXWagqc2JxLOR2TDicuD/rtU9yFkNkzzBBHBUus92V1yreYt
         RXhsNK8u0JcC0k0GDC1UnKsz6t7xW7LJDDUM9v2VUn/9JyQ2/QwgdwhZzMa4AxstPt82
         n3Hw==
X-Gm-Message-State: AOJu0YxG3HR/J7WGTgEs1AjhNdYXbWhYi7v1HUbFpZE/xn5qRI3jZFNZ
	GY7iNrv7l3KKKC2s6FNm4vV5IQ==
X-Google-Smtp-Source: AGHT+IGqj+udKcJ+gqUc7T8fkJZDu/mAiCS4vvgNHiWj2/7L1nhqXJPGSRpTQMFtjLOb2ZKS6Sx4rA==
X-Received: by 2002:a05:6402:1852:b0:543:90d4:6132 with SMTP id v18-20020a056402185200b0054390d46132mr1726792edy.16.1700648909461;
        Wed, 22 Nov 2023 02:28:29 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id e1-20020a50fb81000000b005488a15b25asm4325139edq.70.2023.11.22.02.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:28:29 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 22 Nov 2023 12:28:09 +0200
Subject: [PATCH 2/2] phy: qcom: snps-eusb2: Add X1E80100 Compatible
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-eusb2-x1e80100-v1-2-ce0991161847@linaro.org>
References: <20231122-phy-qualcomm-eusb2-x1e80100-v1-0-ce0991161847@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-eusb2-x1e80100-v1-0-ce0991161847@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=827; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=jm+fRdCM97qvSJ/DNyCq1Py3bpqFJWt3ZrKQWELIeOo=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXdfIb2bEkBXR1ClZrK/BTkkU8IutKbcP134NW
 kjh1AcyJ/WJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3XyAAKCRAbX0TJAJUV
 VgWoEACZsXQFgdhXdMVjiVJOq7IwA3TB6BoHs1yWOY70Oqnpf4mzOQQi3AQQAE0cY/g4lEPChBq
 rNq2Fh+Y0J7XfsFwlfBVaEWCPrTxrWSDdyt3ODy5pk5SR2WuIbp2RP2rHHQVfa8OFhLo/ILctJz
 QrmGxKAg70EaPXsymNploM/7UAmsW97+FL3Zg41pmr1gEiaJm6Ld5o3NgMytV45nmSMwJGRULGC
 hw5i1FaSB1/M+hgfTAHn5MeY+OREiGx4ypVePcpyKFyKFDDGpUy9WK7OD7JelOTmDLCJKl42Gdf
 SuNuQ5e3BoBNja0L+o6QDTvpLJz3RRaV2EGZcd72780r2meFOyqqizAJcxH0SimOnxdT+f7TrwE
 mpHmJvVoJMXLc02255w9w7yRaLDTcE0x9wousqpvA8kCK0cjXOdJqNmsMbfG190JZhIW9EkCqex
 Qr8yOZdcpZ2AORbXYmFgsw3meT0MrwUr4IcLWVMeXRmOuQbq4HgWC4IfPeq/HDDyUxuZxoosvTB
 yT+9Gt6aU4ZuE91CidK/jrxUYSzJMdzA2B3oBQI24P4g1vxfdnEO/3gCn1VV3mTgXQV48su2mAL
 qlUhw4lUqmYVmqOAq0fmh9O2C599qNbc5uDiCa8pcOFsjxR4uaiQm4wokU+zcUdUPA+sYgSO/r9
 TZIoYcHySSG4Eag==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_022831_687735_8401FA08 
X-CRM114-Status: UNSURE (   9.48  )
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

Add the X1E80100 to the list of supported PHYs for eUSB2
SNPS driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
index 1484691a41d5..6420f342dc85 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
@@ -425,6 +425,7 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
 
 static const struct of_device_id qcom_snps_eusb2_hsphy_of_match_table[] = {
 	{ .compatible = "qcom,sm8550-snps-eusb2-phy", },
+	{ .compatible = "qcom,x1e80100-snps-eusb2-phy", },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, qcom_snps_eusb2_hsphy_of_match_table);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
