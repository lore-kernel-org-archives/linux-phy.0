Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4194BC4452D
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 08:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1EdPAjtfl/HfxRCscrQ1PQgz4apoK3o8yY7mCQXYmK8=; b=ihEEaGwKjKbTwW
	M/8AilspTOZgC/eyFM9yWeljJqiiLhO6h9eC+lEYlODScO0cmzSKmOiA2Xwu/1mRDTqschWZPRaUM
	L9hQ6xj3uwBrEU//S16U3BtQYHXRllnQXDNAImuPoncauBytZ3waEH1Ub8fxiYqDxjKfULQjxF6/p
	mmC81EBYDvL07v9oDdtNScC5aBURHWVtBCLThGD6eRpN3sQ69xpC7I9VWIOS2JCtjHvNgzsk0Vv+7
	BpoN1DMLNheuu8OiDPKrpBDaAwu9GRfVP2gpODYpqAVmW54e4rzpQBSwTHVSgkZeFqZqInfzg28qq
	0SoFPhAjgkeJCjVY6iVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmSB9-0000000BE5l-3qQK;
	Wed, 22 Jul 2026 08:19:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmSB7-0000000BE55-1E5q
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 08:19:46 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66M7CGiu131675
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 08:19:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fiIP4alQ4KMMwt0IpfKoWbfpOV7tZLr+gIT8O6Cw300=; b=Fv5/JdvSn7Ch91Fl
	Xnax0wd3gP3fZ3tefHvxH38LkQJ2rYWzBB9Dkg6vFkGZmm4Ccz9eupru8fGkS7zE
	tYjRiome0SEMtjM2EHySdcwFQ0MulEjltFyyO1GXLSTit2+JyYHVzIjWvXLSTprn
	d23hm32wrMJGiugJ4Vvx2+DMqTp7FXudtoaNUs/26zeitnwejk/2Nn9nYWliGNe9
	r7wPMTZfPLYCRBeaO27m1d9c6SBivNKhSI26XdTWpFQ2cn8QRTEmQL6NR+qiebSV
	kG8RWAozyne/zHLaKsRAL9bUDoDL1EqUSdZzAKlw6L8oqYpgaDQVGH7QuUZaMA3X
	izOrlg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjs928942-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 08:19:44 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8486c3411c8so16466334b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 01:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784708384; x=1785313184; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fiIP4alQ4KMMwt0IpfKoWbfpOV7tZLr+gIT8O6Cw300=;
        b=SMGjrpHclJzFiiB3nbeTe/1317d+GnkYbcj98jMabGoiV4AO6NNpgarPeRbSrv/TIi
         SQJzBF8X1G4l5ZInhSnM2HVmnOzd62yzVmM+eMCanHKWTR7whZYs7Q3DyEZeyMaqAqpF
         ruklyAELTLMfBTyrYR7lZ/QjUYqot4jM6ZMVSmZ4Kr35WoXRhtUge93cPwDyFCOtykeN
         Jbnp7/6iskvdPJN3YtaXAalAyp4GiLCxH/aMnIvcgwQ7XkVU4dKqdq5gSEFD04pcS9AQ
         GVgqEd8Zk2VqRdbf26kLjjWST1HFtYzYhkSoLgpvO9ppzUSgtFEq9OE2NH2Ia9+aJ1BQ
         EZxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784708384; x=1785313184;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fiIP4alQ4KMMwt0IpfKoWbfpOV7tZLr+gIT8O6Cw300=;
        b=luwoFmgB96xQGDI5oLjvaR/JOZjHWKCQgYGbo7xsX/y/Pz+3C5mcNzsO9LX8FbbqIC
         oACF7DwEDnWC13bBoKvSYUCbIDfiWSHOpxJAEcs7P6gAN5/S7F/8k+NOX+NK9nmrGvt4
         LqVXr/P4FEkm4mcHWn4po2oPHh4spY4IsR08IIa64M8/Szxzp8rbSM+neLC554iTcz/f
         C6himct1vIHtQTjknsyemvznCx8Cy+jQR8/LeVpmtFvlnH9fAiMpr1JwRwxvSqtr06At
         Juv7R7w6xIsp4eHGl38DG9u0gBifgyA94pbKZviQ04l1fu17vsAfjgKdDPH/iajSSyua
         3RuQ==
