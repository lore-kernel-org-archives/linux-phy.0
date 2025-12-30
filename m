Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE03EE94120
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 08:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=th0u+wJ5TiZ5JAwytZ1K8rEwUP+XB3jDi0Si3iRCPyM=; b=Yjkuf/h0hk5ytD
	iPkYnX7A3nMuAHVqPi23Psbl4FkDRsQjONFc5V0rQfbub0v0MFYARx8Q6H0x3Qak4ng06edxhVipz
	sulgSrLwkcRwpfDwjDI2slxblQTMqANBdG+3wb5rGp1Y0Yetl29wJpgyj4sBMLgQyT+IHOLNe2srZ
	aS3vzgeB86GdFsKHOwu3kk15UxyF15NHu7lvgwFZM0s2lDdZwoRi2tmaWdjowY+VZBZG3BtKzAuoV
	eurqB67f39X1bqAhxDCqZMJyKsJvg9p0o6QNEgSyVYpf4fMILjp5W25vJjMpgVmYVD+TwAxHJFObd
	ymtOX/CiVbtK6imsYhKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaVVD-00000004brT-1ux2;
	Tue, 30 Dec 2025 08:54:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaVVB-00000004br1-0M3R
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 08:54:50 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BU3jW2M3555705
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 08:54:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G+jm0hl3gTRtA+Ks1l6eXl5RaxvmTc+Ph+60AjfOltA=; b=B6ivizDxWyB4pPF0
	/+vHOJ4xm93zzLc5Y2HdHroZIBUQP6pDOtUCXMMCIG0n21O19XZipOaw+WB6bmoB
	nWz8bmGzWWif20uP1BS9GhDnW+FtKA6ScLwj733380bErI3t07iZvrwGxVzaECNF
	RiQD9vP8rTrH+vGX+etV4QVBNj2yYu7b4zLcgSZiviZlPJShBJOBpU8ePfFsxDkX
	M+V6Ar5V7+rgiePVOVeu8Eb4Wty5W+Hnp0LYzw5tUj9cQI5MJmuViZrsiW2jCgYN
	2fReF1Rki2zwCZhEDfj4QRpFhyc+t8KCJPliVjJnYPXBb/OSEgsBKQTwj9LTXzRb
	ygu9jA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc7460n2p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 08:54:47 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f25a008dbso87853885ad.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 00:54:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767084886; x=1767689686; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G+jm0hl3gTRtA+Ks1l6eXl5RaxvmTc+Ph+60AjfOltA=;
        b=E4T/DET2XtPS9aT6zPOFCNbjJV0qHfEfm6M77NvM01Y/d5pI0hspap7grP623GBVth
         capStyBiPoOVJiHXDrYmLx5pAHBxB8YN0atyu5UYlicI9D2C1LYfq+6CP+Frvhsd0xS7
         Qvn47bfeuHJKwf20i6GOknwfZWWvjLvgIxFb1Dc7LqJHO0yazfY1YcHdl29uc0g4kgNC
         svre1hx5sKsJBblVkOlw81DPKoB6Z8hS+3SYrjywqGQ3MWSfbc0e4rMu0ELRodWjEGYv
         +s0DWfc5/QSz0oxI3KFmoTiKE8+1SklqbqAa3SL+evB5uu04Uh8Bs3wAlpunuT64ORZ6
         dyKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767084886; x=1767689686;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G+jm0hl3gTRtA+Ks1l6eXl5RaxvmTc+Ph+60AjfOltA=;
        b=sHg3ROlZm4n5nzuO3WqaiJsCOHPTWFGNeXGi7LUT0rKJl7q4ppC8dvByj+eduUFORp
         QJFeMXej+zTuqoXpBUxgykU0j9Jin1M6URuGEb/Eqhj3qgvhZ/1+3R9r2yQq7VGzah2d
         tnXmRNUkp2qRR1SnUID5NSNSoxD1xF/vFZBkfZ7UbZSf6KNK/KQvcaWlHJilXDaWpLQN
         rDoxVahO027dTAZD/Zg7kzMq1w6bmQ6h4yDBu6keWUtVBFReV/sjwgFeCN/Iskc5l/rL
         CejZfNhrpT+Xe4zOtaLvVhasT8Dhf9/9D9H7RkGGsttntkhL0MN//UbUJMkLhrqv44Vw
         89AA==
X-Forwarded-Encrypted: i=1; AJvYcCXtYYfDYiH/g1EQd/Z7o0lKCpDzPQfrJGUj0OIuvRjjTLj5QhxZ7gZv7hijc0x3gM3ITgcbstug6DU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwLFv4/xVulN7siwUGSvdrhX9tDcMQMDxiQU6vdYpKrMqhfFtBf
	z/qtDo+yZ/JnaY30+8GpdxHc1PAvSlDMUGoh3R6HFKXRO6fQYXNKcO8W+HQCEP8NSeNWiceHddY
	uWHwm5BJBs12ZJoE9NqhuM4GjZy/JICNh39ECM1wmeuQOvASUDLOgpQ/GNfy1jfM4g/2o
