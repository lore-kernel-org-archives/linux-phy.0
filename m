Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7E06C43217
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QTj3732jafvxP3S7+Uxy64MOivRv6I8ioinfYvrUPUY=; b=jtty+r9/Gg3p8Q
	Csyb56Jf0L/ZkMNjDdik/t2hKIuvUYJDsXeLRZLRWvkxXWmWmeHUCJQxSqbliiqT0t+8VTu9BEi+W
	LBzaVJe5xzf0Cxe9DyzWvLy2f/XGnluneRmVzTSFjUxidqFfDU0Hu226lPfo5UnT2WtUfQHsf8135
	8hEI0Ev640G1wIzJnZXWbRkEZHvcrkWQASyOaASoOH0Fauu6eEiTaKM6uRn2GmtJf5umv8q3RMMdI
	Y2F9BICqCvOaLDy5KtgIiB510qiMVfOTcA5nxnL6b9c1EU5OcjAVnfCUVElDSTvQVTb4APbFJJCui
	BfkoHhnfJ39aaHPhQK1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQZc-00EgIK-OE; Fri, 11 Nov 2022 09:43:44 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQZD-00Efvv-8o
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:43:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B53BCB824C0;
	Fri, 11 Nov 2022 09:43:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5643AC433D7;
	Fri, 11 Nov 2022 09:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668159796;
	bh=3XOhKP1Tw+dE+Z0WDa+cOwqy3LoEJTTDfDARVmjTFlU=;
	h=From:To:Cc:Subject:Date:From;
	b=oihJCNV+5QiTZAly+/3w62btAo9IrDM7Z4RNw9rVtgudyXcS2kn75vRh0PyMmR0dp
	 wU1zfjIef/S7S2GBkoJ0SO2KjY8iweyvIjg4V/0UPkk8VzFimXLeitXPVa3+zjCtpP
	 iq6iK3eV6hwgfYBomuN/vmrhlCej/525K2a4NBs1rpVgLgMatOy1z7x/209qtBEOLv
	 YvoU1c41nZtxKL/wco4iEWVbL2Hq9UTt4kOp8Npqp15ZtbfuLM+JIJI1KICk5B/ZHm
	 KUJ4R0B+Wf9g1q0CCazzYspBk61Xd4v2nvM8OTChN61paGUKlN7bzkfAkdDJn4oDXJ
	 XFLcKq5Ghas8w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQYi-00030Z-Ai; Fri, 11 Nov 2022 10:42:48 +0100
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
Subject: [PATCH 0/3] phy: qcom-qmp: misc cleanups
Date: Fri, 11 Nov 2022 10:42:36 +0100
Message-Id: <20221111094239.11547-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_014319_475775_D5256F2D 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
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

Here are three cleanups to the non-combo QMP drivers for smaller issues
found while reworking the combo driver.

Johan


Johan Hovold (3):
  phy: qcom-qmp: drop unused type header
  phy: qcom-qmp-usb: drop redundant clock allocation
  phy: qcom-qmp-pcie: drop redundant clock allocation

 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c |  2 --
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 10 +++-------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          |  2 --
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 10 +++-------
 4 files changed, 6 insertions(+), 18 deletions(-)

-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
