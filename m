Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2892C43334
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=699UKhrTYfcGwljZ6ZTN5l3cAGiNR+5naihQ2G+NUH8=; b=hJVdJH8zZWpk81
	ZaAYXyOnN4lmqUyvtAqzKrEVX0r1iRsLf/MxDn6+vZxZL9ioGoquqDJltImtqmt4huswNl1WAUrHW
	2cR6PEFSgbKvRbeFcrb22/77ZNTJMzKi60Wb2sl8fJNgIWTjZ1fWnK0ONN0JwEKXXLCqbHWqBuZEr
	oT+dhpuIBLAGn4+goLbt4Uf5AZOrzk+60ENlA/oaj4SO2muhSb08qGsojoR+Nd5aZpsCg+n7pWB1Q
	ISdlYhIa4ducf2s2V/DHvUlTzOdfRpWY0HNXQwt+Q+v2NF58/9KhRl7Ho0dJOQ8PbOH7JkQTTlAPF
	v7vwzarPZl0fLrJkkT+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6AFc-0069dE-6G; Tue, 28 Jun 2022 12:23:28 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6AFX-0069ad-PC
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:23:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0BD7F614AB;
	Tue, 28 Jun 2022 12:23:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 468ECC341CB;
	Tue, 28 Jun 2022 12:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656419002;
	bh=qYPfnzTqV+BxctBlh0HulqRk4JegMdUP1qyxoejHvUA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Khf4igej+0j3Ni7xatEFL0AMD2MMQoFYj+Xd85iYQghPGkG99zWk4VCmswSQ32CoL
	 NJTH8ntIj3Qiz8UFwckFrLpmxzLRHzYbwSooyxo/wKtdQ+4e/FziDAgxd/92M8X/bS
	 VQO7rW0+rWDvmbHRMIroszel5s+mRVVRv3bYYoSyFcJp5Ni12zou+vCVTXLpnpkDBc
	 xUHviytXvaCFQVigAwz+aCXVfbmnIas7uXNKnmjIit9Lo1DIr82wDlSbMJJs2MH/PN
	 Rbo1IMJI4y2EOnaW+NuebuJ5SdYe1HJnjHLwAVQfkhK5P0g1MV0HqlcEXkXY1TC7xc
	 pzVS1jb+dtkhQ==
From: Roger Quadros <rogerq@kernel.org>
To: kishon@ti.com,
	vkoul@kernel.org
Cc: vigneshr@ti.com,
	t-patil@ti.com,
	sjakhade@cadence.com,
	s-vadapalli@ti.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Roger Quadros <rogerq@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 4/7] dt-bindings: phy: ti,phy-j721e-wiz: deprecate clock MUX nodes
Date: Tue, 28 Jun 2022 15:22:52 +0300
Message-Id: <20220628122255.24265-5-rogerq@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220628122255.24265-1-rogerq@kernel.org>
References: <20220628122255.24265-1-rogerq@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_052323_905824_4E1A1659 
X-CRM114-Status: GOOD (  10.25  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Mark "pll[0|1]-refclk", "refclk-dig" and "cmn-refclk1?-dig-div"
as deprecated. The clock muxes are provided by the device driver
so not required in device tree.

Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Roger Quadros <rogerq@kernel.org>
---
 Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
index dcd63908aeae..3127bb648427 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -83,6 +83,7 @@ properties:
       WIZ node should have subnode for refclk_dig to select the reference
       clock source for the reference clock used in the PHY and PMA digital
       logic.
+    deprecated: true
     properties:
       clocks:
         minItems: 2
@@ -111,6 +112,7 @@ patternProperties:
     description: |
       WIZ node should have subnodes for each of the PLLs present in
       the SERDES.
+    deprecated: true
     properties:
       clocks:
         maxItems: 2
@@ -136,6 +138,7 @@ patternProperties:
     description:
       WIZ node should have subnodes for each of the PMA common refclock
       provided by the SERDES.
+    deprecated: true
     properties:
       clocks:
         maxItems: 1
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
