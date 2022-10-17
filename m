Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E155AC3A589
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 06:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1yz7Ej/iCodppVzl04PuRqWVdYsvXJYquFJ/tfIqiqU=; b=i3DF4ubPgmhcij
	8H1hLZGc43SnYfCgXe0kiPcjuC4r2I6LYFIIlK51Vpm0wKR932cBU84ezL9GpAltLNtuaq8Nrswhi
	ndyARPnLoc0RDhK/zOYZMBeGmv5XPGoaojKRLHaIt9F4avfXdhd9O+mfM1vMWswp1kIWVP+pI1rlm
	f0w+Iv1UkCnUYB5CqWnYTmV/SCQiTBwJ8+Vj8zmHyLkJyQM1Aj9yU+C5rufOfwGr01UmoGTS5dYSP
	hjP4MK7QcO6Y4T49+kV0/qhk7kQFoJFo4gWN66Ofg/WsVgvtzBHItRJThnkAD+oqzGwQlUf9S5V6T
	pD42mJ1hV5sKGkpT/Brg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okJxY-00894E-9a; Mon, 17 Oct 2022 06:50:48 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okJxU-0088wR-0t
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 06:50:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9A615B80F62;
	Mon, 17 Oct 2022 06:50:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7160C433D7;
	Mon, 17 Oct 2022 06:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665989440;
	bh=umU0smwpPoIhb97gIHRTbuFSz5PUSAh+Qs2wU0wsLvg=;
	h=From:To:Cc:Subject:Date:From;
	b=IWYHiCEZZKo+5781AsZfUm0qWSjBcNWuv6Z+R2mihZ1GvUGBU7NWDpiNtyDZ7+g7X
	 8OIFTiL6EdgoMfbo5LmINyURAeNgd44Gfj0cn3+/BbEFJawpJPamfE4R/bIn/pNm3m
	 52CmeNmNkoWn3MCe/3skvzr5L5e3opSNW8xxgQy+wfkiZzGbpAwSbB2Z+D5O54Q2ez
	 nsqplWZ0gL0CftpfwE2dCYP5GMRoqQMt3Tj5Rym6/sh8s1nIK+CkmB106QF+rlhmLj
	 me78MVKIVZCgEvTMLJ5nd0WQ1M5RlF4yAmfTrIW9bdKq6cFHbuR7LmqX/t30mpeyTp
	 erzbdYmO7P0Mg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1okJxG-00057T-35; Mon, 17 Oct 2022 08:50:30 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 00/11] phy: qcom-qmp: more fixes and cleanups (set 1)
Date: Mon, 17 Oct 2022 08:50:02 +0200
Message-Id: <20221017065013.19647-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_235044_231564_128DC579 
X-CRM114-Status: GOOD (  11.33  )
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

Note that v3 has been rebased on the PCIe EP/RC-mode series to avoid two
minor conflicts:

	https://lore.kernel.org/linux-phy/20220927092207.161501-1-dmitry.baryshkov@linaro.org/

Johan


Changes in v3
 - rebase on "[PATCH v6 0/5] PCI: qcom: Support using the same PHY for
   both RC and EP" to avoid two minor conflicts

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
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
