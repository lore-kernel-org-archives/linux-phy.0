Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40F9EC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vgG6P7EHXvDHgV8Kv+fAs2Fi25mvsD22Z8matsLUVIk=; b=Drv0vHC4S7Zp1Z
	1EldTyaJuShmaqmjoBc1pk4qfSprI7ECCRZDVY7jWoaDHvCeyW+Hal/ZzEs3HEuje2mdHEf44YY5q
	+dHeZ21NLPG3kmYcsIhwco4K+pOIkf7HO6o8joMy9VvhM2xAjCSyMQFPfvETjQQ0W5VIo+Z5CxihP
	ZPOLOmIUJWeYChPdUupGjb/8BMz0foHAnclnRRNuJXzUFQ++2xZZtGcgut9JZD2ckrY/ijlSJqNjp
	4Dcc/AibEs4b8SqJWZ3gpebe+KHVisjqmyK5RTaRLU3xp4iHQuDkctIm/mFlCfPP3xGqFXUiMD2qa
	dxT+dF7OGgK6Aumzhclg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPeq-00EIZz-Kd; Fri, 11 Nov 2022 08:45:04 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPej-00EIUU-Qx
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:44:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 8FBD7B8245F;
	Fri, 11 Nov 2022 08:44:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC788C433D7;
	Fri, 11 Nov 2022 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668156293;
	bh=thz5PLbWUCSRRMgFh85ujhV9iQEk87ZgQaGwFCOXKk8=;
	h=From:To:Cc:Subject:Date:From;
	b=u+7mPtwFTd0Jv6TjJPnM1T7fU+y3HWt/G2GN114+0RqJsvTc02q5dtygejJZSaWB7
	 2W5cJaUu0u+ZYRwe49Zg+Yhxx0YgAiMPatlH+5vhUAauWdcZ34BNtp3tmp8VFOASf+
	 ShtGat5VHlWfWh38ZQf/tv6sv2QYmVWVmJHVUcbYWZBNam5guP/j+2Xr0vxQ73fVzY
	 4+3WEJJMQEXeeUkw6I2HBrD85l+cuxwZ5vXFZGtAA2vHy4jd4hAsUaZ+lMHMrfIWdN
	 Ir9zO/uYw0+HrzNgoRJoGwatYHXgyCbbPyBj3vJFLytk95nEF7R36zRxUyluog9Qjf
	 Seq9uEA+jDbTQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPeC-0002Me-Px; Fri, 11 Nov 2022 09:44:25 +0100
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
Subject: [PATCH 0/6] phy: qcom-qmp-combo: preparatory fixes (set 1/3)
Date: Fri, 11 Nov 2022 09:42:49 +0100
Message-Id: <20221111084255.8963-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_004458_180536_E453D0F8 
X-CRM114-Status: GOOD (  11.49  )
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

Here's a set of fixes for bugs founds while fixing the devicetree
binding and adding (proper) support for SC8280XP to the combo driver.

The full series is over forty patches and I'll be posting these in three
parts of which this is the first. In an effort to get all of these into
6.2, I'll also be submitting all three series before waiting for the
previous ones to be applied.

The first fix below could possibly be considered 6.1-rc material, but I
believe it's be fine to take all of these for 6.2.

Note that the next part of the series will do away with some of problems
with this driver that led to the issues being fixed here (e.g. the split
driver data and configuration).

Johan


Johan Hovold (6):
  phy: qcom-qmp-combo: fix out-of-bounds clock access
  phy: qcom-qmp-combo: fix sdm845 reset
  phy: qcom-qmp-combo: fix sc8180x reset
  phy: qcom-qmp-combo: fix broken power on
  phy: qcom-qmp-combo: fix runtime suspend
  phy: qcom-qmp-combo: clean up common initialisation

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 91 +++++++++++------------
 1 file changed, 44 insertions(+), 47 deletions(-)

-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
