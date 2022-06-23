Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FED4C43334
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jun 2022 11:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=22vnHdSxNJataPaf+nE2Sr7Z8IKnquNpItcq1pZ8zQ8=; b=rsugo0ykQBD8S7
	T+lLQQ5E1jtqyzLpO1HQg79hzQ6TCj2yz5hF31/3ZoyiUKUqle59ahVbQ4ZfBZm+YpGukBTGR7Kw7
	1HY2Ua+mN/ANNkw4LFAUmF/MMqgZkDwwLHbV+7uhEHzsfpasGkxHStJ3emk6CsG/o+9IsP1aqDLl2
	RqjVZ5LUCxrXr0mWdgfyi8XMjYS6ksSX/Llp6AzTP4lIpzCuoc1auQjsjWmQcAF8Aqee+9fm9FBmL
	MUnhnAhSoEfMHkBO95kammi40BnOPqKsxT3DvP3dNd0YAGi+qt35Jznx8WByiqYjtBamS7bHpDq9u
	C68Q0unf7OWQ3dEqMwbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4L5l-00EjjY-DS; Thu, 23 Jun 2022 11:33:45 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4L5j-00EjiL-3l
	for linux-phy@lists.infradead.org; Thu, 23 Jun 2022 11:33:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7C25CB8223E;
	Thu, 23 Jun 2022 11:33:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 451BBC341C0;
	Thu, 23 Jun 2022 11:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655984019;
	bh=4EDHfLFPyMm+mvSkkeJIautqlPxXEeD7CW/b/RawN68=;
	h=From:To:Cc:Subject:Date:From;
	b=OexC5FuUH9H5meCvL8nxn4EjKfDCkYacvBWDoo2093yLe7Z9RCyZmGKfIgk2FaJj5
	 3iGXxxBf3NHtc3UaEJBdHlvDwjgPvm9Fn2ZGP7jvDYpfpp2EY3vQJjLomTN2/NneXO
	 JvJoN6WMR/uZkjpHYMGk+Op1aRxVuwNi9/EYsAGtjP2vOUmXxL9qRCKSKA731ul+sE
	 d2oA9q0uLDb107GNDvNN4R14QjRZOtmFsJRxHYN9gh6EhPaYABPRbUB0YBhKX992/9
	 tfOjDS1HLrzkk6MKM5zs+BvnC9btBQX6ug3CxedrCy+i3HROCU/d+nJIWMGE+PKhBF
	 f+GnPZFj6+oag==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o4L5b-0007kJ-RP; Thu, 23 Jun 2022 13:33:36 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/3] phy: qcom-qmp: pipe clock cleanups
Date: Thu, 23 Jun 2022 13:33:11 +0200
Message-Id: <20220623113314.29761-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_043343_307735_3EF51661 
X-CRM114-Status: UNSURE (   6.53  )
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

Here are some follow-up cleanups after the recent driver split.

Johan

Johan Hovold (3):
  phy: qcom-qmp-pcie: drop obsolete pipe clock type check
  phy: qcom-qmp-pcie-msm8996: drop obsolete pipe clock type check
  phy: qcom-qmp-usb: clean up pipe clock handling

 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 19 ++-----------------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 19 ++-----------------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 15 ++-------------
 3 files changed, 6 insertions(+), 47 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
