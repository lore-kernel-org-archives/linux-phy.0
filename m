Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87339C77B71
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 19:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C1wGLlclslTMNQmgSWeQ0LifkFrk0kxx60+4Fb7aAYk=; b=1zYEyfjVE7SBzZ
	du3K5V32wc/YlTca2Or4uL7RXl47C1fOTgpkJt2RtwjGniNaUY5gtwnFd/JeU8xRCRC+VH+qDtWkq
	7fBF95xZ5ge8L6nUqxt+xYLw7z4sTW9NUj2ryim0+oS48HP8Vl2UV/nJKTOVgTwAwRv0wAb3aXxPZ
	eSO4zxTBxutJlM90s2sFhQa0PGISgOhffte2UgOFh06LgKx9f2zj/ujACDgyg2ldsAPo38+oxuhj6
	8uGHtFGp40Pk2odUXCOvuVnTLEqY1oAFlkVDmqpoyYCf3TmQ4VSgJsRRyr99kbiZfpFEzXb1Mhsev
	0ii/m8TYsPojyaOdwZOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkVZn-008Qij-1j;
	Thu, 06 Apr 2023 19:47:19 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkVZk-008QhU-1Z
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 19:47:17 +0000
Received: by mail-wr1-x436.google.com with SMTP id e18so40601516wra.9
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 12:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680810433;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BHIz3c+rkfz06Sf8NSwUCq2DbSMskpnedxbRiKolYg8=;
        b=nVRx4wz4CHS1HdYP5a9u/tqYWbB6fOinyORdjhh4t5204D41HHL79oIO/CFeaT6L11
         4GTuGY/Dh+MXeL4vzy2J8Zuee3wV18Rwyc4o5h1T2msmcMh4IAGRQuAcCl3Esib/8zj0
         zdLeojELnGQ6i+GElHhS97GckQmX4pNgry4TNRtk6jifs+rlTfhEppuzdgJQZiHQGmig
         Zy0vSnkr8oHFvsDlXEMhEpfS7bBAP8OsGz6WmkUXHE4cQlW2F5uZE6mmYpctL7WNmous
         QYLqO/ct2lj+YzLGHs3tjzkjGG7qVZNRU/BSaMtGigiYZBASqpeAmD6JqzEs6iX23dSc
         dJZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680810433;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BHIz3c+rkfz06Sf8NSwUCq2DbSMskpnedxbRiKolYg8=;
        b=39mqdksqnG9UbrZTX2ncVN3C0SRDJ7HrEm4J8OyAe6ttZ/6g5b0pREn7ClaPvln6AD
         Ua7PPosDIV7SW83YyFk4wVvxuVpJMIiEczWH0tvpMbD7kyCL2di8sqAHc3+6Qz6ulXzb
         49oici+Fbjz3QkXSAC3mPYmc3c++3oZ5AFv+O31f19N4ABXa7+0Mk/B+I63kSIMiBnhJ
         oi5CUkA3bU9Yc3leDGOlEniBW0BtNw3eFhBt2XG13EenIjMwh2yq9DyQWfY/8JUN4Tnp
         bv63/LndieX4GLTkWpTd5Z3kEBV13AE5Cs7I++wPoWaAHO5ZbEGjNdkY2P+JDk0rum6D
         gOOg==
X-Gm-Message-State: AAQBX9ewq/PXppuFb0EscIvVNkUkeuJVZan8lt8G9AcJ9Eme1Wl7jPGj
	H9w5A7TYN/yLqoSf5O53j3y1dA==
X-Google-Smtp-Source: AKy350Yv8/Vi44BZfkJ1gJ8f2FGeuqH5yR48dzc/pmWlrkbe4sONzyJAbRFJhaanQgIyt8rDT7Oh7w==
X-Received: by 2002:adf:dd92:0:b0:2d4:a843:d000 with SMTP id x18-20020adfdd92000000b002d4a843d000mr7368870wrl.56.1680810433541;
        Thu, 06 Apr 2023 12:47:13 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:4793:cb9a:340b:2f72])
        by smtp.gmail.com with ESMTPSA id k15-20020a056000004f00b002c71dd1109fsm2593323wrx.47.2023.04.06.12.47.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 12:47:13 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 0/5] arm64: qcom: sa8775p: add support for UFS
Date: Thu,  6 Apr 2023 21:46:58 +0200
Message-Id: <20230406194703.495836-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_124716_527342_D6D4EAD8 
X-CRM114-Status: UNSURE (   8.87  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Update relevant DT bindings, add new config to the driver and add UFS
and PHY nodes to the .dtsi and enable them in the board .dts for
sa8775p-ride.

v1 -> v2:
- order new compatibles alphabetically
- rework the UFS PHY bindings to accomodate more clocks
- add a comment in the .dts regarding a non-standard clock used
  by the UFS PHY

Bartosz Golaszewski (5):
  dt-bindings: ufs: qcom: add compatible for sa8775p
  dt-bindings: phy: qmp-ufs: describe the UFS PHY for sa8775p
  phy: qualcomm: phy-qcom-qmp-ufs: add definitions for sa8775p
  arm64: dts: qcom: sa8775p: add UFS nodes
  arm64: dts: qcom: sa8775p-ride: enable UFS

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 26 ++++++++-
 .../devicetree/bindings/ufs/qcom,ufs.yaml     |  2 +
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts     | 19 ++++++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 58 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 38 ++++++++++++
 5 files changed, 142 insertions(+), 1 deletion(-)

-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
