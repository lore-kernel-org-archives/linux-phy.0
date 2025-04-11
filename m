Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7614FC36010
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 13:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ai+BxIn0o6g4j5zKtR6w0qP7D9Yho4hqJIFc0ji/eYk=; b=V8GSJjYmsI1B8W
	gU+bbXRW3Xx4Xp6ckCtyGcBeyjZIjLDf56Oe1EUif1DEQywHH095LYk+GzK6h3fwJEdRvQgChSZEn
	gWZQcNPCciPvDM24wExvFqDrYGZ8lciBWE74S5+ixrH3pRukHKNSaG0XxNLJb4qbWKqy/dBqh+2aw
	5YPwhMqs9Eg9IHxi3RATKGkDR4n9Ro2TwhDgkWSkj2XrVocK8Z8/W18VI/AkIfCH8k4LQn/vco/TI
	ertw8ZC215EX5I83IBzeM87BzjLyGOV60gz8EMj7X3og1jmHLo6dWKFvsUZhKNTfMPgAIJjKrieFX
	KQdCfR49/QXDRS6LPG6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3EMp-0000000Du20-0BTb;
	Fri, 11 Apr 2025 13:24:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3Dvp-0000000Dp9H-44Pd
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 12:56:31 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53B55Fbk018376
	for <linux-phy@lists.infradead.org>; Fri, 11 Apr 2025 12:56:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CMvxg5D4cmEiDoMOwRUc1Nn+M/99Mlhq5+0RDjA73no=; b=iARYEuE1NWygdwH6
	UKWKY3z7djZ5qarxVEM3NZg7vw7a8PUC5MIF4rrs21Ati++mdCQwhhBTa1eO/A6+
	uHp8Yl9cEUqwqlVoNRWEvh2PllK2DSr0Y99jz5tijGKGR/E+lINvDOldn/8+PaNA
	72Lo57tzAUyRTfQGAwEe3NB+RKDK4CWjFwxPTSwCXKz2hzvcklVjU8C15GAQgPv6
	7BDkBlSGn2lsDYp3AjujfQFjh3QrGvUQic4EwrbVuv3a2ZdwDZiGp8OtUugnZXoS
	/BHJvudYAlREQzTpYfCCtgl+ozuAT0HGM3cBpfRFSDB+1jG0wM4PTCwNVJdMXj/i
	3KjKxg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twtbahg6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Apr 2025 12:56:29 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-73009f59215so2251841b3a.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Apr 2025 05:56:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744376188; x=1744980988;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CMvxg5D4cmEiDoMOwRUc1Nn+M/99Mlhq5+0RDjA73no=;
        b=NjJHbFz/B1x+CA1CYzlEhPbczl65ZinqEVPdjTwreng9alse2xDYHbeB6wUwyVwinO
         GVtR0ARZZB93YKXsTX4nhRjzXOhnv15PjLw54UVGCls4haDGoRLCGzSgQ3uToxZiDZda
         6zLfP+pr5M0IjQOFOKU9ZKhTto+MpuO3oI0uAy/1rdw8y1GPS6mCML1s7/gwK3YPxFTK
         G8b2Awd78gswsBF320wMOPaec7i//YO2auHwP187fWaIbFClJtHapACzbthadgRdJl5q
         4r7RoJVBvg84o4wLo/IIbhAm4oDAVRyBFuX2f4CcLhKvjEXR/kvx+Z3xahE6eRlY0ueE
         c4YQ==
X-Forwarded-Encrypted: i=1; AJvYcCWa7ejj+lixRdddmneYrMkpAtpivYeZRtx8HFWnU2sjIkjPhtNb7/WLRLLUYosTVxU9LecKGXmIi7Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPtq3z05h9dqZtGeu41mRyfpjHLIpu/AxD9y0Ncfes+j7Bklp8
	rZvtIKojj/sDoyGuoRWs/akboIpSuwacIKzweUqNYYfpp9sU2yRXC/n7Eg2rgVD1WsCciS1hT5f
	8C+WMA6/msi85H1ae3YeLlS70Ry52sCJE+pkgY/3sD2wZQNonzJMT/0t3m4SQj3lC
