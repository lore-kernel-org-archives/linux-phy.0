Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 716D1CCA483
	for <linux-phy@archiver.kernel.org>; Tue, 19 Jul 2022 20:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Iy+ZC0OaqFquuG5BHqozariHZCXZi5DjGOuIyu/OhNY=; b=kgRCHbw6f4ZQrf
	YYNOJGVTzJo7ctZi+vNKVmx2pc6WZgjJOKr1AeIpRTXdwn/uIWXuSbOgxIA3djbCYLbVJ+jtQXAru
	qsBOwt4ExbaVM+E6H6xPk+ot9MkgFT61lr/P4ubY9AP8l+0sbYjzOp1v8KmwBAqSFmAse2erK04Em
	wmAup9ZmJhex8ktGTLR+Mt1tNC5fwoxFIbVP5RS4npUOsuwnNa6EuW1MspQf5ZMxvCcGwNyTp+ayZ
	o9cN1uhDeuXRZ4poqFHDlob3QruA4jCk3JyesKJoDY7qC3BoJUhIg+o0ww9eH5goP9TUNIH54zqlw
	Svr6mudqTdasAhCCEO0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDtUH-00CKm3-UD; Tue, 19 Jul 2022 20:06:33 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDtUF-00CKey-3p
	for linux-phy@lists.infradead.org; Tue, 19 Jul 2022 20:06:32 +0000
Received: by mail-lj1-x231.google.com with SMTP id u14so10701588lju.0
        for <linux-phy@lists.infradead.org>; Tue, 19 Jul 2022 13:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CR4x547NI8VcvKHvRqVkj6OJDvRQX46zHm8TN7htZxM=;
        b=h0GE+bUy0Bs2hG4KWpculmCmAtq9Tf91SzX5nS19z7bZ6Nd/D9A1nNawX1MxIebopt
         LEiam3fmKidffAoIqhehXWRfYiEysJ8EF5ABZMN2eocl1WU+diF5L0593z9wCokRJboO
         MOKRoTpv9hyGsZ/t3uSCczJwmj/WZJSDgWVydv+al4C+oRZC5432LMf/kd1L7E3iUSae
         5NbyPF27HUbsrUh3a+GG9Pfu0xRz6MN+rC5pZSRHLiJ59Gm2Bpn2eSWyqX9LlAmwLIv9
         hKKWL5dzyz9YkbT4DGj1I+mdvApk88qaFeKGuo5vAYWtVaogc49m8SFcncmTuDSM7xa8
         AnVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CR4x547NI8VcvKHvRqVkj6OJDvRQX46zHm8TN7htZxM=;
        b=RqgHCP6k3WqJNh1Aot7MSDCHbr3lu3KZPB2TGsrckGMzT53p7q3KkC2qlUQxpDW//v
         h/xlhRxZ3RALCgw0ss1WpujhXCiv9k/gx/tyQrVYwajRLxzxw7CfNjPYDEA5luAaSZ0b
         HeceMEv3kpzue+exS1futaaRx2ABLxZZUKcCEdW+6+cysji+JuzhNwH1Bf+bOxDrg3Hg
         WZQUlhjBoUSRGmGo1dHGMWFX0czoNpim5jJlLh3tzkquLvrQxblBVuq4DMOaL7cEIRtg
         yqCT5VZt1YLZNcCZwU8lccR51N/mZ5kbwwzg7GXVI8xoies51sTPSWhxsdxI48odXhEQ
         tWRg==
X-Gm-Message-State: AJIora9z/vAcq6bqmtUfBvTWE16E/lC4bAHvW7RDCfIXnAPwES1st/kI
	sBrVFaqaAdFKREUgjb2F//YXzQ==
X-Google-Smtp-Source: AGRyM1uN2k7zHqAUY1+FSsTsYkFUJKD+P94mAnDMXjpNWqLKzendZ+rz/y7Oo1C738kWz/FQaNYvEQ==
X-Received: by 2002:a05:651c:17a7:b0:25d:b518:bb38 with SMTP id bn39-20020a05651c17a700b0025db518bb38mr6278008ljb.114.1658261187858;
        Tue, 19 Jul 2022 13:06:27 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id w16-20020a05651234d000b00485caa0f5dfsm3402324lfr.44.2022.07.19.13.06.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jul 2022 13:06:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH 0/4] PCI: qcom: support using the same PHY for both RC and EP
Date: Tue, 19 Jul 2022 23:06:22 +0300
Message-Id: <20220719200626.976084-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_130631_203923_5294CA05 
X-CRM114-Status: GOOD (  12.06  )
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

Programming of QMP PCIe PHYs slightly differs between RC and EP modes.

Currently both qcom and qcom-ep PCIe controllers setup the PHY in the
default mode, making it impossible to select at runtime whether the PHY
should be running in RC or in EP modes. Usually this is not an issue,
since for most devices only the RC mode is used, while for some (SDX55)
the EP mode is used without support for working as the RC.

Some of the Qualcomm platforms would still benefit from being able to
switch between RC and EP depending on the driver being used. While it is
possible to use different compat strings for the PHY depending on the
mode, it seems like an incorrect approach, since the PHY doesn't differ
between usecases. It's the PCIe controller, who should decide how to
configure the PHY.

This patch series implements the ability to select between RC and EP
modes, by allowing the PCIe QMP PHY driver to switch between
programming tables.

Dmitry Baryshkov (4):
  phy: qcom-qmp-pcie: split register tables into primary and secondary
    part
  phy: qcom-qmp-pcie: suppor separate tables for EP mode
  PCI: qcom: call phy_set_mode_ext()
  PCI: qcom-ep: call phy_set_mode_ext()

 drivers/pci/controller/dwc/pcie-qcom-ep.c |   4 +
 drivers/pci/controller/dwc/pcie-qcom.c    |   4 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c  | 155 ++++++++++++----------
 3 files changed, 96 insertions(+), 67 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
