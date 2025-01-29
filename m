Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC433C0218D
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jan 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6aXP4FrgTebfbUwiRVKo1RLYOr7pE9VAAbMfChDNB3c=; b=kUYhlrFRukKmob
	8hTYlneyyGDJa446Al+t/HW7i2iWTFPLKtSVQCydLxqhSpRbUqIrGMX1Q4vGr72azx74IZdAwIbFc
	Y7UjnRKolwfqgT5AUMbXuA/JXtAggfNkZwigjCEDipyYiHlDoF5QJkY4EdODy/vI9plH2fFkWhxQk
	/sqiBsI1R6go4w9oXO3xXC1fsYGI/xOSOHNR1r3UEKG5O5Fqs3Jjqq38fY1CpC6tywnfYCUW78pto
	O09zffYhY7qBCgaTTA98YWg8cTVgoWwQdiu2eo98LPRxoDYLXEN4E74adThbxpS5EUbb752IJoM4X
	TIzLgv/cQ3Ug6RG+vKRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1td6GW-00000006qKk-2ljd;
	Wed, 29 Jan 2025 11:29:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1td6GU-00000006qKI-1Ab8
	for linux-phy@lists.infradead.org;
	Wed, 29 Jan 2025 11:29:51 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50T6OcaE004260
	for <linux-phy@lists.infradead.org>; Wed, 29 Jan 2025 11:29:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i9PrfLAmZgIMy86J/BuBNlzLt3qqCa2AcRVAnqXESEw=; b=Vy8/RZuhDVNhraUs
	ot/qrCqm0JWxEceWKB8RNHxPkb/aj15NWXMCVQCyQLYtS8scUB7QejOgsyNDQbiZ
	3AZGk5YK7btmmxhK9Ir91jZpL6mydaX+oiuOrcz1nnaPsKeOKm7PKn3GboJRxmWU
	23l4jaKDE3Qw8JLa/3bpYU05xpawqGhvOet1SRr9feqUXF7zS410O9P8AdtgrQSx
	7YcmXntDvQh0q2KEcDRbBdgSUMAk+B7o/Q9kGCdNutJXq+GFt+BrgEMMlWDCqM3g
	H+mFgNB25GrqOtMlNR241Wf5yRw7k+UfhFAVcjAVeMjiPjQ9LOqVMIlsNdWYQcvy
	7kOr8g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ff1q0fw5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 29 Jan 2025 11:29:49 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7be6f7207cbso174723385a.2
        for <linux-phy@lists.infradead.org>; Wed, 29 Jan 2025 03:29:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738150188; x=1738754988;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i9PrfLAmZgIMy86J/BuBNlzLt3qqCa2AcRVAnqXESEw=;
        b=gxT0OT+SOTe0GELjTRqPWAl5VhJlr8MFP+7DfdmvBStx+z4EbFFwPkac6yy3J7kKQK
         YINkG6dSqGwG2jdVvoE5HJLvzNqAegAR/hCIcNJEZyzKngJg9IwdiAF9i5KkVPdOHjFg
         /VexYBd7lAPJP2O2mgizuzO/Ud/ccScvhOsI5JNKyDjcvIHO0568GzZOLuVAU+MGm7tN
         T9iJAAJrQKIxl2Zh44QdesOBYs9eOLq50h9H7abgthoWfRHytb2AeEjeFIZuF8LY5KF5
         ZaMdyccDn/2OdFdLFo/ItSUmWw+AohzNUDoacWB8P1DT4P7u4BxZKQyvhiTg2PPDYn9G
         71Jg==
X-Forwarded-Encrypted: i=1; AJvYcCUlTqSMrY2gvOE+TwlH3A5b8VJ5WEUMCysClVe7n+HrwQuIfjlyGSJrx0yXj9rXTTNMtEcNIylqcA8=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywa6fZh1/D6h7Y2QQeCH1YCvvAdlKMLMqY+PpTsL4Q6884T4xsI
	6ygw1INtOM/ZHhObdDPXLbjJZCLDLAasK54EYVwD/Y6fqfOi626Sbrh53KOrBwF2mvpX2C9yWTc
	YfMO5kyM4jX26SW90fyipV4bBLWsUYyxxbJ6dy5yHugRNd7ihemO3cXQgYVKy2ZO7
