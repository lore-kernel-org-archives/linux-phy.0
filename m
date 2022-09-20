Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D403C6FA93
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tyH1RcGZuKarJ9l71Cg00QkgZuhEtBLyvSZwprxEIlc=; b=x5az2T6D/HG5aE
	i+gX76nCYo8bAVcs7L7061QubYGxg/KjDg62TkMRmIJxTYSNtSdXWnIDPoleiY1zllofZB1B912zj
	YLBhawfZCf0Jh1R29brbYtIdX1z9j2kuimfNE49Cs/lY12Vk9ivp1HsFbl7u5VLVt3/yJ/zNuEBEF
	mjuz9jfmwG8PXKgKNvU5HtGvxiJk5t4o6pc2MVfYd+HV7EMd3/n5lqrDi/q/plDaQ+KKiG8JEipNS
	KQwPA6EP5/BwAkSB2vrbJeV472nczWg8xdW/Gf/Awpx6aP/k6nnUhPwKeH/U2sr9hib83x4sKbmYF
	JrPr828arIeiyI5AD99Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqc-001Qij-Kv; Tue, 20 Sep 2022 07:39:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqR-001QUG-8u
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 97110624A8;
	Tue, 20 Sep 2022 07:39:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ABC4C43165;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=0Lc8Kpbxko/G24eMbvjYM/8Z1j85mnOa7rjHLyFNbHw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ps1bBBPssDYM4kqZppxa+igLAmL7xvOO0ktvuge35MCSNGCNquIZk4AGDmn1js959
	 oJQGEPERv4vb81/tc+8Y1VBhMQVfUmYy+Tgi523CSs0C+w56DvwyhxV7uXTI7MiXAn
	 C1QFGjhiuhkp0Z7fNfXhWEKu5p5lvuD5diWypv+kNwHV/xY0DvzKrAjTiO9cfAwIht
	 cYBT3UyB79HA5vtsp44jSIT6GKTm7szEMJupvGxnXn+Pp93aa2ohPRg7lGfV7xa4fX
	 xtpbVrLn+3WZrabD8QGElguhq1WaSIjMNtJphJEdQrSjDo/7uuBDTd11k5y7luLcvE
	 hyk5RlhpJSYBw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqQ-0005R0-1f; Tue, 20 Sep 2022 09:39:02 +0200
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
Subject: [PATCH 09/17] phy: qcom-qmp-pcie: drop unused mode field
Date: Tue, 20 Sep 2022 09:38:18 +0200
Message-Id: <20220920073826.20811-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003903_532882_7A176A2D 
X-CRM114-Status: GOOD (  10.48  )
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

Drop the unused mode field from struct qmp_phy.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 666109a11329..65825ca41e96 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1374,7 +1374,6 @@ struct qmp_phy_cfg {
  * @pipe_clk: pipe clock
  * @index: lane index
  * @qmp: QMP phy to which this lane belongs
- * @mode: current PHY mode
  */
 struct qmp_phy {
 	struct phy *phy;
@@ -1389,7 +1388,6 @@ struct qmp_phy {
 	struct clk *pipe_clk;
 	unsigned int index;
 	struct qcom_qmp *qmp;
-	enum phy_mode mode;
 };
 
 /**
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
