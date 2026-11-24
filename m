Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1386C606A326
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 11:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3jdHKJ0S;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=S5lkZfm+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jYABQ8RI5VGu9Ajr3SkjPsq6RoxXABYXPvaXavMMSEs=; b=3jdHKJ0S6BbF8n3kyUtJifr/T0
	ukoJFKuUbZ31VAgeQtjcGgqTlKFnb78/hjQVRJ+NYs84LOkV1fewnUG+XUOHARvk4nWSXlgKscsjJ
	8A1Am0zG5ujSURIdBJvYuozN6sZDAGzzWfhPyxpAMJIxkeUyhgXXR0fJRYFKQDvNpCTSYjhUcROTJ
	8g96CYTyGflAqS4PI7analNxkJKSOsLnBBPeuPBWI9bvG8yQ8IJ1F0alewHpzb4Rd/2uA0CFu7hOh
	+Fyzr3+nUUOqx8i4Qao9Vd+uxBN7uBdRCuPJqobwLhj3IT488OzD8qp6QPlPCqvHeI8+xPD5YWNY+
	Vhwq4+aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVoFj-00000006Hd6-2Azd;
	Tue, 24 Nov 2026 10:59:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVoFh-00000006Hd0-3kPc
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 10:59:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 09E2340821;
	Tue, 24 Nov 2026 10:59:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F1BD1F000C0;
	Tue, 24 Nov 2026 10:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795517995;
	bh=cF/6djvTEEZ8CwvBNurkZV9cycUNuzsQhk1QXHo3YTE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=S5lkZfm+MFeGOIpNjApOliu/J4XeoGuotqSW8wK/f7ig32L8dv3OhCmRrlU6jVo2b
	 U9IaMqlp2njS6zluMCSHW58wHBZq9UF+PZusz+GfV1WtBYwTMQDxIWiI3DeDHNQTl+
	 jrlMVuM/nBJ1lu/K37kbL4Q+CWfKqDAM5CyMnYt55k2yMjHyoZ/SNDkaW8g+OUxKFP
	 8KLRQ0f8HQVbAaXcf6t+nJGAB5Rdr06S2PN8EkLY6iuYqkPku2UaUGoTDUwramM8Xg
	 pfGvshmv1XsOvMaKul6u9Ke9pFmxfAUomnHM78JU83/452AoIrnEKYZFq1LL+wnNsO
	 O0hIIYTkg4vqQ==
Date: Tue, 24 Nov 2026 16:29:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: ti: Convert to subsys_platform_driver()
Message-ID: <awVuJ2z1N1ZTGFCy@parshuram>
References: <20261104113337.1634199-1-peng.fan@oss.nxp.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261104113337.1634199-1-peng.fan@oss.nxp.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 04-11-26, 19:33, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Replace the open-coded subsys_initcall()/module_exit() platform driver
> registration with subsys_platform_driver().

You should have split by driver. I have picked similar change from Brian

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
