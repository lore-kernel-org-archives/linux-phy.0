Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F033CCA47C
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 21:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vx+K4+EIY1Z/7SEEq1oRPpgPd22u+pzEoQpR4zwhC2g=; b=pcXODxzQ1wza/t
	GT9++Je5LF5To+iKc8cq10PTHiumbGPio1B2w23aMOD1yH+nOnoYanQO1ibhIJ6IN8unX/I+J/3aV
	10IXeE2nxSv4Zaz28PL3IW47bd9S7cUbfvEBNuGKstSlVQsTuWvDadAxaJs/41H9ZhMmkaVKdW6pa
	gCNRQhnGnyBzr2DHhimL5J7+Bm7DBJ5XBjJX7r3l1pXUi6oEaB3A5nVtgeg1rZa8tKYSV/4o1ud5d
	rwiSzErQgdgkhV93ffD+RU37JbYudKGB230rfCbcVazZ1Xve8Wi2ukrCVyPXAF4EK31FStYkqrSFJ
	25kYq8VVKuZ9RMqbB9Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygpH-009mFV-LW; Tue, 07 Jun 2022 21:33:23 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygpF-009mEh-Cy
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 21:33:22 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-f2e0a41009so24851607fac.6
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 14:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7WQJ/XtKegsw42WINS+GcmBCB6YzztdG6Y2PPPtUW/w=;
        b=TrullXJMsk5YwE74aMpxuW61E1Hw1bnKtHsWUuwneaKzbWnpnuR+AjXBZ629aN2OD4
         K8M0ZQuIVKorAfsPpsBq4P/2IJG0G29TGqlJA0BDh9WZ1T7oHDJej8Pa4GdBM1Px974A
         cFaCm7tTycbHC+Kgx1dTX3JZv8xASZxwar4EZmTS4r868fstIko0vde6uw7EGmO62bSp
         k9J9GAkUGTPbdwagbRBagx5TDT9IFym/yPArpVhVR2+zp4iu05KPEYJCDrOwJ5HliovS
         qmxbar3fOJ/dBtJBu0ZXgJRPAUTqg8kgwHHB5w8d+I2Ivx5MiU5sRuNowWjBNz9bAQIo
         0yHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7WQJ/XtKegsw42WINS+GcmBCB6YzztdG6Y2PPPtUW/w=;
        b=4n89G/ABdAtbi66p9eOYkDITH87YCw1V4aE3BKMjq0MRh9mQoPTgmJs5e2QyYVLv3p
         9WmV2RNvC3V73JWIT8wZ0241OgwKexaCSrBIvNgbBvz1gxxbvjxiSjiuvEiWbYbRrYXy
         h5HKPoyt3p7PwssHiLxNTmwrJmDDV9XpCh2jHezcYM1geQM8eu5fgCYE4RlidbEvCIly
         8XDuAO4ncWXngbO7hwmq3YtLfEbeZLF3aegqBoQ1QYklDCoqXnxSGRw4pWLFHxN14XZt
         W1tbSvms7kM/2grN4TtWfOoyUZb9NSxd6QC+82aOAdbhkU06G0lxPKgOO8llp/bfkf6B
         mwvQ==
X-Gm-Message-State: AOAM533Lz6NjaKJg+P/qlfltiwUzcA6kzMVL3qzRjdEADVSC/VWVuAu5
	2QtZ8zbz3g8xuq6KawR9NetLtw==
X-Google-Smtp-Source: ABdhPJyU25K2d0bR0vnpnqOV1y2zdIZ6XN9gCVbMevu5CAiFWeOd1COsOlK9xlawqzqPKGiYAmdkLg==
X-Received: by 2002:a05:6870:82a2:b0:f5:f1ee:cfdb with SMTP id q34-20020a05687082a200b000f5f1eecfdbmr538939oae.297.1654637599500;
        Tue, 07 Jun 2022 14:33:19 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id cd24-20020a056808319800b0032e7205619asm4966031oib.15.2022.06.07.14.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:33:18 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manu Gautam <mgautam@codeaurora.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] phy: qcom: Add SC8280XP UNI and COMBO USB phys
Date: Tue,  7 Jun 2022 14:35:38 -0700
Message-Id: <20220607213543.4057620-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_143321_479011_0338B696 
X-CRM114-Status: UNSURE (   8.88  )
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

The Qualcomm SC8280XP has two pairs of USB phys; a pair of combo phys and a
pair of uni phys. Introduce support for these.

This is based ontop of Dmitry's refactoring of the QMP driver:
https://lore.kernel.org/all/20220602070909.1666068-1-dmitry.baryshkov@linaro.org/

A first version of this series was posted with only the UNI phy, this fixes a
few comments and add the combo phy as well.

Bjorn Andersson (5):
  dt-bindings: phy: qcom,qmp: Add compatible for SC8280XP USB phys
  phy: qcom-qmp: Add USB3 5NM QMP UNI registers
  phy: qcom-qmp: Add USB4 5NM QMP combo PHY registers
  phy: qcom-qmp: Add SC8280XP USB3 UNI phy
  phy: qcom-qmp: Add sc8280xp USB/DP combo phys

 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |    2 +
 .../bindings/phy/qcom,qmp-usb3-dp-phy.yaml    |    1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  205 +++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  138 ++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   13 +
 .../phy/qualcomm/phy-qcom-usb3-5nm-qmp-uni.h  |  617 +++++++
 .../qualcomm/phy-qcom-usb4-5nm-qmp-combo.h    | 1547 +++++++++++++++++
 7 files changed, 2523 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-usb3-5nm-qmp-uni.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-usb4-5nm-qmp-combo.h

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
