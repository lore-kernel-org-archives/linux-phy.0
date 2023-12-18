Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D4B2C46CCD
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PD6ij3khvuzBY+9Bh9WRb0OQcG55Zw95p+UD5FnKURA=; b=3Clia/NLdv70gv
	1RAFP9mu/uVnz0/0bzEJVnhX3rHhE735IrGp7GLJnBxdYBdA8cLnF08Ta/6WDjud7yLTHVUD9Q6Oz
	sNR/kbRbQesHXt5ONRXjN7xY0OiK6EX7YHdR+YX6QIAmknKT6SobstrqaP9G9Lmrf6o6GsNMtiaz2
	FRJkt0NfrkPj3PiXy6rG6ln7d5SXZxKrsW27pg0WBg/94fyqmgOHHYXFEkHMV7sicaURSo9JZyYqJ
	ln34HyLMUhcSflyh79GbJRh5U60ZyXNs0IOev2UoUmEecmhiBG2cjGdcdRY5wbEzWMxIZIjLmJpMk
	+JkR5YAKzN5YlLED3Prg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPz-00AYTm-2U;
	Mon, 18 Dec 2023 12:08:19 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCPw-00AYRA-0R
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:08:18 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1d3d0faf262so907925ad.3
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:08:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901293; x=1703506093; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9loaHfrne3H3i5jJvNSoB5V0DmyPKqbag1DqqG2m2L0=;
        b=yijqb5mAdp7OcPdXGU79/nanbvxkPKTSfZk1P+1xuOIZHnU0qO9nFXt/wB0vWV+RRv
         n7DfFl15xRKos64txqpRFLZB8zj+JRfpJZZObyzg8lW2KVZhupqBynv1017sTFT5rtkg
         qRj02Y5iyHshmQ25CiHupOZc3uST9xyYLsfm4igLVt0mfL2QUSed186MD4F9P/4g7ZAf
         XsOMnTtqfvvT2//l8M9xWKqpetgnF50r9aZSr7rWtc11LDBpLQfiaVyFP86o4Edn++/H
         89aI7L9dkvYo7BSqrXX4YOwPrWLooPDdxicBHooX7dbdqZJj35l5x1HhrdTHgTz31inn
         DJ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901293; x=1703506093;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9loaHfrne3H3i5jJvNSoB5V0DmyPKqbag1DqqG2m2L0=;
        b=xSv3clbBxBkxIfwGVX778bbz+11L48hxy6HKbAfgP+14hbZn406eR1k+oBGKESWPmX
         zQhHHdGlMpic2WCfqyrFhMGiwsblv91ZD9MS+Y18Up4WHnATJvZE3RdhTpv+qKq55i5S
         iCq6MLCQjSgfrNh7R2UebXZCr9Fime4cfL20AqDy0ICM1zGQBhVF1H4hiroPI7ObuhPD
         g5admqud3l9V4mEwiEexwJCXjafkt7I88H9BWw6+L37Omz8pN59LbyRkb9tzY5PA4X8D
         0K8KSuxE340/d+J+2XBdCPS42zJs3u2TnSddNFrNJTf0DURevB/dUdRTOuxf8AE3vWfA
         x8bA==
X-Gm-Message-State: AOJu0YxnO5ULZN3FcDauekDFesCmkZF2wulJQFb4gJGNyb67rgOl68Na
	xSeuW+qcZ2VnnOmaWF/QCnbb
X-Google-Smtp-Source: AGHT+IGaxr64tfg1aM5VCDEAL5s2XMkt87LjGgVw1oRinho5wP3KRT0+O3ZPy6QGZ/LPQE6WGGw8Pw==
X-Received: by 2002:a17:902:7846:b0:1d3:47ba:ba45 with SMTP id e6-20020a170902784600b001d347baba45mr8139066pln.136.1702901293170;
        Mon, 18 Dec 2023 04:08:13 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:08:12 -0800 (PST)
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
Subject: [PATCH v2 08/16] arm64: dts: qcom: sm6115: Fix UFS PHY clocks
Date: Mon, 18 Dec 2023 17:37:04 +0530
Message-Id: <20231218120712.16438-9-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040816_172181_61DD8958 
X-CRM114-Status: UNSURE (   8.29  )
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

QMP PHY used in SM6115 requires 3 clocks:

* ref - 19.2MHz reference clock from RPM
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: 97e563bf5ba1 ("arm64: dts: qcom: sm6115: Add basic soc dtsi")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 839c60351240..40394c412fdf 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1033,8 +1033,12 @@ ufs_mem_phy: phy@4807000 {
 			#size-cells = <2>;
 			ranges;
 
-			clocks = <&gcc GCC_UFS_CLKREF_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-			clock-names = "ref", "ref_aux";
+			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_CLKREF_CLK>;
+			clock-names = "ref",
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
