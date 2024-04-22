Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7A5AC10F15
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 08:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AGG4+24+ciQ0oOiuhpmk08ZEy3Qaujl8PJiuwF9s4Wc=; b=3snhBm0lTOCXlW
	tK/V6pd0Dx0gCwj1e+QtHO2vKnvoIYdTLRKfqO7215zvfZd+MVKMoF8aCy/TxqZsrwso+XUElHfYI
	R6A3kVv9euyLZdSqCfZzD0RRkzvMVCoqPG3d/UeUemlPvv9WFe8KFnoCfNMrtZYrJY4vllkPytIVO
	DsPDPvcpstv2uEFkN/l6XPP2ShYRAZJWbKumJpdHp/g9UsQy1Tl2ZVnmu9kqGoo0AcL58XbnUyI6X
	Ntvz5ThEcA2yl+Jebjl14stM1FeiTB8Mo7upi5FGCBkzznamtodWHUe/cLZ3hYF6w3vk00NZU/KnF
	i5RlAM0qrQozQOlgCUGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryp73-0000000CfRY-1GhJ;
	Mon, 22 Apr 2024 08:33:21 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryp6z-0000000CfPZ-2org
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 08:33:19 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-41a0979b9aeso8803915e9.3
        for <linux-phy@lists.infradead.org>; Mon, 22 Apr 2024 01:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713774795; x=1714379595; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zhqz8iV7iQBshGwv7QxAtvIsaIHzswkWq5uKt9n8NGQ=;
        b=S26SGzbR7OCry5OGaRyK5nI+JdPLB5xCZUvw1kVsYbEU8nHwpYLBhfPOEsJU2tkiZz
         4TTPLK2rdtPdiJ2RK9FEO4Uj9QKLuYD3a7TkWUBHyy/PnlLmrpPHSymz7Gimi+Dsg8r6
         S/SgvddxgJCAQaHxJFwniDnbAqMkjBC0KHHnMZDH9xBu2mBYsI/FEtoX0ecv8RPO07oh
         SwLImTznvYSZkIxSd/s2LvUnrST9lP9VmEwGFZgrXN7LdszD8sAgna0uCiVcQOC1wKoo
         f89CHFkVIgg0vv2JvnSE/qOmZuuNjh5vL/+hx9U+9c5dNcm8894rr4htl8hicEq/nBIU
         wePQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713774795; x=1714379595;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zhqz8iV7iQBshGwv7QxAtvIsaIHzswkWq5uKt9n8NGQ=;
        b=FC+qIYgsq9SM6W9dKcOmlTJWFHZcNtDVA7l8tGS+5p7Bnfb+XLJpQGvZ+dspDI3Tvj
         pRDEDRJo8kTQx4NiMXylXXDWGz7h7UhKPGB8NlP83ebdpd/eixRindva2U97RLDTsH3C
         arhahr3DPOxYF7jggCTF5h4DpENVWFUCDmWC5GRmfzfw60xD6JwNkn/ka5ON24Qe5g9C
         4PdJMMnV5Tmni/+ekuo2KyKzqP7PL6VlG/1JnLRXjeIfhWkBmo9lSPH18vK3J0G+lvpA
         jPpqhk2N/1OM8IM9j1rNbTIRFoQ7C/w1z03/BloSICDAHR5K3pO2mUbRLjAhNVWnGfyq
         t82w==
X-Forwarded-Encrypted: i=1; AJvYcCXpgylDmnaxZ98TvGKOYcG/NASh1K/8m04yNdHAGkHAQs4IeEF5p8al3Jlwkw3DSBdoRq069iL3BxWWzDfl2TVepqEQ2EMXsw+ZQurDsA==
X-Gm-Message-State: AOJu0YzYoXrnmrIpdMlv1ss+QIqwwETVvX3GZ/uZ+yR+s7El138/kDIX
	lHwLTmUVQ2IPh5j6WxDPf2nPWE3HoIruCQgFw/dN5PDxfdt1HaFXVzQLHuJPz+16nX6Gjmtl8zL
	B7CJoUQ==
X-Google-Smtp-Source: AGHT+IFMTRg9qm+Ou5HmwacBkzUGNdJQlfVnXqZC+7X9JtVSMgv2ZxIYPlOyv+hPTjCy5Tc+xzqmGA==
X-Received: by 2002:a05:600c:4510:b0:418:f8c2:c3bc with SMTP id t16-20020a05600c451000b00418f8c2c3bcmr9259046wmo.33.1713774794597;
        Mon, 22 Apr 2024 01:33:14 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id j19-20020a05600c1c1300b004161bffa48csm15978786wms.40.2024.04.22.01.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 01:33:14 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 0/3] arm64: qcom-sm8[456]50: properly describe the PCIe
 Gen4x2 PHY AUX clock
