Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A74E9C3DA6E
	for <linux-phy@archiver.kernel.org>; Sat, 23 Dec 2023 11:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H6fVpfz+YLTApP3STUIli3PG0oKDLfWOkXSD7/aPFUU=; b=nnYBpWEyB6h21K
	IV8pHbcJU9bpwfkbwIaSRmsau5nMhhojwkIvkHuZbEOBB00k0kRLNEMCW2KUHLGEnY/ICQRmfP2D6
	wYJPb10+v3f8+lkK5QLJRy3rWHYEax9BjI3bzinympcco25LaY3nzt8+19epmHm3po2dksFqhCcfn
	i+NH/41YRiVpqh0oy+3lxAjg4GrSZrr3PqIkyeXKUJfZo/pNSqAsvmnMICrgtjKXQHFT8LIlqvUow
	3gQFPu0xGNO7AruJoeiKnmKFhdnwF91y1Zuf+CcTKeLXELICLRX5SLH0iU/uN7EV/6rzRu051X3ph
	UXDaKYp15Vi0/fPBj/7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rH0ba-007rhO-0g;
	Sat, 23 Dec 2023 11:55:46 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rH0bX-007rgb-0e
	for linux-phy@lists.infradead.org;
	Sat, 23 Dec 2023 11:55:44 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-336897b6bd6so2322054f8f.2
        for <linux-phy@lists.infradead.org>; Sat, 23 Dec 2023 03:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703332541; x=1703937341; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vPGk0HjLiKQ+CxO6emi2O17JwxG8APTMJGWVOcTcvfQ=;
        b=G7bLsd3HSJCRaMOLIfgmF3tTn+nWPs/Mrz/n51M7D9s4gx80uJvTWPHyw/ia4hc03R
         V+BxmtNmgyVWRFfOyH9VrbWl7cSgJtfJCreNvCpWp+Qu7iXatiiswMksYaswhKaVGeht
         V8vE/OkqScGtYyn4AI5RskacK2bEUL+yIrNCl5o7o0yNxIDKdt+MZzqrpSyPOgj9Z6e3
         AyIRGsXHeucFkip2GIadMLD/LLBJ4DmttGmLrconbBZ+MU5VKDN94G1X6EIW3DL3j5H6
         7EipcaxxiiAUbIX+k346FBuFVO5zMMzt9Wx41qH8q6zBR6dQR3EIh0QAWTdemc3+xbXP
         1veg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703332541; x=1703937341;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vPGk0HjLiKQ+CxO6emi2O17JwxG8APTMJGWVOcTcvfQ=;
        b=a7ZxqEgfv2xNzbkYgfzksmZq4YPkZimufVmo41F/fzgpTd0RITrXQfgzrDdzgpPnQA
         GwKV80LhnGPpam3OjW28EldKwGDxBbaHs59KotoZ4bQnUnmxRi+fXFyQ4cRowZ5bOyLm
         x0QRVPPwFdO5Z0Igx85N+Vud9mykF1IIlJg0h+e/YPfxSwaS20aHrXs9IB2qBABpbX+t
         8eUsnDzhDNk5ZiFWATXmtOt8asb93vwBBE7Sy8Xv+L9UhF9iRJbciz2CSritVx67Qn6+
         9BCoL9m0ytwkr2NNo4t8xEZYfL4irKrle8P5RHcAgHXwEKXRUS5ojVylAuDFnKWZY+LM
         GRnQ==
X-Gm-Message-State: AOJu0YztH/RPryuoASPlNI3nVQmbjx/gZ4FXQhE5h/+4yGe9r4Ee5agZ
	ztFDEF34sO8oXQm9FjwKHEx5TssC/xybjQ==
X-Google-Smtp-Source: AGHT+IEY+TL616yws8qTBZ6IKKDIvFw0yhgoQ1kz8rSNxIo80Asg/yeKA23VhJS3VGagBrqFhKR4uw==
X-Received: by 2002:a05:6000:100f:b0:336:a0e2:1117 with SMTP id a15-20020a056000100f00b00336a0e21117mr671182wrx.140.1703332540494;
        Sat, 23 Dec 2023 03:55:40 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id r10-20020adfce8a000000b00336781490dcsm6351525wrn.69.2023.12.23.03.55.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Dec 2023 03:55:39 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v2 0/3] phy: qcom: qmp-pcie: Add support for G3/G4 PCIe PHY
 for X1E80100
