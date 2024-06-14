Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AD48C27C6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 10:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sY3vSWqgg3EGCSaeUrWSq1dtcwExW0y2P1uDnhXaY9Q=; b=yRMzEKqODlkUts
	Kx0GP0i2Wqm0/u/VTaVLN4KtBJMqU/ZDzj9pjQJVaGsSzAbtlhtoGKWPwHikpQPj0+dq7l2bAEpxl
	R5fZ/fKBIf/X5YuK4xxjxUNhSwAwuyetNszowe2h2NI3XbfDqqjGMDvhvxb2OunbOQDFexS6/souP
	5HY1+vCm+VnHSviUSLYKsM6QHLRcuFGWPR4aIeh9WX8LOzryteDXgd8rfybIAs8jcO5uuzOHtaJYh
	axgmJfxCwZ4LJCjZBcE0bj1+p9Ypcq6jGYXjAsSQ67ZEJ3T1oLMbNGgU79SeyN0zAHMGg/VSTl0UK
	9cMVIVBvhKVZiwWDJAOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI40z-00000002NkU-0oIx;
	Fri, 14 Jun 2024 10:18:37 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI40t-00000002Ngg-3OwR
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 10:18:33 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2ebed33cb65so21191441fa.2
        for <linux-phy@lists.infradead.org>; Fri, 14 Jun 2024 03:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718360310; x=1718965110; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z+ZwmUTp38M/O9EH9E3Ps/UD84j3Bczm9KWW6nl3TPg=;
        b=T1zJYBeBQW34wlYC2N08JKB0hBWM9D61KNDRxXJ5q+38aogQFjiPpnRkn2SwGmVGws
         OqBxZFDj7CGu3VUCL70aOa4qFW6M9amD7G1LC6daIhkFTk58Yp/aIb9tAiGQMhmt9qMW
         MjDN0nKeBjcjKYQyY7NF5+ovKCWSfQIBlrax2IYbq3+w7l/1REGS7PnMGZa1Xm9Zf0EH
         67l5kJEvsL491sLvMjHb9x6Eu8oRJmXyu6bO7OKXvvvOSpj9KeJmVBKZeoyhd+PYfwR6
         IRHIajAziI6J0jXStoNZmImwEz2Uvm2uBSNJc4hnveeW3t2m4ECobdBxyOqzjpU+Hk0b
         AQqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718360310; x=1718965110;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z+ZwmUTp38M/O9EH9E3Ps/UD84j3Bczm9KWW6nl3TPg=;
        b=Ocpi3+edBxeSmGRElnfrPJCWsTOjO7Mdo7u8fof9ErlBLWO5N0+9CVHyYvazM1aBbj
         Ghh6JI1dZam2WCzyU5kYXVfP6FDVNK5me0x41jpmseJYlc3J/sXwapKhBQSr2sDxvgw4
         VkERc3ZugD7hm1IfT4Ex/o58Ls5YNRvugxfJFIOenVTycjS1t6ygpTAm0z+vgX8e+F6p
         EuIdIFaIH4PKlPKQZMrE2znJmHR56KFrnyUj42Qc7aB2Pp/kgArJUTqcNWWSB6fyRD8G
         JLSkzcBZTDJhdJEL3BAJUnX/cTsiAs6x+F+zIbmsVa5ZiAyrk0xBAWFfbHIdpI/2Ulkv
         Bi8w==
X-Forwarded-Encrypted: i=1; AJvYcCU52gfdqGmmFcgNTYcB4QpVP8LbaIdAFFG2FMPHtlcwIXAWv1AtCTVAccVFAjbX/K9a6spMNsQE9ztC9UmjrjXdA1rNBeOXa17cPczlnA==
X-Gm-Message-State: AOJu0YwWWvwhOtEjrpL+ygJG5Mr5DIRNRXDbXSzRRcZyXOpg2Yqe0axO
	EBB7Kc/YbZ304TjahsH8u+YNrfKu1lr/9imzqRyDgbDKIx3FIJruwzIo3HhVObo=
X-Google-Smtp-Source: AGHT+IGf92dHtEW+22pt5cgtgehi6svFPvHQLSs6V182C2BFk+rW9n3xyhEyFztBIaQKHiKxf/4tsg==
X-Received: by 2002:a05:651c:f:b0:2eb:eb7c:ec1b with SMTP id 38308e7fff4ca-2ec0e47a16bmr15923151fa.25.1718360310379;
        Fri, 14 Jun 2024 03:18:30 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05bf44c4sm5000241fa.9.2024.06.14.03.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 03:18:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 14 Jun 2024 13:18:28 +0300
Subject: [PATCH v3 5/5] arm64: dts: qcom: sm8650: drop second clock name
 from clock-output-names
MIME-Version: 1.0
Message-Id: <20240614-fix-pcie-phy-compat-v3-5-730d1811acf4@linaro.org>
References: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
In-Reply-To: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1027;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=MZCf8mnQz2wY6O1+pqxmfIEqh1YUFg8IemwSFRmNpok=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmbBjx9D/ZLq3okDwoSrCY49/FyPtyz1zzx62I/
 J9UpKckPHqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmwY8QAKCRCLPIo+Aiko
 1ZhgB/9UcCMK3aQN+aFhTEGhksL8qodU1DQd+Vxj31SGu75kWZsCXMpKVcpEzKpHAg03X7SYaFB
 gg63kAX5mf4iTMeVIWQfkarMBLqNwrm9QcCSVhgbRz5Zm1c2/DzQ5JtBC2ddVwipQ55LirNH/My
 iS7B2iNdhpbAd0/XEhcdfZagMnr18OMnUX+aiel7wKI6GMcWZNco0F7q95lFog1Sqfil2HyOe8G
 ZlKRlGa/8t+VpINtkx8MghuNqjxxCw21uTET0UL+gCpdeYP4t7fr56/OfUEG7QdhICkRsKTDNK+
 QSw9IRuiMMKeInJsmlO0S96hEjiQzBTCCzAmGwx6fzlgFrPA
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_031832_103581_4A279D49 
X-CRM114-Status: GOOD (  10.89  )
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

There is no need to specify exact name for the second (AUX) output
clock. It has never been used for the lookups based on the system
clock name. The driver generates it on its own, in order to remain
compatible with the older DT. Drop the clock name.

Fixes: d00b42f170df ("arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 5b8b1d581a13..5df2e00fdb5b 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2474,7 +2474,7 @@ pcie1_phy: phy@1c0e000 {
 			power-domains = <&gcc PCIE_1_PHY_GDSC>;
 
 			#clock-cells = <1>;
-			clock-output-names = "pcie1_pipe_clk", "pcie1_phy_aux_clk";
+			clock-output-names = "pcie1_pipe_clk";
 
 			#phy-cells = <0>;
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
