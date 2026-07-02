Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 086DAC43327
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 12:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=khNHr7VFZPYlIXGOkzwi7fZsA8BVszHgLBoxatLNbv8=; b=FgrTqsS5urhONN
	ToPl81MzX5xdo2gfnoufmOFfbALhc+Hzgp/BkJm30VWtOfCygj65/9BnygkzxlCq3bxDzxQmO0Ga1
	5ulhrHkOq/8jeS151lTICZRQoAj4gjKGNoC0N+pzhbBZ9pYZilDna+hWmRbfKr7eha51CLVUsY8nr
	PWONU68vlUEOPESpRQT0wnucCG2fMaMH7oP2z02h3OsTiBJu8rPWwIHjvJjo/NFaNy22ayG71hr+y
	Ry3T3btflNbqFh4O8kwDDQLcSR88S5ABoNChLeqQZwr3pPATrvOcKC0FvSATaD5PuSiQ2gzlbjlpE
	J0xKiyohOgJRDxa8cAfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfG7W-00000004OcG-3KJr;
	Thu, 02 Jul 2026 12:02:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfG7R-00000004OZL-3PcQ
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 12:02:17 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6628mxHL3050526
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 12:02:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9mP7A3YJtlG0opNpKbxx0bXCptx4rkqA7j4b9Cs5OfE=; b=U5SiOrV+xk0NzOQE
	yBo5JuN6+sPGfWixt3JzY9h4OSUJA1juEV4dWreVMW7BYe8sYFOtb1zK1FeO3Z4/
	mh0HPVi0JTeTHZc8Q5WX9A8scTOgSdPfqLsrq0l2A9SyttQKp9v+oSfvE0giBM8Z
	P/MXtLD9hL7ZdzVW0QiBedvrIkDHA9syviDnmegGVpjOJvptXYvqE9FDCARfrVqZ
	LX29iyplDzqGBj8kXLOA3DdHZmHWdvjmxuoDjMD9kuENkm7VDus7qa2p4/+NR/aP
	VJBCgsPa3UQdZ/eAOa+xJNXnXMStH6q+86yEaba6YiPxwBB5JFa0JLJaJtuXESmI
	dH2GwQ==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f58k3bd1d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 12:02:12 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-96927edf751so55152241.2
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 05:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782993732; x=1783598532; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9mP7A3YJtlG0opNpKbxx0bXCptx4rkqA7j4b9Cs5OfE=;
        b=i/pn2ZB8S1U+YNc0GiJlymRLoXv/mvY+C6rFAtGBXz90UDuyxWMO8kjkWLdrhZ9fXK
         DyScIY2aSvfgeLC9JxRRbgo/u7kMDpvQKsVOZ9+dCYYdAj0r0ye87QhemqLoA4trZy46
         0VBMLeSTTPGXMk6uyxmSnmX3qdXDtdSnd5yt89VJE2u09jDMEMKGZhefbbHAwYzhqJFb
         B4hljgNd141QNiiviuTAadTEFLQzoFRlu0iPogJH1gKw8jHsJok/NlV7Ayfvjzpl6kb/
         gmFlGf8qQGHaNali95+YsGGanQc1sLNe6RhPMKUXJQlYX15TumlDduP/VZRp0Mq17/4q
         lH7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782993732; x=1783598532;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9mP7A3YJtlG0opNpKbxx0bXCptx4rkqA7j4b9Cs5OfE=;
        b=V9IbqyWjiSmTHJInsmsjQ4EHmZ0Mw/An60Z9WsEKgx8EOxZg6tYNWR7izZEmgBJQcI
         JnSKopGxEkAXww2sAYGCPLNNuRU99OrS+DJrCNayZiqrSj0W+IxPybGMZjPgkqo+nmay
         o2CSidIZT+5JLSD9t1znhy39d1RfS2iUOcF5yTHCdyMUbvZeFq1ehtz9Fj0yZvDOmh/T
         kgYfWc1bXTH1WrSfdxBjQuIG2Yyo9HfTBt32sSfcOVjEedSCBqg5d/kHwGoRneEPsbFF
         Ywf1qSDlkAGxqLEnwF9KKoSllqt9vG9ztitnH3LjGnvprUIlM8e5s+L+5q1iBJl5Cm/p
         5TbQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro7mFMbGLeDNT1FJx86YFdJqGIgKMrWhs4b2UiZRJUoeNku8nrx2sIdbqLkdp5e7cnGJo3by5mnQ48=@lists.infradead.org
X-Gm-Message-State: AOJu0YxeB+YhM2jqeIxhGD3M+pdjwc/Tab3CUl6mHW1y8Eiaa8GXb1CA
	UIk05NUfav4tu9L4Zq1VF9AkEn8ZcmINv4sxplYelw2VdLs9TdTv0eAE7GCubQ8O1mbQjwQ80lu
	MIAoLxgfnra09ZSP4SonKVzDOyhM1I6UsYShDsDKCNbcHwGI7t5Yz0+q81NLOx+GDiPlo
