Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64687C6FA8F
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 02:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DjPRXjmrWN57ME+hZJoMNFDMHasvkOlDRmLIK/AL7ck=; b=kmhUCJ3NWxl0/j
	Lq82YjLG0IEyq/gdogWBoNBP0K2+ecRWvZ5TboX/P1NsDNvmM32rc04fewiIVX3aAWVVteOdL7bkD
	ha4WqSkmKeMliuTLRZyhseqak5uBpsFi9MjwqH7PV5rxSlEToZUZXW2Kf8cSHfV4McMNaRzAxY/Yx
	vWghe1KHWv2L01WOx++vXbgM+xPV/vXYIHUotKRIgBNhLYe08mzsm0VgBZDwYq8XY20Z36K57dM3v
	D21NvMxUu+y2TkRcG5GFNHUOxJC2hDiAT3HOvRDRlZLS4PCH9ZTpYe/Q9+15EOnSVTdgzGylC4d3X
	24CNgQ4fsztkeHdRpDqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbB84-00Cgul-2w;
	Wed, 30 Aug 2023 02:40:24 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbB81-00Cgpb-2U
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 02:40:23 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-500c37d479aso2065668e87.2
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 19:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693363217; x=1693968017; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TYl22KxB6jGXLk1gj90BJzrDvJpaGX8RVj0kioZtfHs=;
        b=rZC2UJbaj2t5E/9Lc+Z6/MMDx+FMtlImOe7uZeZcjog5pwCF65aAZ8MqTUQy5vSMyt
         SWqcrgwTpPjBiK90PDZoZG/NyGYfoHynfxXdni47+opUQq4vQnI3mOsYhjPXii6mnadw
         vTe0WOyQFavPmFya+/eYWvCFCBAK+WexycaBvfrWqmN+/JUQhwEEtTz08LJV4sV4x7AT
         /F5QFwGcDj9c+nnr6p8Cqe7qJvrutYhxl1pts0Hv5VlAZMagu07QxviXid2iytVQgjxR
         Fkm0zVkMbvRyJG5jKP5mEcxqsVlHrx/eyCf+yyUCypq7P+vs9EH3jBxXufauVQprpEC0
         y2Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693363217; x=1693968017;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TYl22KxB6jGXLk1gj90BJzrDvJpaGX8RVj0kioZtfHs=;
        b=K0Wh/K8WMdOHasKtAcnjWb3YmfymbybYgWG9VNnCCfZkJZWTMFFSpXlbVyaiIMJexd
         J6BOqfbeFIWR9mOlF+HWv9uar85tH8fZ6aPUlUan4kXSuN+wOCJiMkurWrLIZLuAn+rE
         yYJXj39o+kznyVRe38t1e44JKkKHQjhfAfBx4cRdGutt+s+NiDT9KSC6umPyX5C/nD6c
         ZBzw2Hqt0UiKCqpSIf66VDrH5RN67ncxls7oQAJgz5aBO7hgNnV9Nlk+z/I+TyuTUHF1
         9KcA0Oqq3+lSjOTIVTOO25yRdKEItHsgtZ/XA376rtrBjKjksPbwWp72Z4VtZXMGOY5y
         1lpQ==
X-Gm-Message-State: AOJu0Yxs5VrchF0B1+znFOx9y/TZHnnzJ9plfEQ3Xb9YestjILxh9ks/
	vhFEEVZWb7Cwo8N5bpmlEt45vw==
X-Google-Smtp-Source: AGHT+IFG7M9utsj2NkARucjHfHCoDgpRvP30BdMWVw/RB4/vr0a9l+pK0NT1SMrWbu8mxGVpXpaprg==
X-Received: by 2002:ac2:4184:0:b0:500:bf38:2d7c with SMTP id z4-20020ac24184000000b00500bf382d7cmr410768lfh.60.1693363216925;
        Tue, 29 Aug 2023 19:40:16 -0700 (PDT)
Received: from [192.168.1.101] (abyl195.neoplus.adsl.tpnet.pl. [83.9.31.195])
        by smtp.gmail.com with ESMTPSA id w7-20020ac254a7000000b004fb99da37e3sm2183878lfk.220.2023.08.29.19.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 19:40:16 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 0/4] EUSB2 repeater init sequence override
Date: Wed, 30 Aug 2023 04:40:14 +0200
Message-Id: <20230830-topic-eusb2_override-v1-0-ab23825385a8@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAA6s7mQC/x2N0QrCMAwAf2Xk2UDXSVF/RUTSNnOB0Y5kG8LYv
 1t8vIPjDjBWYYNHd4DyLia1NOgvHaSJyodRcmPwzg/uNjhc6yIJebPo33VnVcmMRCHk8Z4oXHt
 oaSRjjEolTS0u2zw3uSiP8v2/nq/z/AExXG+BewAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1693363215; l=926;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=CfJBIElEn8UI8i/wAQYUM9vwf/SxwqhC6FM1s62h6D4=;
 b=9pCj0G48P0rsXKvDwG5QSQkgHWdFXZzPaJUDmsNer/zmmDH30ywNwYxecNhmxl2lY2j7YL8J4
 GK7026qV+BxAjebkEXulloRHYo2XjVfml0HA6VQlYMHK11Ec59fsw5k
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_194021_884680_D3EABAF7 
X-CRM114-Status: UNSURE (   5.20  )
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

The EUSB2 repeater goes through a tuning sequence as part of its
initialization. This series ensures the tuning is "clean" and can be
overriden for devices that need it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (4):
      dt-bindings: phy: qcom,snps-eusb2-repeater: Add magic tuning overrides
      phy: qualcomm: phy-qcom-eusb2-repeater: Use regmap_fields
      phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs
      phy: qualcomm: phy-qcom-eusb2-repeater: Add tuning overrides

 .../bindings/phy/qcom,snps-eusb2-repeater.yaml     |  21 ++++
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c     | 135 +++++++++++++++------
 2 files changed, 121 insertions(+), 35 deletions(-)
---
base-commit: ae782d4e2bf53b0b642ae860794f7a39470f995a
change-id: 20230830-topic-eusb2_override-aa66df9ca641

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
