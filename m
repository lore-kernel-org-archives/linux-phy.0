Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FD30C35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BXy4TYRNXf9tYClNc6Bvn6gLp7Y4E8JAQfmj5ZcfQg=; b=YlSHpq3OiI058B
	TUnw1clkHDfbHA5L/JJmhxf22nFz469TV5SUdehcB5Ugmqz9fMUP1YWhvuW/rNKxm11/3OyPHXwb7
	o7eZBE5vCJkuw3Bw2DNME/pr+jptonntvEE1NJwRvv1p/pcYyEFxw/q8AjCml7U67NcqdsarepFgT
	wxpeAPaGJM6vHjqRPZoIJMgsz+CwTjCXRH3ra6b9TvNbf1fCqDidF48Kt5dRYRwXXjp2m5whFapF0
	GLMX9aPJeDEdB/8MzIuALImE0FaeYcKS03SncVXOsPMxa3hTTj8DeWipi6dvKgOWJxP8iu+CTpjXa
	Tiic3IAPIweDqXOohn5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCQ2-00AYUU-0R;
	Mon, 18 Dec 2023 12:08:22 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPz-00AYTY-2C
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:08:20 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1d3ab37d0d1so3474065ad.0
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:08:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901299; x=1703506099; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/R/hqTzd/o8JpkxBFS0sj0AJtadDOIWSQt92Ki/rlFQ=;
        b=zczxH6xMnupUdVmkx9ynJVKdGn2Th39StIbyiuIfsKlMTp46relBz8xa9ueBik/MEt
         hAkXd03xxRdcqQz8rWKdeq9N8ISp5szwE6deAoev3g8rY89gBczWYAVcYJvS02rK2s3n
         FDV0PaWOQL3CsUs9mrLdOxleRMg0BO8sJRAPN/FVIm0tW9QTZlZHYCnuqIjnCWDEmsgN
         EbO8z3REwx1wCwmqtcZAdHbnusj7ZL8gv4EOaV35pfoEECyy4IZdRR//rKZk4mAH6MEH
         Gge7gpyBUmQLKzGrOT8FcCj/KPTxIEWkWe9hxV+2YFQU8droWekhzQR0R2JqukCVZbVu
         LFgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901299; x=1703506099;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/R/hqTzd/o8JpkxBFS0sj0AJtadDOIWSQt92Ki/rlFQ=;
        b=Q0WmcrGQ8F94z/xGwqP2eC7fpvIULnTEd5gVS4d62ChoZnMBm9xrdwB718TLVJM7Hn
         IGa7wx9aHe4YUU4JKC9ULsIC5uGwkI6xPv0bcjVt6u4DQlexPwX+lOpYqQC+m7pbhe/U
         iP/tOOdSROFMeilN9hy68TrYrQ2i9MKGXx8i50TqnIXQjMUjbZxKwZ4d+Ou6kYowYDbx
         5KpQztEyTcJj72GdO5L7gjDr9JIw2HBR6FGSUhml/yhI4Ti9zW4RPJts5LmHO89FLqoO
         H4myIj3puQdQvlJU0sJ/WLu99ypAE8C2sUMgCbDZCgs3Fuz0avtZsBtmYRTamjkTBeLW
         hj7Q==
X-Gm-Message-State: AOJu0YycpF580OudJgXwWvqDT67ObZ+XbabQvVKOvmmHx13Alt0UrIg3
	kNUXZL6C6NG3PGjb0pZf3Lpq
X-Google-Smtp-Source: AGHT+IGkvDJKUZhvMT1zocpm838dWNiBdAdJ7LY+l+3dLPhpispjyloWmDVXqZesfg+UeMzUtuQUDQ==
X-Received: by 2002:a17:902:f690:b0:1d3:c3b7:50f5 with SMTP id l16-20020a170902f69000b001d3c3b750f5mr470070plg.87.1702901299155;
        Mon, 18 Dec 2023 04:08:19 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.08.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:08:18 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	quic_cang@quicinc.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 09/16] arm64: dts: qcom: sm6125: Fix UFS PHY clocks
Date: Mon, 18 Dec 2023 17:37:05 +0530
Message-Id: <20231218120712.16438-10-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040819_715373_28AB2542 
X-CRM114-Status: UNSURE (   8.26  )
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

QMP PHY used in SM6125 requires 3 clocks:

* ref - 19.2MHz reference clock from RPM
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: f8399e8a2f80 ("arm64: dts: qcom: sm6125: Add UFS nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index eb07eca3a48d..b46d3c1fa47a 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -812,10 +812,12 @@ ufs_mem_phy: phy@4807000 {
 			compatible = "qcom,sm6125-qmp-ufs-phy";
 			reg = <0x04807000 0xdb8>;
 
-			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
 			clock-names = "ref",
-				      "ref_aux";
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
