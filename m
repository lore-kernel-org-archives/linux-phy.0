Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D8EFC021A2
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 19:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EP4FGGj3IZp5xqyZlsXwh53AnkPhKE6ExFSh/PTaF8=; b=3S+zAiGLUQzPIB
	n3bqGzOSO0hx7kundHkJ+ewcE6vrwaMKhySACxoYLYBriOLfusi5hTpIAPwCNFmnzIT7AN/WluUXo
	xi5VqxqkABCB9DyITltWyLtN+O+JGaFhm97Y/1xFuYFW2jvgW/OLaHyxJJCl7UANie9OPDRTEyeqW
	QrTBNUpuur1m43U2PoRmcjT8TRHlV0oz5ZSSGHM3ZOy1wzH02TgJxKCuViDJ+T+uH77aqLSbk1uMU
	71/sCMTt6mSfz1X/g0Q/oerSU5r2MdOw+U36+lrSycelJqYL6vK3EnHAqObbN+77EpqaAWJj02OJ7
	9gs82qzaWkvhNtVBKqyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thZZ3-000000017oz-2ovT;
	Mon, 10 Feb 2025 19:35:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thZKc-000000014Fx-16Gx
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 19:20:35 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51AHLxNp006120
	for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 19:20:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UHTGfvXpoiSary/QibcMXc8tUfGDgzwkgTomq3eCaA8=; b=d3onEnb7b6F2REdr
	agGZdVd0ylJuhAB5T1LsBZYP9jou9ZsTxCYsQ7jiqELxet6WR4g7AWTJSYia/CEK
	/RMJhKmHHDDQXVrrva4Y8rOHaecVIcZKY6AMRMw5Ah09H5aqsDNqA3PeRpxg87eV
	4JqHqbTpmwKCj9akV+m7yeBff2yF9YghM2gpAdwCATRTavOSp88Qq+ITX8a1MGCA
	3mp2HlSMglmFR2as9gZhW3cgU/NXxNfUrx6aOXT4mWlVXeLr4ZTIB+OxYCz97BxP
	xQ/VTcJD3DFrDVhrVeFWRyU2E8cvijdrO1AShoCrG5Yp+fGbHfZsqJBGgkk2iV3+
	oWOxsA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qe5msrag-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 19:20:32 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e249d117b7so5290446d6.2
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 11:20:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739215232; x=1739820032;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UHTGfvXpoiSary/QibcMXc8tUfGDgzwkgTomq3eCaA8=;
        b=cKqMcvuVLSOvmRnSwmH2KVkuAkoBQBt9j54FvddIlmbkygrJBXTEHIH7Lvf+eDgK90
         jfl0PR2wQyA1J/KYWVRFA7vWhQU8d3STlKavOWGG17obkiVDwFxzPmrRzkiFgo5AA/e9
         B24I4mXisd36968iCADIdKqFKeeK6VVj+zVA5AeIRvSCJ669Hiu0xSfR1ZNFGGlX6KD5
         vHVmXV3GNs2DeLCFWZzzK4KKLFFdO8fQ8Y/qCSf/BlfrhyrLxUib+nzofi/2a0q0SMpN
         J/JdauuPvtFeXGzj5Ja/AxYMCo9Xgvk2g1LiyDQ3tALkjgUh9olFxN2HV6ORBiyHk5aa
         pU1Q==
X-Forwarded-Encrypted: i=1; AJvYcCU3K1QC8GJeMWfjt4WePJm0DnIdGwTqzzjr+0Rni5XIdSEvlQ+4nDm8pxvK1cRQZO1pQqWUwzZArFE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/zjaEBfAqWnpJGD9yxN8Avm/aZRmBifZX4uDGxR2sMau0rjB3
	Tgv5KL2dGo7anAYseBUOaURm6tcWNZy6jP1rIJxM7b8OKH2qSjZogEjBLBLVgPeXY0c7cHQ5pWZ
	jVARaBHgFGbYFJkRUTRAvqn0S4Dh+X7W9uTTQS5ZxNOsdEInCwHx0p1UVNndlmcud
X-Gm-Gg: ASbGncuDpjPGMUISWCErX9C8rZ4d4+EoypvWn3XETrSabQUUBfITZGOsrvr5wFeSAP0
	sCkvB+kiZ+iQZpOGEiNxta2VAeNWJEK/Fb42raEdK7yfXhz1N6rpmpeUX6SuednVNVhTX+2sNNc
	R0AXYaFQbmEezXOqcrPGDEQ5R8q/jQEBO1G4mg0Gc7mb+q9/OTopFsbdvffiAUiASZybrg6lGgl
	OIabw886FBKs/HV+rZezQKhjQGgfMz62CxCO41KSMkpux3ws46JWdlX1hwI5PftMwe8d4Jx4VC6
	d1D3e4Y+ybHjI3BY8fmuh/IADaQAJxWgq1mlb7DRJh3tc1awEFT86p/LWu4=
