Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7605C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 06:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+DM9JeV+U2FDIpL72e19o5QcmGATPElstoi/PJ0ADM=; b=vreaGxA9TAjlPU
	XKSkm5JV5CRTe4axbbOYeZKXZRFL/v3xhbj7+xY0Hxgd9vkfvup4XO8mq8FyeRAgkr5OGuRN486Jm
	wA04+So9o19Ki7h4kgUnyb4At3fVQsCvuWYu+3wfQvR/3DtLBQiLCyPmY755auqp9JfKJrrRtX5fl
	HeeRolv62SfjqxirVrNsYOaF1dhAShWMRPiU/UyYUvUADJInU7Vi/U4TzqOkdQNfjwlaWgJXX4lSo
	kRL/TdUZrlq4mFB9DcA/6FhL9bQszkoUwV30zPC4XpCa9+LGmBhjW18kigMtVjfI9E3/NbDVZU4pC
	smZlVp3dwmTS194IJwcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWjL-000yZZ-WB; Tue, 20 Sep 2022 06:27:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWjI-000yXB-J4; Tue, 20 Sep 2022 06:27:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9360F61BC8;
	Tue, 20 Sep 2022 06:27:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8256BC433D7;
	Tue, 20 Sep 2022 06:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663655255;
	bh=zjOUv3LS517QVkLxaT4DZu+YfQ+ybtkWyzqAmzENBEM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZMCZ1XC2a2gvYsmlu+sXO8TvocVJPpTXSXk4TGLfZS/vQowgUCZmJGvyS5Jq3t7IK
	 nPWV4xhRbRjhtQJX6Un3FM50DL2g/HZRkQIifQtApSO537cC5VFs7v+rJPt69TpNwc
	 RFGkW5HWNT1qh5ID8lzEvB4pO1FKtPA3ae7kCV5XcGngZtBoFwB/mrs6RObJQ1Rh8m
	 KSmhJno1ZJEqa2/lZJEdYjQJ2YCqZOoIm9rmtPVMMVZ2XJdQJf2UBVsxHQ+oYaWBSx
	 MiyqAvI9UoLLe9JhW/bcHwXH4xxdnU/cZUwG/ljZ2E48WHIlEXiMB+zNqKY/4q10OO
	 Mu8ZfNXHykfXg==
Date: Tue, 20 Sep 2022 11:57:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yang Yingliang <yangyingliang@huawei.com>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
	shawn.lin@rock-chips.com, kishon@ti.com
Subject: Re: [PATCH -next] phy: rockchip-snps-pcie3: Use
 devm_platform_get_and_ioremap_resource()
Message-ID: <YyldU61PCW1+s4N8@matsya>
References: <20220914133728.3781160-1-yangyingliang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220914133728.3781160-1-yangyingliang@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_232736_761834_2F4FB3D6 
X-CRM114-Status: UNSURE (   6.89  )
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

On 14-09-22, 21:37, Yang Yingliang wrote:
> Use devm_platform_get_and_ioremap_resource() to simplify
> code.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
