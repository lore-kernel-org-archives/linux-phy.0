Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ABF9C35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tP/nZqfnCMhBDjckqV7U6VlnELeZN8+Fhv6BujXXj0=; b=j+JiS/xqfIVPKq
	8lq58RdcOS7iPSF9liQ0OqyKuoLo31eAeR/SSx9P2wKXiMxp8yQNdA6T2OeJgkziVp8eZ12f6cCpl
	ZA4r2280EZehatimmx9iErPdGn/xm042wWjwCQaIPNtjyX9e3BHtZv+coqxq+RxMHYCPoI6eiGB0k
	7Kndc4/NfAEH3UJ8eetZoYQyjUWYYetLzrNf7aSrstG29uqud5qT4BKUU/VqQm6WncnSx/nKLlEul
	gSOIl1NGZ1uC3hlmZdNck10+LRbC5XoaVG0b+BfJxudwpIpjnfWg4OhISgBlXUFAquD8kTvwnfKgF
	7Z1UrAMM9r7nxFcy0gWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCQi-00AYkU-0N;
	Mon, 18 Dec 2023 12:09:04 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCQe-00AYjN-2s
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:09:02 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1d3aa0321b5so11010135ad.2
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901340; x=1703506140; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=90h9raFSlwYqtZtEwRi3utD1Y8btrpvvb6rt2ijbFWY=;
        b=tybZ9flqssw4RI9y8kPyfgiTyoXXliafPwV+CVDO4m8aM/06cw9fTk2aHuiaoxEDCz
         q8ZjTn08AVEh1sZZ4SpmEuzSPHF6TyWgtRgS/cYkH6RLS2NuVtobZDH+gBNuBjL4ixkU
         SGma2nxHjPVxIZndgewitHzKvD/PL3F5Vz/gsPxjK8uK9eLjFHkHMXZRiSw3jOsxLA5b
         babXqXrNmQqyPeeZ7VySIxZq2lNwNI6rNgMsX0L/qjFfLnunR8HspAIaRt/9fwRJjeyy
         NTTMRwAbap+66dpJVcDatltRi3hbIHC9vzUpoGaUp5haXdc5anPRzF3+SEC/qbo3mYHP
         mg0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901340; x=1703506140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=90h9raFSlwYqtZtEwRi3utD1Y8btrpvvb6rt2ijbFWY=;
        b=jcmgPBqAcYI5ckZxi7pSi5tqx4awWGIQ79W4Emst9zPklS1aZyLtJ5OrXh7K8PW2u/
         7j9CxxBHq/A8PhRp7y4cD5GuDfqOeF2GIwIrpKRa7mPfXSES9bnzqmrBnhrdQ4pwf7sR
         l01xXXBB49DsMMXDvSOzTcI8tp3BFDNLpJhgeSo+XUglBqvjGKyPmDRAEE9LAcEjPm5z
         Au6dS2RmpyMcBFhyIjhtQOtkktxqiT/YwHeBownYtpCoKQsyoCxZ176j/ndeVOYLIn4l
         JCmVA6OzBLdKQ+w2i8iAiHB2KhzuM9m9w/YX6zMJXeXmnN49x8h94Kr9a4688v1naixE
         08ZA==
X-Gm-Message-State: AOJu0YzCDDbdV9tbLT4+VHNyzKylc6ama6snTxR5rgVXZ1c9e/CxkFQv
	jmyjhAdR4IoHCld4ouYFRLZE
X-Google-Smtp-Source: AGHT+IH6YQIoz7g6eSuI6OBkFycERp/zo6TTsmB3JpzQ5Mkr+OSBAEVaXvjIhrOv9oP9NCPayYUGgA==
X-Received: by 2002:a17:903:2292:b0:1d0:92a0:4929 with SMTP id b18-20020a170903229200b001d092a04929mr21153502plh.85.1702901340343;
        Mon, 18 Dec 2023 04:09:00 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.08.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:09:00 -0800 (PST)
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
Subject: [PATCH v2 16/16] arm64: dts: qcom: sm8550: Fix UFS PHY clocks
Date: Mon, 18 Dec 2023 17:37:12 +0530
Message-Id: <20231218120712.16438-17-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040900_930594_A938765D 
X-CRM114-Status: UNSURE (   8.40  )
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

QMP PHY used in SM8550 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from TCSR

Fixes: 35cf1aaab169 ("arm64: dts: qcom: sm8550: Add UFS host controller and phy nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index baa8540868a4..386ffd0d72c4 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1891,9 +1891,12 @@ crypto: crypto@1dfa000 {
 		ufs_mem_phy: phy@1d80000 {
 			compatible = "qcom,sm8550-qmp-ufs-phy";
 			reg = <0x0 0x01d80000 0x0 0x2000>;
-			clocks = <&tcsr TCSR_UFS_CLKREF_EN>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-			clock-names = "ref", "ref_aux";
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&tcsr TCSR_UFS_CLKREF_EN>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			power-domains = <&gcc UFS_MEM_PHY_GDSC>;
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
