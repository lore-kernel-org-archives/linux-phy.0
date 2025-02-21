Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D53D9C021B3
	for <linux-phy@archiver.kernel.org>; Fri, 21 Feb 2025 19:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CZxk5+AiWtOmuMOD4uNVWw/WHc+vJZPTIKMbYY5mVL4=; b=Rs7dGyRh2ZnBvv
	06jt2/uONoyzMXJDb18dIoHxbbAR0wd3oJLNDxkscbWRnYC9dRiseNG0FDI22HJ6b3wE3K3UVus92
	ejUEAldi6bEETfWNQvpwRYqz9NeNWes1KE0BEfJV9DRhbICLoV1tmsBkYUMgV5mP9gVWGUkE1oI9t
	EEKjTPQAznMh8pd3eO0QRI7xpc4vrWdqQSqW94IwSrcSE/AQblBauXfJG20/eAlSjqMkzSa4lQjxZ
	1HgBSzudZMHpzMcakZna4oKqYo1SsNQ+UKQFvHoKf25czuX5G7kzHUYv/lpyHWZPlLhNIEA9eEuD9
	zP76jPVv3J3k7PdeICww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlZ7r-00000006hTC-3GcN;
	Fri, 21 Feb 2025 19:55:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlZ7o-00000006hSm-340q
	for linux-phy@lists.infradead.org;
	Fri, 21 Feb 2025 19:55:54 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51LEbxQm018822
	for <linux-phy@lists.infradead.org>; Fri, 21 Feb 2025 19:55:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t9CI4ewUgEyzTJqAzQB6Mt8Kix2RX6oXH+KrXwXC90s=; b=RBIciXhZn90kPric
	hEW+cQMjH2EOYIKX7givOraXeRdCUfpi6uA2WaeJz3ToIKYhe0qyI+MTJHKvOsrB
	/F7XF4t3XHVc9ursYVISRENJwo/V5Z09jV3deCR5dPuDUFeO3Al9vxoFpfgrkXYm
	pOraMOQrZceF1sqmQ+LCgFKV/syTMpSDtIn+zBXjRRI5efW48mgoxF//PkYAGqRF
	Zp4R/+aI8lOeWMam8GHbuP43Z+WdlPSuuyRNS+JlVbMQfO9KDUaymFT+Yhyknprg
	CAQ37fakzASxuBgD29a2pnsL0c2tpn8lDqgKFqtNqZ4N/UaBiNI5qr7MhYCiMxWA
	wrwUDw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44xm3rjcq1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 21 Feb 2025 19:55:51 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-471f842ebcaso6279971cf.0
        for <linux-phy@lists.infradead.org>; Fri, 21 Feb 2025 11:55:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740167750; x=1740772550;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t9CI4ewUgEyzTJqAzQB6Mt8Kix2RX6oXH+KrXwXC90s=;
        b=CRWMJfhhgReJKDZQO1x6msFYc8+KKc5kQo28gNpY1PmEUx9hAN9qs/7/8q97GiRllj
         igMVmOf6rmkzF7OiVlmyvoqiMzXC1rgCAHTpFja8LNK2Pq8M/hSOP3+aVzge5HXwWyPi
         0uiDgI9oAUR0n5xtGMdGcdNSuZVt/xSuFbv4drIIhR68rnisrBYbDnUEOvBS3SafxFiC
         6Z+7pwY22OdXLtrKkJpKZQ3SR2GOTcnTK0f9gVU5lhsvKAmwoyDy0VPZr09JlNMBspBV
         nXbwpNdadm55v6wbal9Am82eDW2Yi96nwT02nYHfaMN8GkfmLL80BMGPYB6fsGQGWHIg
         XUTg==
X-Forwarded-Encrypted: i=1; AJvYcCWPrWKQ2eoAqtiCzaXrpSEWzaqtpCNaMmXvCmEeKE5iTpofpwb+I2N9ycnFGuiU65ibdOlduAZCsOo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxupj8mboLhdzw6r2pzLnFkwcscjpC/WGz8sigJTcTluNxP6KXz
	LzIJnSElgx3S5v4LYC20mO62Ix8SwtwVeuYObrBbDRpCoDVUd2T0LQtFkJeWuyIVz7oxrsXGIb2
	P8vY8sAMmBYnM5KGR4p6nUMQsrOiw/A3weIb0RRrAgY88Rg8xbh7A12RANntIXMrU
X-Gm-Gg: ASbGncsAAmmluzTX47x82qAy3HE8PP2jrAFA26y1NowOhhBFBES9BbxUoeRnuJD6TaG
	Pz9Zzpa5f+hbZnFU/jkJkinGzhY4y8pHfm391UowYhXVWvLCEh8U6VheCvEjoXO5IJsRa//7UMb
	cMrR191svrm02v7QAhqD3Vu0luuFhAuzlMOJTL1RTDGa1RYhO/M2SW4dewxY98f0qeHYVWeqq5e
	H8FyrFoUwGdWEmeUc3eUEZv/pQai2JTAbYgVO07G6M5yljEMJZlNTCVZ369IAOQy+imZ0rOm8VJ
	gQr9jFb3LinKOPs4X6ZanmfcvqVc8bipmhjODCvLGcf/zODLBfZ1arlAw+XCSRm9jRTT3A==
