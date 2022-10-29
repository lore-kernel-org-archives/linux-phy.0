Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14795FA3749
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 21:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h3MyNhA38Yug6VUvw+tGgGUFhT0+qfUBehxMFcwut/4=; b=JnKRSHtm4iLxLf
	5QNJEPUDxep3TwkwHh6ymGR4uggjhKb1UzkKJkMKm6kJ/aC7nd2106sNNm8/gclu5JD/Zxi17mC8x
	vY34qTo3f/2x3q6ER/EqWZIOaE0qhV2QtamjTSOeLj7Tl2CjzXr9PTqWNtRbJ3NCUtitHMByqCNyK
	KXA85eF70LpJ91lspj0sF+omlbqSIGTyyyASSl4L/IWgeUfgqesP7e6rZe+nB2KdUUgzWRIYQc/49
	EB9NKmV1gDUaFDm4yCllOBtv+WK4bD6O+LI82ERCP4SnXewOnw38Z9sz8ikF9GJfK9yBQ6jVxA82Q
	ehZuolGLT1KGIiXVn/gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oot8r-009MJq-4Q; Sat, 29 Oct 2022 21:13:21 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oot8n-009MFi-Mk
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 21:13:19 +0000
Received: by mail-lf1-x129.google.com with SMTP id t4so467385lfp.2
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 14:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mq8Mg06fdD8FFSs+dwD1ITMKqlWnIs/wVZyIglcsiPc=;
        b=po6WXVw9WSHq/UQZyPh9zCXDgLHvb4PeMI38LBF4vn0NS5ZDPMaKDJgzN4ctT4wZKw
         spnRodfwn+6y/mYskrqV/NDQu+SZ/Xy9z9+xkVzewoRaA7oXZcSZSuT/q/BiJy5CjkzQ
         MZ4Y+SPB85ndhYiqLj8ZYx3hgZNsKdJXZubR9t/kV8vZ5+vpZRzjc8kiw/GvTRdDEMo1
         uDSnYQbb/0NTsYzszJEfbv5IKehB1E/RyQ+fvg/CzJHER0ajcAc3UrJygAejKVP+ER3r
         NlUPeAk/7CknWx65tjHv1EQy9QMiVZU7sk1GjLYgk9q4Ai3r9pjEOr+FIoDswROARauU
         Qkjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mq8Mg06fdD8FFSs+dwD1ITMKqlWnIs/wVZyIglcsiPc=;
        b=N7024eFoLCh4XQm3T5iQm+fC/mBnTtbD+tKtYoU94rMwQQdthHxu0YrLgJ/2jRsATu
         emRWlNMdSqrDc/oYat6nVc23FAWOr8mywxUMsKuZ6MA6RvXFE664FS/jrYxDT0Aec+tH
         16rOrJoxuQogxZKuqigJ/gH92joGDebdhxW/3vi/fjc79i13D+/F3tfdB3FCBLex5ITl
         9uHy8vWFcZc2g5La4A5JRwDd2JV0Gp1aoMDY/CktviHChIzieTzSfO36erDqTmyHGd0c
         OIVRlBBUbIy2c7JQo9DqVOjJrbRF1r30oGtbzb0WFKjhhCAZ6dFskzwTou7zTgp9in1k
         DBuQ==
X-Gm-Message-State: ACrzQf165k7HUacH0xULZHqS2iwt53VmUnDJRfUMsKIP8VZ5JPJPVfrC
	FNl7kBVLyBXleETbRckgcL/mFw==
X-Google-Smtp-Source: AMsMyM46iI4lf7SmclXK+EHWE1Atz1jHMgUHdPOMtJSyDkqEgBOlRePWkwbCVNxvvkAnY6D4+s/FNg==
X-Received: by 2002:a05:6512:2102:b0:4a2:48a2:2cc1 with SMTP id q2-20020a056512210200b004a248a22cc1mr2379585lfr.167.1667077994504;
        Sat, 29 Oct 2022 14:13:14 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id j14-20020a05651231ce00b004a480c8f770sm433508lfe.210.2022.10.29.14.13.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 14:13:14 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1 0/7] PCI/phy: Add support for PCI on sm8350 platform
Date: Sun, 30 Oct 2022 00:13:05 +0300
Message-Id: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_141317_815755_BAC7752F 
X-CRM114-Status: UNSURE (   7.83  )
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

SM8350 is one of the recent Qualcomm platforms which lacks PCIe support.
Use sm8450 PHY tables to add support for the PCIe hosts on Qualcomm SM8350 platform.

Note: the PCIe0 table is based on the v2.1 tables, so it might work
incorrectly on earlier platforms.

Dependencies:
- phy/next
- https://lore.kernel.org/all/20221028133603.18470-1-johan+linaro@kernel.org/

Dmitry Baryshkov (7):
  dt-bindings: PCI: qcom: Add sm8350 to bindings
  dt-bindings: phy: qcom,qmp-pcie: add sm8350 bindings
  PCI: qcom: Add support for SM8350
  phy: qcom-qmp-pcie: split and rename the sm8450 gen3 PHY config tables
  phy: qcom-qmp-pcie: add support for sm8350 platform
  arm64: dts: qcom: sm8350: add PCIe devices
  arm64: dts: qcom: sm8350-hdk: enable PCIe devices

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  54 ++++
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  22 ++
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts       |  16 ++
 arch/arm64/boot/dts/qcom/sm8350.dtsi          | 248 +++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c        |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 164 ++++++++++--
 6 files changed, 487 insertions(+), 18 deletions(-)


base-commit: 25dcaf94448f41f1634e8e44f28f37b1aff4bc2c
prerequisite-patch-id: 2653b8544469dbf460318520629a991707063a74
prerequisite-patch-id: 8e104dd9bcbfc111a3e3a40e653b7529bc43c2da
prerequisite-patch-id: a20eaeb1d3c239365d6941e0b78bd735d80ac16c
prerequisite-patch-id: 564c51aafef04658f6f72a90680640f77117c8eb
prerequisite-patch-id: 6d7542be2843ccfd1f649d2dc85230e640adf5f1
prerequisite-patch-id: e36118b08045416bf3d79a2c69b7f1b2009d6945
prerequisite-patch-id: d48963bb923f85108a8f0d574e92dc63ce341483
prerequisite-patch-id: d8dfcbc4413e5a29ed9d4c2a50f5e6cdec0d261a
prerequisite-patch-id: 0493226b1dd5989626619e598650d98e165a9c1b
prerequisite-patch-id: 7264ed9ab2e1fc6c25db45812c6834f36590e72e
prerequisite-patch-id: 2784713a211929f0b253674742a7bf0966e02c22
prerequisite-patch-id: 454b9956cd3d4c4cdc4f39e746175a5d6a1ca084
prerequisite-patch-id: ce69ae926fb095edd2f3699cfe28e9e75719985c
prerequisite-patch-id: 0286a9947535ee3be9f58b8a06f7b3018d1309d8
prerequisite-patch-id: 9d0856ce66a0603950eaa4024057c1cf1f84ed95
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
