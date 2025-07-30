Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F20BC87FD2
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YUoCG17LIY6vIg1Ba3bQjmfxMUsT1lPrcTuh6M4Iz4M=; b=yZlRteVCTiPdu0
	Ld4aC7/wUjriBd+FAPKDbvHk81mneWDk6NCZ5mmuZZ6Fa65gzDqy8H7uYjQdSrSobxY0MZgRW9p+P
	9/f7CT3aAs9nzaRbyeCLTuuJZ5vnP30OdG8nDdg6hjmpUVfywGR4yGDFdYW5Iyl0QS4qKlzUmKOKS
	mZm9k67v+ZlfW6tpXtsmvFLiGBLtG8AsHB20H44tDlm70d9kox2JlG14YlkcUKkG0vKf+ZphQhiVG
	4H02ELQNHMhy/afggkNjCsx7M2OEwgdQcs+6Ugof0OTze636rjRLXZxX66ysinPLxpvQJV04Q6P86
	c+wW3rvvJYH7C23lXD1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5tT-00000001SsT-3zDy;
	Wed, 30 Jul 2025 12:26:51 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5H7-00000001Nis-11pq
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 11:47:14 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-45555e3317aso30937205e9.3
        for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 04:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753876032; x=1754480832; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4kkYNO2zotv63kU8jp/OPqMKQUNskP7pSGb6GnBgyQc=;
        b=ZUTFP9NAvfm1APBZ7PDdxzx/XFduedZBYVYSok7zYG8cJdYMSwix0zXq9zKXEON9E+
         WyH8AE4Ocpx6D6hbiI3TNjlrLOcvhhV4oKdzrqrJqPM4i9x1I2XFqO11+1pC4z6vfi7H
         4FqXwL/wIrDJS+MbF0hFH6zkEeWXNos8lT9souetWvhfd0P2IdzvqggrrgZtniSvsC5a
         JFIQxvteJyy6xnOEc7OT9XOKSJsR+ERuJFchk4+dP9uRIaQFCS4358OJ1ZIS6yc/8O9V
         Rp2Rbdm88vU9qqQJAhCjVvOpTyMAChUxaBdVka5y1Oil23QctXB/Y70uiCAOZrMNmA/d
         D5SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753876032; x=1754480832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4kkYNO2zotv63kU8jp/OPqMKQUNskP7pSGb6GnBgyQc=;
        b=WanF7lQ12E9MkGqgj9bRjp2IHLQmZdvxlDJXby6lgUnmt6VZ6dc+eoFmY2ixk3yDfJ
         vcbNbPUeFSgqz/P+HCJPa5hKjziMC9YHcfQDEBCEXPl0cDFKZIJeTrJdGU60uWXdXkVX
         LeL5HYyKZ1rVsRqLfbeXEtqS0hRFHhwgXGeVFlVQGhPetIoImwuzJsEHFUqlX9bBL4pt
         WqYmuVwoDTHAVgSExN9+ModIoelTR18d9IXNAT8VR5NSvZ8034aIGqmB1RBUkJScs/11
         OoDj2Xt5JOM8nZZPYO0l4V07rsFvG1SEXmC94vVhEjNBdfYrYtCqlRQTviEDISOYlA7B
         P8xg==
X-Forwarded-Encrypted: i=1; AJvYcCV4CuUhW2qL/znMFj2q46kVA7AvocTvnHl0QEZfbqHxhun+/m42o767AeOH2y5wilA7U0cVyj1LORw=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywh4Vj06YI+9umO7UfvSXywxS5ftAY3Nek+C+X5bUdyMISjK9Mn
	k4/c0//Cu6ZcQ+TcEXM4a02J7534zPqvlBFaRbt0XfogByEsYa4gICb1/aS2vY/M694=
