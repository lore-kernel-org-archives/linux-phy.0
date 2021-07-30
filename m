Return-Path: <SRS0=wp9D=MW=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2455C4338F
	for <linux-phy@archiver.kernel.org>; Fri, 30 Jul 2021 09:35:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B480D60F5C
	for <linux-phy@archiver.kernel.org>; Fri, 30 Jul 2021 09:35:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B480D60F5C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z0ZIoMKr5+M1fNzZ8p+LCHweIAi+leclabSkYvXUKf0=; b=aHtqKvg1vcpShk
	9vR5Ybyyf/XWAEjqJ8xAZbYNoNk86ARxOOux3JuSIjl3EULhhCyhp+mardzbSOZ9MEj8PPfS7xNGB
	tKYMX6aMaS3tPP68r+stQdhSNXee2pCn5fqGQdy9P/gu83FYyzcnJDkpuYvL3IPg1x6Xt0zrVhWhH
	QBXqDTfQ9/B8MH33LlQScApydu4rtVCXfb+WFq1GlSuRnQhxwfK5JNnCH7u63W3w6bdiQcOBQU8hD
	riKJw/1A4bMNOw6nDopD+s0ZGjEVdUgGGKWR577UEehSMVBWo6lVnDoyszHUFPiOAnV9llKTiPUZ7
	sjM2ktPYyFOiBWRAOWZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9Ovh-007vOx-DJ; Fri, 30 Jul 2021 09:35:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9OuR-007ukN-LA
 for linux-phy@lists.infradead.org; Fri, 30 Jul 2021 09:34:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 054EC60F5C;
 Fri, 30 Jul 2021 09:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627637667;
 bh=NXq0Hi8b5aSirn3qb7AXIhIajJhTyFfSBKSnQTXScPM=;
 h=From:To:Cc:Subject:Date:From;
 b=W+OmIie5D9+AAKg0xteqArun4Pw98MS8YQhGVTQMQUY+VKi658JxbAAyXq7mGQkoC
 sHiuxoBvTQ4/K7rI1jDMq8v5GtLbkxngrZ16bKXjEmp8MWBBbT/dTTYFjn3v2GwMwz
 54gEATJjcLJtA1DELiw2c63J7bHXZUt2qKwsWcGqtHwHUUm1UHJlEY7BpHHo2NvJnZ
 ikuCYiZypFgFts56QXjSDFJongb4Dayw01KmjHIgXMkXTfZ3MvsOQXCkZfh83JESs4
 YU4C/RHNLWNEBjhapgr3F8agRL2VE2XgnFUrsBWdx53KrByc+1JUTSqnX6WXNF3Gfn
 BzH2FMLgJHo/Q==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1m9OuO-006qw0-El; Fri, 30 Jul 2021 11:34:24 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Binghui Wang <wangbinghui@hisilicon.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Xiaowei Song <songxiaowei@hisilicon.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: [PATCH v2 0/4] DT schema changes for HiKey970 PCIe hardware to work
Date: Fri, 30 Jul 2021 11:34:17 +0200
Message-Id: <cover.1627637448.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210730_023427_756254_38CB5F29 
X-CRM114-Status: GOOD (  11.27  )
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

That's the second version of the DT bindings for Kirin 970 PCIE and its
corresponding PHY.

IMO, the best would be to merge this series via your tree, as it
depends on the patch converting the DT bindings for the PCIe DWC
driver.

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
