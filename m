Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59FB6C7618A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 12:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BYxE57RInloSABsEJF3O9FByYvRiXbtVFu4VBjpeSk4=; b=MP/roUOdNw3Buc
	6zwuuscw0yupI1CTgVF1nl4XIjRGSZUWXPVPkdpxe8OgPR6DukR4iB3t25/l9WiBygk5AQRS9AFZo
	Zd8uQ+kEiSQDsFVjefwz2Rq5u9Wa89Nhj/Ua1Ykb4MKMMvn8zLfVU1sONlwOxvY7hM/dRAQeg5fFv
	wGBLQabu/VLaMEOHWsWxhNnjtueB6wSAVSp1njOFA8FWQp+Q7ABd2zzBPv3JpTDA3a2DNjnVdRqou
	fxy69F7F70+Uat19Ss+9jTOn9QdGGsqco3p1ICARjSr/5rIpWVIltKvR+K36VKJjMLmubAchdbx7S
	mVQmTUuE4+NFdFcw7qZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peEct-008y87-03;
	Mon, 20 Mar 2023 12:28:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peEcq-008y7X-0A;
	Mon, 20 Mar 2023 12:28:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 52D056147A;
	Mon, 20 Mar 2023 12:28:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DFEFC433EF;
	Mon, 20 Mar 2023 12:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679315310;
	bh=yUkGfrDzv/jv1co34aVR1AP5xTMAmn01gRsBLr4S8GQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CL/1HMM/X04RYvUGj7lqPfybLbi9BWzEw8B2gFbNCkFKw9nZ0I3X7sIa9ZfhERq1j
	 o890phEUyQ/TknkCIuqfVxgzuHhhx5NZsGw52VVJCy7OnC9EoE/4Lmu4VPVoxR9xUv
	 tKqhzzYKS6fh0xHBt4zd9XsmrRv/k9a6Y92tyjY2/WbBYl+d7N03CRcP4HJX7wJxWa
	 uaGk+Xygx9qclppNZqqlTNSY7esbxbMte/dtOLqBpMHWdkPvoS13+CJs44T4R6v4FS
	 0Rms5pYLzo+B8FuVCUz6GaCK7Qpe223UHEUstCmx02yHnYsCm7F7jqFxcLCRDA+NO0
	 jbm/yB2bry3xA==
Date: Mon, 20 Mar 2023 17:58:26 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Alain Volmat <avolmat@me.com>
Cc: Patrice Chotard <patrice.chotard@foss.st.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: st: miphy28lp: use _poll_timeout functions for waits
Message-ID: <ZBhRal1CmLs6mIA3@matsya>
References: <20230210224309.98452-1-avolmat@me.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230210224309.98452-1-avolmat@me.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_052832_131551_500E2CE5 
X-CRM114-Status: UNSURE (   6.55  )
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

On 10-02-23, 23:43, Alain Volmat wrote:
> This commit introduces _poll_timeout functions usage instead of
> wait loops waiting for a status bit.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
