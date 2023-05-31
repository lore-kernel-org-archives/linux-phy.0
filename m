Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C590C7EE23
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 02:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zaBWAziZ3cbIQ4W/diixvfXRzw0+oQr2OfRkg8/UpTY=; b=Um8slR4FqdzkrQ
	LTJiWJPfDlT69/jvonT+hfmxxKlPWcRtCka+oKB/94njHcRptvkds5CrHSviI2OrUgMgjKw//HWuN
	UBxXfTjegTMwRwod83JfgD4hcTKTbU6E6liEchrEZ8WGuGIBoplsR7BepI2BlbcHUIsSRBDrGbY25
	tmjNhhgMOJZbVvkTVJcC8PyP85bigo4qzAF33XMFxf+3UF3sozfOKfVmqKQooHoaxaHYrX58c/aNE
	hlj4y+4B02AqxDdhtXUG/BKUcO9dfbA7SOTNDDawx3z8WiqhTMkjsSPNef0j0tyLM4HcXfhkBEQCX
	1HA1ee71QMtS6EQesTSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4BfJ-00FoAZ-2T;
	Wed, 31 May 2023 02:34:21 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4BfH-00Fo8v-0V
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 02:34:20 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4f3baf04f0cso5907030e87.1
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 19:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685500457; x=1688092457;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8hTyjGZ6AL0yA0rgfhYU4TsPoXNrzNumNaJEOJx+Ur0=;
        b=jK+2S+R8CqfU9FneCHCZ7GGe5jeac5TqTHTQE3sQfTWEV1ujxTU51imTOye1Tnl9vb
         mEMriq3PZpEyUX/rgjJYVYy8cgzsyJ/UozBjdPzAGDvRsXee0xHsWdL0wM/AZlc+3t/D
         g3a0EPcOMvQlxN571CFT9hA456ekPLlMBUSHEhapo4EGhWDqznTx7Zhozpfv7B4nG+YM
         734RxbGN5pMzB+YOPPO9npZtOMI12VQuWU22bpUe4hlcgLaDoWRPDJVqlViSCQkYwbPZ
         adaaREJPyZSlsLBykdXDW5YJlgXpfLCgv8ZKKYV2G2c6g0RDXfhUWjASqTNRxznqI60D
         IzWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685500457; x=1688092457;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8hTyjGZ6AL0yA0rgfhYU4TsPoXNrzNumNaJEOJx+Ur0=;
        b=CTy+El1P+mQZyUD1meuyEUBN8gbTpTEZnc1bvifDwitSqsRjtTlPsaIHa5ZvvkQLd1
         VZUOjPhtpeq4NCTetAsZ2vA2Fea1T+ROgH0Voptr60t1KpqNzbsvLsp1VWfjxCXzbgtQ
         K3HNgYrLF2C3/dDSqsEy6hHrC3M00mJ9JHWZAHCsXWHL5fD7aR9h/2/hJTvlpEIS0IZ0
         rbE0Jy37+hhzFpKleSPSankC/w3Ej2M3CgyNUnAO7bDFC4DnXgFz8ejqVKeYu9+xPhTp
         u9QMftAQa+GXy9utX6qVuBBJySyF8GBl1HzpTOOBe8X9oawRG/uXa5iMopaXeiJiZ1i3
         1N2A==
X-Gm-Message-State: AC+VfDxpHsR/Dbj36wVjEPK827dUfxCAbIgVFNhmCNLu7NVpEIu3qqC/
	7DFnE5jKYmGSisZ5IFVHkDi/Iw==
X-Google-Smtp-Source: ACHHUZ6xgtJ/m1ezI+vUkAGSOWphS4aRy5+t4HwdNbQyNIJ3lfr6ksI6qsM4MWX1jMCtwXDxgKQq5Q==
X-Received: by 2002:ac2:532d:0:b0:4f3:92a9:aa06 with SMTP id f13-20020ac2532d000000b004f392a9aa06mr1731047lfh.48.1685500456861;
        Tue, 30 May 2023 19:34:16 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v24-20020ac25618000000b004f3787d8006sm524096lfd.128.2023.05.30.19.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 19:34:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/5] phy: qcom-qmp-usb: split away legacy USB+DP code
Date: Wed, 31 May 2023 05:34:10 +0300
Message-Id: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_193419_204476_D8019572 
X-CRM114-Status: GOOD (  10.66  )
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

While working on the QMP binding cleanup, I noticed that USB QMP driver
supports both simple USB PHYs (which should be updated) and USB-only
part of USB+DP PHYs (which are largely legacy and don't need to be
updated). To ease further cleanup perform a quick cleanup of the last
remaining USB+DP PHY (on sm8150 platform) and split the legacy codepath
from the USB QMP PHY driver.

Changes since v2:
- Fixed phy subnode names (noted by Caleb)

Changes since v1:
- Rebased on top of phy/next

Dmitry Baryshkov (5):
  dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: add sm8150 USB+DP PHY
  phy: qcom-qmp-combo: add support for the USB+DP PHY on SM8150 platform
  arm64: dts: qcom: sm8150: turn first USB PHY into USB+DP PHY
  dt-bindings: phy: qcom,msm8996-qmp-usb3-phy: drop legacy bindings
  phy: qcom-qmp-usb: split off the legacy USB+dp_com support

 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        |   80 -
 .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml      |    2 +
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |   19 +-
 drivers/phy/qualcomm/Kconfig                  |   10 +
 drivers/phy/qualcomm/Makefile                 |    1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |    4 +
 .../phy/qualcomm/phy-qcom-qmp-usb-legacy.c    | 1407 +++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  556 -------
 8 files changed, 1438 insertions(+), 641 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
