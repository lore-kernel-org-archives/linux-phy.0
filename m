Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5433A606A31A
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 11:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Yrf/8eSZ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=jpccgJ0v;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=C8FPtCf+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=flM3nrNXzHwnzGseexkkmZEaiOOR/C9Sj25SvC13j2g=; b=Yrf/8eSZqRMQOnFsD15UfOfLmj
	x20y6DWmTffRlh7sCARV2i5xeM+xMjilfn7ci2oc4f5EXW7Tc5FYN/LE6M2M//P0C/L9safiCkFXK
	+H9Nn8PrOUkDCqFJpj5RTs2L1k//8TBSpZj/I488wMjRdIwjmqeh0wBtJFR/lQMDKZ0GTxVMR+cTF
	1LQsnA4HSdeNjOhuxZrUDLFQXe6hL73J5WZmHxp7PO/yh+7/mn5wv2jUQZo37B/n2MUGvQCNbT5p+
	NjMI6/UCo4J+PfuKyy/3WDlgOwNZlEKAcv1eHsdUn4fE3BwWeE5K4Iid3vCbQh7BiN82dqxOT30Ng
	iZ0OqJ7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqXo-0000000Dyip-0HMn;
	Thu, 22 Oct 2026 11:01:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqXk-0000000DyiU-3JSK
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 11:01:10 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69MA0FJL2397094
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 11:01:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oXUIPAcLB3jl6Hwgze2Drh1BW75MZnZWjiaSASX9zxM=; b=jpccgJ0vpxCIvwCM
	XM35IV5CaI8D05EHICrRy18OjaGD2huINdKBjKun8XNEFDq3v2Eqf8G+Dsbtflsb
	07GxFv6bpfgLvJk0XIdh2jGDluJPO3ULpilqke/aIs33NFhLM8MR/5+2MUcdx6/O
	zrC2+5pr6B+s8IIQtRLJ9TNedsth+ZiRVWvk1a8rZOwn2mTzk8ZfbLi9FM6OC/Me
	l/Eizp5S7hn0FyMs8+GJtOA6aoUtpBLz0FGD0aP1Zjq0QAF3JCJdIPTG53UGMQ61
	HzgTAi71jGvE1v2gBjLwY1jkCyotFgFkVJ6nlTfuL/jGvzcqkw8veX2uqkjj1o/B
	3OyMLg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hf93btbrn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 11:01:07 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5362ce9df1eso2653611cf.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 04:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792666867; x=1793271667; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oXUIPAcLB3jl6Hwgze2Drh1BW75MZnZWjiaSASX9zxM=;
        b=C8FPtCf+1dTBPVOE6W2MyL60vpEAKkrdemFh4l5NR2UL+7OMwUEegH9fKmOAZg2JyJ
         kr1hIM/I33eiVhGKH/12Hk94qK5VTqr+n0RrAC3nUOECqXl9fGgR5Dq3XgvnhJD/JhQS
         y1uGhCPYX4KqeS+2ha+j1y0d3kgjHRP7le8rxNwEVTa96JCEveuvVH1INT0hUkrefiBk
         tvytfDUC4FulJloxc/fcSWb/d3nNE9IytNwobMBb1YsU1DA7N7IFgZ0yliaFCiNrIWEf
         L5EkoK6mSYvqwvm90wm/CXe7VTT73YERoDSv8dy57NP/tf/7/wClFhK6fVE0FO7AzWuO
         ET1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792666867; x=1793271667;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oXUIPAcLB3jl6Hwgze2Drh1BW75MZnZWjiaSASX9zxM=;
        b=FhgyJfvflilwgSfiAwz/DhY3WJ+RyVx6YiMCeQVYgXO2fSUL7DMQTfx/Pnyx9Q8TXx
         wCtBzceNMYnjyJ5/1+yZQe+LIm64M8PSU/+eyH/rDZaj4dwZ3fQumQa6sEiSGOY2a0gF
         EuGR6qRAw/7ecbRyOQcXv/O5U57H82+rHqhNN+R8qXJvJJeh/b6beqRI2f8CoSL5Y3yG
         K+qsnITAR/gcB3awR/ran3EmVXKvsXiq4qDM6LJIeHsRvN3cqFH87s9WnG+E8iGVchXU
         6rHjsWjxp3OMD5Jj1SASylutDqr9QStDLSUbNr0TDNnX2tREUKsfxziU1zy/xuyeexDw
         NvlQ==
X-Forwarded-Encrypted: i=1; AKwUvBzH0fhdZYIMR9kWR23wglRStisaa/ZKlU/n6aOpNdaC/8i4lV2whNcRf1Bx6MXhoSZmzyIzFyHGWA8=@lists.infradead.org
X-Gm-Message-State: AFq9FYIVGKKQNkd+XmiTHOUt1DyaaDlFr8Y5XZXCMOt5W5wOWZnRPqnT
	xiQ/1vITxj9yth3K4amG+q97cwthlTOok5V0aX/Ylf52EgkeYaCa/E00B38wwPTwkxiM2iH9rt9
	KW+Tg3ewhJNfXxB/bBHhIO1MmFxPTvGrB3NupKVxn/GRyXXB6fOq3tE64ErUYghNsrvdX
