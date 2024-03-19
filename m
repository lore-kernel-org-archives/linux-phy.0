Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6E75C54E60
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9G8IS7wVqf+uYyb1LgsQfb2A3tkWZpIEY8pJFV/e1FU=; b=q6sQce8zWyp1nF
	wvRIJqWIx0HoWRvzF2LsUIX0goxrNJGmT55PkSjURL/N03r9hnHyZpAP0Jk1EcWImh4SUOosT62mw
	Zcyh/zfLcZPAeCI8HJQKd0sYxJEdB0zHtcLjqq/8Wyj3SzrmQc2T2jHtQcW0Oh6yITtXuhIm847BL
	7xmg2jy+VEcY1LMiPy2Pw35OsfsLrVtXXT/bZFaSViyHhQim4oCkZj8FDv2uWn01ZLtWNr1bUd8mv
	nE1hHTM320U7iJpIV16SikGZ/y5HQCYmKCGzv2aLQsGBq5HGNad36xq7+iHEW5XcQ+zwKbJ4Cq+k3
	R4/lew39CtsxIC5wyiKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxq-0000000CLM3-1QWc;
	Tue, 19 Mar 2024 10:45:02 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxl-0000000CLED-0ieA
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:44:59 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-41464711dc8so4220565e9.1
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845080; x=1711449880; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=642Lccs0wQRja43ANYD30tSnrLqpIkdAJmJ0WSY6RU8=;
        b=fuM+J8Xdn4jPxjX9u+AJ6fk1HkGHZwpcxJ19I58rcUs5FUkJwEf0oY3t5cMS5Mu6dM
         UfdOUO6PXu88NMgBqhrUsIgYCo/NNLk1i1mj28ROWSXlcAqrpmeMidnFD0LZe2ha8sBP
         1Woh5cXh4JAomVrt2BDL/aPaCmV9AItQCJyADypxnsxIxFOq/KQrfHcFBqd0hPaxyd59
         /yNgKcRRYGvepa8FbJENx18ld060JucFC0zNdg+5WnqwJ8mKMv6ehAjhr+MEaxUGIZoi
         HRY2W3yJHvtuwCsVML6am89IbCx3RFpZMuR3CYDsfbt+sVVO9bjG3dq7FEOerpf2TsV3
         UYog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845080; x=1711449880;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=642Lccs0wQRja43ANYD30tSnrLqpIkdAJmJ0WSY6RU8=;
        b=K2rDLxeb9YSTodu0no/efdYi324vI024q9xgh48rKZ7R69bYJ76+2LESptiXeN+7RL
         TC2lMihupYalejgUXAY99tBuJj9h3phWwCHwYxwxMd2Ua7etDObqtxOt8AYe7Kv97UcH
         K+ZkODLaMow3K1XIXcpdBBRarP+LLlBtIoCsvQF7ESegQi9wZAi88oAYlVZuSyi9CVFb
         t2oEisiesfLU6I8+hz7Itlytn7rKsC7YqWvMiDebb5hdKztL+HJbVy1Fm4/7P/YwENa/
         OiXb9CFBg8u+q50r7IeuWFxceJx9ZAK3lSNmTjqShu7MHqZHHOB7JTBTJXP7+2kmjRys
         528A==
X-Forwarded-Encrypted: i=1; AJvYcCWWAdIlDkqD54g82o5kcjJua3y0hHFEksTmZtpoWkgLsQagMIZECaDKptPtg6vA0S3WyAshCmydz205Oo81h/HpSwEdNHutvA7iHEmtBg==
X-Gm-Message-State: AOJu0YykmVPiHj3teJn1OrSGTBMQ5Vgqg9GRQM0B4Ct1671QIVJw2wEW
	4t867+z1yy/dG54vLtEBP9Ew9d02HKXix6H366zdwLVd6qaeOgt8EaYyFhyvfB0=
