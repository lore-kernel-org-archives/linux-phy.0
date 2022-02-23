Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23ED4C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Feb 2022 10:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+GZI8nKwY8wtuwaeFQrQw431U0ha70ro5KlhzKAZYXY=; b=sosRnDCkjssPPJ
	FpO6CncAkmF7zmQUT9d49W0Jqu8/JwxW577z5tijpZasrDLdn8mxyEwCo05kwqjuH2Tf+Y+wC38j6
	Xt1KRQI2M3Zyi411vnHLvcoGrjXJBf1aD2g1RddM1kwupJvpaeUgwBxFX9MBaVCUCnXXqHliEl4hJ
	+ic+Wrqsp5Z6anfFPNgqX38WncsB/OgqBP6td0QOp1JBL8M10hdCS0J+UJp6cPRZdXSXKZ4mot/So
	H8AaUK2Gv2Q818pJfTovXe7nvS83s6w95k/PnMpOAWNsFjwg4hbQDwZCZh5QZXLjsjwgzu9J8rzU8
	N/UR4TfKpi8Z+9iDBgrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMofS-00Ddkq-L0; Wed, 23 Feb 2022 10:14:42 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMofQ-00DdjE-4o
 for linux-phy@lists.infradead.org; Wed, 23 Feb 2022 10:14:41 +0000
Received: by mail-lf1-x134.google.com with SMTP id i11so30144759lfu.3
 for <linux-phy@lists.infradead.org>; Wed, 23 Feb 2022 02:14:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iX1ZeLF9Gp+VwIS5LsBskWHUnS0HsS8oiMTD54YQjTs=;
 b=cHqVkKRV86o2eEV1UeWuU0HCYKCfTt9NSvJOlpYKPl9IlGrDSQVWQ2k3yMroblPKmO
 aiEQ+4gOuPLw8djmpMroDGxy/oquR4pBFG+k0k3ihUBDpieRhzH8OObso5GHcaojKG6N
 a1oM9JdZVss44vjANB5HRt6fSaUMJu9i9HVk/se5jtsEl+Mib/OgHCLteFifmNrMtsnO
 rz0ns9X/xWzChBnUHskS02pqU91bZP+SQ6Ueu61op+g/pfhlYLWb9vaJNokp0V8RmCvD
 GuEacjQ0K3xIj0AVHArdBDZGxB2McOvCIkadx0PUx+4LnEoTMmcxs0eZG+RlovygskK4
 RHpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iX1ZeLF9Gp+VwIS5LsBskWHUnS0HsS8oiMTD54YQjTs=;
 b=roTonewJ+XRQBDi3nVFlecz8eo0hGsB2Wvwz4T7eO62LsQhqJfeHw2MCOim08OHNgE
 aYML3nxXkJAQl6NT9wDdirvkuWcEB0rQgFdxyglWbFNPbYcmBvMvw21psIKrhjAp8f9R
 1ZaN51zcMPxpEQwbtpEqR0W2unjZy9CbkbqLn3tELIukECklxSLG7yHXNLmlt3MC7wFe
 CIpBLBDHBw5hLcuWRBoqe5QbEhkh+adxCe+D8ZsTfY4kNK92jr/4qzNsy2ZCVukEkZDS
 tvxJP37PyLDBMq+iv+4lmWXpj3vDJn/pmhSPr4UYwLc7j9BjLWtWOGsRCsg5IjsFW6vm
 VJfw==
X-Gm-Message-State: AOAM5307536DAX0hWk687G/oXa4mVCPPPobIaag7jA0Hh73B2AJ5ZqJb
 E3hnmESxbffHlD2ZXtblLoVVcg==
X-Google-Smtp-Source: ABdhPJwWGshHSvrjvjn+t34cea1aJ9jvn22/Fm42XQYDA16HH37CePJGkQRrS5SaeSEtyshh8BdztA==
X-Received: by 2002:ac2:562b:0:b0:443:76b5:cb35 with SMTP id
 b11-20020ac2562b000000b0044376b5cb35mr19392663lff.208.1645611278030; 
 Wed, 23 Feb 2022 02:14:38 -0800 (PST)
Received: from eriador.lumag.spb.ru ([94.25.228.217])
 by smtp.gmail.com with ESMTPSA id s9sm2060256ljd.79.2022.02.23.02.14.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Feb 2022 02:14:37 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v6 0/4] qcom: add support for PCIe on SM8450 platform
Date: Wed, 23 Feb 2022 13:14:31 +0300
Message-Id: <20220223101435.447839-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_021440_217164_35FF2642 
X-CRM114-Status: UNSURE (   9.22  )
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

There are two different PCIe controllers and PHYs on SM8450, one having
one lane and another with two lanes. Add support for both PCIe
controllers

Changes since v5:
 - Rebase on 5.17-rc1
 - Drop external dependencies. The pipe_clk rework takes too much time
   to be reviewed. SM8450 works with the current pipe_clk multiplexing
   code. Fixing pipe_clk will be handled separately.
 - Drop interconnect support. It will be handled separately for all
   generations requiring interconnect usage.

Changes since v4:
 - Add PCIe1 support
 - Change binding accordingly, to use qcom,pcie-sm8450-pcie0 and
   qcom,pcie-sm8450-pcie1 compatibility strings
 - Rebase on top of (pending) pipe_clock cleanup/rework patchset

Changes since v3:
 - Fix pcie gpios to follow defined schema as noted by Rob
 - Fix commit message according to Bjorn's suggestions

Changes since v2:
 - Remove unnecessary comment in struct qcom_pcie_cfg

Changes since v1:
 - Fix capitalization/wording of PCI patch subjects
 - Add missing gen3x1 specification to PHY table names


Dmitry Baryshkov (4):
  dt-bindings: pci: qcom: Document PCIe bindings for SM8450
  PCI: qcom: Remove redundancy between qcom_pcie and qcom_pcie_cfg
  PCI: qcom: Add ddrss_sf_tbu flag
  PCI: qcom: Add SM8450 PCIe support

 .../devicetree/bindings/pci/qcom,pcie.txt     | 22 ++++-
 drivers/pci/controller/dwc/pcie-qcom.c        | 93 ++++++++++++-------
 2 files changed, 83 insertions(+), 32 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