X-Gm-Gg: AYBFou0W9H8eqNjiS8K2rCBfggji15adTEW27HHCc43kSTJxMLNzEV0gPFAlPgE9D/q
	ZjLP6anOQAbR2BparNk5R6EF8k/bVE0XMkzWNDp+7qMzI3sQUd3UYKknf5jPk9gbCh5n9Hh0M/f
	uDpfdUg0awEXqz+MvmiPlKpftBCNYC4/NrnhWga/NKzA8vFnjBd2L+g+ZObA9EGNHLYLobnv9yI
	lqpKLx8TdjBID2P4Ea7ILfmVG9zqUaKlp/FzASa4P7y7a3UM3tI9pp3YizcF0YkHZd8nsPZN5Oj
	wONpsbDKGtFE78SBEHAijGPim5ulKMXTfm+QtT2ABDS06JI3Tq04kyZG4+Fy7GGoKPT7JaSMWi2
	9PzgzCGq9Al7FeK/1YBr6Uw==
X-Received: by 2002:a05:620a:6493:b0:939:9ef4:79eb with SMTP id af79cd13be357-93f57ff1ff9mr1002811585a.6.1792666867263;
        Thu, 22 Oct 2026 04:01:07 -0700 (PDT)
X-Received: by 2002:a05:620a:6493:b0:939:9ef4:79eb with SMTP id af79cd13be357-93f57ff1ff9mr1002777085a.6.1792666864371;
        Thu, 22 Oct 2026 04:01:04 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b416ab05fcsm1203634a12.18.2026.10.22.04.01.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2026 04:01:03 -0700 (PDT)
Message-ID: <79efa2e9-e94d-4cb2-a260-ead51da3efb6@oss.qualcomm.com>
Date: Thu, 22 Oct 2026 13:01:00 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 04/11] phy: qualcomm: qmp-combo: Ignore Type-C
 orientation for Glymur DP mode
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa
 <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
 <20261001-glymur-phy-v3-v5-4-3848c2615d5a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261001-glymur-phy-v3-v5-4-3848c2615d5a@oss.qualcomm.com>
X-Proofpoint-GUID: TU_THDL67XUlIREJczVMxLtzMERTCkLL
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIyMDA0MyBTYWx0ZWRfX4vTYFKGlO5In
 XwLIxuNNbUj5v7zGbxtofwD90WM+yEQrxCtpoRbvi7s59IRVuWMUBU96uQ6E9fbU6HuTGojzQDV
 Qa/WsvyDaP+8So0i/oGo7wO5Qy3EvPY=
X-Authority-Analysis: v=2.4 cv=F4fC5ahN c=1 sm=1 tr=0 ts=6ad9ecf3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=cuVGQRL4-KZBxk5-JMUA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: TU_THDL67XUlIREJczVMxLtzMERTCkLL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIyMDA0MyBTYWx0ZWRfXxYrQxLR/2xvg
 1lBfU9Wbp92uPrbZYUdntLxHiWvMrB42sEP77M4pxYarjhFfG/jOUAIEhSzjZal6mCTi2u0JHrf
 vNSm4OUcyLKmzihtA4z7lGKxH3ObTaRYrE3k6tE2MA72huyGdJwDgHluyr2OhWrKjDN/KmA0vuY
 hs4cwR6S6790i8A2VBs5t7ePpuaHUuydJll2wiHglR1ejYzmo5xhKWmA/JcGsjT/kZgzdwv93O0
 irWDIcoXDp6dn4cblxxHCuJkkpllTXwInot1tPsQJO8XeQLCwP/uK614vhKLP176xW7c9pzhOf3
 4JKYdsYDjy+LubClGlhdmRB84zo413G9xjJXrCe+s2sD7dSY5o8j01dHvJZ8UsETiVU8m/E83dg
 HInEP2Heke1xS/9CjPpSpYv3qm5GTg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-22_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0
 bulkscore=0 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc=
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2610190000 definitions=main-2610220043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_040108_952926_2565E9FD 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/1/26 11:34 AM, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Glymur platforms use a fixed DP lane mapping and do not support DP PHY
> mode reversal based on Type-C orientation. Add a configuration flag to
> ignore reverse orientation during DP mode setup and enable it for Glymur,
> ensuring that QSERDES_DP_PHY_MODE is always programmed with the
> fix mode value (0x5c).
> 
> Fixes: 815891eee6687 ("phy: qcom-qmp-combo: Introduce orientation variable")
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
