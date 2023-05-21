Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CE38C77B7C
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 19:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2wp7QAWyaoQxHi9JYC3L8KhpO4ncGMmyERBVjif/tX8=; b=gRwwPnaSbPfhuK
	etGW4yDeDGNsCEfWmAz7IAyVTUaWAvzFUL9mlsgdQYvhA3O4KsvwVmfz8FWZNmsBq9taIDbHwJ4Dk
	+Fy5Yrg/+gm4o9YcbykdBf20bVGTTrpJdPpGFPawT7VPKL/Y2YjO6ZWpFgPoUabjsMysJDC90Qagr
	xRiu5nXpU54zB51rnrMT6ue085OZY/Tj9Jeve/Fpr7SbTwJeanDzJ6t/Fh5tZ12FyIWT1D4gwokcu
	xItnjB2mCDnqEtAPl03kmLoCnhZjU5Z9OIz1NmUVDHlUFeqe7Gi03HBze4odLNYn008VD4niF9pEA
	5kv9UxT9Gv9s2ulWxs/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0p8O-004YUD-03;
	Sun, 21 May 2023 19:54:28 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0p8L-004YSV-1Z
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 19:54:26 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-96f8d485ef3so253862166b.0
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 12:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684698862; x=1687290862;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DPlU+Sdk+xbWk66yiMas0b8B2Fguegxq4ZQMVRAqSUE=;
        b=JoRw1dCVCQmtBVR7b5wY/wzWwDcNEpu/1oJYZGuci2hlAF5jKpJVe4Zsf8+Shebj35
         0tt9AQAFMZ2HKd2uMTq06gv5KJzl9CyGUYnuXrICj5yr2dsnvJ/maPe+Ar5jKSh+YrP9
         mpjzj2/tvhO706E76DvxnE7rjBdvgCHc8MEkfEccC/GaDuDuH7szfA3NLIpWPpsEug3x
         F5MtoIJ77HFXlhyQ5tdcDQawPlJHd/8Tydnb/BLbkuR5p99GHLAbWE/myduBV/VP3kpM
         BZ2peT0tQ+HXjprtOtBPCL/Lb6jHMk07FaRftVx5GFfBKE8Wo6OJzLzPRY+uc+fEN4g0
         Wh/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684698862; x=1687290862;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DPlU+Sdk+xbWk66yiMas0b8B2Fguegxq4ZQMVRAqSUE=;
        b=DHLPnW1dy0HjM9bh+LGsz8kwRXl2SrrNPRYX7XyFRmUHhqen4o4RxzppFSINj/nSIp
         K0Gj8SN/7s4NggngoOGXfA3W5hzXCuBhjuz2GHSvdshMCExhzc1AFF0GaJfF97tGMae8
         tiS3JCerY7KDz2hbWsaNcT5BZ9FCPNF1SB/ER8yraYnJbCaFVMNU6lTUMhEBq8IAuPJJ
         jlsq2+z/pv9GtVeDtapm00P0tl4dRFR0fakSqlHOBwhQQDb5wYVAKSLI89kOjgpNOD4J
         vMpJMsucxcvYR/giQuf4jINn/iudXBGdg5iMl6BwVC9cUcypJQfImgeektxeSlP9OLpZ
         zcDQ==
X-Gm-Message-State: AC+VfDx2FwzrooC/5yt2b6TMun70X1v9OvgO9uT6EQS4/jpXyvNWiUB8
	v556CZwJJj9KEO5eaIO1CxsoIg==
X-Google-Smtp-Source: ACHHUZ5GRJ91EhgJXjupdVY1R7oyUpirvxLpLPTV7+4NZ4ggxMoI40S3efNJs8lW7IxwZWD1Fw3D8w==
X-Received: by 2002:a17:906:76cd:b0:953:4775:baa7 with SMTP id q13-20020a17090676cd00b009534775baa7mr7805190ejn.52.1684698861741;
        Sun, 21 May 2023 12:54:21 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 16-20020a170906101000b00965ffb8407asm2187107ejm.87.2023.05.21.12.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 12:54:21 -0700 (PDT)
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
	devicetree@vger.kernel.org
Subject: [RESEND PATCH v2 0/5] phy: qcom-qmp-usb: split away legacy USB+DP code
Date: Sun, 21 May 2023 22:54:15 +0300
Message-Id: <20230521195420.12454-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_125425_532573_9102E045 
X-CRM114-Status: GOOD (  10.22  )
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

[please excuse me for the spam, resending the patchset to include dts
mailing list and maintainers into cc list]

While working on the QMP binding cleanup, I noticed that USB QMP driver
supports both simple USB PHYs (which should be updated) and USB-only
part of USB+DP PHYs (which are largely legacy and don't need to be
updated). To ease further cleanup perform a quick cleanup of the last
remaining USB+DP PHY (on sm8150 platform) and split the legacy codepath
from the USB QMP PHY driver.

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
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |   17 +-
 drivers/phy/qualcomm/Kconfig                  |   10 +
 drivers/phy/qualcomm/Makefile                 |    1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |    4 +
 .../phy/qualcomm/phy-qcom-qmp-usb-legacy.c    | 1407 +++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  556 -------
 8 files changed, 1437 insertions(+), 640 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
