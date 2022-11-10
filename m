Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85B1CC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 07:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRDBeUHc1DRbxQU3zK071B24q26eXCorsbuOTh4shH8=; b=yssTCE6DAZCEht
	DKNqMr45OQjRqtLu11W6h/Q3KPgEQEJNvaJE0Fo2nN+Jfja70e2gsKZCG4tiaAblM5S0ellbgLBXz
	sNh28bQQBjVSXaUGkM9wZTEvk2opcvPNHbG0dGJG+zIiRIgwHOrcNphtXYvliHhndWpggjcEQn2gZ
	j3smp62RKiFL1BHzi3IRrC14bRqsIWey2Daqu/u9Q4qDJ1JL4sMOdFq5yM9HwwWhOCuVgkVskq/Uc
	4RnRI0vv/7gUmuR1l853g65WWIhdKEzWb50g5DNwpKxRBPzwfgk3LpGFcxvgzG4vC5vsUXfNRv2ZZ
	qf9tA0OWrkplEIK6ExHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1aU-003it9-PQ; Thu, 10 Nov 2022 07:02:58 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1aT-003iqR-1x
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 07:02:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1852CB820D9;
	Thu, 10 Nov 2022 07:02:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC9EFC433C1;
	Thu, 10 Nov 2022 07:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668063773;
	bh=c67wxQgkF8UYfaGU9UNy+6DAoMPvP8sl9I7jtOccIh8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=heV0AzmQL9bI7hPyjVlD00ezQQvqmjQCP3ZS3MwciDI+ipZ/tZBD6/u3j2BljmVQx
	 eJusoL9JoyI5QkhW8CEKG58gieAQHFYLnAF8+D/4S2f3JykMqYTOXPgX/JZMGI5kpc
	 JFTL0IkJQkDo+GUGd34/MM3b164w8Ycd4LOngosrtlI5Zh+rbU8tT1PhGzlqjEXfPA
	 6I3z+bpPAcxQWkuAIqWhMz6Tnq+bIxMPJn+Y4HgrNqt9/M5tdsjwolT8VbYKjqyuAD
	 EL97KQ/UpP4ZjsW8O5K8u6u0trtvFH70MFi0U37ZENhDflXK0HQctuDRYl1rsVilvU
	 9QN1Q66fpyyvg==
Date: Thu, 10 Nov 2022 12:32:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Cc: vincent.sunplus@gmail.com, kishon@kernel.org, linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: usb: sunplus: Fix memleak in update_disc_vol()
Message-ID: <Y2yiGadmdSz/Ml3i@matsya>
References: <20221108073430.29172-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221108073430.29172-1-yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221109_230257_271308_54AD9F0D 
X-CRM114-Status: GOOD (  14.97  )
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

On 08-11-22, 15:34, YueHaibing wrote:
> 'otp_v' is allocated in nvmem_cell_read(), it should be freed
> before return.

Right!

> 
> Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
> v2: free otp_v before return
> ---
>  drivers/phy/sunplus/phy-sunplus-usb2.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
> index e827b79f6d49..62d5cb5c7c9d 100644
> --- a/drivers/phy/sunplus/phy-sunplus-usb2.c
> +++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
> @@ -105,6 +105,9 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
>  	val = (val & ~J_DISC) | set;
>  	writel(val, usbphy->phy_regs + CONFIG7);
>  
> +	if (!IS_ERR(otp_v))
> +		kfree(otp_v);

But that is not the case!

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
