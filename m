Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5373C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 05:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbxpqsyDhkyybJPX2i1UDxmIrE6B+th6rwbq4cWEZpo=; b=ofH+WqrlRptqWx
	le8E85MxXXB9TpumG1gdZ5QtR+Vzk1i0V+IEH6DggfLE0//++PWvPEHmzgxd3IAbSnxe8acFQjGMg
	uhzm23B2/Py2Ed51pTn7jAUctQh+Kzuqq7RknlNmPnfTlYRbcl1iCVTHihvDlWmrnXREulOKkI2Uj
	ba6dmZ80sn0zeLZa4czUPe2fGZ4IM9KQ755+tpZoUEXxcpfrub9z7Aed5MCV47voo0gg93/uK/8mN
	uagoGsp0k/eU+6wai3p19z8RmtF564y/1/is8VhCLhyhRT30WuXMWocY40uVXw8Z9/GQnVWpYN2Jn
	g9/Hp3xYuPDx7bKNyeSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZQdw-00EF1O-8R; Wed, 30 Mar 2022 05:13:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZQdj-00EExE-MC; Wed, 30 Mar 2022 05:13:05 +0000
X-UUID: 714d1c6de51d44a0ab86329b4d530516-20220329
X-UUID: 714d1c6de51d44a0ab86329b4d530516-20220329
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
 with ESMTP id 1612614371; Tue, 29 Mar 2022 22:11:42 -0700
Received: from mtkexhb01.mediatek.inc (172.21.101.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 29 Mar 2022 22:11:40 -0700
Received: from mtkcas10.mediatek.inc (172.21.101.39) by mtkexhb01.mediatek.inc
 (172.21.101.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Wed, 30 Mar 2022 13:11:38 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 30 Mar 2022 13:11:38 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: <granquet@baylibre.com>
CC: <airlied@linux.ie>, <angelogioacchino.delregno@collabora.com>,
 <chunfeng.yun@mediatek.com>, <chunkuang.hu@kernel.org>, <ck.hu@mediatek.com>, 
 <daniel@ffwll.ch>, <deller@gmx.de>, <devicetree@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <jitao.shi@mediatek.com>, <kishon@ti.com>, 
 <krzk+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-fbdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-mediatek@lists.infradead.org>, <linux-phy@lists.infradead.org>,
 <maarten.lankhorst@linux.intel.com>, <markyacoub@google.com>,
 <matthias.bgg@gmail.com>, <mripard@kernel.org>, <msp@baylibre.com>,
 <p.zabel@pengutronix.de>, <robh+dt@kernel.org>, <robh@kernel.org>,
 <tzimmermann@suse.de>, <vkoul@kernel.org>
Subject: Re: [PATCH v9 01/22] dt-bindings: mediatek,
 dpi: Add DP_INTF compatible
Date: Wed, 30 Mar 2022 13:11:38 +0800
Message-ID: <20220330051138.19264-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20220327223927.20848-2-granquet@baylibre.com>
References: <20220327223927.20848-2-granquet@baylibre.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_221303_739453_09920A8F 
X-CRM114-Status: GOOD (  13.05  )
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

Hi Guillaume,

>DP_INTF is similar to DPI but does not have the exact same feature set
>or register layouts.
>
>DP_INTF is the sink of the display pipeline that is connected to the
>DisplayPort controller and encoder unit. It takes the same clocks as
>DPI.
>
>Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
>Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>Reviewed-by: Rob Herring <robh@kernel.org>
>---
> .../bindings/display/mediatek/mediatek,dpi.yaml       | 11 ++++++-----
> 1 file changed, 6 insertions(+), 5 deletions(-)
>
>diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>index dd2896a40ff0..2dba80ad3b18 100644
>--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
>@@ -4,16 +4,16 @@
> $id: http://devicetree.org/schemas/display/mediatek/mediatek,dpi.yaml#
> $schema: http://devicetree.org/meta-schemas/core.yaml#
> 
>-title: mediatek DPI Controller Device Tree Bindings
>+title: mediatek DPI/DP_INTF Controller
         ^^^^^^^^
Would you mind changing this 'mediatek' to 'MediaTek'?

> 
> maintainers:
>   - CK Hu <ck.hu@mediatek.com>
>   - Jitao shi <jitao.shi@mediatek.com>
> 
> description: |
>-  The Mediatek DPI function block is a sink of the display subsystem and
>

s/Mediatek/MediaTek/

Could you replace all 'Mediatek' with 'MediaTek' of this series, please?
We have set up a chcker inside our organization to capture this case,
hopefully we will see less 'Mediatek' in the future.

>-  provides 8-bit RGB/YUV444 or 8/10/10-bit YUV422 pixel data on a parallel
>-  output bus.
>+  The Mediatek DPI and DP_INTF function blocks are a sink of the display

s/Mediatek/MediaTek/

thanks,
Miles

>+  subsystem and provides 8-bit RGB/YUV444 or 8/10/10-bit YUV422 pixel data on a
>+  parallel output bus.
> 
> properties:
>   compatible:
>@@ -23,6 +23,7 @@ properties:
>       - mediatek,mt8173-dpi
>       - mediatek,mt8183-dpi
>       - mediatek,mt8192-dpi
>+      - mediatek,mt8195-dpintf
> 
>   reg:
>     maxItems: 1
>@@ -54,7 +55,7 @@ properties:
>     $ref: /schemas/graph.yaml#/properties/port
>     description:
>       Output port node. This port should be connected to the input port of an
>-      attached HDMI or LVDS encoder chip.
>+      attached HDMI, LVDS or DisplayPort encoder chip.
> 
> required:
>   - compatible
>-- 
>2.34.1
>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