X-Gm-Gg: ASbGncviMb+4pwCzR3IgoMwn3aVgNrsP2ajxjNqQY2uc8ahjLIQzqlCC7qr/8//A0Cn
	w4Z+k/F4bh7qMjxCckUC9Exsr5w89vvvkn3YvwuKQzMMQMUaA1WanCp8I7dBJ+HJKK6Y0qHi0Qe
	FLYGU6o7wdmNOH9WAZkokSGilKnUsU/mnZ2bhd6c/5qwmnXz2M5aLgE5sIR3LV8GYg1NwRyL7Hk
	+otmID+3zILnEtGXYqAF4qjWY0tCC1WLxy8pMXv/RMV1EVoWTObIuwFNpZm4jYGW34Xo+UydRvM
	hXSsyh/wNcpNrOi3LecflFt11IMRWHkEpMxw2SdOSYCqSJFNvYkH3O5VqYI=
X-Received: by 2002:a05:620a:44cf:b0:7b6:e6a4:9668 with SMTP id af79cd13be357-7bffcda31f7mr141973485a.14.1738150188142;
        Wed, 29 Jan 2025 03:29:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHynGvu6Ug8OraeY+OA2aupmuSuiuP/SB6khBf0TMgvAsKh45ahlHKh8fb7ty74dKqVRcTTRg==
X-Received: by 2002:a05:620a:44cf:b0:7b6:e6a4:9668 with SMTP id af79cd13be357-7bffcda31f7mr141971985a.14.1738150187750;
        Wed, 29 Jan 2025 03:29:47 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc186283efsm8669980a12.18.2025.01.29.03.29.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2025 03:29:46 -0800 (PST)
Message-ID: <d928e662-07ac-4255-8d6f-adeaefb3db46@oss.qualcomm.com>
Date: Wed, 29 Jan 2025 12:29:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
To: neil.armstrong@linaro.org, Manivannan Sadhasivam <mani@kernel.org>,
        Qiang Yu <quic_qianyu@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, p.zabel@pengutronix.de, abel.vesa@linaro.org,
        manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250121094140.4006801-1-quic_wenbyao@quicinc.com>
 <20250121094140.4006801-3-quic_wenbyao@quicinc.com>
 <CAA8EJppXQpDrdXzJsTE7HWs=POt7yFAw0JVZFabN6Ks3fhZiWQ@mail.gmail.com>
 <a2cc5a5a-6cbd-7564-a8df-8af2a652de2f@quicinc.com>
 <ya27ma6iah7ts6sj35payj6ek4z7m6y5v4pnxd6wtqrp3cbyta@ypvrzwa4bnfv>
 <188a9efd-718e-4ac5-b89a-29f2713e1dba@quicinc.com>
 <20250124070829.oar3hlkshkpam57d@thinkpad>
 <88c29161-17a8-40c6-a94b-c894de15ca37@oss.qualcomm.com>
 <df1f825f-66a4-4bab-9ca4-90d594f2cb36@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <df1f825f-66a4-4bab-9ca4-90d594f2cb36@linaro.org>
X-Proofpoint-GUID: fT00awmu6dP3hdXjB1l8QBepx4dg-DiB
X-Proofpoint-ORIG-GUID: fT00awmu6dP3hdXjB1l8QBepx4dg-DiB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 impostorscore=0 mlxscore=0 suspectscore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501290093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_032950_336266_DD33DF49 
X-CRM114-Status: GOOD (  26.22  )
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

