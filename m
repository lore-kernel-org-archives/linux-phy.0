Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53C20EE499B
	for <linux-phy@archiver.kernel.org>; Wed, 11 Sep 2024 11:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6uaPBw4sIGJkStmQ72WIux+WYq8cUDJqF+LqOuYVFA=; b=AmD5SHMxYILosb
	2qLkVzV1+NTvKwiqMhs0tZUPMi2PwUiEgSv/WzOwD+Th3EiS0FyFPHDgdqOB6JZw1gLwViWHGTcsf
	1dwSjSQQPLAO+nWvFRYn4LYWNYTB143ATeBA/kgZs8rpdceTF2zVcMI+QT+MrrXivGIEHnBeAP+O0
	dhAxC6VKadlETgv2PFxhdu+SYpG+l+fDhGieEIP7i88zVnwD5ih5IfXKWwYqyoiYoBm3FTyXrNytC
	CF8/3gHZIIp6KXjEzwecq437xM6U461U7fF+jWbPYBpg92gnop5kY889BK0LKOzR5M6Rn4ZON7JfP
	/nRBkiRh5vjocUQ4oRvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLuh-00000009MXb-46ba;
	Wed, 11 Sep 2024 11:53:35 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soLue-00000009MVf-0iZP
	for linux-phy@lists.infradead.org;
	Wed, 11 Sep 2024 11:53:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 43BE7A44CB9;
	Wed, 11 Sep 2024 11:53:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 661A4C4CEC5;
	Wed, 11 Sep 2024 11:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726055610;
	bh=zhjs0HCCkCG44moeklx+BEEW7yaiU/+Dj4UI+iaJ2eI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VQqh694fEMkFMNJ5j/gBTLOa6DLKSlMgjzgp09f/Z6k6vObr9ha03j7vAZvQppN26
	 54E3beImSDwAVbyKgYY5Moy1RiVl70z6B99BS8EYcyOrosoEJLFRwaNR87NCBvQ4eg
	 O9tJAD4ea+oJ7rzsWxJ8ElTZEtZyTtmNrruPih3OJXwEF0qlyoFKDfsiTM49QH9cFR
	 MjkFT7OL4dtbHwKIr2Oa0Vl61RxZo14+6x8M/Bkawye8l3NzufbzBAsf0ho1tMUm4q
	 khzx5+DlUxJZn/kiSgHrvt0zPKH6JCp3688qVUOY/EqhxZVmlWEMVNEHq83BANkpf+
	 Dy+45qFLRFxPA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1soLuv-000000002rM-1Vkj;
	Wed, 11 Sep 2024 13:53:49 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH 1/4] phy: qcom: qmp-usb: fix NULL-deref on runtime suspend
Date: Wed, 11 Sep 2024 13:52:50 +0200
Message-ID: <20240911115253.10920-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240911115253.10920-1-johan+linaro@kernel.org>
References: <20240911115253.10920-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_045332_294228_41BCF344 
X-CRM114-Status: UNSURE (   9.74  )
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

Commit 413db06c05e7 ("phy: qcom-qmp-usb: clean up probe initialisation")
removed most users of the platform device driver data, but mistakenly
also removed the initialisation despite the data still being used in the
runtime PM callbacks.

Restore the driver data initialisation at probe to avoid a NULL-pointer
dereference on runtime suspend.

Apparently no one uses runtime PM, which currently needs to be enabled
manually through sysfs, with this driver.

Fixes: 413db06c05e7 ("phy: qcom-qmp-usb: clean up probe initialisation")
Cc: stable@vger.kernel.org	# 6.2
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 49f4a53f9b2c..76068393e4ba 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2191,6 +2191,7 @@ static int qmp_usb_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	qmp->dev = dev;
+	dev_set_drvdata(dev, qmp);
 
 	qmp->cfg = of_device_get_match_data(dev);
 	if (!qmp->cfg)
-- 
2.44.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
