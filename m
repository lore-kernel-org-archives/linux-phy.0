Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1E56C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 15 Oct 2022 20:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iOxbrzbNMDO8bGduF5NgDvbTPo8Mpnei4IZXLM8oOhw=; b=GVfM87JgGl+1Ea
	nLd8ehhCS6D+hIE4CdVIA6HocfCqZUatbWUaiPy70VMOEYp1a5K3wP3o2+StLUr/LQpL5pjD0wXr/
	M4G6zxqIdjSVHSB1zLbfwPLysgbvvvu8h0SsW2DT0ah4VSntwx5/duPp0wrvAJhyeHXq4rplUJ8kf
	WctDRJq4cyUkrtVULm9I27KBkWSbwcNENopS1MNaxjtc8pjS3qM5o0BhmKKMIXW3lr+5EhWB2nidO
	2SlahrrqGZqVjk02Ejh+5BkgrXvDTgU00Usdd1v9TUHc/cRXqT7465uHF7r0Bt3fYHGySQfBcR6yD
	lncUAa9WOkH9mETIAxIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojnVZ-00HaHG-Nt; Sat, 15 Oct 2022 20:11:45 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojnVW-00HaG1-Sk
	for linux-phy@lists.infradead.org; Sat, 15 Oct 2022 20:11:44 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29FKBUMV097674;
	Sat, 15 Oct 2022 15:11:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1665864690;
	bh=6rQELq3LVF1Oy9/G8iC1Hlu5ypUXnxEw4otfvlhku1o=;
	h=From:To:CC:Subject:Date;
	b=pVptbBBboZSPSKksXQWzIjyVdnx0lSdNonj6n6ktejeEwU4+VK++rZLm7hlIwPArK
	 HyoGulwGSWhgs8BEkIF2LaQnYcZnUyE78TaXXFExrLQQ3AXoSr++4qMxjgdryOciVa
	 ggRA8zAWarP2mI3XVxOHUuorrNhYPm039ihrVvqc=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29FKBUlT124367
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sat, 15 Oct 2022 15:11:30 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Sat, 15
 Oct 2022 15:11:30 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Sat, 15 Oct 2022 15:11:30 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29FKBR0c064094;
	Sat, 15 Oct 2022 15:11:28 -0500
From: Matt Ranostay <mranostay@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <vigneshr@ti.com>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        Matt
 Ranostay <mranostay@ti.com>
Subject: [PATCH 0/2] phy: ti: phy-j721e-wiz: add j784s4 support
Date: Sat, 15 Oct 2022 13:11:21 -0700
Message-ID: <20221015201123.195477-1-mranostay@ti.com>
X-Mailer: git-send-email 2.38.0.rc0.52.gdda7228a83
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221015_131143_134216_6DC22E4F 
X-CRM114-Status: UNSURE (   5.08  )
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

WIZ modules for J784S4 platform have two input muxes which requires
additional mux sections options.

Matt Ranostay (2):
  dt-bindings: phy-j721e-wiz: add j784s4 compatible string
  phy: ti: phy-j721e-wiz: add j784s4-wiz-10g module support

 .../bindings/phy/ti,phy-j721e-wiz.yaml        |  1 +
 drivers/phy/ti/phy-j721e-wiz.c                | 22 +++++++++++++++++++
 2 files changed, 23 insertions(+)

-- 
2.38.0.rc0.52.gdda7228a83


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
