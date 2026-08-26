Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B43F6C5DF97
	for <linux-phy@archiver.kernel.org>; Wed, 26 Aug 2026 05:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vk+4pbSvgxDRYIVdtgv304gmDQdMTiOkeDJNhxzvN20=; b=gkILcHzHw59bvx
	+Y4JYaYHT/P/zVbWGcHpmfQI/Bwidz1Lxr3ca4+q7lOVtyUtVNUUc0M/kpNz0R/8ed7zE0m8fo6lD
	RffLoTdFwfpxD5taLDrFjIjyAI3SNudNnCCkhqJgb0yLceY5y5u70j0Qm5bCT9i4giZeqckfG/nNL
	RNAH9Zw7/qy0U9C87SHFgzbAZghg7hnEucFcaKpx3ywaxzUnYSCgWx6rFWIMzkz31zs8HiXn3UtEx
	qc15YMhAVrzeE0TVL0MqD+FUvI60qvl5ViV+2cgIZrpEkbrlyw6QHbHNfwirCkN2RFr78oGxXmnU4
	hifaNxEoV5LKGCC1WnQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz67V-00000001vXO-07QA;
	Wed, 26 Aug 2026 05:24:17 +0000
Received: from mx.nabladev.com ([178.251.229.89])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz67Q-00000001vWA-2f55;
	Wed, 26 Aug 2026 05:24:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 88B1711CD1B;
	Wed, 26 Aug 2026 07:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1787721845;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=2WSTUnZav2cMaC3lE9hNS4oPzqnlu3+rzaCPWkt1SOA=;
	b=SgB5V+kVDU3Rbwyt5YDztBKpw5w3bCaY/NaJLEoUSnYv5RF8KkTsPjBLYgf6WdvrQQQRN6
	TQnxR6vFZIbXu2WU3XhLRdCGlZrrqeZqnYugUzR2UV5Db0/wyLEMw7amUYvf7tpO/vHVuZ
	M762/dVL8XjlfBvDQpj9KpdCetUnoxsV6+Yb/BlJp2d1+dV6S0/OMbIKMSYmEubTuOqMA2
	sneMy9vaW9ysQCMzPOnErbH37R9w8n1RF4njsV07UrOuphkasFnwSS9xazXtUaf/LycV9x
	8ay/Ta6w7KmkKX+Tj49TfiL576C7IfaXtDV+ImgUmJhC7qSTPhHoHsXGB93hug==
Message-ID: <75025cb5-20d8-4f80-98ad-77438b0fd5ef@nabladev.com>
Date: Wed, 26 Aug 2026 07:23:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/8] usb: dwc3: dwc3-generic-plat: Add ST STM32MP2 DWC3
 xHCI USB controller glue
To: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Christian Bruel <christian.bruel@foss.st.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Pankaj Dev <pankaj.dev@st.com>,
 Rahul Kumar <rahul.kumar05@st.com>, Rob Herring <robh@kernel.org>,
 Rosen Penev <rosenp@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kernel@dh-electronics.com" <kernel@dh-electronics.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
References: <20260812010157.1772849-1-marex@nabladev.com>
 <20260812010157.1772849-7-marex@nabladev.com> <ao42hJmXCG9thL9J@vbox>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <ao42hJmXCG9thL9J@vbox>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_222413_291162_9F17E48F 
X-CRM114-Status: UNSURE (   6.04  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 8/26/26 2:44 AM, Thinh Nguyen wrote:

Hello Thinh,

>>   static const struct of_device_id dwc3_generic_of_match[] = {
>>   	{ .compatible = "spacemit,k1-dwc3", &spacemit_k1_dwc3},
>>   	{ .compatible = "spacemit,k3-dwc3", },
>>   	{ .compatible = "fsl,ls1028a-dwc3", &fsl_ls1028_dwc3},
>>   	{ .compatible = "eswin,eic7700-dwc3", &eic7700_dwc3},
>>   	{ .compatible = "starfive,jhb100-dwc3", },
>> +	{ .compatible = "st,stm32mp25-dwc3", &stm32mp25_dwc3 },
>>   	{ /* sentinel */ }
>>   };
>>   MODULE_DEVICE_TABLE(of, dwc3_generic_of_match);
>> -- 
>> 2.53.0
>>
> 
> Did you compile test each patch? This one fails to include bitfield.h
> for FIELD_PREP().
I did, on arm64, hmmm. Let me explicitly include bitfield.h in V4 .

Thank you!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
