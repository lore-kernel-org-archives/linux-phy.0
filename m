Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D518CF6497
	for <linux-phy@archiver.kernel.org>; Mon, 30 Sep 2024 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cog+lgd+bcESDi8+LBw++AXcSk/zXbm6+A87Xi4Vvcc=; b=XB+uAmqrtSe5cc
	Ap+KBajX4IjEZUy+YImdNzwBUqrRZT+FPt02EvpPJV81JmUlctndrjxs9jBSWSUgsQJxsmdypS2hj
	dfzc8hpdlkXwAc45ouMtd1EU6xkUce08G4PAwI5/PSscQJJC12OtVcXUpjuJOA+W73ypcQFTrTW98
	7MUdm9EnfJHETEUnrUQKOYPwMOes1uat975dTq85r7AX1xjokYIvmnceNNukUsAfQdgkpgkxLGhP0
	lEUdIov5hQllFpV+rjy3yDm/awAGObKd8uR+3jHwqg6cRskkw56EbrNpy57AqKNBTg6a/URS1if9D
	iYKn9wqcipefaD+GsHWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svDGu-0000000GdXe-1ARx;
	Mon, 30 Sep 2024 10:04:52 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svD4P-0000000Gace-3XXB;
	Mon, 30 Sep 2024 09:51:59 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 48U9ppeU056451;
	Mon, 30 Sep 2024 04:51:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1727689911;
	bh=FpjCUlqj/npY/3KoH9Yoyz6bWbmAqbUo8uX4w3FlqoY=;
	h=From:To:CC:Subject:Date;
	b=XirWzPnNML7Q5EMq5/2rLvm2QQtzFylDneewUWSr0i716snU7PsVizW0KS2MCF8Po
	 T72pEDTXJg6PWPGdWY12qWtm5YwDFr1B+EVIBWEz23KsMqmTvf7l4fmKbrfLSeyCfI
	 sTIEWvZHX/MaspsZU6V12gxWXwsWbt7IRBFP3lEo=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 48U9ppoT018783;
	Mon, 30 Sep 2024 04:51:51 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 30
 Sep 2024 04:51:51 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 30 Sep 2024 04:51:50 -0500
Received: from uda0492258.dhcp.ti.com (uda0492258.dhcp.ti.com [10.24.72.81])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 48U9pkBw042299;
	Mon, 30 Sep 2024 04:51:46 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <sjakhade@cadence.com>,
        <yamonkar@cadence.com>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <conor.dooley@microchip.com>, <nm@ti.com>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH v2] dt-bindings: phy: cadence-sierra: Allow PHY types QSGMII and SGMII
Date: Mon, 30 Sep 2024 15:21:45 +0530
Message-ID: <20240930095145.3004053-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_025157_994670_9F3C7B45 
X-CRM114-Status: UNSURE (   9.82  )
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

The Sierra SERDES can be configured for QSGMII and SGMII protocols. Hence,
update the bindings to treat "PHY_TYPE_QSGMII" and "PHY_TYPE_SGMII" as
valid values for the "cdns,phy-type" property.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

Hello,

This patch is based on linux-next tagged next-20240930.

v1:
https://lore.kernel.org/r/20240830105316.1824319-1-s-vadapalli@ti.com/
Changes since v1:
- Rebased patch on next-20240930.
- Collected Acked-by tag from Conor Dooley <conor.dooley@microchip.com>

Regards,
Siddharth.

 Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
index 37f028f7a095..137ac5703853 100644
--- a/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
@@ -96,7 +96,7 @@ patternProperties:
           Specifies the type of PHY for which the group of PHY lanes is used.
           Refer include/dt-bindings/phy/phy.h. Constants from the header should be used.
         $ref: /schemas/types.yaml#/definitions/uint32
-        enum: [2, 4]
+        enum: [2, 4, 8, 9]
 
       cdns,num-lanes:
         description:
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
