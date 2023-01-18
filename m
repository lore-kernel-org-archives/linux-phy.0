Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F285C00A5A
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 00:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1z7wn/8UmbRVGPUUIkZDdruqnISKTRfLbGbXbGqkK+U=; b=32lrLH0rIuo9Pw
	bjIUrPmVpoWtpA3Rpj4rZvzQwqNOuN11pgK7Asbsombi2Dgdje4EzpVPnk62re9iYuN1pPtGqFaU7
	AqTPUpRfwuezs9SGT9QgVJ0KfAYiuwnOv+q8q8gl62qoEOT65r7qPFgGq8cqXzTQhS71fJ55G8yev
	j8gY/RqcPLkqtH7loM5G3lNVTZ3bfqfNDxCSNTBjsJVcFXI+FXuIdrhVXGmqM9Hemke6QWGTXE8cD
	9FaCG1ysMy+BO95vmTvWE4apECE7VOtGYoi2LOE5zVWS2zAXzcv1gjEYO7M/dqXq051U7XcAsxZH2
	x1g6MvnZ1l2FTryUyCzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwhr-00GMqv-Mc; Wed, 18 Jan 2023 00:53:35 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHwho-00GMpz-TF
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 00:53:34 +0000
Received: by mail-wm1-x329.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so395140wma.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 16:53:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ywhGTUyzHWVWzLOmk83zcL5eWG5EU/x60/QYsq8hROc=;
        b=A6vsnmpiES0NIEHKcoh1knZS3MFrxmxTatoQRq6+oDn8SXhss+f7FH1989zZ5J6KRy
         IvuGvDSBTXFI7ioN+48Ds1pTxbUPPWH8GV4bFgQNFOtvXzWqpk/C0hIZFhVEAbJmBBsU
         IuX1rOrb9kJfH+iMLcWmcg9DkoddSgI+XlkqVqkTse/hbKYcZa4Nwi7YkbCPOKDlmwPL
         lAFUidN2A73gknAqiFW4MpVcrDAcLYpdRHpb6bqpnv3MYDEwCYvwfZgA8UkmFU6BvC3k
         Le704eFQUv8NbYDW435r2Fb+3+rfvT/cO1aIFRGUPsfy07CMKNkPBDd39uX6bDcECV3J
         uFrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ywhGTUyzHWVWzLOmk83zcL5eWG5EU/x60/QYsq8hROc=;
        b=w8ObBobSS1VTGtSDEo5+sN+AUHXMoRUL7Il29XEeGMp6DAKXNkuTAz55iuvpRe2Rsr
         +58/5MOV7zPH4rr+WivynAnuylSOR+CN1OPcAWise7Yfmh0JkIewxWou/BXTJCbmmkVM
         iU5MGHCvpWFUJhunPbN4N2yUOrbAGtaUDysX+6Z+nBc98QhkaHf7z8ZaDSDzP86q2lOp
         sCH+tp/r0pYvfTKynlddFHT6qz9g0eF9MyJInvb8bGr+2Bz7SCFpWV83VFEr/zcKFvpC
         qw3iZsylqAN5OKNTvTQBCh4bYvh6VbeagSmMfX2eX1RddCZeaNnL6+ejOzNKGGu0daaI
         Qs2w==
X-Gm-Message-State: AFqh2kqM1Ln7Kb1qVqvKmeFIW+Pkt514NFXksO1oXNprp/xSr0zRM2q0
	cbVGyVdadn4VbZ7yUfOf4mdQxQ==
X-Google-Smtp-Source: AMrXdXsOQ/BaxVBfMKqu6whWfXSPa3BIJBwcaMfYk8J4ghLiZyuFox/5HGike3B9xqO/10v01+c2yQ==
X-Received: by 2002:a05:600c:3b17:b0:3cf:7397:c768 with SMTP id m23-20020a05600c3b1700b003cf7397c768mr4665927wms.30.1674003211488;
        Tue, 17 Jan 2023 16:53:31 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600001d100b00241d21d4652sm29609705wrx.21.2023.01.17.16.53.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:53:30 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v3 0/8] phy: qualcomm: Add PCIe support for SM8550
Date: Wed, 18 Jan 2023 02:53:20 +0200
Message-Id: <20230118005328.2378792-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_165332_965610_7A144DF2 
X-CRM114-Status: UNSURE (   9.44  )
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

This patchset relies on the following patchset:
https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/

The v2 of this patchset is:
https://lore.kernel.org/all/20230118003834.2330028-1-abel.vesa@linaro.org/

Changes since v2:
 * added back the binding compatible update patch

Abel Vesa (8):
  dt-bindings: phy: Add QMP PCIe PHY comptible for SM8550
  phy: qcom-qmp: pcs: Add v6 register offsets
  phy: qcom-qmp: pcs: Add v6.20 register offsets
  phy: qcom-qmp: pcs-pcie: Add v6 register offsets
  phy: qcom-qmp: pcs-pcie: Add v6.20 register offsets
  phy: qcom-qmp: qserdes-txrx: Add v6.20 register offsets
  phy: qcom-qmp: qserdes-lane-shared: Add v6 register offsets
  phy: qcom-qmp-pcie: Add support for SM8550 g3x2 and g4x2 PCIEs

 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 371 ++++++++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h   |  15 +
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    |  23 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h    |  16 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h |  18 +
 .../phy-qcom-qmp-qserdes-ln-shrd-v6.h         |  32 ++
 .../phy-qcom-qmp-qserdes-txrx-v6_20.h         |  45 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   6 +
 9 files changed, 528 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
