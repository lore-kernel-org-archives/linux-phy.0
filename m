Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E039C61DD9
	for <linux-phy@archiver.kernel.org>; Sun, 30 Aug 2026 13:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kP3hxXOuwB+u9tQdPvYDe8rlkMduwhkMvP1VBxQBbxw=; b=0c3d/jMHfg1FIf
	iGa/GY464T7iQjhXiiFSupBYDcoudHyCFhBfGjw7VHEChHfN2CwU9WdHo//RkDsz9zgd41z3CM4bP
	RRR1//aNeSl0IBSor9J+ogrkP6iflrK8udLZoPfFLNPvLw9N6bT0Hu5N0ScbBe+QADnmOgWwYE4er
	LaxPF/ULpJBE8Hdh7EK5VGM5b3xa4iezTHwMgV8yoaeMkDVfBgIgP1QPokm5fyfZmH7Wznexehs/y
	+s3hsBiM20A4mVYZbwJ+4ZBqN1/5u+M2WznlF00RNHNNyHReNGP6patZP0Xhnbd3R0Dce56s0bDr5
	cZFWdQWPHg8KLUbaJH4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0fN3-00000007kFt-3qUt;
	Sun, 30 Aug 2026 13:14:49 +0000
Received: from smtp81.cstnet.cn ([159.226.251.81] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0fN1-00000007kFG-2lEd
	for linux-phy@lists.infradead.org;
	Sun, 30 Aug 2026 13:14:49 +0000
Received: from localhost.localdomain (unknown [111.196.241.250])
	by APP-03 (Coremail) with SMTP id rQCowADHzz3FLJRqpuyaBg--.25859S2;
	Sun, 30 Aug 2026 21:14:45 +0800 (CST)
From: Pengpeng Hou <pengpeng@iscas.ac.cn>
To: Vinod Koul <vkoul@kernel.org>
Cc: Pengpeng Hou <pengpeng@iscas.ac.cn>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: qcom: m31: propagate reset errors
Date: Sun, 30 Aug 2026 21:14:42 +0800
Message-ID: <20260830131442.3025-1-pengpeng@iscas.ac.cn>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CM-TRANSID: rQCowADHzz3FLJRqpuyaBg--.25859S2
X-Coremail-Antispam: 1UD129KBjvJXoW7CFW7tw1DJry7tryfCF4rXwb_yoW8Xr4kpr
	WDWr9FyFW8Zayfta1xAw4aqF13Wan3tr9rKr47C3yrZ3W3Jr47uFyavFy5XF4rtrs7C3ya
	gr4jyFyFkF1Fkw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvj14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r4j6ryUM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j
	6r4UJwA2z4x0Y4vEx4A2jsIE14v26F4UJVW0owA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Cr
	1j6rxdM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj
	6xIIjxv20xvE14v26r126r1DMcIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr
	0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxkF7I0En4kS14v2
	6r126r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrV
	AFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCI
	c40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1I6r4UMIIF0xvE2Ix0cI8IcVCY1x0267
	AKxVWxJVW8Jr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r4j
	6F4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr1j6F4UJbIYCTnIWIevJa73UjIFyTuYvjfUeT
	mhDUUUU
X-Originating-IP: [111.196.241.250]
X-CM-SenderInfo: pshqw1xhqjqxpvfd2hldfou0/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260830_061448_073268_89B4C04A 
X-CRM114-Status: UNSURE (   8.27  )
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

m31usb_phy_init() enables the regulator and clock, then performs an
unchecked
reset pulse before reporting that the PHY powered on.

Return reset-controller errors and release the clock and regulator that
were
enabled for the failed power-on attempt.

Fixes: 08e49af50701 ("phy: qcom: Introduce M31 USB PHY driver")
Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>
---
 drivers/phy/qualcomm/phy-qcom-m31.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
index 168ea980fda03..f46c7ec87496a 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31.c
@@ -228,9 +228,14 @@ static int m31usb_phy_init(struct phy *phy)
 	}
 
 	/* Perform phy reset */
-	reset_control_assert(qphy->reset);
+	ret = reset_control_assert(qphy->reset);
+	if (ret)
+		goto disable_clk;
+
 	udelay(5);
-	reset_control_deassert(qphy->reset);
+	ret = reset_control_deassert(qphy->reset);
+	if (ret)
+		goto disable_clk;
 
 	/* configure for ULPI mode if requested */
 	if (qphy->ulpi_mode)
@@ -247,6 +252,12 @@ static int m31usb_phy_init(struct phy *phy)
 	}
 
 	return 0;
+
+disable_clk:
+	clk_disable_unprepare(qphy->clk);
+	regulator_disable(qphy->vreg);
+
+	return ret;
 }
 
 static int m31usb_phy_shutdown(struct phy *phy)

base-commit: 08dbfad3f5040f5bdb6c529da20d6d4e81fefd72
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
