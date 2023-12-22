Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1702C41535
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 10:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCmuer3SwRl8MXhiwkEuxNn5kF2gpw8DX5xhXp+PFMA=; b=zXuoFRduVtJvyy
	YLHGudb+bpiauHwqbuq31DvFaJnXm6WC7rAVnI9G0+v2Qygod88RCFQnZVFp2ZWvH0Fo23dOux/6K
	WsxBmbtf12tDS+ZjBqT7uHFC0qz3YMPYpHoFSaI82t3/VcM8elnNAmWO72brHESy32HGvtigXE1Ic
	ep95Rlnk8v5BnYJXyyFhK+Jjq2UEeSM1ZLrFYcUx5fdHjWKrTp2QwQEDV4GabohZYJJZjgBmL8cWw
	Gv/tq2OSXwkK3VEmSTy2Q5N4ciDoR79Fe6fE0lDBnxwe3qeVomYLgezhQC7BuX8fzJTyTFqWK7t/Y
	VrS/89sNAckqm93bShXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcVL-005VyO-1s;
	Fri, 22 Dec 2023 10:11:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcVJ-005Vxe-28
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 10:11:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D4FF661B75;
	Fri, 22 Dec 2023 10:11:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBB61C433C8;
	Fri, 22 Dec 2023 10:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703239900;
	bh=DJZ4k1+5+NhXW5nZgyHjVM9hVDuYw0xK75a9tiO1atE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=n9RzoUvVcZrjnxzjCQSal+Zs9I4wNPrs+z4VIADy7FtrYOggK9pgfqq9ndUrcD2wA
	 mKfWWbgm6ZAL4Ock8aTbBS8MYnQpf6bNhVKZIgiDtIlcw1cbxRiW9ef7soSYIIjDIX
	 QXwq8NsPJPRH+KRRS4NNLDClEtB36lxZBiYmLTSiVG622rSksk7brBFW/Hu3E1LRD8
	 5Fk29k8lKM9FgNh3zdqw6WUEabQx3OvRMFCNuRZEbeW8Hiz3hevNhheDlQzWhO4ZzC
	 WgQAMezwFCbett1dOT0iCOYIpFdxRRpuiwBQwrXSKWfghrKg67J6caJXdkJLarEkY5
	 R15Z6VPxBxL5g==
Message-ID: <9d8abd54-b497-467e-b473-13df39c13a76@kernel.org>
Date: Fri, 22 Dec 2023 12:11:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] phy: cadence-torrent: Add USXGMII(156.25MHz) +
 SGMII/QSGMII(100MHz) multilink config for TI J7200
Content-Language: en-US
To: Swapnil Jakhade <sjakhade@cadence.com>, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: mparab@cadence.com, s-vadapalli@ti.com
References: <20231221162051.2131202-1-sjakhade@cadence.com>
 <20231221162051.2131202-6-sjakhade@cadence.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20231221162051.2131202-6-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_021141_742829_EB60D7B8 
X-CRM114-Status: UNSURE (   6.06  )
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



On 21/12/2023 18:20, Swapnil Jakhade wrote:
> Add a separate compatible and registers map table for TI J7200.
> TI J7200 uses Torrent SD0805 version which is a special version
> derived from Torrent SD0801 with some differences in register
> configurations.
> 
> Add register sequences for USXGMII(156.25MHz) + SGMII/QSGMII(100MHz)
> multilink config for TI J7200. USXGMII uses PLL0 and SGMII/QSGMII
> uses PLL1.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
