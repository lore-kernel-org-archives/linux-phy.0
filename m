Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB4F4C5475B
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 19:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W79CFB1Up5UyX8JDoyqfqCK7y9qRQq0Qenq0R3xmAh0=; b=IGcAHDhNnpVdyy
	hrBmXw9L7MfMs2C1cCIFreSGgZu+o6YMef7c/LMddqYdE3sZaC4X8eYb2CvhgUdpRNXrwNt87e1pK
	HcdsN9lSdBiW/LgQLqv1IJOvgXfks3Owsf5AF7bfP1r5+kmwd0TMHIU7EDyBSgxrknB1TrNczgA84
	TV0RZzY4EeDglNFwoITAXpYmKTSXMlSQRLtdGQbgCvigRW3yJnN1blkzZ2ZLvXXDqerPJZp1zWCPn
	d9aIfw1NX4RgsMiDe9UXYOpOpmLL6sc0vaEZyBYtiWF10BJQlhUvMXiZB333TsTWmRjAcyONgitj2
	SWvKlDh9O7Wxpz+P72VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcW0O-0000000Fz9H-1i6b;
	Tue, 20 Feb 2024 19:42:16 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcW0L-0000000Fz88-1ayq
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 19:42:14 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-564a53b8133so2614236a12.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 11:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708458131; x=1709062931; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cefndWnWlnkZu0zNS4lBmKWOmQgRBYbwHHR9OgxN/iM=;
        b=dyxTfAMmk7okGMdulhDFNhrqSYgjjanGTyB+CAjBV4I7t9dhmmXciA16GHPjpW3DgV
         SvHqv4QePEXQXPaBpbuePIuK0pGTYpkbQkFqf3T/FyuacCowADjo+LgIHVHMi0PMJUPq
         nEEXmXjcTjEjXGWZo5ZDjt5xIa/wacsayOHFoI4SGAlIlNZJi6ojYExxugaxzsDOZ/+8
         A61QXZYFMDX3Lt4ZnB+mkimWKhEmYk5pa0gWcqm9y5vXbNghFwZSVWR1AOwgwtsvn15X
         t43EFazvbFikYyvfo7nW8e2nJGlnOSKwKeKpWpsEKJkdy965NPdcbCVnmH8M8Ds9fsL0
         tTuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708458131; x=1709062931;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cefndWnWlnkZu0zNS4lBmKWOmQgRBYbwHHR9OgxN/iM=;
        b=IR5y84F7W8oUXkVjwGELEir1PUwbBoMia420GE2VvYOHkDiAKSQrTHKPoKzkVT66GS
         V082d9UR4kX4S9clYqrrqoZvm0U0gWwyC3B4gjTwLqMR8nWxrMFkbQfUHtO5uIwhQDfJ
         A5PXpxHKl7Mor0JKDqyATwFkDCGi8usFb15SKnOuMqqXpSCGdOkORjeJ7wZvFl5rhAKl
         V+1WD5vLbEP4oVxTx7SdE7Jhbi1x9YkwpsVYLITspei5eLplCBrCgvbOW71Tr3bLHmFz
         Br9WoKjUvFYDQiLBDE8uNCaeaIpgClmmSwTW5g/JwRTTk4XQ9jd9zhkJK5ZVKGiWXtIl
         SxPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQ4FX0nw62DNMLW4anNG5Z9Lg4WGTyOpnFfpaiEbK4XGluKXf1gR1cfpdrz+aIp6i1H8rZdgK6clShNolI2OB2+ljtagCDWwlNqfW6ag==
X-Gm-Message-State: AOJu0YwgKgzB1n/wr7oWh0vY5NQsjFMpq54cq4s016l2zRUtdgGysGUw
	9RCpm2RMLNwYBCdX5ue9KTHRaqG/2m3Q1TZiADktC7vwLkNNkaXX9a6PISrY0Jk=
X-Google-Smtp-Source: AGHT+IEtjwCmpovASOnB6ht4Cb9s8ZVZmZ23IvkA7IzyoWIKe2E8Gd17eQwWMGmW5yPmB3Ifhco4og==
X-Received: by 2002:a05:6402:1812:b0:564:aa72:78e1 with SMTP id g18-20020a056402181200b00564aa7278e1mr3009925edy.9.1708458131663;
        Tue, 20 Feb 2024 11:42:11 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id c1-20020a056402100100b0056486eaa669sm1906822edu.50.2024.02.20.11.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 11:42:11 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 20 Feb 2024 21:42:00 +0200
