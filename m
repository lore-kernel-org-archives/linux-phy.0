Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44DE8C87FCF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Aug 2025 13:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ggqhcn5pgd7EECMsPPGMakrYJMYr4xfyQXH5TmgHhCI=; b=Ejj4hsXkv6uQ5C
	el7mNjg566Svw5FRWGNSlWDh/GPlPF9idVHqQZJUc8ZDNlxe2fa/I/ckypevOmmQ5HmKIL9br5d84
	A2vAooZsUX28sTS2u5pei0tnC4+WwauvhdWymQbZseSUdoiyQUpmZR/nkag5oHBhw2sm3yfmRBGRr
	MUp/SBvI6dCqeijcamjLP41o2/c3B92dkRFZfq1lMyXSOquVbdXUZmdrLdGcoliq11+uJhQtw0Zci
	+idjgk3Y2hm3vhytgdUeVYZVpNVWNGztBX0cKkImdfM4/gBNKhkgLOZ6BqYMlmiybdqDUXypTLZtb
	Z6qhzaVRK350Bf2EfECA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umBHl-0000000DjHz-3t5a;
	Wed, 13 Aug 2025 13:12:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umAGv-0000000DbJL-1gAk
	for linux-phy@lists.infradead.org;
	Wed, 13 Aug 2025 12:08:02 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DBM4Ih011435
	for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 12:08:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MYuk5iUWeR2SGqulBnQ8ep9aCOz5ejprTcm8gj33WEM=; b=ATDUyWH3/asPohwk
	JlYKEMfgF9tDUQkDHOdgtOHJUBPvGZDlokp810W6KwmX8G4lXnsDH7Kn1PVsto27
	ZI5c7g8NFP/7dgsIK+M7/G8l+fc3Nv5JmFIpeU2zVAMDUdSyk20R4HhA80jmF+ts
	99lmUQa6knjZAt2pLCz8/YoKVIf9kR58Fc5FCRSqb6Ok0mXdi2KE16lygQ/ZQj3L
	HsE4Njey0HImOaDkvVxaOukG3tb51yvz47wSVUjborALpKFhiQuDQ2AKMWNjoC90
	xy6+XakTCVzPTrwhLlJDhz8VhZZ1cSP0uVMiRGIaIOQNgEPBqmJAUSjwIKRhUApQ
	oFsGog==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g9q9ts6y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 12:08:00 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f539358795so22982046d6.3
        for <linux-phy@lists.infradead.org>; Wed, 13 Aug 2025 05:08:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755086879; x=1755691679;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MYuk5iUWeR2SGqulBnQ8ep9aCOz5ejprTcm8gj33WEM=;
        b=kNQICZ730ZKyYdmQzSTqb5aug3UaUjpkx7m25H63LBWlcFUc5R9H/fZTmapPJBvSMd
         2Dsdl4yuTyl2uUYyW00WZGlnYeHI/c9RM7P00Fc6Fo5FPbhtgZvJ3s29GsrjrHGmqk1s
         WEYAip7seMEWW9oo0oKmKO56SwodaAqZcVwlVgi86mBko6azHYkviqiQLgs8o2TdKN/h
         ZRKNsEq0jdhXc0jcNvkV01Cbiess+5k4/Tm8ry12WwEHT0nu6mMRZU/NahnO95kYiLCb
         +ZoyApcmUQRQDSZQSbkDdD4JZlKchuVemQ/e/1b6WZG57iMDfShFZy8uD87fkHAAK0dZ
         v8lg==
X-Forwarded-Encrypted: i=1; AJvYcCUGaAs7VZ/UMVvPG/kbH6YnopPohI+nRnjSKGODjw2KGF8NfLTbOl1XHcPh2so8Zy5IaVfqLreptq4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxt1Jl1hjR2+nstLUzSfh8VJ5TvyYdypQSNWzBIDlWUy8OHmtDp
	gsbNdRQAkVMG03YjIXawk5DdPgLc2xsNkTZdInJc35R8gnDC/IfXm9epKOkJaL83DfAH8AVN6Al
	obnZgkHef8DQFasppilFzIDTyMOeFDEb93N2B0i6Wha/RLTEmlOW6VDRbHL69Cuqht453