Date: Sat, 23 Dec 2023 13:55:20 +0200
Message-Id: <20231223-x1e80100-phy-pcie-v2-0-223c0556908a@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKjKhmUC/23NQQrCMBCF4auUrB2ZJILWlfeQLpJ00gyUpCRaW
 krvbiwuXf4PHt8mCmWmIu7NJjLNXDjFGurUCBdMHAi4ry0UKi0VSlgk3VAiwhRWmBwTkL9eTG9
 b4zWK+rOmENhsogv1Gd/jWMcpk+flgJ5d7cDllfJ6uLP8rj9CqT/ELAHBVsZJrVu0/jFyNDmdU
 x5Et+/7B3VCtr/IAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1235; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Hk/a9Ag7u1CiPccqFteOJa8czWyyeAF22NOW7Iqw3qw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlhsqrzQaD++ommUEpEZ5dUZVxjtSvLm9zc0r0C
 DsnFYzt2waJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZYbKqwAKCRAbX0TJAJUV
 Vq5WEACCOItGsuunfzlThSOrDl7CA89Keed1vy28p/oxWkC3c6Sjp204+Ld0LP9d6PBZCBXOd1o
 /lSem+tUVoBhQG119cd25oxEPXJQQ0l/pRTvevEZH3QVayUOM7YvgVQRBXmc8BIUEYJ3nt0TCLd
 RNjx4mHd08q3x5f5/yxvrE3VUpWWY6Ug9mBQ1+cFcbmBGySKOLNTIqaujJOH1GBCSIE8bHpKXRT
 eo9bA7hBuPymVUjTmENow7VO88QAR1npiUAWuIrtmkTb7xq1rygd/Jch1JNsYHfF1mNnHGN9tvp
 Iszcgr0HWHsIpAX1+FY1PVfFHPTn0bMuigZ37+kE7PZ2Fgrnrqz4DGqsmBQoD2pCyWxvTS9+nn2
 jHXCHwC3sWmykaw2+4oxrN8bV3OT7dxOnJy/9I2PdbKo7qCbGxFgG4tSCAqDHAN909mL1E7U4FA
 0PeZoNMHf/zl/3elRUtClKRj79dgFy7ieUIlsPj/JxInoqUF1FxZ/1oh8zfVe9xgLCFPMY/xOxB
 l5JSv+6xWFdSy1/qd9SJqVhJHBqP6V8Glfn6FDv+8K9jkk6HpQr9hQ9c7LeamRl8DKq91c/hiZC
 MtAt1N2XOsNi0F7zyr/kNVg438Byd/NhQa6lyd5KbIZDOcnVkS5igH91mVY2d4JkXHrUa9pfzRb
 0t5/+gdmFezbxCA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_035543_274627_CB766729 
X-CRM114-Status: UNSURE (   7.63  )
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

This patchset adds the G4 tables and G4/G3 compatibles for X1E80100
platforms. Also adds the pciphy_v6_regs_layout to be used by the G4x2
phy and switches all the old QMP v6 PHYs to use the new regs layout.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Added Krzysztof's R-b tag to first patch
- Added new patch which brings the pciephy_v6_regs_layout and made sure
  all older (existing) QMP v6 are using that.
- Switched the regs layout of the x1e80100 gen4x2 to the new
  pciephy_v6_regs_layout
- Link to v1: https://lore.kernel.org/r/20231222-x1e80100-phy-pcie-v1-0-b74ac13390bf@linaro.org

---
Abel Vesa (3):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHYs
      phy: qcom: qmp-pcie: Add QMP v6 registers layout
      phy: qcom-qmp-pcie: Add support for X1E80100 g3x2 and g4x2 PCIE

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   6 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 186 ++++++++++++++++++++-
 2 files changed, 189 insertions(+), 3 deletions(-)
---
base-commit: 8a9be2a3cb673dba9d22311beb74be261f0b3f15
change-id: 20231201-x1e80100-phy-pcie-ef74adb9af30

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