Subject: [PATCH v2 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Add support
 for SMB2360
MIME-Version: 1.0
Message-Id: <20240220-phy-qualcomm-eusb2-repeater-smb2360-v2-2-213338ca1d5f@linaro.org>
References: <20240220-phy-qualcomm-eusb2-repeater-smb2360-v2-0-213338ca1d5f@linaro.org>
In-Reply-To: <20240220-phy-qualcomm-eusb2-repeater-smb2360-v2-0-213338ca1d5f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1847; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=yQBgEnrWranhXHywY9vHSFkYnjxSnFo7XQhXssWBUOQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl1QCOsvpeA12TseJU8wVK6azL/7odjn1y+z4pT
 hELsVlbi/GJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZdUAjgAKCRAbX0TJAJUV
 VuTJD/40UpHjsGTXtRxxlIRAU8T5L1PPlX6WdB5ROP8vudqC5CxUzRmQYXquNv1WAYcjt4lepgB
 MNAsAvmyzZ568/HeFBxszkWIZfHvF/um6yHxJVlh5hqsGH5Tx7JxpevML/WRe3VV6+g1j5Ht61D
 LvR2D2AA/aCuvYWri8iYN8FZJTEyyb+/kyYHhyjZfntShlLL5lkspnlRTG12LYbvdJ7rG9WE8rp
 HSy3uWvpR/iLAhxdErvUKUv2aiSqHp2TFABI/mYgZ1lKoD6WY8NolxNEiqrWQezJ7g5aj+cRUoD
 RiluT8lbRHMgf+8rrLX16DhfmKgLRTd465f9LxSge0zog1Lapt8RULuDSDYbRKVPJEONcHxzeIE
 SSPd77bxXYxjzJcB1SwiIX6bZ9XOmLPJ33r3KhzTNvCrkiZ684uT2wLRNI70olqnBE1vNl70AI3
 0Bg4ENF0XyzKbtF4RhinoDaGh9ttP4tSgZByp3gZBotHVqJJRM8Ka8AHu8l434s0Uk7ggYJuF8C
 9QFl+6CMN3R8SmnrvDJefbfXnnHj8tySYDJMR3B3XjUut8dRHlZAsPP9kwH8G2cerbrz5HXh7lY
 7TeyQNCrHiBm+d62DUy39YDVkaxQm9auYx5/+5eM3nTMXTPCyvODgmrwbhlh2p9GbcxkavHseG+
 FcBCArxwb8ESl/Q==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_114213_471874_5E4880F0 
X-CRM114-Status: UNSURE (   9.92  )
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

The SMB2360 PMICs contain the same repeater as the PM8550B, but requiring
different settings, so add dedicated compatible for SMB2360.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index a43e20abb10d..68cc8e24f383 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -88,6 +88,12 @@ static const u32 pm8550b_init_tbl[NUM_TUNE_FIELDS] = {
 	[TUNE_USB2_PREEM] = 0x5,
 };
 
+static const u32 smb2360_init_tbl[NUM_TUNE_FIELDS] = {
+	[TUNE_IUSB2] = 0x5,
+	[TUNE_SQUELCH_U] = 0x3,
+	[TUNE_USB2_PREEM] = 0x2,
+};
+
 static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
 	.init_tbl	= pm8550b_init_tbl,
 	.init_tbl_num	= ARRAY_SIZE(pm8550b_init_tbl),
@@ -95,6 +101,13 @@ static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
 	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
 };
 
+static const struct eusb2_repeater_cfg smb2360_eusb2_cfg = {
+	.init_tbl	= smb2360_init_tbl,
+	.init_tbl_num	= ARRAY_SIZE(smb2360_init_tbl),
+	.vreg_list	= pm8550b_vreg_l,
+	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
+};
+
 static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 {
 	int num = rptr->cfg->num_vregs;
@@ -271,6 +284,10 @@ static const struct of_device_id eusb2_repeater_of_match_table[] = {
 		.compatible = "qcom,pm8550b-eusb2-repeater",
 		.data = &pm8550b_eusb2_cfg,
 	},
+	{
+		.compatible = "qcom,smb2360-eusb2-repeater",
+		.data = &smb2360_eusb2_cfg,
+	},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, eusb2_repeater_of_match_table);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
