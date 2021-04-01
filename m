Return-Path: <SRS0=2YxO=I6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58A4C433B4
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 06:46:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 779C760234
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 06:46:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 779C760234
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XoE+IrmlDF43jcsgbo0RGsqZq48aYQy/ujUpQaF4GIU=; b=Uh7Olqb3is0lcrF1Fe/tIf66f
	//XLKcjB9OXreUCDEPys/hSrXV/e/YmH5ALTRRcYMkhY/ZaFr1n1PycdAhlLzPf3XKwGQFWaVpzeL
	BaffmYKOKEFVYkmAeNf6DA0TYEbcaLyAgsCFaOFinmk+JdOEUZVEsp8o7F6ZQDkZhzdaXrit2cV4N
	fTG4mJm58JHxkSskXA1tVyoENBXbMtI0Tqv3XZ67iioq/uYDD0qnqgA83z/vq0XjBzwFQxIeTU8Wl
	WF0H57J7k0QqWfjUaZmn5txmxm1r4F4aNeX9x+14d+cazdFknCVPTDdP175NDpOajeG7v+NlhIhos
	K641hLUVQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRr5e-008iMx-Td; Thu, 01 Apr 2021 06:46:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRr5a-008iKG-KT
 for linux-phy@lists.infradead.org; Thu, 01 Apr 2021 06:46:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 57A4B6108B;
 Thu,  1 Apr 2021 06:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617259557;
 bh=9WxRsuqGsMLrz2QAdI6WKjRm9njx2yQF6Q4XYdF1FhA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O+7Yd9ixEfC+GTnBth/nNcC8D5r+aqXemtUbb3mKnE+FeTC35PGHt3Op3eLzCjCld
 94khm4D8cDwBFu/LpLFJIKI9wAQFp43QIttAjn7C1AOdOJcMPNyOrqbX1w4Uj1D1aw
 xD4qHy//7+hsKhV9zkiY+3LtNlH5npnWv5H+bx7ZOGoLUrDRy0Odw6q0ijUEtuODj7
 9W30W7aVWsY+eJum9iaeqXhw+HK8+qW06m+6uqc3p9of2EI5MnC6AFTf5qn9XKyg31
 mTHXXOqN5H8nwDlKKPxNajcgtljWMy4xhxmNu8Wwm726OkyPJwxYMPOnm5I6Mb1NHs
 ITvTR/0TcVNfA==
Date: Thu, 1 Apr 2021 12:15:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v8 10/13] phy: tegra: xusb: Tegra210 host mode VBUS control
Message-ID: <YGVsIWep5kyhXtpP@vkoul-mobl.Dlink>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
 <20210325164057.793954-11-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325164057.793954-11-thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_074559_005710_9996532B 
X-CRM114-Status: UNSURE (   5.17  )
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

On 25-03-21, 17:40, Thierry Reding wrote:
> From: JC Kuo <jckuo@nvidia.com>
> 
> To support XUSB host controller ELPG, this commit moves VBUS control
> .phy_power_on()/.phy_power_off() to .phy_init()/.phy_exit().
> When XUSB host controller enters ELPG, host driver invokes
> .phy_power_off(), VBUS should remain ON so that USB devices will not
> disconnect. VBUS can be turned OFF when host driver invokes
> .phy_exit() which indicates disabling a USB port.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
