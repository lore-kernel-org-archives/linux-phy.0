Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3BBFECAAA1
	for <linux-phy@archiver.kernel.org>; Tue,  6 Sep 2022 07:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4bPiH4cMgdTWv9Q/k5CTmV26EyZ8Q50Hnk+u/quwAzM=; b=b4TTxEszoI16HA
	ihL1UU+Yf249BKKGMoZ9VSAyc9Umd7tUyRHrDH84GJUcdsV9YWPirzYdb7++bvSeZNutSNdicD+fT
	YFe7M4CjHXhqlJhJExcqi1wiobxl3KiXzdkkLji5EmZFyQOqORi+CaQSx+FfiNX2luxK33tblC5IQ
	bELusIlsFsGCnNT94DInn6GvH30SOP/sph1jtjovDR/49dHh3ge++6/ee26xA1dFkHLx2OqSkzQqw
	wBH7FfUTKC/vz+b73zzBQiByXAGFAz+3evRmAbxT07+SIuHtPfxRdGRyT3MCmCxh1Zunqy9hXI3sj
	0jSGVN2SjoMlkmSB/Dzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVTHo-00AuTq-1H; Tue, 06 Sep 2022 07:46:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVTHk-00AuQf-Vb
	for linux-phy@lists.infradead.org; Tue, 06 Sep 2022 07:46:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8CBC260ADA;
	Tue,  6 Sep 2022 07:46:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE923C433B5;
	Tue,  6 Sep 2022 07:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662450375;
	bh=1INHvqeK85ps1g5DBBfkxSa6I7TVe6Yq7FvQSkqeHNE=;
	h=From:To:Cc:Subject:Date:From;
	b=j8ziZAD18HgYhQJDmuhOF9Cu8b0atn5J21dxWYEBSf9uh7Gs1B2KkUmKAcztHqFPO
	 cGC1GtLnU4XwoMhwGa0V5hGteXxGUrUzoGl7jAOGYjL5LgplYkMQpZ7sNCT5pkdHZo
	 d5JC9Vwt9T246ppqyF5dANCH+XphH1UZNcKV5KiJ8QgVWKwOw2+cArI03+HPlnGCVk
	 RL/HbzyJVWsSTozDdUo3ZDnd+a3ytbnhnn8CVdJmVnKRwalAQSCuJ1Zwz0hJN3m9Cs
	 VEpengbIBTrO8Oo4WHOWL/ZPM/JMlWMc/CyaOTawyQRO7tZPQVDiQxR6aygRPoObrm
	 HcM2EhlxP5cyQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oVTHl-00019E-PA; Tue, 06 Sep 2022 09:46:18 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/3] phy: qcom-qmp-pcie: shorten function prefixes
Date: Tue,  6 Sep 2022 09:45:47 +0200
Message-Id: <20220906074550.4383-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_004617_093868_3E0C6BF0 
X-CRM114-Status: UNSURE (   8.86  )
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

The QMP PHY driver function prefixes have become unnecessarily long
(e.g. after the recent driver split) and hurt readability.

This series shortens the "qcom_qmp_phy_pcie" prefix to "qmp_pcie" (QMP
likely stands for "Qualcomm Multi PHY" or similar anyway) and clean up
the code somewhat.

Once merged I can do the same conversion of the other four QMP drivers.

Johan



Dmitry Baryshkov (1):
  phy: qcom-qmp-pcie: drop if (table) conditions

Johan Hovold (2):
  phy: qcom-qmp-pcie: shorten function prefixes
  phy: qcom-qmp: drop dual-lane comments

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c |   1 -
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c  | 145 ++++++++++------------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c   |   1 -
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c   |   1 -
 4 files changed, 63 insertions(+), 85 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
