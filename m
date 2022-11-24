Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DBD1C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 24 Nov 2022 18:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IpwyGCi86pEjdHspLEyLOjDQGOnk8aTISYi7qtLGFfk=; b=E6uypuNQmAGgv0
	3KK/huEk9PlXWnPK2qq/zkBhnwMUDv4LnxflG+drPfdfDxMgAI5y0pifUfRupAiSl1MwOfUbZNiqr
	qrxtOMaddXsQkRVOEVgilJXqnDHyZOcVafjK/Z07md135RRWU+aNAJQx3ehcyShdzuzECem/BBsIH
	vFj+O1TdWpOz20hpPrlauoUZHvepU8eq497teXyMVuYzyMfmIaMpxdxb2D3BzLLVIvKsF4lRyMjVu
	lV0TYNUJZfx7rqFoNxufIJIlaYuuIgKsTnJBg3g6eMH6u0sQfIreNcNiH1zVvbYYsPDTw/Pi73ACt
	qOn38lmUZolmianwwRkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyGhl-00AnCe-Ty; Thu, 24 Nov 2022 18:12:09 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyGha-00An87-DG; Thu, 24 Nov 2022 18:11:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A573FB828AF;
	Thu, 24 Nov 2022 18:11:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCD32C433C1;
	Thu, 24 Nov 2022 18:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669313515;
	bh=2TnrP9rzyw9bDnMYxV4mvGFFJly42OlDQj1JNowzM6Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KI1d6JwEzW7qEhDAD1Cfdrw6LSUmCgD6R3tRoTpwgajnGgWeqROXHIWEGQtcytOTk
	 OS+QnpfZ2Wf5wGxaOYOQu/SHg0mrTwzUTgPY/Xcv7ztUYoLx93TxVpXwTPaG//E02V
	 1tWNZJzcYzzzgD4VGer+d6L0G/P/BIh/AjoE8sXYLjasEsZa9J5kVzbycCzgKqqcKB
	 p+la6DFTd5reyji8vPWay0r0DbbP8Z0r4107BM95oZ+75Ba3rgZTu0pDCydhqaqcQg
	 T5HN3VRd/cfWHSOtC7nxlJ7LbCHkD2SZrTMR2g1/kxKnr5zUkCslbytV7zvFaeTbii
	 kbLU5bSGx+10w==
Date: Thu, 24 Nov 2022 23:41:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Matt Ranostay <mranostay@ti.com>
Cc: r-gunasekaran@ti.com, rogerq@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, vigneshr@ti.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/2] phy: ti: phy-j721e-wiz: add j721s2 support
Message-ID: <Y3+z5t2nDE87erTb@matsya>
References: <20221123032413.1193961-1-mranostay@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221123032413.1193961-1-mranostay@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_101158_608312_DB71B3B1 
X-CRM114-Status: UNSURE (   6.91  )
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

On 22-11-22, 19:24, Matt Ranostay wrote:
> Add support for j721s2 support for phy-j721e-wiz module.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
