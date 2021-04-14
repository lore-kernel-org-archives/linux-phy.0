Return-Path: <SRS0=pdUw=JL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD59C43470
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 14:06:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 84C2F611F0
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 14:06:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 84C2F611F0
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j4j3uDccu6WUSwI0EwgQItcBPu9dbVn3cwdIynieDMM=; b=YJm3j4iGl1z2dALGisk9NypeW
	6vh1pmwcBL3mc7TOgDgkePVGycNvnbtwqvL1M9YSUIbg38YPq3yMUy9rwxTssHFnJOomjL/7huAc4
	++FH7aszw0N0MljJTD2OoObkUAdjMZdExO71QmnUm3EKlt5GnKqXFiLqSiP9L8qBMwIGGIsAD86pF
	m40avgUUJbZQiFndk+sDlsFGaM4mRIgo+RkZ/lTEzb2itnpE9mEA6Gx5x8jjEPxPwxu+2Tvx6SIpf
	9nDBVT80xWc2CNWrlqC0g2j8fc8XqWFvFDB6Q9CqoEKyjAs/1sS34ZfZLqo/Rn2ptShEL8ncQSTEs
	Esnc6q+/A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWg9c-00CqrW-Jv; Wed, 14 Apr 2021 14:06:04 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWg9T-00Cqpw-OD
 for linux-phy@lists.infradead.org; Wed, 14 Apr 2021 14:05:59 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13EE5pga012048;
 Wed, 14 Apr 2021 09:05:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1618409151;
 bh=BC7NZaFwou0Qy/69BHgGrbZVOjCGaSW7Bk5Vk/gujgA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=sYJMLWSuwEH5eByJ3dvCx/iP3gbA5yoqO5P5HllCBwhSOyqtwZMsKUKuORququGT6
 4xeTBmWDj+vVBGyCnLFv0dPD2Wl3zzaP8eMsDRrJqAeqD3M9v+MzU1FDKh1sM/Fse0
 SALsoR7v68WT6bFaik22LhA/9EqI2NccLmnk/GLU=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13EE5paX119767
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 14 Apr 2021 09:05:51 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 14
 Apr 2021 09:05:50 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 14 Apr 2021 09:05:50 -0500
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13EE5LuD074247;
 Wed, 14 Apr 2021 09:05:46 -0500
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, Chandrasekar Ramakrishnan
 <rcsekar@samsung.com>, Wolfgang Grandegger <wg@grandegger.com>, Marc
 Kleine-Budde <mkl@pengutronix.de>,
 "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>, Kishon
 Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <linux-can@vger.kernel.org>, <netdev@vger.kernel.org>, Vignesh Raghavendra
 <vigneshr@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>, Grygorii Strashko
 <grygorii.strashko@ti.com>, Aswath Govindraju <a-govindraju@ti.com>
Subject: [PATCH v2 5/6] dt-bindings: net: can: Document transceiver
 implementation as phy
Date: Wed, 14 Apr 2021 19:35:20 +0530
Message-ID: <20210414140521.11463-6-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210414140521.11463-1-a-govindraju@ti.com>
References: <20210414140521.11463-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_150557_440159_E1488EE0 
X-CRM114-Status: GOOD (  10.51  )
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

From: Faiz Abbas <faiz_abbas@ti.com>

Some transceivers need a configuration step (for example, pulling the
standby or enable lines) for them to start sending messages. The
transceiver can be implemented as a phy with the configuration done in the
phy driver. The bit rate limitation can the be obtained by the driver using
the phy node.

Document the above implementation in the bosch mcan bindings

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
---
 Documentation/devicetree/bindings/net/can/bosch,m_can.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
index 798fa5fb7bb2..25f74db46bae 100644
--- a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
+++ b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
@@ -109,6 +109,9 @@ properties:
   can-transceiver:
     $ref: can-transceiver.yaml#
 
+  phys:
+    maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
