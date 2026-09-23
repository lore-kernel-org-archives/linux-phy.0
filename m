Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33033C982FA
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 12:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiDGTBUCHWaxom9+Y99AD3Q0G4Jh51O+EVLRSLCdsBQ=; b=Ph1arTwSC2WBVs
	bH6sqz5SzN+pU70CvleG0QsgZOo7xJI4Xt7zNK7yzHXWlDht6jPTazZujHY+Bvp98sdv8DHOHxgd7
	V4xrSrwiAcGJbWXuaRCajKix/jGJqrM+KWXq2i5KVMhBn02d18kBGzZYhbtyoOjAIWK2It5g4kc1f
	DuY+nxUoclcj+86SGb/AEqTX789WK/evdsS7icigYHN4uQkUaTammqMWvo36ApIPdp9h8X89N9+gw
	wlc+c/7wJwP4ChOvcWusGhbQdHvFLeypaeRabIg+d/xF+JCoqJ/HeSZNUSefIUgLdV7qNBmNceYJ7
	8PtzyTh9kzR6KAtbUjmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9M7o-00000008Fh3-18bG;
	Wed, 23 Sep 2026 12:31:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9M7j-00000008Ffg-1hbg
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 12:30:56 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68NBbV9D3772179
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 12:30:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	P2KMjpECG8nbDMf/4txi0vvfgQ4Eaw95S46ULcI2wFM=; b=URbtABXvmexx3sbp
	0Iq8Qy7UnglB1B1wqM08d+rIFKiY/wGdbmVLlMafKrfnaaR103Mx0gVDYPhatMGY
	LAtfStdAycxXjyqnMTkjUgZq+1KUiJkfnAFPJh5PI7fiGW7fld8OXsVELQze2HLE
	T5DLSPQMek4d2AW4JLxccKdoClCBgWGZYrW+Kkjnj+YJDrupl/EeA48rRZ5TSz9e
	iHzg50j+Q8+QPRFzbUVr4M7BEyvIr1qrlVtW9lFn5ODzjBt72CZ9Z7saMZIrqp5G
	DjOahZ/LyT0VZ+7oWmViwHt9i80mREtW9PocNnUvVdZknwKVQIQBKFyXEvJ5roEK
	HIUipg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gvdb60cp3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 12:30:53 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2db87f759c5so8490025ad.1
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 05:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790166653; x=1790771453; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=P2KMjpECG8nbDMf/4txi0vvfgQ4Eaw95S46ULcI2wFM=;
        b=Gu9fYUnrIF3QJCpPRL5ijYcvbtWOFr35achcyb8WVzwghNh79LJDZVYSd/dEAoJ1ON
         REYZM+KRtMbk6ZDmJOqGt04p8Iz57YZfoHlK3aJe66p9Vnmu9xShAaHhapO5hMWtHjRY
         bx7f6KXoBtOmlacn1dwQizqxbCCVX0/LbAAqp6YhdLp3NVbbwNzeeQXFE9wxjAlGdjis
         kZ63bO2tlB8gBqFEg4yom5Rxa+NiHcQkaBmB5zcdlFc0R1FtVPrpNZJqkcJ7DsajJcvC
         rssFEabcEgIkKjFTU57BwercLn/k1fe5x+NEeH/YP5FbjshAWBDyapmDvb7L3kCu+RrM
         RP0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790166653; x=1790771453;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=P2KMjpECG8nbDMf/4txi0vvfgQ4Eaw95S46ULcI2wFM=;
        b=ZS5fEMvNOYlfe/Lf+0PmfQdfNICrvIdIfTuIim27nEyvhRovEaYJExD+R8Z/UHBPOv
         HXcFCTjE3Uk8uCEjjUMCrgD7KPzv4dK7IlQ0NreCEDVFRK9W9OcC7ZnaGEXUhgmy0Kt2
         JRDZ3Ecu42wFFCThrK8jMVm32bQZ1F1OMgIwZ95PiQiwnUInYfo2Unc3pg685wVqP1VG
         xBJdqDqVmTVXKR/Xfg3lVfeaUCMHSxGnip8tznd56u++vE+Px57I1nJimmIX9MlKgO0s
         dOW0AEmMwfGiUgLLQ6eiNsS7LCb9RwctbCYiP1gtT6CzCE89qmjJZ6adefeOvhchciY3
         w40A==
X-Forwarded-Encrypted: i=1; AKwUvBwR4dnif1wsUye+zgyxRHrIPRb4ZbU/NzUsK+vDPtVNMYdHxUqwtAmXAghNxb1XsEqAMRPPUGk/Rg8=@lists.infradead.org
X-Gm-Message-State: AFuF++kduNCfkJV1fhbMHskC8hlKihlSDlVOYdtaGlIf5CmQXe9LC0v/
	Si6m9jDwfWs95T6R17EzXvhOi0V/vmWmmLydhgVv+wxrsvyCkt40v8pHyhR3/zPjWPvD/v3iuaS
	R+HvcZX8v+WSkkGUF0oF5rvNYsWln2M6bfB2JwFCfaqWVqLjhWyAf6J36HgCReuDfWDbK
