Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 323A0CD5BB4
	for <linux-phy@archiver.kernel.org>; Tue, 26 May 2026 06:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0L9+Nxo/HSxwpo/OScOAxrLdVi31uKe7BdOkj8j6o4=; b=dctCY52PLskqyr
	bCVhan4tV5sSjxvQv8e6Qn2zmWM7AMoePNG++lOvi5uNoez5sHDFJTeVT5Hv9RHcaqjRj4zstrqH2
	pMy1NaYuUY1kIxWPeWKfcqQBQVRTRGsdVzgTp9RdOz8nGMHhBNNe5vpfWcLAYIm67YLEGsq/GFSkz
	yHAz3w0RtEJZ9cO/YS6BcAnHrY8GNvYml+WsTNLO7hkKnlBH5pGcvAu99KKuqtBkHcoP8MWSI5fSA
	ItHNzd5PuoVk5DI5LF4hQ8gl5ayyDxnPIKubatDh/53gLgecQ0UDQUDk4nBR4ayHQ+Flw9KNGR/J4
	uRIm550oWBtCdJXyhIKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlUp-00000001BtW-3PoO;
	Tue, 26 May 2026 06:42:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlUm-00000001Bsl-2ckR
	for linux-phy@lists.infradead.org;
	Tue, 26 May 2026 06:42:33 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64Q2otVE4117460
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 06:42:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ajId4scyCctYxikVukDiATz7SBoip+pax0baHtsGRgo=; b=jo62S63TfzA59Gga
	fdBZsD/JMANgFMRtQyub5nVQnIxJuG33kzJJzmOnSx29MQmIYUJgzmQ42LawU8Oj
	xrQKCy0LU/3JvR+zVJ4rSoaVjnOB2V5DZKyrxfxPX6INP5KCxH7zdPAd+bxdLHKv
	v+ZhMFN0eF2IyBkCyavoenIC+t+FHuFo9QugkJixpyQa9htLUQ72S5MTOMGj2QWC
	s3lMBPqJhUu+jHyMzsKFLltxYxP7Ry+xvLh85RgBZxsGmWsdoSv5xLyouNLcyHDB
	DpJOkp27Nt7IyVvcTcjbqRgy5LEJtA717gHRW9fxaeokbUqU+4EMa5TC4twrxyRJ
	3901ig==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ecqudagdh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 06:42:31 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-366ded3bed0so7242640a91.0
        for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 23:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779777750; x=1780382550; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ajId4scyCctYxikVukDiATz7SBoip+pax0baHtsGRgo=;
        b=HsPkQswvOknOQSQAUgH/5gXTEa86E2DuqBRNUeI8GdT2fJaj8hKx1oMtHAE+KUbeLx
         j8GU3V89puQbCUHcmowaKw/Eur2brKFh9T2BssWUjJVmPzAYRQf9NIViJGOLIdQEBAsb
         Qb8dnKLNsyl1jKEGqihE/9j9Uu9FRDCaCJXA293b74mot8Vhbjmr9hS0nop0xyXDQm7f
         j0dFH5wAt4KHg/2/IZnJfWuP7BA5nRxl1Db0I2azln8GcacFRbHxjLSnYbuXWk/q5Vpa
         4PfSllaBUylyA8XXXnP7KXk+T60x+pAK2eGtPXKKlW6uF4N8aHEnapFZZj29YxNFd9QK
         Wi1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779777750; x=1780382550;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ajId4scyCctYxikVukDiATz7SBoip+pax0baHtsGRgo=;
        b=ZHlZ4uIb+KlLf/FM866Xcsd5NqSQq2CvSZKAHrpUjHSvPudKcIl3oeGNamk/Fg0x1l
         g3kifv85X/YT6bJdSUZff/NzF29lAoClEsDXv8I64AAV/5PpyjCNbP0hhf7JsHXVjExC
         WoWa18WSM76TXWTI1rLHhywsUL5G//b+T4Dv2VfCU3hPVTugKTZX5/mla0VDWRPJh2j5
         OpfnMkNVfSGL3DYJCvcW11fwEYsWfOiLhsvuojyF4WZEO+bTQERsTaCDAfVlvQ4Yu08k
         0F6BRJg3a8DTStltiL8blSeHxekqVF5G8yspS0YXHy8mSoaSKeKkdob4lKvWvFdW6zGT
         SG7g==
X-Forwarded-Encrypted: i=1; AFNElJ+Yz/12jJzwSR5rPP4w1b4uDTMjWRSUE40+iUzNoOK5s0ZDRu7ZIv/bp2mDeGYPdwnXu7ROK8R2M+8=@lists.infradead.org
X-Gm-Message-State: AOJu0YybeBkk4ezuH79eh4P/RA+RIqCwQ4L0QNFydlV/PEBBYI4cVuOe
	4xsEhvKOpyKYn2uBZVwl5bXCjDuznISt3VYjhZUJTtozGgTMMvZ1/Z+XItVYvcuYGgUhuw+1hT7
	RLYZ9773O+jlPsKSHDMEXfRPcJVbPJYS7A+eg8pi21e8iRR7DM4HNGhY/0Q6AMjtiVrqk
