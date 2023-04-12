Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C99CC7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 16:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2C9DV8LKHdWjTCA4BFaLb3sTPj995/YHYE+yK/YuzI=; b=yAJwG8s4pbJDOb
	ghIN2ISJj6KnMfdbkQNCkZt6vbFagvtObwQj8AtBfrpdsHy7BjY6mAC0+nFJ4GefcJipx1XOwWIB+
	7q3dKA/K12uYYdirOw/kz0tViSJFdOf7JmE5XWPbZ3R7aMbPBpcYyAfyIKrXxn2vMLBARhHLt2uNA
	DpGhghduPGWtscRBo7bbwHbg5yDY2rUOQgOPr5xGUIk9WmfaIw12bGOqTk8zwOAw0iIoS44IrSYNW
	H3z30zfHFO+/BmWoXp6US2TJxh3l77yw4fYV7/N29igBVO89GJSWYy+9cqHOoQTodtoHKAV1Otr7+
	FOBpuuLMyAUzVqzwDjeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdSb-003pMc-0g;
	Wed, 12 Apr 2023 16:36:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdSZ-003pMF-0F
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 16:36:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9944C6371C;
	Wed, 12 Apr 2023 16:36:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D840C433EF;
	Wed, 12 Apr 2023 16:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681317398;
	bh=vQSQ8z70vQR5lakDmdXjIBl1mV7WOpHuztNaPFlvceI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mf1LYuoR0qZgWebKg2fAO7YEJgB87gF9PwGfrJS4Lk6f8LuvisN/CXDbvjwpht2Tm
	 BSV7Wf2mGWWs8ZZYuac2GCMhT+a40gY/Vb8zsKWFdd0orKn91U8LE8p+sz+7llgFba
	 7NDoLOZwGd7uTmQ+83ScuVs3/ivSxB0XZXH0hD9IKD66M+dxZwryXExwDcKDkEWFEj
	 Ayy7LfzOEyM18N2iTxapwmb8V4sU8SmPehZuVixNqlb6Rk/aqBea1hgEe8zsxth4rG
	 pOFWFui38yMyrCNhDG2Q8j/RJX4Iyq4PzkUiSicQqFXG+41PXg3Kgw4aGIY+wVIyhH
	 vnICFXF3pjIUA==
Date: Wed, 12 Apr 2023 22:06:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: kishon@kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, mparab@cadence.com, rogerq@kernel.org,
	s-vadapalli@ti.com
Subject: Re: [PATCH v2] phy: cadence: Sierra: Add PCIe + SGMII PHY multilink
 configuration
Message-ID: <ZDbeEUKIZ7kJPm3k@matsya>
References: <20230403085644.10187-1-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230403085644.10187-1-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_093639_148579_0613E020 
X-CRM114-Status: UNSURE (   6.32  )
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

On 03-04-23, 10:56, Swapnil Jakhade wrote:
> Add register sequences for PCIe + SGMII PHY multilink configuration.
> This has been validated on TI J7 platforms.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
