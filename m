Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F38C6CCF9EB
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 13:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSkSHIJ4X6NEXPK998Gl0J7GiEz8JjEPmnTqCwDAhjE=; b=SWrTxgGJvQEQVd
	uRiX6ATv8HiU+/74gZp9MDxEx83o/23p1FNzwqK59IEdVM6456sXICpW4p5zEkBuMDxxrQYJhbMsh
	X5cP6QYFji3jNIezrmtRYCBBZ9JtDZHnQ0jf415djlXj5C3RxHwXt8a0143q587MEGFup+3uwV7+d
	oFVHnNOzHSJ7B0GOs4Pa9FgEAcsaoojUk+qxILYldKk3gzY+NhZq/IyTiNbaJ9yIvIFL8Q4Ldo/8t
	lZO/UYo7HGYwxmdYPuX+6yjIbZ4eFq31SavVu0YRylpAgrsangIYy6B+Yq/LNkd+3K8ljIfT8tqHW
	EGDbGfbumRPEo6X637Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE6HN-00000001NRQ-3BYs;
	Wed, 29 Oct 2025 13:31:57 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE6HL-00000001NOv-0THV
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 13:31:56 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4711810948aso54723755e9.2
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 06:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761744713; x=1762349513; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kxFx9AVopbicqvEHjs4lmh9jOTKVKMn3jkGcEi+fwfw=;
        b=FXNT5AmnfEOVmAjGaOKtr/aZ0v0T6KOExaqrGPFzL4gWbi+C5kSQgn3rITzHNCBS78
         kHozXSfp23vTqQ9dNRaPZRzKllRz26cYaIxmyRG6e7T4E8BXuhoD2P6aV86zWxHJAw5+
         z0gyyf5uNAo2EuboeYrCTyFpnMnPLng7ey/6awLJ5maI43PGaVabclXr1bYao+H4aCEo
         stEJftUfgHtdaG/zC/Dp1DqshWc5mRoLzAS7TNF09gRYJb26gVeHagyU0y9Fdg4eHBrx
         Rc+fuQGFudQQ5M/FtHHPvSz1hQ42j23uVvAvKb3oo3c4OJtDTptMNyDnb06WhHOIgM3d
         hlPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761744713; x=1762349513;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kxFx9AVopbicqvEHjs4lmh9jOTKVKMn3jkGcEi+fwfw=;
        b=ZZOfhkbTj6oCVX64Luup038mQu27Dri45YCGQcGEuT3GdWSHKrddhXEkErDb3B6Wjb
         AD9ZcruQf3psiobDXNy0ZW8rw9H4+VcBmbMbnyKHImz/gUlmb1J18+0zXYjBP0B21feG
         PYe4LNbpwigycs8KgkNJZ7am+0WB6uuxE8rn4ZrNEpSP+crZN9osqWIfIKWoZqHLZz10
         m/pyc00Jxo1hpiN6Ja3iDCYW1sXARWB+3vnxMWqxVI0zlsiP4bq8XNUdqYUGoLcxq5Nt
         lPxwCjoJgt0qaqe6kqCc8HzFXB4/kMnTBRwkVz9l7WV1i577xSXOXwJyOTlY/FKiZQN7
         ZmkA==
X-Forwarded-Encrypted: i=1; AJvYcCXdbxmaSEEi38mPWOaK2eb0NO21j3/NoR2L2KAaRA0LZLpUxxEb/9EeUhF8HapbYwWWp6x6I6FnEjE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyh8STAcLuzWRxqhADFFNRDxhBSAmmtO4X/EY+Oi8Eh1jnlUO0M
	IIZxtsS9EG5pz3LQJ815300JybO/am1PNaaU6pilS5QuKyItUVXYv/rPD49+vcxmfn0=
