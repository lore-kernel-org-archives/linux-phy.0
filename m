Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3E1ACCD183
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 06:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4tlGq4rcO5czcud25dhpLMgBWS5y7dZYjqsE6g7kMNk=; b=KGBqgfzFCblp5l
	X2G6GTpXdhe1fvUZViTi8BuDj5FYx6F4AoZWHedqRx1AA5mmDssqOa4/jky4nfFiBq+7Cl/mBkk9A
	Db969FHHd0O2Xyf3F/UTv/f3qImlYV7CET6PbZF0JRrxBYnl3ZO48xQLwFcWJddPQgzETFVBlPQvP
	8foOKCX/sCiHTN6rkXJHSXasGpj67f107bZ4A3km96yov9g9bAtsgnuzQBYz9fDA0kckVeTH1uuBU
	PD6j8h/UD7wIt/s+Mr/1HAlgLjwABaSl+eYBVvttTTMuVIVNVP9OEHT6VL039isPWhJMPoqHgdrZZ
	+Btf7K2Fdt4RChgi2M/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9HL3-00000003bv7-2Jyw;
	Thu, 16 Oct 2025 06:19:49 +0000
Received: from l-sdnproxy.icoremail.net ([20.188.111.126] helo=azure-sdnproxy.icoremail.net)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9HKz-00000003buY-2QQZ
	for linux-phy@lists.infradead.org;
	Thu, 16 Oct 2025 06:19:47 +0000
Received: from luyulin$eswincomputing.com ( [10.12.96.77] ) by
 ajax-webmail-app2 (Coremail) ; Thu, 16 Oct 2025 14:19:25 +0800 (GMT+08:00)
X-Originating-IP: [10.12.96.77]
Date: Thu, 16 Oct 2025 14:19:25 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Yulin Lu" <luyulin@eswincomputing.com>
To: dlemoal@kernel.org, cassel@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org
Cc: ningyu@eswincomputing.com, zhengyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	fenglin@eswincomputing.com, lianghujun@eswincomputing.com
Subject: Re: [PATCH v5 0/3] Add driver support for Eswin EIC7700 SoC SATA
 Controller and PHY
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2024.2-cmXT6 build
 20241203(6b039d88) Copyright (c) 2002-2025 www.mailtech.cn
 mispb-72143050-eaf5-4703-89e0-86624513b4ce-eswincomputing.com
In-Reply-To: <20250930083754.15-1-luyulin@eswincomputing.com>
References: <20250930083754.15-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
Message-ID: <6399b000.1dc.199ebac5daf.Coremail.luyulin@eswincomputing.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: TQJkCgAXt5VujvBoAvINAQ--.27874W
X-CM-SenderInfo: pox13z1lq6v25zlqu0xpsx3x1qjou0bp/1tbiAQERA2jvzH0SZQAB
	sS
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_231946_042007_360D4F5E 
X-CRM114-Status: UNSURE (   8.44  )
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

Hi all,

Gentle ping.
Could you please review the PHY-related changes in patch 2/3 and patch 3/3?
Thanks in advance for your time and consideration.

Best regards,
Yulin Lu

> 
> This series depends on the config option patch [1].
> 
> [1] Https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250929&id=ce2d00c6e192b588ddc3d1efb72b0ea00ab5538f
> 
> Updates:
>   v5 -> v4:
>     - eswin,eic7700-ahci.yaml
>       - Add "dt-bindings: ata:" prefix to the subject.
>       - Wrap at 80 characters in the YAML description field.
>     - Link to v4: https://lore.kernel.org/lkml/20250915125902.375-1-luyulin@eswincomputing.com/
> 
> Yulin Lu (3):
>   dt-bindings: ata: eswin: Document for EIC7700 SoC ahci
>   dt-bindings: phy: eswin: Document the EIC7700 SoC SATA PHY
>   phy: eswin: Create eswin directory and add EIC7700 SATA PHY driver
> 
>  .../bindings/ata/eswin,eic7700-ahci.yaml      |  79 +++++++
>  .../bindings/phy/eswin,eic7700-sata-phy.yaml  |  36 ++++
>  drivers/phy/Kconfig                           |   1 +
>  drivers/phy/Makefile                          |   1 +
>  drivers/phy/eswin/Kconfig                     |  14 ++
>  drivers/phy/eswin/Makefile                    |   2 +
>  drivers/phy/eswin/phy-eic7700-sata.c          | 192 ++++++++++++++++++
>  7 files changed, 325 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ata/eswin,eic7700-ahci.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
>  create mode 100644 drivers/phy/eswin/Kconfig
>  create mode 100644 drivers/phy/eswin/Makefile
>  create mode 100644 drivers/phy/eswin/phy-eic7700-sata.c
> 
> -- 
> 2.25.1
-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
