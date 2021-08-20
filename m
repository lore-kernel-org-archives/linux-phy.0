Return-Path: <SRS0=GqE6=NL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24D35C4338F
	for <linux-phy@archiver.kernel.org>; Fri, 20 Aug 2021 19:04:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E2F1161102
	for <linux-phy@archiver.kernel.org>; Fri, 20 Aug 2021 19:04:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E2F1161102
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QATxXo/2rerLeVltJlUDMkEKylljpOOGrLFSu8JMINc=; b=nncG6NOqGykR7f
	8rfeo2/qXVyTFnI9dZwnxgITby0aoTKFP7voqMBYgD3w06PMbv7evo7n+Ka1D092BaVyn7PPc3oiA
	+3pq09H27+gnvUgoSrQRiay34WrWf3K/1tAxW05wTt5xT5RHZFfXA6YpfiGyEKhyjc+qtP3uKE614
	NyuX9X/5l5Npd8tM0YX/rKkd5jI2zczcApvEWDVmt4vBKEntLdZxBlCB1T4vgslO0SBfhTA0NGOb7
	ByIQy/1CAfwRTdVEz2oS2RksrmYCYgCb8G9qXDemE0iNHJ0ySsS9hPVAZgnXDVtL20MYFlBeOK8bO
	/EKnsPoYMrdVf0XTRVfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mH9oO-00BxmP-FR; Fri, 20 Aug 2021 19:04:16 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mH9oJ-00Bxkh-Gb
 for linux-phy@lists.infradead.org; Fri, 20 Aug 2021 19:04:15 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 17KJ46l8081769;
 Fri, 20 Aug 2021 14:04:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1629486246;
 bh=v8cI5cKTmjQV/whJwF81brT7QsbxSQ9+p0xr/kS7omY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=hOpFFXgPtOOG1nhE5xRRmO74HbWhIss5mXGp3fRJRI0X78u7cqZyug1yNQXgLHtSB
 Hw91AFh7OI6vVCNO2r8GMbBmOP7/F5aoT7x2UPtCuCYhvHPbM59hD9Two4hOxUwiKU
 qRPZIm2xdBdeVKECL/hoNCHXFkQ/gb9hzcc0n1tw=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 17KJ46TU022353
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Aug 2021 14:04:06 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 20
 Aug 2021 14:04:06 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 20 Aug 2021 14:04:06 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 17KJ3lwa018479;
 Fri, 20 Aug 2021 14:04:03 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Nikhil Devshatwar <nikhil.nd@ti.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Pratyush Yadav <p.yadav@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v4 4/6] phy: dt-bindings: cdns,dphy: make clocks optional
Date: Sat, 21 Aug 2021 00:33:44 +0530
Message-ID: <20210820190346.18550-5-p.yadav@ti.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210820190346.18550-1-p.yadav@ti.com>
References: <20210820190346.18550-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210820_120411_641370_C9502A47 
X-CRM114-Status: UNSURE (   8.64  )
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

The clocks are not used by the DPHY when used in Rx mode so make them
optional.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
Acked-by: Rob Herring <robh@kernel.org>

---

(no changes since v3)

Changes in v3:
- Add Rob's Ack.

Changes in v2:
- Re-order subject prefixes.

 Documentation/devicetree/bindings/phy/cdns,dphy.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
index b90a58773bf2..3bb5be05e825 100644
--- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
@@ -33,8 +33,6 @@ properties:
 required:
   - compatible
   - reg
-  - clocks
-  - clock-names
   - "#phy-cells"
 
 additionalProperties: false
-- 
2.30.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
