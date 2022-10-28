Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEFBFFA3740
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 12:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50tnq59KJQCdIACMEXMkbhgcOUj1yolmepm5qFNULqI=; b=iMq+5rf1qGcuPB
	xcwHFRuYCuUGbTHZou9X47UkX3vNTguxgKqCUaEHq8lJTPt/fQo9UwFs9cmNECBlWIQ5HlDvdXRQB
	RaRdhAzj4eosNFt4x+fUbzMFYztMfO80RhlmsgKDkiBUX0IkzkPHYtEwmApfDwC6uS8Zioc6LRKvF
	T1jd3AtIrQSsJKdU6NWgWN5jYG3CWStKP00EIMtmf2qgZtegD0LTDTQ8NliO9x80m+Yy2vcYnOj3B
	Ff0RJekQYiYvyIIG9CJYz4pr7qF0YH83xv1luJEQCcdpP3KWBFGNYlKTCvVpFej0gSgBeOkVghjLu
	V5e9SPdhc+7rn1663kOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOEB-00H4G9-AR; Fri, 28 Oct 2022 12:12:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOE8-00H4FY-Ku
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 12:12:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DBAA662813;
	Fri, 28 Oct 2022 12:12:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ED12C433C1;
	Fri, 28 Oct 2022 12:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666959163;
	bh=dDWfYoWl7qZ7zaxkIPBypox2awqiVXogm5AFCaIUe6g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YuZ8hycFeKhsDl047mwW+QXlUXjkGZx9ovC5AxOwWNVIWsu7VrKTESNPY095JDHya
	 /4N4hoznpUOJ37LWYQweI+8z62C7xnQhkDBaVAYc0NPgwQopTuRd4DHb9CMJBB+DWu
	 r9yXrtWlUlkBgdT2hrqZfLGlfVfgQ/3Tjz5cLRpe8IdiP0On+UIkhufOIQ6pRvofYN
	 btbd+cGbm5oap0Dy77vN/mLQNLnOlQgJ9dkziMgzZm/A8+HS0NgfsQYRwu2BFm/R9P
	 ilrlVdNlajRAIUyc6qZfDEtfz8Vo8gZF6Bp+7vVigv6208hnpzwuOL9H8ui0+2EziX
	 VCyu0A0W3Lu5g==
Date: Fri, 28 Oct 2022 17:42:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 00/14] phy: qcom-qmp: further prep cleanups
Message-ID: <Y1vHN5JnKMy6AN9i@matsya>
References: <20221012081241.18273-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221012081241.18273-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_051244_746010_25932759 
X-CRM114-Status: UNSURE (   7.00  )
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

On 12-10-22, 10:12, Johan Hovold wrote:
> Here's the next batch of QMP cleanups in preparation for adding support
> for SC8280XP and its four-lane PCIe PHYs.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
