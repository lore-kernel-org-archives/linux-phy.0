Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 351F0C54EBE
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jan 2023 07:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHNxGmKEo+Al5BEEe7/36DOATwZW+xiWbheRqm9zNnE=; b=Eyo047Ru6sqbTX
	nE9Aene0njyPpcZgzCiGD6M9t0SyWwbUg9BUlrgL9A6LOCqo+L3FkXmDo5wqZA6p3+s+85ewvKHUX
	pyQNfnTaRKBPJ3F2bC4zF3G0jauxjPsL2Cl0usgPSS3gtvV682+gANLH6EXeaqB5ThGTfZ/HzfnzK
	xNT1FuyXkC4HzlerQhS8At0ICEMUy7+gEwxKavHQSevf31oMPWzu9XmP62WVDG5bNOuv+dkhqwWZY
	D7HSZ4m110TB1mMisj9iRmghdZmtLNIPjbt3BsjJepGTD01idx8Fjy0zaD6714MpVMmpsLpCirGQW
	M9vzL1dkqplcMRCmCp0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFVxG-00ABYX-6W; Wed, 11 Jan 2023 07:55:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFVx5-00ABVO-MI
	for linux-phy@lists.infradead.org; Wed, 11 Jan 2023 07:55:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3BE6A61AAD;
	Wed, 11 Jan 2023 07:55:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CBB1C433EF;
	Wed, 11 Jan 2023 07:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673423713;
	bh=QAUoBiQrPpx40h8K8YX98H2l7tJgXLzCYCWBOQxuwHs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S/sbZEoIIfe8OMX+uc9bAsmau3zzvJkl4U7TOUCJn/TcPHLMKksGgy0SAS3aV45Nw
	 e3opo/DfNFnCE++RrAhGXZRLfcc9RyiDNQfPK6nqIo+GhZiI28+HkqKoCgOxHN7WQE
	 OvMIJbtQuF5Tk4BdpXzKO6dA6pLwZr4/WRMnOxqWHegFesYAroBSHNkmI3i/V2WDzy
	 X5YjdTE26vf7pTT9ipqVwfoSADKj8yYOPLPJCg3p5VwOL+qSZ6xEQF/HphE0qbIpgf
	 Dm3Bz/rMwQBlCq1G4YyZV21IyCGnnUXTkd3sO/jBasHJ1UpGzGmguN+6idog4yfFqM
	 l5BG4J8hmdFzA==
Date: Wed, 11 Jan 2023 13:25:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] phy: ti: fix Kconfig warning and operator precedence
Message-ID: <Y75rXeTK7m/uAE9I@matsya>
References: <20230110062529.22668-1-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230110062529.22668-1-rdunlap@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_235515_784930_160932DD 
X-CRM114-Status: UNSURE (   8.86  )
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

On 09-01-23, 22:25, Randy Dunlap wrote:
> Fix Kconfig depends operator precedence to prevent a Kconfig warning:
> 
> WARNING: unmet direct dependencies detected for MUX_MMIO
>   Depends on [n]: MULTIPLEXER [=m] && OF [=n]
>   Selected by [m]:
>   - PHY_AM654_SERDES [=m] && (OF [=n] && ARCH_K3 || COMPILE_TEST [=y]) && COMMON_CLK [=y]
> 
> Fixes: 71e2f5c5c224 ("phy: ti: Add a new SERDES driver for TI's AM654x SoC")
> Fixes: 091876cc355d ("phy: ti: j721e-wiz: Add support for WIZ module present in TI J721E SoC")
> 

Please no blank line here

Applied, after fixing this

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
