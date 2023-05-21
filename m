Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCA70C77B73
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 20:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IC43gg9cF+QToyUUJuO1PY77Orf9+ZXfbb16Zl8d8n4=; b=cnMjau/lsFNEG9
	g/U4LERKRMCwV5K0zAelpMfKsBXj0oEH0F5fiJ8fDqSqssH/jm9gbceb+5vJMe/GV63J67vc9tOk/
	ciOdQVINbLD3yVg79fEIUZU6q2tuz2RtQQXjRDR1W/PKb5c6c0a8oCd0IVkP3xrR1Y0JnnmPoGdJ2
	OW3mVN9Ba2btpznYZsYXsgHgFdC7O0EWST03hXMl8h6egZADigCpFRLSM8Dh8Dg6g2Bqec+JsnGPt
	iZxLHfFrnrSD8jxkWRYckrjMuccZiCazsDIQin7+IzwknVHN6nxs6+P6N1hMJS771cZMRC/54P+Ji
	/BXGPMPISsxEii0X5Smg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0paX-004bBu-1M;
	Sun, 21 May 2023 20:23:33 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0paV-004b8m-0m
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:23:32 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2af1a7d2f6aso44403061fa.1
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684700607; x=1687292607;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ByeCSFrNe87g7BfDBXhGdaN8aXwyz3oBdlfmR57lKKY=;
        b=xrh06FAgJiDHQA0f/6LrEkDmZvNeo4GXRTOwxbpdP5Zyvu2j69mldzDsfbkT31sDtm
         ZJGfQCiQY90iL7WJdI1/QWfBWyo5+9BsaWkUBOmi/V0x8bkZgUr6vKKHJIlvtPILcHo5
         NFaRvBqDoi1iGZX7dNp521BnuPDAXF7LbIQm2hIhUTWOcpGM7f6jUHiazH1CMAGhDuK1
         cg/XBlXsKaAd2y+5cyTtZ2KKJpIDW9x3ig8QxJPFhJIgzMVEBkgrSkKBQ9PmDTb5UGWv
         od63vlPJCFBIa1jKWLj9gyMi7yGzMAwx/dj2Ylb76JfgzuTf5lmfrVz4BmOe68woQSRP
         N5iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684700607; x=1687292607;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ByeCSFrNe87g7BfDBXhGdaN8aXwyz3oBdlfmR57lKKY=;
        b=L/vGtrFCG/Ku87ux8Y6JR7NDlAwTLXu1kGGkMvL8poFVWMmPzTT5syZIvYK5BzAJu4
         JQ3gUljT0L9jv3GGDvDPbG7n2+dNODKw/dcRq/hyg87zLmT8VL48mkIYrPxpHsxW18tA
         NM+rm6s5nmbmtlLlJm3+D1Z/E4A/eE9PI1j5vbavBVhDwvJivFzWUYxFUpDX/qQKcjdh
         OGJ1MvY0yfkyyAviiXSCif5JD1oZZDit9U34xn/3par0d0P3hnV741mNk7ig+8eJ+SWa
         WA0yQZTHbz0VnaWPoZp5ONIMr39H3V/H4XweYnnou2wF6SEkdCIxRbWQEtHvf0YP4Lwb
         kTgg==
X-Gm-Message-State: AC+VfDyIH+iix5LcjHvTAppzIjr0ZFnkIn7SpJKETPK3jqh3cz8BVmmE
	8CVnxBUHpHOQwadrolAM4q39kA==
X-Google-Smtp-Source: ACHHUZ4HxnBmmkPMKTeLTuKD0J45DS7Loa4n1N8hjxqYZ0MaDzlPWNem/ZoFBNEqlVWj4dJDUHd63g==
X-Received: by 2002:a2e:88d8:0:b0:2a8:c333:ebee with SMTP id a24-20020a2e88d8000000b002a8c333ebeemr2963054ljk.49.1684700607075;
        Sun, 21 May 2023 13:23:27 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u23-20020a2e91d7000000b002adb566dc10sm835589ljg.129.2023.05.21.13.23.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:23:26 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 06/10] arm64: dts: qcom: sc7280: link usb3_phy_wrapper_gcc_usb30_pipe_clk
Date: Sun, 21 May 2023 23:23:17 +0300
Message-Id: <20230521202321.19778-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521202321.19778-1-dmitry.baryshkov@linaro.org>
References: <20230521202321.19778-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_132331_281612_0E027B7D 
X-CRM114-Status: UNSURE (   8.09  )
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

Use usb_1_ssphy's clock as gcc's usb3_phy_wrapper_gcc_usb30_pipe_clk
clock source.

Suggested-by: Neil Armstrong <neil.armstrong@linaro.org>
Fixes: 1c39e6f9b534 ("arm64: dts: qcom: sc7280: Add USB related nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 31728f461422..5f8a94dd74d2 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -848,7 +848,8 @@ gcc: clock-controller@100000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK_A>, <&sleep_clk>,
 				 <0>, <&pcie1_lane>,
-				 <0>, <0>, <0>, <0>;
+				 <0>, <0>, <0>,
+				 <&usb_1_ssphy>;
 			clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk",
 				      "pcie_0_pipe_clk", "pcie_1_pipe_clk",
 				      "ufs_phy_rx_symbol_0_clk", "ufs_phy_rx_symbol_1_clk",
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