X-Gm-Gg: ASbGncvT+LncOw0dFYY9l1nL4IydGkk14wJdHnN3Qdm/GDvdw0d3wMQyTbwIdBoNemE
	i8eUsDDl7QwPjXfoayrA2sUnwWJoJm2ZQpVsJJ9m72in+l5tYw7tZFs1sKicfFq6hwn2S9beUMb
	md49zMgsF8nP/oNPCVVe5jqozoDhIK93qJIbuCoaDw23F/p+8xcFP0YO9uGbC54aSZyNpo2upix
	Q2wl0CBZLxT8s6kmk6p0tsUg/r1b3XCaFYTsDdiP6MCQ1wv4COr8lFKYjaA7+RgjUpaKhrTidRY
	ocFjGd+f6wK353SdiRmVtibt1MM7RKVfhjZgN5X1DexDFDWXIp9t
X-Received: by 2002:a05:6a21:3281:b0:1f5:889c:3cdb with SMTP id adf61e73a8af0-20179787801mr4522239637.8.1744376188251;
        Fri, 11 Apr 2025 05:56:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzqIKT2YA5sP6Tn3NINcpTsJ5x6Bui+ZmBQb0oUO6uDlCc9CZJV9wpDBiw/Mrmpl1rkjrz5A==
X-Received: by 2002:a05:6a21:3281:b0:1f5:889c:3cdb with SMTP id adf61e73a8af0-20179787801mr4522201637.8.1744376187801;
        Fri, 11 Apr 2025 05:56:27 -0700 (PDT)
Received: from [192.168.1.2] ([122.164.81.245])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b02a0cf374asm4611147a12.26.2025.04.11.05.56.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 05:56:27 -0700 (PDT)
Message-ID: <74c9c5c2-6195-4c32-ad34-a3889de0ea53@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 18:26:23 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom-qusb2: Update the phy settings for IPQ5424
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250407-revert_hs_phy_settings-v1-1-ec94e316ea19@oss.qualcomm.com>
 <Z/i+6k6VseihdQ69@vaman>
 <734cf70a-1d96-4a87-bc7e-c070c1e7dc8c@oss.qualcomm.com>
 <Z/j+fs6hCVhGKLcH@vaman>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <Z/j+fs6hCVhGKLcH@vaman>
X-Proofpoint-GUID: Kxb7jcNJvDGWy06VufDw1mdKAO0k7cYk
X-Authority-Analysis: v=2.4 cv=LLlmQIW9 c=1 sm=1 tr=0 ts=67f9117d cx=c_pps a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=uB/6cedsP4G8bgUXdgZ7XA==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=rZc7fG3luCRD_x8UD3oA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: Kxb7jcNJvDGWy06VufDw1mdKAO0k7cYk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 clxscore=1015 mlxlogscore=934 malwarescore=0 phishscore=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 spamscore=0 adultscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_055630_031554_40429483 
X-CRM114-Status: GOOD (  15.20  )
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


On 4/11/2025 5:05 PM, Vinod Koul wrote:
> On 11-04-25, 14:29, Kathiravan Thirumoorthy wrote:
>> On 4/11/2025 12:34 PM, Vinod Koul wrote:
>>> On 07-04-25, 19:51, Kathiravan Thirumoorthy wrote:
>>>> Update the phy settings for IPQ5424 to meet compliance requirements.
>>> Can you specify which requirements are these?
>> The eye diagram (Host High-speed Signal Quality) tests are failed with the
>> current settings. So design team asked to revert.
> That would be good to mention in changelog.. am sure you wont recall 6
> months down the line, which requirement this triggered the change!


Sure, let me mention in the commit message. And yes, as of now, all the 
compliance requirements are met.


>
>>>> The current settings do not meet the requirements, and the design team
>>>> has requested to use the settings used for IPQ6018.
>>>>
>>>> Revert the commit 9c56a1de296e ("phy: qcom-qusb2: add QUSB2 support for
>>>> IPQ5424") and reuse the IPQ6018 settings.
>>> Why not do revert first and then add the settings?
>>
>> I thought of submitting it separately. But what-if only the first patch
>> merged and second one didn't due to some issue, it will break the USB
>> feature. So, I thought it would be better to keep it in single commit.
>> Please let me know, I can send V2 with 2 patches with the merging strategy
>> (both patches should go together to avoid the USB breakage) in cover letter.
> Series is applied together and you can mention the dependency on cover
> letter

Sure, will send V2 accordingly.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
