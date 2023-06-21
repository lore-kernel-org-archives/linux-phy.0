Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98AE0EB64DC
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 12:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFnsOLrom1HuovGOOz4L9yUFvo96RqgpZOlmkPq50nU=; b=Rkj1olFBRNa7/B
	hpEFURA+o8QSqGve+9S8dqwBhopmnu0Qd0iwbXFV22KNckYy8eq12GPdTvhsq8eVpU/R5cfIJWnsC
	/fFES/R8ZA43T3B+dyGi7tLDKtP+bjvqDSerh44u+yIoDEY3MFy9LS7BYV3hpJrFpo1rGN4xzDIO3
	3EBu69738C1g10TZ5EX8xm55mONs+NiDz/RiPR2Z6nw890uBOnEL5VDIf8C3kIk3lU2NYliueqMYA
	F45GuitSBIB7OLKb/G4cJdHF64/Xc9VPHy9vCKmjYx2WzgWVKkasVBbk78/P/e904twC15PnBs1xB
	sVMqqI7iTyuO4/zHNqGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBwla-00EVkd-0g;
	Wed, 21 Jun 2023 12:16:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBwlX-00EVk2-1C
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 12:16:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B89DB61542;
	Wed, 21 Jun 2023 12:16:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48464C433C0;
	Wed, 21 Jun 2023 12:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687349810;
	bh=JXIwDofI9GYjGLRPPWn170gzYnLu+hqTNCc91usYlLk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q+FnuV9F8FOm/SkPSh0F54HASVB8c9jUgRJImpENhLbUsof3A6+47KnQObClkV0YY
	 fmlH3urfSg28mFX/47z54gj8eP1ZEf6r29k8Sl5r8ZEHuJKuGh+O9clZtJJbc8Kg1j
	 690lcbQ5FFp8YPxKivkkyOwmeiigRv0uiww9PKXYw17liacOqBeJ66Vuzx4gvSvcRq
	 dyvgHIt1BKpaWbZtHZXBxBbn1ByxYdayNmK6gg6GQxOB7mg6FnGgrw0TPzKeKRd1Am
	 RUjoACbQBT/BZAyhMcN7sNiZXQikaQjtJcZJoPjTO3T6u25f/j4SAYHqEBFwohj94o
	 RlUDWCyX5LrlA==
Date: Wed, 21 Jun 2023 17:46:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: qmp-combo: fix Display Port PHY configuration
 for SM8550
Message-ID: <ZJLqLcf/hDmgx5RF@matsya>
References: <20230601-topic-sm8550-upstream-dp-phy-init-fix-v1-1-4e9da9f97991@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230601-topic-sm8550-upstream-dp-phy-init-fix-v1-1-4e9da9f97991@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_051651_450328_820E8B34 
X-CRM114-Status: UNSURE (   6.01  )
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

On 01-06-23, 11:39, Neil Armstrong wrote:
> The SM8550 PHY also uses a different offset for the CMN_STATUS reg,
> use the right one for the v6 Display Port configuration.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
