Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C947C83F23
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 16:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lp3+E/OBeKLVGate8aiZzw0/yZxztm05RlFeOIz2oK8=; b=XC/ZxDk0LYCutm
	aJSPK1/lnyWZwVdmjQ0ZlM9Sj1jgN2v6MmYxMPG4SAuv0RH3ySwMu4wMpN997PlipkjXe0qFX2RIC
	sXR5G7mfbC8oOiSDDfCvHfd36Ck9PVWlOTPYPvCZCEoGMMYJ3Q5z77c1cdM60sESAFAv/K7FzxV/B
	izqWyOi5rFqvaRDi3U4w5jBbQA+JgwfARNyfGNIRCnZz2vb4hNGVU9DUR7drot5cJq5MpEfi8etrE
	I1y4sIt8c0g8OYx+84wUn4Rm/BSirJtwF3fA4YXnnoqQEQKMowWsxPGhS701KWoGPVIzrOCoLIFvs
	cmIGxDo+yQ2Wjf2rnKOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZu7i-0000000CQLu-3uQv;
	Thu, 10 Jul 2025 16:27:50 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZrxv-0000000C4Qx-2Ee3
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 14:09:36 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-606b58241c9so1579530a12.3
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 07:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752156574; x=1752761374; darn=lists.infradead.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zQoCinxRRh/iq3oTutQRdNZV03mKs3O7qPm/FmODtXA=;
        b=uEDsrv8ysqe9gmZDASkmMeraec3xl0510qQ5xx2iHYBnegATju6XoanCqNTB22zNxd
         XLCi6G3nR86YWCqc6F6MTG/7J2N4PYe97XV3t8zs6T2Zsar6BKbjOA//m5wcawBqpi+n
         YRMXj0JdKp037C546lvCc58vvmTbCoPf3POLzmR5qgMLgeuxpSxYdZIIVNSr9Mk19ZbB
         9Bp/+g9yYwciNeJ9laaxN2BxIwEFW32D1H/1p7np9+g+G74F9eVpwbT0kNgEQRFHbPjh
         ugGcn9AhVWTxNZTkbCtqFbLV7AZ4r3dyKJRNycj3Z9VZfvgiHAvxZm216KYNPuVUI9Be
         H9rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752156574; x=1752761374;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zQoCinxRRh/iq3oTutQRdNZV03mKs3O7qPm/FmODtXA=;
        b=wlOekNl/haTC32OzlgqwcMzt2irqkTtpc6LF/AY5NpvYijYPEF96QNLaTBuvWBYtDM
         CaKTTkt4hn4A4JYQkxMJX25PUPIbEkQXeGvyBriocO4t7AQ7mLs387hGfYvFqYvUuvJC
         4sh3Si7u8LPoyrmmFASPeeVfsp9auIqOVy6KJRNt9L0NZ9lBCYxoGlVjY7FgeeJ2nzgX
         0nbo5aFtYAnXjvQLdS7POwiYH3plc1dPa8ewbENQy/asVVpYeTYah3m14Y6KlgITpNsw
         4Dgipc5dvB5DtHJ4a9pq+HZlXTVjhCf/407MBW7ehCWmtDTN5hFvGAyXt1u0Mc95e17Y
         tzxA==
X-Forwarded-Encrypted: i=1; AJvYcCUoCGw3Zww8KdJWFqRg+NM2Z2TSckS/QUL2e5tz8sttFyddVzCAGuWKUV/kAmI9SBUuuFew4xDykyM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4LGuYweoJOZAtAu3iJYc+8fFrFB7H7sF3sjJN7aWm0XfxJFbe
	zxwfZlZkA+sKf6ntJ44F0t2KLAoq+mUuCFgg4ILYns/OddtqywhCTXejg9hOIAKNhQo=
X-Gm-Gg: ASbGnctwX3HflnwhRKUK8xMznqxP8Yk9dVTrqpmNV+Nx9Tf8DcRMMANZqZH1MmSYGxq
	ZKLYzH1ZnOg3/i2ClP/nKzvubUmMnR6geNxmVZgarmsIf9daM2O/h7ylbbmT7d73UITMB3RVXHo
	Iv9cJEKtywVMSbDdC8gRkY2YTgUsiuFsD9PGjS3cU0FIHuc3BdaxgHAVhpK6r8jF6Rq1GimiEf5
	eqU1SsChkGJFlhpkcNSEme3LdC3Yk8BrENL3+bt/QMyFmw/NjBvpdJVJiHA5xs6H7lBMGg3diua
	n5ELiSfSRy6JUv+5L0nbzm6EewVlL6n/WLlwWXmREhaIg6TKeuhskURZ5f125kOrzOTuEwFvmzw
	gWwOjNyIBuRQP/2SgQoXNoeGZaFypqNk=
