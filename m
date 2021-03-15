Return-Path: <SRS0=7zeO=IN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DDCC433DB
	for <linux-phy@archiver.kernel.org>; Mon, 15 Mar 2021 10:31:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C5B764E89
	for <linux-phy@archiver.kernel.org>; Mon, 15 Mar 2021 10:31:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1C5B764E89
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D7lKXZ7p8gSJXFZt4zbGkqnCwOBYMpXBtvH30rrmUl0=; b=eEceD5pDwBZfdDnYSd+89daIK
	BYmT7avjU8Pd1wKTKkRw8gEaaILoOZfLcwczDOLOTe+b+XtG4hvWgdfaVlSX/eC8MfTNyldox5xMB
	DA/duVvROEWMHensObSpGlVUi11syQL6+JGk1tRZyFkbF21kiTrbbhsrl8r8bxnPRRRlTdpxm8sPk
	uffuxlRZxaM6SDKP9QW7pouz0HVB1+VH9a8xh8UvVn7JDJmZeiggKF6vQB587ZCRXvRTZoJ5vYi2g
	IXxugy/MAYfhttMl5pQVstokOBGZVvtgulRDwaEJUNil4hUx0VAVwiPsHftXQoWZ/CCZz8qZp7m4l
	PPyoI8p7w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLkVI-00FWkZ-6H; Mon, 15 Mar 2021 10:31:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLkVC-00FWir-3m
 for linux-phy@lists.infradead.org; Mon, 15 Mar 2021 10:31:13 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C4F2A60295;
 Mon, 15 Mar 2021 10:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615804268;
 bh=+7Gzy2h60gtU8dKM6TRRNJoI2wPB8/yaqzkEGaQ5Jok=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UVOQJANYIhWZb/KKDsj/HXdBmLQJsCokhyQDGoRLHzB8O2gTkBcOE/hb9HlaJwD30
 5bgW1vKWUNlSE+qN7p9xEQz0+JeTowLVlv4/REFrg9EKdm0VD47dUS9NYe1vI/GyMa
 NUDjtH2aTVD0VyAe0sUC0UpEb9ojBC5X02nln7W0jb6C63xi/go77+BhwTek1JxnY4
 4tcu18mSnr+EaQ9jQ1YqX6eS0/7G6uT5pD33ydF2JPmAbkhASVzERLsX8WjaGeYkml
 dlNr9Gi9grE996J1xKQNBJF4oi3omx1ayyvNRps+a5If1NlQoeY305cyOgwOU45pLw
 gHxPXjZV0QHrQ==
Date: Mon, 15 Mar 2021 16:01:04 +0530
From: Vinod Koul <vkoul@kernel.org>
To: 'Wei Yongjun <weiyongjun1@huawei.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Cercueil <paul@crapouillou.net>,
 =?utf-8?B?5ZGo55Cw5p2wIChaaG91IFlhbmppZSk=?= <zhouyanjie@wanyeetech.com>,
 =?utf-8?B?5ryG6bmP5oyvIChRaSBQZW5nemhlbik=?= <aric.pzqi@ingenic.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, Hulk Robot <hulkci@huawei.com>
Subject: Re: [PATCH -next] phy: ingenic: Fix a typo in ingenic_usb_phy_probe()
Message-ID: <YE83aN32WhcS7nuo@vkoul-mobl>
References: <20210305034933.3240914-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305034933.3240914-1-weiyongjun1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_103110_440037_2DE46AAF 
X-CRM114-Status: UNSURE (   5.93  )
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

On 05-03-21, 03:49, 'Wei Yongjun wrote:
> From: Wei Yongjun <weiyongjun1@huawei.com>
> 
> Fix the return value check typo which testing the wrong variable
> in ingenic_usb_phy_probe().

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