X-Received: by 2002:a05:622a:1827:b0:472:1743:80e4 with SMTP id d75a77b69052e-4722294ffd4mr24954191cf.11.1740167750423;
        Fri, 21 Feb 2025 11:55:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHBB57oOz/RtjhV08q10omNd3Gy4LKkAO1OPSNKN9Bm6dX5sHl8k2S65DJngPpO75nLzKw93A==
X-Received: by 2002:a05:622a:1827:b0:472:1743:80e4 with SMTP id d75a77b69052e-4722294ffd4mr24953551cf.11.1740167749089;
        Fri, 21 Feb 2025 11:55:49 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abba0ab1457sm974823066b.73.2025.02.21.11.55.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 11:55:48 -0800 (PST)
Message-ID: <ebff1ea6-e4ae-4b3a-9f51-4fb9bae50222@oss.qualcomm.com>
Date: Fri, 21 Feb 2025 20:55:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8750: Add UFS nodes for SM8750
 SoC
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Nitin Rawat <quic_nitirawa@quicinc.com>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
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
 <354f8710-a5ec-47b5-bcfa-bff75ac3ca71@oss.qualcomm.com>
 <20250214065009.w4rmrbbejnywh6nt@thinkpad>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250214065009.w4rmrbbejnywh6nt@thinkpad>
X-Proofpoint-ORIG-GUID: FAis9iMQbkBkyOeZgh2uhWDTHCroO47d
X-Proofpoint-GUID: FAis9iMQbkBkyOeZgh2uhWDTHCroO47d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_07,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502210137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_115552_892819_81398E3F 
X-CRM114-Status: GOOD (  24.50  )
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

On 14.02.2025 7:50 AM, Manivannan Sadhasivam wrote:
> On Mon, Feb 10, 2025 at 08:20:27PM +0100, Konrad Dybcio wrote:
>> On 8.02.2025 11:06 PM, Dmitry Baryshkov wrote:
>>> On Sun, Feb 09, 2025 at 12:47:56AM +0530, Nitin Rawat wrote:
>>>>
>>>>
>>>> On 1/14/2025 4:22 PM, Dmitry Baryshkov wrote:
>>>>> On Mon, Jan 13, 2025 at 01:46:27PM -0800, Melody Olvera wrote:
>>>>>> From: Nitin Rawat <quic_nitirawa@quicinc.com>
>>>>>>
>>>>>> Add UFS host controller and PHY nodes for SM8750 SoC.
>>>>>>
>>>>>> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
>>>>>> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
>>>>>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
>>>>>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
>>>>>> ---
>>
>> [...]
>>
>>>>> Use OPP table instead
>>>>
>>>> Currently, OPP is not enabled in the device tree for any previous targets. I
>>>
>>> Excuse me? ufs_opp_table is present on SM8250, SM8550 and SDM845 (and
>>> QCS615). So this is not correct
>>>
>>>> plan to enable OPP in a separate patch at a later stage. This is because
>>>> there is an ongoing patch in the upstream that aims to enable multiple-level
>>>> clock scaling using OPP, which may introduce changes to the device tree
>>>> entries. To avoid extra efforts, I intend to enable OPP once that patch is
>>>> merged.
>>>
>>> Whatever changes are introduced, old DT must still continue to work.
>>> There is no reason to use legacy freq-table-hz if you can use OPP table.
>>>
>>>> Please let me know if you have any concerns.
>>
>> Go ahead with the OPP table. freq-table-hz is ancient and doesn't describe
>> e.g. the required RPMh levels for core clock frequencies.
>>
>> You should then drop required-opps from the UFS node.
>>
>>>>>> +
>>>>>> +			resets = <&gcc GCC_UFS_PHY_BCR>;
>>>>>> +			reset-names = "rst";
>>>>>> +
>>>>>> +
>>>>>> +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
>>>>>> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>>>>>> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
>>>>>> +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
>>>>>
>>>>> Shouldn't cpu-ufs be ACTIVE_ONLY?
>>>>
>>>> As per ufs driver implementation, Icc voting from ufs driver is removed as
>>>> part of low power mode (suspend or clock gating) and voted again in
>>>> resume/ungating path. Hence TAG_ALWAYS will have no power concern.
>>>> All previous targets have the same configuration.
>>>
>>> arch/arm64/boot/dts/qcom/qcs615.dtsi:                                    &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
>>>
>>> It might be a mistake for that target though. Your explanation sounds
>>> fine to me.
>>
>> Let's use QCOM_ICC_TAG_ACTIVE_ONLY for the CPU path to clear up confusion.
>>
>> Toggling it from the driver makes sense for UFS-idling-while-CPUs-are-online
>> cases and accidentally also does what RPMh does internally in the other case.
>>
> 
> Shouldn't it be applied to config path of all peripherals then? If
> QCOM_ICC_TAG_ACTIVE_ONLY translates to 'resource getting voted only if the CPUSS
> is active', then the same constraint should apply to all peripherals, isn't it?

Yes and lately we've been trying to catch that in review

Konrad


> I'm not sure who is accessing the config path other than the CPUs.

>>hopefully<, no one

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
