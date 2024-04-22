Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1878DC4345F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 16:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=529FRvh3qqy+lzTlcSihPnRBI2WTJVJ2jRFIiYFOqt8=; b=HXITt/K3ZRaPQa
	1stkxF3d35pK3ozU4hjT4VsB09tooiUBgVBsvMcmeS1/MmErL9yCVsxdZuI24YlbhNbUsh1tHvwqQ
	sYeYG7qnlPGCH4XbPUgUJ9x3UAewMX037W/kRmJ85/o9/NPPCTMSmcKBWHNBuIkgc9yuFYQkwdu0m
	YE18paSGMhxCLx65bDe1HPNJ/T0BeYGrM9mXMq/dzNBCaI0UNMdL2N6DD3jCVZX4FpllYeScjMQzI
	mOtLMzmRRNs1BC4VnF2gAGHZd3DRND4CMQa6KPqycBcbrcELHoai8uO4Pvljo0qnysEKZVq7hiLmZ
	yotVcUoP8pFFbvwJ9zMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywLE-0000000EFmj-3IRq;
	Mon, 22 Apr 2024 16:16:28 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywLC-0000000EFkZ-09C4
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 16:16:27 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-41a0979b999so11362465e9.0
        for <linux-phy@lists.infradead.org>; Mon, 22 Apr 2024 09:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713802584; x=1714407384; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LbaftYc/ei4oHUBSrTKOEB6H45OgBK8ia0PvwI9H3VM=;
        b=IjI9mEW2YDTaohshQviI+oECP5BZ+NMl3GKbwO+TeOgfOyz7y7XYocJ2hyU0FBNiaU
         uC7SOrLcPN6ZT0CKq0SRv+LdHOfVu58H2gBHYvOocAKosElXLvpHRnC/0S5nP3a7fBTg
         yLWklE3v7rp3fAnAxMB3DCDxGbOcFQviIpBIcfvDVIOnUAJSzFmYu5UPnQL+zh8Ai3iO
         Hybvwi/gcUfI5i3ykrDK7xhBQsXcQc5LoWTyz+0BDawFyCgTcXl5dWN8o6R3+4H783iT
         7VFafHm0HRkrVx77Y9GzzOPzEnFizF7t7GgLSCIvZfhy5y+VmKeZ9aRLiZuNflCXlCB6
         /3Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713802584; x=1714407384;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LbaftYc/ei4oHUBSrTKOEB6H45OgBK8ia0PvwI9H3VM=;
        b=O+WH1CBpFUPxZEK1QyS/rYWBjHowHDDKDjfEg6KgzoKT+qRulzQsiKPGvoNno48Z8Q
         vudhVZ6QB5QZLoaKZ7B2KhfuoO+53/fSNSGKXm0nTdHlft+KINGkmDqM68x5Y5TmZink
         sTFBIiYFE66Lus8lTuD2hkyd7pbV78ym1dnDPGg5Lb5phBD+GxkuSPE8uDybRivhnEKB
         Kpvyf6zsGFMu+hfzX7xSRaDKPtmgIY7chuBuFjbrg8wGtUm6xNpDWms8knNcT2TBwCRK
         jGIESAIj2j7sy2vZt8lkqPdN3THbCdAENmT/dv/L69UthY9L2Kvq0obCbf1jW38k0Sr9
         2aYA==
X-Forwarded-Encrypted: i=1; AJvYcCX3qy6shNGwAtr7m6wfzR0JhqRcWow5mCDGmouJfy0g1vlAeoUDbqo/sq02saoVNQYkzw2Y5HETOruxlQgH95tZP9sFjexiM86dy5s+BQ==
X-Gm-Message-State: AOJu0Yxv8nD3yMcm8L/52TBqIkK3nl7P09EXH7b1p+08CT0HnUJNNWua
	zKP67MUnWZsQiqSp5exPs8g3YNUl2SJ5MlhNUmaTuZIR5QE7e6+2mcYx1F6ge78=
