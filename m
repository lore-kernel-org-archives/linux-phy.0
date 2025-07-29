Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBFCCC87FC9
	for <linux-phy@archiver.kernel.org>; Tue, 29 Jul 2025 18:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fX4aCalixzgeKwK1PERysO1UwxlxnEwUDbpUXJJwddQ=; b=E8dyJ9TUltvXiq
	EvZYodxQYajSKNOQIsYLWhbflWRvuVzamA+1bW/WLW+njHoeIMSbkVj3Xaoj10yBcbZsItvDlrRUP
	qJpkff2A2ItkKcpKsBxxaLZiVoq3qYOgVy2rtHYdGfp89HiQ6CDPuxJGljOuaSBVNtRJ0JE+MB2oM
	Bd3QCktO8uDZ4bDbNX5ByY/ofZYJ6KcLtiJa6XPZKQzIs8DX1wyXaVTlf1Q+1KspotvQFyGv0xFTS
	tczxPYFEf0aWPIedHAKi2gsZukOhzEGxU8afwxdeDLXx/i3YZUBNiafImAJohEIfVwGZfnRUdUSRL
	pKHGwy3Nc0OJlibOg3FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugpRS-0000000HUqt-27vR;
	Tue, 29 Jul 2025 18:52:50 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugpH2-0000000HTVQ-0GqK
	for linux-phy@lists.infradead.org;
	Tue, 29 Jul 2025 18:42:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 37AB744E0F;
	Tue, 29 Jul 2025 18:42:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FA4BC4CEEF;
	Tue, 29 Jul 2025 18:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753814523;
	bh=V6Dcqa0TG7W5slu9uXHtRB+QqM48OfTcq9W5IaelKrU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=bhf5H2tN9kMMxWl2WeZhvWPmpxfLH67XYeFVV/Xl0v3LAO5IKnbHUGx6cetAw8r0E
	 NelH/JRUL7KPtddjW2mY7kr7uscHlx82JXR8M/D7wnaN/BSVWG5YRbG2PwoySQDHVr
	 3FVSj7MEg1Sl4KKhtpobSnWImVZdjcdhMRfUBodtAxJ6oJYmzJ5W+HcvXMSM0TePYS
	 GqoloI3NFa22QSdSkQmso8fHGjMcWucCv9CBXLvVP//8Y3Q7ejE2jXgXsNFuQjlqWe
	 mvY6mquSuCyIyS4jxoOsNUCMvkQ/frlVHDw5PWcbWiVDFJYaMn7pdUYUtI991hiIgd
	 I1roqP1SAbJyQ==
Date: Tue, 29 Jul 2025 19:41:50 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, sboyd@kernel.org,
 dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, sre@kernel.org, krzysztof.kozlowski@linaro.org,
 u.kleine-koenig@baylibre.com, linux-arm-msm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
 kernel@collabora.com, wenst@chromium.org, casey.connolly@linaro.org
Subject: Re: [PATCH v2 1/7] spmi: Implement spmi_subdevice_alloc_and_add()
 and devm variant
Message-ID: <20250729194150.1985404b@jic23-huawei>
In-Reply-To: <6ea0495e-21d8-41a8-b1b0-1c99c2929de5@collabora.com>
References: <20250722101317.76729-1-angelogioacchino.delregno@collabora.com>
	<20250722101317.76729-2-angelogioacchino.delregno@collabora.com>
	<20250722150930.00000a2f@huawei.com>
	<6ea0495e-21d8-41a8-b1b0-1c99c2929de5@collabora.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_114204_126398_6D6717B7 
X-CRM114-Status: GOOD (  16.16  )
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


> >> +/**
> >> + * struct spmi_subdevice - Basic representation of an SPMI sub-device
> >> + * @sdev:	Sub-device representation of an SPMI device
> >> + * @devid:	Platform Device ID of an SPMI sub-device
> >> + */
> >> +struct spmi_subdevice {
> >> +	struct spmi_device	sdev;  
> > 
> > Having something called a subdevice containing an instance of a device
> > does seem a little odd.  Maybe the spmi_device naming is inappropriate after
> > this patch?
> >   
> 
> A SPMI Sub-Device is a SPMI Device on its own, but one that is child of a device.
> 
> Controller -> Device -> Sub-Device
> 
> Before this version, I initially added devid to spmi_device, but that felt wrong
> because:
>   1. Sub-devices are children of devices (though, still also devices themselves)
>   2. The devid field would be useless in "main" SPMI devices (struct spmi_device)
>      and would not only waste (a very small amount of) memory for each device but,
>      more importantly, would confuse people with an unused field there.
> 
> So, this defines a SPMI Sub-Device as an extension of a SPMI Device, where:
>   - Device has controller-device numbers
>   - Sub-device has controller-device.subdev_id numbers.
> 
> I don't really see any cleaner way of defining this, but I am completely open to
> any idea :-)
I was thinking it was a specialization at the same level as the old spmi_device
(not it's child). As a child this is fine.

Just showing my complete lack of knowledge of the SPMI code :)

Jonathan

> 
> Cheers,
> Angelo
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
