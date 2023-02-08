Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C92E6C636D3
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 18:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UEM0q07k7wt6RWp2gMN7DPIusAwtdmnoSRIqPKJ8MVE=; b=PYp70fB7bTQ8cP
	P1LDijzOobUxhMc/ea9uk3P4nr+2e2KZJI8jAIH6w+FWNAZjj3H8azc0QUJmgxFgPtNPIZnY6eWSO
	QGrOXEdv0H1Dbbe98GmpEpoTSusXaJQ6+ZCvDKmD6scDAkGndaotSZ0yC7xlJt2SmWmjgKIVN7/nG
	WITWFnW/CwPwxtD39AyAN6YnGJ3LpwSbJzNvacsZKVwIEMDt0OmcPa+aefzu7vKGAhjUJTe5PHjaB
	SRVhsFBAMvBq6pBXOZeyjDyVvXq1O9AfoihtU4rj6wMtL/gro/m33xPBOIox7XDBTG8WfPCQPPxnx
	GYp34fAn+P720vLBYW9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPpak-00GgDw-7b; Wed, 08 Feb 2023 18:54:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPpaZ-00Gg9u-EH; Wed, 08 Feb 2023 18:54:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4DC2A617B8;
	Wed,  8 Feb 2023 18:54:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CB21C433D2;
	Wed,  8 Feb 2023 18:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675882473;
	bh=xTtM9WlSf7bwExmahb6XOjPHbEjpNPb+C9ZLErT3mV8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=kJN28UveNEt23ZFALxkKRAduymcXqKXXhl5ZE6krYfbalb6HMbzHo9qeVzvcHI7Wm
	 H7S6jcL16vD7PqCbUM676t6Ujn2JFJPW6F8SYQEY0t+JColJ5tdmzL8HnmWP59Mv+N
	 h1XG21jruiC7Pqu0lZhIHvhdf8KfE3r2XiOfPuEIw7UtbGW+1gt8cYhRh3sZd6iQB0
	 OKQT0joBdQfoYqU3AXs0x+0ro+BNaKQvYiFcCdFS93pX8FTqdLs62iSLZQceti8ikH
	 8vqlPouh7hbFMq94LAL+5Wj+RTZZwiFzYMUZ+IE2R0duumYDsHSZLH3uCg57RDgxC5
	 5i80rfFHy/R9Q==
Date: Wed, 8 Feb 2023 19:08:33 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
Cc: <Oleksii_Moisieiev@epam.com>, <gregkh@linuxfoundation.org>,
 <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>,
 <krzysztof.kozlowski+dt@linaro.org>, <alexandre.torgue@foss.st.com>,
 <vkoul@kernel.org>, <olivier.moysan@foss.st.com>,
 <arnaud.pouliquen@foss.st.com>, <mchehab@kernel.org>,
 <fabrice.gasnier@foss.st.com>, <ulf.hansson@linaro.org>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <dmaengine@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
 <linux-iio@vger.kernel.org>, <alsa-devel@alsa-project.org>,
 <linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-serial@vger.kernel.org>, <linux-spi@vger.kernel.org>,
 <linux-usb@vger.kernel.org>, Loic PALLARDY <loic.pallardy@st.com>
Subject: Re: [PATCH v3 4/6] bus: stm32_sys_bus: add support for STM32MP15
 and STM32MP13 system bus
Message-ID: <20230208190833.532cd60c@jic23-huawei>
In-Reply-To: <d6c659d8-2e5c-cb60-d950-685c4ba319e2@foss.st.com>
References: <20230127164040.1047583-1-gatien.chevallier@foss.st.com>
	<20230127164040.1047583-5-gatien.chevallier@foss.st.com>
	<20230128161217.0e79436e@jic23-huawei>
	<d6c659d8-2e5c-cb60-d950-685c4ba319e2@foss.st.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.36; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_105439_614660_21AB1724 
X-CRM114-Status: GOOD (  27.29  )
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

On Tue, 7 Feb 2023 15:12:23 +0100
Gatien CHEVALLIER <gatien.chevallier@foss.st.com> wrote:

> Hi Jonathan,
> 
> On 1/28/23 17:12, Jonathan Cameron wrote:
> > On Fri, 27 Jan 2023 17:40:38 +0100
> > Gatien Chevallier <gatien.chevallier@foss.st.com> wrote:
> >   
> >> This driver is checking the access rights of the different
> >> peripherals connected to the system bus. If access is denied,
> >> the associated device tree node is skipped so the platform bus
> >> does not probe it.
> >>
> >> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> >> Signed-off-by: Loic PALLARDY <loic.pallardy@st.com>  
> > 
> > Hi Gatien,
> > 
> > A few comments inline,
> > 
> > Thanks,
> > 
> > Jonathan
> >   
> >> diff --git a/drivers/bus/stm32_sys_bus.c b/drivers/bus/stm32_sys_bus.c
> >> new file mode 100644
> >> index 000000000000..c12926466bae
> >> --- /dev/null
> >> +++ b/drivers/bus/stm32_sys_bus.c
> >> @@ -0,0 +1,168 @@
> >> +// SPDX-License-Identifier: GPL-2.0
> >> +/*
> >> + * Copyright (C) 2023, STMicroelectronics - All Rights Reserved
> >> + */
> >> +
> >> +#include <linux/bitfield.h>
> >> +#include <linux/bits.h>
> >> +#include <linux/device.h>
> >> +#include <linux/err.h>
> >> +#include <linux/io.h>
> >> +#include <linux/init.h>
> >> +#include <linux/kernel.h>
> >> +#include <linux/module.h>
> >> +#include <linux/of.h>
> >> +#include <linux/of_platform.h>
> >> +#include <linux/platform_device.h>
> >> +
> >> +/* ETZPC peripheral as firewall bus */
> >> +/* ETZPC registers */
> >> +#define ETZPC_DECPROT			0x10
> >> +
> >> +/* ETZPC miscellaneous */
> >> +#define ETZPC_PROT_MASK			GENMASK(1, 0)
> >> +#define ETZPC_PROT_A7NS			0x3
> >> +#define ETZPC_DECPROT_SHIFT		1  
> > 
> > This define makes the code harder to read.  What we care about is
> > the number of bits in the register divided by number of entries.
> > (which is 2) hence the shift by 1. See below for more on this.
> > 
> >   
> >> +
> >> +#define IDS_PER_DECPROT_REGS		16  
> >   
> >> +#define STM32MP15_ETZPC_ENTRIES		96
> >> +#define STM32MP13_ETZPC_ENTRIES		64  
> > 
> > These defines just make the code harder to check.
> > They aren't magic numbers, but rather just telling us how many
> > entries there are, so I would just put them in the structures directly.
> > Their use make it clear what they are without needing to give them a name.
> >   
> 
> Honestly, I'd rather read the hardware configuration registers to get 
> this information instead of differentiating MP13/15. Would you agree on 
> that?

Sure, if they are discoverable even better.



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
