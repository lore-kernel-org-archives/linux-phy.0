Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87FA1C76196
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jmfLZyQA+rAdGo4N1zN6MrViisE15RltjNyQJEe1Lqw=; b=Ei6A3k7YUtj6hS
	gjPVfL38ZTsDZyZD+zTWGxego7h3bBTadrWeTJjKCzze8lWt2KfgVXPKGbbzt3rwOWKA+zKmhWzCF
	PSZVfwGPjQHWisCqLHshY/9wTbav3FGC7HIIuIhU2FSUBzJnJPsZQcDE1qtrbvgCPNgl3bnbQs6Fe
	cPM3knEZXDeadSVsZeK5VDaWBvl84D6jm7d5wZ7DSBguKD9azdhGtTysR30568j4MIAckSb4wqD76
	MNo/dzflmX79S0i7DsFGo65LrFArCRyXX/CN4/2ejUj8ladpqt1hD3gt37u99WTmUET1IHhpP4azp
	CYw3ufx9Mlz2zEl8YtIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDg5-0003V9-0Y;
	Tue, 11 Apr 2023 13:04:53 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDg2-0003TC-1Y
	for linux-phy@lists.infradead.org;
	Tue, 11 Apr 2023 13:04:51 +0000
Received: by mail-wm1-x330.google.com with SMTP id gw13so4489887wmb.3
        for <linux-phy@lists.infradead.org>; Tue, 11 Apr 2023 06:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1681218289;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qYe+MGPT9BvgNTQao8r5YoHx9jSImbM+Yzl5JdLRqIc=;
        b=hVZ3SwYl0OMmYsZaktA4PBdt9FadcHLKLFYV9Y3oM0OwQMDSvu0iLQvhsEk273pBFz
         xMjYDP0n7IEjOWvg0jISH4vr2oIC/LyzfkTZe4at0Vr/uAALu81PnqpyLw+wnzfZTkOu
         TmmYK/UpBhgsP/7GQxJnjCUe2pBPAKV/CQTAmMGl8sZ1EImT7qlINWkY4JXfZ/GrWP4R
         kNx5eTCgbw5jeQ3dd40Zt6Xm+q2a3SxD5X8uzYor6aZ6NYE+DFGibBhxxrQmDPt07nNo
         UO/oZCVEaKDxUGsMoWQdcNXYTyk7IivtZey9/F1/u1rsT/Wp5oauw87Dn7CTk390xBgT
         EPuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681218289;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qYe+MGPT9BvgNTQao8r5YoHx9jSImbM+Yzl5JdLRqIc=;
        b=bwJ9XYwVBFwcPG7ZAwFO4qW6RS1sInq8KpG+YLOFRu7P/tbFyL56UgVqBFBLfQUtwF
         uCkopCIhLA2DO6fBJoXc1QePxVb8Q3leyI7ByH7qxjLyO9ZrDHoYPFoFWamlYaUdbB56
         n9RXR+4d99akW58uuGZ+tBOJavzIXMTFmfO716hRdlIObBtNBAYVJ1inxvrmrSasVuL7
         MMmqrA1r+Hu+EDgoI7PhpC4waHE9ydzVeTSSWSRbHw3ePBu4/3JgHtCjp/rtdkRWjwy5
         nVqzMcyu3CjzOTCFwzdsyAy4vuotT59XZ4GsUSXTsUPqX+YRxHd9VmrgqG3cqXVagurW
         bY6Q==
X-Gm-Message-State: AAQBX9cAjApXBWq8n452FM8u7dsSKdCCqx9FuEIszXJKpMb71a2+1GXm
	s5JG0b+dpa+MD/EhD2F+21tQug==
X-Google-Smtp-Source: AKy350ZfLdAiU/iKV0HLRk3Wy+S1F1keCNjX+IH2eaUg8QZgScVfnsLzAoOiiBKsX+Op60vdlbkezw==
X-Received: by 2002:a05:600c:2294:b0:3ef:f26b:a173 with SMTP id 20-20020a05600c229400b003eff26ba173mr1910380wmf.14.1681218288917;
        Tue, 11 Apr 2023 06:04:48 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a099:fc1d:c99a:bfc3])
        by smtp.gmail.com with ESMTPSA id t6-20020a7bc3c6000000b003f04646838esm16921301wmj.39.2023.04.11.06.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 06:04:48 -0700 (PDT)
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
Subject: [PATCH v3 0/5] arm64: qcom: sa8775p: add support for UFS
Date: Tue, 11 Apr 2023 15:04:41 +0200
Message-Id: <20230411130446.401440-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_060450_521348_28452B87 
X-CRM114-Status: UNSURE (   8.98  )
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

v2 -> v3:
- fix DT bindings: move allOf: below required:
- collect review tags

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
