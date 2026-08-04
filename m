Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A706C55838
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 11:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ng3v+wFsSNbtw8EZDOM9kapMfiT4sNhmgrUIdQ3fc+o=; b=xVQ7+d/j+cxprQ
	lkvXCJEt4esnw0pkf0vaU8R3H2L1sGDULm9DcY133ISV7JLPHJiuMMjowA+r+7wAdcqvupcIfl72K
	v2+jPximU6JmLFAj/cSBza6930ZYgmRlW/zFsqInU6959c+Un7M7a5fGxh2j8Q57H6C9BXrPPODPj
	Obro9SoYhtzw+9ahKpxkkU4WsMn3HdjkORCnyNnfwJgaCUxz8AWrQ4EQ0T1dIb21tFzAvbVpn4/F7
	eXXxqF0EQCK+Q7u/4Tr8J+1vKOr4FkyksY+8edVnpnjugHBXGuJsYwzY3BoPjy0JDfsFiM9hrQu6M
	KFFVdTGlDAInQjlfs8iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrDcs-00000001kHL-20un;
	Tue, 04 Aug 2026 11:48:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrDcn-00000001kGC-3QKM
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 11:48:05 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6748CMol3300468
	for <linux-phy@lists.infradead.org>; Tue, 4 Aug 2026 11:47:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5HlDOvlq5IfKTSd0JcK/ulBI
	iCb9/6O8tzxaTdb90oY=; b=LOB5PI5Ap3OC0Nxi7ryVDtoUHjKAVzD+2FKbF2/m
	vqgBBF/VCo488r1xdCfb4ux5netmBDqjhZuDK395Z9T8NBj4OGGPU6FVJ5CzHdIb
	uyqxvnJ4VX32z+buinVvLXh+IpJxgR7HPKBvCGAk7M5ZCm6SQ3ovhtuEHqI3/OYm
	7nD/fIIW8SnWULw+5leRyxgNErAe+KGXXh1D1MyXGhlCWWbtUwxykATlKqm3GaGc
	BXKbaKBE3Z9OwO+cUvpvAiRz3dTz8VQeTPdcJUgCIGZXS/wP7nXZeM61IMn03iBQ
	dzWyB4MvDw4KYeN0mxjJc7Auj4VCjP08iJKHoAzyBpT9CQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fu1p8bd9u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 11:47:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c1d137a68so24375481cf.3
        for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 04:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785844072; x=1786448872; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5HlDOvlq5IfKTSd0JcK/ulBIiCb9/6O8tzxaTdb90oY=;
        b=P99mHdhU6+YqOJUdW5oRuJKmBcqEuglMu2M4lg2Tjt47L8b2xoZY9ok5mL9mpiEUiS
         p+ph90OTTcF3qTLqQ1tgBIp16ybtM8v/nbHweQ1f1pRhUFk+RjhHuAuy5Y67O1rSwxCj
         rQ80M5za8Emz4lyJoq/3IPTH92x9YrNomuAO8dwLyx7a+Q7pZINDglnC9wLQVzkPQtXL
         1VRXNruFDq0m8V5caPSzEQjFf95nnCnD3qQmCeV2SE6urzEjKbJWtTWAGnhs0hB0l6u/
         p3/A67Pb20Dz2FzMIYMxaxQvNFD54eXLM7KdUmjljVqAR6ZSLYfc5DqQQ4obH+zfEXSf
         62Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785844072; x=1786448872;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5HlDOvlq5IfKTSd0JcK/ulBIiCb9/6O8tzxaTdb90oY=;
        b=BKL6myLMQChA7QHo3kZAlUSvIH6d+hIL08MyWVJ1S0FhC20snZFuq35nydBt7ui2Sk
         PCtfxOpGmbClrrqvTSy176NiZm0aSWJ8lBaVsWm1lUfcqh4ee55IclLoHhkHiewB92n/
         lgk2D7YYxg5fGsXPTAcwIl3+rFmPQJB1D1tDRatDDsdAi1UccFbA7rk/vJc03zWLIWIp
         QqPGlYXbartstpisiJzfU33dr/lWNaW2SsVzgY15EO2RtFs+7+7MmbjfKmvCTr/Wm3LS
         0SG9s35SD0yU3WbBEKkajxvYqNZYvEY03R47O3d3otDhVJinDmZVYMFvAXLnwvKzV1l2
         8KyA==
X-Forwarded-Encrypted: i=1; AHgh+RopFGOqlOFOVzCHnT0Y3xT1PEglsCQsCcnWseI18hgJ6dnRglr9E6W/siF/bBSJEuDymLZgO+gq97o=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxh2cPNezvxPJIL3GZbi/1RG6GyfLMJr9px+JeK9UimsLOG4BZa
	Kyz0lZdSQSbieo0Ef6PVvDqGn1EviB+0303bLOIxzlOqqBMW2JBQ0t9XxzXZAkue22SFJqyyArc
	RV23Wr9rDfPjtGA63Yl/9SYiShPwLG2vREbPTNF22Qm1V55IT9G7oNoD16FOtaaIzo1qo
