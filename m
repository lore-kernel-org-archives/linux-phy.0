Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31EC3C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 09:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrErJlPXrUYuedq8DXvbNbY3CrCphx8JOKuVUo1HN0s=; b=BD4PPZCfMX2Sm/
	ZAS5VpSBmV2UQI65lq75pxqTDQnmYWItuZkr4he25lE8YpXVWSGiH12ofAEyhQMafJWcKHzudsWDN
	84R9Mo4pH/Xk+C2UAIwU/+WX3cmK93b1oKq88ntbjVWM8gDaWGB4wlEdLQ8+bq2TifDucaktA9DUf
	JmTH4UgdcP5WtJr4JFfxwB3PpGJRRjN2L7GWQBQlsm3Yl40J75tm7NS3wnSnctLSH28hrOenj6RZl
	c9poMFfsNRxUHZGu7SQqnhEg44kc1byoTS2wukfqHGXit+1r4GOiPadthdzW4x3Mz63vBSq8l+pPV
	8cfdJ3wd6Yi0QDmKR3GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Vwm-00000006OHY-3OXH;
	Mon, 07 Sep 2026 09:47:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Vwk-00000006OGp-40Id
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 09:47:28 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6879bYv3057368
	for <linux-phy@lists.infradead.org>; Mon, 7 Sep 2026 09:47:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E1hA4N0/5088URD+WHAfkNeTqW83E+jKM5n/INb5X6E=; b=BPF8Rn3g3KB5h89b
	g33DLCh/Q4y0z5beMVmxTIHjgxln48sF2e7OWck1NJat4gsnZnSQ7h2NX2dWGvAZ
	FdyVirAYpD6bmXrpf4ramF03O9HSdW1bGhCf2XuewY6OeHDs5SuerwQaqgPDmrwy
	QlSLXuIuWPua+ZH5Ov14bhWv0yr5mUNZQ966GJmxmyYWm1+cely1utSJkH109ggp
	ixwgzQDVxrJMyzu6gmJ4rIMFrkSPysJsw7kum+QqS2gaAS2PXp8pyapp+9kNlJ1B
	5HHt0SxLyOh3ysLhkdOL025TihOo3l1+BkD1LVtaE2OfEn0uTnu5t0DIv6sA5W9q
	HIBSdg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ghtdqg5sr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 09:47:25 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cbb92868263so2831023a12.2
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 02:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788774445; x=1789379245; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=E1hA4N0/5088URD+WHAfkNeTqW83E+jKM5n/INb5X6E=;
        b=XQOe+QAhE2MRGMT9MKdq73K5zuJIXv8WH7KA7UJGDS9jc1F0Skmhf68KWCbLYw/6nd
         rWQoMUHN87J+5N3VhWSj/mP0Ru3i6hxqX1daZr2UqHR4g/x1vzBLPm5pts/iNL5/zhdz
         MLajyQ7VkZ6s23KTFRl/thXZoqkNDcPlX9A+nQ6QpwdPbByJzV3eD8er565FA1E/V3ug
         DR1v0ecGAPocMCovqxfLTtwOA3jpHlt3Fig9uq0M9e9AdmkSEmJZO7JOUFCfi4jpPyMb
         0KFKRjkhcPhtTfDzZM2cgQnU6XRXmt0PfBUnYIlkoXFE480QvE/6jxO8P1LFhSCvXJsy
         XXrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788774445; x=1789379245;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=E1hA4N0/5088URD+WHAfkNeTqW83E+jKM5n/INb5X6E=;
        b=R7kdGS1++UDL/x/8ff51lGhtmvbg+8eGKCqq3lQ3BFyvF2TquTjg9FsDGhZN1d9pzd
         HvjZfyVYAr7DCcogglf2zYcGKSLFXzsHS7zMzpEGbtkekurqU+jsFmposHpmCyyQWYlb
         w3IO5LsI9l7oKtItBeCijKuiu7Cc331QPQXnzCp7q/Fjk7aWRw1CSp3JQdcqinyAYF/D
         U0jqzQgAb4ESdiHi9GP2+zgp2YblDpTJVOmFkF0Z3qAJLKq+IDDPur39moes9rfyAQJh
         ijmSLlA5i/h4FK7/C9wD0HyUiwVBuWcELe1WRDUOdTAXeGe9qO1w0wOjlBtk4otM9viy
         Wocw==
X-Forwarded-Encrypted: i=1; AKwUvBwDXhTM5XeB6D2E2CxsFcGVAqZDu7EvAoVPNhzbSH3YI/y3C548u78gYKKrUnwcqmQNyU4CMQSQAYQ=@lists.infradead.org
X-Gm-Message-State: AFuF++l8CZs79C+rJnLaTzlXss1/ZafTTrNhheRaQOZc2uHwYC6QZ56A
	t/OcVHBddINOo3m7WFCC+81W3LzUrjwraCdtDUXxRM2QWfvVJba2j81opMv5EvpkOBkv5HN0fsx
	r/NTuQ+1GICOCWLTwUDuq6YEoAn6YH5CGYAiuINIwjOi5mPuMUipotPR08/parVRyjVef
