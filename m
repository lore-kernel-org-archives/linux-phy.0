Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF145C43602
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-Id:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BKf/PQD2Obq03O9/PLrKsHT5PY6ck6PCg86OPcWAKW4=; b=INcXXL2j5t0zYrGmSLaraQ9s0j
	2bxfKg4mePu1tjJroCtuCWRPM4KAKlFRUErXanME06On/+vhkxFHGYwDNPEBxzWPLL5Nn39kkujb2
	2Ry2ei+GdyKCDonNnC9E5cvOaue+7zJ7M9wwSAZ8KAoVB8R/9HVY03eETb+0Yjf4SRfrJK2fDrfvY
	aOQzaSqMRzSULpbI4723Ux4+HKiTEvySeEs1nYxQbZv6Ih2MIzlg7qkDC2jnIBxYifZywh0/bSbzi
	Mm4+zlXcHnT+/LFOWV0+XbDCT0UWYWMCM9oDuqQvd9dzwCQFiKPZrDIyh/TJ7XHLwGIZAMZMRV2Yv
	yBEXKhgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYZN-0000000HAtd-1BmC;
	Tue, 30 Jun 2026 13:32:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYZL-0000000HAt5-2SB3
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:32:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DB8B6601D6;
	Tue, 30 Jun 2026 13:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57C131F00A3D;
	Tue, 30 Jun 2026 13:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782826326;
	bh=aAbhDqaQViSWt5zPHXRyWbq4kmRvJjFvKbDf+ER8pGU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject;
	b=BObgqxSHtZ4QBBwZ+136wjftYDNlYOvNkz6bMTv9WcUUwUUDui2oz9EKJ1JZV7VuZ
	 6+bHtttpVWOdrxRL1EFLUSX0zuNXvgSlsricBirzn8YlALXcEn+iTCw0O5BQFGJz0/
	 RRaB/KclcZcGF7X4zAYLdSl9YZBxcjPkOdZywSZHvaYkw6ppG05TAEq11zdAL2QjoB
	 o+NyjOydHUZsiSkmGWkLp1Ovwi1707zE5X8yq0qwra9Xr2dJiN2CUzy5Mv/tqrRvwu
	 ZaykK3WRoGo3LtlJOsu5AsayQJFuPKCINoKkoVqJajtlNebS2boiu5U/HOlbupLMrc
	 aWeJbjdMlUwJQ==
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfauth.phl.internal (Postfix) with ESMTP id 8E606F4006E;
	Tue, 30 Jun 2026 09:32:05 -0400 (EDT)
Received: from phl-imap-05 ([10.202.2.95])
  by phl-compute-04.internal (MEProxy); Tue, 30 Jun 2026 09:32:05 -0400
X-ME-Sender: <xms:VcVDaiTy67sUgiiMVwbnvSJW7dz81qPgmKehCtu9u7dSbc0BxQ4cUQ>
    <xme:VcVDailFwUshIt4D21UAYBSWuQUCPNXqNVbwaLWPzku1SITlZB3W2BDpqchwRz5RH
    XGXtqy5IO7AZX-LTqX8__ARdk1Rq8KlnDa6NZrwpk5Qe95k9G7z4A>
X-ME-Proxy-Cause: dmFkZTEFV+HFyaGWkSwmmP37fRNIJzOiJU0gOhdvRHXHzEj9ColG3iSY6sxN82L5mGmRTd
    GK4+Ba7tPm6jaARbMINE0Ahv0mgMxjRdNhB/PFN07g/l2wD2e7LRH7zqiKhi3N6Q11FbPc
    4KbRY3KT9rG0Ia76lhBfKLrN9/wW9jf48a+zV6Ebffwep7tK7gJlIU/YHYmB3x1yf1rUIl
    c0Au3kPIat//0oWBA5cTFXUZdqt2+ijbNM44y1IMJlniizXCeBFVOWCM6HiX6y/a9KlKCO
    Lhj3Nb2s8whmySBkw56D9DxEVXYW0+FxGaT4jCzGzbS6qH8AS3y+LwN8MUpqNVWPkCyGeB
    /mpKa0Zg/II+94VAX4O//BklqNhL/TPkObW7hgXebLwKgbCq9uzXdSlpubGH70nqblYRcC
    CJmMdb8CUCmvWAcFKSpXDIGTuIgR4fEnkhINytmT5VXSAuN3x8ugNUXjak8viJez0VAM30
    5tvyN3ef1e/2sL71wGnPqPAm5Z1e9+dWdv9Cl+i+3zvLzL8A4aHxBbrwUyY3tMvaiKCyr/
    hyK77uC6ibKRuqvc0tYY1nM1kENhB6x9K6W2DAh8fRfrUbNyqf2+d7aKpQWMU9yPHQQxf1
    IwWR+7D4R81v3bbX6l0jfdXHlzGYz5zpy73o9C3qNWUQZkElCvGDjXFZKTXQ
X-ME-Proxy: <xmx:VcVDakPMoD5epYrKYdSxxjThmQJBEqNYdkkP1J2lb_Au7abo22TWqA>
    <xmx:VcVDav7fS5fvf5XWizsDEUkZVdtb1iVtxNm8vj8EXyGrJpzuIKZx6Q>
    <xmx:VcVDavjCNNocTzQpsLfPzTuGPquTOelhiCxAaEzWRX4A3FzXQ_mbvQ>
    <xmx:VcVDaseJ4y2hiPw4DlfSWPsklYLUQ216SrhhpsjTw43VDMY1OZ8HKQ>
    <xmx:VcVDavxvJVZJT1Td9vOpUIcbw3-J1Wjze6ir4__nq00bb0XUcYiCVWwu>
Feedback-ID: i36794607:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 6E6371820082; Tue, 30 Jun 2026 09:32:05 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: APtE7QNyC7sF
Date: Tue, 30 Jun 2026 15:31:45 +0200
From: "Arnd Bergmann" <arnd@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: linux-sunxi@lists.linux.dev,
 "Dmitry Torokhov" <dmitry.torokhov@gmail.com>,
 "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Vladimir Oltean" <olteanv@gmail.com>, "Vinod Koul" <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-input@vger.kernel.org
Message-Id: <6114033d-ff33-4551-8af1-c82bae0e03bf@app.fastmail.com>
In-Reply-To: <20260630132838.113F91F00A3A@smtp.kernel.org>
References: <20260629132633.1300009-1-arnd@kernel.org>
 <20260629132633.1300009-14-arnd@kernel.org>
 <20260630132838.113F91F00A3A@smtp.kernel.org>
Subject: Re: [PATCH 13/13] gpiolib: remove linux/gpio.h
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

On Tue, Jun 30, 2026, at 15:28, sashiko-bot@kernel.org wrote:
>>  - When this work is complete (will require some of the items in the
>> -  following ongoing work as well) we can delete the old global
>> -  numberspace accessors from <linux/gpio.h> and eventually delete
>> -  <linux/gpio.h> altogether.
>> +  following ongoing work as well) we can delete <linux/gpio/lagacy.h>.
>                                                                 ^^^^^^^^
> [Severity: Low]
> This isn't a bug, but there is a typo here (lagacy.h instead of legacy.h).

Fixed now for v2.

>> -#ifdef CONFIG_GPIOLIB_LEGACY
>> -#include <linux/gpio/legacy.h>
>> -#endif /* CONFIG_GPIOLIB_LEGACY */
>> -
>> -#endif /* __LINUX_GPIO_H */
>
> [Severity: Low]
> Does removing this header break the build for remaining unconverted legacy
> GPIO consumers?

There are a few more patches in flight that all have to be applied
before this one.

     Arnd

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
