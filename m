Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60110C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 08:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6pX35CW6SByja7uhLFb/NwB+FZtqrq3FRBnv3fauvL0=; b=SNlSRX9RQ29EIQ
	VPbPff4I8QnfNQUDB9ydCmdnQNaBQcHcPo/nLq8ytbNEc5JM3JG4ZHtt3N5BHaE/xjyWnQLAnyMVE
	Mushn5/xswn0OjhclvZ5GkrDHOoEo+pplOXbwI17/qrTX/qw8yY3Psl45h/M7LBYrqi4L6/V5zjzB
	j4/zRt5LvrKdblClipE5GmmFzq3LyoNGD31FNbQZzc/hb1qeLAo5Kw/CGeehLGLQj7lSTy2b7en1A
	fNjoGvQE5T4wc7rcqVd1f+RRwqjqRnGAnhNkOUXOWGuVffLNBNKguMjrE+u4rckbSamnP8fc2wXry
	cYJknH9dQ08xVQcPfEGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUc2-00GhzS-OE; Mon, 14 Nov 2022 08:14:38 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUbx-00GhsA-3o
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 08:14:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B81DFB80D49;
	Mon, 14 Nov 2022 08:14:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1223BC43470;
	Mon, 14 Nov 2022 08:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668413669;
	bh=qDF+eKEgYeIWIuYOTHuW90RHV71R/0BtAdQ8fI4yF7k=;
	h=From:To:Cc:Subject:Date:From;
	b=OebRd7n24E+f0cy2n0mYUSYAguNjvlYU1hYbzoXL6i9XXtvDzw509o/nAsrmn5kn+
	 /CRNubYGwxeKLwUr9HjTk6suUQrBmiy0DAL3jrj/s1wIXI3beC24bSa6haar2oqTah
	 pHV5974jL8i1dDbKiDQVH3+1RFezAlPMkVf6yhjGg7MRqpBkTpccAWo9lIffTjQV7o
	 r0g44/kqc3BQ9U8jFrKIizSExY8xakB6AXYtxmunIjoWujFtn9gE9W4zvi7iVP0NJZ
	 DanXWs6hIe9KxXDfNwLop315iJjh1vfqul890QreKrC0t7Vld+wDfmj4yI9gshPabR
	 1y3i2KF4pduNw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouUbM-0001Kw-Hf; Mon, 14 Nov 2022 09:13:56 +0100
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
Subject: [PATCH v2 0/6] phy: qcom-qmp-combo: preparatory fixes (set 1/3)
Date: Mon, 14 Nov 2022 09:13:40 +0100
Message-Id: <20221114081346.5116-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_001433_346575_8678719B 
X-CRM114-Status: GOOD (  12.71  )
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


Changes in v2
 - fix SW_PWRDN typo in commit message (Dmitry)
 - use the right commit for the runtime PM Fixes tag (Dmitry)


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