X-Gm-Gg: ASbGncspN16gF/2AAXT4FY1IbHWVmJVjXTADxCjFFUij7+CNEnSps3s897AxQfLoqgR
	66DZ79MqZH4ryB1uqlG1zoxQW8LR00BSmFo609ucdKMvr7pJuJCQctO+ajBY548Wdfri8cOie6c
	Qyx8fzbFDD+dU+VNJnOh9HJLEaJDRBK88Nlmyvlfv1b0RELq5vc1DdZefn6CIRE1NsCUtr+wLqy
	e8nnE2M3bfIynatbrw7aW1vbYRLJnJdBoW+zByBGyQj17A8GAS14PGU+wz6Cysa7tnHTb8QME9Z
	acZCUuZXYgFoF3pMLcVX4Ef0iI3F7RMfLL/qhVlXgAUphOJDtqH5WBJ2qSeIFQHmmu7dmTxx+R1
	E7gnvc+MQKV7ZIxLwLyX6WCGMDccp8c2AhLa1ltyK28v2dBhfq5qxuiNtj9DO/8qc/xSyy5Xdbg
	==
X-Google-Smtp-Source: AGHT+IH0r1cHcYhclN+lddpFSTpYRQm37SvwBdJsO9ETQMGuuRIVJvR1BxyxAyy4GGcFpYwjtQMFpQ==
X-Received: by 2002:a05:600c:3509:b0:477:da4:364c with SMTP id 5b1f17b1804b1-4771e316d15mr29213535e9.4.1761744712875;
        Wed, 29 Oct 2025 06:31:52 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e3b7cb9sm58273015e9.15.2025.10.29.06.31.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 06:31:51 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 29 Oct 2025 15:31:32 +0200
Subject: [PATCH v4 3/3] arm64: dts: qcom: x1e80100: Add missing TCSR ref
 clock to the DP PHYs
MIME-Version: 1.0
Message-Id: <20251029-phy-qcom-edp-add-missing-refclk-v4-3-adb7f5c54fe4@linaro.org>
References: <20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org>
In-Reply-To: <20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1834; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=KPHt1suJLdA9xJbwn2KTdFAVkwcQfxRACwyO17/eejI=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpAhc78Huk1DUxx69JKQSG5U4czu0+QGuk2fxft
 ec98SugJk2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaQIXOwAKCRAbX0TJAJUV
 Vm/+D/9CM974LmK6eWlkBPTFJajwpYn6wuv7c739h4bugBgRVu0GzJ30jM6vHpkuKcg3VwGflxw
 qDNk31xmb15SwWqmZc+iFO5SRgKTbq25gECsaHWDJ8ErmxvR/NNKL5WkLE2XkgfLGqr2xsSijob
 NFsToK94sSWO+86qgY8VTmvOwV0R5Uxm29EZG/4cBOPKleO0jmIh9HAlXfoPKI0w5S4x2zSoStm
 OTTFCp+sMFVYoZwdYq35GCiVom/y14FwUregArwG+Sq63JRy7r8xiWTg8XiKi7JmAcKfERiIA0e
 P7jpf6jT3sOjVMjv2J7Z8/nYAMdqUg1zq9eJlTGGlKnE1pPvz3PDvVBwscjJh6OhY1umkI7nwaP
 xnTGCAJZ7V20qXf1kuccr/gNkRpJk/5xm5+ZywkYuMW3h/J1qlOUNx0bAZfa6AZfVI8AdyxOjlP
 kNzjhzlIvZFKSH26uKHmoTcwYp2MKqkpHHq3/eQIrqpjb2tpgKU2slJJFfdu4FYNarVrVRXq/ad
 7xTkEJfPUt5NGMAZmX2dqg1lm8tDg3KxRuYipdxii7RfY+OKcjYAcPpxYIrf/MmsDZ9vusThXJH
 oo/0C+OQ65NUi38EqEnlPl1IXa9FSZ5GLSrilhN+83R5Zm/GPN75Xn7lPsiDUaU22mOmwhJ2oga
 0k7P0GxytieUtEg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_063155_183935_1EC0FA55 
X-CRM114-Status: GOOD (  11.77  )
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

The DP PHYs on X1E80100 need the ref clock which is provided by the
TCSR CC.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So lets attach it to each of the DP PHYs in order to do that.

Cc: stable@vger.kernel.org # v6.9
Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index a17900eacb20396a9792efcfcd6ce6dd877435d1..59603616a3c229c69467c41e6043c63daa62b46b 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -5896,9 +5896,11 @@ mdss_dp2_phy: phy@aec2a00 {
 			      <0 0x0aec2000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 
@@ -5916,9 +5918,11 @@ mdss_dp3_phy: phy@aec5a00 {
 			      <0 0x0aec5000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
