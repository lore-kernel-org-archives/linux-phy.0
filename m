Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BA4FC4332F
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jan 2023 14:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e8QNvvI6GFStqfsA9faWY2Rpo2bpQjYQTxaiit7D4K8=; b=y1hV6tsRNvPvJf
	sn93oH7VgTjtNOiDzL2wnJWjx48G2IlADr8SxGikUzCSSv04E+Y2ruDjOimmzZn/7TL73bN4cxxqA
	vrB0tcDb3JOhEt6TuYHb8CKdHbcf3vvgBM+34mO78ofybciOgcK37aG3NyDRzG7R6fEHn1BEYzvnk
	AF+CASHfob2s5sddWdHgbeENVMkMzfdq1/mMP5ZA01r779WZyABLzhXSoJgcVx+ax7P1H5Zs54vM+
	P+4dL5mE6k61BcaG8+8r8qnbqh6+N2Eh7LWy2UX/BiUv6tOxfmP04B6JoIKVA4Owbiga5tTWCah3G
	gs487S4N+RNMqpoAtClQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD4lR-009hiG-36; Wed, 04 Jan 2023 14:29:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD3nm-009Iu0-DN; Wed, 04 Jan 2023 13:27:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=SJsKDaLisFLP+9xbSgisqMqiIgGxLySDzuXQz0Dj2o8=; b=auDSDDIKyS7UTu+uGV6klNAhHp
	POXGhrO5t7OMw9PdOExesER9iyRzXJFiS2DjRMMYPCRCI24/8mVcrBJ5gGITAyStpq+j3xr4/NhJ8
	aPwH7fGt0beT7SGz0rxI4v1b9roGcIS3IjkzBS7q4rv2jh1lKZatjLi3BTEvMkoM4Od8imqbdhdYv
	5yx/WUc6fSOKarvazpVxwKwigkmLeRgYpH3SCafOLL5MbyMkBD7STtb/dJR/qcoHbsCLy4D1e48Qu
	Hi2SdBdtkbCNgGG63iNo9p4VlNI9aaxFsBv5CdTbsmfvBJB51NdIvdzxOBdCz4tKTPcr1s1RxARS0
	RKp49C2Q==;
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pD3na-000xMM-2t;
	Wed, 04 Jan 2023 13:27:23 +0000
X-UUID: 79cdd67e31a04d93a895f8408fd81b78-20230104
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=SJsKDaLisFLP+9xbSgisqMqiIgGxLySDzuXQz0Dj2o8=;
	b=qjQVxPuT/DfswfWxw3VXu7B5ODHBCUDRo6puKtkuX/JUn6OK2bsC+QzRtugaZuWzPzDnyvpW4LcXP0eOcuU2DKppoEibz0bP94Lbd1gJ4gA0MmrOM+ROC9cSnS09RgmukbHAuAsMF2JdVLBZ7OuNzaDUc7Pu3Of5WeNz8eXT5gM=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.16,REQID:73d26bd0-a67b-4e1e-8c38-c81050d4f599,IP:0,U
	RL:0,TC:0,Content:27,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:27
X-CID-META: VersionHash:09771b1,CLOUDID:073b3c8b-8530-4eff-9f77-222cf6e2895b,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:4,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0
X-CID-BVR: 0
X-UUID: 79cdd67e31a04d93a895f8408fd81b78-20230104
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw01.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2013307629; Wed, 04 Jan 2023 06:26:50 -0700
Received: from mtkmbs11n1.mediatek.inc (172.21.101.186) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Wed, 4 Jan 2023 21:26:47 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Wed, 4 Jan 2023 21:26:46 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I
	<kishon@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, "Nathan
 Chancellor" <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
	Tom Rix <trix@redhat.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<llvm@lists.linux.dev>, Eddie Hung <eddie.hung@mediatek.com>, "kernel test
 robot" <lkp@intel.com>
Subject: [PATCH v6 1/3] phy: mediatek: fix build warning caused by clang
Date: Wed, 4 Jan 2023 21:26:44 +0800
Message-ID: <20230104132646.7100-1-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_132719_805271_F6D81AA6 
X-CRM114-Status: GOOD (  13.08  )
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

Remove the temporary @mask_, this may cause build warning when use clang
compiler for powerpc, but can't reproduce it when compile for arm64.
the build warning is -Wtautological-constant-out-of-range-compare, and
caused by
"BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask)"

After removing @mask_, there is a "CHECK:MACRO_ARG_REUSE" when run
checkpatch.pl, due to @mask is constant, no reuse problem will happen.

Fixes: 84513eccd678 ("phy: mediatek: fix build warning of FIELD_PREP()")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v6: modify the title
v5: no changes
v4 new patch, I'm not sure it can fix build warning, due to I don't cross compile
    it for powerpc using clang in office.
---
 drivers/phy/mediatek/phy-mtk-io.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-io.h b/drivers/phy/mediatek/phy-mtk-io.h
index d20ad5e5be81..58f06db822cb 100644
--- a/drivers/phy/mediatek/phy-mtk-io.h
+++ b/drivers/phy/mediatek/phy-mtk-io.h
@@ -39,8 +39,8 @@ static inline void mtk_phy_update_bits(void __iomem *reg, u32 mask, u32 val)
 /* field @mask shall be constant and continuous */
 #define mtk_phy_update_field(reg, mask, val) \
 ({ \
-	typeof(mask) mask_ = (mask);	\
-	mtk_phy_update_bits(reg, mask_, FIELD_PREP(mask_, val)); \
+	BUILD_BUG_ON_MSG(!__builtin_constant_p(mask), "mask is not constant"); \
+	mtk_phy_update_bits(reg, mask, FIELD_PREP(mask, val)); \
 })
 
 #endif
-- 
2.18.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
