Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02C1FC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 11 Apr 2022 17:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5PQAGeickoIDyK6yheRfZds4VldLR3Pe63ZKuyGmO8=; b=xqlnGaohUH4PcO
	CLQD0eaILM0jRrmabfTRxPbnYbl07uxFkwWN4sdhkHOm7ioLqCDCsdzls1lujeXCDOWTejzQgCfeK
	QVomNN8httfPYLGIoQa/vUkT1TJzyypeSGVTTJpNzELtHJkE57H0DU0lGINfYXNAs/6ZxPJOGYSS1
	F2cZRbMMqssAfhAaopxP0Ac2/60EXCFnlSLvyST+dTYF4JvlEx3Wfimg741g/FJ+quPelX8s+3CK9
	iXtyHQ/Ba5zGyBZdQk1bBLjU/uvEAEyZOJZyFw3hHIZDmog7FkWz0A6vuOl/FoUtoBW1N697GYjGn
	u04+ROmV5vwFcVfvIJ8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndxZY-009qF5-DB; Mon, 11 Apr 2022 17:11:28 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndxZV-009qEJ-DH
 for linux-phy@lists.infradead.org; Mon, 11 Apr 2022 17:11:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C8880B81721;
 Mon, 11 Apr 2022 17:11:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93574C385A4;
 Mon, 11 Apr 2022 17:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649697082;
 bh=BGuusMW9bZqM7HMRmScsvZjSdzwjV66gHPQDF4gT+DQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RiL1v+69Vj7tbmHgC+V8jgyLjIMNxK6BzfU/Q3q0vnJlqzsmOUIauCmOisBavqfsc
 b5dejDy6IdmrkkWGLOHalSqRYxMN0o01UryQhL5dsSscAjc5Iz9NXoNNX4t/FQjLiq
 /alTY47ZIvZxgTQhw6otZbQbl0Od4gtOmmj1luvnzrlYAGXO5Rg8Kkcl0GEJ8Mo7kI
 1alwN/MSk0FSo4RWxhh+AJ2DwSzGLRJKFpJ9kzXQZ2m/MbJx8P7yprlnvvyerKzPoD
 WvwWFlnECADcjQifGw/NlUFwedgeJMRwA+QhJ53JmywqzZ4/II1Mzrw25MgOkSGaVL
 Ae6cpWn3n1zHg==
Date: Mon, 11 Apr 2022 22:41:17 +0530
From: Vinod Koul <vkoul@kernel.org>
To: cgel.zte@gmail.com
Cc: kishon@ti.com, lv.ruyi@zte.com.cn, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Zeal Robot <zealci@zte.com.cn>
Subject: Re: [PATCH] phy: ti: Fix missing of_node_put in ti_pipe3_get_sysctrl()
Message-ID: <YlRhNZI8Fy5I2E6i@matsya>
References: <20220408095617.2495234-1-lv.ruyi@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220408095617.2495234-1-lv.ruyi@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_101125_634990_7E22CA54 
X-CRM114-Status: UNSURE (   6.67  )
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

On 08-04-22, 09:56, cgel.zte@gmail.com wrote:
> From: Lv Ruyi <lv.ruyi@zte.com.cn>
> 
> of_parse_phandle() returns node pointer with refcount incremented, use
> of_node_put() on it to decrease refcount when done.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
