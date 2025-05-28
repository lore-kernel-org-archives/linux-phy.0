Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 028AFC3ABB2
	for <linux-phy@archiver.kernel.org>; Wed, 28 May 2025 11:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESZQLY8dx3Blf9ZjHvEHNPIbp8v6MG9N6l86QhM0nAk=; b=R5PLsJESeJWVft
	0CIZgGjjyMPlwa03vi1XSJzb/g/TLa/SH47wR7fZ2M7Ct3M+W72e+TaRPj3Ylh50vDjsDODJ3gK5Y
	pN1GrSPM0e9NZwjOUGwsLJ8ayW7keWiKzfs9ir8d7PCOajHsVxVRzxYj6bMZNd32aVvOF5L1AWCqs
	yah+VWFpXgdD4Gme6zejv0vJ/tCRM/eulAoEY9E+7Pwg2YDpfm/YZl7s3+uxo2V/CTrhKGr6TZ/fN
	DKSei9n0tgJ8voflhX6TUDju9cBJxkW/mexTH7RH4mlnvqlWTh4D3PvqPGTf+gWLlxk0vrc/dc6Um
	qFAO+0EBF9RHZ72O+C1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEqy-0000000Cxpu-3Bp2;
	Wed, 28 May 2025 11:21:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEqw-0000000CxpW-3fAT
	for linux-phy@lists.infradead.org;
	Wed, 28 May 2025 11:21:47 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54SAnIl9005190
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 11:21:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9bAT11ZfKjJKGGVmpodWoHslwkGL/815tY2xb/sJYVE=; b=Lx+9zGeZWc4O7LvE
	/Sqi0FVCe0WbKQBpo3dIoiO0lO/yQLZcm9/b6CvCLabOsJqDZYo7uF9pz3Jg7slS
	dAgD8ITJo97QN0O5Lw+mlSlLjl5bB0d/fgktwXJER6/BN1Y8c/iZPMlWoargKOuF
	//doCeBNwS5DuSzS72B2VG+ZBnVI/ZjXhzM212ug7j/kwDeNZP2LEyCuk/msOio5
	CwaZIGxOSfOAcyY8uyzIC3ROUervBqJMrDBzFVQ8zrEPULzZncUJVzUXWDIORrHf
	VYuc9C2QijSxbnJ5qLMOL2Q8+yIe8PofsLD9d+q5qohS4k+Gzxdd+NNFqYQByYQU
	Wx7KSQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u79pa2c4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 11:21:45 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-47ae9ed8511so5089791cf.3
        for <linux-phy@lists.infradead.org>; Wed, 28 May 2025 04:21:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748431304; x=1749036104;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9bAT11ZfKjJKGGVmpodWoHslwkGL/815tY2xb/sJYVE=;
        b=QSm/hTZLSMmFnOxig2vpllnTI7haJDUhn7WVQvBdpYdd3/heFOVtNJlSzlwwuUTUJO
         9WJnrRmMQppvvcAb/aPGYdIi4kdzxgwIJ7J1i38+aOgXaS8UYGWYgp9uF1WekLI5c5kZ
         Q0nW2o3yprMXveKhaiPmGnR2WCJ0uxpmjuXXRi4TciClOq89EsEpKtDaXGn9YTYuiP8N
         etlihZ7bAhluAxQ1CuQYjgj4GDdhusn9gQWqUG7XfxDsUH4Bta+Fp+5c/QuECMumDSXj
         wCwYimTpwrZEDPFAh6vlChyNHY1q2EZRpkImWYAzNAgkG1RQ4MW0RDXux2ycl8L1mc7Z
         sZkQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqrQErh+LPz3TpW3jLqUHW+TZ0zdWbmpRtYfv7QI+BCCXDzxTdgIufEugLO9qthjDQmjRvzlhOKjk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwsFE/9Dk7yW9yYefYemZD789UxPX4Q5sYWj+O6u1Ic2O4dp65N
	+saCsct5Otl4zh4KUYxc7hKvNGjVhnENRN3Z4fpGRW7fr85RKnYKANrMUmuj/kc91DUf6FCDKq+
	WBznsUNVOa+hiY9XR5Q0anS8vLpd7A2qejYKviMBqmaQL2pzBSbDG/Ty+n2YiIse7vy2a
X-Gm-Gg: ASbGnctImg7rbwTPN/TWnzI8BUtNYGfBOUilA6ETsu89ajp5CvacYTas1g6dZ/jUY72
	lNlwtHAZTJVYrgeRJjm8HgEcokP7jBnX3ddAv65xpFo2X+5+Ho4J5DLlKOX4DylSSkHju1zqwDk
	W/6UY1Zpbku5zjPpk4nb591hRyb3oUR77B73R15FjzJln5pUZnLm4YKshXLHoMoqlg7Y5mE4KCz
	wnd0ewrJ2T2Q06n4kY/TG41MDeXozlc0piR3r7sqx3bEwYnovNCn+f/OK0De1FqX4jcUjATlpn1
	7YY28ytMKqJ2TX7h/duaiiB+zb2pURm7WH5CNexX8JjPSHm6CUQbe+lKrY3yGH8YBA==
X-Received: by 2002:a05:620a:25d3:b0:7c0:be0e:cb09 with SMTP id af79cd13be357-7ceecc07040mr848641485a.7.1748431304354;
        Wed, 28 May 2025 04:21:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBvuxLKRRnuO1P1rH+NgkpcQepZxMKfBgi2vjfV6Eobw9Q53DPNgpHnFg9UlEZoCbyi6pIkQ==