X-Gm-Gg: Acq92OEEbNluygRiUf9tzjYmc4aoSkqlFe/zR3mJMuBkA70ZvkPtNz4DSWT7wCLIqPc
	JsTu4vz1W7wpIoVWmZvO8fTkaF2hmeVJyrDjR+MmdTWBTdYCrfV3R3U9e4baoOIYjg6wjo/Zrgp
	MdxThLdWLs6stx3zLdCnD4yFGKUEiwXk/ez47+cd9dMDeQ/3siP6lOmLqQ2PZUwy3SSBsJuGBoC
	BNkf1FPNY3cqpDUEHfDBFqLbIu9ZhvrHGCXyr/ONObXzG1Wx1Lw5L/vcCCfBUy9LHWszhIyb+qP
	CqQX1ew+c4RJKF0TAGZHohhcN2Thuq2A8ia8cYIoglcXoZ98nHnNO/CA2EjukTdOWQGXCfjcZu3
	I6NY5pQ8Uy2qibuWSZvp3Y0P99S3QQd/yWboDcPGZTM8fd7U73Q==
X-Received: by 2002:a17:90b:3f85:b0:368:b92d:df93 with SMTP id 98e67ed59e1d1-36a4797cc8emr17399631a91.9.1779777750173;
        Mon, 25 May 2026 23:42:30 -0700 (PDT)
X-Received: by 2002:a17:90b:3f85:b0:368:b92d:df93 with SMTP id 98e67ed59e1d1-36a4797cc8emr17399608a91.9.1779777749732;
        Mon, 25 May 2026 23:42:29 -0700 (PDT)
Received: from [10.92.181.2] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36afbc766d2sm1987905a91.14.2026.05.25.23.42.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2026 23:42:29 -0700 (PDT)
Message-ID: <c36e0241-08d6-4866-8b3f-3a7e2bfde547@oss.qualcomm.com>
Date: Tue, 26 May 2026 12:12:23 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/3] scsi: ufs: qcom :dt-bindings: Document the Hawi
 UFS controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        abel.vesa@oss.qualcomm.com, luca.weiss@fairphone.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
References: <20260522172716.820490-1-palash.kambar@oss.qualcomm.com>
 <20260522172716.820490-3-palash.kambar@oss.qualcomm.com>
 <fhdronmweor6vb4yu3ggickvvzj7ls7w4eqb6tsvp4amjpg7ae@xfr4up3iesjh>
Content-Language: en-US
From: Palash Kambar <palash.kambar@oss.qualcomm.com>
In-Reply-To: <fhdronmweor6vb4yu3ggickvvzj7ls7w4eqb6tsvp4amjpg7ae@xfr4up3iesjh>
X-Proofpoint-ORIG-GUID: 3OVyvJ7H2gMDqTz_LUjhcjPSQ31tIvXP
X-Proofpoint-GUID: 3OVyvJ7H2gMDqTz_LUjhcjPSQ31tIvXP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI2MDA1NiBTYWx0ZWRfX5YIpZs09/g1u
 qAOcEo2sQ6iy4pbcdr7nqzKR5cicfPTOENnr60h9h9jmGYFh//UIK6Iohl/zmHjYMc0QMevwn+f
 WzDHfF2WCjphHU6I3oT9caKzbHeCemgaYEhFlI3mWU8xY9l+IN5KNjdDCSJ1D3OVG6HGrZzAk7u
 cs9IvcFSNaqoNWFGyetvLd6eMc8+poQ27SQqU3RYtH6kjnwFxoHnEE8K9aOv2v/Tg0kuBE4FrN9
 3uqakFNkVwM0/+Ra74Muknzp/DbXdzTpNhQgcNG4viNzYAbQ+qJL7OXg4r3fO0rLegfOJhlhuWS
 aqzh8ZW9b/7XuGWjPyp9vJJiaMEXvkskGMol5u12Qc6RJMM+TFl47K3aWKv52FCwt6bjwLJzNYN
 HkiN76Mjtu+7NGulv5QruP1K75PTLJoFk40mB3HSHqyGqyJQITpnna3FVm1juCPsY3NYXCGoOO0
 baJ+9fr8Xbxe27t2kcQ==
X-Authority-Analysis: v=2.4 cv=C9jZDwP+ c=1 sm=1 tr=0 ts=6a1540d7 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=sKss_wxwHuIV23YTwXMA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-26_01,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 clxscore=1015 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605260056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_234232_787003_8FE88A1B 
X-CRM114-Status: GOOD (  13.36  )
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



On 5/25/2026 2:16 PM, Dmitry Baryshkov wrote:
> On Fri, May 22, 2026 at 10:57:15PM +0530, palash.kambar@oss.qualcomm.com wrote:
>> From: Palash Kambar <palash.kambar@oss.qualcomm.com>
>>
>> Document the UFS Controller on the Hawi Platform.
> 
> Please fix whitespace order in the subject.

Will fix and update thanks.

> 
>>
>> Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
>> index f28641c6e68f..3de00affa4c6 100644
>> --- a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
>> +++ b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
>> @@ -16,6 +16,7 @@ select:
>>        contains:
>>          enum:
>>            - qcom,eliza-ufshc
>> +          - qcom,hawi-ufshc
>>            - qcom,kaanapali-ufshc
>>            - qcom,sm8650-ufshc
>>            - qcom,sm8750-ufshc
>> @@ -27,6 +28,7 @@ properties:
>>      items:
>>        - enum:
>>            - qcom,eliza-ufshc
>> +          - qcom,hawi-ufshc
>>            - qcom,kaanapali-ufshc
>>            - qcom,sm8650-ufshc
>>            - qcom,sm8750-ufshc
>> -- 
>> 2.34.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
