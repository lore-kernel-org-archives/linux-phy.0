Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6A58C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 27 Apr 2022 06:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1tR6Ixf8jQV1ST8s/w97gtjegIeMAw0GDXug1CHgchc=; b=SijwXpaeeUfJYk
	nWkK3vQOsPInfUqEo6uxx3Ub4F8ppyiiN6WA5RhoTNDo6j86wW/ufyHETv7VkzkoROHnpcNqhzzr/
	5C301FCwKYeOkqn0J6FwU2KYMspusuOPda7YLbAOIwdbq5vFHQkDLPMkO7ZQAFT4esbuLT6XvGhCs
	F11YX4GPXjnKc2cSTWdwfWNVbedDhpMsl/ONtruhzddPGkC0LJH8UOas5K/IBSCl4/V9t8ptPU3aS
	tk1FE0VOvxhTXyPuZVPZAPHa4HsfbLY2c1do5R4N7lUo18tptAIXtLNiJNIqJWriMFartn9KhQAt5
	WirzmuOBpzXCp0TGAeOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njbH3-0001DQ-TC; Wed, 27 Apr 2022 06:35:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njbGz-0001A0-FR
 for linux-phy@lists.infradead.org; Wed, 27 Apr 2022 06:35:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E3001618DC;
 Wed, 27 Apr 2022 06:35:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F730C385AA;
 Wed, 27 Apr 2022 06:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651041335;
 bh=k6dwnK0xclzWh+p/LmUQUrceR0tDLEKt8/aDgr4lKkY=;
 h=From:To:Cc:Subject:Date:From;
 b=tBEzJ/RKt4+uA3PyECI9pK8PzfzbOFUkpk7rcNTM3Y1kWErnDlgFriNrrA1UYUZu5
 RpjyRQha+T0vysveASlmf5uGZR8wcnqnlt2bMBBBjAmB202KG/zK4162l7s7bqVbOc
 ymgK/D0l2Q7F7rGoo/O98MQZeNu2SHTX+EQvbFlVnBsWxgjTG3jMAvxg/s7wA849Ts
 2u/fkIZx6R4w2XSGb8e23lSOMC+vyoJuw1UqRDIj9ayQE0s2Rn7sTvJ9UqfcUnaurd
 Gbu39XWnUhcThcs7KfLu8TOsIKN+08UTmTW7+BK4v6hmLLW8sdNqogRvDVDYpQt4sE
 7z8TI57oL5Uag==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan+linaro@kernel.org>)
 id 1njbGy-0008VT-4i; Wed, 27 Apr 2022 08:35:36 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 0/3] phy: qcom-qmp: fix leaks on probe errors
Date: Wed, 27 Apr 2022 08:32:40 +0200
Message-Id: <20220427063243.32576-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_233537_589145_6EEF66B9 
X-CRM114-Status: UNSURE (   7.58  )
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

Here are two more fixes addressing resource leaks on probe errors (e.g.
probe deferral) and a related cleanup.

Johan

Changes in v2
 - add Bjorn and Philipp's reviewed-by tags
 - fix reset-controller leak commit message (Philipp)
 - add patch to switch to explicit reset API (Philipp)

Johan Hovold (3):
  phy: qcom-qmp: fix struct clk leak on probe errors
  phy: qcom-qmp: fix reset-controller leak on probe errors
  phy: qcom-qmp: switch to explicit reset helpers

 drivers/phy/qualcomm/phy-qcom-qmp.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
