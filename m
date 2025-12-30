Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BD39E94108
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 09:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VGxTCfoF95wMelfziBrHewoWuq0x+XXS3b/74vp1u7U=; b=DoOSbsWy4dpMjU
	/cgKMnqRv4rzVZ+IJu9+n0kPyqEcyvuj8KeYjCRS+OMWN3xSxBMQ3qKJATCyWS5nmjtafAFq/2cKS
	kopPVWYWiXVKB48gui+e7+UaxuUiUnnhki/cnTpIxLfEqktO8lL2LbrsBUJf1D5/zwJIJUqA9kWmI
	X0MdFHF8bttdMCmG6bzGj5Y6LXUFAVzG9LLxeHGOVMFM2IKZ+uHSdbuqjQrPXUYS8zzC+tutDayv1
	snDKtAUQoeDbJmm5UQVZ8BrittxY92wTCh8ThTOpw1z+ASsx5wqACXPK3l4Cv5E+uVBdiXsmh0Xp4
	F4SduLZQVOjMCZ/B3wSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaVhJ-00000004cz2-0Qqk;
	Tue, 30 Dec 2025 09:07:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaVhG-00000004cyc-2ifB
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 09:07:19 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BU5Rfl1899357
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 09:07:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dTXohy+irUpcd3Gfqd71DWajddDG5EB5SCs8sOBQ6eA=; b=Jy7xA8It9RoiFevS
	kvPy48KeKNKiltFhRGTSaNr320VDQZ8J9q0pzB7GJygHXFLT5/xErERcyGDvwb1D
	dsKm0i54SyZLGGpTH5hQKwv1GHs024IByIu5ps5Qp8MhJPOsJmAjXbpKSA+8U5cH
	lKsTgVMqfaDIOUjTgv1O5figftYo307Gf7tZG+E8q5S0YUDutuucWjtgxdGvwmH/
	vOeE5kdELmRLHY1CZFhp4QMBCcDze685iiLfbL7HLIRT/j4hko/6zJVuLDrrUwuP
	PtjxVp8hXWXmYlDe+xvSVHydfVdqLzCdyaM9KhDWc0e4Hi4xnuEwfYBH0bNxxNT+
	aoj4vQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc8ky0fv3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 09:07:18 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0d058fc56so158079845ad.3
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 01:07:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767085637; x=1767690437; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dTXohy+irUpcd3Gfqd71DWajddDG5EB5SCs8sOBQ6eA=;
        b=ZpmZoogHimoPkWy1WI61UxIIB8Tk9IqgFlXZ9Q+LFce5WwiFEiqUvFUrkCQIpULDAq
         DzuyRozIlLf7CeWlS2iuFSfPi2wue6utMoesBKX0yl/qdZ1WgVbQDDWWZURpEqAOKpG4
         1NK8K9oCqEwi3JSL+nq5RcNRRpa38ZUWj6JlGqlHF8RdSqCR2Q8Dg0dfy6s9008iXbXm
         pVrzWjRF4SYkeTAkirNXObjNpWQvbANPy11xFac/MG/ESJVjK9D9y3WNH30gj0G9zHom
         gRO6PaehDQMdOfg8GHAhTFKhysdlUaMLqK+t271VSa+xz+/0TRXJhkZyxxGWZ84SV1wU
         YW0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767085637; x=1767690437;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dTXohy+irUpcd3Gfqd71DWajddDG5EB5SCs8sOBQ6eA=;
        b=Dcf+Cmjjd1N86ps7PJ7iZpEhq+wCqp9jX4gEicxu7DLtzEkc2yG6zppOBwfjzy9Oyj
         2II4awkitg6hA/9tqO4ywU4GsEK5aS0+QHM7iGmlWYcATyL+WJXUIRXBcNuK4rxlYJxi
         v0v1Zu9cblAfE6luTgCjt/f9/V+ptou/+53NvTNj3kf2KCPD5cA4EVnN/OLqpbWV9pdM
         Ev3Kek+rft6nzNxIX4GNzsQAJHqsMNk4rwCTRxej7AwSqHJZlVTc2FRqVA0oEqefLp1J
         fUjoHAzU/yTliodqDxToX0PxVSXHhzUREq3GXD7wOqjCPX3H94cpez/sxaCR4s2AC45I
         9byA==
X-Forwarded-Encrypted: i=1; AJvYcCWy5i1pHGwLZBNpteyE/blHVutibUGYbtv95ulLSdcnIj2vyVeWhS328V+wVkn6eld335q7fPgYbNE=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywhu9pziDqhfjHLIs8/NpwadCX174A/rxYCmYA9kYs9wPAH+ftv
	MU3sQHCx1yIIJdG0494coxSiwhSh8WGNtlRTYhJPCV/DxkjILGAwFw9+hXnwCCAo9WYeENVfUj1
	iTI16g0q2IbUE3EnGM3gv1MHhfApNENJGS9V5KA8qwunJLRQEN6gXSHTTpf+FFBQzmywF
