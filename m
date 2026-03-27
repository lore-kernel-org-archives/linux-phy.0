Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89A4110ED640
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 10:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3D6+kKH3AhNt6Fh7VgBq/hEKSHggBmSuu0/12voU2I=; b=H4CU+kGToTQRqY
	VkTxn5iNxh2wj4wc34/ISOiue/S0B3qFbf4cOO8CKg/vsyvUA+QCsVONtdBWlWmH48tcdqR2/xhOm
	D2H+A7nSMLyv4XcC9zFdhW/XI/KejFQJvBGDBBT8YKWmDLUEiOQmKKdpiQbbsNpH+Ml8L8aTThV4R
	neblJ6pvMdWn5zZCYlJBtY8TlqkeZF4j0gK8QjBOjvTUDqSDs7YWYp8eltsLN8XhgyNgYrMfwsdeK
	Roy17VjQ76i+mjkwTGKHkDPK82dhYV5pzS2KC1P7ezm0G6CAUm7bkRtlgHRZOJR+gbVpxEAU+78Qt
	VjPQ/EkLj1DfunYZ9ZMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w649b-000000078M8-18fJ;
	Fri, 27 Mar 2026 10:10:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w649Y-000000078LO-3NFY
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 10:10:58 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62R6vkcr1749209
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 10:10:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hDWZMO5h2IQY+cPJNgvKm7ajLI4QyoVQ1qlMtZyf/r4=; b=EDlUo5GoPu3boS5v
	voYrpK75gECrGFw/brUsE5FkrvAmmzWXgB15Fo4rVfaqPqu5JXrQmCx1hT+/Kkq1
	K41CxsAoP6MinJZlzrRIMujOPZ+2l0UieAfgEP3H4t5C23fRz8mDHRIDhrvlitjW
	FTvCmz8ZV9t8cNiBXSRk1/BVqTk3kaLeJHvw627D6akceXAW7bQxi4lGomUKQwlx
	0MXPplm7XKOVzgggx6mxkYeeeAbHhJbMbvUM9gyDiVDTXYTv9PK/m3V2UjJbU1il
	wotIvGGYCHK9aLk7ChpqwzGisCCYoeqkWJoz+Ekxsj6efaVSqTlGE7dsZL2Hlh0w
	PcOrpw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d5mn10umv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 10:10:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5073ed1ec6fso6360451cf.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 03:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774606255; x=1775211055; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hDWZMO5h2IQY+cPJNgvKm7ajLI4QyoVQ1qlMtZyf/r4=;
        b=iEXED/TckLalj7e3sRiear+qtZBDfpRO0OJfxfN56vZ1tspZfiBiE1qMo7joMamfUR
         CBgrlH0YjLueO8dVQeBaHMXV7eLIKQSjvks6JnXdkmCdpvulYyEEDFpwtCxSbyFbZERC
         EanIjO8Oxxp/wa4dGevc5Cg0K/rK5OipzwxtmgjvCxRjeIxdmH8s9mlBsfchL3JcSISU
         YrWNRCo8uYa/id+qDECXVYwtANLpA9m4CZpuW/4+rx+XgCW8TBhI+6TlcPFFgp+W0Mzr
         Uvuum53YACBN8xNYg+g+XoELt987+5vE3uGi3cmmKsavR7bDOvbWFe3M45WKPuQozdER
         nZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774606255; x=1775211055;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hDWZMO5h2IQY+cPJNgvKm7ajLI4QyoVQ1qlMtZyf/r4=;
        b=oQ02YJZTqI2TB6KubL39HoFKAM15oL7tfKa7kc6Q6morIayBEcNLJXkrWvVLcH+O1l
         Apu0VbRWLtC43vkOMQJcEnafhKoEH0Mxg6MPFY2fyhZfGZ4cL/DE/FRnB7fytdOQOwKp
         mLGrJOpdpfgcvlJYfWHNcsXcE4mQQqfQMG4V8IsNuZImA8PIydESB8J5eT9fbsL706eg
         XILMFICdD7ZJP+27Dqw81OJ9eIw7wMfbtkXirAElnhlXQJYaiWeRrnVdrabxsvGkFjhQ
         G/ePowL5VYSz7b15943IhM6V6g7JowDTvJDBU5I9BXt/pWWbon5jk+3NrnAvnK0yi9fE
         BYBA==
X-Forwarded-Encrypted: i=1; AJvYcCUGjUfaXqHOaG7cy2uD1UcM2tz7g9HP4ZpKcWwRWRSkFvWGC7FrC+lapRtcmS33+TGN//A4wWpcnM8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxINiQJgBZp2GfseTFFNI6LC44GuS7IzTBkASd3ac9iWECfp0xb
	UH8Pe4x10z0TznUCBja1VMFKRc5l47U2SHY3T1ATog7OiKSr/28lskJCHSPdIFTol7rcWTDlLOX
	IyfJyCVa6eb7GdhgwZMOZqhX5fF25LAN85S9ptsZIjj9c5w0Ube74kGohtV3fwrdMv8RZ
