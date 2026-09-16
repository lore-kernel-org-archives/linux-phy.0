Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 919DBC88E5C
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 11:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OS4w2rSiI002ywfDQox6idGYz9gbSHYbBj5BDmn82tA=; b=VwvJJy/A61PB30
	mafwrnPD3Vw3QiAOT+GLhmhbGg1k6wFRxai3REbFPWffqyRVejqxctipbgZptLa83IZhNcNtjOOVG
	FN3nP5GUfDYG8aslV78swXf+mRydBkmVcE5fg5m8issQVcrqWAYPcF89p5+1IiPTzTzMLzC5i26T8
	5zW1jXasAOYw0yuqL/8cnKFEWKxrA65Nr5v/CYn02nk74L+SkmX/I7zpHmyUsQ92Y0zNR94+q43tn
	uKo/XDuqOqNrZpV5iiOlVkGMyuqXPsF0Q+YThylcLDbEMfEFiiDWcm4jN4xkHKPuH0hx8Joo5iewF
	tTUywy/upCkfON86qBNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6npO-0000000952b-0UNf;
	Wed, 16 Sep 2026 11:29:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6npM-00000009525-0Uoz
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 11:29:25 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68G92hph3169140
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 11:29:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DOrL3sm+i1neD6iGy2zkTnSLDE6KJfju951dBmahAos=; b=RpaVmxwmyMOzIZR2
	kDtAUBfg0AgHqU/RCVmEPDCrMJeJojOW1JMJj6bcu2EMqnq7WBC0udXk2Z9Nn4UW
	8Cmq/9vRW1eYdIGR9/CTrlJrXIyOwHBVv8Ie7Y9cZZ1yfX9zfvLzAJ3tO7xo12FL
	GZwZDFYhxuXGaNmO1TZccEbIjv1vnzM2V+Fv0R3hv9JdvaBWxstghFMkByY4RQIX
	aCjUOWdgbJZO6o5qi+0odHi9CirbRcF4CZXtPkOrJ9NRQMy5OhfXGqXcXLyL5kiA
	IizjnMqkj76flYJdyB17ezA5H5HjLXjY1IOMCJhErwSiIQH/uRF2PwOdxt9xuXdH
	+KsAdg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqpu2rwsd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 11:29:23 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-39dfcc20aeaso3044233a91.0
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 04:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789558163; x=1790162963; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DOrL3sm+i1neD6iGy2zkTnSLDE6KJfju951dBmahAos=;
        b=P3dCv0JS0o136Q/NRdlRz1ZhINyQvH8Rp0JeuiGdn3Nzzbr5Earyp7eR/gj/qHrl4m
         JCNhvcCuhbCTDoA5IwuHCtf+CMdpyso5O2Y9lr6PwQbN/ZQ7H+wf6gOeahI7yJ9G9TWu
         rYmhQlW60o+SEcs+zyTuOgJKnLonTiM1ILl9x0gkGX6gSij7wQguKvR1ETUKceJNvyFb
         FbJ2dU4yf+KOpRQgGOfsHrpdxbnQ9q4Bx2lPTZSnkVndxxDfSek/q7n7OFtEfEM0tq2S
         XTdgGcWJveiiBr7ebmHQUgpqrXOcGjkkQUXvnRomPFyHazg2lJsV2nINUHQArDb0uLOP
         r/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789558163; x=1790162963;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DOrL3sm+i1neD6iGy2zkTnSLDE6KJfju951dBmahAos=;
        b=Ue5SYFBxJjb1mkKum6bDoE5mSqJs5DnbcxVeQmldMyHTGEAl7tq/NwNhJI9XlhIC6K
         A6JcBw9k+FQohz7bXpAFhXPLabHCzLxNqoVbNR/iI0tVa+7RrZf9aH1/HeQhnB6NVGF2
         Ju9cXMuHZfm4ML9E8pnQEL4qG3PfSKqIa/yGCK4A7wZPlxZz0H+vn4lCuAgmvV92my0t
         MJthw2M4hKTqTF35VPVBd+/WrqIiQSk8dYOokc/x1FN3VucG3B/aZRF+6n6R43u/CDfb
         EdrkIHSbZULaD3oSvHJJpY0sHfJisyy2+BYtuPQUbfmL53buLg3sEuVGD3J7ZZ3Duu0c
         xStA==
X-Forwarded-Encrypted: i=1; AKwUvByIkpo9t6D1QrSP/9dwh632eWWjSftUHuAUWy+kXB4MnRK6JidXqR322Py4Asl+9btT9Chs8CyN1Wk=@lists.infradead.org
X-Gm-Message-State: AFuF++mLv2qY2LhZA8HwDV+IRO/Idnkewr2bXdy05HuEzCE8NqSed2Dy
	in4ho+15fm4xhj/GkAuRk7WjGWuQtt/5GU9B5JCgcpg4LrAFA9zwkflheFhkMqoh3NQZmPi29Gf
	9yXQu0j/1HaY8aDg2GljI8BpuaDudWfCChPZ8sZZo4BEBU+MglFX7QTaeOyi5nlTm3yGF