X-Gm-Gg: AR+sD10sbn6wmVJUzJWLmmjmiddybqPmWtCWCRPhQtUIVk73u1PxsFQZ64l1UYhaUdj
	6AuJFFjHRBWnW3KuH/wamzZRKRKGIJwrYb18zDjk6JynX2LZ46e2Jh6YL1RRnAfvV4DCQcypQTX
	RPbL7xUXj5P8Yku92kxp2kiouYN/KhrzXpYAjtg01WyweW9+inEYsX+cTTDz9CpZbUrwLJJ9tJj
	XKcCE1BWxcQX1D5zX5pg1fOAmutVS1mdH0gQFOuOo0PDjgcPIiWgTB5x5Sp5+U0sG2JTSOsRqEG
	oBXXq/XUOZU/ut5aEfzCRAdn3ueN8U0mS7eMCUoCrqQm6y3ZEmddVbFoP2nZt5XGdN3tfuPPOzl
	Z+gqNVMgHrCL1Ug==
X-Received: by 2002:ac8:7fc9:0:b0:51c:16b3:351a with SMTP id d75a77b69052e-52b5666aeb9mr244779291cf.1.1785844071526;
        Tue, 04 Aug 2026 04:47:51 -0700 (PDT)
X-Received: by 2002:ac8:7fc9:0:b0:51c:16b3:351a with SMTP id d75a77b69052e-52b5666aeb9mr244778731cf.1.1785844070975;
        Tue, 04 Aug 2026 04:47:50 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.37.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd42d91b3sm45875069f8f.14.2026.08.04.04.47.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 04:47:50 -0700 (PDT)
Date: Tue, 4 Aug 2026 14:47:47 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: palash.kambar@oss.qualcomm.com
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, luca.weiss@fairphone.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH v5 1/2] phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
Message-ID: <sxfku6f3ypfzr3m372522s2fclwlzbbxpmjdoxb2yixutaquzg@yxki5dpxjqde>
References: <20260803130852.1432714-1-palash.kambar@oss.qualcomm.com>
 <20260803130852.1432714-2-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260803130852.1432714-2-palash.kambar@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=A5xc+aWG c=1 sm=1 tr=0 ts=6a71d16b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=Afnz6uBANMlDQL2PJxecKw==:17
 a=kj9zAlcOel0A:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=fE2qAJjRsTh3fKKuPQ0A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA0MDA5NCBTYWx0ZWRfX8k714dkwqMnn
 l1HNJ77xdGu5YD8PTQtU30yOXyBss8tiuHcj1QNt13m407f8+mzgR+fedmaHVB0fKAPxAnFebiW
 roxtiBNz7KiSVtBlcTxLgNShYAPe+k4pneJK4L2RCsTW6jIjgBYfjsZXAf6lGay2Xcz80aYBWv1
 xwSABneV3M11IyhOZXc/wSADcjA46Od1o8woo4J4vF+8Dd0gpNEnGULCmBe90Xo2wtUM4YChN8E
 49srDDqMIV2n6Tqv/A3BBTtkuvTq/WbNGBew/jBFZGkaSJy01/K0DhlR+arHGPLndxKHb+qxI/y
 SRKUl/3eGl3+t/6PWucFHhJAaBjBZdOmujUmAwGKqpWWwsLJoqgfZgdmaNZRgx7VQ4Sg8U0I7gQ
 IkcxBfp8hdfTJZzrrtLHpXiK9Jbq4JP+n/hmKN5IahE28bDeUuEUapyTt2+7wagEO8nHcMi//uA
 gSB3aotd9G/1gV9AiGw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA0MDA5NCBTYWx0ZWRfX82pf3oXC4FEP
 Q+SdHkTXF1jaMH7ZGWf4k1grAAmi2khvuk7zjrjHJojxTc3MsNGr1pXamvgEex8M2lmOXMI4Hwz
 BShLLHdWviuFmbWF2Jmxb6BOsxx+VoI=
X-Proofpoint-ORIG-GUID: KDiwl9uFbRlbrpUeif761FFQ8ZFP805_
X-Proofpoint-GUID: KDiwl9uFbRlbrpUeif761FFQ8ZFP805_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-04_02,2026-08-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 suspectscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608040094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_044801_965360_25AE24B5 
X-CRM114-Status: GOOD (  10.20  )
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

On 26-08-03 18:38:51, palash.kambar@oss.qualcomm.com wrote:
> From: Palash Kambar <palash.kambar@oss.qualcomm.com>
> 
> Add the init sequence tables and config for the UFS QMP phy found in
> the Hawi SoC.
> 
> Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
