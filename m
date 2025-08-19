Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 196D3CA0EEB
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 11:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjqXquVsj4F9kXMzbq39pNxNk5xSXuFfseSs5lzmKb4=; b=kguNR8h9ER4rCo
	3hG970lDsapirr6n6Hl/FTPM836MeXiHFnQaJq3dlj+P20GskEJFl1wzLSXdAJwzRdfd7NGJLYSiu
	splWv1niaPJmTWJ4R1YvVHHCzn5IheW3l7OnHlOKIpZnhSVUX98nJuNXD23akh0ayXgHwvISSN/uq
	RMJucbDYhrNOv39qxH4SOKTMFIzle+VQtLBeElCBMQstlnocZ74/UL1HMhSD91qiFLBja46qod8Cw
	IkUfy46dApRy64yFcY4sUIz222Z/wdU/omXOPlVkyDimEVuNBEy0CxXHocZOxifzx5KTagby+JQAk
	EGqhBWeWr+wFGapQZKXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoKcm-0000000AIUe-3beH;
	Tue, 19 Aug 2025 11:35:32 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoIun-0000000A12I-1G2C
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 09:46:03 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 308BF4E40BD9;
	Tue, 19 Aug 2025 09:45:55 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id F3BA060697;
	Tue, 19 Aug 2025 09:45:54 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6D1CB1C22D747;
	Tue, 19 Aug 2025 11:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1755596754; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=V/Oq678BArHS/pkn3z/1AG2tX/0VWyD29OgrHSZ5KYs=;
	b=ky3nvWSvMoX2c+pvIhTj+cu1ov2JfLwOCNQzdenjwhDzyP15XnEafVUzBDGclQe7UiRLBF
	Lx0kJ9pOIEUf2aZoP10qr3Y6vADaSF2KMjB6p7sI3LKdie9W5CYg20qkZEr/QRJDjKqelp
	sSo4m4PyebziLqf2RZKOfFNuGVa74ZaXOsdlV8CqMV9N9BQ3mxl2I8WE0d+w5VdaXFu9nv
	KFbnOyin5ZSHH4ncKfo24m2iHalyUbot7UvVqS+BqnoTszYBculjmAAbLM9CWs5AEHvmUC
	orXR4REnEQLGDydkvqhTtHdKYYpkjjaMSxHGr/B5HKKfIsg48EeGlZc7p4sfGQ==
Message-ID: <6d664b4b-080f-442e-bb7e-4d220a16ccf4@bootlin.com>
Date: Tue, 19 Aug 2025 11:45:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] phy: ti: gmii-sel: Always write the RGMII ID setting
To: Michael Walle <mwalle@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Siddharth Vadapalli <s-vadapalli@ti.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Andrew Lunn <andrew@lunn.ch>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, nm@ti.com,
 vigneshr@ti.com
References: <20250819065622.1019537-1-mwalle@kernel.org>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <20250819065622.1019537-1-mwalle@kernel.org>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_024601_475394_FAB7E219 
X-CRM114-Status: UNSURE (   9.18  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 19/08/2025 08:56, Michael Walle wrote:
> Some SoCs are just validated with the TX delay enabled. With commit
> ca13b249f291 ("net: ethernet: ti: am65-cpsw: fixup PHY mode for fixed
> RGMII TX delay"), the network driver will patch the delay setting on the
> fly assuming that the TX delay setting is fixed. In reality, the TX
> delay is configurable and just skipped in the documentation. There are
> bootloaders, which will disable the TX delay and this will lead to a
> transmit path which doesn't add any delays at all.
> Fix that by always writing the RGMII_ID setting and report an error for
> unsupported RGMII delay modes.
>
> This is safe to do and shouldn't break any boards in mainline because
> the fixed delay is only introduced for gmii-sel compatibles which are
> used together with the am65-cpsw-nuss driver and also contains the
> commit above.
>
> Fixes: ca13b249f291 ("net: ethernet: ti: am65-cpsw: fixup PHY mode for fixed RGMII TX delay")
> Signed-off-by: Michael Walle <mwalle@kernel.org>

Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Maxime


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
