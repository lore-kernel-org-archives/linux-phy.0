Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77192C433F5
	for <linux-phy@archiver.kernel.org>; Tue,  3 May 2022 04:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOHn0YRSiyY0BXYpgI0B9x5PoP6UKFcIiBGC+UGTGMU=; b=cRSY/GGWNQ0KRm
	sgWchXO7dQcJg3zOiARJEvyP843K9u66lU/GdgwedQob2f/iDLwTSva+KV31FBNQRFZxMgu9m8Iz0
	bvVJEKn7SJzU6dj1sg25BwrSdlaLYc/kqzRka1BxU1ZfINamKp6ymgEhBsSuFTx6+ZqRouRpJiGvG
	7pftafc9DxcUo2Sl3BMRPHyh7PEfzyM5d06GDPxHl918ke3xeDty1NtLxDstWhoUhoMH/FlVS/DHm
	OTYD7d0qYrnCIjiwOoMmoiR9e0ZzLz9Horx+CzRR0P1sMQ7YimDWWsW0DXWKqab+SMYxg07qxR1me
	TemEdnG5gQq29KkbRfoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlkMp-003fr9-M7; Tue, 03 May 2022 04:42:31 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlkMh-003fnu-3h
 for linux-phy@lists.infradead.org; Tue, 03 May 2022 04:42:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 159B0CE1D9E;
 Tue,  3 May 2022 04:42:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 951D7C385A9;
 Tue,  3 May 2022 04:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651552935;
 bh=u9fYNrygbkpprqV6eu/t6XuhVbfYeFBJ+xDghRxaGi0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VmsRjzvEPKjcA8PzCqOGBOAoRGRrGd97jANpbZ+MGsou/tGrt7rjS34H6IufKx6Z8
 S9CIjnX6enCjz04qxIMIjYLw9yTdLldjRk1PG0Lbppsmihn28qWeHsiEDzTkp5+T94
 JVmQoznXp0APHJXy7fK+y0bhCSMgfEyMJhRbRiuaETstJ+ufSAsXTFmU52Tnmaqoe4
 jaf52g14YiTM5e1boySQeWCcvVj47sAn3r0Ho0RzQtMs7mNOq1e3q0D5AM87q6Gd1w
 v6qvCbXbT0o1SI/QaQBy/OY+denC8F3gO8R2ApT/d4T4J8Nq/fTRteCs+oakRFG+MB
 ANC6LmqYTEZ0A==
Date: Tue, 3 May 2022 10:12:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] phy: qcom-qmp: pipe clock fixes
Message-ID: <YnCyojDt2N+Enhs2@matsya>
References: <20220502133130.4125-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220502133130.4125-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_214223_378846_D02031ED 
X-CRM114-Status: UNSURE (   9.55  )
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

On 02-05-22, 15:31, Johan Hovold wrote:
> This series fixes a pipe clock imbalance on PHY power-on failures and
> renames some error labels in order to improve readability and avoid
> future bugs in the same category.
> 
> Both patches can be applied for -next.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