X-Received: by 2002:a05:620a:25d3:b0:7c0:be0e:cb09 with SMTP id af79cd13be357-7ceecc07040mr848639785a.7.1748431303989;
        Wed, 28 May 2025 04:21:43 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad8a1b47a0bsm90628166b.132.2025.05.28.04.21.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 May 2025 04:21:43 -0700 (PDT)
Message-ID: <8692f79f-142c-43e6-9e09-7ed4ce590b87@oss.qualcomm.com>
Date: Wed, 28 May 2025 13:21:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <20250527-topic-4ln_dp_respin-v3-5-f9a0763ec289@oss.qualcomm.com>
 <itmvwhcf37bmnpadcyc7kdt7wx3eljyjwyv64s24zwhbr2e45g@76uzcpjqzx22>
 <7f464eb7-469c-4350-a43a-3b99394ad689@oss.qualcomm.com>
 <7icpna4l7z63gs52oa5lqf35puib66wxxmqqul6ezdkhuziaqi@mvkf73zz2iyj>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7icpna4l7z63gs52oa5lqf35puib66wxxmqqul6ezdkhuziaqi@mvkf73zz2iyj>
X-Proofpoint-GUID: AlfWXZzF2rdSG24Bz4cUj3s5EwTx1Gen
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA5OSBTYWx0ZWRfX4wJdnFcT5FPo
 oSZlw5iwGaRHpE8tNDZftJC28KzIln9xLREMp5r/DibZBsYVygNy27GtEqL8fKHg0oondS1aiGt
 6WwBFNsBlLA78vWTykmBa2q0QbHCxCCZ2OoPu3KmYXxix+/NV2drUUt2mOrbGlZmlrE2lgZfkti
 sFwhvtbBBQD8SsOVMwBriF+bDqJ7i1Nqfziivqn3TJT4066P+HKIG+d6pX+eXZne9ajYlskFTlh
 Ax1PYPtYSHb2mtqqxOZbA/qm6cAevJCmAjVlNj8qso0+EWEMPsW9El/Y98Ulv3+TO0tpFSkAI8K
 ui9rOQEVWPIVBQYXfgIFdzr2RlltkEhKxHeGrZFBWTOxGi71kiUgV2NTj4bdlkJHDwD9j6pv+sr
 oC+8MITy28JOTytBVHMDirElm1+V+NS5JZ0QfxMYw3hi/AfFlO4HRb+FdT0dg0YxGN4dM3QJ
X-Authority-Analysis: v=2.4 cv=HNnDFptv c=1 sm=1 tr=0 ts=6836f1c9 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=cytkdih20WZ3R2VHWB0A:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: AlfWXZzF2rdSG24Bz4cUj3s5EwTx1Gen
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=999 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_042146_922946_990E0F35 
X-CRM114-Status: GOOD (  25.99  )
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

On 5/28/25 10:58 AM, Dmitry Baryshkov wrote:
> On Wed, May 28, 2025 at 12:22:01AM +0200, Konrad Dybcio wrote:
>> On 5/27/25 11:55 PM, Dmitry Baryshkov wrote:
>>> On Tue, May 27, 2025 at 10:40:07PM +0200, Konrad Dybcio wrote:
>>>> From: Neil Armstrong <neil.armstrong@linaro.org>
>>>>
>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>
>>>> The DisplayPort phy should be left enabled if is still powered on
>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>> PHY is not powered off.
>>>>
>>>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>>>> will be set in between of USB-Only, Combo and DisplayPort Only so
>>>> this will leave enough time to the DRM DisplayPort controller to
>>>> turn of the DisplayPort PHY.
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> [konrad: renaming, rewording, bug fixes]
>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>> ---
>>
>> [...]
>>
>>>> +	} else {
>>>> +		/* Fall back to USB3+DP mode if we're not sure it's strictly USB3-only */
>>>
>>> Why? if the SID is not DP, then there can't be a DP stream.
>>>
>>>> +		if (state->mode == TYPEC_MODE_USB3 || state->mode == TYPEC_STATE_USB)
>>>> +			new_mode = QMPPHY_MODE_USB3_ONLY;
>>>> +		else
>>>> +			new_mode = QMPPHY_MODE_USB3DP;
>>
>> To be honest I don't really know.. Neil chose to do that, but I don't
>> think there's a strict requirement.. Should we default to 4ln-USB3?
> 
> Yes, QMPPHY_MODE_USB3_ONLY. Nit: there is no 4ln-USB3 (it is a special
> mode). We handle 2ln-USB3 only.

Right, I double checked and we support SS

> 
>>
>> [...]
>>
>>> Consider the following scenario: connect DP dongle, use modetest to
>>> setup DP stream, disconnect dongle, connect USB3 device. What would be
>>> the actual state of the PHY? Modetest is still running, so DP stream is
>>> not going to be shut down from the driver.
>>>
>>> I think we might need a generic notifier from the PHY to the user,
>>> telling that the PHY is going away (or just that the PHY is changing the
>>> state). Then it would be usable by both the DP and USB drivers to let
>>> them know that they should toggle the state.
>>
>>
>> If modetest won't stop running even though there was a DP unplug
>> (and therefore presumably a destruction of the display), I don't
>> think things are designed very well
> 
> They are, but differently. Display settings are always controlled by
> DRM clients (typically, a userspace compositor). They can decide to
> send data to unconnected display, they can decide to ignore HPD events,
> etc. Even if userspace responds to the event, there always will be some
> delay. I choose modetest, because it's a particularly good example of a
> delay going to the infinity.

0_o

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
