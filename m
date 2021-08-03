Return-Path: <SRS0=vwvf=M2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 678F6C19F3A
	for <linux-phy@archiver.kernel.org>; Tue,  3 Aug 2021 04:39:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2AB6961050
	for <linux-phy@archiver.kernel.org>; Tue,  3 Aug 2021 04:39:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2AB6961050
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DFYE6ZlFpBK6y4zjVL+LjNsZeERhYcb1e9wLLKRh/bs=; b=JKtRE0r5auzjg9
	vm27b1aCNcuhv/Zw2m+n6+Q8fqrdpCZIlqxa0hVjuG7T6tWH5TvN8Q4vRONwoN9R5H2WEWSMgs6a/
	wMhk/8wc1dJnb/zwpBoWG2BK7PSV4P7UWo8GoHqHD/a7B3gwP3laNzZO+Zs5H1BPaQNC0zR9wnB4b
	E13V7svlYDuevAu0NHMezIjeLthRBu4T2LvUSElaFm9yMrOKpb8caicpxsvyFu8nPCVWyCIf7HArs
	orvycM6/1gDIm1GxiOLrr4NxKbdCzsVOVwgjUGlXzRvD37+GPtuChIlVBDyASMqgFXIYFTPnPR1EP
	QmK2SoMJ8GOz5aI0ylsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAmCq-0012VI-N9; Tue, 03 Aug 2021 04:39:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAmCm-0012S9-K4
 for linux-phy@lists.infradead.org; Tue, 03 Aug 2021 04:39:07 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B051960F92;
 Tue,  3 Aug 2021 04:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627965543;
 bh=HPK28uCi1iOsyLvrqkwrijwn8LbLWGJtlix8oYTZDDo=;
 h=From:To:Cc:Subject:Date:From;
 b=Kyj4k5SBhiAKWQEG+JyRR8OhCCgFqaVfhG/apEvyqWEazuD+CBUaCAT/EwzCU+Mbm
 71MeZCySfJJRCXqhtrPYC/lJkbJFNBqBtu9QTC7dNKaQxy2DMJT2JqMiH6RDUgWlP3
 s8m/0EgAimHcumC/KV69n5JqLNF3UzhlPM62b8M/SHKrKjTzAQ5qfT9YOKhH+N8mVP
 wn27eqMPRz6w8mnDZBE0ZaaGL/UfRhJ6TxQs43sguM8dZMQRKdFKWl1/88BrTWCiYS
 KCBDpZ3gfxEP0dGQUG0nTg4Ji2YAdZ1otY+BNeUUzP6YH9Nxe3KU57Ehm2BuEU211N
 C/7pcf7MJRtOg==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1mAmCj-00D8KA-EN; Tue, 03 Aug 2021 06:39:01 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Binghui Wang <wangbinghui@hisilicon.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>,
 Xiaowei Song <songxiaowei@hisilicon.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: [PATCH v3 0/4] DT schema changes for HiKey970 PCIe hardware to work
Date: Tue,  3 Aug 2021 06:38:54 +0200
Message-Id: <cover.1627965261.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210802_213904_731361_07ED52B6 
X-CRM114-Status: GOOD (  12.42  )
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

Hi Rob,

That's the third version of the DT bindings for Kirin 970 PCIE and its
corresponding PHY. 

It is identical to v2, except by:
	-          pcie@7,0 { // Lane 7: Ethernet
	+          pcie@7,0 { // Lane 6: Ethernet

at Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.yaml

IMO, the best would be to merge this series via your tree, as it
depends on the patch converting the DT bindings for the PCIe DWC
driver.

v3:
  - Fixed a comment on patch 3: The Ethernet controller is at lane 6.

v2:
  - removed the DTS file. I'll submit it in separate, once having
    everything else merged;
  - it now doesn't produce any warnings with:
        make DT_SCHEMA_FILES=Documentation/devicetree/bindings/pci/hisilicon,kirin
-pcie.yaml DT_CHECKER_FLAGS=-m dt_binding_check
  - added the upstream node;
  - the clock enable now uses a new property (hisilicon,clken-gpios);
  - the reg for the PCI devices are now properly filled;
  - the pcie@x,y nodes now match the port number from table 4-1 from the
   datasheet.


Mauro Carvalho Chehab (4):
  dt-bindings: PCI: kirin: Fix compatible string
  dt-bindings: PCI: kirin: Convert kirin-pcie.txt to yaml
  dt-bindings: PCI: kirin: Add support for Kirin970
  dt-bindings: phy: Add bindings for HiKey 970 PCIe PHY

 .../bindings/pci/hisilicon,kirin-pcie.yaml    | 160 ++++++++++++++++++
 .../devicetree/bindings/pci/kirin-pcie.txt    |  50 ------
 .../devicetree/bindings/pci/snps,dw-pcie.yaml |   2 +-
 .../phy/hisilicon,phy-hi3670-pcie.yaml        |  86 ++++++++++
 MAINTAINERS                                   |   2 +-
 5 files changed, 248 insertions(+), 52 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.yaml
 delete mode 100644 Documentation/devicetree/bindings/pci/kirin-pcie.txt
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml

-- 
2.31.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
