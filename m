Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11620C282DE
	for <linux-phy@archiver.kernel.org>; Sun, 16 Mar 2025 16:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lXC0+xLK0NcqCuYqktSn+BUUEweN8NM6TsxKxSFGa9o=; b=KqbIlljDd+xgXO
	xRg99xFXxThRcntZbsyWU1+y74sMYIDLZESsUahI9Pm7QUOy3K8/KOFeEjIxNHg/RhUsY/4TDkAQQ
	d9EQf7BspmPAGOCdD1x4EHhpntuUe0hZPRorqjVyKsKloVcEaVdCRO7rjkmQZA1HbczrI3EdqQLG2
	LM/TwAG/R81qcBJpi+l4GqQakXh/phoT9ZSgGB/fTDxPex97QprlrBj7AKKSVFOVj/Egx+vmClsJI
	zzcuT0hDXVrl00CNIO4+ejEebyBOOKoN2cLo7lMf1mnyzugezPgZqIv+mpGEn9ZggVRKHjwLGSp+f
	X/wf0idXa4MQ1wyjFmvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttr1V-00000000NFg-40Nt;
	Sun, 16 Mar 2025 16:39:37 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttr1U-00000000NFG-0FKN
	for linux-phy@lists.infradead.org;
	Sun, 16 Mar 2025 16:39:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 00C9DA48B60;
	Sun, 16 Mar 2025 16:34:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D8A2C4CEDD;
	Sun, 16 Mar 2025 16:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742143174;
	bh=J92TEHW24c/R5Wwa3xtdoSx/C9s8UM9zcXueocCi9bQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zibse1rdfvQyI7r9oNvGhtr5i5bqOEQ/ZVhgD2QCmZIPdsVRB/3T9EGPDev1EgAB3
	 NX4SUq+nV71kZi6AqYasGvb/WhHvf7720Maqhkkvqk9DGILCR/ffjePeNKnseYWWG7
	 npLzVYIAzh6okW4xxpGXkcRTkVJI0R7Mm5MTpb8uSnwQ6IL4dREBQPYmnQ9xrigk8d
	 m+9bMdhoihpTxEQ1dtBs47XVMDnEGNCgilJJNP6OiK7B9lTI54C61Y3lAwUqe9Your
	 iQ70mYEsXi/FI79uFj8ryqEBp73J3Kl7qozaJWL1n+hy8wtYsBZfOqH5ZrgiMR13A2
	 bPQxE3LN+gqIA==
Date: Sun, 16 Mar 2025 22:09:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Cc: "H. Nikolaus Schaller" <hns@goldelico.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Zhou Yanjie <zhouyanjie@wanyeetech.com>,
	linux-phy@lists.infradead.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
	kernel@pyra-handheld.com, linux-mips@vger.kernel.org
Subject: Re: [PATCH RESEND] phy: ingenic: fix unbalanced regulator_disable()
 warning
Message-ID: <Z9b+wSNdyE1hN+cn@vaman>
References: <96da5fe557f3b2501447358895bd78decc4633ef.1735482146.git.hns@goldelico.com>
 <ab308c135c3ea5e050bbfb0b94a832c8d52d5380.camel@crapouillou.net>
 <AF49A39E-0534-4ADC-8E50-606A636D167A@goldelico.com>
 <c67e2ecbcdf481cddcc4c93716e38049e53d3e93.camel@crapouillou.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c67e2ecbcdf481cddcc4c93716e38049e53d3e93.camel@crapouillou.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250316_093936_188937_F6351298 
X-CRM114-Status: UNSURE (   5.19  )
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

On 14-03-25, 11:33, Paul Cercueil wrote:
> Vinod, can you take this?

I dont seem to have this in my queue, can you pls post it again

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
