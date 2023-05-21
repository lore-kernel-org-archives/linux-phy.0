Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50038C77B7C
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 21:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uYo7uS/GLsM6lMo3HL/+xj0egMPhK2t+mWnqQ5VfJkI=; b=zta4XYoZHWRohU
	lrFjB076+yjnJTlP7IXHch57PhDpcdZDyNvjuoE/ZTQPAkIFlbZ6gYeW041CRmAS3S/gu6qh/cVwZ
	04vPfogURvS2+cetRHC6HtsJHsXbDBxCSeXjRfaDxwFrl2J4oQo6YZhr4VXPLQwv8+IE6oCQaxInW
	b9lVhDw3oRE47hTdGjY2Q28YQo7CKfYABolU7qhMOdRujE5XCQnwpA42luon4VH8ws0Psemrv0iIo
	OpQS3Lsew18TkZK1PyyaaOBf0dg2cp9VzU8rtgmsIKkJ1j+f7kUSg8FcqDr4pDKxaypMsIVcMhpZT
	BMeEZjuu/diiTWnWTtyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qrV-004isA-33;
	Sun, 21 May 2023 21:45:09 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0ppA-004cv2-00
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:38:41 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4efe8b3f3f7so5873242e87.2
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684701515; x=1687293515;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lNg1WeNQ9Ub/LGCok7PDL9jQiPuqRPP/v7XNngjKdkk=;
        b=K7MdvYGjb5o13NYA7KJq2wJg4Ve1lhYZrLYjIXYLaEIkG2I9yW7DM3qDBqKQWcQ6Ot
         4opLLJuLi0LlShrDNl057kWBgJK4mPnL/+LjB7GrzBlZYesYmEYP8VEu/Zk6XQv68YBP
         OPMLUvorNwp0YF8HCWWU2TMkW6KdNINfIgy9VYCbj9C7uDZEuS2EledyvkldbnpgYeSU
         XbE8o4pF18/xg9ZEuXtudQWUTccLbUvjLLGZbcJfBCXcEnPPMrVUGQpSTJ3X9Y7uyewh
         y3SAZY6QBysy5qa+4a9TobrwCFvzj0b2Ir999HOtasBPQbo5N9Qg0fobNZ1SZS5hUtDI
         fhGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684701515; x=1687293515;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lNg1WeNQ9Ub/LGCok7PDL9jQiPuqRPP/v7XNngjKdkk=;
        b=ce+TDLDqT/nhKHJZ9KUSMZ2c0mgX7SNkh1LyAxctcYNTJpMDdQcwdfp6YBhkhpjDKO
         x7q02M5jUZsR26Fxo6LeM/LeLNugYhItBmzwNLdx+Y+zaJg6rariusx15XW67aWPjlK7
         8sI2Hgi/Uq3LQdvs6hX4G+KCAfqPHzI63Z7Op4uVznxz8ymULZ8tF6P4AA/b83+X9u36
         81Sm3uxm8NfLQ4JXXHNS91g5IIFot0i2F89YekMLhAMmhwRaD/dvHuWn9MNaCuIlK5zm
         tkXZrAxb4la57QSlszt1KAjIpCmo8cqlh+4ZzoU5FL9/O0K3SwAHGDvVacqJ7Ku4gZv8
         IQCQ==
X-Gm-Message-State: AC+VfDykzh/bPrAtuMFd37QAZtOFW6gCJlEFXzOwOZUBjFj5x6v0GWKh
	hqABaR0pAQE7PGkOnW5y32g22g==
X-Google-Smtp-Source: ACHHUZ43B2Rl3BBoautfRXMze15+kdn5h9wpOGqjJ2oq99qum7xkWbnpLEPTRxq8Y+4ElhGjsYD3cQ==
X-Received: by 2002:ac2:5927:0:b0:4f2:61c8:fd0d with SMTP id v7-20020ac25927000000b004f261c8fd0dmr3094203lfi.48.1684701515346;
        Sun, 21 May 2023 13:38:35 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a15-20020a056512020f00b004f3886a63d1sm718894lfo.298.2023.05.21.13.38.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:38:34 -0700 (PDT)
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
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v2 00/11] phy: qcom-qmp-ufs: convert to newer style of bindings
Date: Sun, 21 May 2023 23:38:23 +0300
Message-Id: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_133840_103400_1EA335A9 
X-CRM114-Status: UNSURE (   8.48  )
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

Reviewing several patchsets for newer platforms made me understand that
having two styles of QMP PHY bindings causes confusion. Despite binding
documents having notes telling that old bindings should be used for
older platforms, it is too easy to attempt adding new platform with
older QMP PHY binding. Thus let's have just a single documented style of
bindings.

Changes since v1:
 - Split large patchset into smaller parts
 - Rebased on phy/next

Dmitry Baryshkov (11):
  dt-bindings: phy: migrate QMP UFS PHY bindings to
    qcom,sc8280xp-qmp-ufs-phy.yaml
  phy: qcom-qmp-ufs: populate offsets configuration
  arm64: dts: qcom: msm8996: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: msm8998: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sdm845: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm6115: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm6350: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8150: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8250: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8350: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8450: switch UFS QMP PHY to new style of bindings

 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         | 244 ------------------
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  48 +++-
 arch/arm64/boot/dts/qcom/msm8996.dtsi         |  25 +-
 arch/arm64/boot/dts/qcom/msm8998.dtsi         |  16 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  17 +-
 arch/arm64/boot/dts/qcom/sm6115.dtsi          |  17 +-
 arch/arm64/boot/dts/qcom/sm6350.dtsi          |  18 +-
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |  20 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  20 +-
 arch/arm64/boot/dts/qcom/sm8350.dtsi          |  28 +-
 arch/arm64/boot/dts/qcom/sm8450.dtsi          |  28 +-
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  10 +
 12 files changed, 112 insertions(+), 379 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-ufs-phy.yaml

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
