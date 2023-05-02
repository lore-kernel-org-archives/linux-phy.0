Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 996FCC7EE25
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 05:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z0h03E7QkZ+I/h9n2Knk1jus8pmU5MMxmdXFiAJcFxA=; b=q6YPfB2x6DkafE
	RszXZfbNmYGA6Wpn6yAOkTKzTKUYWa1Pw+1Ew8wfrYsZx9zVrU4yDhMKg4LmE6H0kc/5npDk6YLZW
	cXHOYAdmTRPf4xSDwFTSTonoXKH2XKKNNbWuav5eVtmOsvmdCPQLMJfNjzcK1mZ1xEEWT7/TknrXJ
	QrV9cSOpE2+E9lOR0pniy+YHXSkocPaFOYmygc+QUaKGVkRYKDzK3ib4ipfm3eNqhj0OTiQr8DOSQ
	Pb3EhatK62Z5Q8vKIlxCp4FiUtWGlZidjKOwW3h0xZHKtBN4mtuaXDSd3U5Ai8PPGy9GsiOkrxGLp
	f8gAC413+LPcvpzzH6eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptig9-000DEV-2L;
	Tue, 02 May 2023 05:35:57 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptig6-000DCi-0h
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 05:35:55 +0000
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-51b661097bfso2227604a12.0
        for <linux-phy@lists.infradead.org>; Mon, 01 May 2023 22:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683005748; x=1685597748;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WalWNBbqLP5+H0yr5WCCK7jHS95uZC4dq+Re1T637XE=;
        b=S6dGmVSsgrHaEr0TUBQULNWA571DsS9PU8wYJmxTdyAfFKX5QzPWj2G39ZuDwKD/dZ
         CpW/WrbXbGM7nss6yYYrNrjaWa+hlMdP+Gr04koV0DYIqUDXDbqnV85ODGmAuEupk5uN
         DEk4JmyqMPXutFY1NLeUx2QFZPM1MckjDc82OOHnNWHQ+IfzHCbS/mISMopMzzaZ5Ley
         /+u0dqewctMvnkSqz9vRCmO4IBkWt7yJiBrb5ROnqhe38hES6+bkB1XfRQQBbrZoe9S6
         JiDDLZqGBWtZVDVgxBIZA9jmW2arcgMqahWBFdvkH/GmHBQriD1LgK4dACkw0bVH2Biu
         0fjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683005748; x=1685597748;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WalWNBbqLP5+H0yr5WCCK7jHS95uZC4dq+Re1T637XE=;
        b=g6Nz4EMY+/YODiu8xabbaridFeCXiIoIdZNFIm7Ii84QDAhmsZYDsySOlNUtGEO1WY
         hEiLPDV/vDWEKI1qW6SVqKmF+Ze9oV9Va6c0mH2C8ANUhFOG8YW5ovh+lnGasksY9icg
         mHr+RlTBw1olXkOuVr5GgV0aVzm2UTWaLaemYGaHXqIdIY1odP6mTn2/IdDQDaYC/OaZ
         8r2WF9oa5N3lZ0whucwXHsH8Z2VJPOad4jxr81SmkTEsILWd3nS5HvI403eYKCATXIM6
         Yp4IboFvfbz5faampDUkMPQTaab9shXPfzUl8ZAYQ2GO/8PpD+1X9Vk31nH4qmvqKRgy
         hdIQ==
X-Gm-Message-State: AC+VfDxq00qZcqH2nvdtl6f+BOPCwdRujyFIKz0rV1CNJwc/dkv7sMhB
	OITYFC8yV8A6z5o7EFij08Qysw==
