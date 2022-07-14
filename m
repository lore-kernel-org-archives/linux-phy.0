Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D8F6C43334
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IsEDbTQ5w3H7WUE7XwTxvrbWsnMlSvXqzSX10z4w0G4=; b=ZDbLQCN+7DmFYw
	PwI3grfMdJzZmoRLZg/v8Tr1ZeHpfeP7iF42vvwC+6lnKv9WmiJRtgiOkz+Ux5Im+1efMoYVHDmCd
	7nS1g2+q4JvFYxvgFXq0Xuhtc/so9bXiezit/IcMVY4R3SBE7DXYxlZ40lc/6kPZ/6ZY6XOFDJFJ9
	jorDx2aI3fv/zuFGQOrmM1/dhwFpLIEuPyNb+zjKYykNDB/Y+5TWeKBW9Lz9olLSzqlqsHUlqi4cM
	EgUbSJFkRLDlOSrryiqmIlJfFVEW5okXWhaXKH9Qn9RFDly1KF6SD50hPZzcJYSd+6mdUaGa5y9RZ
	zQaTFZSo67baJYWFle2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFR-00ENSe-66; Thu, 14 Jul 2022 12:47:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCh-00ELNQ-Da
	for linux-phy@bombadil.infradead.org; Thu, 14 Jul 2022 12:44:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=q8wH+zGkO3SVPmZyFKKpvIxsbTXv5OPRkb4nC945za8=; b=c8zAT1Wjto0v/6o1nA6PDpwYjC
	0Vgpj0lGlyYEbw8tUwAO4f4YE7bwVBmvdT26o/E9gh6Ji9q9wPWZm9aBvmSkGWG4PMi7KM9hC9Pi1
	XO76fB/68AUHvnQfjNymWtBsLHRLDzOKtmAdGbIyz5oWp0Xh0XRSXTpFl6bFpWCEet4mm0fMaMtS+
	mfH9LmnSO90ZE+uZ4RPnz2UG1zyMh7edGDEcSYTFk5tC+C6+07rGK2mrcVjh2fTQpti1kONUOONyi
	0Jvg2kAeGPD2Kgcbv1ixhJWKSoduMZsPNpvyZncZZF0t7X+pEpADcNMC8+f//sWn7DZnlgUcqemRF
	HKikZX5Q==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCd-003q75-9p
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1C32F61F7C;
	Thu, 14 Jul 2022 12:44:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE585C341D0;
	Thu, 14 Jul 2022 12:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802645;
	bh=KioSpP0GcyEhkA8fqdC4rA7ugQSJzAKN3mdLXJ2iR3k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qX5oSNCxn5oKuXzXjq7ny+o8UJeMwTI2ILJR4WUnKFl/tQcy71vIdMx7AKmGfTolZ
	 zloyMZMmy3WwUy7fk2Ezc4IGiIRoy0AsUOwMte3YwhWQpaUabvsSovXAVFNme+xtLR
	 tJ+EPrPgukKOmmw61WisnREPm8XYUAJQKv8c4UULj0NieSxO1bgxRQLLvgenOmJWDR
	 VYjkgYBl3mESiU4oiu135VpiSoCQsD1on/qW2Gwe2ElXUcF+1HMUZDdPHl81bgZYVo
	 YBh7XIDCRQinzAtLRZGgF+W0xrcXgi/Gsg0Ehs0xAVOD4bEnpPd0UXxtyhmYKM68gg
	 cZHfK1dVd9DHA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCR-0007EO-8E; Thu, 14 Jul 2022 14:44:11 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 28/30] phy: qcom-qmp-pcie-msm8996: drop pipe clock lane suffix
Date: Thu, 14 Jul 2022 14:43:31 +0200
Message-Id: <20220714124333.27643-29-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_134423_865131_9654B255 
X-CRM114-Status: GOOD (  12.66  )
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

The pipe clock is defined in the "lane" node so there's no need to keep
adding a redundant lane-number suffix to the clock name.

Update driver to support the new binding where the pipe clock name has
been deprecated by instead requesting the clock by index.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index be6a94439b6c..7b893c66cf75 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -892,8 +892,7 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
 	if (!qphy->pcs_misc)
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
 
-	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
-	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
+	qphy->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
 	if (IS_ERR(qphy->pipe_clk)) {
 		return dev_err_probe(dev, PTR_ERR(qphy->pipe_clk),
 				     "failed to get lane%d pipe clock\n", id);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
