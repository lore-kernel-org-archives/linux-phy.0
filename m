Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85892C54E60
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6lGDxKlHnc+Ovag0I5GoYPzOjgZkKmE8avDNblmPqs=; b=dhBJVFppbbC7bT
	/DkaTqkHxNPvGt2Jy360q0h4HFTEHadmaTmUaH2Qld6L8GwNGxGIhwx+SQSOs2HlEts0igLMTPKqu
	fuz/ejTFp3JOKA+npbfrFzsCW1Wp9/TgZfVvL/K+6X51ftgXZKNiD/0tYDtgab6Ay10k+tgJia2X4
	S2EGrnS27BsNbdOdf+waEcYZZJCTc/ajjkfX1dMQQN4mqSbMcO9XzydO2Q3cTCaM+kz2SNMGwAfvp
	9F4qTkq9zN7T5SD5c0BmcApYXGC1opD4R3nKf/YJR3cnnPVIF5uolIE/27sGpV+qca+uxbSR8RlL9
	VDbOB57rS2/s+JaN9xqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxu-0000000CLOM-0DB8;
	Tue, 19 Mar 2024 10:45:06 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxl-0000000CLG1-15Ye
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:45:01 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-414612cfd82so8275165e9.2
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845085; x=1711449885; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TKxzKi63wMAR+w/KLt9riuAXy6iLFW71XAlwS8JaxNQ=;
        b=b04MUo+hPyqcwNdZXwKW54Zp3vS5PJEUL5OpQj8bLyUrQDJiHMhGY20d8dF/BCq4mW
         w+yhBIG3v8Dnm3UF6u9yptzCGlIDSWzJkySs7XjQZO1j4qz79B7mImCsYGEw9S2/hKZA
         oxInFzunRrfG/ovt52wlA1bimfrYbts39nWu5dPP59V0xPexUmg2GIEd6VQtEGgn+O4M
         x9zU8BSaSWdr+7WEFU931OjIOktyAJ00j5zqEYwmw43tWb+HyQ1+tE0hq8izx1G1pUQN
         /EDZMmBsTdyBmO7Dl+yv/n3x8fwFfI+Jq+T/RNvWBkDc4Enuheeys1TgZWYJdz/YOiGC
         7CKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845085; x=1711449885;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TKxzKi63wMAR+w/KLt9riuAXy6iLFW71XAlwS8JaxNQ=;
        b=RKyjd1i+eNy0hQlzPx+JvGK2snBtR7EHWTjT70CkqTaj7esjrHM9xVCvOAtjqr7bvR
         +7NUwWLW2Iy5lNkWBBVWNL7RZ9VSCZt8+04sqk54kiSU+oosKlULeYe4EawQ2ReGzR41
         UH6UsiZ5rCfwH9QzSxOwG+YYzX1axsAgpvXavbSgnGbjQLLyAUYV47fpdK8OuvqZdixu
         nMmt0pg0oPfMkYX6Op+T3RdPj+6hXvj6d6MJojPqD6izrVl7tnG9Wqw4BtTD2lWG26sU
         lyjhGxkQXtF/uPYFj4t/iBLj0rrGD31ga12dq/cDjigPkDgLG3aCp6JHs3Mu/crh7dG6
         uNWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXELolEYwf8LcnZFAGutRI79JtOsqc1QYSme7eywa1aqeOc8KJ4XEdqYDtmTnMLOod0DzKc8DYFbmeCx9/WdPsPbQQWlXvZLMSHL65Xsw==
X-Gm-Message-State: AOJu0Yy+NqlF/9DNep6+qugJPE3Qt4Y2KpqXjZAfs3bsp9uK5zvgcvE7
	pw1hIMmeUCWZJjTuBE7C0xqAgZ92yeYplaucP28aZGL0S4xDmcSlhx1hdVJQnuI=
X-Google-Smtp-Source: AGHT+IEDFC1DurTYuBJ7R06UovGCEH/D9ddBQhJH+4Ic+m3CHU6PMj8rujDEUk3Hdr2MZJazyqb7MA==
X-Received: by 2002:a05:600c:35ca:b0:414:1a5:2085 with SMTP id r10-20020a05600c35ca00b0041401a52085mr1629807wmq.31.1710845084932;
        Tue, 19 Mar 2024 03:44:44 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d4d45000000b0033e03a6b1ecsm12029459wru.18.2024.03.19.03.44.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 03:44:44 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 19 Mar 2024 11:44:31 +0100
Subject: [PATCH 5/7] arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
MIME-Version: 1.0
Message-Id: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-5-926d7a4ccd80@linaro.org>
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1114;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=28QU0YMkxsZqPqQJ114lR4c0tKsd6LuTZoqIQzDtKfA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl+WyWRDFCl1NGQlpfuEOp55FUPam2rC6jwM7FxeDO
 MtEgG3SJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZflslgAKCRB33NvayMhJ0X9SD/
 wImYyLETMlaFFSv1nqApfKP20/9bFzojePtu6Epe8SlATlT20A1aPwVSrKm19mn11fsm54l8T7V80h
 0Lb+K0O86nMZaJihw6+pdkFgu6CxRzt8ZNcCmaqcuOoDl3EDtiDlNaQ4pqMMSpylyNgS15r9gl+T6h
 azbpG/8GqpuQsw5cq8xq+oiZ02IOlkHif5PqwQdO3IgcmgKkm8wg9XhJXxk7PhZfSJn1SVpnIDxaNv
 +nmCqm5GM8Yes+cRgbKRQCJfsJBo1KD+sFbKRarmrq9t2IBzeGUEITOzEIRlP0ZtrLA9C9JngyFgdX
 La378Qqw1rhQS5rlom+0fs4ahwDuUDR8Af7rVP7Qi2XbK212sRQcwTvGTrUoNbliL6a6AK/KvHWC6G
 DiYaUl0p3BURGVPyBeOaZJTfP/tm3AQNBeit6Ek2cFHdv7uYlj7ySw0KjUndbuTS9U2fVR2D1ZfksX
 inE/BJ+VYwAoXF0CJSco6wnlneofjHmM7LNwvNLcyxMUYHmYJEIgXTfdqBsVL67jeoHqEf6vKfD1yL
 y4vpofGRjqk2UcEYN1NxFgceC7EI2Q6Kiv17YueQfWFyYugTlEYZTBPr+JTDMgmGbUX3HmF6dGeZ8X
 2QoLRbxoex+eaI11httmhxNLYW3IdpaGY2KC4+dAxRAC2M3sSUZuVgsi2HVQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_034457_430175_A2E2154C 
X-CRM114-Status: UNSURE (   9.04  )
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

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index b86be34a912b..32361af98936 100644
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
@@ -1988,8 +1988,8 @@ pcie1_phy: phy@1c0e000 {
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
