Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFA1BC77B6C
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 21:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oBBsqgWg0Np3mZG532/uH72CYUsUVULLBqlWZLCwfDI=; b=wTAvAIaO0fGPRy
	BFOVwabQMqJiloFPciwH8+u/3VJjm8PtoEow5/Ah4LLzyD+KD3b2F6NN2Iptm5DRICF2FTZ9EFZOx
	WTGZ2RsGhANsn60kmkG/D4l/wJ1TCQ3nZt2wr3JiiO3WyVPAOMAmjZo0MSCIj8vxxv1D/Rb7p5kzi
	jnj2SyEqFU7FPK+QEKGe1qqE/LvCpHLzhXUXA6a8mJ3WV7YEFvaIrOZ4yzb4FoT+fCd43fpm/pRy6
	m36wduTgxCda01BcUBavpcxljz14xqubUebGmq+xId4VZh8m2sqab3khXMJ5VNzkTyFRA68MNuM1B
	cpQ3aHYVutf7hVpLJbAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfpOC-005gk6-1W;
	Fri, 24 Mar 2023 21:56:00 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfpO8-005ghH-2W
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 21:55:59 +0000
Received: by mail-lf1-x12b.google.com with SMTP id h25so3947129lfv.6
        for <linux-phy@lists.infradead.org>; Fri, 24 Mar 2023 14:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679694951;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E6r6YUtJaIvDW9dxujuzmYnOokbQTzuDSN123E5tnr4=;
        b=oEOS+ZAQa1GC4SxYIhpaEusTbfy5ZV6F3FCcs7hC2jJUGsQoVvkxcbJm0yXaliL3Tc
         wIF4AGLwd8WlFmPbbrU/AB3ZbiYV9kC4bb+EJZ5/TpKpd405zDxvbb3GFPcMLDlU7gUE
         kawDuc0LtIs7fXdZIBOxjZ2MZ24z/DZMNGjDtTOyQ4u3d1EPg4Scxb9doRyToSB81tAA
         AXFCqiIvY9f4Kd6XqdNL6HvRNHeFtUaa3LJN61dyet4zkVjfIIikZzj68CQPCn1TrhAs
         XzZ530n+wCWepmtHP/R3JPtm8B5+ywIfPIIF3inEqOZLyW90afRroeIVg54U4O83NuRK
         2hIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679694951;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E6r6YUtJaIvDW9dxujuzmYnOokbQTzuDSN123E5tnr4=;
        b=2wKIs/elNka9D7mp+SlVPyWrbAi7cQ3OggcPQNY1bi1c43SojYVx0cySSRbsiIBjs5
         MbkM1rG2r0pAidLsDHXDfCoqo5hgvP4TBT4rAnwbBZSkX6AijJ0HHGJOkMf5xupc7UpT
         IflYdO1wHzYFDEwsIcKg3bSiuGydUuN4FdV4dN/gmvzz2DKS8usX0xb/HIctuPbQgWuS
         8QGjxiWrMIt71/PCBS+HdKYv7aBbxXvc5hrZN/fGM/iiYlp+FzjYf5xRPXSnOl/fLshY
         gHNqlr5xSjd3GcV7fWqw6Q4LzARiTRmDslpCJ+GaZ+4FR0GUigPFcaHnWorUSJeJQZ9Q
         t08A==
X-Gm-Message-State: AAQBX9cpXtkeQLsG93qy4vof9jHjiKzMdffbLdZdiPoe8IWfZrV77Lvv
	3ngfSjMYgEsMe88iyzbJGmM2kQ==
X-Google-Smtp-Source: AKy350Zpnx42ljFHPDrMpwccNeOv58XHYr/SgImc0QJ9S3YRUx9t36guHM0o14ghTq+AMnTzK/Y51g==
X-Received: by 2002:ac2:428c:0:b0:4dd:a060:402d with SMTP id m12-20020ac2428c000000b004dda060402dmr1024035lfh.15.1679694951379;
        Fri, 24 Mar 2023 14:55:51 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y1-20020a197501000000b004dcf20843efsm3488285lfe.239.2023.03.24.14.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 14:55:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 0/5] phy: qcom-qmp-usb: split away legacy USB+DP code
Date: Sat, 25 Mar 2023 00:55:45 +0300
Message-Id: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_145556_822677_FC1BB6EA 
X-CRM114-Status: UNSURE (   9.65  )
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

While working on the QMP binding cleanup, I noticed that USB QMP driver
supports both simple USB PHYs (which should be updated) and USB-only
part of USB+DP PHYs (which are largely legacy and don't need to be
updated). To ease further cleanup perform a quick cleanup of the last
remaining USB+DP PHY (on sm8150 platform) and split the legacy codepath
from the USB QMP PHY driver.

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
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
