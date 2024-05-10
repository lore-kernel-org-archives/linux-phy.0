Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B333C25B5F
	for <linux-phy@archiver.kernel.org>; Fri, 10 May 2024 11:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J6AkdV71zYlCEhmO0zwWs7DALaYn7g9vBp+EUW/4S2k=; b=0ai4YeCOILD+Pb
	XUJCFcVMYluj+8hs3/o9SQ7AZFgXCWCsk6mBKdjuDstD9xNm6pzs6LN0oSVmFQw8ZLV4p3pXXtRwV
	uSKtMjPZeeFDmI0+GZ4cVNDND6E4Q9HOqw3MnwnlrOR+50WMO2ZrzLPnA4MsL/qifBDkF6lVxrPLO
	AwwQ2IY5e7JPucVQ4ghlgZVqutjOwhiqlKSAxAeF0ZGhjQAXm1MRjtGqMmUysiPNNQoXYuCkyKdzX
	chMuTq+bZg6T/ZpLxcnzK6hBpOG+oNOs5pxBNkqaUvWIn1uj6PzfkUTltCbDWk8ClTbHfFIboMunz
	JRzM6pMN+BTrzCIatjYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5OEv-0000000507F-0DP0;
	Fri, 10 May 2024 11:16:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s5OEr-0000000505Q-16Vf;
	Fri, 10 May 2024 11:16:34 +0000
X-UUID: bef08a9e0ebe11ef9a78ddf43a9225dc-20240510
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=IOhnNl2jAPwhb2LKbFuYNt+ww3POwT1hakzjLf5nXUw=;
	b=HaunucPg8EE2ibzNkyLWK4/7IoKosolm1lhtwXDooSIwlG3OepXthCSDRyd4H04D81LI7eZXMhdip3gjXSUuSxHAqRnqhmpk6i741oKpfjTYBhAAIaV8wVC5Ou29/8J+LDiq8tElXvDFF9lZ2//OwRSwx15P2Nb76A+1h3Lf9FA=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38,REQID:5e393076-30a9-4ad9-9a0a-c9760b6a6850,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:82c5f88,CLOUDID:f927effb-ed05-4274-9204-014369d201e8,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: bef08a9e0ebe11ef9a78ddf43a9225dc-20240510
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <liankun.yang@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1942376544; Fri, 10 May 2024 04:16:28 -0700
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 10 May 2024 19:05:30 +0800
Received: from mszsdhlt06.gcn.mediatek.inc (10.16.6.206) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 10 May 2024 19:05:29 +0800
From: Liankun Yang <liankun.yang@mediatek.com>
To: <chunkuang.hu@kernel.org>, <p.zabel@pengutronix.de>, <airlied@gmail.com>,
	<daniel@ffwll.ch>, <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<chunfeng.yun@mediatek.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
	<matthias.bgg@gmail.com>, <angelogioacchino.delregno@collabora.com>,
	<jitao.shi@mediatek.com>, <mac.shen@mediatek.com>,
	<liankun.yang@mediatek.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
CC: <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v2 0/2] Add PHY-dp bindings 
Date: Fri, 10 May 2024 19:04:13 +0800
Message-ID: <20240510110523.12524-1-liankun.yang@mediatek.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240510_041633_526621_2116FD05 
X-CRM114-Status: UNSURE (   6.35  )
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

Update write DP phyd register and add phy-dp bindings.

Liankun Yang (2):
  Add write DP phyd register from parse dts
  Add dp PHY dt-bindings

 .../display/mediatek/mediatek.phy-dp.yaml     | 45 +++++++++++++++++++
 drivers/phy/mediatek/phy-mtk-dp.c             | 37 +++++++++++++++
 2 files changed, 82 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek.phy-dp.yaml

-- 
2.18.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
