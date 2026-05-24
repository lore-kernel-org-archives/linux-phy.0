Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D210CD5BAB
	for <linux-phy@archiver.kernel.org>; Sun, 24 May 2026 13:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWh6FBngjs2U58nxgsMoZR6mLCcd+Jw2Bus3cCR0PHo=; b=N3NyY6UEwF0eaj
	2nWABzh2JEmWrKkhAmqYQW7FklWjvF1shMpOMhG/ueNN/Re2hYJO+J+p9go+hxaqRTLD9VjVskrkx
	CIS1fTVRr/R7ZJCA509kwbUbQweWNOeoyU1LIDCnLF6xCp4v54vq5RO4/rmmwtcAfECJdeIPvvIp9
	j3BK8yFqNV39I2bU+Vl5ApYrW52bWWHmgbprJDBehs2S46Iv1ji5PA4iJ5O4vpjo1kgyvg1oaLAZA
	ytkiwe7g5EOq4GgRbQl8WA0d8rnmPfpIKAL5LzhFw1Wi5eaSnqTUbntvFWCDqlevM4CKdZieSD/+1
	ZidydmXp5g0gnUzMe7mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wR8Xx-0000000EzUs-39VA;
	Sun, 24 May 2026 13:07:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wR8Xv-0000000EzUT-00PG
	for linux-phy@lists.infradead.org;
	Sun, 24 May 2026 13:07:12 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64OAOtO8460627
	for <linux-phy@lists.infradead.org>; Sun, 24 May 2026 13:07:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3rFnaq83VGMEew0lXNYSC0puW4n7VbyCoCWMnn4QSJc=; b=AvQIgkBJDUbU9bCZ
	PXfr/RMex/vPBtgPdIQzG0N79vOXB90r6lDJxBErmLHekenl52svqRCyW2z6yXeU
	MDiIgQmzI0oehTAao3UZ/RFY5mdrwDbmzKAMmizUfgem980ZwxUUQqMhbCfID0bz
	0cWzKJkDCkABLH/3Zk2jG/DcRHG8LczF9j47rRH05z4zHaGAiJHy+RuURY98hWAN
	9lBQ8MysUrfTNo1y90mSkGcR4I3Im+6Mlv1Tlmox/XJ6A09pIWcud6BP7PdL+/gZ
	Cg9iTQEe4GDoMYf9SVM5E86Ico5IwYQx432dzMW5vDsW1Yib/38Ia15cvgl4lZ5u
	K5HIAw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ebba0teb4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 24 May 2026 13:07:09 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c82c4772950so4260923a12.1
        for <linux-phy@lists.infradead.org>; Sun, 24 May 2026 06:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779628029; x=1780232829; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3rFnaq83VGMEew0lXNYSC0puW4n7VbyCoCWMnn4QSJc=;
        b=Pp195oP6tPP+cnPzzI6nC/DrY/qgzMjsh/JsEGKeTrDXj99bWCNyplAdiewNi9cjNz
         GYbT/wd6l//e70yCcAdBK6o5CtA33ZX24eTxGZGb8Gp1FmBd0NjelD3Y59vShQ2TPqsU
         EeEq1hLCtH6IH5JhlzErJH1zzYe8u6Rd01nCCyJbyxbxyHfXYc9iU3Dwfd4McRm3/3Kd
         /Jm0xgiQWEv3fsCm/Xkv8jnR8xYxvX3Hh4Uq/92PXGmASBWf32Or3nVGYcnd5elD8XyK
         8eY1DAa74AXG+hr2cb6A3EUYJxv6XVnGPYSvLKSVSXFNRrcbLrY6y3v1vMF5N5enNv2b
         3kXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779628029; x=1780232829;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3rFnaq83VGMEew0lXNYSC0puW4n7VbyCoCWMnn4QSJc=;
        b=W6i6nWzvZkjOOOxSizMufPTI71PiqaS2f0T9YNh+1/OdcXxiP1aF12m+3dEkUkMTLV
         cCYjlUzg3Y820z1uH/d80PHl4AAIROQ6ws+2AMTVkHgdZXOikh43zmK++MKqTx65CF6q
         EwhS1NlO7XqdReBnXfCKIWjvbD/lOHRc13nkpBn3A4tMalZARp3D4XywHmN8DtslgBR4
         dKHe/qcs7sojLJPWKr+Gswgp4+TpHMqJVaCjvw/TXYr4cOd9qq+W68WClSw6MY2Ax11l
         hm6vGt0AgdArGawrZo+6YSKt3ZDalOIy5S/9WVS5I7ODWaF/fplX9od5nY0Po+MHAuiq
         teDA==
X-Forwarded-Encrypted: i=1; AFNElJ8Qe+99kY+r4gGLG96C/izDXnJTak4grf/BpFpdL3HGW9UKr4AmFpFJ9UkZgFTY9+Snq/c55tkjQQE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzcKKoi1ht7MuaDfHa170xvrdb5RaNAxvn6WwWrnRt+hvM7hbhU
	0HOeOxv1ne3uthpVZMMPCTbXmJvTJoUoUbM7YyAHy9QKMtr1szL+5LbF+oAnShiFC1OB84ZpzRi
	m8uz29+6BBABDu9KXYe+mAipq5itj2Ab008E/idxaXtcKgqfvUZ91YeXb6gnnVoaztSLG
