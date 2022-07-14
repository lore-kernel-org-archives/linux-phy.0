Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 921E5CCA47B
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hLXWLdSvSte8OWXGND0AoUx9p7yQs8ESkYkDR8AkUao=; b=zWjhUGgNqTbrew
	isIzvLZ22ZNmneiZBymtaAYHhBqS1XAEyB+jExPdPmJtDGfXwAtf3PMWrNfsxDaLLGk5MCbuW+ybf
	0CFSrMgpns7pTIiH7mh9KFEcBLWMYaDmWXPMA5Fd2XTcmjdi0xRC2A7U6aGE7K4bkSGpRzXMcHRvr
	2Bt3YSi7Gfr73ckvP5HFOQR6SsBOSgLXuoO44KOgiVRNs9zPPpFdy5qOIssW/RP7d/Cb+RCYpKF/0
	Bd6BiydJDwd6eVq0VKsXXtPDqFvovmJj0/ZOY4BvCHv6jaTt1TAJh5C239mQTw8bviOPfPJTDpRV1
	mlAvlxu3GG9qWshMIY7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFR-00ENTP-Kh; Thu, 14 Jul 2022 12:47:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCi-00ELON-VY
	for linux-phy@bombadil.infradead.org; Thu, 14 Jul 2022 12:44:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3lLEOC5vBeM/XdIasAFxkkWxUkNaWLQhwZnDhfKGGns=; b=mrTBnJywnRlss2RVPwA3BUheJu
	uuYpopUUWcu3I+79XNzuj80N1fFMYreiU+XK/+2bKHO3pqvePqOssW7Pe3QVeLuXT/1NSp1dUu6b6
	EKnbD4aMVbZEG8SCPyjRsb12JJZuKHfW5wiaS0vmwaZX9M1uqvatH+1zTxoajka319zZf1Dww/NMU
	giT7TyuY/G2O/hg/Na9G2LnNbTtdig/kbVr0xe53q95w55Ht9fqy2uqLF2uuWyXSEMs8XYvtsm8NS
	Bs3vqcYq81GjuYcyXIloqQ/eKAPaJECMt2OAVjzCtIjErwHIXX6of393chCjcYD0fRcm07bRI3HRT
	cyC/3Deg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCd-003q79-9p
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7913261FB8;
	Thu, 14 Jul 2022 12:44:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27E51C36AE5;
	Thu, 14 Jul 2022 12:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802646;
	bh=0LjnFuAUFxmRr9/pq/amP67DnLL2sDxFIQzKnM/iwzQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Uvc0AGxHU5v2ksUqZ63A2iquUmm/5B7W0wZOuBsYgXwwbP17Syuy3Diin35b3mbiY
	 S142WAHxjjbpOe5u+JA6zmFLeN0Snh8pbTPdle+nnnYnJTNaPEV/4CanCW0CyEiDWQ
	 j4HnxRgCcf/ipJFTByhcSy8EXlUDhNXVHt+asKiDaHhaThJzZJK2f7/cO14UZ81qay
	 Jq5un5qKZ/U543bxZDLj16ycrBspvPEeiIpH1Z63+O6J5bcffpf72xc82unCTC7l7N
	 Uio6ZHpgaYTPYo1siOdNIgTDM19+ZkmkCY+XMmt31CbtUlpInisddsde9tf9sBxhs/
	 CncP8YnpR5Wyg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCR-0007EV-DV; Thu, 14 Jul 2022 14:44:11 +0200
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
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 30/30] phy: qcom-qmp-usb: drop pipe clock lane suffix
Date: Thu, 14 Jul 2022 14:43:33 +0200
Message-Id: <20220714124333.27643-31-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_134423_866900_02B95705 
X-CRM114-Status: GOOD (  12.54  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 3fa7ec335157..046036986f9b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2631,7 +2631,6 @@ int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, int id,
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	struct phy *generic_phy;
 	struct qmp_phy *qphy;
-	char prop_name[MAX_PROP_NAME];
 	int ret;
 
 	qphy = devm_kzalloc(dev, sizeof(*qphy), GFP_KERNEL);
@@ -2690,8 +2689,7 @@ int qcom_qmp_phy_usb_create(struct device *dev, struct device_node *np, int id,
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
