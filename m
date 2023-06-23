Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 751F1C001B0
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jun 2023 08:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/PgRCp8WbrBWpwP2d3gzGvW8C8fnYDK3OUj4lSkWNs=; b=Q8n0qZRZj74/qy
	Gaql5hBmpKobcdQ9edbyCQYMAre8QAOS7BR3YFu+pHEukivXnS0nEtshdCpst2RQae9QIzdCpknhl
	ujDiqYHGosrmZU2nAZyYv2DTFsltD2y2zk61L5ojkLViOTturP+EVy4w0ftU5u1ugbLQ0vAoVTH3H
	ejiUCsjpSTP26B1NcEH9wdAjDcO3snAFlaOFfWLVnRCCeOS4og28eoKlRFbZWA8l6uTxlsP5KjKt/
	EfblEQFLMslpzA0mse5yC0gxsVI3knXI49f8ChQg0+PEhFu88IZJd6TIuiJds1PIHJ5Xl4/OJ25d5
	Lx8lTFiInfqnx38lO0/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCbv0-002tKG-0O;
	Fri, 23 Jun 2023 08:13:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCbus-002tFN-0g
	for linux-phy@lists.infradead.org;
	Fri, 23 Jun 2023 08:13:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B8D3061998;
	Fri, 23 Jun 2023 08:13:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A0F8C433C9;
	Fri, 23 Jun 2023 08:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687507990;
	bh=9JxMqqyX53j4px3htR8RO7J/bnVstG57275XnhWBd9s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hiBlnw9pkqPZ3+YmYAGElUvLxc7bhSkjL3kYGe1LtmlNKilx4vJOlFfEsTciCwdEY
	 RvmR3fuxm3o54SnumVvId45XFJLFSxqDlMpb07zW3iplD4xYKXhZccm7uWfT3y8amp
	 96YSR/zbENNQWsDDUrL6iIH8LpTudgU0IC4ea6EP/uT7gpkK4AGr6ZASD3JPZE833L
	 6eHb8htT/T84p94lkT2Jzmos5yoGLF5u+hy2TWUw+0U/d9JTkAwwP2Xlqnjiw+k5Ru
	 iaNb1uYjZ3jz0DhnyC9yTp5cQR3OEZf2Z2hrSGyXc0C4pLLQUnWNDqDuVC2TkKaNaE
	 uYdg7esg3FmvQ==
Message-ID: <237696b2-ebda-ab84-1b70-4f6a3e8344aa@kernel.org>
Date: Fri, 23 Jun 2023 13:43:02 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 0/2] PHY: Add support for single link USXGMII in Cadence
 Torrent PHY driver
Content-Language: en-US
To: Swapnil Jakhade <sjakhade@cadence.com>, vkoul@kernel.org,
 kishon@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: mparab@cadence.com, s-vadapalli@ti.com
References: <20230530143853.26571-1-sjakhade@cadence.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230530143853.26571-1-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230623_011314_295822_ED356B38 
X-CRM114-Status: GOOD (  11.72  )
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

Hi Vinod,

On 30/05/2023 20:08, Swapnil Jakhade wrote:
> This patch series extends Torrent PHY driver functionality to support
> single link USXGMII for 156.25MHz refclk.
> It also implements key:value pair table for all settings instead
> of a 3D matrix.
> 
> The changes have been validated on TI J721E and J7200 platforms.
> 
> Roger Quadros (1):
>   phy: cadence-torrent: Use key:value pair table for all settings
> 
> Swapnil Jakhade (1):
>   phy: cadence-torrent: Add single link USXGMII configuration for
>     156.25MHz refclk
> 
>  drivers/phy/cadence/phy-cadence-torrent.c | 1732 ++++++++-------------
>  1 file changed, 632 insertions(+), 1100 deletions(-)
> 

Gentle reminder to pull this in -next. Thanks.

-- 
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
