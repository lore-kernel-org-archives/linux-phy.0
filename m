Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88ABCC05027
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 13:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Eqp1iouQl9C2XmigbjlQX3Aswdp42nCcSO8isFr6sTM=; b=Y7Uxa00B09PlJE
	hoZRBAcLddOU9Vxe8RQlPtnZjBsbOSRqtiZW3KmVC/RfuyDZE3lwfM0BKNJq6u+Y67/MXciNToJWD
	alinmgruQeV7hje5DBP1DRi98hYxjNGrgSzHphPhFX5/kP9s0jiIqScrTnvbPe/SQ7ha2goVIipqs
	28g1VeM3Lbcwl3G2eYOF3g9ER+bnlyfWjbDkDjmaK3H7ejdI4JJMS9mKFaT7mUsnA8tu0ui1FeODo
	S4F+3ERzFYWE0FtbsQJyC5WS0Jq8wl+OHIt1SbH/S8VkXX0brAfVQvdGAgS7NxI6c/wqw4q5S32+c
	GfZJiJr4NlYeuystwCcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL25D-00Auhm-TT; Thu, 26 Jan 2023 13:14:27 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL259-00Aufw-2J
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 13:14:25 +0000
Received: by mail-wm1-x336.google.com with SMTP id f12-20020a7bc8cc000000b003daf6b2f9b9so3208447wml.3
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 05:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OHA/1FBnLe/DjBL2RAHOE/0kR+mnf0skty5y8z89TXU=;
        b=t2Ezs4aR0xtOSuPyHKtDtlcugo0TiOWoAwWPyHdZ6npNMNkpe9KiTfD94IA+vVNUaG
         Y9JkZAKBEhbARn5TAWXNLxS3FNCfsqYLdt8WzHxpZtZP0SqGy0pCbiaj40YEsi+BBeUb
         jFNE2F04PCkqVh8zsvhnkAd5OFroNXlSLm6nL++WONWIx41velTvLpvUElzH0yCypRiH
         MYyLLf4v5WouNG+OzEZ45asnbXqjKBAJj6fGFYqRCyNiFPCRo7RKI+8JjTFrvprO4aYm
         4qdvFj0v9+860LiMQ7ECol1cASOuK3ZE6ttMAiLim/GGPr4FonjvAB8dHIu2FaanRnZz
         R2fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OHA/1FBnLe/DjBL2RAHOE/0kR+mnf0skty5y8z89TXU=;
        b=iBWAyaIrRfwVK2UNTOyuRIyy1vggFT6Kd2Jiln8y0jD5R9ubTp1YezTgKZ4TvUuXV6
         4f0+7uxp87BCkDVuDWTn6x71AJyefqh4gwct4XECMPiaBLyQ7+4FlFN9ChQ9uAiqpgPd
         n6SwiazWT3p9otHf7h0FMQP18JA/BnVkKM6Ei4gR+Ad9gg6Jw4G5t6F8zqFA39BpaF1k
         Ib2KOExz4O/qAdJCA49K50AYgLSgAKLwrL4Oh6plPqc64IMwkNJl6bQrT4ZTIxrnoQNC
         u62POBuUEaFh5CCTgq4lCVslJTeuSdS9wutRX7PP3ZbT+cR70hlDu7jVFFXZlBjx+Cy6
         XrpQ==
X-Gm-Message-State: AFqh2krh4VpS3agPOOISf+ZU5/UNi2av6xkdYmtwxRIZklNN+7W4Vg57
	nOJ5BIeibGHl9hvMAEd7lyFDjQ==
X-Google-Smtp-Source: AMrXdXsB2dypJgZRyLvldnL3MwIjk8JmDxYB3+vK96DnfnuoFbKtG7UDBJzgY5JAKnZdC/FdKnBOEw==
X-Received: by 2002:a7b:c4d0:0:b0:3d1:f6b3:2ce3 with SMTP id g16-20020a7bc4d0000000b003d1f6b32ce3mr37326986wmk.35.1674738859147;
        Thu, 26 Jan 2023 05:14:19 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id 18-20020a05600c26d200b003da28dfdedcsm1719804wmv.5.2023.01.26.05.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:14:18 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 0/8] sm8550: Add USB HC and PHYs support
Date: Thu, 26 Jan 2023 15:14:07 +0200
Message-Id: <20230126131415.1453741-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_051423_185537_5E50E758 
X-CRM114-Status: GOOD (  11.00  )
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
https://lore.kernel.org/all/20230124124714.3087948-1-abel.vesa@linaro.org/

For changelogs please look at each patch individually.

Abel Vesa (8):
  dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
  phy: qcom: Add QCOM SNPS eUSB2 driver
  dt-bindings: phy: qcom,qmp-usb: Document SM8550 compatible
  phy: qcom-qmp: pcs-usb: Add v6 register offsets
  phy: qcom-qmp: Add v6 DP register offsets
  phy: qcom-qmp-combo: Add support for SM8550
  arm64: dts: qcom: sm8550: Add USB PHYs and controller nodes
  arm64: dts: qcom: sm8550-mtp: Add USB PHYs and HC nodes

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |   1 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml     |  78 ++++
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |  22 +
 arch/arm64/boot/dts/qcom/sm8550.dtsi          |  92 +++-
 drivers/phy/qualcomm/Kconfig                  |   9 +
 drivers/phy/qualcomm/Makefile                 |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 406 ++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    |  31 ++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c    | 423 ++++++++++++++++++
 10 files changed, 1063 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
