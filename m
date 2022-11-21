Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C2A3C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 08:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qfj7fe93u7c7E/ITJzKhIpRVr6Feu/y7AMjTiBIY94o=; b=rsfueYZ+kQ2KDw
	jms1qrEh6caYjNJDAzSv6MigWIujk6h1GbZe9oiPdSL2k8jU+R3Ap0Jzc1vI8d85BRvfZBjF/K20p
	v1AkONPwnxqw+h47+SIfnGlDlWmrq7GDeMSYaJ/kvz8rlh7UUQPO1bBtxlsOKKySSF6WjaGiI4ILO
	F80PXi4eFnmclDFxisEpwWPRBCvj8YgEWHEhlH6zEjSxHzk3EAtC/zbjsdb8faGsaIK0keDaw6hiT
	A2k3GxJ3h7qfC+KrW6A37aKED02wXBrmcduMnZz7Msr6LFd1jLiHsjmdFcYTJESXgm06daxLMSxLJ
	/E5argRFP3SKdww6TH8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2X3-00BUe0-Kr; Mon, 21 Nov 2022 08:52:01 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2Wz-00BUYe-CX
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 08:51:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CE0AEB80D33;
	Mon, 21 Nov 2022 08:51:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7671EC433D7;
	Mon, 21 Nov 2022 08:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669020714;
	bh=ElTyCaaFuJwFQkSxTO8dVBHZVU+p8b+U2ZsbEePHpm0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ddWAUbe/7hdh6zeAu3+fHc+DxFvRvcXP13A7zUp7PH7BQsNPLzK+ut9NJslx9A1h4
	 pk2Yc9F6fGghq9k26NgDHKeTqHgmgiNBWSC6EIdh6Fu00pLSsBL4RmoWNMhCxU78Yl
	 2oQIXr1sO6cu4wYWKONiIACtWeRLNo7AHpvx0yfrGXjJsHpL6p8Wdu/dpqXgzhHwE5
	 +0BdQ97jVwort2DgzFtExrrJQDT3uYKR3vvLwKJpCptVYZTggIMgOzXn0H4tTUNwV2
	 aD5lt4EbbsHRUvl8eyMUMC2CnG8GD7L9+FAKbkIB3t5g75q2b0oARACjhbHfUJUoEO
	 Z3lFP+6wqUKDw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ox2WS-00088J-LP; Mon, 21 Nov 2022 09:51:24 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 03/15] phy: qcom-qmp-combo: drop v4 reference-clock source
Date: Mon, 21 Nov 2022 09:50:46 +0100
Message-Id: <20221121085058.31213-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221121085058.31213-1-johan+linaro@kernel.org>
References: <20221121085058.31213-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_005157_587138_0D6C0461 
X-CRM114-Status: GOOD (  15.26  )
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

The source clock for the reference clock should not be described by the
devicetree and instead this relationship should be modelled in the clock
driver.

Drop the management of the source clock from the driver for SC8180X and
SC8280XP. Note that support for the former is not yet in mainline.

Also note that the binding has never been updated to describe the v4
clocks for SC8180X.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c5d8f8bfaaaa..5da42a4e5bf6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -945,7 +945,7 @@ static const char * const qmp_v3_phy_clk_l[] = {
 };
 
 static const char * const qmp_v4_phy_clk_l[] = {
-	"aux", "ref_clk_src", "ref", "com_aux",
+	"aux", "ref", "com_aux",
 };
 
 /* the primary usb3 phy on sm8250 doesn't have a ref clock */
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
