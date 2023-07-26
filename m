Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F7EDC0015E
	for <linux-phy@archiver.kernel.org>; Wed, 26 Jul 2023 10:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQ3pZ0xdo4CrAOL1VcPVwavyMq35ne4U41btxJkA4rw=; b=ucnhV0zM5BmH21
	NZbaegEhoKnmJwMFaIuJRZ6ruFkOfbIGjMgQD43kgsCv8Btq1h410+UTAGDCaAL6OhInIHDvdRkAx
	bJv28hnsmO02EFRjL36tmzFbBqPEC2K0gSowA2VSmBahlqVFu79bNgf4CJ/nayKj1qdrOJcY9jFMg
	lVSPT0+d9S3EgUUkBYuHwMtiIQQbWsk9rxGJzl3LZ9x4YAGLNCW31UcZ7vNbBQPU3Kbno3T6pgOkk
	h5Gdnq8BY+3QYxbMZeSB21BtNo7ekTc33ij5DOw5svTdr9oOsrOQrz1omC6X5NfCvCJXdulWqGuxe
	auP02usdxaydsWKeG9hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qObw0-009v6Y-2i;
	Wed, 26 Jul 2023 10:40:00 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qObvx-009v5Z-2e;
	Wed, 26 Jul 2023 10:39:59 +0000
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36Q7VZaZ007966;
	Wed, 26 Jul 2023 12:39:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=W8GLfB17+jUE7Nw68o8tScgzzDDgHpp5NKWkRxESZlI=;
 b=qLRE5+KmvbKk5B/UW10nGEjBoDKipiB1flNkgDwSQYqmZMZdBpctbst7Vwt4EUF87UAQ
 lGs1OpG9iWa7NPx/eqb8ySrQnjHJTDAhdOqjGv8LVHdxJLHd4/JhOqgzW88/jAn5GpJe
 /9sWA3Z+uL0eH5JViXAbOVXN00Amp02Tix6WttAS9w4R9wAmpstvy5KIJGiwDfWDgPWe
 7Ll7vUdK2tWD46wDK1zTVYHE+KrDhr1nsi10XJw0x7tkd+qwL727Kpu0HqUADsa0lQkG
 4pxFNpRPxpJfDasvoPH+WokzK6DrXEtEA/wNoEISShjpOySH6a8QFdhtHwnQ+A4I7C3/ 6g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3s2y641c6j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 26 Jul 2023 12:39:37 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C13A210002A;
	Wed, 26 Jul 2023 12:39:36 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B6D7C21787E;
	Wed, 26 Jul 2023 12:39:36 +0200 (CEST)
Received: from [10.201.21.121] (10.201.21.121) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Wed, 26 Jul
 2023 12:39:34 +0200
Message-ID: <9f34d34b-911a-c064-9e44-34e030b76786@foss.st.com>
Date: Wed, 26 Jul 2023 12:39:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 05/11] firewall: introduce stm32_firewall framework
Content-Language: en-US
To: Simon Horman <simon.horman@corigine.com>
CC: <Oleksii_Moisieiev@epam.com>, <gregkh@linuxfoundation.org>,
        <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <alexandre.torgue@foss.st.com>,
        <vkoul@kernel.org>, <jic23@kernel.org>, <olivier.moysan@foss.st.com>,
        <arnaud.pouliquen@foss.st.com>, <mchehab@kernel.org>,
        <fabrice.gasnier@foss.st.com>, <andi.shyti@kernel.org>,
        <ulf.hansson@linaro.org>, <edumazet@google.com>, <kuba@kernel.org>,
        <pabeni@redhat.com>, <hugues.fruchet@foss.st.com>, <lee@kernel.org>,
        <will@kernel.org>, <catalin.marinas@arm.com>, <arnd@kernel.org>,
        <richardcochran@gmail.com>, Frank Rowand <frowand.list@gmail.com>,
        <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dmaengine@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
        <linux-iio@vger.kernel.org>, <alsa-devel@alsa-project.org>,
        <linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-serial@vger.kernel.org>, <linux-spi@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
References: <20230725164104.273965-1-gatien.chevallier@foss.st.com>
 <20230725164104.273965-6-gatien.chevallier@foss.st.com>
 <ZMDz1AhlEeZTM/vi@corigine.com>
From: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
In-Reply-To: <ZMDz1AhlEeZTM/vi@corigine.com>
X-Originating-IP: [10.201.21.121]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-26_04,2023-07-25_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_033958_174880_A57F16AB 
X-CRM114-Status: GOOD (  17.10  )
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



On 7/26/23 12:22, Simon Horman wrote:
> On Tue, Jul 25, 2023 at 06:40:58PM +0200, Gatien Chevallier wrote:
> 
> ...
> 
>> diff --git a/drivers/bus/stm32_firewall.c b/drivers/bus/stm32_firewall.c
> 
> ...
> 
>> +int stm32_firewall_controller_register(struct stm32_firewall_controller *firewall_controller)
>> +{
>> +	struct stm32_firewall_controller *ctrl;
>> +
>> +	pr_info("Registering %s firewall controller\n", firewall_controller->name);
>> +
>> +	if (!firewall_controller)
>> +		return -ENODEV;
> 
> HI Gatien,
> 
> Sorry, one more on this patch, that I missed before sending my previous
> email.
> 
> firewall_controller is checked for NULL here.
> But it is already dereferenced on the line above the check.
> 
> Flagged by Smatch.
> 
> ...

Indeed, thank you. I will change this for V4

Best regards,
Gatien

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
