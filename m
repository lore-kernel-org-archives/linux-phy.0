Return-Path: <SRS0=XorX=M3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF59BC432BE
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 07:19:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5FCE661004
	for <linux-phy@archiver.kernel.org>; Wed,  4 Aug 2021 07:19:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5FCE661004
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dl88lK9ppDk5GpswTzO943x0KMIy+vMCN0Ov+G2aVNw=; b=OtczI2tmI6vPqd
	Cwt8DjGIbAxYE77qhbMNU1UJU/rbZ369RflzwscBy1qsN62wbVVCqyRg+L9dTr99Erruc8XO5gXFc
	r7gEf5PDzhUrPyOKvMgPZ9NDjEcGx0GhBB/HT6GxIpMVl+nGGIKXqfZq+YuV3YiFjXBAz6BvqrdX5
	drPsj8pcnNfgpvxEMQQjP1Okjg4RkWjYibRx17wE4bfwO5tXnAIszK2OO0S9krqAtVDHKLA2nxrQv
	gDndWvDRk3YgnjJF7rS5CKNTVAMAOHF6gNBDJQfa55LyZySDt4U31QCceAbKUOnk5ryF1BM/tZW26
	eerHh4Zk9Y7iVX/elPZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBBBA-0050HE-Ta; Wed, 04 Aug 2021 07:19:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBBB8-0050F6-7S
 for linux-phy@lists.infradead.org; Wed, 04 Aug 2021 07:19:03 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5FE2D60FC3;
 Wed,  4 Aug 2021 07:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628061541;
 bh=DuCVUYP7oviwKz23wsYZqPNLLQEdkO9PaJNmlDPw5TI=;
 h=From:To:Cc:Subject:Date:From;
 b=RoQ4/9xs6bAfnpO0Z+2f51GvkoebeQxBXOeUzed8pRtqPojG2u8q+TCL5KAZDDEj/
 iYFX8OjWeTiagFkdBde4fAnmUIYsiHxQxxq8o9Q6h/rKf61ThUAquxBaPGcXP4Hyy0
 zwSdiem33aLQsX39k5+fPvdwsdcH9riIn77vUJ+qfcNVBQZ1e28NmIEHRYQCedoilC
 /YnQJwOK8ZAIHuibax4AQVd6Wx8atr26q3yrD3PLPJ2mSefjzd8MpV7UDs9nVT/XHM
 HGAqDST8DnQdmrR26Z8cybN6UlLyJaGPBtspS5Q1uUuAiM1lQ8ZbG6zonXVTqduPif
 Uo4HytOUo0pEg==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1mBBB5-000BlA-3j; Wed, 04 Aug 2021 09:18:59 +0200
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
Subject: [PATCH v4 0/4] DT schema changes for HiKey970 PCIe hardware to work
Date: Wed,  4 Aug 2021 09:18:53 +0200
Message-Id: <cover.1628061310.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_001902_338900_384D1CAE 
X-CRM114-Status: GOOD (  13.58  )
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

It follows the DT bindings for Kirin 970 PCIE and its corresponding PHY,
rebased on the top of next-20210803.

It should apply cleanly on the top of:
	https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/log/?h=dt/next

Note: you mentioned that patch 1 was already applied, but it is not
there yet. I opted to keep it at the tree, in case someone wants to
apply this series on the top of linux-next.

v4:
  - Rebased and fixed a merge conflict

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
 .../phy/hisilicon,phy-hi3670-pcie.yaml        |  82 +++++++++
 MAINTAINERS                                   |   2 +-
 5 files changed, 244 insertions(+), 52 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.yaml
 delete mode 100644 Documentation/devicetree/bindings/pci/kirin-pcie.txt
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml

-- 
2.31.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
