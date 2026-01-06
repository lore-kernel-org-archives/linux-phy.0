Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 425B2CDC196
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 13:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XyK1lGEvutpYryQKwy7V3AYZ5RkxR2dTI0kIv4Du8HE=; b=PAqvAm6PDC/sGr
	7xcN8UQ6ooH9KOagCkiaXMXDFe+R6zDblYZ0ErCF6nW5F8SZsJaqAhrT21VKqmUBP9VbsKKjjSZTu
	SjQ/PG8dyn/Kb3YtPKp1iDAQfRaHzHrJ2k9+9LAfvYnox4wLgAtVbYHnsxb/p3bZeQ9xuPjWH0Win
	ULvwb8IbQ41+1HGFU3jM3cBrOZ2E4KG4EpE4fjOFi1CtlpnqCzbzBGhp6jj+69RO60AoH7q2XNnSa
	WjxHZFXVotepGNrLH8k0CLaLIYkIKtGXNB/SobPNYzDlKtnC/mn8Q/hckQl0UBn27CyUHpM4IELn7
	KJXGpSE4j5bUtcMsQyvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6if-0000000D398-409h;
	Tue, 06 Jan 2026 13:03:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6id-0000000D38l-0Th0
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 13:03:28 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606AFPAJ2429813
	for <linux-phy@lists.infradead.org>; Tue, 6 Jan 2026 13:03:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KBGbPMXI0BvLnVfHyFlCYvcrUBb2pqokTkHmLNTyKfc=; b=FeDCUPiCIXliNFfh
	EOvsBsDDR1uzOfP51Nfr5qSgs9B0jR0xZtaKRAQoa3HNFFQ7wu42/r7cP9NMS6ks
	scw3+zMN8B7RVPIcl1m3UzFW4ss+OwGBs7D6x38g2WfBa14Iq7UDxTBvQhi47Ky4
	Uqbxge4HxkvV2G4Pmv1J7pSXl5Vz0eKzwYr45Ad+kgZc9zo9Fj9xavc2p6Yljkox
	nVMBu9KQmJc8dn0wj+bFU74tiGpJEZUK+ErnQucEQTe6mTQb4uPifARJTG2aVRu4
	yPScan60JSIvmjwMe1L68tSa5B16XxHIlFejSbSyCB6Abb+Vh8215rboaFf+fsw3
	z0pPUg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgr739w7r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 13:03:26 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b90740249dso1792221b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 05:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767704606; x=1768309406; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KBGbPMXI0BvLnVfHyFlCYvcrUBb2pqokTkHmLNTyKfc=;
        b=hDFsa4Xf444I205jGrSmv3shjAoEArPBh/qP28lSA4QN3LRBIqD/0XeqS+TZ6CFJui
         s1q7GShMB3mSrBIMhf1kTYFixh5Wz9CAUbtri6dnaCYBB4+P53VK3mQ8WlNt/NVO9bwq
         ZNq1NUjEVutD6Oo98ZAq9S35k+yIMjicFIdsElkijQUoUhMbVGeD3qo7KNRshnEcxye3
         Ly79isQ/qwiDljpNPkrB/tlgXC3odMgBNoBbMMJw/y9RFUL2xOkaY7ik4aTDicd2hKDp
         uuYODuuJk6H6jaKW+sFJYECOTHtfCBJpnk6CRLmu5CE1+ji+guASkux9yY1hPbl81zym
         q9LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767704606; x=1768309406;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KBGbPMXI0BvLnVfHyFlCYvcrUBb2pqokTkHmLNTyKfc=;
        b=cXICKinROlKmRvsV9MsTlt9D3b51W2stfDXfyzvIAC8iAeoQpqaso0U3xMQcu3nW+0
         F0pyPMkrpeAWBsojE7D41AFawAkD59S9QC8arMDOze1TDEEM81jCU6h2LBDDCIgEsUAQ
         Xj23ecw5mPT52/y2vCgd6pRn8MhxGxfDcugbESYo1NqCKIX/h634LUHf9xpBVf8EaQGu
         mFfCSLcP/3YIGbdnILWV5/kCSuAgKDI0By3nDnYfQE9ubovwkbk6ROVfu3NfEltERfp6
         BMK+HWeNFaJPR3XWL7VVl+0qIN7ZhGWgkZDKpuB4ELToD/fTZ0TaKq8QdPUKAXTrPVFu
         h0Cw==
X-Forwarded-Encrypted: i=1; AJvYcCW/aOUpoRkM/pomA9TvX5CmKBT3ZaspTugKe66sFddk5YsRBg0zj5sWp0DTEJrovFTjKx/MDqtcIoM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyFgYnwrAD0UVeQoB1jAi6hxVuFWButqNySk32Y5YRC5QZQVleM
	/bj/vwkaAJSqCIRNQChbESp16h6fUKf7t9CP6emllOsP/E2CI5M+/ejwIWAn23NqgPsKqZEjJUc
	5td3G+qfVtfrCbsET0SuaWHXhhYA9y3KU4LweqlXlmWfRqPqg7Py2fmyjg1NPsS0gNXVF