X-Gm-Gg: AYBFou0snwVQlqKfXmky8gR+ICcW7lCVLp+WtBH+cbqv2g/lvsezJOGzxJEJwJE2F9b
	10zt3LS+9myAkmWllb3lh1sGOYyFxtKDE2UmVlFJK2QchmucvRGGAzHJWbE+h80TnN7CwQ+vySv
	sjlx6C413me1ZpvhFHZHdlJjIjKMKraYySb+z0yk3jGZo2YDe+/oFuzAsPr3PxhMa8WQsgen5Vy
	Lep7RsYuPWRbmzrdOocu+/dwx1eHYipglWkVQCl1U3JMRjVU85zSpj1w10UcxMp36IwgW8JpBTX
	gTPNhVVKEdwAiDeWKsTdHbNieqc2/TAULdCsE9yVJ5+aw8g0s73j/PEfxp7B11MR+XRC72k3nK/
	P7X3aP3kTkxow2b1wE8SdapXZRC08
X-Received: by 2002:a17:90a:d444:b0:398:d6e8:f84e with SMTP id 98e67ed59e1d1-39e1e314c60mr5919082a91.9.1789558162629;
        Wed, 16 Sep 2026 04:29:22 -0700 (PDT)
X-Received: by 2002:a17:90a:d444:b0:398:d6e8:f84e with SMTP id 98e67ed59e1d1-39e1e314c60mr5919013a91.9.1789558162159;
        Wed, 16 Sep 2026 04:29:22 -0700 (PDT)
Received: from [10.206.111.19] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e1b71428dsm4356441a91.10.2026.09.16.04.29.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2026 04:29:21 -0700 (PDT)
Message-ID: <5dcdf9e4-6be6-4481-b5a5-0d3a7784de9a@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 16:59:14 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17 0/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org>
 <3a2f535c-7ccb-4b50-a6fc-f73ec02d4acf@oss.qualcomm.com>
 <78a7700d-32f7-4592-8a50-c90175338972@kernel.org>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <78a7700d-32f7-4592-8a50-c90175338972@kernel.org>
X-Proofpoint-ORIG-GUID: UMyhnZU__4x8-COR_bfz9WUk-50rB4ax
X-Authority-Analysis: v=2.4 cv=NelzRGD4 c=1 sm=1 tr=0 ts=6aaa7d93 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=yuRkgBCuwwUBbEn3D1QA:9 a=QEXdDO2ut3YA:10 a=Qzt0FRFQUfIA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: UMyhnZU__4x8-COR_bfz9WUk-50rB4ax
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDE1MiBTYWx0ZWRfXyZuOl9Hd5qHW
 3DYUdxGsg1kNS1Z8rdL5yQuI53HPBKL4YmPOcbKFT01U9KRx17LaWWEQAYpfiLDq+4EIENSLL0Q
 CoeEAu2BzUYTILj/5on8p7NXV2uGHqMfa9I2V5Dxc29+5hYC3Uxx4sHWtltqspm3GDJxDmTIPkw
 aaOTK7E5eudI2KwkAJB8PfxbP32IJcMOvobiBtGc+q3GodP7eVNOaK+d0EZWMDXehM0RqTNYTVS
 UWj61JihNOVE3xgjG3QfJwqtTI9q4NO1uSQquLacwnWxScSYyrzlhp+x1mUpohBoRS+WSf3i02N
 BcU0a/M4YbvKjJNjE5O+QgJgQnRlqyyqrLY4U4ItDgq7Tq88IoIXrpL3PjOGAYJzZEZk/igd0aS
 EBvGhJyeEouq4O3vtYAeWfv0361YUH0N13IxGIXsoz9oEnsyuA9bab8ScreZdHcsafe5HEMOjEf
 8SoONps7xZqoPVPMJ+g==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDE1MiBTYWx0ZWRfX4NiOYLxTjLLM
 hGwmMgo2ZA+ZCraJllFH8uwYY2pWjEqfr5sxLwGZgfvWFbLCW/awqiOE8xLj7m11GPOqcYx2SIp
 vj+ValGkMiRR8bfYcsUINtM1i+bKGu0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_05,2026-09-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 spamscore=0 clxscore=1015
 bulkscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609160152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_042924_166518_FE21F052 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
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



On 16-09-2026 15:47, Krzysztof Kozlowski wrote:
>> For the series:
>> Tested-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com> # Glymur CRD
> You cannot test a binding, so why replying to cover letter which will
> make this tag 50% applied wrong...

You are right, apologies for the noise.
Bryan, please drop Tested-by from the dt-bindings patch.
---
Regards,
Nihal Kumar Gupta

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
