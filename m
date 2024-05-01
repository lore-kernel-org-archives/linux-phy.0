Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 275A1C4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 16:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h6LHzg2Oc7E/MaJ89Zj7xLyWI43AioCRwrYnIULuIlU=; b=SZgpuqpS/aKfID
	7OLfaH5zirJe2SDIT871bEHsJgnXJIUz+7URB1ddaS9LELR1i8hvlVBp+orIiAW1gtXaL2/6qItAC
	gxG0f1uCe0sVANSeJSoKlsP5dnusbOX1spjDkWxaygep95TE2dpLYTqWHypTLGCn3ppqCEK6QTNmI
	kqr6OLZEGaTe0E+x3vjyWY3XFdLEPs9HH3M5tRUkhRe3V2IWrzW2wgwMDYzLtz2A4nNBo2J/Suooo
	RzpTF3LPTSJW/Ganst5I5b1trXvVrO8+p9uWUxhk4HUbe0HSHRPWQYptjObzLDmxd934lnlBL0ljQ
	R9TR180u4ztbLB8oYCEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgP-0000000A7An-2mZz;
	Wed, 01 May 2024 16:19:49 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgM-0000000A78d-3WVm
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 16:19:48 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2d8a24f8a3cso85973641fa.1
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 09:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580381; x=1715185181; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9MplgDZslzUh6Bxa/uOXel4exzaD4mou494VCSMeydc=;
        b=JNoRWqgW5AwOhq4cUYY6zLj6PLEEAJW8yshBHNsNWtU2jCN4N5OLEKUGrFVM1wmf3Y
         l4r2kMENuQMOkQ5VdiczwzBBiFDLwUwlFRKV87WVUFKunF9ViWk8JbyJWfA/PrjaZMr0
         BokrzqlHdcUnwjAvkAfYOL7oA6uqcQKtJcUzWia71sBzMFHaNIh9TThBRVkhBZeJQFId
         KUJRB6l/w2W1adZNZxwLXZz7rmpF9fKZewFwsv4Jo8Nmtc/hTWVyxmW9yZ+y4c7dqw/e
         B3NqU39POH8BrreZN3RB5Wl47kFIZln5EciZ3fbHMP2RO3Z0js3u6lITvDO71Fnqe2/j
         /nZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580381; x=1715185181;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9MplgDZslzUh6Bxa/uOXel4exzaD4mou494VCSMeydc=;
        b=DmjCBQymbz3W6I2TUp2dO1YvE8KlQnWb9jPdgeD10o3G0o9iAhADSQhhsVirxyX1mT
         i1SeJCM0IvQz/W4euA1DAHZeRa6EvoGF+9urjOmZqI+ILDLEdvkWxcJtCiYcoQQfzRzB
         Hk/So+zBvD/gX/I1MmajK3a+llL4FTPo0nNo2MPwNDxTANRDMMBXcRuxkWztHCH6WN9f
         bY+0/u3Kf5SXHVZQ7ASwrBbJ5AW8/w/AzHOo+eBWfDRLFT63oCoZEGs42NNMis3qCSyO
         kLm9zU0IwSJV2YjX+R67uqIU5yur2VA70E8R3iTgeLLdL3WM4Wd8JNF0J0TodiR+WQFt
         gKFw==
X-Forwarded-Encrypted: i=1; AJvYcCXMy6VinxrngV9zWpxkId9P/ffoTXY9X02hVXqSss5fNOoBmIDYuP7kunDBman7vc8ADCjXdzoxhaCdVl2ibSsU9Vne7TrfVmOqx7ZQZQ==
X-Gm-Message-State: AOJu0YwZBjwEDL/+hd+gObCNbuYhRjREM7QWHr1u+Md+v2F3FBMudmWo
	uB01ssnrUalYjxUlLeyq0qn0RoVXT129leQs9u0YuYPTeuJ1Uxwx5dsELpK5Hp0=
X-Google-Smtp-Source: AGHT+IHKgc6t8AxmFEjtGVZj9pN8xREsNV095xi7ULMS3j0aWhAOjeM9gooTZzTH17vCV6aP1Opmgw==
X-Received: by 2002:a05:6512:1327:b0:518:b144:9020 with SMTP id x39-20020a056512132700b00518b1449020mr2027238lfu.61.1714580379137;
        Wed, 01 May 2024 09:19:39 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 00/13] arm64: dts: qcom: fix PHY-related warnings
