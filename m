Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62303C02199
	for <linux-phy@archiver.kernel.org>; Sat,  8 Feb 2025 02:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1k7VZzVfQBs2xg+enVf9MYmjYyjFe5PAUVmZDYFP5Iw=; b=35CtoR+73fUDZ8
	vHikKgMXPmb5a5GzD6qTVcbcCFe1Q8Bb+qeBSHiDUHQdYUUuYN+Vmqr1bC6CGwvPtBpnXFBvgg4v5
	JwqFqPd2wQmiwlPcaLSqsptJ24qDRGeTlA3X51b72/P4nyyj6b4/kc7Y3fxQZuNuLa5CmFM+Pn5ch
	furxUNDtavs02hpDiNlOsMqiL8tehsffaELFCIC4MqwCA7SHEJfPZ5zMJDp1Fife7lJn5U/vgqmJy
	dVQ7Y/nvPgAaDAaJ5aLSqqsm69BQ5aBYYE+9g/gkRgg+i3QfnIV8Aj4mx0HgaJo3c2JCBZoKHIhtw
	b2E8YFuYZ+UHR+eta7aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgaWD-0000000BuOD-3iny;
	Sat, 08 Feb 2025 02:24:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgaWB-0000000BuNc-3Ruy
	for linux-phy@lists.infradead.org;
	Sat, 08 Feb 2025 02:24:28 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5180hJuZ023703
	for <linux-phy@lists.infradead.org>; Sat, 8 Feb 2025 02:24:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JCUv8dRg765XUh0Vz77e1co8H44WhCoFHb2CwK4qFCU=; b=Mz4VleyT3M/abRL3
	qF5eR2nWoJ0Ytv82Et8JfrCnkBcUEED2BFBzbqvxT3SEfKZbdpSWSMuiNkOJD5Oe
	xdK+O3pDVJKtnwJeY9YqvDK663odTpGofTggeleeVDuci5PA6pdm+zYOGCHhEwHz
	jjgVxJa6K7UrTE6uY2klh4hMetWU9ZEO0CapV7885MaTx9sjkQdGMc0DZDOv3EX8
	yR6FK9KkAwL7WQLG3HLyGXGcoXH6eojIzIfdgVl9280QPVsNrpFO+9Pg8ruS7tZG
	HnVNfV/pPyin/yreZhXns9S5dKFnTmNJ5i3ktdbvlQkOPhj+5KUiGhWvcjWtuRYd
	v/vFpQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44nvydr4sx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 08 Feb 2025 02:24:26 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6f134dac1so68443585a.3
        for <linux-phy@lists.infradead.org>; Fri, 07 Feb 2025 18:24:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738981465; x=1739586265;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JCUv8dRg765XUh0Vz77e1co8H44WhCoFHb2CwK4qFCU=;
        b=andmZaRxsO6PsMJdn+l4OqAzPavLBPE/cIGs8rnptg3AZwjW6t6GKJGyihU+GqNB4t
         8zYKIJRH5RV6Fi3H34ODbGDc+1IRsLNQNbfsxivBKWr85/xJMDz+vIwsz5GTB0OKjEo3
         h6m5LKKocCeeWR+RWhMq1+OEe3Lr8VtrKRxYlZyJwfToGYnwjKGnnVcZbyk6jGaX/kbN
         FH1LZRk8KwumIRWMMI1Mp12nfTeW4ZUHvkT71X3RzXblOU1aqFsZsjNgMgE40+TuYns9
         ZZoJ886fmVdfO1QaxNDXt+3GOLkw9Rt4JTdvGb3t/KqY2WZTsDDGC8sy+IXbx5Uyun+5
         rkTA==
X-Forwarded-Encrypted: i=1; AJvYcCWKlU8/yPACqsmmImUPFl//iqrwuLPkDdRF3SXOkUJj76CN/nOmH+OA2CptfKwb5GdEYdkX8OosUIQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxHiXtgSGsRxbskJPZa5Rs+jWQJqB6bzrlwriDFT52Nb3dO4hak
	cRDG4or9P66h09ewXYEGHyV4b6PzE3jI+kt/LsGAlhDpS6TRSzKoP/jbhRkZ7W4xjs4cSxVTYkt
	ND7p2xsVu1C4J9Eqm3yPQtwOWUo0Gri1B4+pahHMYtqbUk9obYv8VTx+ZGqoGSbT4
