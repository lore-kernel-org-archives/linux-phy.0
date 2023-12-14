Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94C2EC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TeNbtVpTzB03Q6/WhnCUvLO7dmWGLD8OlGmJtFp+GIs=; b=rat8AusAOu6Cth
	efGPzeggTdb/v/a/B02xjPQ9AAwtHPtYVCrkm0mf/H0bPdMQTk+I3LFIsllN6cqyTtH/XbguQcs/f
	W6cWZOYQbCLI4ZDD/XrSnCKl9fUoLe8X2pwq10JKiYyJQAa8sBQyIVLsSb1+eD5K6+4EndLX2vBwd
	u/uCDVOFVamGKkue32/KptXj/qt11IgygNu1xzEI0geXsRRvsuFbxrXnpMQgBOJ0TAjmOAJ7ilKOi
	vC/bpiQUuAgX1u82RWu/E6MqWPayjyGgr7QD5DbsxCygM/jJtfH/Cu11zatzehwHbDcKjiwqOLy0T
	vCiSTCnU7Tt9bzDVtrcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhlW-00HJjV-17;
	Thu, 14 Dec 2023 09:12:22 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhlU-00HJiI-05
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:12:21 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-77f380d8f6aso461288085a.2
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545136; x=1703149936; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h2DCBxer6HmgtNkGKJ5qBuor3JmQBFkVeksd4AY7uXs=;
        b=V8QzS1XTnEqUsJO54oNxiTjoVDhcuNrS4R1Buw4F1PYuCyKk+fIP9IdB0d8Cb5YiHl
         cvX84oBk+YoyUZHYbEDwJ7u2NCHdXybpa0dTsCCgsuJu9fMs56ECDqlNayghnJvq1Vu4
         SUllG4HVjy7PlJiKq3zs76A5hxJq4v9u0i3Wje2AgI+0ZNqK6ZkFvH/hmOHUYbXvejNO
         g3LqPH6VyoTdBMxzPUI8HEggEPZJKjrfNN6PlXFVEF/cDzuSl695h8Cpe4UyZfUQPbfh
         aTs0m9Jf+ef9eSYUrok1makFQ5fli7oMtUc/80VNYTTCLxNgZlWoXHWusmgoNoUa9tj6
         1E6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545136; x=1703149936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h2DCBxer6HmgtNkGKJ5qBuor3JmQBFkVeksd4AY7uXs=;
        b=jbX31HVY9qm1zzCic/aYsYCvuWkDUaw0S6IjauZ0qbd8Z/V4AVHsLl0v4aNpsjLLDS
         TZ/a0VCMBrYZj1kyYyD0TlvMeBiCLYl48VeeTXY+HXH/tgEXvFDMB/49cBuVab/sx1Ib
         xiZvON0tsuKLI4mZaWp9KCfR5X6rseTpwCfCaRLtLf0/WDzq1PpepNBGvOLoa0jpQco9
         Id5nxtHvCm+VT5lvFl30QL00ZbBmfrswTE4wvdyR3rKIKImz8aVSaUOmmCrv1pt2Ez13
         OJz0jXb1hI4dFxvdKDGgOtUJIVnQ+46AnQSXEfpFOJJFhKqIWksasteTMSp18+KfRV6H
         bBvA==
X-Gm-Message-State: AOJu0Ywwz6VYr+HNK2qYFF1310ODiGzGI5YrBupqNTK9jQqPx1iT/1IX
	9C9O9EvEwfpJaMb844FgykIf
X-Google-Smtp-Source: AGHT+IFeqUZblWasaHyv4TNb43kurEEqUO9LouxNXSij17ija+k+4i+/EtljJ8EFj0dMBIAuZum45g==
X-Received: by 2002:a05:620a:6109:b0:77f:983d:9606 with SMTP id oq9-20020a05620a610900b0077f983d9606mr1935569qkn.98.1702545136695;
        Thu, 14 Dec 2023 01:12:16 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.12.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:12:16 -0800 (PST)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 10/16] arm64: dts: qcom: sm6350: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:55 +0530
Message-Id: <20231214091101.45713-11-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011220_067027_13866B13 
X-CRM114-Status: UNSURE (   8.82  )
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
