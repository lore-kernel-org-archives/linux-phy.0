Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F114AEBFD01
	for <linux-phy@archiver.kernel.org>; Mon, 13 Apr 2026 07:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ggj70ZrdhnmlWcoJXykAnx9YTpXILuAZB+msfoF9IM0=; b=AuHN1QH/2viFEx
	GLZLfdDLWjUKqaBuYnQVNoko6IJqn10bzxgUTuAqgOm7TMxMvH95ZgtRN7/C/1qcro6Bn5hzY7sfD
	+xY2yKvHApmimJnMmp6g09gs/KCLkgDnWxy7Fj59OlJ9mdif7Bwk4gbiXup0YZPVVds5BOi86Gudl
	6GWGV2w618MDgxoLQSvb9KB84W/Q3eVFEs5fI0ws0oqXxhpG4ZNzTmreihTIdEDiQOvK6v8bRvyie
	DGO27sCKbf0tyyIOGiGsReg9d109cLVEGRhrqIwYU27NhCN5l85m+ThKKsFKiMLzyUT3fsKi7R3zH
	0OMc/zgb2WxC/T0Wz1Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBIA-0000000F6ju-2QYs;
	Mon, 13 Apr 2026 07:01:06 +0000
Received: from azure-sdnproxy.icoremail.net ([207.46.229.174])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCBI5-0000000F6ig-3VwU
	for linux-phy@lists.infradead.org;
	Mon, 13 Apr 2026 07:01:04 +0000
Received: from E0006800LT.eswin.cn (unknown [10.12.96.77])
	by app2 (Coremail) with SMTP id TQJkCgD3DKCelNxp_EURAA--.9002S2;
	Mon, 13 Apr 2026 15:00:47 +0800 (CST)
From: Yulin Lu <luyulin@eswincomputing.com>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: linmin@eswincomputing.com,
	ningyu@eswincomputing.com,
	Yulin Lu <luyulin@eswincomputing.com>,
	Dan Carpenter <error27@gmail.com>
Subject: [PATCH v1] phy: eswin: Fix incorrect error check in probe()
Date: Mon, 13 Apr 2026 15:00:33 +0800
Message-Id: <20260413070033.128-1-luyulin@eswincomputing.com>
X-Mailer: git-send-email 2.31.1.windows.1
MIME-Version: 1.0
X-CM-TRANSID: TQJkCgD3DKCelNxp_EURAA--.9002S2
X-Coremail-Antispam: 1UD129KBjvdXoW7XrW7Ww13Ar15Aw4rAr47Arb_yoWkZFX_Cw
	18Zr1fXrWDGF1q9w1jywsrZFWjyF95uF9ruw4Sy3sxA34UGr4jkFW2yrnxWwsru3yrGr98
	uF1DZFy7Cry3ujkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbIkFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
	A2z4x0Y4vE2Ix0cI8IcVAFwI0_tr0E3s1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr1j
	6F4UJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
	Cq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
	I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r
	4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwCY1x0262kKe7AKxVWU
	AVWUtwCY02Avz4vE-syl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2
	IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v2
	6r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2
	IY6xkF7I0E14v26r1j6r4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv
	67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r1j6r4UYxBIdaVFxhVjvjDU0xZFpf
	9x0JUBVbkUUUUU=
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_000102_065935_CD061A1D 
X-CRM114-Status: UNSURE (   9.47  )
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

devm_ioremap() returns NULL on failure, not an ERR_PTR.
Using IS_ERR() to check the return value is incorrect.

Fix this by checking for NULL and returning -ENOMEM.

Fixes: 67ee9ccaa34a ("phy: eswin: Create eswin directory and add EIC7700 SATA PHY driver")
Reported-by: Dan Carpenter <error27@gmail.com>
Closes: https://lore.kernel.org/linux-phy/adjNbuWoc1B-3Ok1@stanley.mountain/
Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
---
 drivers/phy/eswin/phy-eic7700-sata.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/eswin/phy-eic7700-sata.c b/drivers/phy/eswin/phy-eic7700-sata.c
index c33653d48daa..76774b9e391b 100644
--- a/drivers/phy/eswin/phy-eic7700-sata.c
+++ b/drivers/phy/eswin/phy-eic7700-sata.c
@@ -216,8 +216,8 @@ static int eic7700_sata_phy_probe(struct platform_device *pdev)
 		return -ENOENT;
 
 	regs = devm_ioremap(dev, res->start, resource_size(res));
-	if (IS_ERR(regs))
-		return PTR_ERR(regs);
+	if (!regs)
+		return -ENOMEM;
 
 	sata_phy->regmap = devm_regmap_init_mmio
 			   (dev, regs, &eic7700_sata_phy_regmap_config);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
