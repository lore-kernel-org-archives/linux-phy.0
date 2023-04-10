Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD985C76196
	for <linux-phy@archiver.kernel.org>; Mon, 10 Apr 2023 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zbOfyPpLQoh+S8gCA8MLSLuRuY+9Ig9W0qmvQzanWLU=; b=TMf47mhpSmfOfm
	Dw8tgInw9ldpxqHWpQqsyqDi54+ogN6vZ7e6hmrK0B+RKlniSNA3nSVNawWn5Id7DbTXw42LtVa2u
	IqoN0ENbZTr5OntBmETYddVSuhTX8Wkn5BnxitHDls5s8c54qWSWYmcM5d8iQUYDtfuC6O1UkINyI
	lS6IiXFATXYAyz3unG4m7TDcwXFRTpw49wJBbdNgIomsGeiFF6fHn4Bs9GcTb6b1JToygTKEhgjjU
	Eyd6HItWh759WN1BwwpgLXWxuIpcN6INRCN7nZ6bTAT9dArxiJrZslZpIWZTe0kdZkph0AhWvGR6K
	Ak9iktOdWF0/4aLhkkGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1plv2H-00FcQg-19;
	Mon, 10 Apr 2023 17:10:33 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1plv2E-00FcOY-1v
	for linux-phy@lists.infradead.org;
	Mon, 10 Apr 2023 17:10:32 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 60-20020a17090a09c200b0023fcc8ce113so7921972pjo.4
        for <linux-phy@lists.infradead.org>; Mon, 10 Apr 2023 10:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681146620;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YCbIblIYxd1RoPaHWqrob6eFeH3aWHVNQ4+Mn4FxgT4=;
        b=iY1dyo8B1KuXKb4CR8siFrdPdE7V04bbmicUP06JHAb/LUwfIRE3cbLW7n+FzGe4bF
         uPJq3bVljTp3bZXjaJ4s2blU0xX9M8UyNSzkk3aL/Pvbm9use+vtQ1KXBQy6OO1SP8Gv
         a1HIjG+fKWrG0IeDy67u2F2p9FaN0IbXSoMQdycs5qFj71bqa8ONaOEIZF6EHM2JUFH7
         oCkIAeg9vajdK9wwHS1rMaUqtiMxKlKxTTu8tgfcW0NA2mezDng0vKso0RxSiTAoRSSU
         /izDE8Ru0yqPcq6Us1Fj9d2kvquv8BtLdP2v1cc05lIhGArHl/yz9oS28KzIhp0waxTA
         5U1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681146620;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YCbIblIYxd1RoPaHWqrob6eFeH3aWHVNQ4+Mn4FxgT4=;
        b=HchMMEPyGGibGIMwaZWSOgqCEiaHFUjJ7aQ9QQuYfd5pkFuK6JRNGT3AnG2z/P1gSN
         a7ajZRcCrDaZRWCNKzeTRcAvyD+ghEjQAjrM6BieIJ6fvan0yzrNtHJvy02FJG7x4jIJ
         Id3I1ZGnUfkESv+gGeWpKRYCsRO/FuzgtgkHzYzfZCKFQuY5wFICSrtb4XKMPUBFrrUJ
         vo0dakBZmdq2dRckIL3bdbsGyNhFI4ckYcvtHTk0al1QBK8H/+vVIwDB7l0Tsyb/5POW
         xd7UvKtr767SRgqpN3waBP2V1doeUTVvwcuMFsr70YPJBx5wEmIjzs259FAk1qG43EB8
         Oerg==
X-Gm-Message-State: AAQBX9f/9QClkijaI0xkm9AcEA94S2fNCgCAQdorBegnOlrxL56DnCA4
	ye8XGMkSv7h3oCHMua8vFOALlQ==
X-Google-Smtp-Source: AKy350Ya/nSe91SuTZPm7XeJEaQOdImxghVZMquW7RmXi1HY3dcEHJ4qAUO55wSypXR1QRf0ZgFS+g==
X-Received: by 2002:a05:6a20:4c28:b0:cb:91ee:dca0 with SMTP id fm40-20020a056a204c2800b000cb91eedca0mr11004890pzb.41.1681146619915;
        Mon, 10 Apr 2023 10:10:19 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6a11:8ba1:beba:def7:a4ae])
        by smtp.gmail.com with ESMTPSA id q11-20020a63cc4b000000b0050bc4ca9024sm7187818pgi.65.2023.04.10.10.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 10:10:19 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: agross@kernel.org,
	linux-kernel@vger.kernel.org,
	andersson@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH v8 0/2] Enable USB SS qmp phy for Qualcomm SM6115 SoC
Date: Mon, 10 Apr 2023 22:40:08 +0530
Message-Id: <20230410171010.2561393-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230410_101030_639506_CBC009AB 
X-CRM114-Status: UNSURE (   9.13  )
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

Changes since v7:
-----------------
- v7 can be seen here: https://lore.kernel.org/linux-arm-msm/20230409200934.2329297-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Dmitry and added "pipe clk".

Changes since v6:
-----------------
- v6 can be seen here: https://lore.kernel.org/linux-arm-msm/20230407061122.2036838-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Bjorn and Dmitry and dropped old bindings in this
  version.

Changes since v5:
-----------------
- v5 can be seen here: https://lore.kernel.org/linux-arm-msm/20230405191633.1864671-1-bhupesh.sharma@linaro.org/
- Addressed review comments from Dmitry and made [PATCH 1/2] compatible with his 
  'split away legacy USB+DP code' series:
  <https://patchwork.kernel.org/project/linux-phy/cover/20230324215550.1966809-1-dmitry.baryshkov@linaro.org>

Changes since v4:
-----------------
- v4 can be seen here: https://lore.kernel.org/linux-arm-msm/20230401154725.1059563-1-bhupesh.sharma@linaro.org/ 
- Collected Krzysztof's Ack for [PATCH 1/2].
- Added more descriptive commit logs as per Dmitry's comments on v4.

Changes since v3:
-----------------
- v3 can be seen here: https://lore.kernel.org/linux-arm-msm/20221215094532.589291-4-bhupesh.sharma@linaro.org/
- Fixed v4 as per the downstream driver code: https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/bengal-usb.dtsi#296

This patchset adds the support for USB SS qmp phy for Qualcomm SM6115
SoC. For the previous versions of this patch there were conversations
on irc as to whether this was a 'qcom,usb-ssphy-qmp-usb3-or-dp' or a
'qcom,usb-ssphy-qmp-dp-combo' as per downstream code and hardware
documentation.

But after a careful look at downstream dtsi (see [1]) it appears that
this indeed is a 'qcom,usb-ssphy-qmp-usb3-or-dp' phy and not a
'dp-combo' phy.

[1]. https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/bengal-usb.dtsi#296

Bhupesh Sharma (2):
  dt-bindings: phy: qcom,qmp-usb: Drop legacy bindings and move to newer
    one (SM6115 & QCM2290)
  arm64: dts: qcom: sm6115: Add USB SS qmp phy node

 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 27 ------------
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 44 ++++++++++++++++---
 .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
 arch/arm64/boot/dts/qcom/sm6115.dtsi          | 29 +++++++++++-
 .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
 5 files changed, 72 insertions(+), 34 deletions(-)

-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
