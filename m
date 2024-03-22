Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC807C54E71
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 09:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hE74J0KMTok+oCiU+bUBmhmWAokq/8LvmgK3T3tLslQ=; b=Q7HJznlWWx3udg
	YYZ5HAFJP+UHjEBiFlYtDmPHOUVOfcWmIlvNUdqtJecPdoG+SIP26xcUX7QWdVzbHX5wLyKDjyiTB
	KUsonc55uskOZuKWe4C7qDpCI4MU80gbAffqZX1D1mQUHEtXq+hbDvf+X3ixepHi13msZePPJfSfd
	nNyPrmgd6xfqnz8wNrvx4GHHpkChD5OR2tC5OFXxGPTbMworzeVFozAka8T8Uif+0J+XLnMRUZuJt
	UzVRjEtHI+rGRSwanofmrXIYa0v9GtsgCIMCgnwmie6fyWv3HNyQLaeXyoDwsO7iPjC6ySrYiAwsQ
	PByKd5ZGEx6KFnuJiGYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnbQK-00000006dVU-1ihg;
	Fri, 22 Mar 2024 09:42:52 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnbQH-00000006dTi-1Q2A
	for linux-phy@lists.infradead.org;
	Fri, 22 Mar 2024 09:42:50 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-41412411622so13785315e9.2
        for <linux-phy@lists.infradead.org>; Fri, 22 Mar 2024 02:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711100565; x=1711705365; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4RXUamy+6CkwKat2pJqrkrmGSUlooaGAioyYCp0zXP4=;
        b=enwciLxkh6j02llJXHoTd87LgcAq91I5XHnmGabLKvHxbQxLblDnt04A1gzb9J08dM
         ISFLRQwh8VXJ/e3K4zFMZxd+NF3P0IDjkfVG1ZVxTZSIjCazn9r+91fbNtPx08DQYc/V
         e1g2a0N/Ppz2+8F8ZwMSiGaI8Jh76yAYHn5aqPADS76UX7WTKq28nzQbxflW48H1l5rm
         S1vnhawxvwpjMG3nEXXTE7z1RVgV+jBiY/CWRiP+Dxrv7IWIREdKOXZbZvwFmmG0D8SU
         RLIDOgraBagH3jiZ0//OAfUB71oQtpb6mya8O2uk0m84VJfRpc4CoVCSQgWy+y+Rfu4Z
         JjAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711100565; x=1711705365;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4RXUamy+6CkwKat2pJqrkrmGSUlooaGAioyYCp0zXP4=;
        b=qJZJ5yk0VE+OZfRwx8WJzM92ykPjN/UkNG6FXYFGXRYsLh+2uXoaSJBq6wnMfqHbqe
         hGZ2zxZHNjRJxjsq3mv/DVmdTPvh9SEW2HOQFzb0jMNeC4WS8fp/pF6VNdP5hme2OJmk
         Otsim87gMB9Nxl+mo8OhUq/mPk2GRHn+XkYNM8ba7InsH910GirydWzhtQLLEQCWJflk
         97kG/yOiDlIcj4hGiaQqCvGPnNeHUawpWsIrG87WAANef2ENU000QdkLFFcSpJhVFV5k
         7rk37ZE+yfgvq6l09CPSHS/HzD8EzthMyqjcAMlq1HhDqqxFCy5LJH4CX5+QvafN1QlG
         E52Q==
X-Forwarded-Encrypted: i=1; AJvYcCWMahEvrIEot8qVZ02xfwejukzTxcikUJt45oBFkaq+tLQ85hMyGrEdyCS8dABGmP/cz0mS1sbJMjs4gbcvp8FVJ+c/9usHDryx15KKGA==
X-Gm-Message-State: AOJu0Yyt5pLf1DSJMOpJwpZuiwSG4FF4bYJbcA3b5J2xX7Yya1qn/O6G
	+6kWlYVA4mJSta3+fcHA7rL2pQ1yj4514CxywlknwT1TDiFyXPrAOThsv9IWIXc=
X-Google-Smtp-Source: AGHT+IFvFez6XpEdmElSBdTd28NiEtgQWa0kTLpjpyGjYG+2mzUaQ/ueca7v5bEWNR5vKrFD70r4zg==
X-Received: by 2002:a05:600c:511c:b0:414:5ee1:76f0 with SMTP id o28-20020a05600c511c00b004145ee176f0mr1056656wms.25.1711100564758;
        Fri, 22 Mar 2024 02:42:44 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c190900b0041461a922c2sm2547845wmq.5.2024.03.22.02.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 02:42:44 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/7] arm64: qcom-sm8[456]50: properly describe the PCIe
 Gen4x2 PHY AUX clock
