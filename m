Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA04BFA3743
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 18:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=reLhdaNfkgfbWTitwSYYqu6N7F1uXCt+QC7uJrSOxZo=; b=Qe5j9ADgaoGScO
	15x2eX82uXwhxFlSU0nEoNnQ93p2srsfBR4zotpDK3M6tw2r1YfkAVURNaqXEX3bRXU6xArVmO6A8
	dUckRUNQmYR6gTEdVAgq3YQBVq0i439ac/EyGmKTra0braDxNGu/X0R738P/A2HPwhHzpc6n25r4N
	p0pLaJYwTo3K2RTPP5xXovdwvttU/pBxs1jpelSXDYBDa7/5KV5J8SHtV7IpsFU7yH4G7UYg80TeB
	hqP5QpCijZNGqPL2uraEGuGRkD2M7EqAA8c5lena0e8bgafSsmDJMv8Y2BiV4rwk6aTphX42iy3l2
	fMPcYMCNRLOf0TBw2BuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZtt-00Dwqj-6L; Mon, 31 Oct 2022 18:52:45 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opZtq-00Dwl3-8C
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 18:52:43 +0000
Received: by mail-lf1-x133.google.com with SMTP id o12so20631426lfq.9
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 11:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2m+IiXrsLStNouFmhecgJA2gSt8vjAtj7/teiT7CjBk=;
        b=hdIf0eTW0S87ia9RbcQzP4ZT3P6rvadiOZG25jVkki0QnvwfSj0RRW/Gb6sJG3yYEU
         9AZ7Z4nVmyYicjp7/LPMJDb5ILz+7+R+6T0paAgeMknQ4gBYf3fUIC2L21DZllRR2n1h
         dLbPIodLPxuZ5ypSwBawN42zYR16siA+aj9pyOvPYKHd87ShCHhFAxZnzghkTMlSy9r+
         v15m7A0HX8cNJPvR/fZyFbo8kl+1UXWRiCEWm0iuqFMIqCjso7/747ukUo9aEmGwMGML
         C0UwPJIJs7S56ONV+Uop4COrz8s6hgqnX4qh0U0frInJYMQN+dFi+Y1f1C6C3D9PTkUr
         MJfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2m+IiXrsLStNouFmhecgJA2gSt8vjAtj7/teiT7CjBk=;
        b=O4njUwvuvX/pJjTDC1AObjGAh6xOOBMYk6xfxPHZaLb5TxF5xN5xptbobZbpjivSQe
         d0dZZXPJNa8IAnjmz1wDjCZ5hmaK2pmxMiVGTizXSJsvVEqUYQbIM/KNqH8/LZWNJOB2
         lBt8wH5UVi7BAvcrvQ204+mNqJnTApTT1ltZJR4Dy77xLbUtW5duMCNX+bdLQWfOmfE6
         nVqs5Bnyj05WQ7nakn5f957Ue50zP0dqzFoAP2jpGiU//WPrzlkdWsRc4Gg74+DA9t/k
         qbHdVuVnROfXuRz+gIef6BVAAh012ahavIlFbwNi+1OIWmNSrIbusXNi86pMVTi7kI/H
         i2iQ==
X-Gm-Message-State: ACrzQf1up144qCtTkiNFo1NKtJPBNY9kT4JnwkfxAoD1x7wCr01+qBtk
	GgAYiOwhGGDKu8AvBbGr/6UQTw==
X-Google-Smtp-Source: AMsMyM4Q5b7LpNXMLeLpnI7m/hdrZ5ObVjNpLE+Jh9k7S1IeKWaR1G+TBQ4xfp8Zl8sY/DYXeqg87g==
X-Received: by 2002:ac2:5922:0:b0:4af:d4e:de3f with SMTP id v2-20020ac25922000000b004af0d4ede3fmr5679455lfi.528.1667242357077;
        Mon, 31 Oct 2022 11:52:37 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id q3-20020a2eb4a3000000b0026fb5525ee4sm1454768ljm.116.2022.10.31.11.52.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 11:52:36 -0700 (PDT)
