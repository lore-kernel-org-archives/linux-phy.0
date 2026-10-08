Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A40ACA600A
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 08:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9IchWtLtWt4X4UrErSzkTxe8vO5XEw7bZ7iicjY564A=; b=VUFMtscnVhq0Wk
	iYKYmojigbAxyKX+YwNUBi7m826lCOA2BcaD351SnnY6tiCvc89b817xSksvPkFw/QVd5vCL2xKbr
	+8B3FqhpCFAyQQ1aDMsXliSejxi6nb5rLnTTl6bzggcJjWO5UXM1nmlRFyngZq9+kd08A6qOG8MXj
	iqrpBCqlq4OzYP/kxSIzAHb+j02M12wM2f0ZT2ju+SDcU+Qngv785ZVmIf7wlDDqIv8K73YfpczHr
	YsIdNMIPGVViXlyqufogPcQl8s6e38UUsNecvtNnd8RvDHtEoTAmfhyKtNiJniKoQTnQ/O/rFMD9P
	qeU00hvLZyZgNRpbs8Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEjPG-00000003rIO-3Qhi;
	Thu, 08 Oct 2026 08:23:14 +0000
Received: from smtp21.cstnet.cn ([159.226.251.21] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEjPD-00000003rGs-1F1U;
	Thu, 08 Oct 2026 08:23:12 +0000
Received: from localhost (unknown [36.110.52.2])
	by APP-01 (Coremail) with SMTP id qwCowADnu+_sUsdquY44Cg--.45827S2;
	Thu, 08 Oct 2026 16:23:08 +0800 (CST)
From: Chen Ni <nichen@iscas.ac.cn>
To: linux-phy@lists.infradead.org
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-mediatek@lists.infradead.org,
	Chen Ni <nichen@iscas.ac.cn>
Subject: [PATCH] phy: phy-mtk-pcie-sphy: Remove unneeded semicolon
Date: Thu,  8 Oct 2026 16:22:42 +0800
Message-Id: <20261008082242.3890614-1-nichen@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: qwCowADnu+_sUsdquY44Cg--.45827S2
X-Coremail-Antispam: 1UD129KBjvdXoWrZFWDuF4rXw4DWFWDZFWxXrb_yoW3GFc_Cr
	1vgrnxXrn8ZF15Gw4DAF1rZa40va1xXr4kGa4Fy3y5C34UA3WjgF9IvF9rGa1DC3yF9Fy3
	Gwn8u3Wxur17JjkaLaAFLSUrUUUUbb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUb4kFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
	A2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr1j
	6F4UJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
	Cq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
	I7IYx2IY67AKxVWUGVWUXwAv7VC2z280aVAFwI0_Cr0_Gr1UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lc7CjxVAaw2AFwI0_
	JF0_Jw1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67
	AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r126r1DMIIY
	rxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14
	v26r1j6r4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJVW8
	JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjfUrqXdUU
	UUU
X-Originating-IP: [36.110.52.2]
X-CM-SenderInfo: xqlfxv3q6l2u1dvotugofq/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_012311_712810_7E4AC1C0 
X-CRM114-Status: UNSURE (   8.26  )
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

Remove unnecessary semicolons reported by Coccinelle/coccicheck and the
semantic patch at scripts/coccinelle/misc/semicolon.cocci.

Signed-off-by: Chen Ni <nichen@iscas.ac.cn>
---
 drivers/phy/mediatek/phy-mtk-pcie-sphy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/mediatek/phy-mtk-pcie-sphy.c b/drivers/phy/mediatek/phy-mtk-pcie-sphy.c
index 2bf10346ea97..99675112548b 100644
--- a/drivers/phy/mediatek/phy-mtk-pcie-sphy.c
+++ b/drivers/phy/mediatek/phy-mtk-pcie-sphy.c
@@ -480,7 +480,7 @@ static int mtk_pcie_sphy_get_calibration_data(struct mtk_pcie_sphy *pcie_sphy)
 			return 0;
 		}
 		return ret;
-	};
+	}
 	cal->supported = true;
 
 	return 0;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