X-Gm-Gg: ASbGncsAKYXPPWw8/s9ssmNw+HkCw8e2U3HdgZ5Eh/sr6kXktUuivh59MHx2WXjuusu
	UVn8QejvmQq+nyZsX2WwReuccoyp+kFZburkrTDjD0hZ7LiItiWB2RPPjiQy4PhuFQKFBn1VRxQ
	z/vYERys48yXdQwTzlVeKBzNTkuJuX9aAj6sODBFOKum6gnIISbmC+CSDKablEh7e1NLj8B2GX+
	BBuwfIoWrFX2/sNngFn7J8Q7v4ehiPgUMdCHNagJZPNlGHf0Cl8vEkhSSSzkoozIkSWcn/dOPoQ
	YaSGaY9UEcYpALlC8RAW7kqwm/JQufeXnAmBLX8abhL+0YrqTKxyAL8EfiU=
X-Received: by 2002:a05:620a:2806:b0:7a9:bf88:7d9a with SMTP id af79cd13be357-7c047c4508cmr293334885a.10.1738981465232;
        Fri, 07 Feb 2025 18:24:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHwH7EReKl7IEh4xTeMkF/Dqamjj2Pc1ozjjW8/DuI60lN8fp+Z03NVrZIMiVrtsWC3VgAyNw==
X-Received: by 2002:a05:620a:2806:b0:7a9:bf88:7d9a with SMTP id af79cd13be357-7c047c4508cmr293333485a.10.1738981464754;
        Fri, 07 Feb 2025 18:24:24 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7732e7232sm375298566b.97.2025.02.07.18.24.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 18:24:23 -0800 (PST)
Message-ID: <56e4ecaa-c79a-41fd-87fc-dad192bc5e30@oss.qualcomm.com>
Date: Sat, 8 Feb 2025 03:24:20 +0100
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
 <d928e662-07ac-4255-8d6f-adeaefb3db46@oss.qualcomm.com>
 <9d489930-9d2d-4b71-9b21-9c7918257b7c@linaro.org>
 <aaf02ae5-4ae8-4571-934f-2c95de9d7e4f@oss.qualcomm.com>
 <d36b497e-4717-4c25-8090-a20efd09f782@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d36b497e-4717-4c25-8090-a20efd09f782@linaro.org>
X-Proofpoint-GUID: 07ImpJWx4XEGr1mRkvmc3ZGBzXSAEHj1
X-Proofpoint-ORIG-GUID: 07ImpJWx4XEGr1mRkvmc3ZGBzXSAEHj1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-07_11,2025-02-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 malwarescore=0 spamscore=0 adultscore=0 mlxlogscore=999 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502080016
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_182427_875669_29A72B7D 
X-CRM114-Status: GOOD (  26.47  )
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

