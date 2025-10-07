Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ECF3CCA472
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 12:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ub8aNbMrIQO8rmKAXAmrrgU3MAOwSgl0dIkskefJWUE=; b=uf5tykDFJtm3km
	M6Hnz6wHqlQxTSt8zpG6EE1Yjz3x3ckYo1T6uOzJ5STXDUUZLxuRxGfcoBGxdMCKRsjJzStX0HO16
	CeCKZCCb3E+DP6NT9yTgOOB2ojgPBYpUXtYhkDNR3pS9rfkZHAdr2N5Ka71m9O1G4ToJBzoKkHl/T
	CiNY/rQowJlnwRcEzOpDd55DjuFhqxfLbsBPwO1gFHgcn98pkTRrGIn/znnqS0pbVnl8RIVAxd0wT
	Z0SSe9uRyQ/CsdP6XfrYVTf6sN/dafEwQKR6dNDV5Zh00GhyTdhIRd5tiFqUhuq+toelmuFjuvZ/O
	DpZvrhgycN5uS2ZPKiYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v66Sz-00000001xEn-1BJk;
	Tue, 07 Oct 2025 12:06:53 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v66Sx-00000001xEV-0n5Q
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 12:06:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 23F4145134;
	Tue,  7 Oct 2025 12:06:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32F3DC4CEF1;
	Tue,  7 Oct 2025 12:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759838810;
	bh=HK8+YNzdJqtVk+JdmSNsEKCE8a3KoVYY3eqqBNJgtTo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l9HnFugsgsjSf3qUmvnoQj2IC9dFLMdTNCyuLC/hdH0xpOMu58PGWx4xwGWlkafFD
	 et07c9zU6eADVC8Cm0zTzOVhnljLuj3BUKBQ+9knTULdrEdRgKvwT5RFMpSjzuL7HE
	 PZ8F9oBjuRAsQZgk1FwlJOEJ1PM2cEhYr2THdDsZwW0HLwfDWb1I+MckT1xFwDfkPo
	 zanwSU8mnynqbvZcfsprdkiuEhF0HHIZePnHCbgt9cmaWv+Lzako025zNankT3Vd2n
	 pY8csCg0sQ2wt+QOFwAUU0yHL0qexRPtlKo7CWExFnxLc8j03cm4vxrqDiay2cx3aO
	 SMsLFZwvlMr6A==
Date: Tue, 7 Oct 2025 14:06:43 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: dlemoal@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
	ningyu@eswincomputing.com, zhengyu@eswincomputing.com,
	linmin@eswincomputing.com, huangyifeng@eswincomputing.com,
	fenglin@eswincomputing.com, lianghujun@eswincomputing.com
Subject: Re: [PATCH v5 1/3] dt-bindings: ata: eswin: Document for EIC7700 SoC
 ahci
Message-ID: <aOUCU28Jjfnk2bYm@ryzen>
References: <20250930083754.15-1-luyulin@eswincomputing.com>
 <20250930084348.100-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250930084348.100-1-luyulin@eswincomputing.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_050651_254948_D54A11A2 
X-CRM114-Status: UNSURE (   6.78  )
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

On Tue, Sep 30, 2025 at 04:43:48PM +0800, Yulin Lu wrote:
> Document the SATA AHCI controller on the EIC7700 SoC platform,
> including descriptions of its hardware configurations.
> 
> Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>

I will queue up patch 1/3 once v6.18-rc1 is out.

I expect patch 2/3 and patch 3/3 to go via the phy tree.


Kind regards,
Niklas

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
