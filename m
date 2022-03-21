Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB40FC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Mar 2022 13:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wplzetxEHYyi36RfSntUOqZXzz8z21WvKi6AAt8sTfQ=; b=2fcQpjjO0VjHHw
	lLYWPCvwZ9ovrCGodGHmcYGYZvNz5cv4SwTRPwRdA4ueOWgWK5Pq1+/O4fNGjVjIkLFG2GYYg0THc
	vcWGQpoX96rBvbOgZUWsHO1KIf29W937XpeATT7mwnktQ3gkW0cQVjNuPeV+N5aw/G7StrNeMqF1i
	DKIIL0G5NCuPoyLlt1YcLObaj98hI3/dEUN8FEQ4AP1DjXmmDr/5EErPd2S6YY4BekY5s2/yAUlDR
	QoD7cTHVt8VZuARgp+u6ZWo/z9IVMDPbe8rAAYck+dHkzSnD0z0oDwgqrb+UDZmVRUok9kPtTa2GH
	dGMbT4fASGPz+4mugsTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWIAV-007sMw-2p; Mon, 21 Mar 2022 13:33:55 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWIAS-007sL1-4B
 for linux-phy@lists.infradead.org; Mon, 21 Mar 2022 13:33:53 +0000
Received: by mail-ej1-x633.google.com with SMTP id r13so29863397ejd.5
 for <linux-phy@lists.infradead.org>; Mon, 21 Mar 2022 06:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fairphone.com; s=fair;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5GXEdYy1flkYD5H4ZjwtkKaTgHfQbeK4Fic81sbDM2g=;
 b=U93LM0PPjvVS1NMUtHanmhanW3zHZ770C883frfTHWmu1t88XsHFJ/SEtXT6n/lMMt
 re6IfjnHppIOC4ngM2HuHaGjJrVDx1YujqZCFxpIUF2EIr6QHsr5IefXFV395iZgIMOT
 YuYCc2UNxihTIk8dpTKJtRls/VJrqYoN1jm955IKVdCwcvVQ+uiKrlwX48B4hZGHMmid
 5Oef/sbbEqSkxUG0zUMPUlutcFL1zpajN67vtPokaziudtmOagUAm3oL2tXePRIA0CeQ
 UA3IVj6jtKwNiGl1XBj0ttF0J0RkHEkR0FKdlhmOkz/f0ksZyjranNksDpQ10DtlkOgK
 b0dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5GXEdYy1flkYD5H4ZjwtkKaTgHfQbeK4Fic81sbDM2g=;
 b=cImf5xGrAQxTmFIviNfEbqY3JbHMIkkZorv6Y5RBhSgIN56G/Xc4tM1nKu8fcg8bKH
 lMzStML/drFrvGGg/kSqvrONSbrnILVEb9Ak8AXy9nu5ZTdzz7WtrwCxFdCr2uAC7m7P
 sRDEK2e1c/WA2NvWr6uVHYk1W4kryhbff/aDiXqopgOUHGmACrhdi9WRA7WVESaI1HNz
 zSs/iHAXE6/pIii6CP98NUq+JFo7FPs4jdopODdXXwYqzsyrXDvgEeIXsZdWdHrONiJF
 f3j3nMFhJVghk4DRkny2f8+2r4gfuWJ0CIegGUnX0TPE1HnKafrqymt31E92WZPr0rGj
 kw4g==
X-Gm-Message-State: AOAM533GQ9WHgerQfpSd6m69dH7hNJbofWrU4ooVq58U9r4LV2o6UAgn
 2MrWNQp1nF1JX7wzASET/qtkXA==
X-Google-Smtp-Source: ABdhPJxin6D4QUUEy9OSv7n0xOixCN3MCojKkmBkEpsKwnbOXMZ/kz4iQiW1Uk2i6FUu2r7N4MPGjQ==
X-Received: by 2002:a17:907:3f92:b0:6e0:2fed:968a with SMTP id
 hr18-20020a1709073f9200b006e02fed968amr1743024ejc.658.1647869629410; 
 Mon, 21 Mar 2022 06:33:49 -0700 (PDT)
Received: from otso.arnhem.chello.nl (a246182.upc-a.chello.nl.
 [62.163.246.182]) by smtp.gmail.com with ESMTPSA id
 r22-20020a17090638d600b006d584aaa9c9sm6862154ejd.133.2022.03.21.06.33.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 06:33:48 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Luca Weiss <luca.weiss@fairphone.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Andy Gross <agross@kernel.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Avri Altman <avri.altman@wdc.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, devicetree@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v2 0/6] UFS support on SM6350 & FP4
Date: Mon, 21 Mar 2022 14:33:12 +0100
Message-Id: <20220321133318.99406-1-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_063352_190848_E42C24B4 
X-CRM114-Status: UNSURE (   8.00  )
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

This series adds support for UFS on SM6350 which is used for internal
storage.

Changes in v2:
- see individual patches

Luca Weiss (6):
  scsi: ufs: dt-bindings: Add SM6350 compatible string
  dt-bindings: phy: qcom,qmp: Add SM6350 UFS PHY bindings
  phy: qcom-qmp: Add SM6350 UFS PHY support
  pinctrl: qcom: sm6350: fix order of UFS & SDC pins
  arm64: dts: qcom: sm6350: Add UFS nodes
  arm64: dts: qcom: sm7225-fairphone-fp4: Enable UFS

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  2 +
 .../devicetree/bindings/ufs/qcom,ufs.yaml     |  2 +
 arch/arm64/boot/dts/qcom/sm6350.dtsi          | 77 +++++++++++++++++++
 .../boot/dts/qcom/sm7225-fairphone-fp4.dts    | 18 +++++
 drivers/phy/qualcomm/phy-qcom-qmp.c           |  3 +
 drivers/pinctrl/qcom/pinctrl-sm6350.c         | 16 ++--
 6 files changed, 110 insertions(+), 8 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
