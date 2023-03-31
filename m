Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5F53C76196
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 19:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SBtPRZEEW75roW1rx1e/Ja8+TL6KMpL2NMqLC+EsVpw=; b=Z7iKAXBZqr2QbR
	MzKj0N9wiuGLLCMTKs+kTW8j3cUeIhLUJEWuhwD6WJj6BTr/K9VjJbe3S8W1dCC+CQS6nZEOJsMt6
	XSnNhHQbemlf6o3PYMq/VMdRPjrriYbVbIq5/I1GIOe/oiKnAwbzDlEdJycEwUtl/LyJnZnzg3wF5
	sPfs6nhC2HCkDurcMCXWY4lsyZ2hWwM2Q6LhthJDGHtYNtrTwsQ4UxwIlBWI4NxohJpqeXRfPgS7H
	Yr5ZiEQlqpL8RpbqccAJFJ3M7a6m7KNwBwekbyoGj3N+CJYJOaty2ASafOkbyMdEURa3yRwR4zPIj
	UtFC5WcX/srJf0vmc7Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piKuP-008h5J-1c;
	Fri, 31 Mar 2023 19:59:37 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piKuL-008h2o-1o
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 19:59:35 +0000
Received: by mail-wr1-x430.google.com with SMTP id v1so23578663wrv.1
        for <linux-phy@lists.infradead.org>; Fri, 31 Mar 2023 12:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680292771;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aKMqWuHq1atNt6umWF5yeL6AWpUb/E2kDARevmv/t7E=;
        b=R1yGbDzZkXSfNAmHOrec1xK+vmJwYF1I9Tmf/86J//hF4fFCeObYLB/wng4+xQouEu
         IRHckzWQYRtWBSOU99bxb3/VfvIaF0Tp0i8TCxAZtDqKgW27pDehQGLXzHUeUT+3Xo9j
         1JNeCmWulw+B2RmWzURTrsKrqvE84OJxJ+WiVJAhfBw6IYh2cNeDEpF+B91M/JIJXvT1
         Bnc2FU0rLYrCRcM1iwhSjaAdIXBXGayRbyBnQd0Vz0w4I80SRNkIbgDRHzcd5Rj2XLSh
         MwC2Q0SkR9bstLKfuXsue7hxTLABhSZA2MuwSZVlL6L93HdYBkIwJ9QkMOKQW9UMB/yv
         lY8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680292771;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aKMqWuHq1atNt6umWF5yeL6AWpUb/E2kDARevmv/t7E=;
        b=hhgUZVOEjCzTB+MNG0a3vBpkEaY6qJG8XZCiTGRRIDLVX9UyTxzBztjuIxVpFKOgES
         oE89jcH5y444PwEguDH9vgkfU4ejesXc41EJ++oDGSBfgIWxlnG27gEPJLPH2chD1VRg
         RbrG2g1sglxQ+91rsVQykYUuIV0+PTsGTAHY3UC8tNoLQGsYIwSxy/a9508atIDhYHlS
         BgMa/YbSxH/Q1hu3JspTbO5hibA5EFfDk6YKb3106dCdEN2Q5Ax5ORj66Mx4g0u9PMRO
         9uSEIUUd9X1yCtjBKhtYUqgC5N6pdrYdfAehEjA0iq2SsWTQfQj0OqcfxwJR+3hbYNVj
         8ykA==
X-Gm-Message-State: AAQBX9dNWv0Zw5XDkU714ReV29zWnMuNOfY9darSJlp3zYeGwIS3CpNh
	g9yMC/xYcGcJq3Ep6ZRIZKyY0Q==
X-Google-Smtp-Source: AKy350a1XhX1OiVE2JDxPVA6mRqh+3WGPa6RQJBfgkXi+23ET2/y3h1dJrDNAhcrcMzEY25bJ5KkdA==
X-Received: by 2002:a5d:4e47:0:b0:2e4:cbfe:da52 with SMTP id r7-20020a5d4e47000000b002e4cbfeda52mr5117629wrt.3.1680292771045;
        Fri, 31 Mar 2023 12:59:31 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:1dc:d1f:e44f:2a1d])
        by smtp.gmail.com with ESMTPSA id c13-20020a5d4ccd000000b002cff0e213ddsm2990286wrt.14.2023.03.31.12.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 12:59:30 -0700 (PDT)
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
Subject: [PATCH 0/5] arm64: qcom: sa8775p: add support for UFS
Date: Fri, 31 Mar 2023 21:59:15 +0200
Message-Id: <20230331195920.582620-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_125934_111933_502ED4B2 
X-CRM114-Status: UNSURE (   7.76  )
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

Bartosz Golaszewski (5):
  dt-bindings: ufs: qcom: add compatible for sa8775p
  dt-bindings: phy: qmp-ufs: describe the UFS PHY for sa8775p
  phy: qualcomm: phy-qcom-qmp-ufs: add definitions for sa8775p
  arm64: dts: qcom: sa8775p: add UFS nodes
  arm64: dts: qcom: sa8775p-ride: enable UFS

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 34 ++++++++++--
 .../devicetree/bindings/ufs/qcom,ufs.yaml     |  2 +
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts     | 19 +++++++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 54 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 38 +++++++++++++
 5 files changed, 143 insertions(+), 4 deletions(-)

-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