X-Gm-Gg: AY/fxX7/mI7qtG+Go16zkGbSLMQhnaUNgZFLBSYsAq7ql8Rminn/2ul/b4N5/1rYIte
	MT8Hv4sP+9vEot+qyT584Tiyy63Rzay51I+pZzxyxEEqIxD3vxBrJWGtW2Qz3tiv7hUQtojFzSU
	VFRGCex8KVEvxJ3mNQM9R7BXHhR6sNE35u00NS3fxE6HJi6jhfCoXqOi6wf3JfPigRyU5BrN4Z2
	qyCVION64QgB7fpBGMY7TukrJvI0dX5f94VvRWC+VC6r+Qzw43rznFqcp9Fi0lxOWQtSj4RFdmd
	QHeacSuUh9LdVdSiovTRKWF1Tn7zUkkTJ1OG9O1wQ6imht4cDJ7NX7AsT9zOun0Try3BzMrD9BF
	Swecvi4t5VRxjpOZYjKZmrt+f6yiwMdWc31iGZ/ENPfh+uBga8IM=
X-Received: by 2002:a05:6a00:4096:b0:7fe:788e:4ef6 with SMTP id d2e1a72fcca58-81882dde715mr2922024b3a.62.1767704605531;
        Tue, 06 Jan 2026 05:03:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGrkjoWyrrEREwvfhzeaIr40oLsdxX4uVK6BvsLIlVKmCVj/W5JMswe/eUhMbhpFPzmjU4Oxw==
X-Received: by 2002:a05:6a00:4096:b0:7fe:788e:4ef6 with SMTP id d2e1a72fcca58-81882dde715mr2921991b3a.62.1767704605004;
        Tue, 06 Jan 2026 05:03:25 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52f8e10sm2233570b3a.44.2026.01.06.05.03.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 05:03:24 -0800 (PST)
Message-ID: <0689ae93-0684-4bf8-9bce-f9f32e56fe06@oss.qualcomm.com>
Date: Tue, 6 Jan 2026 18:33:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 0/4] Add UFS support for x1e80100 SoC
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, manivannan.sadhasivam@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
 <y7lm6zqgbhk4243diyotvox75tcmzhgbkypbkaskrtjcjbruwm@ar7kjmiyv2wr>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <y7lm6zqgbhk4243diyotvox75tcmzhgbkypbkaskrtjcjbruwm@ar7kjmiyv2wr>
X-Authority-Analysis: v=2.4 cv=QrxTHFyd c=1 sm=1 tr=0 ts=695d081e cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=DDuy_lcDOa8T1pqcGkQA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: aPloOfgkUNpfRN7hR5rkQ4c_A24rNLIv
X-Proofpoint-GUID: aPloOfgkUNpfRN7hR5rkQ4c_A24rNLIv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDExMyBTYWx0ZWRfX/HribR6z2raI
 DydOwcmJXnKW0hpQ+SCqa5vfkoQ/+fBGBayRofjeZVL1OdOpKCXqt+gsWO1ygpYq6ODCf7LExW+
 Oftgbi0kJ+88vQ9YssDFximwvxMap8AvOPPxbdtbxHR7qmpdO6ilcncrI+CL5oFPJTAkQ+AisYU
 a9wydM710GW4yYxBuoJGBNNSQ/3pfyjcj5b3wMCZBFobzCFaXwiflzIbjrwuk4yoVq1UjL7OYm9
 NoATjxsBj+agFwPU8rqDD+67HHSzzS958V6SjwOr7cBP2yOBCX7aZ2R2QE7dgwALCxau67sCarN
 UgnR3RxMgr1+sN2ABXicGoNnopMbCyt20EbI0L/YFDtPKN8KZyfrRq/PhkwuGdEQNeGWeNfwXIc
 OoLbX8Swt/f34E6BxnaO56U8GbtSUY4s8keLiisDoRohIlYrDX5fe+UEZ875sM99poAfoHqpOpn
 n7unOQbv9Los+ZO5lhQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_050327_187390_8ADA72A7 
X-CRM114-Status: GOOD (  15.57  )
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



On 1/6/2026 3:50 AM, Dmitry Baryshkov wrote:
> On Mon, Jan 05, 2026 at 08:16:39PM +0530, Pradeep P V K wrote:
>> Add UFSPHY, UFSHC compatible binding names and UFS devicetree
>> enablement changes for Qualcomm x1e80100 SoC.
>>
>> Changes in V3:
>> - Update all dt-bindings commit messages with concise and informative
>>    statements [Krzysztof]
>> - keep the QMP UFS PHY order by last compatible in numerical ascending
>>    order [Krzysztof]
>> - Remove qcom,x1e80100-ufshc from select: enum: list of
>>    qcom,sc7180-ufshc.yaml file [Krzysztof]
>> - Update subject prefix for all dt-bindings [Krzysztof]
>> - Add RB-by for SoC dtsi [Konrad, Abel, Taniya]
>> - Add RB-by for board dts [Konrad]
>> - Link to V2:
>>    https://lore.kernel.org/all/20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com
> 
> Where did the previous changelog go?
i missed to amend, i will update all changelog in my next patchset.
> 
>>
>> ---
>> Pradeep P V K (4):
>>    dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP UFS PHY
>>      compatible
>>    dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC compatible for x1e80100
>>    arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
>>    arm64: dts: qcom: hamoa-iot-evk: Enable UFS
>>
>>   .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   4 +
>>   .../bindings/ufs/qcom,sc7180-ufshc.yaml       |  37 +++---
>>   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts    |  18 +++
>>   arch/arm64/boot/dts/qcom/hamoa.dtsi           | 123 +++++++++++++++++-
>>   4 files changed, 164 insertions(+), 18 deletions(-)
>>
>> -- 
>> 2.34.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
