Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5633C7618A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 12:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxCOIt71sKR9Rd3E3MbfqaFgrUu156TRvHl1R1vn8qk=; b=2hJdYpmSVYjlCz
	H2Ftlkqfelia/svf4UellLlOtqt6N5bPtLS6sS207CumYmR6JrzVObZMdQZVDV1PffckGesi0Sk49
	QJ3KECmIt/p0utexpx0BxCmYyC6UqXev0bEdrryYLwcJyzjt1KvS4NXx8z3WjtVK/SHh6BtLevp2W
	FUUYYkCi6gHAAdoRXDUszQJtI11/j7CgbQhGSKwyJ9f2IcXTQE1u2z+QIQmvGE7LlNNZxIaRrsow3
	WqIsUMhkDJPgzP+wJ38vEXShJxDc2THpYy8anJfRDePZpMiDd98eaYcGgkpTRAxbMx+YhB1SQHMTa
	UxmStcEi4HRRwjMtbtKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peEe6-008yJE-1G;
	Mon, 20 Mar 2023 12:29:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peEe3-008yIo-2j
	for linux-phy@lists.infradead.org;
	Mon, 20 Mar 2023 12:29:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1FF5D614C9
	for <linux-phy@lists.infradead.org>; Mon, 20 Mar 2023 12:29:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 151FDC433EF;
	Mon, 20 Mar 2023 12:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679315386;
	bh=20B73a8+yXiuP8j8PlkPoCncKWUYMWmPVxezsB7qHsw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R5zDC6CGwSqgLluLLPP4iUC7e9Vc1LI8sV6Yn61vtSIvy5eA6KHYNSNCmRdre71oX
	 q8aQViGvuyzN6tWvJeNEZiUDZlb5wt480KownBkWT0T9DNqwzUWLY/2Ui2KxOdkyvT
	 E07Hk4KU0OrW4ZnGLzV9QIqgkmkywvrbSyII4jnotM3mfxRzOhDsoDjeEaH1y17mfO
	 JSjAoBXYELYQxqCSvvRlt35acK5WaRODo2ROza5qbGv6b3iDMar/IfWHuEYfdeostN
	 UgQ2bSRCr8WdthUQKJSuJbZVy3otLoJc38g19Azde8Tgjb1A9SXF+s/i8seP+R6+l9
	 4GAGpNo4CxumA==
Date: Mon, 20 Mar 2023 17:59:42 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mark Brown <broonie@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: xgene: Depend on ARCH_XGENE rather than plain arm64
Message-ID: <ZBhRtljJbBl2CKAj@matsya>
References: <20230221-phy-build-deps-v1-1-7091bcbd16b0@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230221-phy-build-deps-v1-1-7091bcbd16b0@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_052947_929079_5A8DABEA 
X-CRM114-Status: UNSURE (   9.19  )
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

On 06-03-23, 17:05, Mark Brown wrote:
> The X-Gene PHY driver is unlikely to be useful on a kernel without general
> X-Gene support enabled but currently only depends on arm64 rather than the
> specific platform support. Narrow the dependency to ARCH_XGENE like we do
> for other X-Gene specific drivers to ensure that users who have configured
> down the set of platforms enabled don't see the option.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
