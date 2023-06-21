Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D63ABEB64D7
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 15:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rkkSkxlOaYpbdlpmI4xrRqJs4SGtrtxUTitsGdLWJN8=; b=LVojX0oXpL2z0q
	CL6zwU3flbNCMrRf5CTYWfF72uLP7Vh3CEhusXF2PgLhDXL/LCH1nEudNJZq4oXF3ll67trTOkFRq
	xDK8HZUdoVleTZrldyYnP3zwqoockEb9okAXMTUYDTsYmpDYWT089b6/WUZDgIWb3GuCyZCkz8euc
	PUYkzz+Tlv+F7X6SZRhZbthQl/fKPv1WUVIdEswKRd0vtuIsiw/6x4jshBvfk/Mosm9LYFcVSR89D
	BPBOgWuXsFOdSOCRuUuA4Yqr0qVlDRHwVb5ah78YRxtEI/nlJoM7rmrARroRUi0aKY9ltMZp55nlw
	hI3A8Ko2FF8mX2p54QTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBzpk-00ExGp-1M;
	Wed, 21 Jun 2023 15:33:24 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBzph-00ExEy-0Z
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 15:33:22 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f64fb05a8aso8382707e87.0
        for <linux-phy@lists.infradead.org>; Wed, 21 Jun 2023 08:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687361598; x=1689953598;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BH6finOK0NCUs0Gft2KgbaIOESt3pr5OWZYURCYeUXQ=;
        b=U+nfwtRiLk3NGnsdw+gPwlh4SogYB81aLy1y21Sf/ysdNkMKtBGPq7A2XRaViuf0fN
         fV+7aJpmELHv/bCWjqROah0saDjV/uCQZuswjf1sI71Nfo8uCM7eMfcLOHgnvddhV4LI
         WRie7RS86YXr4eM82YQ678wSjVML9yE4iM/X6rOiICLJj44gM8gBlRiNcI8yaWKi1o5x
         +WrlPRHanw3hE5RPucr2oukorA5XdvkamfVQZHxIipQIMHNonewF/M57dKc7wh1Ra0ZC
         QyumOSBvhrVPghfg/Fmbd8xWdg8txWHLtsipQ0Ieq1MIRsYBypBIEdkmOUx2J7JoQ50L
         m/bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687361598; x=1689953598;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BH6finOK0NCUs0Gft2KgbaIOESt3pr5OWZYURCYeUXQ=;
        b=E8geaXs/gtOvxeaB3r3Rxgo9d5SmaBWDTWuO4n88NFJ1H7pB8nxsq0zoBW32FEXl9I
         Xr9wr5y5hCvBEoFHhLS904CnZDzWSkzoH2PUBUttdrePh10PF7jm0qcqIiNViYyhG+KA
         HvcRHuG4inFc79meop93JMiedyp3DkTPAwmmLC769Ijbj98yeTeIg85sgWheyoIQ0PCX
         OqsSrscRUf2RrGF+s75yK/k/cUTp/zgblzGL2FgXhiYk8Mk85EQ8PHgVqWYLx2cOL80Z
         qZAeKmuheeIw/FEiUBDmAlCnYJ/mybW6acH2CJinxJSbOBzh8c/Kxsv+5FO/t8NTClpU
         yiUA==
X-Gm-Message-State: AC+VfDxy+DjBKugeg+zFydjuVbFAcrFbX6kFWAAuvn6+oBJSBPajWDCY
	xAxj0Pb4fH/fVnCx1YROKEYJqA==
X-Google-Smtp-Source: ACHHUZ6JQKPQPArgKFqdZPPb7rjF7JBGHwVhYAEFB4DxBioynvcwfq3a5UuYnz7Ry8DAdKvyHJcQdw==
X-Received: by 2002:a19:e34c:0:b0:4f8:4dbd:36fc with SMTP id c12-20020a19e34c000000b004f84dbd36fcmr9455311lfk.8.1687361598431;
        Wed, 21 Jun 2023 08:33:18 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id o3-20020a056512050300b004f8751285a5sm804888lfb.80.2023.06.21.08.33.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 08:33:17 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	freedreno@lists.freedesktop.org
Subject: [RESEND PATCH 0/7] phy: qcom: qmp-combo: rework register access
Date: Wed, 21 Jun 2023 18:33:10 +0300
Message-Id: <20230621153317.1025914-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_083321_209682_27F2432F 
X-CRM114-Status: UNSURE (   8.18  )
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

For some reason I used the wrong script to send this patchset, resend it
including proper (linux-phy & maintainers) recipients.

The patch at [1], which added another function just to have v4 vs v6
register address difference prompted me to take a look at the combo PHY
driver. We already have mechanism, register layout descriptions, for
coping with register address differences, which I ignored while adding
v4 support. It looks like nowadays this has exploded somehow, resulting
inseveral almost-identicatical functions.

Forcibly use regs layout for all version-specific registers used in DP
PHY programming. As a result, this allows us to drop several very
similar functions. And also while doing this cleanup I spotted a typo,
which resulted in a patch 1, fixing bias0_en programming for sc8280 and
sm8550 PHYs.

[1] https://lore.kernel.org/linux-arm-msm/20230601-topic-sm8550-upstream-dp-phy-init-fix-v1-1-4e9da9f97991@linaro.org/


Dmitry Baryshkov (7):
  phy: qcom: qmp-combo: correct bias0_en programming
  phy: qcom: qmp-combo: reuse register layouts for more registers
  phy: qcom: qmp-combo: reuse register layouts for even more registers
  phy: qcom: qmp-combo: reuse register layouts for some more registers
  phy: qcom: qmp-combo: drop similar functions
  phy: qcom: qmp-combo: drop qmp_v6_dp_aux_init()
  phy: qcom: qmp-combo: extract common function to setup clocks

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 408 +++++++-----------
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h   |   5 +
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   2 +
 3 files changed, 174 insertions(+), 241 deletions(-)

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
