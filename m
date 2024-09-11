Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AE01EE499E
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 11:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UJPGIanB3Z/fgH7P9JxTxw6U/AwI/4PE131uZFHtjJ8=; b=2zgg5ax22JBfqG
	VY2DEUshSdoPA7ueDInzqlW4jvIg9OxRiZ122KxrZX1TYYMSQXWZZcRzurEKQI2NqoV/8x/2ilaxd
	5tykC05Nk3t0buZ3kEXNvBRxSm7bFbWt7inBzX+YnT2reB8/K3on6II8Hb9tWNTGzGYRMYYGIAGu3
	fxbvSs/ldWRR1nFVqsZlfN3YhgDnts6mTt3B8+k8OJ0aCwG7C2JuPGwwq09/uR7/I++NES9fKOxhz
	2oiNP0/UnD2BdrPoZfgpIBtDsr+Z0vbCfAQCGwXNLahmGRTb4pWEFnJ6kWsq8XDnWbmFErsvvyySg
	97yomrmX+4QnIx+CEGhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLuk-00000009MYs-0abO;
	Wed, 11 Sep 2024 11:53:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLue-00000009MVi-19Uu
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 11:53:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B1B965C06BE;
	Wed, 11 Sep 2024 11:53:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72FA0C4CED0;
	Wed, 11 Sep 2024 11:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726055610;
	bh=ndmPR2xBHC9S4nFnS6LHLpBPLv5VG0nJMeYk0IDgd24=;
	h=From:To:Cc:Subject:Date:From;
	b=H46FJy2GAzAc7WS6DQ38/LD+iUt3Ba3vJz2UUmJXgcn66hHZK4Wn+lkK8yp8fexBG
	 XyfrhS6XAzYggPyNGp5HagtJ5tb/9/4NFJon5xeZDEAVrDqgp7f89cvrQvUDJYFNLT
	 MySPxOPq5aeSAZCOT5bNTdp5L2pNhyQQXxJDkdetyWTdcThtKEAtY73PTjDOFuq2p8
	 cHVOsh9WUJckk0XW4p7FJmO6SibhxY08xl1xBeT0yvue87LFh59mwcVvXWDvzv6P4b
	 JytD9uGv/6oLm5Z+tI3/ihug798HIiX05eXX7PICKW36Xge2Hrm/vcYTkK2D/p6inP
	 GNWbhvznpQR3A==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1soLuu-000000002rK-2Jdv;
	Wed, 11 Sep 2024 13:53:49 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/4] phy: qcom: qmp-usb: fix NULL-deref on runtime suspend
Date: Wed, 11 Sep 2024 13:52:49 +0200
Message-ID: <20240911115253.10920-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_045332_498008_3FA99EAF 
X-CRM114-Status: UNSURE (   7.73  )
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

When working on suspend support for Qualcomm platforms like x1e80100, I
ran into a NULL-pointer dereference in one of the QMP drivers. Turns out
this issue has since been reproduced in two more drivers.

Johan


Johan Hovold (4):
  phy: qcom: qmp-usb: fix NULL-deref on runtime suspend
  phy: qcom: qmp-usb-legacy: fix NULL-deref on runtime suspend
  phy: qcom: qmp-usbc: fix NULL-deref on runtime suspend
  phy: qcom: qmp-usb: move driver data initialisation earlier

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 3 +--
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 1 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c        | 1 +
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c       | 1 +
 4 files changed, 4 insertions(+), 2 deletions(-)

-- 
2.44.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