X-Gm-Gg: ASbGncuex5vuMlI4qSGcAj1pjWRUUo6rcPDyox2HFYeWqhSP0A67XNI11XgcUJfKkBt
	yLviFMc/7uKOfziRqDQXoLON4LjjYTrVHSjtx5xYxbRq8kEUsmIJFQ7gVsxSyKQiTdO+QsDNz4h
	tWUTK/YuTC9RPpbuDtuaqBxDQF4APfWde7hHiS4QcPl/F+UYfzB/z6Bg5hroYpyIRhL1ErHAnmp
	dIh1OicTnsj7oUMr7KwbJFe94mqZ0OmCngeGD3z1eYhQPgqSKA4RxY/3yl5Qi4vIKzLEAdo7lMk
	UkRulT/f/a8+E/DkrZaSWx6VTSP59pTKkrimLUSQPlYtrb1FdygnmWWoFybjVSnzrI0bE2bZ1cy
	svNnNzGVBaax3iyXYBA==
X-Received: by 2002:a05:620a:7114:b0:7e8:deb:2b88 with SMTP id af79cd13be357-7e8652610cdmr181571585a.5.1755086879151;
        Wed, 13 Aug 2025 05:07:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGeo3D6ZsWLZnPQmHQAdZlqxDwmN73bz1qqHROe9TiS+lFeRiG0UWTDISGp7c/KcY3g6+XW/A==
X-Received: by 2002:a05:620a:7114:b0:7e8:deb:2b88 with SMTP id af79cd13be357-7e8652610cdmr181567185a.5.1755086878508;
        Wed, 13 Aug 2025 05:07:58 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af93ddf5b48sm2115023066b.49.2025.08.13.05.07.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 05:07:57 -0700 (PDT)
Message-ID: <3ad5abef-9fcd-4dbd-babd-3820f6915a52@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 14:07:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: qmp-pcie: Fix PHY initialization when powered
 down by firmware
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Wenbin Yao <quic_wenbyao@quicinc.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manivannan Sadhasivam
 <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Konrad Dybcio <konradybcio@kernel.org>
References: <20250812-phy-qcom-qmp-pcie-nocsr-fix-v1-1-9a7d0a5d2b46@linaro.org>
 <f44beed6-72c3-4e86-834b-ac522c786bc7@oss.qualcomm.com>
 <aJx_KjWFxeYE5U81@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aJx_KjWFxeYE5U81@linaro.org>
X-Authority-Analysis: v=2.4 cv=CNMqXQrD c=1 sm=1 tr=0 ts=689c8020 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=dMwzMeVDXUTiNa__XesA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: GpjButMujW8O24HsK7uycIVbWSwDUWb6
X-Proofpoint-ORIG-GUID: GpjButMujW8O24HsK7uycIVbWSwDUWb6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDE2NCBTYWx0ZWRfX8wLFahpGYOIy
 UOa9P1IT4k4L3tuNsxWZLLTfBF10GnxjxcMLBr+hG9IQiFaWXNqZjH1NsTNzTJXB9QGQ2jf4iNl
 50p+bw4oNIfd1EG6vNjZtQra/tPPFbn3wx//XpMgNwB5mb8YTucpqvqQSsarogoF3P7wyFmHDk8
 ka1DS00ZPqhrbibreTV1KVVehrcR0yBAeaYoziu3VMKSJG57FDQaDKBqVhMFeO5tu1+58qOUs07
 d+jcaStIA99PBBiTFEYSiqYoyZi7cZPNYaZOuLEKacn7BXyyC3zV2pCfFn87BkT8Ujrg9xrYPIb
 xI/q8fKEJrnLcuomycIdl30KKG09+V6mUbcatiBIBakY6kN8H5yMpPV+aB/ByPC1jwNQAW+8knv
 JQ8kKf9P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_01,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_050801_480747_818824BB 
