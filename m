Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76206C636CD
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 11:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yee0Expn1VeGo9AFb0QzM5ILNbsqyPWWAlI5gD2lsvY=; b=lTnlYSYQo79Rq1
	f8gyRl3v6wMrZTSbHMz7DpDOC09/GF/GpR0PSA8stLAY1bmh6juik8qQ8ffBBxlxM34kQ4NscBHYf
	ifqplICBUQJ5JLX9kylpw4/DT9u9kzzBU+cPvz18yhIkjQaHz4gpX7+eYliLLLLpQkuKFWKshBtIp
	/4LNc9llpp8Yy2pUVrD4YHztShOnGSbVBOxWPOJ6ZBEPYhRV0rIF+D8Klrqfl/A9TIzdB3t9zfBII
	UH61pwTdV+fDNjz5sF5BJITaOkIc/A2yzmzvKC87v51hZlG5UqRsAP7UfYE0H0KPkXdYkDnOZEtcd
	5+NKXYLvpr2XaGifBYog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPMLC-00C0Zy-UM; Tue, 07 Feb 2023 11:40:50 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPMLA-00C0Xd-5G
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 11:40:49 +0000
Received: by mail-wr1-x42d.google.com with SMTP id j25so9720410wrc.4
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 03:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0d71pvNow4MZxTy2PhdR4/s9QayMD3hQ8JhxulOfaGY=;
        b=xkY62qqQmXp9GdszMKhWW8VUG22gdoM1zO5Y6Ierr23/D8xkYQbbEhNe2c0Xu+U6lv
         pWf9KCzH6/lydUi3wquhFOQwCoQAJr7lQKGDFOJmalVbBYO6B8XK9cHziXDvPRD+Mv+M
         tJurVodzvcUi6jOt/x46Kpcr2ruyBDzUnSkeyXL0HCq3FzoaNPewMwRdwMMddHj6ltE8
         RSpTSJ8Hj/2bVNfvTQEPl+4dk4Mp4l3B3NlB74IIkma/+TZyaF834OeC1s9wt/CzmpXl
         KEGQVTmWEg3GYRMbaKKRou/CFCCIEKYUfAuOIjaGSP41Yq/bndM6hn1QOpFT8QsBZGSf
         UfgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0d71pvNow4MZxTy2PhdR4/s9QayMD3hQ8JhxulOfaGY=;
        b=bxdVJ2C64n0ML+uUvAVfthBGcsIYzL4jdVs95K3j4nK+s3OVVRu7kR5w7g0dt3W9GZ
         kk5YfU279KdfFdqv0Q8i4ceu4X7BgfLS0/z+GCBexKrFkx42IbZkHjizpgM1nE90HE3n
         O7uSzoHMpbeyaQM6ErH1586ZcUaeqZvssZDt8kzK7aHa5VnYkD7Drp6nrMkaTFbY8R5K
         M8/iJsRMFaAqh+uDpxT8sqZ9/t6UhrF/4rtqaX5qmlXtSMXclz7ivFn10v5K9VzE5K7g
         foti/usKuREpFK3OXPjR8oVUSbDFk8lUkiDSK7cSbYZiyozQxlXSBvP7z7xRdpHid+f4
         szHg==
X-Gm-Message-State: AO0yUKX75Ltp3wcfUR1J/vCbu72kXogYmmOM0x00fcuLKIsSz1BJZRYx
	bU0Z/2Q7kpp4YtYmxH6ZbY5e6A==
X-Google-Smtp-Source: AK7set9Aeb/GAN7TJEWb/HYMU2morU4S82KZxLRl5kieGErlGBEypSmnf86+JFfUEQfR3mlL5vWGWg==
X-Received: by 2002:a5d:510e:0:b0:2c3:e4f5:18c with SMTP id s14-20020a5d510e000000b002c3e4f5018cmr2188054wrt.30.1675770044402;
        Tue, 07 Feb 2023 03:40:44 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id c7-20020a05600c0ac700b003d1d5a83b2esm18326005wmr.35.2023.02.07.03.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 03:40:43 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 0/6] sm8550: Add USB HC and PHYs support
Date: Tue,  7 Feb 2023 13:40:18 +0200
Message-Id: <20230207114024.944314-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_034048_234053_FFD317EF 
X-CRM114-Status: GOOD (  11.74  )
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

This patchset adds support for USB for Qualcomm SM8550 platform.

This patchset is based on top of the following patchset:
https://lore.kernel.org/all/20230206212619.3218741-1-abel.vesa@linaro.org/

Changes since v4:
 * dropped the dts/dtsi patches as there is no change needed to what is
   already merged
 * rebased on top of next-20230206 which has Luca's patches for SM6350,
   like Johan suggested

Abel Vesa (6):
  dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
  phy: qcom: Add QCOM SNPS eUSB2 driver
  dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Document SM8550
    compatible
  phy: qcom-qmp: pcs-usb: Add v6 register offsets
  phy: qcom-qmp: Add v6 DP register offsets
  phy: qcom-qmp-combo: Add support for SM8550

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |   1 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml     |  74 +++
 drivers/phy/qualcomm/Kconfig                  |   9 +
 drivers/phy/qualcomm/Makefile                 |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 409 ++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    |  31 ++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c    | 423 ++++++++++++++++++
 8 files changed, 945 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
