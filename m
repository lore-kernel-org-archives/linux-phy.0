Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187B960A5BC6
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 08:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pPjGMPbP;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=mail.zgclab.edu.cn header.i=@mail.zgclab.edu.cn header.a=rsa-sha256 header.s=dkim header.b=SRTO+bhk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=68v6rcQ1rGjD8gARjihANIefAF8RB6C7DyDMcVQj+Og=; b=pPjGMPbPLRM4KvREwNU0xQPQtS
	BI8Fz9yCGGYOch9xQDCpQNnCB4w3nkqNOCCe1TtaW242k1Ac9rKZTGyAIaOPA1izr7Nl5w/74FAyo
	YiNC7LepY+6xvlo9hEYh/e1qn0zv9q0Wuwko1sqxMnUbYE5RFgZhyuZrQ/X2oxCGShaK+Rs/WK4h+
	sd/hfuRbFQVyqeawXKPIJai/Z8XjcRmsisKbi6WC/9qPwdxhCU6gOe+fMoPQpd48gxX999hvND5Oj
	J8TkERgqZELIOI4FrakTHyMuLQ+ghMdgV09qb9D0VM3i0d2H3D5nB56e/sqACO8F3Dy8BfOW9hoG8
	Us+edODQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTxIW-0000000B9aG-3TB7;
	Thu, 19 Nov 2026 08:15:12 +0000
Received: from zg8tndyumtaxlji0oc4xnzya.icoremail.net ([46.101.248.176])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTxIU-0000000B9YJ-1t22
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 08:15:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mail.zgclab.edu.cn; s=dkim; h=Received:From:To:Cc:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
	bh=U9t4pJeZyZWUQxFrVCggUc/F+GKGAxiNarXEorNKZXE=; b=SRTO+bhkMYLp3
	WFgrWO9/5K4/G1/XpEHPWV4TK7/v9vdLrppfF/atZG6r07Na9rCQpDaBEoUjN50R
	/5v9YQDqd35dQSSzrwksLfrMy/mSM/AfVhxfO54jIpCjxsr0H7T3Q02NCpslfmNK
	htDSXHJ3PWeFfxkCDmvA8+PMb6ZFNA=
Received: from 11.eml (unknown [58.206.202.11])
	by web4 (Coremail) with SMTP id ywQGZQCnZwUJsP5q07whAg--.22902S2;
	Thu, 19 Nov 2026 16:15:05 +0800 (CST)
From: Wang Haoran <wanghr2026@mail.zgclab.edu.cn>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org, mani@kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, wanghr2026@mail.zgclab.edu.cn
Subject: [PATCH] phy: berlin-sata: count available child nodes
Date: Thu, 19 Nov 2026 16:15:06 +0800
Message-ID: <1795076106646-11-85fca065@mail.zgclab.edu.cn>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CM-TRANSID: ywQGZQCnZwUJsP5q07whAg--.22902S2
X-Coremail-Antispam: 1UD129KBjvJXoWxWw1DtF4ftr4xurWrtry3CFg_yoW5XF45pa
	9xKrW0kF40qF42krZrtas7AF1Ikw17CF95GF1vk3WUZa13JrWxtF4Iv3ySqF1ayr48C34Y
	v3sFqFyqyr45J3DanT9S1TB71UUUUjUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUPE14x267AKxVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r4j6ryUM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j
	6r4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r
	4UJVWxJr1ln4kS14v26r1Y6r17M2vYz4IE04k24VAvwVAKI4IrM2AIxVAIcxkEcVAq07x2
	0xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1q6rW5Mc
	Ij6I8E87Iv67AKxVWxJVW8Jr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcVAKI48JM4x0
	x7Aq67IIx4CEVc8vx2IErcIFxwCY1x0262kKe7AKxVWUtVW8ZwCY02Avz4vE14v_GFyl42
	xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1l4IxYO2xFxVAFwI0_Jrv_JF1l
	x2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14
	v26r126r1DMIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Gr0_Xr1lIxAIcVC0I7IY
	x2IY6xkF7I0E14v26F4j6r4UJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z2
	80aVAFwI0_Cr0_Gr1UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr1j6F4UJbIYCTnIWIevJa73
	UjIFyTuYvjfU0rWrDUUUU
X-CM-SenderInfo: pzdqwxbusqjlo62juzldeovvfxof0/1tbiAQEQD2r+rmUDOgAAs5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_001510_783152_F3842AA0 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

phy_berlin_sata_probe() sizes priv->nphys with of_get_child_count(), which
counts every child, but fills priv->phys[] only from available children. A
disabled child therefore leaves trailing NULL entries, and
phy_berlin_sata_phy_xlate() dereferences priv->phys[i]->index for them. A
device tree that disables a PHY but still points a consumer at it crashes
with a NULL dereference in the generic ahci_platform path during probe.

Count available children instead.

Signed-off-by: Wang Haoran <wanghr2026@mail.zgclab.edu.cn>
Fixes: 942a31b52191 ("phy: add a driver for the Berlin SATA PHY")
---

diff --git a/drivers/phy/marvell/phy-berlin-sata.c b/drivers/phy/marvell/phy-berlin-sata.c
index 084671ee7d56..6ed9c8e2b6f4 100644
--- a/drivers/phy/marvell/phy-berlin-sata.c
+++ b/drivers/phy/marvell/phy-berlin-sata.c
@@ -212,7 +212,7 @@ static int phy_berlin_sata_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->clk))
 		return PTR_ERR(priv->clk);
 
-	priv->nphys = of_get_child_count(dev->of_node);
+	priv->nphys = of_get_available_child_count(dev->of_node);
 	if (priv->nphys == 0)
 		return -ENODEV;
 

---

PoC reproduction (7.4.0-rc2, arm64 QEMU virt, unmodified kernel):

Device tree injection, spliced into the QEMU virt machine DT:

    osc25m: clock-25m { compatible = "fixed-clock"; #clock-cells = <0>;
        clock-frequency = <25000000>; };

    reserved-memory { #address-cells = <2>; #size-cells = <2>; ranges;
        phy-regs@7f100000 { no-map; reg = <0x0 0x7f100000 0x0 0x1000>; };
        ahci-regs@7f110000 { no-map; reg = <0x0 0x7f110000 0x0 0x1000>; }; };

    sata_phy: sata-phy@7f100000 { compatible = "marvell,berlin2q-sata-phy";
        reg = <0x0 0x7f100000 0x0 0x1000>; clocks = <&osc25m>;
        #phy-cells = <1>;
        phy@0 { reg = <0>; };
        phy@1 { reg = <1>; status = "disabled"; }; };

    sata@7f110000 { compatible = "generic-ahci"; reg = <0x0 0x7f110000 0x0 0x1000>;
        interrupt-parent = <&gpio0>; interrupts = <5 8>; phys = <&sata_phy 1>; };

phy@1 is disabled but the generic-ahci consumer still points at it via
phys = <&sata_phy 1>, so xlate() walks a NULL slot.

Trigger:

    modprobe phy-berlin-sata
    modprobe ahci_platform

Result:

    Unable to handle kernel NULL pointer dereference at virtual address 000000000000000c
    pc : phy_berlin_sata_phy_xlate+0x30/0x60 [phy_berlin_sata]
    Call trace: ahci_platform_get_phy then ahci_probe

Note: the PoC was generated with AI assistance and the vulnerability was
found by static analysis. The device tree is trusted input (a bad DT
requires root or physical access), so this is not a security fix, but it
prevents a potential resource leak or system failure on a failed probe or
an old or malformed DT.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