X-Gm-Gg: Acq92OH1mJUyiVSLvTYwVHFX6NbspraVRmYONFC6WkYM3bFTGOYwJsu+u2K12zffP53
	wrO14uVG3883v3hzGPWurfcJhodajaqkE0kkZs1kRmWchkMdx5uHDEHUF27w6+O+4xAVFa9zYNR
	SprsYK5rslVd8vYqwG66UtuMvMYTc5RtO44+Wglm3lPX8NucIDpA1lK4K96uAP2E6ijLlj2yOUo
	dSC1oxiP7MvYGMG6xn7nkD+6Ow1KEAT3zN3Ck+1O71KphuO+W5rlASwIcVtpYZhonEWO4E8FN6s
	+FqpoqhOA7LFlJDx3dwKOYLXn1luxFXC//iy1s8R88G67Oo0rEBTlVTuphCy1+HvAI1mxu3eJ4A
	rmINgzBtFAjHSSY+IJfH3s/84BsUNf/PXke8YsGrnbqpZdaKPfG6Q
X-Received: by 2002:a05:6a20:7485:b0:39b:8571:3051 with SMTP id adf61e73a8af0-3b307f420e2mr13083770637.28.1779628028659;
        Sun, 24 May 2026 06:07:08 -0700 (PDT)
X-Received: by 2002:a05:6a20:7485:b0:39b:8571:3051 with SMTP id adf61e73a8af0-3b307f420e2mr13083731637.28.1779628027923;
        Sun, 24 May 2026 06:07:07 -0700 (PDT)
Received: from [192.168.29.166] ([49.43.232.251])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c852028fecbsm5631720a12.1.2026.05.24.06.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2026 06:07:07 -0700 (PDT)
Message-ID: <4d10e792-5d47-4c39-a054-37588ef7fd6f@oss.qualcomm.com>
Date: Sun, 24 May 2026 18:37:01 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: Add Shikra EVK boards
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, conor+dt@kernel.org,
        neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org
References: <20260522-shikra-dt-v3-5-80ffde8a3dc4@oss.qualcomm.com>
 <20260522193943.660811F000E9@smtp.kernel.org>
Content-Language: en-US
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
In-Reply-To: <20260522193943.660811F000E9@smtp.kernel.org>
X-Proofpoint-ORIG-GUID: i26F119D5tdFIm7p2H_HMxlLKQTL5ce9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI0MDEzMyBTYWx0ZWRfX1KK2DwV6bG+Z
 9s9eF2EPDfY+QEQ0nUA/6OWNb/YWdhSbf4KfTtg8V3U3b3QzMvWmeh9m0aPXOwlTYdVB/asbrHW
 vVVV0p/qziM+c2H2lgms+D05LIBebGnsUUb06IsHjuS7RzdNdYV250oiY/LSm1CiARxvzTfNdqU
 9WiZY5UeD9r0eRLldy4FQzr91uuochVGIqrQ8HvSCJAk3+BZkBi5cJOfPGzYV9l4QPPpwKhPDoc
 jOYQJMbVdQ2CeU8GXKiiFxRCgCwQ7cAjd7VtM8To9PvTGsp3S6OEVdb/dqc2LIsauTjw7RSBbat
 8V/Sug3a+pQ/LgP30rDvDF0jHqCn8HodHVrX1NLUujGSWN+IfDreowmISlDmXyoiz4A3BZdZrG0
 /pKqpkSSjlkGmOqiO5YbGGOL3Zuf+KAAjxItVc01+EvBb2DTu9t107T2v5u145Fy/Lxg/3Ob4p7
 bKduadcZFAy3dj2YtOg==
X-Proofpoint-GUID: i26F119D5tdFIm7p2H_HMxlLKQTL5ce9
X-Authority-Analysis: v=2.4 cv=Xca5Co55 c=1 sm=1 tr=0 ts=6a12f7fd cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=XawOCIWsnnDrxziW7imd2g==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=rmuw6e2lUgWHCeyTDCgA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-24_04,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501 impostorscore=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605240133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_060711_062950_66BD6B9F 
X-CRM114-Status: GOOD (  17.56  )
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

On 5/23/2026 1:09 AM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] The device tree file shikra-cqs-evk.dts incorrectly includes the CQM SoM device tree (shikra-cqm-som.dtsi) instead of the expected CQS SoM device tree (shikra-cqs-som.dtsi).
> --
>
> commit cb9ff9c76f4ee019113138237f57794fa621d71f
> Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
>
> arm64: dts: qcom: Add Shikra EVK boards
>
> This commit adds device trees for the Shikra EVK platform, combining
> Shikra SoM variants with a common carrier board. It introduces three EVK
> boards: CQM (retail with modem), CQS (retail without modem), and IQS
> (industrial without modem).
>
> [ ... ]
>
>> diff --git a/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
>> new file mode 100644
>> index 0000000000000..b3f19a64d7aed
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts
>> @@ -0,0 +1,40 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "shikra-cqm-som.dtsi"
> [Severity: High]
> The commit message states that shikra-cqs-evk.dts pairs with the CQ2390S
> SoM (retail, without modem). Does this file include the incorrect SoM dtsi?
>
> Including shikra-cqm-som.dtsi here seems like it would pull in the hardware
> description of the modem-enabled CQM SoM instead of the expected CQS variant.
>
> Could this cause boot issues or lead to loading drivers for hardware that
> isn't actually present on the CQS board?

Already discussed, refer: 
https://lore.kernel.org/all/4787d5f9-601a-4d27-91d3-33216ee6f64d@oss.qualcomm.com/

Thanks
Komal

>
>> +#include "shikra-evk.dtsi"
>> +
>> +/ {
>> +	model = "Qualcomm Technologies, Inc. Shikra CQS EVK";
>> +	compatible = "qcom,shikra-cqs-evk", "qcom,shikra-cqs-som", "qcom,shikra";
> [ ... ]
>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
