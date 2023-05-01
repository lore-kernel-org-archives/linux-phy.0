Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA133C77B73
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 19:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JbdGLLpcHnbOlQjJJkDr4X1pDwRIDjZGbRiDSLBrjFg=; b=pg9aHHjaR/aomZ
	w1pej/fOdlJh6Rbrix/xZar9Fn7/srVIx8ai2k7gXuPCtTA7bFj3THmql7SkOFNBE4TRS7fK6TTtC
	fKra5dbkM1grx3zsLAgJE1xOddVsR/uci9RjBgfL3j4Y98gzPf6FRfS6t7CahUwdig8WT4dLyspok
	zDw1spOfZYJPmxxypqkXkH/wKKXTNdCFK34qkGzgGIqXj/7oBWTDX9CzPNYGrneEhdbtBDWWBXu/A
	Zho5Qoi8Zhi2s8vdZf8nP8ixl67duV3t+ghycJ2y4W4cvpFyFHZSlRStvw2hQ3i+Q99AYf5olbfCz
	tOlXVAUfJ4k1mscbN9Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZ8j-00GgF5-1u;
	Mon, 01 May 2023 19:24:49 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZ8g-00GgBi-0t
	for linux-phy@lists.infradead.org;
	Mon, 01 May 2023 19:24:47 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-63b60365f53so3412195b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 01 May 2023 12:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682969083; x=1685561083;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zKHzO/Hrbfl8nlBv+K49ojgRoBGcaLETpzBjfih2Yvg=;
        b=awtZMcboczzRmO3k/WSOtdFLkLw9ZCqipy/kj2LXYAAMC1JZaRS6Ip3gC8v06l/qhg
         UwqM0M1FuhLUgHyVxQCdRcKFnfI+WayRvCFymL5DAHZooTfZAzaLd2jjnMasqUlEuUC2
         LGJw/JSN+xq6UwI5BiiQTsdFBWqhByWOBLTP1La42194h3tacWJA3pxlOqQtEdNlSJgs
         jnVBHDHMTzVaIap55BSazUpKs7QSI9J68JFU0uEdgMUeS75Xm7aClxG1lPbb9+MdEN2z
         DiExM/H32yKb4yE1zceXoDw9Q5yovSdZXgZ2aUEB3Le4ZQaIZxcUHzEihEytRjnzaZGX
         CHCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682969083; x=1685561083;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zKHzO/Hrbfl8nlBv+K49ojgRoBGcaLETpzBjfih2Yvg=;
        b=mEO2hFWKuAYUUGnQ6gcsH4dJk3MNzNaHRQHMTaswRUDfV7ew1tNAmrWVux43BhYEQ9
         5+fO8SIR5f7m35zq2sP06QO/FoPldrCNEglOteZUyHs+Gnv6UgBL3lhFg9GOgywbtX21
         c2W5x8t18xWht3UWL9bEsCq79pSKCJYDdMkUBnx1kSffJ6IL/HLc7ZAxdAr0LoV5l0ZD
         qy0mBz0X8iZTQG6OgvWr5d016Tr2FCAma/LIUuZyk09xmlaKYsk2qTtzswN+FQx4gdc3
         7+mCjoN3UOfDDs6O6ywbQJWODBjdj6+xQZfThYu8EMPQabEbC4XSz2QtkwzGZdqjBn0Y
         geYQ==
X-Gm-Message-State: AC+VfDymt0uZ1r+/8vW7/Lv9I8pznEpQmj0JNYpJdI3PRwvkqriLunCd
	3/X4SLQZAvSf+yz5EAche+CH5QAvS3/7T31IOG8=
X-Google-Smtp-Source: ACHHUZ7N3WIvP6+tHaTNd0enhURzMFBWQ3KuY9zg8E5vcGdwuA4Shp9ovocQHS+38FvwLQypJIrGBg==
X-Received: by 2002:a05:6a20:1616:b0:ee:f5a4:c064 with SMTP id l22-20020a056a20161600b000eef5a4c064mr18108068pzj.62.1682969083200;
        Mon, 01 May 2023 12:24:43 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3b:58fa:39f6:37e1:bb9a:a094])
        by smtp.gmail.com with ESMTPSA id 189-20020a6304c6000000b00513cc8c9597sm17459144pge.10.2023.05.01.12.24.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 12:24:42 -0700 (PDT)
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
Subject: [PATCH v9 0/4] Enable USB SS qmp phy for Qualcomm SM6115 SoC
Date: Tue,  2 May 2023 00:54:28 +0530
Message-Id: <20230501192432.1220727-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_122446_441911_1DDA841F 
X-CRM114-Status: UNSURE (   9.79  )
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

Changes since v8:
-----------------
- v8 can be seen here: https://lore.kernel.org/linux-arm-msm/20230410171010.2561393-1-bhupesh.sharma@linaro.org/
- Added driver change for new bindings used for sm6115 / qcm2290
  devices.

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

Bhupesh Sharma (4):
  dt-bindings: phy: qcom,qmp-usb: Drop legacy bindings and move to newer
    one (SM6115 & QCM2290)
  phy: qcom-qmp-usb: add support for updated qcm2290 / sm6115 binding
  arm64: dts: qcom: sm6115: Add USB SS qmp phy node
  arm64: dts: qcom: qrb4210-rb2: Enable USB node

 .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 27 ------------
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 44 ++++++++++++++++---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts      | 24 ++++++++++
 .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
 arch/arm64/boot/dts/qcom/sm6115.dtsi          | 29 +++++++++++-
 .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 22 ++++++++++
 7 files changed, 118 insertions(+), 34 deletions(-)

-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
