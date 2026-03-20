Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76B221093177
	for <linux-phy@archiver.kernel.org>; Fri, 20 Mar 2026 06:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2s/OISgCBB767vilvjoj3bb5Lz/G4uqBQXjs2IXjhpc=; b=FGBAukYTJ6+kWK
	d6R5ljXkueYvgyqZjhPECo7ysQLAg3HEgr/7daHneqcAlGPoPV2iBv6dhdYLZV1iHalDu0z5SZ/U+
	PregW+Lx+E51lxOUHPcrfIo+5xL03M6h1FgDdVVOQbd/ON8qtccNROh9/tuR0SqeuMIFi+SC5OLdm
	jWREvS6uXsXO87ZmZ9pQ/E2/d5Lnz4gqcKIfAB7xa9Zhx3gWEaVYnPTyqX/JZSmi4oRhlNw0Rc6dB
	YWMJJ419pTSn6NZzGWcSGoDIoS8GSh4NHBOpfLuilkoT44sfVitV/rjAcwaKkZuumeYnbWbtQfGuY
	DRwNtp+YWX9ATXRiqnpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Tfg-0000000CCNW-082Q;
	Fri, 20 Mar 2026 06:49:24 +0000
Received: from smtp21.cstnet.cn ([159.226.251.21] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Tfb-0000000CCN3-3Gqu
	for linux-phy@lists.infradead.org;
	Fri, 20 Mar 2026 06:49:22 +0000
Received: from localhost (unknown [124.16.138.129])
	by APP-01 (Coremail) with SMTP id qwCowADnjWnp7bxpJtGUCg--.24083S2;
	Fri, 20 Mar 2026 14:49:13 +0800 (CST)
From: Chen Ni <nichen@iscas.ac.cn>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	luyulin@eswincomputing.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chen Ni <nichen@iscas.ac.cn>
Subject: [PATCH] phy: eswin: Fix incorrect error check for devm_ioremap()
Date: Fri, 20 Mar 2026 14:45:15 +0800
Message-Id: <20260320064515.412360-1-nichen@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: qwCowADnjWnp7bxpJtGUCg--.24083S2
X-Coremail-Antispam: 1UD129KBjvdXoW7XF4ruFWrXF17GF13GF1xXwb_yoWDtrb_Cw
	1rZrn3JrWDCF4q9r1jywsxZFWjyF90gr9rWws2y3sxA34UGr4akFyIvrnxW39ruw4rGryD
	C34DZFy3ury7WjkaLaAFLSUrUUUUbb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbs8FF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
	A2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_
	Cr1l84ACjcxK6I8E87Iv67AKxVWxJr0_GcWl84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
	0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xII
	jxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr
	1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxkF7I0En4kS14v26r12
	6r1DMxkIecxEwVAFwVW8AwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8Jw
	C20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAF
	wI0_JF0_Jw1lIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjx
	v20xvEc7CjxVAFwI0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2
	jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Jr0_GrUvcSsGvfC2KfnxnUUI43
	ZEXa7VUUJUUUUUUUU==
X-Originating-IP: [124.16.138.129]
X-CM-SenderInfo: xqlfxv3q6l2u1dvotugofq/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_234920_210918_3EA7935A 
X-CRM114-Status: UNSURE (   8.54  )
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

Check devm_ioremap() return value for NULL instead of ERR_PTR and return
-ENOMEM on failure. devm_ioremap() never returns ERR_PTR, using IS_ERR()
skips the error path and may cause a NULL pointer dereference.

Fixes: 67ee9ccaa34a ("phy: eswin: Create eswin directory and add EIC7700 SATA PHY driver")
Signed-off-by: Chen Ni <nichen@iscas.ac.cn>
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
