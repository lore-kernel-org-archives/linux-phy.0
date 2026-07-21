Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2557EC44515
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 01:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pPVQJx0/BNNTDBiENVfqJYg/DeEuhz0c1gSE3mcnVO4=; b=DY1g7Gz0KHu5cB
	3xXCgtN8nAIK0RH2M+s+ALMrH2DwFfwWej1970eQbgzxEZMs6pgYkTCxuDwn18j1+7+pjGOcQru69
	ivQnv6gVoG+31FnsknOMPF3WCPrtYS6ofDSxRWwScjlum/pMJLC8u34BJd2oqvrB0kQV902FswKMC
	AiRJ7HsGDppu7jjoSACbb+1ByGMsORwNTPJ5eeX4VcffEqJCATty8/o259OV9lIK52SmyTdv+u8Rz
	3uxMJrSXH2o03UItCBZwRTdjBb+cAtZzh3uta/XikmYV0a8sT4F2KmFhVzkKMcVCN4jUMqPpIxg5A
	3Oa3LNx+M1okwk3k35FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlza8-00000008Cl8-2RDw;
	Tue, 21 Jul 2026 01:47:40 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlza5-00000008Cki-1525
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 01:47:38 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-6a397db52c1so6177475eaf.2
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 18:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784598455; x=1785203255; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=HMQ9N+jyY0eH4bDxG9zZ5tT9jrYZj4X2Z+uNBeHLTC8=;
        b=iW++0cA/qqZTZ81Qv2CoFjIROoCJxFfb+GplAZWinI7JWtO7JVjlogteqZg2XZvX8o
         6zCYOMRYNrRVjNu6NVkvcGrox2KJMtuWFYPLVzDnex0tM92pKVhBnKNQgdnFGud2bFR/
         8RjszWwVymD7BMQwG85MerMARHnVNubRrxjVofCasShYHpDQ6iyf+LIGW7efwfqSEKdO
         kPCHfXrrB+yiACzJyO5Ao+pxbV/VKgilacAP16g0PjNDeYngzVv+4Kp0wM+5ICxQ39u+
         cP/7gzAeZZ5pvN9cUM4hgh1PLCZopMKvcJNlvlPeOXvpYUHpDKg0BTt+Cc4TU1mTrQXP
         xbhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784598455; x=1785203255;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HMQ9N+jyY0eH4bDxG9zZ5tT9jrYZj4X2Z+uNBeHLTC8=;
        b=anpmGHes/+g017CHVIZaqOUoBSjZxNVLhlMj7CNgSnH8Pe4kFzvigAdO6Xr12Bt+sg
         73ImsrHOibeWkzF1CcV44NpLhgzY5X1y+z8t/ne75Fzz1iX2nhhS8fC2zJgXwyHMEkB6
         AK+BKT4kMQUVjPw9ruKrildD9VDCTljiBWsEGQ3vswvF9hOzvGESjrlsuI3voacUYbhc
         /yDM+U/wlngJrTzLW+Q8HnAZX+AIOTObbq30PtKqP18959P27NnLayopMqbWTUrrHnJ0
         NWQIVdQEQ5OVJnWJ8zL1CYjg8gappFj6wsNouzs9GWCmOQacFM1gO6Eag4oEVlqUYosg
         gt/g==
X-Gm-Message-State: AOJu0YxQu22t37BQMzIKgov+Ax7ydPUVviyaAfLmpdKQdfw2IwAaJfs3
	9ZEANWjUilpYHt6gDMlvoOi8hnf4aGcfwgvD5TNJUcEe3reXxxC03BTJ
X-Gm-Gg: AfdE7ckim9OvL/4KRAgsaNNJDRqrBC6ta2kv9MOiiuOVl60E1jU8qp6F0B9TCwLmOPv
	d98kKnKiFnaFZhVLbq2vdzYEd/lVXyFe8RAXNJbFPYr2g3b4oHM1tDdNjesJIg/MEbm0yZrd04z
	CV9Myr7Pp81HNkz1OYwmtI0YZwRIn3flROp9xaQcN2wc+OaIrhLSYhVrPGC+4EOV7NEJ1WPeBbI
	HV68TpRaoy+/Q5R1/8TNwuvPltzsnPSZkQ2HFEvGia34m1yNBBcEKwAVv6pwqo3Of456VwSSjwE
	y7naWMhrRMJPObuvRN0WMb5evUHAcCIcOkwb1Ony1SDA827wx9SQCcE6zObWw6Y3Gok6T/H/x16
	tq5K9cNjo1TVNSY5ZhsoODQe0xAn5em+mTd6+0WJBWrNepcucpYVSS8jbMaWYpYdEqg/Yz6krLs
	gsyxtNTXo=
X-Received: by 2002:a05:6820:615:b0:6a3:e519:8fd3 with SMTP id 006d021491bc7-6a5366b4268mr9143103eaf.16.1784598455472;
        Mon, 20 Jul 2026 18:47:35 -0700 (PDT)
Received: from gmail.com ([108.243.219.47])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4568e6a91eesm10504628fac.13.2026.07.20.18.47.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 18:47:35 -0700 (PDT)
Date: Mon, 20 Jul 2026 20:47:33 -0500
From: Akash Sukhavasi <akash.sukhavasi@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: HiSilicon: Fix error handling in
 hi3670_pcie_allclk_ctrl()
Message-ID: <al7LfrvG_8P9NpFv@gmail.com>
References: <20260708-b4-hi3670-v1-1-f9236f3e585c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260708-b4-hi3670-v1-1-f9236f3e585c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_184737_321481_1238ABA8 
X-CRM114-Status: UNSURE (   7.66  )
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

On Wed, Jul 08, 2026 at 04:31:00PM -0500, Akash Sukhavasi wrote:
> When hi3670_pcie_pll_ctrl() fails, hi3670_pcie_allclk_ctrl() returns
> -EINVAL directly, skipping the close_clocks cleanup path. This leaves
> the PLL with its power-down bit cleared.

Friendly ping on this one. Patch still applies cleanly on
phy/linux-phy.git next.

-- 
Thanks,
Akash

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