X-Gm-Gg: AY/fxX7nl5wbMwwDaub8zmGiMsdVIXDUC1OaaqxBviikIaym27L4X0fQkfSLU8QZRbr
	Fpy9i/ZiFj835YXRUGJ5ItsFiNfMUH+lwKGXI1Hd8dyVJE8/HrnZ2q36255wjrzqrRati4su89j
	+D6AmWGRe3E2sdf8bc0UDpfjcnkM7UajA3y2bIFhLJpPLeKNgtkymCon84TTjaefC8p1twNjFsn
	0uzNPyP13p8mw/d8XOXxAsGvL2NkI6W/bAyLMJpXSxoVnqJsFyb/tpqzs1AXCKb3E1O5o55Uoxz
	k1MdITc1iLwdDaKtZVBIR+v3T67z+F8E33jMBxOj67HMu1eJCNM5otlNzygMMQS/Ncjcbn+xCay
	7+h775nTxeZwhIq/OLSubknnLLfarcw4Ll6F8jcYb4g7l86iRdYw=
X-Received: by 2002:a05:6a21:33a0:b0:366:1a2c:6f91 with SMTP id adf61e73a8af0-376a76f8349mr32847441637.4.1767084886127;
        Tue, 30 Dec 2025 00:54:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFwKOGrZevxYUTYMiPED4sj5f4L1oVz4R90Qo6k6fwfLK/YR2I/UvYs/oQV3Hcy+bokhTyxzQ==
X-Received: by 2002:a05:6a21:33a0:b0:366:1a2c:6f91 with SMTP id adf61e73a8af0-376a76f8349mr32847421637.4.1767084885643;
        Tue, 30 Dec 2025 00:54:45 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7c627f3fsm28310735a12.31.2025.12.30.00.54.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 00:54:45 -0800 (PST)
Message-ID: <6031d99b-6130-49e0-873e-b44d0614e2e5@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 14:24:38 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 2/4] scsi: ufs: qcom: dt-bindings: Add UFSHC compatible
 for Hamoa
To: Krzysztof Kozlowski <krzk@kernel.org>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-3-pradeep.pragallapati@oss.qualcomm.com>
 <9d3c21ad-c265-4e22-b804-ef8c39b7e787@kernel.org>
 <26bed077-8450-40ec-97f3-50b7771e4c9b@kernel.org>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <26bed077-8450-40ec-97f3-50b7771e4c9b@kernel.org>
X-Authority-Analysis: v=2.4 cv=Do9bOW/+ c=1 sm=1 tr=0 ts=69539357 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=uKld1MUROoZiouImdn4A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: Pw5tFAQRS88NaCJy5bWNv6G1sC7ZYYCQ
X-Proofpoint-ORIG-GUID: Pw5tFAQRS88NaCJy5bWNv6G1sC7ZYYCQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDA3OSBTYWx0ZWRfX5euFR+qizo7d
 b/MNtKmzGlEVqWlg/ICJjyDrR+AaDKvNNKhzpRdpsxbPus+F9GpgsL+33v6rkOQRDcT71K60k8A
 0twto+zkIiWWw+OOvf9QHbMKmiS+Jycrk1tBzk2Rr52t/ldUjhjA7U/RjwQsjysSXilqjfWmZYq
 PCuruaMsc8D+YLL+QcAXSMtniTTpyojC2kaNE8dNgqm17N8WMHX3x++XXLOG5f7zFrgfu7Qms7x
 kk5tvHeSrdQfEEqOL/bOT8GxLCCkgItTiXfLFqDipHW8yOJCU7APwvQv8CzA2+c3OyI6P2C4qXK
 nnskwoJK0u0TjSx6V16Y0q6hlbvKTLqUzk/5xWsSfgLkOlhrCQEm3TKzgh+w2G9qUHh/sjY5AaJ
 WtsqIxPUoQfVbpSYW4iV/gyehMvEKolJgfhL7qSYkDUGRPWlGUrN13ArnqSW0rmvQazdnZspEd2
 UC6RWf6mrSgboYAku0g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_07,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 bulkscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_005449_246418_8FE63E85 
X-CRM114-Status: GOOD (  14.41  )
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


On 12/29/2025 5:50 PM, Krzysztof Kozlowski wrote:
> On 29/12/2025 08:13, Krzysztof Kozlowski wrote:
>> On 29/12/2025 07:06, Pradeep P V K wrote:
>>> Document the UFSHC compatible for Qualcomm Hamoa SoC. Use fallback
>>> to indicate the compatibility of UFSHC on Hamoa with that on the
>>> SM8550.
>> Same problem.
i will update in my next patchset.
>>
>>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>>> ---
>>>   .../devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml          | 6 +++++-
>>>   1 file changed, 5 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
>>> index d94ef4e6b85a..3b5a95db7831 100644
>>> --- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
>>> +++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
>> That's older devices binding. Why would Hamoa fit here?
Hamoa is leverage from SM8550 which is a non-mcq target. Hence it would 
fit here.
>
> ... and why even bothering with testing this? Every internal guide tells
> you this yet you sent it untested.
sorry for the inconvenience, actually i made the proper changes but 
missed to amend while posting the changes.
>
> Best regards,
> Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