X-Gm-Gg: ASbGncsvHIKZwXuhOyasieuhXWQG/L6MFuHWf4sjLJHpaW3/1kmqjaCnzumuVHDCD2i
	uUjThW5RSoQwg2uZTILU/fplAS3JnPQ5yplwN5mLH9EZoY14LlMwOe3dnDq92ZC2y/mg+LmJt/5
	IA04RLGm+LOYbWf/3ri93XiQGfyGPmcaAQvjEwt3AL+u7eFWXMCh5iFgeX6XeZCdDxEheAX5Jrq
	3ACIEOUg828wh57rbGBV+OjD87Y6NJ00eao8BiAvGBNngdqTkhQtV0hOR70ITUSFXqcB0ZrsM29
	Zc7uAEnrZwX6bM5HJ4zT/sjFphx7nOOCtUQsdFc0cy2vEaZ8iIKAPP39jp3g1gUqvOT+tyx7PLo
	2OWEXj4fx1BN2PgFHDm4L
X-Google-Smtp-Source: AGHT+IFhg9IXuQga3JWPvhcEKH0T1CESr1U+ubBYILDjsH+y0nI5opFSiCuxHFfoCrAfoGvhuNPruQ==
X-Received: by 2002:a05:600c:c4a3:b0:456:58e:3192 with SMTP id 5b1f17b1804b1-45892b9524fmr26009525e9.1.1753876031728;
        Wed, 30 Jul 2025 04:47:11 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458953eaeeesm24503235e9.25.2025.07.30.04.47.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 04:47:10 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 30 Jul 2025 14:46:50 +0300
Subject: [PATCH 3/3] arm64: dts: qcom: Add missing TCSR refclk to the eDP
 PHY
MIME-Version: 1.0
Message-Id: <20250730-phy-qcom-edp-add-missing-refclk-v1-3-6f78afeadbcf@linaro.org>
References: <20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org>
In-Reply-To: <20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1060; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=3+mFkiMttykY34ebovED8rFvS08Z4HkJkzkCJaTNiW8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBoigY2BfjLKn3//RyDBBmZMWRyKXpNADuYBBhWE
 4FHCRAmhvCJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaIoGNgAKCRAbX0TJAJUV
 VjprD/wKyetj6InZwSuz05kvMoar7tz0UqM68PxSBb4lV/KPGScU+OSvLovxXXs7z7x2qmWkJP5
 mRpIm/2/rqqLJbLGwBHIX5QaPrZ+2cn5NnI1D7feCHAuqP6CrrWJ6Tm1dw9E8qfgMzotkee7uYp
 GG2Sbb68hb8XS8fb+qO4ny8TukliRi9ZUDLB3kxlMBI92F8RJRBiwKMxyi55pumjceyB7wihYU4
 5MSTdVPZ/+FS4qxW4VkZJ2AhVF4qsdwIUdPGAt3QFrjWKDh+IPRYBkRu6/le4l7Oja5ZO6wAra3
 Sr1afqpoSxkssca6Dw+uSMU3qN5lH5lPivei//xYt59agSqfVrF+P57pwmZiDfjElt3JqqC7q4+
 1aR7BL3Izv+BuE8JtoBQbfHHvHqDJGNqWYqKbaW//TCch8GRg6COj6kk58EJoCrIwoDbo3JsCtL
 I+tgdKU/lOZDOsRfMRm1LlDme0Ve8TpyxVUIzBh31tytuAGkVOhkvRIwVvZymnYakVWTUckuAtN
 3WQYydC73WjFmImtLzV9t+15Q1as2g61mM/bEVk5oOcn8o32hn8AgZK4i5tS+tC113GCLDd02Dm
 NxV9ipsNplrokGrFESVmrXE2gc0h7WfIDS+a7htqOX1v9bSdsl1IsmxCAZXu9OVY/OXpztfSPco
 6lloQo7nmIgRXww==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_044713_285595_725033D7 
X-CRM114-Status: UNSURE (   9.38  )
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

The eDP PHY on X1E80100 needs the refclk which is provided
by the TCSR CC. So add it to the PHY.

Cc: stable@vger.kernel.org # v6.9
Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 5e9a8fa3cf96468b12775f91192cbd779d5ce946..6cc0c85191fdd0563e62e08d50590d546387b827 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5655,9 +5655,11 @@ mdss_dp3_phy: phy@aec5a00 {
 			      <0 0x0aec5000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "refclk";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