X-Gm-Gg: AYBFou0n+lIK4mapqQdMizRcYvyRktMUmtih/BRAs/XiUVEZ1FL8wQP1FXDcPi4ogF9
	npJWAJtvJxlgsUgzU/9dL8zKtaxYwz5xNJCQU+bcF4KVLzphanbnR1Lqt//4rCePgw+BJEuv0Jq
	P6rh2cwuGcBn6G1jDqPmHjdH/awAhj2PONZ0A3M1auo0FUvH4WgMH9zlCn0GM42OCKlFoNMCQ3X
	0qvbcMLnaQN0QXBL5iQxqFdAe4k4ReuhD6m14/dN3DMsAzqbWc5dvCzB/xaWK3OiAA9T+5gXWT6
	sOL1+6uZOAh0ULQ3vvQzzC+4AN+VP9W+rBEcKelhuaQF4StfsSarBbS4Bm7Ro0NY7Te3iYgcUUD
	KXDSGqEAOk3JEH42mihIPYztKmp9hJFw=
X-Received: by 2002:a17:90b:4c4e:b0:399:1b64:e0d7 with SMTP id 98e67ed59e1d1-39b262aaf32mr33970800a91.19.1788774444951;
        Mon, 07 Sep 2026 02:47:24 -0700 (PDT)
X-Received: by 2002:a17:90b:4c4e:b0:399:1b64:e0d7 with SMTP id 98e67ed59e1d1-39b262aaf32mr33970740a91.19.1788774444513;
        Mon, 07 Sep 2026 02:47:24 -0700 (PDT)
Received: from [10.206.103.40] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1432424d27asm34741879c88.2.2026.09.07.02.47.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2026 02:47:23 -0700 (PDT)
Message-ID: <902c7a41-363a-4ee7-b780-4d8cf2155d39@oss.qualcomm.com>
Date: Mon, 7 Sep 2026 15:17:15 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] phy: qcom: qmp-combo: delay Type-C mux switch while
 DP PHY is initializing
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <quic_riteshk@quicinc.com>,
        Vishnuvardhan Prodduturi <quic_vproddut@quicinc.com>,
        Mani Chandana Kuntumalla <quic_mkuntuma@quicinc.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
 <20260824-qcom-dp-typec-reconnect-fixes-v1-1-2825e5bf8a96@oss.qualcomm.com>
 <37cs3ejjaldogjlh3oyhzxgedl2w2s6qk7sercwem5j23vdtb4@2dzhapohcgda>
Content-Language: en-US
From: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
In-Reply-To: <37cs3ejjaldogjlh3oyhzxgedl2w2s6qk7sercwem5j23vdtb4@2dzhapohcgda>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA3MDEwNyBTYWx0ZWRfX80JtDcC6QLaI
 Z5eUfBbQfM6fbTJ9vMxpSFTdxjm3P2vs41YPW6AssmOM9GwyA6V5kydLDFJFfssmhD81zGqWdqC
 iPRcghU91VbhvaSNPYUO1VbnfjeUBUCRcYEcd5cFkS6TbZiU1BlELPqJJbb2jXnpgMDmJSy5Vbw
 fF6WhMLChMDt/96n7a2hP+KdHu+6MuXIaQMcU+scit9lkC+Y92olDdt1HBwE2uBIvwgY8IA7jGB
 u1CzcAYVnffCH79BzUUd5Btbz5xNyhRLWY818G/ZE2SOqUgoUxnXDEng/I5LyePabOCIZG7EweF
 L4l5k+Zr/Fw6EJ6HGOfXoX3XWokVnIV7uiXnOmUGinqPa7qIgZweYuhgiI7Ov4hbjMzVCNtqTpf
 JtBVB9yi1StYLslpsHHjPlTdLkej2E08DJ13qAcVFI3pBnAonOcBkYNE3vrAnSGh9xeY3Wo+u47
 ppn+pUGXUILi38c3NwA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA3MDEwNyBTYWx0ZWRfX31CHg99IS2YK
 ePUQm0brq8JFDy1NMIgEehh5jWoY0llUAe/U4I5iAIFioE8h2nnQQb8f5UgNLK1E1N6T9ZieHlP
 +UxwiQg2jKWfJBTTdWJHNhJpT+EFTbg=
X-Proofpoint-ORIG-GUID: 4hI15Pw0rebVCkOEv6URwtrpTPsVZGXf
X-Authority-Analysis: v=2.4 cv=U6aiy+ru c=1 sm=1 tr=0 ts=6a9e882e cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=5J6vajjZXZgrfOcXjUsA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: 4hI15Pw0rebVCkOEv6URwtrpTPsVZGXf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-07_02,2026-09-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2609070107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_024727_110532_10FEAF93 
X-CRM114-Status: GOOD (  13.58  )
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


On 02-09-2026 13:18, Manivannan Sadhasivam wrote:
> On Mon, Aug 24, 2026 at 04:58:04PM +0530, Saurabh Anand wrote:
>> The Type-C mux switch guard only checked dp_powered_on, which is set in
>> qmp_combo_dp_power_on(). However there is a race window between
>> qmp_combo_dp_init() and qmp_combo_dp_power_on() during which dp_init_count
>> is non-zero but dp_powered_on is still false. A Type-C orientation change
>> arriving in this window would proceed with the mux switch while the DP PHY
>> is mid-initialization, corrupting the PHY state.
>>
>> Extend the guard to also block the mux switch when dp_init_count is
>> non-zero, covering the full period from dp_init through dp_power_on.
>>
>> Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
> If this patch fixes a race condition, it should have a Fixes tag.

Sure, will add in next version.

Fixes: 896277138c13 ("phy: qcom: qmp-combo: register a typec mux to 
change the QMPPHY_MODE")

>
> - Mani

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
