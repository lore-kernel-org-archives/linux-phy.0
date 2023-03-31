Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17231C6FD18
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 07:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9SBkSZUyrWJwHV7y00mmnHbY+kcm2UZGlxrxlAu2Rg=; b=ayTG65pW46Aclo
	49qd8RUCCxeYtY5glBSHmqYZ2B0H5ENGhjyaTmmGY12kLgKNGxTvFJQnEYgA1iNymKyJi2yLcJedY
	G+ROGfQK6sZMu8VBWiXfqF3Pin5+zsFxzLxc2Dt1Fq/XwlQiYcPEBjtltf2CApodtv25g5fQrkjam
	G6R4L8OnIA4xDUAwRoa1S1WGehZ4lTnCNXk6+pBeveeAatogmnse83N087y3Ix1WVBe4zRQwfNKDl
	NNQOGhqXrqWrQieGrQtaULK2ONymJl7s/yYxrDQfWJOg0knin4o1NRukLLnjxfTYTNrxkDdD6klTU
	NwoKRgCeKwQ5J8ranUfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi9SV-006Cnt-2B;
	Fri, 31 Mar 2023 07:46:03 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi9SA-006Ci2-1w;
	Fri, 31 Mar 2023 07:45:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 37DABB82A70;
	Fri, 31 Mar 2023 07:45:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B93DC433EF;
	Fri, 31 Mar 2023 07:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680248738;
	bh=taMOt2Lov9rC9wpDUTDWzToA4PfDhmbtIVAXI2i96Ic=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FuLEiqjaRr490CXNwsFErE3yuBFxsWciBgGaYYoECVLftMYwMMO2ruOfHprtcmCsk
	 eUqwKrz7qhr5S1OyWJHZB0gLvvERrDlvf04ZpWo83rwHBpqgvpVIALxrolbGH1KFGn
	 MsDOYe4VZIWKTVjbOzgr4C2sNaKjoMoeVnmnANCzoCkFheMQ4owoXLKDF2krsdYOYV
	 nTNlH49KesfOI7wS3iJoUUzAhQp8KQh8wrdHKph5a8STu+sVyRoNQiL0ODJ9e9Y81h
	 M86mpYYx8VyBRMaSjlxXTFDnbjpQP7OeZAo0FaByk53XupbHTD7l2n0oP22+K8+JV/
	 kwDqfCtESoxwQ==
Message-ID: <38143d66-ad7b-9d13-5280-126bd1f077a4@kernel.org>
Date: Fri, 31 Mar 2023 10:45:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] phy: ti: gmii-sel: Enable USXGMII mode for J784S4
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, vkoul@kernel.org,
 kishon@kernel.org
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, srk@ti.com
References: <20230331062521.529005-1-s-vadapalli@ti.com>
 <20230331062521.529005-3-s-vadapalli@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230331062521.529005-3-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_004542_784231_68DB866B 
X-CRM114-Status: UNSURE (   7.56  )
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



On 31/03/2023 09:25, Siddharth Vadapalli wrote:
> TI's J784S4 SoC supports USXGMII mode with the CPSW9G instance's MAC
> ports 1 and 2. Add USXGMII mode to the extra_modes member of J784S4's
> SoC data.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
