Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56748C19F2A
	for <linux-phy@archiver.kernel.org>; Wed, 10 Aug 2022 04:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iuABckd1VBYm+a8s6tjHOIPxVuTzhQwOj59c11aJjNc=; b=UY78EurD/AZ+al
	+dqO26hez1re068p7n2gmHYEgo4OUzBFduHkuKmeuk7xe7nzvRu3KM5hXP4e1wA4JEFMM/8XeSy+b
	WtX1CyD0aUsbsTDIM8itTkmNYxP0DYRnwCHy3xGkVamBQCh3iJw4VD+Fj0iAFlwcYsjwAHr3RNlHz
	5G0KCe5G7pwCxOhGK8q3OlUthMyW6US8mOP0UmwdIHnLz6ihSy0nOUbzdw9eZrXV//+HYTln86y15
	UAbcAiHdPB9+2mD7qCqopbOM0URpmRGJuyjaDwSTvOXlAbzTJneYrzn/MbWmbFCc7MiqDR/hUGWh/
	azjSJEgfEZ6/NROZ7ddg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLdCo-0096xE-KR; Wed, 10 Aug 2022 04:20:30 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLdCk-0096uD-GS
	for linux-phy@lists.infradead.org; Wed, 10 Aug 2022 04:20:28 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-10ee900cce0so16485099fac.5
        for <linux-phy@lists.infradead.org>; Tue, 09 Aug 2022 21:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=Y2F/994jbOUuOzskqySafRo+v+bWjW7tzqSFDir2eDE=;
        b=HCasqI3zEFTqcRbSy6Z2RutepSY3bx3zTM8dWQxCLo3l2tiwXIaYKic/NhqolJKNn4
         u8wxFOidOhg/Z3GqXmgkmMUKGmccfDU6sqjfoWLdkPKyf0qWN4f4f3vtIQWZPU0kr8KH
         cYqGY05/46v9jZ55HLmPg/b7xUGb0yp7Fp1q1D/bMJKSGazAp9ZjOuJY8lajQaQfBPRR
         CSi6cPJB/v4tdeLsmGVme8pbI/8eweaYMMYFQsLaFLReCvO8ahczqIlacUyRSr/oOpZu
         vIYEbwfG5EPs+c4raVOlmMf1La+JhyYnRXC20rtQKsScOvZkL5KsAM4UafnBI2dkibnY
         N87g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=Y2F/994jbOUuOzskqySafRo+v+bWjW7tzqSFDir2eDE=;
        b=BatwhkqRwzcMN3a3pJfb51WXTH1R9qo+XkdLYy7LX58KrItp2A0g9Pgconi2wkh1cZ
         xwPnmA24WyTwjNNWxqblrW/A987sGlG3b0WwLqphIizceA/2rcLKszYsJVrjFf26CXP2
         LWAiSvp29KRSA2rElHs80nTGOfY/FYy5GA7LoTGAl2xmifOJCfuoaHxh0vaiLRAqfRMD
         WuyCXDoKl+TEa2UL0rdsJArR8kt4tW0cJ+katagRGQNnrSBAdXNed2AXPQ5CHNIR5//K
         +jRmFGBhQPvwPHV5zWUqeDPKqHFEdBuNxlJm1zJ2tJ2okeNMpPJAg16YRdBgujtvlQ3H
         yckw==
X-Gm-Message-State: ACgBeo02vKfLks2qNLH84TyZAaLn4cfFTtq8DmkT7OsIb8PH8dJoIujs
	1u9hzYEmYgupI1J2xIFR0GSj+Q==
X-Google-Smtp-Source: AA6agR6xjgWLcH1EVQ8VHgzX3ntP5Y/nOcHPPxxv1R7K/CLkFS94I1b+s/jIwsyV52qSYg3hdn2hqA==
X-Received: by 2002:a05:6870:c8a9:b0:f2:87f0:6707 with SMTP id er41-20020a056870c8a900b000f287f06707mr672930oab.97.1660105225236;
        Tue, 09 Aug 2022 21:20:25 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id ba41-20020a056870c5a900b00101c76f7831sm3622747oab.24.2022.08.09.21.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 21:20:24 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] phy: qcom-qmp: Add SC8280XP USB PHYs
Date: Tue,  9 Aug 2022 21:22:59 -0700
Message-Id: <20220810042303.3583194-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_212026_607905_EE78FC92 
X-CRM114-Status: UNSURE (   7.72  )
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

Introduce UNI and combo USB PHYs for the Qualcomm SC8280XP platform.

Changes since v1:
- Replace direct import of downstream register definitions

Bjorn Andersson (4):
  dt-bindings: phy: qcom,qmp: Add compatible for SC8280XP USB phys
  phy: qcom-qmp-combo: Parameterize swing and pre_emphasis tables
  phy: qcom-qmp: Add SC8280XP USB3 UNI phy
  phy: qcom-qmp-combo: Add sc8280xp USB/DP combo phys

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |   2 +
 .../bindings/phy/qcom,qmp-usb3-dp-phy.yaml    |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 429 ++++++++++++++++--
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h    |  13 +
 .../phy-qcom-qmp-qserdes-txrx-v5_5nm.h        | 333 ++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 137 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   1 +
 7 files changed, 880 insertions(+), 36 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5_5nm.h

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