Date: Fri, 22 Mar 2024 10:42:37 +0100
Message-Id: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAI1S/WUC/53NSw6DIBSF4a2YO+5tAN+Ouo/GAQWqN1UhoEZj3
 HupS+jwP4PzHRCMJxOgSQ7wZqVAdoohbgmoXk6dQdKxQTCRsZTXOFtHCsNYbTnDxYXZGzmiU2S
 Qo+t3lMuGavhg9kpzXtQlK7WGeOe8edN2Uc82dk9htn6/5JX/1j+QlSPDWhS6lJlSumKPgSbp7
 d36DtrzPL8srLCR4QAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2765;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=G8pd+NuPs5MqnbmyhqPPxvHeK1Ch8m4ANkNZoIRgcfs=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl/VKQY3StH+jEwpw0M1pXqo7GMpn11tZX0YBLeImy
 +tEzA+WJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZf1SkAAKCRB33NvayMhJ0cmfD/
 43RVVhmBkKNKtrJqcw01/Ex2PuZ1/tEfhcU6tMva8RiVUTErXCkXoIh1vzmbewfzljQiwalOyS642/
 0U+uL2p4Lnd+rsEA6kAnUzo3poTCgpXSlw9GPpkYhS2zRisbv/iyp02K/xsommpzxhMWV7dcXRZyd/
 fdEl2BG2/na5UtKk1dUfnpbdD7fVTZCBykaDWw9swjEktvqmc/OEE6sx3YFQ2f9huFabPk4VxVqNOk
 UcD4QA/apXJmJxQ+8YJk+FYDyWODWWNNfAz5o6MXVLN7lKmbSUvH7IE0frTj+m26lXCx2URRtQCXPt
 y4R6stZiWkbP+vwUGbBJsGhya7P3Y3jZvIf5Eb6kttaEq9VjiVwD4gtxDI7c9DCKLCDhmOm3pB6TfG
 2fhBdvRkrxi/AE1TlcIPIMKZPhmqhfdVdRdDd7D79za/cGZyliJuXeKQEAefeFNTsmbCnoQa+E/vV9
 Zhdt8WxUbS8K2Q3zP0IT5c1TEffm6xLMXyKBregitQAs9osNyKHQcKFUbvHOl+Z8Yyv4LpYKn7SeQ1
 w6Hx02dAZe/spQT+zeuevepNGv8IgFpBC2FxZUr+QyV99/T4DGR9tS/eYxoUnAlsj+WINequ5j+/ud
 kFIVpkhTR6YIT4KgDItN9UugWUOdSwY284uccjQx/TpcEsqiX2P2RmPOlkwg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_024249_424032_CD794182 
X-CRM114-Status: GOOD (  11.49  )
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
Changes in v2:
- Collected review tags
- Switched back to of_clk_add_hw_provider/devm_add_action_or_reset to maintain compatibility
- Tried to use generic of_clk_hw_onecell_get() but it requires to much boilerplate code
  and would still need a local qmp_pcie_clk_hw_get() to support the current #clock-cells=0
  when exposing 2 clocks, so it's simpler to just return the clocks in qmp_pcie_clk_hw_get()
- Link to v1: https://lore.kernel.org/r/20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org

---
Neil Armstrong (7):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document PHY AUX clock on SM8[456]50 SoCs
      phy: qcom: qmp-pcie: refactor clock register code
      phy: qcom: qmp-pcie: register second optional PHY AUX clock
      phy: qcom: qmp-pcie: register PHY AUX clock for SM8[456]50 4x2 PCIe PHY
      arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
      arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
      arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 27 +++++-
 arch/arm64/boot/dts/qcom/sm8450.dtsi               |  8 +-
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts            |  4 -
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts            |  4 -
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts            |  8 --
 arch/arm64/boot/dts/qcom/sm8550.dtsi               | 13 +--
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts            |  4 -
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts            |  4 -
 arch/arm64/boot/dts/qcom/sm8650.dtsi               | 13 +--
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 98 ++++++++++++++++++++--
 include/dt-bindings/phy/phy-qcom-qmp.h             |  4 +
 11 files changed, 133 insertions(+), 54 deletions(-)
---
base-commit: 2e93f143ca010a5013528e1cfdc895f024fe8c21
change-id: 20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-4b35169707dd

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