X-Forwarded-Encrypted: i=1; AHgh+RrjwBgmUI7ZdT2DMaTKDrgNJq8RE+gO85c1/b+xnxQQlpGxmXMWpMip3SWTlEYVeoy8evfXG9h5AMU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzZz/Sewx26nSqG3Qf49oyyBD3zkwu/H1YnFeBrTBbDMINJelbu
	X9DzLjrX+qXatLLTnFUoToNgj7wlbfKRu2yIOmv6K9jm7H57P2Wa4lrJs+JOyDrAdu0tIM3qmwM
	o/NfZjbMontceSd2eQhsDUcnNb+NX9TIq378iSGvLlBPwpdXzlPZtX//ZPJqA642UgZ2g/AirFL
	fj5Es=
X-Gm-Gg: AR+sD13Cjnrvry27ZtgGP3wkrcX6McBKKMso/qgrJltaQMlj1klLhF1HL0ebtMMk8ay
	upIvLynBwPdfB+gxe8T+qrvtW2JYONPJazcg3TcPphSmhAA16HY1q+xi4fvwo6VItHWCHlVS7Ok
	Yn+w62J6LMaxio9ZGYvH0FdKFaYAs3vbSitEnvTP2OVzvslPxzEjGibQG19wKZMq8zdyOv9COR1
	rcaYJXFTa3M9ZXZ8ibhZz/lyQWZm9B3ZPsOSRMSQtuX60mieg6CSRYr0Xe6lSaCIM92zR6FBwbk
	ge2lfc+pMBfvW/sb2xPtTVyAkg/t7Jm21EjkOnVng+IKFfoNNHgvEfLOCbIeBAxwa7gvvU7Io1E
	JvLcyxDO5MWeckD7MO6TgYKKAqA4=
X-Received: by 2002:a05:6a00:3a07:b0:848:2f7a:2e5c with SMTP id d2e1a72fcca58-84c295065d5mr21919073b3a.75.1784708383969;
        Wed, 22 Jul 2026 01:19:43 -0700 (PDT)
X-Received: by 2002:a05:6a00:3a07:b0:848:2f7a:2e5c with SMTP id d2e1a72fcca58-84c295065d5mr21919023b3a.75.1784708383342;
        Wed, 22 Jul 2026 01:19:43 -0700 (PDT)
Received: from [10.233.16.34] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cbb8f0d872bsm787911a12.7.2026.07.22.01.19.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2026 01:19:42 -0700 (PDT)
Message-ID: <f20f7b30-6717-4c96-b568-f916bb429a7a@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 16:19:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/7] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 SM8750 CSI2 PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <quic_vtumati@quicinc.com>
References: <20260721-add-support-for-camss-on-sm8750-v6-0-a5f841061d18@oss.qualcomm.com>
 <20260721-add-support-for-camss-on-sm8750-v6-1-a5f841061d18@oss.qualcomm.com>
 <20260722-literate-nondescript-seagull-cbdfaa@quoll>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <20260722-literate-nondescript-seagull-cbdfaa@quoll>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDA3NyBTYWx0ZWRfXztz+sYhE/Ygd
 HzgzHdHx5Yaz6gnyimgkMhukpWgBlXaY1iVHYVJm+7bn2QLP/xrXEqUANLi+acqLUHjnFr4W7bu
 eoXSg8Cplv9jZox+LMUwNokAX7OMsO0=
