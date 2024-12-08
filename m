Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E722E77180
	for <linux-phy@archiver.kernel.org>; Sun,  8 Dec 2024 17:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jy72JQWIHsGh0iLLHLpKRj5dbOE493sYymcRKdCWyD8=; b=wrCNi+s9PwhIFI
	RXr49JQKWcVLPuF+nGdIz0Ym+JlLl04NFx5ZyU1FPNfQZJF8Ee2fSWXwYquSKrOhTtuGHBx7Xwlfy
	lXNSG8BLqaNTpik4u3o+rjDH/utT93CV7Y5b6KoneuPIx8Z8txO0Twn2A9scPSDKFVZ2JjXDw7kF4
	uTmHVCWqxjkseYo3lKUz4iBI1SLMvQSLgLY9XK7/AFzkC5fIyiyjnHOmQqRSIKzNA6V8+kRVlfCnW
	JW7BH5ScMWSIfqRsdCYlCI5tZZNR2HANZyeSgTBc6+O6PDSlfVPN3X4msknqYVimIpjwBNJeznQMI
	FEWFiYDi49fMMpyOEhew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKlD-00000005cmI-1aqF;
	Sun, 08 Dec 2024 17:07:59 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKh1-00000005byh-0QCY
	for linux-phy@lists.infradead.org;
	Sun, 08 Dec 2024 17:03:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id BA025A40C61;
	Sun,  8 Dec 2024 17:01:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3809C4CED2;
	Sun,  8 Dec 2024 17:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733677418;
	bh=wZtQx4LbWSSY/m3QW/D7okTuQMfDvyrzXVuuIlkX6kQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=VRzEtejjJbPuAp3DzWKUycxKEnDUvtHOiWF11H6Hnbuy7JLDq3l1iONkEpirH+4l+
	 ozzK1mxXBwz77NTxbvhbFLE+AtdDrKW2rtuLyW10tm7tlHP651JOUQeydy4Ulj1XUN
	 w2thzoclFYyZYFDyTQ91HAYqzGpJfX4zzhMHiApFwtUUefWWJdenyf3gTPGjwNz3Lh
	 oQV6G2r1WqaFLGs3caQjw8Pq3yc5zVZQxhJiVx/NyLu7uoQO+hf/L+faQDTjX3Chnn
	 pf9rsG80cou41mbwlG5crZW3n56fYMA1iQObiJSTJ3jaXfhgcn61EaF3Y8rSwM0K9E
	 dVwdyd5RfLvTQ==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>
In-Reply-To: <20241031104401.2454179-1-andriy.shevchenko@linux.intel.com>
References: <20241031104401.2454179-1-andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v1 1/1] phy: HiSilicon: Don't use "proxy" headers
Message-Id: <173367741643.1042266.13809719892889387610.b4-ty@kernel.org>
Date: Sun, 08 Dec 2024 22:33:36 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_090339_207293_6B29D277 
X-CRM114-Status: UNSURE (   2.79  )
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


On Thu, 31 Oct 2024 12:44:01 +0200, Andy Shevchenko wrote:
> Update header inclusions to follow IWYU (Include What You Use)
> principle.
> 
> 

Applied, thanks!

[1/1] phy: HiSilicon: Don't use "proxy" headers
      commit: 80738c3f1e1b7bd664481d73d64e42e139c7002d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
