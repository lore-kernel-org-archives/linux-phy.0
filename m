Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88E46C48260
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 08:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibmUZvJ6yY17DLf1rkHQI78lGwNysxoTNXnuY/fXSbk=; b=2597Kg1wdZwPIL
	4lDO2KmuiR23e8icCRZ1Ly77W0dfcpPi92yp3zP1gTag11tRBrfh2oAh7va0qGJ/BRMgfY5nm7DGr
	s0OWEgO+6upw/T6xG5A/XhXzfbuUyVwaTgghTWmYVGpVBl8KSCZ8EBL/QQBC6ITY6JDJAq0C6No1e
	DlW0mWBwQyTviLTwwEtcHCrBUQMbHtojXQm+jqhu81FTECHrA/pYQClYbUsmCK7smswjeFqhhZca6
	e+xvaYNydzddc4LSsP1lUAntYYSwEl8LPodPCTM6mnXyEye+U7OmwtRHwI6aR3ANoN7aeJx1RCPQ2
	3kh6l9ZF4omrRpyIhgww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rat8a-00000001Rwi-12dD;
	Fri, 16 Feb 2024 08:00:00 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rat8V-00000001RvT-3Vp9;
	Fri, 16 Feb 2024 07:59:57 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id F28A5C0006;
	Fri, 16 Feb 2024 07:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708070391;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1hUYFR1qvUKlxyuPUPNfEnuK9T+rqDJlWXvdCBwvEVg=;
	b=lo+p/qBQMhPwepXZCYApgvlfDkOGsNpT+Pg8es5xwAOU+wWyXLhmUg5dZfc6wF7Q6H/ek8
	aAGXOM2eE2CfgBAWb5ap2l6fvCLgUgAqH+OkpY3GFhgJWqXAbBgLeZsj2YVNU8tVzeuweY
	wcNY+uaQu3esHlFqNhwVcl8RzO/E9LGl6WVA6d/I7NwXnITuv3757IoMjcUsatikA7D2kD
	WnmVYAnPXvem+lm5GHe3eQS549Bx1IOzsk/CXIfyt1xl5Hu3NzoFQQxHzLRuw9PHIsZqzE
	UCy2/ADPKQj9DTCvWyq7WDQGOQSkABK4Q18akdWYKrZirdqYJoyCA+KC+p47lg==
Message-ID: <78add459-a96a-46c6-83ff-e2657d4d3db4@bootlin.com>
Date: Fri, 16 Feb 2024 08:59:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/18] pinctrl: pinctrl-single: remove dead code in
 suspend() and resume() callbacks
To: Andy Shevchenko <andy@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Tony Lindgren <tony@atomide.com>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti
 <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com,
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com
References: <20240102-j7200-pcie-s2r-v3-0-5c2e4a3fac1f@bootlin.com>
 <20240102-j7200-pcie-s2r-v3-2-5c2e4a3fac1f@bootlin.com>
 <Zc4tedAhqYX3bQcw@smile.fi.intel.com>
Content-Language: en-US
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <Zc4tedAhqYX3bQcw@smile.fi.intel.com>
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_235956_051108_858CDF52 
X-CRM114-Status: GOOD (  13.35  )
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

On 2/15/24 16:27, Andy Shevchenko wrote:
> On Thu, Feb 15, 2024 at 04:17:47PM +0100, Thomas Richard wrote:
>> No need to check the pointer returned by platform_get_drvdata(), as
>> platform_set_drvdata() is called during the probe.
> 
> This patch should go _after_ the next one, otherwise the commit message doesn't
> tell full story and the code change bring a potential regression.
> 

Hello Andy,

I'm ok to move this patch after the next one.
But for my understanding, could you explain me why changing the order is
important in this case ?

Regards,

-- 
Thomas Richard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