X-Google-Smtp-Source: AGHT+IHz8qpXANHsae3i8Q5A+D6UOl4PLXlDcWGKlIA/MDSlr9/MG2Ra1tOuRseK9QfQDB2/EAwOaw==
X-Received: by 2002:adf:e68e:0:b0:341:8d8f:75c0 with SMTP id r14-20020adfe68e000000b003418d8f75c0mr677365wrm.49.1710845080477;
        Tue, 19 Mar 2024 03:44:40 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d4d45000000b0033e03a6b1ecsm12029459wru.18.2024.03.19.03.44.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 03:44:40 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/7] arm64: qcom-sm8[456]50: properly describe the PCIe
 Gen4x2 PHY AUX clock
Date: Tue, 19 Mar 2024 11:44:26 +0100
Message-Id: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIps+WUC/x3NTQ6CMBBA4auQWTtJy694FeKitoNMFJh0wNQQ7
 m7j8tu8d4BSZFK4FQdE+rDyumTYSwF+csuTkEM2lKasTWV73FZhjzpfU2NwF90iuRnFM6FFmb7
 o9oT+/cL6UTW27TvThQA5J5FGTv/VcD/PH5284G16AAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2238;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=a/bwYUWIjwUmxTcm9I0DfFrljEfMli7VVrDpFj8e/Ug=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl+WyU+sT/DvItGJ+V7IXg4GhyLVyW35+3Ua+0z8XQ
 LBk3mXuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZflslAAKCRB33NvayMhJ0VGQD/
 wLV5QxEEuIyNN/JuyNE6NPWj9u9NEDef0G9Sjun98THGwaEHf5bm9VzYKTdo1Yz7+7ubyZq1xEtSXG
 bkY942FH2PYJQxRq7wQXPGrVwDcHdPr8cou3gR4/kW4Sqo8lmyTiteK0YctBkEwqmncBtC2vEuLun+
 mdItkdNWbdqM+QGpVpfTvD5/SlMBgRjEGH6uSTGaxiU5liulUwyW9cRgemJJggypmIsgd0g21v/wQs
 w0lsnxVKN6CV65fTuPY/h218xN034t4PKBr3JqS2kSIrVJxkaZN9tRMvsyvUyzvJrAyRpjPtItZSTr
 NMQCEpAxmtIsi40q7a72QS5faJ1KVfX80dYHcI5pemarB6YL3ZFUv+TfChUWSpHEJFFCB/1pZNZ7O9
 kyhTxAE8fDTfYoweTUXm+1q6e9UYMcaHbT2WoggVM80DQpFhSQ99l2xxTm5HQWiKLQccbNkMZUfvn5
 3TKMzQt4WQVezdWifyG1ydUphu7M7zb55bUpxnflJ+fL9x63Mpc4lFuNJuzkl/5kmAbP0XjBsrA0P4
 DyfQtGlAZccDUDWqGvVXM43l0yyuRBHlrBfVjMuhS9Vh5MgT6EDlIati2deDERlaExCq9SUO52OYrw
 iPdD+3uL+aTpZ9X7E9MzkpLnz2zijfZNjbJ9zIx0D1UQju00Qq71gN3WaDvg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_034457_371770_7D1A4F98 
X-CRM114-Status: UNSURE (   9.92  )
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
Neil Armstrong (7):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document PHY AUX clock on SM8[456]50 SoCs
      phy: qcom: qmp-pcie: refactor clock register code
      phy: qcom: qmp-pcie: register second optional PHY AUX clock
      phy: qcom: qmp-pcie: register PHY AUX clock for SM8[456]50 4x2 PCIe PHY
      arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
      arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
      arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  27 +++++-
 arch/arm64/boot/dts/qcom/sm8450.dtsi               |   8 +-
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts            |   4 -
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts            |   4 -
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts            |   8 --
 arch/arm64/boot/dts/qcom/sm8550.dtsi               |  13 +--
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts            |   4 -
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts            |   4 -
 arch/arm64/boot/dts/qcom/sm8650.dtsi               |  13 +--
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 104 ++++++++++++++++++---
 include/dt-bindings/phy/phy-qcom-qmp.h             |   4 +
 11 files changed, 129 insertions(+), 64 deletions(-)
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
