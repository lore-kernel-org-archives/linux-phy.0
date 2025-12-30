Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80D1EE9412D
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 08:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcedGr/9zdMRDd7tvgwGDpwotIq2dgUY8AJrgwu2vAY=; b=38c6tCpt+p5O/z
	njHlcheWk51MRlDEwplvkftnC+sN2spwH2tSuwPC+JEMnyvGtP4x/+d1j/B5yrtiCOHCVQY33lJfN
	suyQzuFTp6bdp+Hpr34KrVHxohYuCBvuHxSxH8vNb75JPL8L7eXpPEf4Cr859Zp7CNIgI/eLlBL7X
	pzwpX2tF5jMR52csp6bCGk9fKk6HhtgSYS38ypfVC3AV1Tc4gUX7J8StI4RYjLo1bev/T80PclkXX
	MDGPIabrt6LWGwwQnn9qVx6SNgCUlYZy1Fxn00kjUsFzGU7hqPCosJ8GTfFoyqKQCzON6Msk6iygm
	4Zly1B/Of/1ArUMNZb7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaVZ4-00000004cD4-15Sj;
	Tue, 30 Dec 2025 08:58:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaVZ1-00000004cCH-31jr
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 08:58:48 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BU01I2Y322822
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 08:58:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZzRRO2mFcfrDlhW44h0g8PE60DyJAiXEqmg+unBXdow=; b=ZQfeF0npaiqCdEA+
	J/qlNaUYemTyvc6X+1TVFQ3uN2Kl+G7GZnITM5F5kSYh0gUhbA97xclccUTQEn39
	BH5rZvr1A2CiQmv/Yq/26LzlYVhbJf91zpVsHX0aGIffDD69nUllyxNkgb+25iJH
	S3ih8hZQluM8fIYQuxgpHsxMBk6qyyf/Byigu2w3x/zcG6nYMySXI1hAVqye8FZR
	CdE9B8wdl+916/ANniB2yuyDnxe0GwScJe53tncGsepvMXsd3okZAvZ5n6frWQJH
	5hIrmyACjHTUGzVoPd2+PtRugFzoJw+Ea9Sp0qwPVIa0h+mqCDVV7WsAXQm19RZ/
	//zPzw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bbc9v3xcp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 08:58:46 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b8a12f0cb4so11209572b3a.3
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 00:58:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767085125; x=1767689925; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZzRRO2mFcfrDlhW44h0g8PE60DyJAiXEqmg+unBXdow=;
        b=F5H933n09ylerPCzyXeo9yM7Y45mFcypQ8mUeQwl3E6Z5FRgIBr8GTA1PPQrw+NCSV
         oK/yyliE54gC8iE18YEvR4t36RXKmlDWIaYJEE5ITh3j/Tf3cEnW2nGv7r6npKGojNqS
         FXe4p5pbX7au/VCuj/2iK/32y+Z6tdrfid3HithTU/6fnP0MCfDLqABFD2PcvjXiGAF3
         QCjYb1NI0BGKnMNF+OqkRpdCgxJ5R/dijpnlROtTreTqvXcTFUS7L9bUtj/Uqkuz7R/J
         tEgNbvFralY58gq8sOCqdZKAI+T7Tg/ZihOlpmyfGFwvnesZRpERywgF0Pi3e3Q7fS/U
         Jnlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767085125; x=1767689925;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZzRRO2mFcfrDlhW44h0g8PE60DyJAiXEqmg+unBXdow=;
        b=GZeK7Y8o9v6rbxnS4k+3DuaAPmLgGXmoKwhE5KYa5WEggY8ERY3YkQcDeo1iA8BbJ4
         VhaSwC87NDiYgVQ8FSRbnnhhsDpDigRo4FMMMMrklKlziK+KJY8S+aef1e9cYIr+kENL
         2p6r/LDKl8fY3fGVLg1IMN7FxTPDYWZcyqMKksw+BsQBPVWyMtuIwNiJLUcmj3R57vPf
         rzMx0S2KIX9FMmucfeolvIFW1uHEuujuebLWm8r4ZIKsiwg1o1i/efFwdESL+ockqn3d
         aq7tdoLkrqNf/G66U8o5HLhSiUIuhNjKG2J1lCMxoPQJ+5TYOeesZqhS8qhOAlc5l9Ez
         qtpw==
X-Forwarded-Encrypted: i=1; AJvYcCWNMM4cc54gzOjgq1eIbthf47P2bEBwPK6OZBKVn7PMVKkTf5D++5ZQbDkgPk0oU8+zy54w+C0oxvM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzoVPkONmLlCppqhMjDSVQiu6VC3AF0VxCxepZB+53gd9EuhmW7
	lfz2sRTExYmEfRN9fePl7gg9Hk96RZAdTm8eCFca8CMAr7TUGPrXn1qXVMbuafS9sZHY5Nd1PUt
	tXk62m9RrTBdgCWa/tpU15lo888OdqZIeHr40UQZSiTfzOkimIoc1mV6YW0Zjz+WKRBP1