X-Proofpoint-ORIG-GUID: AhOVwqLhIsFJW4a4uoOBSJsrkZo-IyKm
X-Proofpoint-GUID: AhOVwqLhIsFJW4a4uoOBSJsrkZo-IyKm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDA3NyBTYWx0ZWRfX97UUHuD94N01
 QEL+Sdyl6NBAmvRCv88hxvBfPBKuyLhd7nLRvKOT0p5Met3FRrGdViGObgphrRQbspz74mFMcrZ
 HGhhhJc5m88T5ElvJP9ULBQveHS1GM4BmAYaXF9uCEqk9gegzpetVecIjvxIJcG9putTOMvYaSr
 2JXtm/vzi3IQ7HK6o5YW8CJl0elx9lsliApjZxQmVQdNioCsd3Nwm3GWRJVsMXIHb1cpU0UnfqZ
 OjSWGmtp8h7ZcF454+JMprQJxL0+dlrj4g78i0yNNt7xaRSRWQBtFtYveC9ikAIxKkP9eyy9mzz
 GXPbaKvSmWL7EEZI09gzjeXO5mwxQOO49OujjYxiFFvpQospPxKfqETD2xNXPaUVSytwm+Vlup4
 ZTB4YW/LMpShUuwtyDVqq4yKbdvPkMEjTXF2I7G7Mb+f4QLyXhxPAy+E7L8JBXY9DImGq4bcaIt
 KP9pfdpMFavy4AseK0A==
X-Authority-Analysis: v=2.4 cv=QahWeMbv c=1 sm=1 tr=0 ts=6a607d20 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=vpPPM2f6CJMr57xAQTgA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_02,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 clxscore=1015 adultscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607220077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_011945_343941_751178C0 
X-CRM114-Status: GOOD (  23.72  )
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

On 7/22/2026 2:57 PM, Krzysztof Kozlowski wrote:
> On Tue, Jul 21, 2026 at 05:46:00AM -0700, Hangxiang Ma wrote:
>> The SM8750 camera subsystem exposes six CSI2 D-PHY blocks that follow the
>> same programming model as Kaanapali. Describe the SM8750 CSI2 PHY using a
> 
> No, SM8750 does not have the same programming model as Kaanapali. When
> SM8750 was created, there was no Kaanapali, so how it could have the
> same interface?
Will optimize the description for that. This description is not accurate 
and cause ambiguity.
>> "qcom,sm8750-csi2-phy" compatible with the "qcom,kaanapali-csi2-phy"
>> fallback, so the CAMSS binding can instantiate the CSIPHY nodes as
>> separate phy devices.
> 
> Redundant sentence.
ACK>>
>> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml        | 10 +++++++---
>>   1 file changed, 7 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>> index 7943049834f9..95375efb2597 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
> 
> I just commented on very similar patch. This is confusing, there is no
> such file and I do not get why you keep adding some long chain of
> patches touching the same lines. Squash patches.
> 
> This is untestable.
> 
>> @@ -16,9 +16,13 @@ description:
>>   
>>   properties:
>>     compatible:
>> -    enum:
>> -      - qcom,kaanapali-csi2-phy
>> -      - qcom,x1e80100-csi2-phy
>> +    oneOf:
>> +      - enum:
>> +          - qcom,kaanapali-csi2-phy
>> +          - qcom,x1e80100-csi2-phy
>> +      - items:
>> +          - const: qcom,sm8750-csi2-phy
>> +          - const: qcom,kaanapali-csi2-phy
> 
> SM8750 came one year before Kaanapali, so how such compatibility is possible?
> 
> Best regards,
> Krzysztof
> 

I acknowledge the truth that SM8750 is older than Kaanapali. I handle 
the compatible like this because the Kaanapali series was developed and 
posted earlier than SM8750.

I agree with you that handling compatible string in this way may raise 
unnecessary ambiguity of the relationship between these two series. I 
think it's better to treat them as separate ones and add additional 
compatible string standalone.

Could you please confirm whether the following format is acceptable or not?

properties:
   compatible:
    enum:
      - qcom,kaanapali-csi2-phy
      - qcom,sm8750-csi2-phy
      - qcom,x1e80100-csi2-phy

Best regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