Date: Mon, 22 Apr 2024 10:33:10 +0200
Message-Id: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMYgJmYC/53NSw6CMBSF4a2Yjr2mD56O3IdxUNsCNwJtWiAQw
 t4tjHSow3MG37+SYDyaQK6nlXgzYUDbxyHOJ6Ia2dcGUMdNOOUJFayEwTpUELpiTimMLgzeyA6
 cQgMMXLOAHGdQ7QuSp0hZVuY015pEznlT4Xyk7o+4GwyD9ctRntj+/hGZGFAoeaZzmSilC3prs
 ZfeXqyvyV6Z+IfM+Q8yj7Iwisoyy3TKqy9527Y30W+ztzsBAAA=
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2399;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=UbFJgQU2qZOrRgk97gfISoGbK/XP23Wbw4WNjZjItEM=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmJiDIgtDRLmZg5sOyOQgwQ/JLYNzENSguud02N0gN
 XfnHc/qJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZiYgyAAKCRB33NvayMhJ0bnTEA
 CrI69rE42cc/xIuuyREhF6Ecr3OB4uL5SvpyRnvCt++do9r1hAvx9IPSWHAx7ZPdXbur8I9jqo49+f
 xC7/CCU72224UoO5a4LOcOvJMVVZxtHXjSdJR+ku+k6tYQ0Qc2X7f/2EXn8hF3rJtnu4L7E8tnABCU
 ex3AA6P2jUqiogD7jWA5QOIQr5/rP4vfAY79w+NQnKQQ2/Asuv0v3TYb8aBLIj7YzSrQM/pE2Ykt7z
 kWtzv7PCzm6m/aS5+JxsxFav7BmDXMAiF3wWgOO4m52jgyW8/GjxAk6xlWru93l4blvtvnbw2/iAnv
 eRmPfILjgJ0Om4RKYaknQcfpZrBnqNrB/6VDqX0qzTSGQao+wG9btzZqotTCmhMmuOHXW646Z/UlQL
 CkEFDUgnz7A5iB2/mW9pP0x7/zjX9HwNJd5uzs6A1jmssAA2yHfn3T7d59MAyIUXtcbZkuxJSlfcHW
 sE+gpWIWJ9HiFot7gUqQ2kF5ch4YjXqhx25nKBMAOEsmr0J8oxSG8ChfOSY4W6x597QcUzRKCn+B1b
 Pw+izM/zWsKS3HLvUF/YKCKBk3Ahf/PamCssOZi3/prvCeYQFuKfCr4aq8Me2h+AcNpNIZwOqurmbu
 84IhF8H2IyFlqiV8J0gI0FcN0Jn5L7TbWzuS/b8sbkqQ3AY/aTdDC5IrcBhQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_013317_753394_A3EE073D 
X-CRM114-Status: GOOD (  11.59  )
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

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock named
"PHY_AUX_CLK" which is an input of the Global Clock Controller (GCC) which
is muxed & gated then returned to the PHY as an input.

Document the clock IDs to select the PIPE clock or the AUX clock,
also enforce a second clock-output-names and a #clock-cells value of 1
for the PCIe Gen4x2 PHY found in the SM8[456]50 SoCs.

The PHY driver needs a light refactoring to support a second clock,
and finally the DT is changed to connect the PHY second clock to the
corresponding GCC input then drop the dummy fixed rate clock.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v3:
- Rebased on linux-next, applies now cleanly
- Link to v2: https://lore.kernel.org/r/20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org

Changes in v2:
- Collected review tags
- Switched back to of_clk_add_hw_provider/devm_add_action_or_reset to maintain compatibility
- Tried to use generic of_clk_hw_onecell_get() but it requires to much boilerplate code
  and would still need a local qmp_pcie_clk_hw_get() to support the current #clock-cells=0
  when exposing 2 clocks, so it's simpler to just return the clocks in qmp_pcie_clk_hw_get()
- Link to v1: https://lore.kernel.org/r/20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org

---
Neil Armstrong (3):
      arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
      arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
      arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk

 arch/arm64/boot/dts/qcom/sm8450.dtsi    |  8 ++++----
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts |  8 --------
 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 13 ++++---------
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 13 ++++---------
 8 files changed, 12 insertions(+), 46 deletions(-)
---
base-commit: f529a6d274b3b8c75899e949649d231298f30a32
change-id: 20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-4b35169707dd

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