X-Google-Smtp-Source: AGHT+IG8YxUCUZJeWu7C8W4J27oyXKY2dGnFXQnEMhNeARIfZps63JGs0OVwIsREQQAKXy3KL4OREw==
X-Received: by 2002:a17:906:9fce:b0:ae0:b49d:9cd with SMTP id a640c23a62f3a-ae6e70fee29mr278269666b.58.1752156573823;
        Thu, 10 Jul 2025 07:09:33 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7e910e8sm140856366b.36.2025.07.10.07.09.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 07:09:33 -0700 (PDT)
Mime-Version: 1.0
Date: Thu, 10 Jul 2025 16:09:33 +0200
Message-Id: <DB8FO1H0LHQ0.2JBDBVE8JFJVC@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Wesley Cheng" <quic_wcheng@quicinc.com>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Abel Vesa"
 <abel.vesa@linaro.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-usb@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, "Neil Armstrong"
 <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 4/4] phy: qcom: phy-qcom-snps-eusb2: Add extra
 register write for Milos
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
 <20250709-sm7635-eusb-phy-v2-4-4790eeee7ae0@fairphone.com>
 <7d073433-f254-4d75-a68b-d184f900294a@oss.qualcomm.com>
 <DB8DGDEN23D2.1GFB8XI0P3YLR@fairphone.com>
 <a2567891-1dd4-44ff-9853-6f9a451f0a74@oss.qualcomm.com>
In-Reply-To: <a2567891-1dd4-44ff-9853-6f9a451f0a74@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_070935_571328_8EFA57C8 
X-CRM114-Status: GOOD (  15.77  )
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

On Thu Jul 10, 2025 at 2:29 PM CEST, Konrad Dybcio wrote:
> On 7/10/25 2:25 PM, Luca Weiss wrote:
>> On Thu Jul 10, 2025 at 2:10 PM CEST, Konrad Dybcio wrote:
>>> On 7/9/25 11:18 AM, Luca Weiss wrote:
>>>> As per the downstream devicetree for Milos, add a register write for
>>>> QCOM_USB_PHY_CFG_CTRL_1 as per the "eUSB2 HPG version 1.0.2 update".
>>>>
>>>> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>>> ---
>>>> The downstream driver supports an arbitrary extra init sequence via
>>>> qcom,param-override-seq.
>>>>
>>>> volcano-usb.dtsi has the following which is implemented in this patch:
>>>>
>>>>     /* eUSB2 HPG version 1.0.2 update */
>>>>     qcom,param-override-seq =
>>>>             <0x00 0x58>;
>>>> ---
>>>>  drivers/phy/phy-snps-eusb2.c | 6 ++++++
>>>>  1 file changed, 6 insertions(+)
>>>>
>>>> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
>>>> index e232b8b4d29100b8fee9e913e2124788af09f2aa..87fc086424ba4d9fb3ce870aa7f7971a51d4a567 100644
>>>> --- a/drivers/phy/phy-snps-eusb2.c
>>>> +++ b/drivers/phy/phy-snps-eusb2.c
>>>> @@ -420,6 +420,12 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
>>>>  	/* set default parameters */
>>>>  	qcom_eusb2_default_parameters(phy);
>>>>  
>>>> +	if (of_device_is_compatible(p->dev.of_node, "qcom,milos-snps-eusb2-phy")) {
>>>> +		/* eUSB2 HPG version 1.0.2 update */
>>>> +		writel_relaxed(0x0, phy->base + QCOM_USB_PHY_CFG_CTRL_1);
>>>> +		readl_relaxed(phy->base + QCOM_USB_PHY_CFG_CTRL_1);
>>>
>>> Said HPG asks to clear bits [7:1] on all targets
>> 
>> Okay, so make this unconditional and only update those bits instead of
>> writing the full register?
>
> Yes
>
>> 
>> Keep the write at this location, or move the code somewhere else in the
>> function?
> Let's simply do this instead:
>
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index 87f323e758d6..6c44d0366f34 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -392,7 +392,7 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
>  
>         snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_CFG_CTRL_1,
>                                     PHY_CFG_PLL_CPBIAS_CNTRL_MASK,
> -                                   FIELD_PREP(PHY_CFG_PLL_CPBIAS_CNTRL_MASK, 0x1));
> +                                   FIELD_PREP(PHY_CFG_PLL_CPBIAS_CNTRL_MASK, 0x0));
>  
>         snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_CFG_CTRL_4,
>                                     PHY_CFG_PLL_INT_CNTRL_MASK

Sounds reasonable, if the HPG suggests that...

Just asking myself why this wasn't updated in the driver but only added
via the qcom,param-override-seq for some SoCs. But downstream is still
downstream I guess.

Regards
Luca

>
>
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
