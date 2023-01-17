Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DB05C3DA78
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 12:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aYyPF6meQeCtF4l5ctaQXhVgk7ATyQluSk2A7ODGZ8g=; b=jc245Q5mfjr1Y1
	rxh47C/VUcrIoqBVhX2pKMGSg9tqIcSvk9c/sx7ziDkX83IE0f2iDTxvMPdOMg7vgGwv9/Is+YzrJ
	y8O4grfRf31OaBqnDLlGrGEcjqGOHfI5cRBULnoIfVbba21DzAeBhEJvK8S9IsY2GGUpO2pNGLhaS
	rtvPNbW798hHYtCfecvgKHOtwXf3NwWkbyNgG+UoOUjyq6QurRoLPwEN0FBQS/1Ai6KKzEntwBS/F
	RdMOyc8CtV/GO7GPnGHEtmQP1jY+dhgRr2R8o/9SktHkRgnXjB2NWO/fqE9w+LLPUE2FrmFZ6p1Dr
	kGLeH+ePYKqE0VmnZTuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlVm-00EGwK-JE; Tue, 17 Jan 2023 12:56:22 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlVS-00EGmQ-Vm
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 12:56:09 +0000
Received: by mail-wm1-x334.google.com with SMTP id g10so22158554wmo.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 04:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Kqhws25vCfr+KtN44sNbAes05bM1bGpfEYSXw7WryfE=;
        b=KATTs6l9/8eFALrmE/PARmJXB+OJhINK1bpVy5E0K94Kqngab/bmHcfgbkw/gpPGTw
         3gz2xCCkVhsaQi962ml2qo5pkgSoYrxausxWk5QRUSoZsyC4PhrApdGgZDR8x6C7lbd6
         abxD2/W1DsjM+DU3FwShLfS3je/WvRhrCIA1TqlqqLHzAYoSBjmlHSaXXYLHPKESYYvh
         aGdUMDV/tAZ4NKYh6u39Grq6aYK1fUl00jqfWXwe2Kq4f8gOxWjEfZZd22DsdCWkDFMJ
         Ie42H1XSnXlvFS6XLmkQXNhYLT8WHzGIfBE8Ujdy1PKxDDZeUZaaAvsHfXmWUEfT7+HB
         IBkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kqhws25vCfr+KtN44sNbAes05bM1bGpfEYSXw7WryfE=;
        b=2ZSBxG0CWyngej3KMnvdW/zFvZjD4n9fJlll1G77ZvcAT/H+rmMcS+x1kQFPZQ6BEq
         8H+YK7+NbjlaFtbJyro6egKEI/Rk0uWAQnui5uF0tUvrvO2qnApV0pDxSdGynJHWl0bS
         GUAa1b01maWTiTtZtoZv+BgnIicR7Cq3UVXxon2BjwzYInAYOjTuI6n5iCmiuv6ZuGmS
         U2amZf9DvpENQgmEzHMVQV3jbUwJfI7TkWYsOIR9xVCs4pNRgwR1HXD8SPWPiHYBHL+/
         mcrVyTxjrzx9fACe3mc4gARCBWYKDJ6D5cG7eWnZKoNC4MVo92pdrdtkM9iUOBz+tASZ
         /stQ==
X-Gm-Message-State: AFqh2kr4Q0NLn9Shj2+R3nIBe49CHg/uyouZ+c13m/RpNpVZPMwJSWKq
	tnMkutzz/GqxdgAU6/npnXEafQ==
X-Google-Smtp-Source: AMrXdXvqtGtRoLFDkn2W9oAJUq+uFk2SZmQkZJFMhbCCc178PKwlPxcU5GY21cpxJ19dpuBfLPSbrw==
X-Received: by 2002:a05:600c:1695:b0:3da:1c49:d632 with SMTP id k21-20020a05600c169500b003da1c49d632mr2998500wmn.1.1673960161411;
        Tue, 17 Jan 2023 04:56:01 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id g12-20020a05600c310c00b003c70191f267sm45069778wmo.39.2023.01.17.04.56.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 04:56:00 -0800 (PST)
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
Subject: [PATCH v3 0/6] phy: qualcomm: Add UFS support for SM8550
Date: Tue, 17 Jan 2023 14:55:49 +0200
Message-Id: <20230117125555.163087-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_045603_137859_EE4C1201 
X-CRM114-Status: GOOD (  10.36  )
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

The v2 of this patchset is:
https://lore.kernel.org/all/20230112130542.1399921-1-abel.vesa@linaro.org/

Changes since v2:
 * rebased on linux-phy/next
 * dropped sm8550_ufs_phy_clk_l, used sdm845_ufs_phy_clk_l instead
 * zero padded pcs value in qmp_ufs_offsets_v6 to 4 digits
 * replaced LF copyright with Linaro's in all header files
 * moved the UFS specific includes in the UFS specific driver file
 * added Krzysztof's A-b tag to the bindings patch

Abel Vesa (6):
  dt-bindings: phy: Add QMP UFS PHY comptible for SM8550
  phy: qcom-qmp: qserdes-com: Add v6 register offsets
  phy: qcom-qmp: qserdes-txrx: Add v6 register offsets
  phy: qcom-qmp: qserdes-txrx-ufs: Add v6 register offsets
  phy: qcom-qmp: pcs-ufs: Add v6 register offsets
  phy: qcom-qmp-ufs: Add SM8550 support

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  1 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h    | 31 ++++++
 .../qualcomm/phy-qcom-qmp-qserdes-com-v6.h    | 82 +++++++++++++++
 .../phy-qcom-qmp-qserdes-txrx-ufs-v6.h        | 30 ++++++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v6.h   | 77 +++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 99 +++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |  3 +
 7 files changed, 323 insertions(+)
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