X-Gm-Gg: AY/fxX6KfMBDORJNvs+vweN9JrmYh5+ibT1PUAAvQrBaUFWp+e3ZbA4c/cqk1bPU9AS
	wZXDcJ6dmkL4r7/unIJhSrvbvVbDS2XQTLcVAZ0hVhIkuBLRUlR5jUVpoLaqVvZ3OO0MYZAKLrn
	5AVDTS6mmByWfmKklZvRoWZSvw4DjyY+TdVM8y2vBM5jS1aniCE+1Tb0oZLIkyXxUc9KMQqnlzp
	DauMu1nlMwANuBe/BS59otsx1HienWrjCGm9cHf6l3qMT7dFrpw66b+3YIm00PZ6jutRM75gAEv
	s+DC11ZIFGM+/LSG0TeHrP6rfXWe1W9CXBjjguLLkL+ncyjRodgyiyQZYSYjiB4e7cj/4qB16e7
	QhifO1cvG7XaVvyKxWTuy3PeK4GuPGGyMOq9iUxTYTkhua2URhEs=
X-Received: by 2002:a05:6a00:2a0c:b0:7f7:6229:fbb5 with SMTP id d2e1a72fcca58-7ff655aea1fmr32215686b3a.25.1767085125513;
        Tue, 30 Dec 2025 00:58:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGa7RsFKxyM4k21LTeY+dre+G2lOAepGj4bj7KAmTkd98cHy7Z6N3u51V1b+McTti/W7cVjig==
X-Received: by 2002:a05:6a00:2a0c:b0:7f7:6229:fbb5 with SMTP id d2e1a72fcca58-7ff655aea1fmr32215664b3a.25.1767085124989;
        Tue, 30 Dec 2025 00:58:44 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e88cd71sm31685097b3a.64.2025.12.30.00.58.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 00:58:44 -0800 (PST)
Message-ID: <a64f088b-8509-40cc-9f01-23c8b87a8f3c@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 14:28:38 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-5-pradeep.pragallapati@oss.qualcomm.com>
 <a33f5b15-d574-47c7-985d-f181c4784b98@oss.qualcomm.com>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <a33f5b15-d574-47c7-985d-f181c4784b98@oss.qualcomm.com>
X-Proofpoint-GUID: ILCOkghVT8VVNTNSTLfxd6LQw6uDPCo0
X-Authority-Analysis: v=2.4 cv=R/sO2NRX c=1 sm=1 tr=0 ts=69539446 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=a9xO4-qOGlSrq4zDlYoA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDA4MCBTYWx0ZWRfX12FMdt8/Q7za
 f9M/mLFuEmBmCtaIHtYt/Rho6RyoSOIuZ3icL0KE8TMWuESoNV4mxVRxM7XTEqbd1h1V0t6ZH/r
 r+hGCS6GFz1JVprPnunI+Viyy0QUxVQH+tJzR50/7+T9YhqR2qvnhqxSALGJB15NAzMO7wg1DwK
 k0s8TeVPzn9H0s3IyI83bKNNUHgWRTljmiddiiQ0RZB0poJFhl4WjlqGD78rZG1779zqLp6JGh0
 CNrlKIphrx7m5DW5GpFppf1WZVhj9DsBzakoBSanfXftJV7W2LkwWx1ABoZVeUPbW4et+prOxkO
 Eoir6qWc/AnY9iY4MPB92Yokpqd+xoPULxWa2DlJKIz0ELqFmfAIGYCoPjaEZiy3cB+KI/4UPG1
 rb5/7YHzjK3ZJ/8CdOlH3BfePS2Wpju4q7Pr6N48/9dJ4KosbTPploAQdpJQoIx7bu1DAkc2n/q
 K0XPlXh13hHyHDFqsRg==
X-Proofpoint-ORIG-GUID: ILCOkghVT8VVNTNSTLfxd6LQw6uDPCo0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_07,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0
 spamscore=0 adultscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300080
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_005847_879243_F31EDE24 
X-CRM114-Status: GOOD (  11.68  )
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


On 12/29/2025 5:47 PM, Konrad Dybcio wrote:
> On 12/29/25 7:06 AM, Pradeep P V K wrote:
>> Enable UFS for HAMOA-IOT-EVK board.
>>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
> [...]
>
>> +&ufs_mem_hc {
>> +	reset-gpios = <&tlmm 238 GPIO_ACTIVE_LOW>;
>> +
>> +	vcc-supply = <&vreg_l17b_2p5>;
>> +	vcc-max-microamp = <1300000>;
> I think they should both be 1.2 A peak
>
> Konrad
This (1.3 A) is as per Hamoa power grid, which is same as SM8550.
>> +	vccq-supply = <&vreg_l2i_1p2>;
>> +	vccq-max-microamp = <1200000>;
>> +
>> +	status = "okay";
>> +};
>> +
>>   &usb_1_ss0_dwc3_hs {
>>   	remote-endpoint = <&pmic_glink_ss0_hs_in>;
>>   };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