On 29.01.2025 3:19 PM, neil.armstrong@linaro.org wrote:
> On 29/01/2025 14:55, Konrad Dybcio wrote:
>> On 29.01.2025 2:41 PM, neil.armstrong@linaro.org wrote:
>>> On 29/01/2025 12:29, Konrad Dybcio wrote:
>>>> On 29.01.2025 9:29 AM, neil.armstrong@linaro.org wrote:
>>>>> On 25/01/2025 14:10, Konrad Dybcio wrote:
>>>>>> On 24.01.2025 8:08 AM, Manivannan Sadhasivam wrote:
>>>>>>> + Mayank (with whom I discussed this topic internally)
>>>>>>>
>>>>>>> On Fri, Jan 24, 2025 at 02:22:01PM +0800, Qiang Yu wrote:
>>>>>>>>
>>>>>>>> On 1/22/2025 5:43 PM, Dmitry Baryshkov wrote:
>>>>>>>>> On Wed, Jan 22, 2025 at 03:17:39PM +0800, Wenbin Yao (Consultant) wrote:
>>>>>>>>>> On 1/21/2025 6:36 PM, Dmitry Baryshkov wrote:
>>>>>>>>>>> On Tue, 21 Jan 2025 at 11:43, Wenbin Yao <quic_wenbyao@quicinc.com> wrote:
>>>>>>>>>>>> From: Qiang Yu <quic_qianyu@quicinc.com>
>>>>>>>>>>>>
>>>>>>>>>>>> Currently, BCR reset and PHY register setting are mandatory for every port
>>>>>>>>>>>> before link training. However, some QCOM PCIe PHYs support no_csr reset.
>>>>>>>>>>>> Different than BCR reset that is used to reset entire PHY including
>>>>>>>>>>>> hardware and register, once no_csr reset is toggled, only PHY hardware will
>>>>>>>>>>>> be reset but PHY registers will be retained,
>>>>>>>>>>> I'm sorry, I can't parse this.
>>>>>>>>>> The difference between no_csr reset and bcr reset is that no_csr reset
>>>>>>>>>> doesn't reset the phy registers. If a phy is enabled in UEFI, its registers
>>>>>>>>>> are programed. After Linux boot up, the registers will not be reset but
>>>>>>>>>> keep the value programmed by UEFI if we only do no_csr reset, so we can
>>>>>>>>>> skip phy setting.
>>>>>>>>> Please fix capitalization of the abbreviations (PHY, BCR) and add
>>>>>>>>> similar text to the commit message.
>>>>>>>>>
>>>>>>>>>>>> which means PHY setting can
>>>>>>>>>>>> be skipped during PHY init if PCIe link was enabled in booltloader and only
>>>>>>>>>>>> no_csr is toggled after that.
>>>>>>>>>>>>
>>>>>>>>>>>> Hence, determine whether the PHY has been enabled in bootloader by
>>>>>>>>>>>> verifying QPHY_START_CTRL register. If it is programmed and no_csr reset is
>>>>>>>>>>>> present, skip BCR reset and PHY register setting, so that PCIe link can be
>>>>>>>>>>>> established with no_csr reset only.
>>>>>>>>>>> This doesn't tell us why we want to do so. The general rule is not to
>>>>>>>>>>> depend on the bootloaders at all. The reason is pretty simple: it is
>>>>>>>>>>> hard to update bootloaders, while it is relatively easy to update the
>>>>>>>>>>> kernel. If the hardware team issues any kind of changes to the
>>>>>>>>>>> programming tables, the kernel will get them earlier than the
>>>>>>>>>>> bootloader.
>>>>>>
>>>>>> We're assuming that if a product has shipped, the sequences used to power up
>>>>>> the PHY in the bootloader (e.g. for NVMe) are already good.
>>>>>>
>>>>>> If some tragedy happens and an erratum is needed, we can always introduce a
>>>>>> small override with the existing driver infrastructure (i.e. adding a new
>>>>>> entry with a couple registers worth of programming sequence, leaving the other
>>>>>> values in tact)
>>>>>
>>>>> Assuming Linux will be always ran directly after the bootloader is a wild assumption.
>>>>
>>>> Situations like
>>>>
>>>> [normal boot chain] -> [... (resets the PHY and doesn't reprogram it)] -> Linux
>>>>
>>>> are both so unlikely and so intentional-by-the-user that it doesn't seem
>>>> worth considering really.
>>>
>>> In embedded/mobile/edge world, definitely, in compute/PC-like market, not really.
>>>
>>> You'll have people add some custom bootloaders, hypervisors, who knows what...
>>
>> I see, however you actually have to intentionally assert the non-NO_CSR PHY
>> reset from said custom bootloaders, hypervisors and whoknowswhats for the
>> programmed sequence to be erased. So I have no idea what the issue is here.
> 
> I won't argue further, but you know as I do that relying on the bootloader state
> is a dangerous game, and we already rely a lot for dsp stuff and we have
> a lot lot of issue related to the UEFI implementation already on production
> devices.
> 
> I'm not against the nocsr stuff, which can be a big win for boot time, but
> honestly not adding a few registers in table seems risky enough, and we should
> probably delay this experiment until we are sure the nocsr stuff works fine.

I tested a range of mobile/compute platforms and only the latter kept
the PCIe PHYs initialized after dropping to the OS. No adverse effects
that I can tell.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
