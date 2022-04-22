Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73627C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 22 Apr 2022 13:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eaS50WtNLqm0cdd5gfFjKOJUzuT/FfKLX81DClEcnXs=; b=RjUcXe0xTbtYN5
	rlv9U+/75ib1Jt7Z5BHTRyO8G/M6SR3EAPBqdSbjsd9xXVc0fVFoIb6KndrZZdT0f6FGEUMx6eKRd
	4pAOVtjay7J/KmHXKtvSJPikYIctA4139Nl+D8dC8KVgFtZrLJaClG9b7zKJiQ7JhwhIKpmsJcq/T
	70NSeRuh/L4vtsd411jpcpW+PoIdepFDLIHegVQOqfSgokf8LiwxirkCzF2h+K8GbD/Sz6ubBTbR1
	Oy1w+tTbcvvxpQvndq2tPSBa+bDkoH6Wpb3MndudK6pSC0SeqtO35cynuwUpWjscIYm/pTiUv0W1J
	gJtrdcc1++bgKLaw2hdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nht3E-000XlP-Th; Fri, 22 Apr 2022 13:10:20 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nht3B-000XjF-GT
 for linux-phy@lists.infradead.org; Fri, 22 Apr 2022 13:10:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id E006ECE29AD;
 Fri, 22 Apr 2022 13:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B670DC385AC;
 Fri, 22 Apr 2022 13:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650633007;
 bh=LM+ulpEJgK2xI+UCRDS56xFSor9mKw6oWKs25hHyY6M=;
 h=From:To:Cc:Subject:Date:From;
 b=dGoqZ5wxRl6HJjKW9xiE5i9Ez1cYXQO+T5oIWqaVbvQzKzaoCBiKaXXdgF+g9Y1Te
 76LJoZgtHFmDHppGOo6e7BqIGk8Oc6KgRiW8fLJGq24jWs2VglxcR8//sU47n/+O14
 ZQdBg6NERarFIPlnnnesjT4LYaJvKJ71Elo53eLkm3ey6eVfkJ71mAX2uxIof0kI7V
 W1aJoNl8ehTm4Im8uDgkgDd93/kiyYIuihBlnC6QguiSDTzi1rdrbAsYJf3JRGMslH
 PM3h130+I01u1mS9GzLP6a+bopX5ZDjwGSmxAJXnR9I2VQp3WqjpAPYnprmLh/wrQZ
 JIzczET10KzOw==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan+linaro@kernel.org>)
 id 1nht2v-0000XK-VI; Fri, 22 Apr 2022 15:10:02 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/2] phy: qcom-qmp: fix leaks on probe errors
Date: Fri, 22 Apr 2022 15:09:39 +0200
Message-Id: <20220422130941.2044-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_061017_739939_B32376D9 
X-CRM114-Status: UNSURE (   6.61  )
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
probe deferral).

Johan


Johan Hovold (2):
  phy: qcom-qmp: fix struct clk leak on probe errors
  phy: qcom-qmp: fix reset-controller leak on probe errors

 drivers/phy/qualcomm/phy-qcom-qmp.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
