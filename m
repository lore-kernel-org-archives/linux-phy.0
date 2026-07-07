Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A78FC43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 05:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcMR4ZrabMqiwniYAPW1kq3//tR371ZrM0wjDJMH/7M=; b=s/CgwJbE6aHgjg
	tCG8i3aT/XOyUX/KDfbgGXSbOvcNHsV535DUa71kn+hmYTi51SISViVlGwHQ76z/hubM491u/jB+s
	TucNwDbqiL1aeApq8Jc1Y3DUv3zeJp+rA0E5Zm8ixh2xKMfwmbcLPLZcGOuhoL8EpRa5JTkHeuoVk
	0YeQoRspbAZOoFWtjgMeb2LkKVl1Q4+CSob4vZNsMmzhQsetMBHZ7fe0Bepw6AB6O704HlopDdCKG
	sAhEHNQhmyfZvXuj+WteVvzrxwF9jAQxFVSfrA7Rk0MB2nCeLmwTeYu41O68L3r/jE33SNFZhnuOS
	FNJvdZy8eLbMIfPSLdZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyFz-0000000E7dV-3Lja;
	Tue, 07 Jul 2026 05:22:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyFx-0000000E7d4-0mZR
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 05:22:06 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66749Ifr2658346
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 05:22:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YHMOr/irSJL3Cd18may6yQFNWy3Xdxd56KJP7bnvH+U=; b=hRKT/rEP9u86dT/i
	ijdu0P4uFQxuA/Qo9poXS81ZM6MLlseB1png9F1GVTArtrsBJp8su80VAAuyD9te
	cDRgKnQWk+nkwQ241tG85PaZwgvByTG5t2Dm41581cg30McPAtiT9RvtsVCpsASl
	dfsP6u2QdSHRcz144FXLuqpzNF5xWW3lwXWeq+j9Ira+XvrjZyAU89XLkzHx7nrW
	QFgtL2/XTnLxgIRmA7ThcTNVnNZuwiGrd/vsm06dmBR1mQoy/nfmOBxLJ9SZR5ne
	lPmVNdwYvcZ3rxIsd6IF1x/cN7dNrP9kj6HRuda1KjeqeSXVejmXjDCpqYjD/MI7
	geYNpQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8a3r464t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 05:22:02 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-37e17ec1940so391645a91.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 22:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783401722; x=1784006522; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YHMOr/irSJL3Cd18may6yQFNWy3Xdxd56KJP7bnvH+U=;
        b=ScOsgbYa9cuccE3+FiGVOC6KDEU0fFasqzptlg5Nq36waen2gQ0burA9cuOOCpmQ6h
         bcoH6uXbvl8jeJ8Z1LYr1x3drddLGHgHfTJ/1tAslEJnmUxqG9Id6YUGhWSPrmORrKKl
         sXgHB9/qjAgvRGiWY+Er9wRhvtR0PgB6CXrvSNRqtLhWCbJl0niUiye4D7WFIea53m/i
         n62Ah2RKgxgIxKM01jU0A/EWauRMqGijMyBq9WBvKvAG9NqvAS3NucdXb8UDy1sMMEUW
         ukg4mKDJ/OsmOw0bUbIcvsAn0OChYqtgvjpbbe3rLm+JfQXtZvmcKYFgEnj0PJ/AbknB
         V1VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783401722; x=1784006522;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YHMOr/irSJL3Cd18may6yQFNWy3Xdxd56KJP7bnvH+U=;
        b=Xt+jV735EeF9PjUVQLios2udnfIsyRA1t+Os6CFSze+uwFdN/bpmuBtN/oEneAmgB1
         0ZLAAEaFgymTxBuQm5kVMQ+04UMEZhnU9L9P2bbjxDowZNxFVKWKV7ZOEck0idF+yF1h
         cU9KcJSn/mq5YyCEF0p5OGvZl1ddxyEl8PLfcYgyEJuDwom6FOThiEtkEwDrhefWtbp+
         xw2tyfiqRZmVNNm7QPsJTgIOk+qO9nn0u9MLu/X4vTq3Fm7eODFnYG3XeYTlL7DKsmQW
         YQdvw5rPOQZ+XgogbxRiyVIGDMEA5E/mt85QUkNoz3h+hYFYJGDzRHGmzaFy0ufuo85s
         UTnQ==
X-Forwarded-Encrypted: i=1; AHgh+RrxmiKGdrA5hl5h0EQoqiaQkwyN1aeUovYqI/oKbgyx+dvWRNwH/IuWGzaZeU3Czoyaiwm80duL9m4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6zXUaW9yNjyw8gaduM5UGQ8ZrlhJRkhVkP9D9vTptGvpINVRr
	2zdpbL4BpiDOUt9QR8LOfBTvLD0rK9vOq1bg3QbcEU1AOfrlM9vfllbWSzavvpG64GbUT5AlMuM
	vnZk7qOKubDrK5fszW+Leg4APZertygny1YNFMkQ6yQ9ZzdCj5QEU/GgIpvxDCX8cy88B
