Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95364C43219
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 09:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FnIbPdtMPE9A0IDjnOs5oUBnumrhhT8hn7Zcg7PHbE8=; b=vquurE9WoJBCbO
	WU2fkV+bM/KIc29tddMRywIh5HrOVGYNOBFQNWr0B4EoWxSkKEdaeWFKJCOyZ5UZ9zelRJzKg2a+Q
	v9PTgT4xWanjZ2/nmgAL/5eJtGqd+jnQdf4SJW6u8eIdAdKc4JgaC5doSB0a/y6p1QwSPyZ1fmtjn
	E8pkq+vauTBsrukvhTS72RJlRtS9EmbwSl51YH0sjxuuleetLeByEKzWQLXLc5tZHMdtUjz90Jc8g
	71lW2Anfkha4+HJbBnQ4VJwyQEutj5UfAVDmGKBzjlPAgTCMHMUcpTBc+40tqxC1vh18+pxlHhXKs
	DXlJH25NdqaQonVLUESg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odprD-0026pR-Qe; Thu, 29 Sep 2022 09:29:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odprB-0026mW-G7
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 09:29:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D4CC260EA5;
	Thu, 29 Sep 2022 09:29:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2259FC433D7;
	Thu, 29 Sep 2022 09:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664443763;
	bh=h3xjpWqHRExakkM4pHqF24mphBmdaIf2Jyk2LwyRhaY=;
	h=From:To:Cc:Subject:Date:From;
	b=lPnL5nMkEt2mxtK7jxqvzAuGW2bwlCZVoswtCsu+tekWV5kaOF3csLdF4ylij+BQ/
	 zFNs06l/zwZG0QRl4niuE+gNM3x2WeTQkAwB9tkKCmujSAKTBn1/pkaov/o6Jw/SUP
	 aDt5H33VjpDC3Cy5SdYyceUX1oH82pIopvwdSQUiw8N4B90zaqhgRtT6FX4bdGcc7r
	 Mx21Pqog6P9/FNko4dl4/Et9oIxt/hWqyz4wjRc4AyCUH3dq2ZHzb8mMZkyf4qXKeH
	 v1XDXe8vhOCEh1T4gxJ5Y0hX2ripy2GzUOwmF/IufZOQQsXbLeF7K5z0V3t0wNReeM
	 j+6barLBkgtdw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1odprE-00061D-No; Thu, 29 Sep 2022 11:29:29 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 00/11] phy: qcom-qmp: more fixes and cleanups
Date: Thu, 29 Sep 2022 11:29:05 +0200
Message-Id: <20220929092916.23068-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_022925_609298_2D51576A 
X-CRM114-Status: GOOD (  11.32  )
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

Here's the next batch of QMP driver fixes and cleanups.

Dmitry suggested that the register layout structs could all be using
per-IP version defines, which in principle sounds like a good idea. It
is a separate change though, and one which would require some more work
as it is not always clear which IP version a specific SoC uses (e.g.
some of the IPQ platforms appear to mix and match currently).

As such a change shouldn't block these clean ups, I've dropped the
merging of the IPQ SDM845 PCIe layout structs in v2.

I've also moved the bogus register update last in case it turns out that
that one needs more discussion.

Johan


Changes in v2
 - drop the two patches that dropped the IPC and SDM845 PCIe layout
   structs
 - move the bogus register fix last in case this one needs some more
   discussion


Johan Hovold (11):
  phy: qcom-qmp: fix obsolete lane comments
  phy: qcom-qmp-combo: drop unused UFS reset
  phy: qcom-qmp-pcie: drop unused common-block registers
  phy: qcom-qmp-pcie: clean up power-down handling
  phy: qcom-qmp-pcie: move power-down update
  phy: qcom-qmp-pcie-msm8996: clean up power-down handling
  phy: qcom-qmp-combo: clean up power-down handling
  phy: qcom-qmp-ufs: clean up power-down handling
  phy: qcom-qmp-usb: clean up power-down handling
  phy: qcom-qmp-pcie: clean up clock lists
  phy: qcom-qmp-pcie: drop bogus register update

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 30 +++---------
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 12 ++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 49 +++++--------------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 24 ++++-----
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 22 +++------
 5 files changed, 38 insertions(+), 99 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
