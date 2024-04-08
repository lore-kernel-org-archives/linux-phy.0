Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77A00CD129C
	for <linux-phy@archiver.kernel.org>; Mon,  8 Apr 2024 08:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AptC47Fd1fhVF6RvJLEbtiDWmxunrubH9hqoIsehr0c=; b=gtqBQrIZf24Khz
	wkofmPlBYO1/zUDuteqNgzfL0VaQpaEvlrVa+Ah+/eaPj8jyWPKeuKaIneAJIKFEceaWALkHcvAlr
	MuoYXXFUW41Jqq5QuLHZowQjZ9b4RUUTgY+0pB4tnI5vZk8MCLzhe3CCqLJNqj7RC3tkWuXiGfDLr
	Gp+7VxIOAyDitLasZXqDqh6HiajiT4NfGft2DnTnIxnMY9Al3QPpjzNqRUykQsQ7x78498o/xKyHS
	UcnXtDuphEwRqzLdvHhpXDQeV5dIXhesoTp4tvZ6VZPNxWYYqVgETpblWuCWF3O/M3sYkUyosGE8J
	0wQP1Z+m85PY5kq2YSUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtkca-0000000EwgF-0CUC;
	Mon, 08 Apr 2024 08:44:56 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtkcV-0000000EwbM-1zzE;
	Mon, 08 Apr 2024 08:44:53 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4387SNEk009700;
	Mon, 8 Apr 2024 10:44:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=p9CMLavhVsATyBEL2PMrrzwDGq1Q/Uy83NePUSe/nV8=; b=H0
	Hz8kooN+RWyeLVNT5G6PnWy8ULfDSW6CpoagsFb+J3M0DtuXTtnHqwuFRioi3gAA
	z5t7reJ8TsDXoNyseC06fx94TQCm6ALfyu6bsdF56llYVodLg9zaUIGjwFgk8DmE
	zXqWHU2YrzgiaVhWnsN82v10SkaVMrvQJ80OkoBuvJLqZ+Kpqac574MQ8DF/PNQk
	FZ7K4mrgNckGiIqwFgGzwaEUM/92Kh75C09Nbbz1efURqgiAW/I7HKGkw+Rcqd5J
	lc1lWbYAnp3PuE8qyX64hAyomATyqJvNHG1wh159HfLOx5KBBLJVFOjc6Rg6NG0V
	F9DOJvtck291a9gQZoMA==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3xaw9cnmn1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 08 Apr 2024 10:44:21 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id F2D0D40059;
	Mon,  8 Apr 2024 10:44:09 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2018E211978;
	Mon,  8 Apr 2024 10:43:02 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 8 Apr
 2024 10:42:59 +0200
Message-ID: <61608010-fbce-46c6-a83d-94c04d0f000d@foss.st.com>
Date: Mon, 8 Apr 2024 10:42:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 00/13] Introduce STM32 Firewall framework
To: Gatien Chevallier <gatien.chevallier@foss.st.com>,
        <Oleksii_Moisieiev@epam.com>, <gregkh@linuxfoundation.org>,
        <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <vkoul@kernel.org>, <jic23@kernel.org>,
        <olivier.moysan@foss.st.com>, <arnaud.pouliquen@foss.st.com>,
        <mchehab@kernel.org>, <fabrice.gasnier@foss.st.com>,
        <andi.shyti@kernel.org>, <ulf.hansson@linaro.org>,
        <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
        <hugues.fruchet@foss.st.com>, <lee@kernel.org>, <will@kernel.org>,
        <catalin.marinas@arm.com>, <arnd@kernel.org>,
        <richardcochran@gmail.com>, Frank Rowand <frowand.list@gmail.com>,
        <peng.fan@oss.nxp.com>, <lars@metafoo.de>, <rcsekar@samsung.com>,
        <wg@grandegger.com>, <mkl@pengutronix.de>
CC: <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dmaengine@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
        <linux-iio@vger.kernel.org>, <alsa-devel@alsa-project.org>,
        <linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-serial@vger.kernel.org>, <linux-spi@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
References: <20240105130404.301172-1-gatien.chevallier@foss.st.com>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240105130404.301172-1-gatien.chevallier@foss.st.com>
X-Originating-IP: [10.48.86.79]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-08_07,2024-04-05_02,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_014451_928759_4DDDB979 
X-CRM114-Status: GOOD (  22.32  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Gatien,

On 1/5/24 14:03, Gatien Chevallier wrote:
> Introduce STM32 Firewall framework for STM32MP1x and STM32MP2x
> platforms. STM32MP1x(ETZPC) and STM32MP2x(RIFSC) Firewall controllers
> register to the framework to offer firewall services such as access
> granting.
> 
> This series of patches is a new approach on the previous STM32 system
> bus, history is available here:
> https://lore.kernel.org/lkml/20230127164040.1047583/
> 
> The need for such framework arises from the fact that there are now
> multiple hardware firewalls implemented across multiple products.
> Drivers are shared between different products, using the same code.
> When it comes to firewalls, the purpose mostly stays the same: Protect
> hardware resources. But the implementation differs, and there are
> multiple types of firewalls: peripheral, memory, ...
> 
> Some hardware firewall controllers such as the RIFSC implemented on
> STM32MP2x platforms may require to take ownership of a resource before
> being able to use it, hence the requirement for firewall services to
> take/release the ownership of such resources.
> 
> On the other hand, hardware firewall configurations are becoming
> more and more complex. These mecanisms prevent platform crashes
> or other firewall-related incoveniences by denying access to some
> resources.
> 
> The stm32 firewall framework offers an API that is defined in
> firewall controllers drivers to best fit the specificity of each
> firewall.
> 
> For every peripherals protected by either the ETZPC or the RIFSC, the
> firewall framework checks the firewall controlelr registers to see if
> the peripheral's access is granted to the Linux kernel. If not, the
> peripheral is configured as secure, the node is marked populated,
> so that the driver is not probed for that device.
> 
> The firewall framework relies on the access-controller device tree
> binding. It is used by peripherals to reference a domain access
> controller. In this case a firewall controller. The bus uses the ID
> referenced by the access-controller property to know where to look
> in the firewall to get the security configuration for the peripheral.
> This allows a device tree description rather than a hardcoded peripheral
> table in the bus driver.
> 
> The STM32 ETZPC device is responsible for filtering accesses based on
> security level, or co-processor isolation for any resource connected
> to it.
> 
> The RIFSC is responsible for filtering accesses based on Compartment
> ID / security level / privilege level for any resource connected to
> it.
> 
> STM32MP13/15/25 SoC device tree files are updated in this series to
> implement this mecanism.
> 

...

After minor cosmetic fixes, series applied on stm32-next.
Seen with Arnd: it will be part on my next PR and will come through 
arm-soc tree.

Thanks
Alex




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
