Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C729FC77B7E
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 10:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BY6r7BJAXjNgEqebdhKlv3ySUns23jR0o0Alak0g9jA=; b=oPxapul5uvt6/J
	PBW4rahNq4bO13z4vFWB4Gv4zNCTQJYOolaCJlt9rv9mMNAcwn8kDStm7IxeIXyBcKcZAAhn55YKS
	rnpXMpr8ugP3YUBCZmCAl4kIbu72MSfCDIypLESo/D8xe+DtirUIALsxrszzRA4CQegA7MQCwVaeV
	MQAWBvFwnYS9jUF4dSx96EYB1s7gvmEEV56qwncsGhrfRw4Tr4Y6UGUfbknmOhcudeio5Wtg8p0Ie
	ZivWp3wJEsEMGLDovzQrOTJ1OA5Qdhkdm1uRxqv2dMOt9NiCtxbeU5gOWpD2RQWjuQvho2HdFNs8g
	bpf031NQ0Gu2E1vyjmWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnPL-000ysC-1J;
	Tue, 02 May 2023 10:38:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnPI-000ypQ-21
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 10:38:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 009F161D3A
	for <linux-phy@lists.infradead.org>; Tue,  2 May 2023 10:38:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65486C433EF;
	Tue,  2 May 2023 10:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683023930;
	bh=7/fiKx5JOKgaQb4ObAuZZ5FqO1m0hBa3ZqHG5clQQeY=;
	h=From:To:Cc:Subject:Date:From;
	b=NGWilU2gXjwaZztlOvj8NanIsSMXuo/7hI4WBsp8OUOsvABz1W0XwiL2RukuKz5rq
	 BG6U3HHk1A4Jamuc7+YBN8exZDz9FCtNYPXosO3k0EP2JE4CpByepgfNIjzLORIl7J
	 CMhyjvgxWszEHG8DH0KAma+WnN6z4tRD8DVSUlu75+m+tb7d4kL6E194lHZ8X/Ltas
	 4a3/crfXBgioAbpiOnbdq5TDVDMHXck0me+rNkNXIxVhBSRB2yZVzztn72yTfPpkkw
	 1xkB9uqq3kewMUIrE6olYSBQDbJ0jmBCrLFQ50aveU//j5QR1wOJOOG5UQPripzq8H
	 udwyrvbmGzVpA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ptnPI-00038v-98; Tue, 02 May 2023 12:38:53 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/2] phy: qcom-qmp: fix init-count imbalance
Date: Tue,  2 May 2023 12:38:08 +0200
Message-Id: <20230502103810.12061-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_033852_721410_9112F205 
X-CRM114-Status: UNSURE (   7.92  )
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

Two of the dedicated QMP PHY drivers suffer from a long-standing bug in
the common-block initialisation code.

Johan


Johan Hovold (2):
  phy: qcom-qmp-combo: fix init-count imbalance
  phy: qcom-qmp-pcie-msm8996: fix init-count imbalance

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 5 +++--
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 5 +++--
 2 files changed, 6 insertions(+), 4 deletions(-)

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
