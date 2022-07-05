Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D0B2C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 07:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2iuAwA2pukEqa8EnkzVjC2+ai7kfSnKiysPKCQG4Dw=; b=E+sFCPgxGkvUjm
	JBVADXunM1++FP51WQKMArfSoVPpSK0aL/LZnwWvztiqA55xL27cXD7N3gWA6Fpk4cGXS0pb4Y/Q4
	PT+aWGo3Zy0yp/+EKUgJq2B554cKDZ3yV9VAQtqBiOyMFYMC60EweaGSyscLQPZdzR54z6sOXkPQe
	vORAgjyLecJxc87PYO+k7nc33+xsZyUm+AVtgwDJXRBLa/LCojrcpYsLVLmHeSsuDOs6NDMfD9jeT
	oyGFArwWx8jdVGDPzvSUaY6PZOPOKhRcYDqVSk99NUlxcOYGTDMZJhHO8B0YnmLTfyqmFAZ707ErS
	s8C3hlYR2V3KKUM3p6GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cjt-00FMqC-JP; Tue, 05 Jul 2022 07:12:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cjq-00FMnE-GZ
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 07:12:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D99D861589;
	Tue,  5 Jul 2022 07:12:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67B01C341C7;
	Tue,  5 Jul 2022 07:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657005169;
	bh=jecdmO07RSUAbMoa7+ZQbRfH07PxhO+rt6YpHbFgc9Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D3pp3WGDqfye6d51EI4wCI+SDPBOfnPLX9gA7eqrUEWIinoFh2oXK8pGRFkz/xTRf
	 JkQ0CbS/5GqosbOEJK/BTEt6JtP3++D4v4XFVg9EQ5q5dtYdL8i1I1Y29tlk/ReifA
	 5MjpURFxrf0AyQa9H1IvlgjaaUh+7Nn+1/LvncY+Z4K83kyvjKkDAQWVmeJ9fyc95o
	 SRiFrOpZvUpNThuatSBGzDYOYYVfypoKsof5R6F5U8jNIOqrl94YPONQosUmH0p15c
	 W0/Z1rx4EwnRuQ/UQpY9TPaEGOP1PDW2MtABEnBHh8ums6xqWAtG3vSOv4nJVq+98Q
	 DohKCURq6vTFQ==
Date: Tue, 5 Jul 2022 12:42:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] phy: qcom-qmp: clean up defines
Message-ID: <YsPkbAj7gYqbFOgz@matsya>
References: <20220609120338.4080-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220609120338.4080-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_001250_630206_661ADBF3 
X-CRM114-Status: UNSURE (   7.30  )
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

On 09-06-22, 14:03, Johan Hovold wrote:
> Here are some trivial cleanups of the QMP defines for issues found while
> adding support for SC8280XP.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
