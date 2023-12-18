Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8285DC35274
	for <linux-phy@archiver.kernel.org>; Mon, 18 Dec 2023 12:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TeNbtVpTzB03Q6/WhnCUvLO7dmWGLD8OlGmJtFp+GIs=; b=j15zvbOTN3tSmd
	gM1e0XD6cknOos8MG5IgW9Jt6h5Qkq799PElM4Y6ElqB6fWa8z5OMl/iS0TiR7E93oxYgsU9o0HVP
	bi+6++MlrirURdV8D5tawcJR6WgSc5un7IjTA5Ehs/eE2hIEUADHFm0y7X62uIrXYMB/a5N4f8BZC
	3vz0qbnlZboNfXvJ2ZU1eawCO3dlnjLu+CFxkX4BvTL7y5Rc+H9KEpbjthVN2EZKNAvvI+N0udM0y
	FAK6CiB1J655+zsMYi5Vjb5GFBscx8+7pPt/L6WSqtHNRl++PhO8HJpBFW2yn/ifODjf/xEi+9tpf
	PIBK1CtZawfzs/LacsrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCQ8-00AYWb-0q;
	Mon, 18 Dec 2023 12:08:28 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCQ5-00AYVk-29
	for linux-phy@lists.infradead.org;
	Mon, 18 Dec 2023 12:08:26 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1d39afa1eecso15674615ad.2
        for <linux-phy@lists.infradead.org>; Mon, 18 Dec 2023 04:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901305; x=1703506105; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h2DCBxer6HmgtNkGKJ5qBuor3JmQBFkVeksd4AY7uXs=;
        b=J4p04+T+Qfz1Vnc7xXXnFKQf/7aQUtRuRZU5zG3zb7MdkGUESItsz7AAvtAhOKCfmi
         VmSJSaun2fIe3WHlLmSpHtgjA78bRChv7loaKSdCR2IlmqULaJMlVLbEXhVFVlcRBrBf
         E1YhEdVzcZAKzCvRySvYQpbHxoaLxOf+jKpLMOJIzv/64BhIbiFt4IJmMkTO5qWmf/Uw
         kFTTo9BAI3HrSNDZzQKIvULQfny6IvVcJlGG6LUTjadHfIFKZj7dxppwkq53VWLfvsuD
         3Ow+eRmOuMhGVr3qUsyjXR3D6IrIgafejkj7doQQqxIGpm3jdxE7WbkyFX2spYfnHtm2
         V8qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901305; x=1703506105;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h2DCBxer6HmgtNkGKJ5qBuor3JmQBFkVeksd4AY7uXs=;
        b=h2jtUqqyVVr7X83km4JKwMZhLcDmOk2jyiqiSSjnBYK6X0uubgBuGOeJPG9YCNFOEG
         q5XEhDzsVAC7lGJd5deZdEiLBgwKdTBGlxljQtyS8bUw6osK/UUnZEfTXZZwmvCnRgEL
         oCIbE8my2kPLpxA0cahGaSUUb3jrww4+oOiESpG0zutKrmDxerSVbCRe2OA7PD/PJwHM
         jEJyJv6wnNMnXzA+Y/bgCsgY8u8XTVes2omYBqldHy1sZielpnNR7HOo99SDKl1+SXXN
         dsa1Dr4PGfS6T/bgk/EAguLA425IkMEhnvvgfJG0KJQomGIK/Pmpkt45SHt5G+sUks6f
         Opdw==
X-Gm-Message-State: AOJu0YzAMpUAR5WfUZwHKrINoxcfadylYbBk7zVgvnAbzBmqoJoBxnZy
	teijoxZd7gscv88fIHkU9hL/
X-Google-Smtp-Source: AGHT+IG/sSV0F3DjhxgA0eUfeqM6bud3z5a+Hp9pLUdJQxo2YI68XJottXg0G9ttIG4LWYgUbeE6cw==
X-Received: by 2002:a17:903:189:b0:1cf:d644:f3ad with SMTP id z9-20020a170903018900b001cfd644f3admr20702728plg.3.1702901305096;
        Mon, 18 Dec 2023 04:08:25 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.08.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:08:24 -0800 (PST)
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
Subject: [PATCH v2 10/16] arm64: dts: qcom: sm6350: Fix UFS PHY clocks
Date: Mon, 18 Dec 2023 17:37:06 +0530
Message-Id: <20231218120712.16438-11-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_040825_705606_17506E20 
X-CRM114-Status: UNSURE (   8.66  )
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

QMP PHY used in SM6350 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: 5a814af5fc22 ("arm64: dts: qcom: sm6350: Add UFS nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 8fd6f4d03490..ef793d48316d 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1192,10 +1192,12 @@ ufs_mem_phy: phy@1d87000 {
 			#size-cells = <2>;
 			ranges;
 
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
 			clock-names = "ref",
-				      "ref_aux";
-			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
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