X-Google-Smtp-Source: AGHT+IFtuRbB7/bsMHFBiRzVKO0N2/H4DC2fwitR9R+6Qndbhc6U5jg5aAj6yfHlfDcTrPds0p9osA==
X-Received: by 2002:a05:600c:354d:b0:41a:c92:d323 with SMTP id i13-20020a05600c354d00b0041a0c92d323mr4315677wmq.10.1713802583862;
        Mon, 22 Apr 2024 09:16:23 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id a12-20020a056000100c00b00349ceadededsm12463710wrx.16.2024.04.22.09.16.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 09:16:23 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 22 Apr 2024 18:16:18 +0200
Subject: [PATCH v4 1/3] arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
MIME-Version: 1.0
Message-Id: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v4-1-868b15a17a45@linaro.org>
References: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v4-0-868b15a17a45@linaro.org>
In-Reply-To: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v4-0-868b15a17a45@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1175;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=1bqm37cHBp77XacdQMnUI5xOez5SEa+Brh+86TcfY3k=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmJo1UjpLONI6SQLX+Etrq9QTUa1CvKcawV0W+TVTt
 GPpSoVCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZiaNVAAKCRB33NvayMhJ0XBDD/
 0TejuyODhFAqwnaXddK6COIB6YKsg41/lT08lAx38ZYgt4B1XhVFBj3c7X+2wkkz4WYcSSyg/h/CCi
 pwYBYcPmfWTC/5hJHw1P7WhNdKN+FpJGPz2XNNVozZKv5RXZQv5IqwNo5oxuz+n7SXoTHDXIf7UDfA
 D16TTPg9+FGXEK/e+DAuf9RPAQxDSlT+ZfkTsuK2CXFQvr6oFUZX6w4gJQ7phajn8e25a8FKeBlXpd
 eCizpX9iOSFcLd0zykGiqJj7vKjiKtBIwQ5N93hQbcJNMQvLDpDC1i668KqrSuuOuojG6SGVeJcCLU
 1WbBNgqtpv7K5bOmvn16rVvnfWMAdX8BQcWQ9/3N6BR+hFIXzuGKAYXxizZYZMtjNc3fsDAuEcqZIJ
 /VniMWKcpXRopV+dBuJYSAoT2jzrnU4UB6RQ5NDj1mH5Jr4tXbWYXre+lnND8CNai+7nWjTPdSyHV2
 S/u2bHc+rrte7dD3BnLufgsaHS240hoI1AL5HtbcelM9G0RPbRpI15TG4+6GJcYYkZI7/pz5+ShNKA
 UNTkW6nkPuZ8BadWtayoDwOQkdOWTX+iPU/wTuj18QwQX4MPb8GHehcCGP4nsWliabx293PIj1cXi4
 sWyzYLe5TeQkESuCDijH2eS638vz4H+ujMQYlaRRnYI+QGJISdkDzXqKc5qw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_091626_092347_7937A185 
X-CRM114-Status: UNSURE (   8.70  )
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

Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
provided QMP_PCIE_PHY_AUX_CLK.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 616461fcbab9..71797f337d19 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -754,8 +754,8 @@ gcc: clock-controller@100000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&sleep_clk>,
 				 <&pcie0_phy>,
-				 <&pcie1_phy>,
-				 <0>,
+				 <&pcie1_phy QMP_PCIE_PIPE_CLK>,
+				 <&pcie1_phy QMP_PCIE_PHY_AUX_CLK>,
 				 <&ufs_mem_phy 0>,
 				 <&ufs_mem_phy 1>,
 				 <&ufs_mem_phy 2>,
@@ -2000,8 +2000,8 @@ pcie1_phy: phy@1c0e000 {
 				      "rchng",
 				      "pipe";
 
-			clock-output-names = "pcie_1_pipe_clk";
-			#clock-cells = <0>;
+			clock-output-names = "pcie_1_pipe_clk", "pcie_1_phy_aux_clk";
+			#clock-cells = <1>;
 
 			#phy-cells = <0>;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
