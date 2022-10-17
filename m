Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A257C4321E
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 14:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RLs7VL2xqmjy5oeyLDxtfMGQswqB8sRV4XFqxFhvdso=; b=4rAEfBhLfF8Ayp
	kfwWBu8A6d5wHa1jLoo1wYxSUC+RE1yuUKMKeIWz5kvQXcqrxR4ieIqaJzPp7sJd+zn4/c6Qrlq/x
	2AJ5FBOgkeYoFChemH4kRzGuTtWZSRfkIZJHkfrf5rRB/3XhYeLAxlWMQn04CbI7HA5jSrlud1ls3
	7zfORXCBn39YMynSLe8E7ALQO2AJdIQHtUpgQVxngMway7JH9BmfTH3MFtk6MYosQmcfJ87bYSNL9
	MvPqAEjuS1S/u60NI0T7QX2l38cJkOQn9jp68KjBkrss7p6blSaDzfPae3rut/ojliKltTVXdeD6K
	YouWOk8sjU9TAhOilr7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRVt-00Czx4-AZ; Mon, 17 Oct 2022 14:54:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRVp-00CzsJ-Db
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 14:54:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0622D611CC;
	Mon, 17 Oct 2022 14:54:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9988C43149;
	Mon, 17 Oct 2022 14:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666018478;
	bh=VKMDTbHv0AiIQSESofuPs9ChGtLIC51Zy4gJKPAy3+E=;
	h=From:To:Cc:Subject:Date:From;
	b=Spgh03yrPMbxZJgxUXwKprKaMZDHAt6ArVFbdkU6dOCbafhhl14ESe9o5rhss5PNc
	 dLIiHqpXDz4x4KYLNigdm5JfZm33eJthOyUZ2lKlJHowg+xiBdKcifQZds0TuFXRpB
	 0W8IlP+ZZLC0rmhDx7lIEIkOxj9dZq2PX+2z2OcYzV0cG+IwtilPyhOB3TkwE88+8C
	 HgWwnJa7M38y0jSnzIQD5Pz5Fe1eP2/xajayrf0mH7Z0cCIkkDmqKrhRfz9cY81Uk7
	 Xuo3BcgXQh63NiQBf+81Hf1EstuMEctQM8inV5d3XPlMeBVo9wIJkEkWTGy400VFqS
	 WY8BpfXxD7xPA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1okRVb-0005lv-Lm; Mon, 17 Oct 2022 16:54:28 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 00/15] phy: qcom-qmp-pcie: add support for sc8280xp
Date: Mon, 17 Oct 2022 16:53:13 +0200
Message-Id: <20221017145328.22090-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_075441_560831_D2A1054B 
X-CRM114-Status: GOOD (  12.37  )
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

This series adds support for the PCIe PHYs on SC8280XP including its
four-lane PHYs.

The first half of the series clean up the driver in preparation for
supporting SC8280XP and its new devicetree bindings that drops the
legacy child node and the (incomplete) description of register
subregions.

The other QMP bindings suffer from similar problems and follow-on series
will do corresponding changes to the UFS, USB and combo QMP bindings and
drivers.

Note that these patches depend on the linux-phy next branch of today and
the following two series:

 1. [PATCH v2 00/14] phy: qcom-qmp: further prep cleanups

    https://lore.kernel.org/lkml/20221012081241.18273-1-johan+linaro@kernel.org

 2. [PATCH 00/20] phy: qcom-qmp: further prep fixes and cleanups (set 3)

    https://lore.kernel.org/lkml/20221012084846.24003-1-johan+linaro@kernel.org

Johan


Johan Hovold (15):
  phy: qcom-qmp-pcie: sort device-id table
  phy: qcom-qmp-pcie: move device-id table
  phy: qcom-qmp-pcie: merge driver data
  phy: qcom-qmp-pcie: clean up device-tree parsing
  phy: qcom-qmp-pcie: clean up probe initialisation
  phy: qcom-qmp-pcie: rename PHY ops structure
  phy: qcom-qmp-pcie: clean up PHY lane init
  phy: qcom-qmp-pcie: add register init helper
  dt-bindings: phy: qcom,qmp-pcie: mark current bindings as legacy
  dt-bindings: phy: qcom,qmp-pcie: add sc8280xp bindings
  phy: qcom-qmp-pcie: restructure PHY creation
  phy: qcom-qmp-pcie: fix initialisation reset
  phy: qcom-qmp-pcie: add support for pipediv2 clock
  phy: qcom-qmp-pcie: add support for sc8280xp
  phy: qcom-qmp-pcie: add support for sc8280xp 4-lane PHYs

 .../phy/qcom,qmp-pcie-phy-legacy.yaml         | 296 ++++++
 .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 331 ++-----
 drivers/phy/qualcomm/Kconfig                  |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 853 ++++++++++++------
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |   2 +
 5 files changed, 999 insertions(+), 484 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy-legacy.yaml

-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
