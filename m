Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74620CA0EFF
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 10:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UYpPMm73NWGL0y79FHoAg2+jtMxpwxyex3m1cqOumhs=; b=Wfz0cxHdV3MpFg
	d+fTtafU84drPgWjcWeiX7PqHBPyXjnPZhI3gxnTbZuYMvtF8K8FyT1Tx1s9wp2mSe3AXh2iD8bZU
	3TFHeXP/auKafHW1tJBZ0W5IpjDBuoVMaoms3cOzXzIS5ELbXcm8U9a9A5ZIHFaeubraSOyK6YQq1
	Nw5Hfi+sTLUCUVddZ2VMdzs3N3sLsIyi7PUHoacC9Ur6FTyA8OIE1KlEqeBxAOa9o1Cjs9iwSzJhU
	iNdIUcTFAB5EbZHG3O48CmClWS28u290uP5gTAzdMnJBu+f5BqOWtSqPeHMkstAuy2C3qAFBx/9Yu
	NTEdXa42po8sjYSB91AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjzGo-00000005uQw-0UR0;
	Fri, 30 Aug 2024 10:54:22 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjzFv-00000005uEz-3hqT;
	Fri, 30 Aug 2024 10:53:29 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 47UArMIc101755;
	Fri, 30 Aug 2024 05:53:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1725015202;
	bh=KUOgx+nr0Fdd/U00rm4qzZJfvik05ytOlpn9p/ouBH8=;
	h=From:To:CC:Subject:Date;
	b=NRWVImWbs7jZ12VLz4r/DKXBGPc8M0cu20KRKBPDV+v3Z156O5hiYonuviIyP77TQ
	 6K853QRxazjjAm68VhX+HX8PEgNWvKaw1SOdnsFlHq76kyANFBBEIujPajRucveRbb
	 X8Ae5HLweEExBElldZspQhgYsmOmm9JfGgYxnus4=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 47UArMRk012191
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 30 Aug 2024 05:53:22 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 30
 Aug 2024 05:53:22 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 30 Aug 2024 05:53:21 -0500
Received: from uda0492258.dhcp.ti.com (uda0492258.dhcp.ti.com [10.24.72.81])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 47UArHDB009586;
	Fri, 30 Aug 2024 05:53:18 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <sjakhade@cadence.com>,
        <yamonkar@cadence.com>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <nm@ti.com>, <srk@ti.com>, <s-vadapalli@ti.com>
Subject: [PATCH] dt-bindings: phy: cadence-sierra: Allow PHY types QSGMII and SGMII
Date: Fri, 30 Aug 2024 16:23:16 +0530
Message-ID: <20240830105316.1824319-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_035328_000177_F8E5C380 
X-CRM114-Status: UNSURE (   9.76  )
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
---

Hello,

This patch is based on linux-next tagged next-20240830.

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
