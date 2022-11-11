Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 908D2C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBxOirI9I4Xl4AJmuJECpN3eoZgsf25BKKrgus9TJm8=; b=kSlLSIHoFHzc0h
	FpmZyRdBWYB8QGMel7PzE73oYDEomUSzptEIxzJ4jxh3BabxLQ5R31iE0Z1Cld5NoQtqaH6TuJ4H4
	LpJv4HmdB4OJmF8ObmLtRAByu7/NC1d+zExp3/eehYQeOYKDep5d72PcWe9+f7yrl+kYiyNcBEZJn
	kyJnnOgBaG7X5qyTdkciolcvTp9qQTgvvrsnZoh5aDpVn+ICm2zybmO9ZLVt/hR3m6EibZ/D2Nt1X
	P9iq9sJ0My6TARWSAFnTR4lCM/y0ys9FjkgO5W/hoAVfFs+vYU27xXjCysWb+6v5LrtDE0xryfgar
	WRGPNn4uHhlphaOlhAlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPrD-00EPzl-QA; Fri, 11 Nov 2022 08:57:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqz-00EPjA-Md
	for linux-phy@bombadil.infradead.org; Fri, 11 Nov 2022 08:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=DAK+J6TIaGa4Xo1QRQj6IW1T6SbWQfwV5jmpnbcb4mo=; b=Zm1zHz9u2Zq43ggCeqTd89CMm8
	E8xqT+OSzZXUk4z+m3AVJ0vNhDRZptIV2Ng1v99VGbSw6NyeVwIlXxkL7tFl7RAN9O93mY4GtnyRK
	wHZFwO1WRcAQ53v93DcRPKHp2naBh44fLEoZn8NGTK67mLKhxKHHMY1t+G/Z+x/GsH19YGR4vqHpf
	qoFz2it1tnjgyoZ3zeB2/mb0dTq2BD8u2RquVUvvFjgS7NyJc4M6ubixDAiDDZ+Ifafm0L9IiDKNK
	59lySnYgXVjSDMOKn8mTxP8nkhsPF6EoRIidjh3WHpaKPPojytzLPacspai1PhjT3hzsKdfJHc6nL
	uU2d2vNQ==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqv-00AYSK-Tn
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 383FAB82483;
	Fri, 11 Nov 2022 08:57:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3520FC43158;
	Fri, 11 Nov 2022 08:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157043;
	bh=tjdLAtpFKM7ActSSgOdENOYlJmZciCduoHtmcIoXW7Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YEfts/lOUnIqbp6hZybmadZpeiUsd9tuxdZZUPaapK1jbGyFr9qDVFSbNni8UFK3i
	 RwvG6DQtVgypoleg8rhTdfuOKVAjQfZqR4da20BeERSjA9pOXIuiYsvSsePe558E9j
	 3kTMYifIu81VDi1eEBeWOyfWmJAqt09r9+r/2Qo572+zbEMgVddu0cyDJeFAsf8YtJ
	 fCpmCl2G+kFXz4tLj3JzF6jHSxl4aJ+Vz1JMDbaDdRyZBSkLFN/WV8rqMts6DU8Dvf
	 QNCOE5kC1QEbLmXUMtx8XRsD2eEgVWvx4m0riCEs5NidB1tW5uqHBGDGbgOsNWUkoQ
	 +MnWIsq09/9+g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqJ-0002Tz-7X; Fri, 11 Nov 2022 09:56:55 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 05/22] phy: qcom-qmp-combo: drop unused DP PHY mode op
Date: Fri, 11 Nov 2022 09:56:26 +0100
Message-Id: <20221111085643.9478-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111085643.9478-1-johan+linaro@kernel.org>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_085734_273122_DBDB1860 
X-CRM114-Status: GOOD (  10.78  )
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

The set-mode operation is currently only used by the USB part of the
PHY so drop the corresponding callback from the DP PHY ops.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 13800c2243e1..cec487560fd7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2132,7 +2132,6 @@ static const struct phy_ops qmp_combo_dp_phy_ops = {
 	.calibrate	= qcom_qmp_dp_phy_calibrate,
 	.power_off	= qmp_combo_power_off,
 	.exit		= qmp_combo_exit,
-	.set_mode	= qmp_combo_set_mode,
 	.owner		= THIS_MODULE,
 };
 
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
