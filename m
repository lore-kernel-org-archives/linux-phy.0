Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E07BAC433EF
	for <linux-phy@archiver.kernel.org>; Mon,  2 May 2022 13:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K1Tx3q4OCA/YNHn9lhA5xVJ3JJXqwEJ0qBJ5nO0LV0A=; b=Yceoy2KNrjEe4p
	FDARRy+JsTwCKN1ZcBi9KobxN+yVKGsm6fUwa2AzYZi1+8wX+GivLZkKoxOjxGGptXh8fMuxGNj2+
	mWoWAFKKL9Zx7+oJoY9RctdowDgdqfyC4ClTzWspN6sgEgrpIRCrpEwH2froyxk6JWApUHu3oS+bk
	SpdA2HGg6XcQkX/af7EwTk5q2mP79Kp2X+Um1Ki8EjR+YTxvNQPYElleKgw2CgtYrtswM/1+zV5bJ
	Ly6XegskSDr/OW+a5dUvaoUICPpenRsx9khPjRgScTBCR6T1elLWgDFJVUabBRifdt5pKBjGOpbNq
	Fidq+1dnIuEsyDt40Kag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlW9v-001GnR-A1; Mon, 02 May 2022 13:32:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlW9q-001GmL-Qj
 for linux-phy@lists.infradead.org; Mon, 02 May 2022 13:32:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5AB2D61368;
 Mon,  2 May 2022 13:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BECBCC385AC;
 Mon,  2 May 2022 13:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651498328;
 bh=6xMJIjb4ThOhMwQf4r65Gq5uouG0yeD4uluNZN0RTbE=;
 h=From:To:Cc:Subject:Date:From;
 b=TCbtJlTSB3NOJlzOSZiaZnpwrjj0DIJBaqTQfxlAzOKmdq7Cc8d3FcYwCjPC/6C86
 KUWM3imIKqPGY8rCBzbqF/dQ6dCGQR/R9+4Kmo1if5gLxOrf6Usm5hXRewHOzSy5fh
 PZ+8eHapkPliNKvtsUKACoPKLHlq16tLeRWWlLc6MVN7+CzHDZrtf48iXmWHLCyAKQ
 kSO0xD4l53iToxEkZRQcGdUV76UeOEMxNilOutJwWsyIG8VuA2rUfcHz6JrwyVvIZu
 39Rl9x0K8kswL7kV8TyLYEkAOa5a1HjyYjwYD78Zqd4wAGRlfQnonZSojcHjJXejKe
 6F3EaHrtB4XCA==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan+linaro@kernel.org>)
 id 1nlW9m-00014x-Qj; Mon, 02 May 2022 15:32:07 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 0/2] phy: qcom-qmp: pipe clock fixes
Date: Mon,  2 May 2022 15:31:28 +0200
Message-Id: <20220502133130.4125-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_063210_959363_99BE2895 
X-CRM114-Status: UNSURE (   8.81  )
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

This series fixes a pipe clock imbalance on PHY power-on failures and
renames some error labels in order to improve readability and avoid
future bugs in the same category.

Both patches can be applied for -next.

Johan

Changes in v2:
 - drop kernel doc fix which has been applied
 - split pipe-clock fix from error label rename and rename also the
   remaining labels in qcom_qmp_phy_com_init() in a separate patch

Johan Hovold (2):
  phy: qcom-qmp: fix pipe-clock imbalance on power-on failure
  phy: qcom-qmp: rename error labels

 drivers/phy/qualcomm/phy-qcom-qmp.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
