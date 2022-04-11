Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39554C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 11 Apr 2022 18:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yesCpq4+s8IFH7l5qFpNeA/3OmYytIkrj6x7FESyfUM=; b=CW98AkWv7ldUou
	FDx39WmQXnwJArdP7H1cyrFqeX4q+CICd3IqlaUd+abDNvifBSrCZmMujKjZszt3AQz51DucTqO5/
	ytgs7znGmaMe/WLyGLNeRsUHOEeiIElYh9JV2NtAERUEzHtOd3WY3hhwDvprz3hBSmGCOvv4xGHZv
	zHjQpp4f1oKFApJGoUWJwFSc+LScqKPlmnYcy/G2aXmHh3LHi/6tL/5qYiDmHHm6bEDdj1c7GXb5W
	5+yDnfHaZ2MTbXk+BROa8irXUDEisAQ9oNF7WjG6oBGfJ0QdxtjK4SIk0S15tmCv6YsNEDCM0oQhl
	AXlo+atSL0ADYZ+fxHJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndyOz-009yzY-Ku; Mon, 11 Apr 2022 18:04:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndyOw-009yzF-Uh
 for linux-phy@lists.infradead.org; Mon, 11 Apr 2022 18:04:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5028B60FBD;
 Mon, 11 Apr 2022 18:04:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 275CEC385A4;
 Mon, 11 Apr 2022 18:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649700273;
 bh=MuQab/xaawBX0nLDyPNsiNOXlr4TZ0C1l+8XGJX/Rzk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AMWzoBKSQFwn5Xn+Jo9g5l8lpG/gy5gTwOoLzQnS34q7A5xpbxHssn9jFccKe6Zfh
 QxWkxp3QcgstyPxAmpblD2IVLfvLjOPCMehsLYCld6BjnfLm/i9Oahdks1S8ca0DPT
 s2KpeXE9p4/wiDNBOsFwzjRUP36Vdevb4hPEz0/RB38ZBKrJ6QFgLzo6FDlJbJI4xL
 dZj+0q7zLT7BsVlGqjZQ1e6xC3cPu4gHJQ+t0wlDHzL8ihsgruWyAlAoJ7gGe2jLly
 2pUd3K4Ye5piIXxsnOZgApkiUZ9ZIQsb1xAafiEk0I8Glog+Byk9zDhC1QOZHVPbxa
 DDBFYu8QTxCdQ==
Date: Mon, 11 Apr 2022 23:34:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/6] phy: qcom-qmp: Add SM6350 UFS PHY support
Message-ID: <YlRtra5AZAw2NWMT@matsya>
References: <20220321133318.99406-1-luca.weiss@fairphone.com>
 <20220321133318.99406-4-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220321133318.99406-4-luca.weiss@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_110435_040365_2244F5BE 
X-CRM114-Status: UNSURE (   7.03  )
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

On 21-03-22, 14:33, Luca Weiss wrote:
> The SM6350 UFS PHY is compatible with the one from SDM845. Add a
> compatible for that.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
