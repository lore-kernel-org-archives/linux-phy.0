Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4631AC4345F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 08:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=529FRvh3qqy+lzTlcSihPnRBI2WTJVJ2jRFIiYFOqt8=; b=D+O4CP8nuYpmud
	5EMrOQT9/J/u1ob18+mKPPp4OJVYwA0DG4dLyFJw+FfaozLt2FmtISDN4ryUqtSuQXxvXLOhuo4dk
	IQUa5MxqHS4iC4qt0jtRKK5iiVuF9YAqI07Ja02Mr8rsAYxB5J4vwnyHacHHOXcaT2prNNiy9jzyY
	DYUxAY4btVMTGi2NIq4OcO0KJ4wjpG6YSCH7cuiLMx0YSK60qylx3/vPCUphsvdevky9oNC12J4Pj
	t7FZecTMuCwz7QCN9IhKsHKaZPTw2n+8PAHoC4sUjr23jS7IvepmgiDkx/YjL9tf4+q05bSUSLOt/
	87qzxUPgVvHjzFwKm/hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryp72-0000000CfRG-46t1;
	Mon, 22 Apr 2024 08:33:20 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryp6z-0000000CfPh-24l5
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 08:33:18 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-41a77836fa6so2281075e9.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Apr 2024 01:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713774796; x=1714379596; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LbaftYc/ei4oHUBSrTKOEB6H45OgBK8ia0PvwI9H3VM=;
        b=bqcWzoyJ/GE9yY/AajZNNGaZUINJCL0G1H2mwfDVBp+E4sFGgi4u1NHsAZBDvnaWVV
         MVjWmX2cx8RRbP3i5MMv2nUq6O14SLW7y9pqG1XGwx+b6AHUMXcdbeFaaxsXqYlqyrM4
         jOpy6KsLkMP34bnqGqGEVLrsgWukgkwoEAE6yyKlTG/5GCniEOnBIhzm6ysW0Og0U+zF
         cDG+CTV/PlG3vCwX8FvekvtqJ0jNK1+8Fb7jQNyc+ei687oIcvZfg/XUBtdpI22aLuB9
         4LnF7753Lu1q34l4a3DaOhH3UfTIe4gW54yQQ/rQNWc3ADfFPUqNAaXOO6JijWUhm86U
         IPHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713774796; x=1714379596;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LbaftYc/ei4oHUBSrTKOEB6H45OgBK8ia0PvwI9H3VM=;
        b=UoEGecDWVUc+IwBiLrl4V+J0A1WsmlhM5VQLnb21ZEu9ngkFIui43vWKxYRcw+nSw/
         iw9YLZ1zWPQAtFOr11YSfEuBnGMBQ1n6zN8DIgQkNXk5UlwSC3noMCwvODpYHJb+nv6V
         uZ50s7vc+Ut/P0xXfKIypvLHIWfz/GJ+2qTjMa6UTBhABosJ9vEWDNyytB3swc76K6D1
         qzmOAbxKT5S+bxcSUeJBWKCfts+d++jo9DZ+XOAylyIZH/45FDrYN/pQdXO6wY5roWB3
         vc1PDYYvV9tFNqGfKVJ0eWsYW6hXRAa8kbxuK7+BYtpAybRw0EJg00LpL2yZIHyYccvz
         g2Ug==
X-Forwarded-Encrypted: i=1; AJvYcCXoc/rgo0J6B8DrKzqu1XivTxf7BUesjCeWOgu8rrt5kn83fNnxB3Nf1LtHnuTO6+j3rfjcT5m/mN6+Nbfwf8DDHsyDmO5o0RsoWLm0+w==
X-Gm-Message-State: AOJu0YybOUh7Jfn17hIPtqmIbEKJem2ie6wIfr2J4gYFtWQ7xfaESTPl
	DLMXlgtlY043JK2DQd3+OwRflD16DbHAPH8whQkvsdin9Q4+S7iIl17QKPbzAmA=
X-Google-Smtp-Source: AGHT+IFicJC7O9U8o8rAx4zgXVTbsVkwjy+Gj1FuHZ9l8m1zL6WLESNfZCg+Bhih6Vkw9yAbP5NU8g==
X-Received: by 2002:a05:600c:19c6:b0:418:ec7a:4493 with SMTP id u6-20020a05600c19c600b00418ec7a4493mr8915365wmq.12.1713774795471;
        Mon, 22 Apr 2024 01:33:15 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id j19-20020a05600c1c1300b004161bffa48csm15978786wms.40.2024.04.22.01.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 01:33:15 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 22 Apr 2024 10:33:11 +0200
Subject: [PATCH v3 1/3] arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
MIME-Version: 1.0
Message-Id: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-1-799475a27cce@linaro.org>
References: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org>
In-Reply-To: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org>
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
 b=owEBbAKT/ZANAwAKAXfc29rIyEnRAcsmYgBmJiDI6pxVr0gA/n+E41e6tENZ2BTnQpZZk0QoVMZe
 ZjN5DHCJAjIEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZiYgyAAKCRB33NvayMhJ0UsFD/
 dXgjhQb2AfQt7uk4tf71uWR5pq4c4HxdkCK+T30MKoFhN40JukvMNWTm2Lo8HrG+eCQ3lvabXVPli4
 2YFizwjobRbZc1yQ5zikDLllpW0YFlc7Uq1Ng6N6neQl9ibqZYnk5S2EqaOPSzup10SOznaDAfFNlt
 R8KRdBPgbULrpUNi5BPHRs2SKPhXY8Qsu+znuW24+zCNu5/Bax2PIjXQyS2OqPauw6+Z8lMu2bTgM0
 hpXwnLQ6R42uzPbictmvD1kzY2MEYxScvb62DrdW8yKyjBpXet0GOZ5o12lvKmp0THX2HM8bKDc7EV
 M0WXrB/pxYMuBvWRxgElS/EFxbbJb+1/+BJxRATX3c23DjiDGb4bi8ZV+n7jsQU3Ia8r12p89NH0Ka
 kvcsq2MDJXQAQ1hOQTR/hbQJGjw/GXfTqvkfsCeNVqq3Jzp2suRwRKiOg5BaGEciCqZSgI8jJwD0mg
 SDX6ifm9jqyu8ji97Bl/+Ug7JmlDVP+D93tPbbWpTPRRT2ff1vogKnt9GBQzPxOls6gUIgfryGiULl
 ix3gHppYOZjrSpjMMhbuM1JwY7NyZG9dH0JnPM3aq2R7psmoKOiXyUWTcdio7IVa3TeoOdaSz2LUnK
 r3KQVDFaE1DeCnIYn8jU9EULmiSaGJuO7eHfI7dhAcvzxCtURp5zagHZvQ
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_013317_576683_F597F2F6 
X-CRM114-Status: UNSURE (   8.62  )
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
