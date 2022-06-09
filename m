Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 378CBC43334
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jun 2022 12:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5VwYUABqTUEq/+dL48gc8LeLyFC6m/gS7+yCiridZpU=; b=XnzqxQiulCEhVi
	PWI818E1CGKLE4GvQvmi6akiFbQJPYDf+jYinr0lSBfycLDyCOsqKvAFjSc4wuTHOb9wVJtikYZiC
	9489b8g/a4J9JtYc3W3ohQEe67eS0NpmPzYLWIKUbuFxDVZDxkzkcTyPvc+yb6SV1V+YZgfvpCODu
	9GYAo/8KkOC54SCgVUvlpUKVtE/eeF6pGOTevV4UJqaNbCTFGThdQHcDuJZOS2ZbZiD7DURXpylKx
	sLrKj1rjwA7McV/wbF876OaXpBbs8IzBo9cOMc3ZBSNYPvIQqKK4NO7M1C8E1OdeGfr0jpytLOH1w
	oxKPoR99jwwGrq3i17Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzH3h-001doX-LS; Thu, 09 Jun 2022 12:14:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzGtM-001ZBp-1S
	for linux-phy@lists.infradead.org; Thu, 09 Jun 2022 12:04:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5D1DD6118B;
	Thu,  9 Jun 2022 12:03:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1B9DC341C0;
	Thu,  9 Jun 2022 12:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654776237;
	bh=IIOOxZh80ZyBxPn4yE0l0GHTW4scpjWh6p2VRV8u1XQ=;
	h=From:To:Cc:Subject:Date:From;
	b=U2GLB01mvtaqy0R1wjSjwtLBhODHcBcToEiCYaycOHJlyWxj3eb9zuG8izqehmQEx
	 PaSfY0mnkyklnOErDAHCX2sYFV1qMVEGhr5coEj2i7L3T5Xbt6TYFeJRKbjpmi9Z6w
	 HeUDpaS/t58KiMnA1kWMAdamkq7im6J6qSmiMnjJXqAyDP9TrFQQQvmDiD0ApBrUPI
	 ruxUW3r40XtifAhiuo7vNwFqqBpdkPKeOkYcHTQJzxgNygytwMpIUh8I2mnzUKQowM
	 Q5Z07Zi302mS8kCzAD1QZCbI4yQsRv4EylcO5tddP9tfNeiXaSg95WpEEMA1RIboTA
	 P1F5N1O2mhNWw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1nzGtF-00014B-KY; Thu, 09 Jun 2022 14:03:53 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/3] phy: qcom-qmp: clean up defines
Date: Thu,  9 Jun 2022 14:03:35 +0200
Message-Id: <20220609120338.4080-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_050400_193678_3C922A00 
X-CRM114-Status: UNSURE (   6.92  )
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

Here are some trivial cleanups of the QMP defines for issues found while
adding support for SC8280XP.

Johan


Johan Hovold (3):
  phy: qcom-qmp: clean up v4 and v5 define order
  phy: qcom-qmp: clean up define alignment
  phy: qcom-qmp: clean up hex defines

 drivers/phy/qualcomm/phy-qcom-qmp.h | 70 ++++++++++++++---------------
 1 file changed, 35 insertions(+), 35 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
