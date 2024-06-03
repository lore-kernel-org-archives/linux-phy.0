Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05882C25B76
	for <linux-phy@archiver.kernel.org>; Mon,  3 Jun 2024 14:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phtt6fEfLQ6XfvhZVJ4F71L7R67y2Jxhrta2zyidKfw=; b=UiZRTzQth+azBJ
	uAZU6YXCamShH6nUwDyWbWHTL8pAunh+wTp2JzAPHpXNSHyOfmQtVK7oXitJ5CknIzSOSYRJ4MerH
	R/E2GTSE+ZB5DHFMO4zJCaoehUZSv2+d6DG8U8t+hJMO1fGCbv/YjVC26gYXGgAHU9RtNwgws6cdB
	OTVb1raJoPARmWDWFra+H9fbuP38n9t8zG6zRYDlaMlYWsywx6vKvJG8qZZEU0zeFPUI1HXbJzyX4
	VWwEEPE1cLMmcCOQ0CMHgq0SIejbmKUbS0ZGD4g9Ru7S7BD8dhmgrhPR6iVDkMNxtnlQ03Jmsa0qX
	nQ4ZLcPkR3opuSPIqX5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE8e9-0000000H3xJ-2iHr;
	Mon, 03 Jun 2024 14:26:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE8e5-0000000H3vY-426p
	for linux-phy@lists.infradead.org;
	Mon, 03 Jun 2024 14:26:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 48C2C60EAA;
	Mon,  3 Jun 2024 14:26:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3332C4AF0A;
	Mon,  3 Jun 2024 14:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717424805;
	bh=XbqgDvXBz98fW3K9TL4sNj0U9UCGx6HAtAQovA5h28s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ufmipIw6HeUA1zK8bogPfLmZ8Fh6eSCqboINCFI5xx/hRTF1XqchAidWd73FPqCeT
	 7XeYctIoXT21+dZ4f46/3686ykWa9Nz/oOTmZ/PMf59xMFTmOBpIg1+o8X1XYElmIO
	 0PjbT8YlRm9uLwGk4i6i91VMFxeWK7KHrrSdc3r1RQXFqGWGWq0mpZBlCyGCQAjqPz
	 74S3QYgDLvWkb93LlC0qNz9+EEwRkljUOQnEyuWCdeBUckMxTXy1rNiIZBaZ+Mq4Vj
	 JjlQBc2RNn2nZRCmPzhmc9wKhv2aBruDB0J0aHUYbw/OWT927cCGRMt38Wrd4PIqCO
	 DVldp0g8Pt+1g==
From: Vinod Koul <vkoul@kernel.org>
To: jack.zhu@starfivetech.com, changhuang.liang@starfivetech.com, 
 linux@treblig.org
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240527205937.165325-1-linux@treblig.org>
References: <20240527205937.165325-1-linux@treblig.org>
Subject: Re: [PATCH] phy: starfive: remove unused struct 'regval'
Message-Id: <171742480328.106728.1799790392907893940.b4-ty@kernel.org>
Date: Mon, 03 Jun 2024 19:56:43 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_072646_124118_9B468D49 
X-CRM114-Status: UNSURE (   4.17  )
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


On Mon, 27 May 2024 21:59:37 +0100, linux@treblig.org wrote:
> 'regval' is unused since the original
> commit f8aa660841bc ("phy: starfive: Add mipi dphy rx support").
> 
> Remove it.
> 
> 

Applied, thanks!

[1/1] phy: starfive: remove unused struct 'regval'
      commit: 9d3799c3e807ab5777cda6ae48ebc127b83bc8b0

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