X-Gm-Gg: AY/fxX7mgXSiCrejHgnI3UJmkdguhFKGPd1rXEMhKrNSuM41f/g6esNXrWXahAK23I9
	UM8K2Q+8m+j+FsTuVcPHrB4oHkDZE+1X3Qn8sR1FTxhZgwdaBU9dqFDS9HbJcK8jjgUr+oLCd6L
	S8QGqL83LSfPHOjYHOzkVs7r4+7o8VsiXz8WqbYaIUzv69q/H4TZpy76/xC587TOGhzf0cRzRtr
	0VoGKk/Uz6lDpXUC2mVlkG8MwiYhUB88P2t7HzcqNHLPB/qJH+R9wmVUVW/SWebnCKXeua/iYLD
	hmbpO60Pb9vwGfwKSAvPiSYOvtU2hOfCJpKAa1+Y93wkDM2ZcFgGRPGJdXZXsmI1xRrhlFx4BOk
	fUMrPjvBJLd/CBdYUM7tbcW4KFhyuq8Ja1htHWUmy505ltbqCE0s=
X-Received: by 2002:a17:902:e785:b0:2a0:b467:a7cf with SMTP id d9443c01a7336-2a2f1f71a56mr303644225ad.0.1767085637332;
        Tue, 30 Dec 2025 01:07:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG6XImN4KSFStkKAcNcJ17xwNN80501uVV4sZa67kl35qoIIEyl2/FUSFpkPjlHz3ujxp5wCw==
X-Received: by 2002:a17:902:e785:b0:2a0:b467:a7cf with SMTP id d9443c01a7336-2a2f1f71a56mr303643905ad.0.1767085636726;
        Tue, 30 Dec 2025 01:07:16 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c66629sm297173995ad.14.2025.12.30.01.07.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 01:07:15 -0800 (PST)
Message-ID: <37253691-f164-4aa3-9199-4b21e9847349@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 14:37:10 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 1/4] scsi: ufs: phy: dt-bindings: Add QMP UFS PHY
 compatible for Hamoa
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-2-pradeep.pragallapati@oss.qualcomm.com>
 <5c97bac1-d796-4046-9450-65cc99ef7469@oss.qualcomm.com>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <5c97bac1-d796-4046-9450-65cc99ef7469@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDA4MSBTYWx0ZWRfX+12QgpXEpx6r
 u2s/H0j4wtd6N55B04iWVjZENfRf8LB1g3yTzPE2HURCA9DtP/yLa2FAwz3hIxcLEI0Vqivo6Pp
 UCoJC+CAFxst/lsAI6nWJGFguOH/VolYJo63S9l4TYJ/o2qWa5tMinlZcQ3+Flb+suc0Y7shrZ6
 ES2Vh/tQ1Mm6QKuSsdM6FgVfJO8S4SgzWF3sHvVCI29C36+EwtDivIbLWGd21sBemMGRdpRgI/r
 StOb1ja/CHXbdXOw4PKiEOEpCjZ5TugVRR2ANBg6tU4mGBi3b60ofM7YK02KU1/ZJwSlEGnBWBW
 g5Hb+326qkriOnVsBTMuoZSPjDylt6a7fajl+SBwsRCbwgqGbfbmKStMqBafKOprguDO7nMmbgb
 2TYYOjc/YbThzomcL+58IikqUu+M86kw4dAEJ4p0l1xpbaKGnIVDt3nSuDlt8n7s0Mz5WCh4p2d
 dg3vje0XKqWvq6tvBww==
X-Proofpoint-ORIG-GUID: b44iQWUbNQPz5bbmjVoNe5RtsYxxzsK9
X-Authority-Analysis: v=2.4 cv=BuuQAIX5 c=1 sm=1 tr=0 ts=69539646 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=N2xpj-L3_XMPhEp0_2UA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: b44iQWUbNQPz5bbmjVoNe5RtsYxxzsK9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_07,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512300081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_010718_699001_66D7684A 
X-CRM114-Status: GOOD (  13.85  )
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


On 12/29/2025 5:56 PM, Konrad Dybcio wrote:
> On 12/29/25 7:06 AM, Pradeep P V K wrote:
>> Document the QMP UFS PHY compatible for Qualcomm Hamoa to support
>> physical layer functionality for UFS found on the SoC. Use fallback to
>> indicate the compatibility of the QMP UFS PHY on the Hamoa with that
>> on the SM8550.
>>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>> index fba7b2549dde..b501f76d8c53 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>> @@ -28,6 +28,10 @@ properties:
>>             - enum:
>>                 - qcom,kaanapali-qmp-ufs-phy
>>             - const: qcom,sm8750-qmp-ufs-phy
>> +      - items:
>> +          - enum:
>> +              - qcom,hamoa-qmp-ufs-phy
>> +          - const: qcom,sm8550-qmp-ufs-phy
> For platforms introduced before we were cleared to use chip codenames,
> let's stay with the numerical identifiers for consistency (i.e. all other
> compatibles in hamoa.dtsi say qcom,x1e80100-xyz)
sure, will update with x1e80100 accordingly.
>
> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