X-Google-Smtp-Source: ACHHUZ74rhSOrYkhGkK2AaUtssN912iRZKoGc466lxGT7AqULsRjX6hsaMu1K2GGcRE1jlHuRsSc9g==
X-Received: by 2002:a17:903:1248:b0:1a6:a6e7:8846 with SMTP id u8-20020a170903124800b001a6a6e78846mr18260120plh.40.1683005748053;
        Mon, 01 May 2023 22:35:48 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3b:58fa:39f6:37e1:bb9a:a094])
        by smtp.gmail.com with ESMTPSA id j12-20020a170902690c00b001a6a6169d45sm18870369plk.168.2023.05.01.22.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 22:35:47 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: agross@kernel.org,
	linux-kernel@vger.kernel.org,
	andersson@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	dmitry.baryshkov@linaro.org
Subject: [PATCH v10 0/4] Enable USB SS qmp phy for Qualcomm SM6115 SoC
Date: Tue,  2 May 2023 11:05:30 +0530
Message-Id: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_223554_379216_05352554 
X-CRM114-Status: UNSURE (   9.85  )
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

Changes since v9:
-----------------
- v9 can be seen here: https://lore.kernel.org/linux-arm-msm/20230501192432.1220727-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Dmitry on v9, regarding register size
  and pcs_misc offset handling. Also collected his R-Bs.

Changes since v8:
-----------------
- v8 can be seen here: https://lore.kernel.org/linux-arm-msm/20230410171010.2561393-1-bhupesh.sharma@linaro.org/
- Added driver change for new bindings used for sm6115 / qcm2290
  devices.

Changes since v7:
-----------------
- v7 can be seen here: https://lore.kernel.org/linux-arm-msm/20230409200934.2329297-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Dmitry and added "pipe clk".

Changes since v6:
-----------------
- v6 can be seen here: https://lore.kernel.org/linux-arm-msm/20230407061122.2036838-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Bjorn and Dmitry and dropped old bindings in this
  version.

Changes since v5:
-----------------
- v5 can be seen here: https://lore.kernel.org/linux-arm-msm/20230405191633.1864671-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Dmitry and made [PATCH 1/2] compatible with his 
  'split away legacy USB+DP code' series:
  <https://patchwork.kernel.org/project/linux-phy/cover/20230324215550.1966809-1-dmitry.baryshkov@linaro.org>

Changes since v4:
-----------------
- v4 can be seen here: https://lore.kernel.org/linux-arm-msm/20230401154725.1059563-1-bhupesh.sharma@linaro.org/ 
- Collected Krzysztof's Ack for [PATCH 1/2].
- Added more descriptive commit logs as per Dmitry's comments on v4.

Changes since v3:
-----------------
- v3 can be seen here: https://lore.kernel.org/linux-arm-msm/20221215094532.589291-4-bhupesh.sharma@linaro.org/
- Fixed v4 as per the downstream driver code: https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/bengal-usb.dtsi#296

This patchset adds the support for USB SS qmp phy for Qualcomm SM6115
SoC. For the previous versions of this patch there were conversations
on irc as to whether this was a 'qcom,usb-ssphy-qmp-usb3-or-dp' or a
'qcom,usb-ssphy-qmp-dp-combo' as per downstream code and hardware
documentation.

But after a careful look at downstream dtsi (see [1]) it appears that
this indeed is a 'qcom,usb-ssphy-qmp-usb3-or-dp' phy and not a
'dp-combo' phy.

[1]. https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/bengal-usb.dtsi#296

Bhupesh Sharma (4):
  dt-bindings: phy: qcom,qmp-usb: Drop legacy bindings and move to newer
    one (SM6115 & QCM2290)
  phy: qcom-qmp-usb: add support for updated qcm2290 / sm6115 binding
  arm64: dts: qcom: sm6115: Add USB SS qmp phy node
  arm64: dts: qcom: qrb4210-rb2: Enable USB node

 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 27 ------------
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 44 ++++++++++++++++---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts      | 24 ++++++++++
 .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
 arch/arm64/boot/dts/qcom/sm6115.dtsi          | 29 +++++++++++-
 .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 22 ++++++++++
 7 files changed, 118 insertions(+), 34 deletions(-)

-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