Date: Wed, 01 May 2024 19:19:26 +0300
Message-Id: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAI5rMmYC/x3LQQqAIBBA0avIrBtQE6yuEi2kppxFaQpRhHdPW
 j4+/4VMiSnDIF5IdHHmcFSoRsDs3bER8lINWmojje7xnMOO0T+48k0ZO6OsdLZTpFqoU0z0h/q
 MUykfrN8er2AAAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, cros-qcom-dts-watchers@chromium.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 David Wronek <davidwronek@gmail.com>, Andy Gross <andy.gross@linaro.org>, 
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>, 
 Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2227;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Hial4NE0MI1OOXFbCphdaD+gWgv6Gib1/wJMCCUVjAg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuYC89DTsZQEAbgf6DFMcHa/L9r+P3mo6w85
 3oQZsH3C+iJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmAAKCRCLPIo+Aiko
 1TDyB/9f7iKmEdPEB6C4kT/zJ99cFcuSZWzOx8+V9w57WQeiBqBFY/bkqVzzkUaHdX2zTNqt/da
 rZb8oWmlxnGTGMsJSvvPe0U8Of5vl6vVQLAPOWbzUDVKxCw91eB4zHFGQWY7bISTTp/bRWpmUAG
 38Kqx3/U8rE9DYFh/igu5mgE+JuCgTofGQN6Gs8LnoOH84oDZlPqSq0Z6O1fRdo2j/gRGKTaGEd
 rkPi5Ddeu8dG1cpWzUqaT0JfDvYl5wbWdvpgKIMbhvM5UHXDOUGkiDyuS4evqZiZGxBLDeK2VQm
 57ufOYQWbUaDu+toQRoL7KHHeKouL+AOsbWBZyv8q4ua3IxY
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_091946_926008_ED4BF7E8 
X-CRM114-Status: UNSURE (   7.41  )
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

This series goes over Qualcomm PHY bindings and device DTs and fixes
obvious errors and warnings reported by dt-validate.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (13):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: fix x1e80100-gen3x2 schema
      dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: fix msm899[68] power-domains
      dt-bindings: phy: qcom,usb-snps-femto-v2: use correct fallback for sc8180x
      arm64: dts: qcom: sc7180: drop extra UFS PHY compat
      arm64: dts: qcom: sc8180x: add power-domain to UFS PHY
      arm64: dts: qcom: sdm845: add power-domain to UFS PHY
      arm64: dts: qcom: sm6115: add power-domain to UFS PHY
      arm64: dts: qcom: sm6350: add power-domain to UFS PHY
      arm64: dts: qcom: sm8250: add power-domain to UFS PHY
      arm64: dts: qcom: sm8350: add power-domain to UFS PHY
      arm64: dts: qcom: sm8450: add power-domain to UFS PHY
      arm64: dts: sda660-ifc6560: document missing USB PHY supplies
      arm64: dts: qcom: msm8996-xiaomi-common: drop excton from the USB PHY

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         |  1 -
 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml          | 16 +++++++++++++++-
 .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml  |  4 +---
 arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi      |  1 -
 arch/arm64/boot/dts/qcom/sc7180.dtsi                     |  3 +--
 arch/arm64/boot/dts/qcom/sc8180x.dtsi                    |  2 ++
 arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts      | 15 +++++++++++++++
 arch/arm64/boot/dts/qcom/sdm845.dtsi                     |  2 ++
 arch/arm64/boot/dts/qcom/sm6115.dtsi                     |  2 ++
 arch/arm64/boot/dts/qcom/sm6350.dtsi                     |  2 ++
 arch/arm64/boot/dts/qcom/sm8250.dtsi                     |  2 ++
 arch/arm64/boot/dts/qcom/sm8350.dtsi                     |  2 ++
 arch/arm64/boot/dts/qcom/sm8450.dtsi                     |  2 ++
 13 files changed, 46 insertions(+), 8 deletions(-)
---
base-commit: f0282d40f30868d986d9c94201949e5d1d44acc9
change-id: 20240429-qcom-phy-fixes-84170a781e13

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