X-CRM114-Status: GOOD (  24.30  )
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

On 8/13/25 2:04 PM, Stephan Gerhold wrote:
> On Wed, Aug 13, 2025 at 12:13:31PM +0200, Konrad Dybcio wrote:
>> On 8/12/25 6:30 PM, Stephan Gerhold wrote:
>>> Commit 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention
>>> support") added support for using the "no_csr" reset to skip configuration
>>> of the PHY if the init sequence was already applied by the boot firmware.
>>> The expectation is that the PHY is only turned on/off by using the "no_csr"
>>> reset, instead of powering it down and re-programming it after a full
>>> reset.
>>>
>>> The boot firmware on X1E does not fully conform to this expectation: If the
>>> PCIe3 link fails to come up (e.g. because no PCIe card is inserted), the
>>> firmware powers down the PHY using the QPHY_PCS_POWER_DOWN_CONTROL
>>> register. The QPHY_START_CTRL register is kept as-is, so the driver assumes
>>> the PHY is already initialized and skips the configuration/power up
>>> sequence. The PHY won't come up again without clearing the
>>> QPHY_PCS_POWER_DOWN_CONTROL, so eventually initialization fails:
>>>
>>>   qcom-qmp-pcie-phy 1be0000.phy: phy initialization timed-out
>>>   phy phy-1be0000.phy.0: phy poweron failed --> -110
>>>   qcom-pcie 1bd0000.pcie: cannot initialize host
>>>   qcom-pcie 1bd0000.pcie: probe with driver qcom-pcie failed with error -110
>>>
>>> This can be reliably reproduced on the X1E CRD, QCP and Devkit when no card
>>> is inserted for PCIe3.
>>>
>>> Fix this by checking the QPHY_PCS_POWER_DOWN_CONTROL register in addition
>>> to QPHY_START_CTRL. If the PHY is powered down with the register, it
>>> doesn't conform to the expectations for using the "no_csr" reset, so we
>>> fully re-initialize with the normal reset sequence.
>>>
>>> Cc: stable@vger.kernel.org
>>> Fixes: 0cc22f5a861c ("phy: qcom: qmp-pcie: Add PHY register retention support")
>>> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
>>> ---
>>>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 6 ++++--
>>>  1 file changed, 4 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..6a469a8f5ae7eba6e4d1d702efaae1c658c4321e 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> @@ -4339,10 +4339,12 @@ static int qmp_pcie_init(struct phy *phy)
>>>  	struct qmp_pcie *qmp = phy_get_drvdata(phy);
>>>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>>>  	void __iomem *pcs = qmp->pcs;
>>> -	bool phy_initialized = !!(readl(pcs + cfg->regs[QPHY_START_CTRL]));
>>>  	int ret;
>>>  
>>> -	qmp->skip_init = qmp->nocsr_reset && phy_initialized;
>>> +	qmp->skip_init = qmp->nocsr_reset &&
>>> +		readl(pcs + cfg->regs[QPHY_START_CTRL]) &&
>>> +		readl(pcs + cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]);
>>
>> I think it would be good to ensure the value matches platform config
>> expectations, i.e. !(val & cfg->pwrdn_ctrl)
>>
> 
> I think ((val & cfg->pwrdn_ctrl) == cfg->pwrdn_ctrl) is what you want,
> to check if all the bits we would set are actually set? That sounds
> reasonable, I'll send a v2 with that soon.

We can do that, currently the register (at least on 8750 that I randomly
checked) doesn't have any other bits..

> I'll make the same change for QPHY_START_CTRL, to have it consistent
> (checking for SERDES_START | PCS_START, which is what we would set).

Sounds reasonable

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
