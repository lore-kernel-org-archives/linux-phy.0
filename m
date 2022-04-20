Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E84CDC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Apr 2022 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4fU0LKCgjIJ9oBL94KYEqSvbAko14FChwuCrtgDbhf8=; b=d9VX59YQkRYZO3
	rR0LoLcr+HL/n+4rL0YskxGVU/NThNIPPEHZkW3fPtolrnRW/dgO+egycw+/CH3zSo03kZRcOchYC
	imwIlwlqD7PHpv0UVG3UQmv17Pa8O1SEPI94HBPknj8qMNCl96hfgfh2tein/YnBEizSNYI3YjB8k
	m+NXE+dx8kl0f4xbMq0yxNYhR6GY7ZuA+wzK6g/5yl3Imw21/Uu/oWjQ04qCndsjm3TsTZJDkIkyj
	cI/TFA1+LOy86twwxYVuoJvf8gUK9W+iQoSz1Wayg5Vs1bGtDU1lxMdqoGB9goSGidD+6pvqhNIu5
	644fucUWb+T+KAyYhwqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhCDJ-009Z9C-Bs; Wed, 20 Apr 2022 15:25:53 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhCDG-009Z7k-H6
 for linux-phy@lists.infradead.org; Wed, 20 Apr 2022 15:25:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E4CF9B81F95;
 Wed, 20 Apr 2022 15:25:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9552C385AE;
 Wed, 20 Apr 2022 15:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650468346;
 bh=ZxzLUWHxnezX1TGZ93jFGJL3H82CW3GKO5E/VGDJcxY=;
 h=From:To:Cc:Subject:Date:From;
 b=cbYZnUcsGb2X/YnDkiMwESY3AF9ooLeHzdEah6Xw+l6uM2FdFXI1s4KrUFKkK8bDA
 VYkw8BQUSfSxmLyuq34N1qIS94en+vprtvi+mctoVdvatBula8fQsoeDM01NctWWR5
 C9rYqeOef0+3CR8oFhCRlPYyl/TH5XB+mPqUThDLs8ziQUmvJvhnize0o4u6a0T6T7
 KQjfHs+IdlOF8LZuFIN+shwkjUmHx9rCfTXAs7sjOSfMrplYstJ834/mg3+fjoLWUH
 uhqcUdx/a7htMe607cVK37VV15uQoAGui08zSEAr2ziwYKHVgyDzyForr1+NTFoCOv
 dPRE0jSfZwtiw==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan+linaro@kernel.org>)
 id 1nhCD5-0001SY-5T; Wed, 20 Apr 2022 17:25:39 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/2] phy: qcom-qmp: pipe clock fixes
Date: Wed, 20 Apr 2022 17:23:29 +0200
Message-Id: <20220420152331.5527-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_082550_729403_577A147E 
X-CRM114-Status: UNSURE (   7.57  )
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

This series fixes a kernel doc typo and pipe clock imbalance on PHY
power on failures.

Johan


Johan Hovold (2):
  phy: qcom-qmp: fix phy-descriptor kernel-doc typo
  phy: qcom-qmp: fix pipe-clock imbalance on power-on failure

 drivers/phy/qualcomm/phy-qcom-qmp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