X-Gm-Gg: AYBFou2xsP7Cv+bnZMnHIjxL/MG1kuvXFlu0Lqyzd6w9/vOal4pD8NZ0JgphjgZE69E
	EQk58lBbPUR3vU7NjxY4/yjAgbqgd05qCsKumrEY9VsiZJlYW6IMVEV8LOt0shHAgXWZrImTAIT
	dcBoGe7hhOLxpQK+1wTZRYLfK6mKM/pIAsWbnUYoM216ST6PEQa8Zq6dwmOP6vkBdCPgc6mr2ES
	A5kNSlLsuR3v9/yc8NsjUih/nk/kMOSPvCVq9xfB0YH4/qKPbn6PRNgLR10WfCB4kI1II+POKCK
	DdqRmRJWklmrq4e9RQexp2nfgkTnweaMDfB9AQN4vxr13cfx6udJvLdSC+ld/bEKKONe9Z9NbSZ
	zOhgkeX7O5uqfBdOw+ilYjSCFzzoEenP1
X-Received: by 2002:a17:903:46c7:b0:2dd:ad74:6d12 with SMTP id d9443c01a7336-2df69d6bb3amr23167465ad.24.1790166652525;
        Wed, 23 Sep 2026 05:30:52 -0700 (PDT)
X-Received: by 2002:a17:903:46c7:b0:2dd:ad74:6d12 with SMTP id d9443c01a7336-2df69d6bb3amr23164885ad.24.1790166648501;
        Wed, 23 Sep 2026 05:30:48 -0700 (PDT)
Received: from [10.218.42.145] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df6a5a69f7sm9548575ad.16.2026.09.23.05.30.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2026 05:30:48 -0700 (PDT)
Message-ID: <91ef0d74-2168-4bf1-b390-98d3963db672@oss.qualcomm.com>
Date: Wed, 23 Sep 2026 18:00:41 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] phy: qcom: qmp-pcie: Add endpoint PHY configuration
 for QCS8300
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
 <20260921-monaco_ep-v1-3-63c5282fb0db@oss.qualcomm.com>
 <07ad0b0e-f666-44f7-b5a2-bf9ad016b297@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <07ad0b0e-f666-44f7-b5a2-bf9ad016b297@oss.qualcomm.com>
X-Proofpoint-GUID: 9I8M0YNU1cBYGleg-o2A85tnbQ4JZwWl
X-Proofpoint-ORIG-GUID: 9I8M0YNU1cBYGleg-o2A85tnbQ4JZwWl
X-Authority-Analysis: v=2.4 cv=QeXzLcbv c=1 sm=1 tr=0 ts=6ab3c67d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=Rbhxv05cawg-pCmlirwA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDA0OSBTYWx0ZWRfX0o1p/guft3Is
 J4Zpac0jVieZ7Yndbdgbjunw8oP7073MteIz+2DQMaNIeEPfiZeatCM+OQeidup7kDeQ+MNWB8V
 hPM6WsA+aKanBj1zI3hdnKTVCtxC0kA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDA0OSBTYWx0ZWRfX8T6CP82I1aix
 GSRIfsY9kRbLJDpEdqOKikXlkllU0SV0uzpSDkNgoQKNbGY7+76XhWEptCtu917DZ3Gu16YzaqI
 M5/0UDMJHjQxlrJwARoju5VKXjCUSd0PXmFxdVFYdHvXAxPmxLpHM7VmcF4osTpH6D6pDFJB6zV
 +GW6b8A7AdD44FhO9M0yX6XuXMYZtk9yBZheoClVIsVVCkTsKBuguPCFN3+g9mDHrYwlpREvTzX
 nfkOnmpV9zFGL3PzeHcYGF5SNuBeX27EyXKtUyxYM6UCew2UbVXTxdVMdBTzIGXRznrUFTCEBIg
 tQE3ZbQFEX+fIM6kZ39F6ec6/B457rTQmWVTTT4MQlfZ4dEIuK4lusXAaDOyrl9QUvLWjuMXxcV
 8ro4aOlhrFfgYLxaMj5xg3mAmckngs6tybBpDIpZl0bCBudETB9SwaSeQgat+HvB8JVc9HO/soh
 Vn+YkLrnrMItN4rWbQg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-23_04,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0 bulkscore=0
 impostorscore=0 adultscore=0 clxscore=1015 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609230049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_053055_579814_74999988 
X-CRM114-Status: UNSURE (   9.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 9/23/2026 5:49 PM, Konrad Dybcio wrote:
> On 9/21/26 12:58 PM, Krishna Chaitanya Chundru wrote:
>> Monaco supports PCIe Endpoint mode on both PCIe controllers. Reuse
>> the existing SA8775P Endpoint PHY programming for the 16 GT/s x2 PHY and
>> add a new 16 GT/s x4 Endpoint PHY configuration with the required RX
>> tuning parameters.
>>
>> This allows both Monaco PCIe controllers to operate reliably in
>> Endpoint mode.
> Does that also apply to lemans?
Lemans and monaco EP phy settings are differing.

- Krishna Chaitanya.
>
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
