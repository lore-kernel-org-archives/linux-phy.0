Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D854C4321E
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2oFVbSgJfwopuuYX3sof2pGS/V/sccVjNXnPvjVVVsE=; b=d1/ootC0H4cFwG
	Vi+8IRaTzR1TEhsR3jNn+uUnryFjrbt7WZTxzOZskIDNv4eGvuaUPx2Sib/jP8IP0Vv7inFSI0FvO
	oL2pdDqBJ9raDpNeyeNmMCj6oWO945y3Bonxvlq8YHhJ/7D4jacqpyuTcosqhIbHDddexDuFGjOix
	+pXfz1qM8AOEUGg9FcVFOrGg/IwwbVh0NkMhMxNzv/LvjvA/RvpH9Jw8IWEc+sk8P9YkgvxL7TJAW
	ssAe8QilzwQyOw/BoSvAahxqLX/DxyXGSFgQh0vaFSh+P+FudUTjj8hW4u2xNXCk9hoHng3b8MrNB
	wLlFspgHGyWtc5OiKtGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIi-00EaMm-Jk; Fri, 11 Nov 2022 09:26:16 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIZ-00EaGb-L7
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:26:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1E236B824A8;
	Fri, 11 Nov 2022 09:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A855AC433D6;
	Fri, 11 Nov 2022 09:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668158764;
	bh=7Bn0peWH/hNf2LHrrVl+nLdZzch+rSC+IV1zbZGqVyE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RnxqHSLDge/pputrplShQtJ1am2b5islVQbmavRRh7YTzPLV12Qnm9Rlj2xx9zrD/
	 eQzWxLO0yLddDQtF78t7M4LQ9YPtHpH2TUZg8Jmgg0GuxNk0r8tv5Gs/itKc5E+Rvz
	 Gb7r/pjfbomlfjyzKdZEkspXgg/3klc8rQLFhv7uFdRyKiAJZpvf3bTaP5+ZmfVu3r
	 vHLMuAbyP5avRzjgtb56xNI1T2G7EwYqOBF9FWMzctRr19DE+1uI792hZqA5ylF+FK
	 lmM5rLiDGRDQRSxAx2hXrpiiLwzdj8xsuwtr+i3+yHL1YHZpneofaeJk8hGXpE+zqR
	 OeOyxhAmA1vbw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQI4-0002kt-OX; Fri, 11 Nov 2022 10:25:36 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
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
Subject: [PATCH 03/14] phy: qcom-qmp-combo: drop v4 reference-clock source
Date: Fri, 11 Nov 2022 10:24:46 +0100
Message-Id: <20221111092457.10546-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111092457.10546-1-johan+linaro@kernel.org>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_012608_215050_39816B2C 
X-CRM114-Status: GOOD (  15.12  )
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

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 51a03ac05c91..e6c7cf723b19 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -947,7 +947,7 @@ static const char * const qmp_v3_phy_clk_l[] = {
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
