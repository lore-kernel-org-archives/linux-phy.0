Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10FDEC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 11:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Afrf15sgyGfG8DluSXq0/wguoMOMq4QgNx5eQ0UkkTk=; b=LeFSjxR51S3xl7
	ttfu4XCggjdwnkvVwyba+fGPunGiPGY9J5VBG3VSUBo/J33roJNB6XxeHcQinOkqPQOJ2pN1x9NwH
	xFm7zECEnFsFfOxUaxFHY4OwcXhMsuv1zDj1JHjheTNHMD3Kt5d//7rltziV6xKgkQe3Bfaqyvhft
	K7GTM7DEFy0LwvS0INTW14LST8PWvzi8IlsQNEjzKuaQE2cEN++I27f3NqxzhUUlFuJhPxkl/GI0r
	S5lUT3Hy1oloosKKtOJkXvzBSdJ4p00WLl6RzIyONH1rhaoLjSniwjVVKGLLVeuHmJlXmO7HBZsz0
	cviDKfM0onqdlwTDoMHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gsU-00HT21-E1; Tue, 05 Jul 2022 11:38:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fO0-00H219-91
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:02:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=wT3mX3SkOeTgsXmACsw2Uy7auFD8LfZWczvxpSlfHkk=; b=LbgwOYAtPvPeXF8gHSrHwdhIcC
	bSAFlgbHp6YzzqckP79MYCw95lstcTxsV8ntJlRm0/6HLqjwnvAC8gIAnnYMPtlWo+RtuEzJLU8Ou
	4AzwFOEIcf2AdNESTtB8UQl26Y+kdNEJ9ikTW35qF/t2sC83RA77k21uf3QirZtxVXf7WVoHsg7kr
	O8O/3baGzJqp06hohQQl7gEY0FxI7xUyrzkgUnNS/QYmmVkoa1n8VLECqEOuYZh6NjKUZTMdJy+FG
	JiiOYODBVUMA628OrgH3qTgW/I5ah8uGJZrFaGJP5LSUepseRpSgGsV+BrgrwQu6ynqphltCfyKap
	OY/SZDrg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBF-00HV7H-Dw
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1A50D61949;
	Tue,  5 Jul 2022 09:49:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CB63C36AFD;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014545;
	bh=RBWMNafFLJ5+9XGEW3FH8+PBc/s5o4Lq0hQU1zm8vLg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=E/s9WnG6vT5+QzoAu2WPfG3LnnSg2GPTdpGHJrm8xye4O2IEA145Ql/1nSZyhMBwM
	 BJ8hJ+Yb5OXD9stqdk+sSo+UIoLyHaOAerzyoM66/a4wctqMNI+JE/u9ROu+a6tYWp
	 tNN26KjbWuP5xNiwfFL4Aq1ihAay2cRwvd6NsXkKrwNqCURM6okopd/t4OcqzkLZLt
	 bTu9RNWWjiD/X6iqjMoQEtfVtdSdlyS3hrjsuBb/cwJzVn63+O72DyWEWtL7jJwg/f
	 nUolDSTc7XwtGKYb7KaAxJh+26AW3LYJGAAYB/PQzwCnUN/355oHkLAvpxklcVe6tk
	 uvVD8aBtni7ig==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB4-0004ZQ-21; Tue, 05 Jul 2022 11:49:06 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 39/43] phy: qcom-qmp-combo: drop unused lane reset
Date: Tue,  5 Jul 2022 11:42:35 +0200
Message-Id: <20220705094239.17174-40-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104918_319343_60D46934 
X-CRM114-Status: GOOD (  10.72  )
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

Drop the unused lane reset pointer which isn't used by any combo PHY.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c18cd3b93c30..b266514ae9ee 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -818,7 +818,6 @@ struct qmp_phy_combo_cfg {
  * @pipe_clk: pipe clock
  * @index: lane index
  * @qmp: QMP phy to which this lane belongs
- * @lane_rst: lane's reset controller
  * @mode: current PHY mode
  * @dp_aux_cfg: Display port aux config
  * @dp_opts: Display port optional config
@@ -837,7 +836,6 @@ struct qmp_phy {
 	struct clk *pipe_clk;
 	unsigned int index;
 	struct qcom_qmp *qmp;
-	struct reset_control *lane_rst;
 	enum phy_mode mode;
 	unsigned int dp_aux_cfg;
 	struct phy_configure_opts_dp dp_opts;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