X-Gm-Gg: AfdE7cmJP+18D/c8M+k+Wz2UmZ0Rpe6/I+IS9cmMzMnzO/tEWgrXYTqkk2e/A0yVWS0
	Hm+rTxXhDEyyFEuO82Ad5YLPR+P6/DNSA/3bm40JISM7JGFaGPHKPio8vY3stLcfbhO4dp9xRjC
	+TI6HMDFv58V1eXTgDvs7fmkCY4SgyLiz8yeJ3EuWKy/mHEEZ/xXULTxwSkVZ2rWuRHMNcHR8Vm
	Ga1VAMg/xPhNjDaneD+Npwn+uNx9WQm2W1LKTk/o0GE14ffM3WmHqZ2r3Nj/GWzekZnEeQsrzaB
	PYWD9pP6wG8yafAbPJ24GuRvtP802VoVwBtQADYO/Q0apVlQ6TtADfh1hxZzSOu/QMB/sVRhS4m
	x1wslxVTOLKGUrycLsVnSrcXirSY8QClnsLcx0QeY/FJerclnKD+h63PffZ8FacGyNzy0psfaMK
	y2La9w
X-Received: by 2002:a17:90b:5291:b0:37e:1c8f:3dff with SMTP id 98e67ed59e1d1-38755a562ffmr4010409a91.11.1783401721677;
        Mon, 06 Jul 2026 22:22:01 -0700 (PDT)
X-Received: by 2002:a17:90b:5291:b0:37e:1c8f:3dff with SMTP id 98e67ed59e1d1-38755a562ffmr4010383a91.11.1783401721206;
        Mon, 06 Jul 2026 22:22:01 -0700 (PDT)
Received: from ?IPV6:2405:201:c409:b03f:6d0b:bb83:7a67:4093? ([2405:201:c409:b03f:6d0b:bb83:7a67:4093])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-387ceb724b0sm427245a91.0.2026.07.06.22.21.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 22:22:00 -0700 (PDT)
Message-ID: <c48910ae-76e1-47b8-8e08-6383b3bb6e0d@oss.qualcomm.com>
Date: Tue, 7 Jul 2026 10:51:53 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 9/9] arm64: dts: qcom: shikra-(cqm/cqs/iqs)-evk: Enable
 PCIe PHY node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <20260701-shikra-upstream-v1-9-e1a721eb8943@oss.qualcomm.com>
 <6e42bc67-9a2f-4e64-bb49-30fd845263a2@oss.qualcomm.com>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <6e42bc67-9a2f-4e64-bb49-30fd845263a2@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDA0OCBTYWx0ZWRfXz5vu97kMy/4p
 1NXVqEe955LA/dLpPDU/qbRi6LfdDigo+fpKINge0gK2ffVAIo9n4tZbffsvxDoiKCt9/pIASt7
 gGxg8kDWttU9Zhm36E9aBPwQ/9jbXNieyeTIx47AmKxwh8b1UaU9vuXWufo7KJZMJMzI7MeRdVY
 aVeQNa/QM9QSWVw8h2D+njVxB4ZpcGJNtU2G3gukkLkHFnatS6Uy2djmEtU3hj1S2nRm/pa1sND
 QgLOoF9YoinZE4QD2NvJHFzs/rpivnEWrB5R0duxqE/vDl+wfFrPb/K9bGuim3K7/IPI5H9kGuH
 k+JR2EXx/bWGEy4wXCq5+GbbzVfvRYoL650SK8vrNpOkfvUFQMB0XjyxyQXhvgf6CK9GdCVjalR
 Tj0dyQQBewgK6yaEwGTq8/tNAiGyoPboK+y3RKBmMTatOtv3QJcWwfsJ7jajCcoDk0EZxOAlYEE
 NmdyfwHOnDLlWZo6JEg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDA0OCBTYWx0ZWRfX7t3AfGdTrZoa
 0YWp/xgT/lDwxJO4L1ais2XPpsNO3vyz75RiGp3soiTSSPV5eg4x4EdXba4kEDVIgJnhLAEfF7m
 sJcB794QsweodhblHQh9KDhdsFMtSW8=
X-Proofpoint-GUID: 4o5XFiCgeNDfOEiM9R5Ua9_8o3nQlX-7
X-Proofpoint-ORIG-GUID: 4o5XFiCgeNDfOEiM9R5Ua9_8o3nQlX-7
X-Authority-Analysis: v=2.4 cv=OKcXGyaB c=1 sm=1 tr=0 ts=6a4c8cfa cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=aEzKkH0P_WG9QAzetnEA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_222205_377960_CBA5BB57 
X-CRM114-Status: GOOD (  15.14  )
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


On 7/1/2026 4:06 PM, Konrad Dybcio wrote:
> On 6/30/26 9:02 PM, Sushrut Shree Trivedi wrote:
>> Enable the PCIe PHY for the single PCIe intance on the Shikra
>> CQS, CQM and the IQS platforms.
>>
>> IQS platform uses a different powergrid than CQS/CQM which explain
>> the different PHY supplies for IQS variant.
>>
>> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 7 +++++++
>>   arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 7 +++++++
>>   arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 7 +++++++
>>   3 files changed, 21 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
>> index 683b5245923b..06ad32041546 100644
>> --- a/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
>> +++ b/arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts
>> @@ -60,6 +60,13 @@ vreg_pmu_ch1: ldo4 {
>>   	};
>>   };
>>   
>> +&pcie_phy {
>> +	vdda-phy-supply = <&pm4125_l13>;
>> +	vdda-pll-supply = <&pm4125_l9>;
>> +
>> +	status = "okay";
>> +};
> I think it makes sense to push the status=okay to the evk file
> (because we already describe the PCIe switch there) and only keep
> the supplies here (because they differ)
>
> Konrad

ACK'd.

Sushrut


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
