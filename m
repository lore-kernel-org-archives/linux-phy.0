Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A418C54EBD
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 13:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qfnv37ixXwQuRQUcC4HG8H0/U2Ag6x6l5E+QwxjOoDc=; b=ACOD+8sgB5Ejed
	yA6ceunoit8OsjrkWdptio82fA+xdZi2In99sOjqhfeeR5LUXDLoUbLFv0j8DVVB0Zm1Lr6nIzIk/
	WtRDx7AysCDQup2LAKZlgPZZYHNkRiMOKEafHNk1kOsCXtidoUWhHU6wHByb6wq6s2Z3Byhh3HwFm
	l3XAG+P8NSsFB1sngfKiWJbvKKvIFrVn5I1kxuYhWkwIoJLJ5N0qBkqpceYLRaUuAoJA8znd5BUC8
	pO2GQQ4CJxgkKObPJcBicI5JtjMTy/GobZC2dj2bXeeTah1fRwZpdKLlTzAQTm2bQ5cxHObusfjqh
	ca54jDrz3Hr2iVD0rRwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxHW-00F5gZ-Eo; Thu, 12 Jan 2023 13:06:10 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFxHH-00F5c3-FP
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 13:06:02 +0000
Received: by mail-ej1-x629.google.com with SMTP id jo4so44618704ejb.7
        for <linux-phy@lists.infradead.org>; Thu, 12 Jan 2023 05:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0IszrXcLbv1C0ufOCUrkZd80J905kQzALamm/CPBXfM=;
        b=xlQfeN7xC3TRUc5W1wnqMmOH5bhEryi+j7MuZXvP4NYK/TnRAPocLfCRZXInvZWFax
         j2aQVVtgc6pg/uS4umUG9NHrI70MQ9nlwCBSdckRkQFGoxzIWLZASZhHZ7p+othw1yHF
         eHlDiWlTorZfj3TUaSDPROoYECZ++AJ/hZaW8nCEmLc1mcPKtKwDX2Ic4d86gw+Y1Q0u
         QZME5eeztGxr31yUGxwJR/Kdbyl5+r0LcE9rSyRBlZuQg6PmuvwL2cTEX0iJIVgRDAmE
         UevHO6G74oKqN2zZUXYNQOR1PQ+/42Lmj0uBdNsFdg/lbBQkAAqHvZtxEschn1VXQXJd
         a7gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0IszrXcLbv1C0ufOCUrkZd80J905kQzALamm/CPBXfM=;
        b=yW+28LyETBvkxFDn0GXgD2PjZRUqqg7saKepckGPJfin4yVZIdpdZEtTGD0DLIP+fa
         WIsPOHPlZJI8aHdfuIbe5D3uK9Vk0q++ETGEAwZuZI5nQLRddasgXskBP3+j1mL711Kx
         fRl8mjfEyiqUhZpcP3S2L+eK0od9GhNssZMajUxdNnlwAH6Ewdn21uAq+QJ99i95vJ4X
         AgVt4z9s/UkRu8MqHCWLzabQ3BaHBsOpfquegedHoLUDIXdlL3ixMtplM9v6nZl18lGu
         D9xDCVrQB82Mwc+owPO5YYIEzCG/KEhksTFFug+cnEeT7LXtp3f/t2ruIO7i0t87k01b
         u5RQ==
X-Gm-Message-State: AFqh2kpusplWxhxhBMMiy5ommcwNF+OndHZz4qdT84MNlR8m9GEOMlhA
	kBi5X64ECHAr/9TbA59Ms261AmDTC2zFJ1T2
X-Google-Smtp-Source: AMrXdXsF3pTGMimbHjkVQwICvApD/N1OZJva+QH5LWTUFwBg/7Pk3pS6B1jaWQYBxxtq/ond66wyeA==
X-Received: by 2002:a17:906:33d0:b0:854:6e3:2388 with SMTP id w16-20020a17090633d000b0085406e32388mr9818022eja.12.1673528750749;
        Thu, 12 Jan 2023 05:05:50 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id 11-20020a170906318b00b0078d3f96d293sm7427668ejy.30.2023.01.12.05.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 05:05:50 -0800 (PST)
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
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/6] phy: qualcomm: Add UFS support for SM8550
Date: Thu, 12 Jan 2023 15:05:36 +0200
Message-Id: <20230112130542.1399921-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_050555_528999_37B7A178 
X-CRM114-Status: UNSURE (   9.03  )
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

This patchset relies on the following two patchsets:
https://lore.kernel.org/all/20221123104443.3415267-1-dmitry.baryshkov@linaro.org/
https://lore.kernel.org/all/20221222141001.54849-2-manivannan.sadhasivam@linaro.org/

The v1 of this patchset is:
https://lore.kernel.org/all/20221116120157.2706810-1-abel.vesa@linaro.org/

Changes since v1:
 * dropped all UFS unrelated patches and also register offsets
 * switched to sc8280xp bindings, like Johan's suggested.

Abel Vesa (6):
  dt-bindings: phy: Add QMP UFS PHY comptible for SM8550
  phy: qcom-qmp: qserdes-com: Add v6 register offsets
  phy: qcom-qmp: qserdes-txrx: Add v6 register offsets
  phy: qcom-qmp: qserdes-txrx-ufs: Add v6 register offsets
  phy: qcom-qmp: pcs-ufs: Add v6 register offsets
  phy: qcom-qmp-ufs: Add SM8550 support

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   1 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h    |  31 ++++++
 .../qualcomm/phy-qcom-qmp-qserdes-com-v6.h    |  82 ++++++++++++++
 .../phy-qcom-qmp-qserdes-txrx-ufs-v6.h        |  30 ++++++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h   |  77 ++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 100 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   6 ++
 7 files changed, 327 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
