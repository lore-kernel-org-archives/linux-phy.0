Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 394A6C2BD09
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 03:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=18iXyzKyS3idOimCnDwmDMqnmuyKzepjCmAZkZ9XvXU=; b=XCEqXyrwtWrz9Y
	2MLnjg1lDFY7Bu5UreMRVL2drwAftbUWgHUcuDx+RhA6ZrWn35KyyY+J52baiJLrRenuCFLUixIth
	ZceAbO8yr2kZAIxJfV/h7LGd5yJYEByb9cr1p0DKjKh6ssMF4MXyLT8pdyNlxRrGts8PmXi21subL
	PMaVKI4/QAXF3TCc+qNLl3V/tO5o7Tdt34YDXGrFf37xBRjLUzKFC3bYkg5Dj5tgwywESMnR03Y7w
	eBl+kinvi7sppb4Jt0uTKnq7CukMdbfSGLqvUD6ZFSVC1h0aV3gn6plsjmlb6JY9Wv9tqXwoCK+Ky
	95MdEiEFricPxMtag0Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOU4j-00000005Pky-3lC0;
	Tue, 02 Jul 2024 03:21:01 +0000
Received: from smtp21.cstnet.cn ([159.226.251.21] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOU4g-00000005PkQ-3UPA
	for linux-phy@lists.infradead.org;
	Tue, 02 Jul 2024 03:21:00 +0000
Received: from icess-ProLiant-DL380-Gen10.. (unknown [183.174.60.14])
	by APP-01 (Coremail) with SMTP id qwCowAAXH8sLcoNm9e0gAQ--.390S2;
	Tue, 02 Jul 2024 11:20:51 +0800 (CST)
From: Ma Ke <make24@iscas.ac.cn>
To: vkoul@kernel.org,
	kishon@kernel.org,
	rogerq@kernel.org,
	sjakhade@cadence.com,
	sergio.paracuellos@gmail.com,
	robh@kernel.org,
	make24@iscas.ac.cn
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: cadence-torrent: Check return value on register read
Date: Tue,  2 Jul 2024 11:20:42 +0800
Message-Id: <20240702032042.3993031-1-make24@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: qwCowAAXH8sLcoNm9e0gAQ--.390S2
X-Coremail-Antispam: 1UD129KBjvdXoW7GFykWF48CF4fWryrCr1kuFg_yoWkGwb_Gw
	1xZwn3GFsxGrs2yF4qkw1xX34jv3W0vFy8u3Z7tF4fur9rJ3s2v3WFvr1DC348Ww1UGFn8
	Kwnru3Z8tasrGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUb4kFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6r1S6rWUM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
	A2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Cr0_
	Gr1UM28EF7xvwVC2z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Cr
	1j6rxdM2vYz4IE04k24VAvwVAKI4IrM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVAC
	Y4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJV
	W8JwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI2
	0VAGYxC7MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrV
	AFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCI
	c40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267
	AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_
	Gr1lIxAIcVC2z280aVCY1x0267AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjfUOlksUU
	UUU
X-Originating-IP: [183.174.60.14]
X-CM-SenderInfo: ppdnvj2u6l2u1dvotugofq/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_202059_284718_4C5B20F2 
X-CRM114-Status: UNSURE (   6.41  )
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

cdns_torrent_dp_set_power_state() does not consider that ret might be
overwritten. Add return value check of regmap_read_poll_timeout() after
register read in cdns_torrent_dp_set_power_state().

Fixes: 5b16a790f18d ("phy: cadence-torrent: Reorder few functions to remove function declarations")
Signed-off-by: Ma Ke <make24@iscas.ac.cn>
---
 drivers/phy/cadence/phy-cadence-torrent.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 95924a09960c..6113f0022e6e 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -1156,6 +1156,9 @@ static int cdns_torrent_dp_set_power_state(struct cdns_torrent_phy *cdns_phy,
 	ret = regmap_read_poll_timeout(regmap, PHY_PMA_XCVR_POWER_STATE_ACK,
 				       read_val, (read_val & mask) == value, 0,
 				       POLL_TIMEOUT_US);
+	if (ret)
+		return ret;
+
 	cdns_torrent_dp_write(regmap, PHY_PMA_XCVR_POWER_STATE_REQ, 0x00000000);
 	ndelay(100);
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