X-Gm-Gg: ATEYQzyb0GdSC7o7sh+FgErjeLTwBHTYqY5IZ8lqgKPfo+Xd3N5QEwgwN58YxYYq+XF
	xK+1TfYBORrpLVjXXUr8RrWTIW195HSWdB5fH+Lf2we9IH3kyjEjkndkdsY0/HilzPcy77i1BVE
	T3Vh2MdM7rJ0TwBoJ88udjxZ6kWm3t0JkNUYMmaqDHl8Merm/3zhUe5uye4ziBarWnp4qRzy60c
	IlasujMuMmODnJnZighwJXqbLVyd5lRuhJy3M9wh0LbSyMlb4ESOJYBNeDWNrWRaFRrKEM/8Ae7
	H7Zbpr96wl2WJ8/zqvLot7oJCoyd2/EUh2iRco5cb0C9VFJHmCoCJNcAfh5suDR+l3ebx0hcGo/
	GKlNd5TLqiqRu9N2S2DYy9kBO+rc+opNK1cd5r4H+7FvojrvBEUxGspvXVJVaxpCxDs9OZoIj5S
	3pJjA=
X-Received: by 2002:a05:622a:82:b0:50b:2f83:b702 with SMTP id d75a77b69052e-50ba393605emr19878281cf.6.1774606254835;
        Fri, 27 Mar 2026 03:10:54 -0700 (PDT)
X-Received: by 2002:a05:622a:82:b0:50b:2f83:b702 with SMTP id d75a77b69052e-50ba393605emr19878101cf.6.1774606254407;
        Fri, 27 Mar 2026 03:10:54 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9b203eec9fsm219026466b.42.2026.03.27.03.10.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2026 03:10:53 -0700 (PDT)
Message-ID: <c73b1887-6304-49a4-b6e8-a162d1bd55c9@oss.qualcomm.com>
Date: Fri, 27 Mar 2026 11:10:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <7712fbdd-a225-49f0-aeb9-ebcbb9d5abac@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <7712fbdd-a225-49f0-aeb9-ebcbb9d5abac@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI3MDA3NSBTYWx0ZWRfX4Zdx9Ac0hNLU
 2Vc4IXI6Sq2EuBdE6JoLBpDfzVXYlvPhZwFMmCptAgj0s5X7hvPqfXXJIE9i7Zd8wmbJhPo0ZAl
 /x1iTEBRL+m9uFL+qpwTUvRRzLO6tEC/k8lKj7OTM9yLJiFBKPMu/ndkvR5Ri8zU6hdkRAGnyyw
 Snv1kLH0cQBUCoH8bGeZRSk7BziCHvzTjehZ5nlendvttpybtneU19W7Gv4T4wJPcc9CwtF++KM
 x3wsj2xASZz6K4KumJbETTxCn/ZVF/KhSjC5kS3HptxOePsbOkkicilVoQDzDjsTRqPh0JB4YQJ
 NXaDfFPt3Y9oUZ74FNi36EXeY7RzQta6KpWQMy4EDjZSDQsAUx1ohnfJZgd0d6xjItbzjIF6lkY
 ajJXfR9gqQjtc6fOxPn20WHoTK52sik4qAfcbvoXnG1nWMU/Jx89J0is8orxzufdOcqLSPGazt8
 lIU9X/ysRQvrC+rdfrA==
X-Authority-Analysis: v=2.4 cv=CcwFJbrl c=1 sm=1 tr=0 ts=69c657af cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=-gb4YIgPANaGSZa7PYgA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: 5cv7XLspBQVWukcPqBjS18-QTo6asU7n
X-Proofpoint-GUID: 5cv7XLspBQVWukcPqBjS18-QTo6asU7n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-26_04,2026-03-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603270075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_031056_989952_28674E2E 
X-CRM114-Status: GOOD (  11.06  )
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

On 3/27/26 11:07 AM, Konrad Dybcio wrote:
> On 3/26/26 2:04 AM, Bryan O'Donoghue wrote:
>> Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
>> PHY devices.
>>
>> The hardware can support both CPHY, DPHY and a special split-mode DPHY. We
>> capture those modes as:
>>
>> - PHY_QCOM_CSI2_MODE_DPHY
>> - PHY_QCOM_CSI2_MODE_CPHY
>> - PHY_QCOM_CSI2_MODE_SPLIT_DPHY
> 
> Does the _PHY_ DT node need to be aware about this upfront?
> 
> If we have some sideband signal (e.g. the sensor driver specifically
> requesting C-PHY mode), we can simply throw all this complexity into
> phy_mode + phy_configure_opts, all at runtime

Actually perhaps just phy_configure_opts, because phy_mode could be left
as "MIPI_CSI" to reduce complexity (while still carrying info about D/C
mode in the latter)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