On 29.01.2025 9:29 AM, neil.armstrong@linaro.org wrote:
> On 25/01/2025 14:10, Konrad Dybcio wrote:
>> On 24.01.2025 8:08 AM, Manivannan Sadhasivam wrote:
>>> + Mayank (with whom I discussed this topic internally)
>>>
>>> On Fri, Jan 24, 2025 at 02:22:01PM +0800, Qiang Yu wrote:
>>>>
>>>> On 1/22/2025 5:43 PM, Dmitry Baryshkov wrote:
>>>>> On Wed, Jan 22, 2025 at 03:17:39PM +0800, Wenbin Yao (Consultant) wrote:
>>>>>> On 1/21/2025 6:36 PM, Dmitry Baryshkov wrote:
>>>>>>> On Tue, 21 Jan 2025 at 11:43, Wenbin Yao <quic_wenbyao@quicinc.com> wrote:
>>>>>>>> From: Qiang Yu <quic_qianyu@quicinc.com>
>>>>>>>>
>>>>>>>> Currently, BCR reset and PHY register setting are mandatory for every port
>>>>>>>> before link training. However, some QCOM PCIe PHYs support no_csr reset.
>>>>>>>> Different than BCR reset that is used to reset entire PHY including
>>>>>>>> hardware and register, once no_csr reset is toggled, only PHY hardware will
>>>>>>>> be reset but PHY registers will be retained,
>>>>>>> I'm sorry, I can't parse this.
>>>>>> The difference between no_csr reset and bcr reset is that no_csr reset
>>>>>> doesn't reset the phy registers. If a phy is enabled in UEFI, its registers
>>>>>> are programed. After Linux boot up, the registers will not be reset but
>>>>>> keep the value programmed by UEFI if we only do no_csr reset, so we can
>>>>>> skip phy setting.
>>>>> Please fix capitalization of the abbreviations (PHY, BCR) and add
>>>>> similar text to the commit message.
>>>>>
>>>>>>>> which means PHY setting can
>>>>>>>> be skipped during PHY init if PCIe link was enabled in booltloader and only
>>>>>>>> no_csr is toggled after that.
>>>>>>>>
>>>>>>>> Hence, determine whether the PHY has been enabled in bootloader by
>>>>>>>> verifying QPHY_START_CTRL register. If it is programmed and no_csr reset is
>>>>>>>> present, skip BCR reset and PHY register setting, so that PCIe link can be
>>>>>>>> established with no_csr reset only.
>>>>>>> This doesn't tell us why we want to do so. The general rule is not to
>>>>>>> depend on the bootloaders at all. The reason is pretty simple: it is
>>>>>>> hard to update bootloaders, while it is relatively easy to update the
>>>>>>> kernel. If the hardware team issues any kind of changes to the
>>>>>>> programming tables, the kernel will get them earlier than the
>>>>>>> bootloader.
>>
>> We're assuming that if a product has shipped, the sequences used to power up
>> the PHY in the bootloader (e.g. for NVMe) are already good.
>>
>> If some tragedy happens and an erratum is needed, we can always introduce a
>> small override with the existing driver infrastructure (i.e. adding a new
>> entry with a couple registers worth of programming sequence, leaving the other
>> values in tact)
> 
> Assuming Linux will be always ran directly after the bootloader is a wild assumption.

Situations like

[normal boot chain] -> [... (resets the PHY and doesn't reprogram it)] -> Linux

are both so unlikely and so intentional-by-the-user that it doesn't seem
worth considering really.

If whatever sits in the middle *must* hard-reset the phy, it can save the
register state beforehand and restore them after the reset

> Yes, we should make use the noscr if the PHY is always programmed, but we should be
> always able to reprogram the PHY entirely to recover a faulty programmation.

We aren't considering any possibility of faulty programming - it's either
programmed, or not. And if the values configured by the bootloader are wrong,
the device's firmware is considered faulty.

Most devices probably follow the exact same magic values as our reference
boards (though these values relate to analog characteristics, so perhaps not
*all* of them, which is another argument for keeping the BL state) and these
are extensively tested internally before any production devices make it out
the door. Any updates deep into the product life are most likely just "nice
to have"s and not anything critical, and as I've mentioned, we can still have
overrides with the current logic inside this driver.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