Message-ID: <282de1ee-f1c5-39cf-90d7-8a10fc27c171@linaro.org>
Date: Mon, 31 Oct 2022 21:52:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 14/15] scsi: ufs: ufs-qcom: Add support for finding HS
 gear on new UFS versions
Content-Language: en-GB
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 konrad.dybcio@somainline.org, robh+dt@kernel.org, quic_cang@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-15-manivannan.sadhasivam@linaro.org>
 <cf8dcf53-f131-68f4-c6aa-d41e02ac6d5c@linaro.org>
 <20221031145647.GC10515@thinkpad>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221031145647.GC10515@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_115242_324107_1E675DF0 
X-CRM114-Status: GOOD (  26.27  )
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

On 31/10/2022 17:56, Manivannan Sadhasivam wrote:
> On Sun, Oct 30, 2022 at 12:48:21AM +0300, Dmitry Baryshkov wrote:
>> On 29/10/2022 17:16, Manivannan Sadhasivam wrote:
>>> Starting from UFS controller v4, Qcom supports dual gear mode (i.e., the
>>> controller/PHY can be configured to run in two gear speeds). But that
>>> requires an agreement between the UFS controller and the UFS device.
>>> This commit finds the max gear supported by both controller and device
>>> then decides which one to use.
>>>
>>> UFS controller's max gear can be read from the REG_UFS_PARAM0 register and
>>> UFS device's max gear can be read from the "max-gear" devicetree property.
>>>
>>> The UFS PHY also needs to be configured with the decided gear using the
>>> phy_set_mode_ext() API.
>>>
>>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>>> ---
>>>    drivers/ufs/host/ufs-qcom.c | 35 ++++++++++++++++++++++++++++++++---
>>>    drivers/ufs/host/ufs-qcom.h |  4 ++++
>>>    2 files changed, 36 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
>>> index f952cc76919f..268463e92d67 100644
>>> --- a/drivers/ufs/host/ufs-qcom.c
>>> +++ b/drivers/ufs/host/ufs-qcom.c
>>> @@ -281,6 +281,9 @@ static int ufs_qcom_host_reset(struct ufs_hba *hba)
>>>    static u32 ufs_qcom_get_hs_gear(struct ufs_hba *hba, u32 hs_gear)
>>>    {
>>>    	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
>>> +	struct device *dev = hba->dev;
>>> +	u32 max_gear, hcd_max_gear, reg;
>>> +	int ret;
>>>    	if (host->hw_ver.major == 0x1) {
>>>    		/*
>>> @@ -292,8 +295,33 @@ static u32 ufs_qcom_get_hs_gear(struct ufs_hba *hba, u32 hs_gear)
>>>    		 */
>>>    		if (hs_gear > UFS_HS_G2)
>>>    			return UFS_HS_G2;
>>> +	} else if (host->hw_ver.major > 0x3) {
>>> +		/*
>>> +		 * Starting from UFS controller v4, Qcom supports dual gear mode (i.e., the
>>> +		 * controller/PHY can be configured to run in two gear speeds). But that
>>> +		 * requires an agreement between the UFS controller and the device. Below
>>> +		 * code tries to find the max gear of both and decides which gear to use.
>>> +		 *
>>> +		 * First get the max gear supported by the UFS device if available.
>>> +		 * If the property is not defined in devicetree, then use the default gear.
>>> +		 */
>>> +		ret = of_property_read_u32(dev->of_node, "max-gear", &max_gear);
>>> +		if (ret)
>>> +			goto err_out;
>>
>> Can we detect the UFS device's max gear somehow? If not, the 'max-gear'
>> property name doesn't sound good. Maybe calling it 'device-gear' would be
>> better.
>>
> 
> UFS device probing depends on PHY init sequence. So technically we cannot know
> the max gear of the device without using an init sequence, but this information
> is static and should be known to a board manufacturer. That's why I decided to
> use this property. Another option is to use a fixed init sequence for probing
> the device and do a re-init after knowing it's max gear but that is not
> recommended.
> 
> We need "max" keyword because this property specifies the maximum gear at which
> the device could operate and not necessarily the gear at which it operates.
> Maybe, "max-device-gear" would make it clear.

Ack, thank you for the explanation. Yes, from my opinion max-device-gear 
is better. Let's see what Rob and Krzysztof would say.


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