X-Gm-Gg: AfdE7cmpUxxRMjBQs2Q0Ege0KgbQBj3gwUaRnSGHaIMQTVfV4yRlxpURW6snfkAh9sc
	CS8o6LkfyBULR3PvAlBGZImJxs+dqrBBmU6Kp6Di45WldsKfEm1xxbDqKUhMRbJnAbbjwAEJjTt
	IuJrUgZDDUHIZN5b28QxK3CcFc7u/M/ouONtUSOVq1JgBkR8fAzGJdzL17h2NihEurDHicN5LWK
	HvuZXhXnfkA8z6Dg03Vnz4Eh6Q6MFgzPGW/W1/Ztth45kw0BLDPUn05rF5jALCObSD4QZZ52Kfp
	00oIwxg9ck3JQKBzsL44W2zt6wY5EKNgQrUQ5cfmkAxd45vx5SNLd7t159gLsiG/I+GwUvRhLB2
	pRZip5Dan/Az/LwPbuM2K5ZobVg5sz0rPR6s=
X-Received: by 2002:a05:6102:94d:b0:727:36b9:dee with SMTP id ada2fe7eead31-73dab613362mr882657137.8.1782993731862;
        Thu, 02 Jul 2026 05:02:11 -0700 (PDT)
X-Received: by 2002:a05:6102:94d:b0:727:36b9:dee with SMTP id ada2fe7eead31-73dab613362mr882618137.8.1782993731439;
        Thu, 02 Jul 2026 05:02:11 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b62c4a72sm117871966b.43.2026.07.02.05.02.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 05:02:10 -0700 (PDT)
Message-ID: <8e11f002-0394-4d9a-8dc6-477320e4418a@oss.qualcomm.com>
Date: Thu, 2 Jul 2026 14:02:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: qcom-qusb2: don't unrelated bits if autoresume
 is not used
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260702-fix-qusb2-v1-0-b5cf55621524@oss.qualcomm.com>
 <20260702-fix-qusb2-v1-1-b5cf55621524@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260702-fix-qusb2-v1-1-b5cf55621524@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDEyNSBTYWx0ZWRfX4BkfNW2HQ4DU
 YJJH57teusfs4UFF8XE5hKrcvMwnu9FTOeMKJghfLoKjTJlHKHocQ+27j2hK4CPZP4X9bQLVFQF
 8siH2X3zqBrYEEwQA0ugBdpFliiiqmNzgLBIENj3NBtmT1JpFxo5nOc5/bneEyGJ8JlkGbF2Anb
 cwKJ+4r+/yb8Tg15aULVa+dlOzuREIGcDZLE0JitmQewQiBYCCsRkYoxLdmkWVSn2ZSmFXIA/7c
 tm/tgEQBPT1FeTowxqUF0JyMbu8XHJD0SCe/GOzmEzuGvqLxTrPp+eE55CDX3FblDDq98RASm1e
 Wsyj+k9L7f1k3a6BqHgx9YX2lVbgEsS1R01EkbM+aAj7c+sSJu9dpyldX4Sz8HuCZtNJtrgLOdd
 ZFKjRJ73gkflMkustPK2pucdOBGVru+0PFZNchtMdcfxja3kjPWwxsWC22jn3iuAsSpbaOmLVSN
 MBOcW/Xjgvr0XddfYBw==
X-Authority-Analysis: v=2.4 cv=SuGgLvO0 c=1 sm=1 tr=0 ts=6a465344 cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=Y22fvUz4BkWrnB2esuoA:9 a=QEXdDO2ut3YA:10 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDEyNSBTYWx0ZWRfXwDSISyiubQAv
 7/0oS/swU29078usa4IanVv6lq5ISmowPBLMLaZ5fY7LCUrsd+Ubu2sKHz6fweV0n4fYRPaSqyS
 RTj1GIvgQG6N8KJP1t7pJMgt+OIHNTs=
X-Proofpoint-ORIG-GUID: AkO0LgbDXfg-303D76VkMjk2e_hKCNAv
X-Proofpoint-GUID: AkO0LgbDXfg-303D76VkMjk2e_hKCNAv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_050214_013820_01A59C93 
X-CRM114-Status: GOOD (  12.48  )
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

On 7/2/26 1:40 PM, Dmitry Baryshkov wrote:
> The IPQ6018 and QCS615 platforms don't need to toggle the autoresume
> bit. However the driver ended up toggling a completely unrelated bit
> (BIT 0 in the TEST1 register) instead of skipping the autoresume bit
> programmign at all.
> 
> Update those two platforms to specify 0 mask for the autoresume_en and
> skip programming if the mask is 0.

I'd say that we should just use the correct value of BIT(3) for both
and order this patch after the other one

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