X-Received: by 2002:a05:622a:1c15:b0:471:8a2a:d9b3 with SMTP id d75a77b69052e-4718a2adb82mr41530491cf.3.1739215232124;
        Mon, 10 Feb 2025 11:20:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGhPZhlsQZyrDwqBCWlfYeWNtHXkddUkvcf5DV4cGq6f1WRrWGhD5y1vSBMq6awgol6oyxogA==
X-Received: by 2002:a05:622a:1c15:b0:471:8a2a:d9b3 with SMTP id d75a77b69052e-4718a2adb82mr41530101cf.3.1739215231617;
        Mon, 10 Feb 2025 11:20:31 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7a58abd76sm549411266b.26.2025.02.10.11.20.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 11:20:31 -0800 (PST)
Message-ID: <354f8710-a5ec-47b5-bcfa-bff75ac3ca71@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 20:20:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 SoC
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-4-b3774120eb8c@quicinc.com>
 <vifyx2lcaq3lhani5ovmxxqsknhkx24ggbu7sxnulrxv4gxzsk@bvmk3znm2ivl>
 <be8a4f65-3b36-4740-a4f7-312126cfd547@quicinc.com>
 <ferdaevlfrpf2ewzcct7mqyxltvmt6aaar4fujxfehrmizm3qw@aaroprnpwlxq>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ferdaevlfrpf2ewzcct7mqyxltvmt6aaar4fujxfehrmizm3qw@aaroprnpwlxq>
X-Proofpoint-GUID: CQQkHnQt9AhjTcpOoJmGK1RCY0BGK-a1
X-Proofpoint-ORIG-GUID: CQQkHnQt9AhjTcpOoJmGK1RCY0BGK-a1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_10,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 mlxscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 malwarescore=0 spamscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_112034_422935_DED7230E 
X-CRM114-Status: GOOD (  22.90  )
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

On 8.02.2025 11:06 PM, Dmitry Baryshkov wrote:
> On Sun, Feb 09, 2025 at 12:47:56AM +0530, Nitin Rawat wrote:
>>
>>
>> On 1/14/2025 4:22 PM, Dmitry Baryshkov wrote:
>>> On Mon, Jan 13, 2025 at 01:46:27PM -0800, Melody Olvera wrote:
>>>> From: Nitin Rawat <quic_nitirawa@quicinc.com>
>>>>
>>>> Add UFS host controller and PHY nodes for SM8750 SoC.
>>>>
>>>> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
>>>> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
>>>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>>>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
>>>> ---

[...]

>>> Use OPP table instead
>>
>> Currently, OPP is not enabled in the device tree for any previous targets. I
> 
> Excuse me? ufs_opp_table is present on SM8250, SM8550 and SDM845 (and
> QCS615). So this is not correct
> 
>> plan to enable OPP in a separate patch at a later stage. This is because
>> there is an ongoing patch in the upstream that aims to enable multiple-level
>> clock scaling using OPP, which may introduce changes to the device tree
>> entries. To avoid extra efforts, I intend to enable OPP once that patch is
>> merged.
> 
> Whatever changes are introduced, old DT must still continue to work.
> There is no reason to use legacy freq-table-hz if you can use OPP table.
> 
>> Please let me know if you have any concerns.

Go ahead with the OPP table. freq-table-hz is ancient and doesn't describe
e.g. the required RPMh levels for core clock frequencies.

You should then drop required-opps from the UFS node.

>>>> +
>>>> +			resets = <&gcc GCC_UFS_PHY_BCR>;
>>>> +			reset-names = "rst";
>>>> +
>>>> +
>>>> +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
>>>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>>>> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
>>>> +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
>>>
>>> Shouldn't cpu-ufs be ACTIVE_ONLY?
>>
>> As per ufs driver implementation, Icc voting from ufs driver is removed as
>> part of low power mode (suspend or clock gating) and voted again in
>> resume/ungating path. Hence TAG_ALWAYS will have no power concern.
>> All previous targets have the same configuration.
> 
> arch/arm64/boot/dts/qcom/qcs615.dtsi:                                    &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
> 
> It might be a mistake for that target though. Your explanation sounds
> fine to me.

Let's use QCOM_ICC_TAG_ACTIVE_ONLY for the CPU path to clear up confusion.

Toggling it from the driver makes sense for UFS-idling-while-CPUs-are-online
cases and accidentally also does what RPMh does internally in the other case.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
