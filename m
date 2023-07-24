Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 575D2C001DF
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jul 2023 10:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4i2vbIUQXV6OIRgYbRULyBWqBb0qy6kLMz5lP+debU=; b=YyfXLpbImx/+Um
	GcpQCnNCV/4qFjLqMK4/aeSrxn1J1GzuMAxDS88PhF4+RAM/GYIEg2xkOyC76m7zCx0hozEDnxlTM
	GKFWqTrkzeUrO5Wv7e5dpN9sCdOhgyDLa/Qd5bg606DVX5qamaOD4f2/XGZthvJVM9qv4f6d8VA8e
	TSYHOlzhx2qYmDI+3qoy6NJ3GQprDOjz3BxxLe3lZ/9rlY7p2esEbH3efxBpJah5Vo0AWPOVFTMSa
	yWvCl8BZzrc+EJp+rH1sUVMvpF5nyiXmG7UA8h+U8LwyUVAjuAHGT7lW/eqokAWzqhbRqFISTNMqD
	Q5Ur7WM6bywZb6ifFUkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNtES-003unQ-0E;
	Mon, 24 Jul 2023 10:56:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNtEP-003ulr-2j
	for linux-phy@lists.infradead.org;
	Mon, 24 Jul 2023 10:56:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 53E3A60FCE;
	Mon, 24 Jul 2023 10:56:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17BB5C433CB;
	Mon, 24 Jul 2023 10:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690196160;
	bh=ufAhlUwogYgyeylsGp4GMH2UHKG3zngITVIILhhHetM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=TFL5Bb0F6SqzaADWRuvCbQqvij2/ekMoVUvKFMnI4eyxg41TaUf6zGJmiaf1S30zA
	 DlDNd0J7A32EU+KwY1/0POWnLPFZRoF8RC6HcW8q2Ei6O2K62eGjYqERTrdu26uEhE
	 bR9SiHIsIA5WBVlRmlhkGjHz2os1YDCRLZFO5p9/hAvfIXay9hV/2ZsaoR02JtVIaO
	 U9wB0ZNPPPy70sdbO+BBiHFQ7b+wzIol0mHle6iepGQb4/hpB972/FiUZqF1XUi5Db
	 Qck5hy1LwNXAeq2eIn3uMbgf/6k5+MpKIgLkYyYgeGJgLqPOpXBzxn6NZWuAvLKC1Z
	 rIzSmo4TuLPlA==
From: Vinod Koul <vkoul@kernel.org>
To: Minda Chen <minda.chen@starfivetech.com>, 
 Dan Carpenter <dan.carpenter@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Roger Quadros <rogerq@kernel.org>, linux-phy@lists.infradead.org, 
 kernel-janitors@vger.kernel.org
In-Reply-To: <3cc81f2a-efd7-4ef7-ae6b-e38c91efe153@moroto.mountain>
References: <3cc81f2a-efd7-4ef7-ae6b-e38c91efe153@moroto.mountain>
Subject: Re: [PATCH] phy: starfive: fix error code in probe
Message-Id: <169019615873.466601.15170980183003390896.b4-ty@kernel.org>
Date: Mon, 24 Jul 2023 16:25:58 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_035601_925902_811A4A28 
X-CRM114-Status: UNSURE (   5.62  )
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


On Tue, 18 Jul 2023 10:02:49 +0300, Dan Carpenter wrote:
> This is using the wrong pointer, "phy->regs" vs "phy->phy".
> 
> 

Applied, thanks!

[1/1] phy: starfive: fix error code in probe
      commit: 86fe3e9f4c635cf740b31161ee35aed4a78e03f9

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
