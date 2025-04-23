Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70208C369D9
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 13:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OK3KlnAu/fBK92zHfpXgQ84QLTJrB9TACGRC6cAc6Qg=; b=Cs0BtzumRq84CH
	thaCCKesR5w2E6ws444eDpIHiIPWehNQ8fXCoJG55G5D6OWO5P9/0uaEnZbQtO02g4Tzl/3ENp7aQ
	ehVEzrxmDfL5E+SiacIGnCqwW4cXWdMsCKH5ifYbs/v0rOHoFj+ERDuF91lCY/0HpN7FoydHEC9By
	ojtdSFFnu3+TO0wjiZaqTRnfuh6rrDgT3x3PteIV7SjwQQX3Enf5vwu+0ok8/6sZQJ/Sc9og6Hv3a
	uOzKkuRU3my+lFbZ/lHaXDwSYRRfhh37Q21SXk8kRJbKGFSj48TE9FQzuY5dr32LXIQQPN95gNslL
	+TL/DNGMrmhN6ZKG3ujA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ZnM-0000000AXX3-251x;
	Wed, 23 Apr 2025 13:05:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7YEZ-0000000ALH8-00Wd
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 11:25:44 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NApUgH014055
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 11:25:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+SJfWTk5aO0uHSIAPpOEUP1TaRsZh3xbLp7te7De5FI=; b=LIqiqGsFYbXbWF+X
	ZWDgw+eB8a3gdcqzTD0qr2Qtf2nRxBuKzDi+/SUTMaxy8q0TZQXLWOhsrUySx+fF
	3hc+qpuJys66S3Yv3wlo9lAKd4Mu4RfyIHYQHdcTNdGw03fP/ICzoLtkfJDtA9DQ
	aPQkEAeIfXbPuxHkyZbql9Ya0ByPh303SFsjlaDBB7vi51qpKPKMglA053f2/Aq0
	TDL3wUTs2P//7aRaR9gOsyPZ997GPPx+mEhZR5qRNt1RawovzsiYBihkaPSlYxMm
	kWgtWsRjqI/Q/3C7Y7QcTwX4R/+nOivD5sQ7oG5FfiahI+d+wYKQc/xqWr52QYQb
	9v/aKQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh39wyh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 11:25:42 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c552802e9fso119928485a.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 04:25:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745407539; x=1746012339;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+SJfWTk5aO0uHSIAPpOEUP1TaRsZh3xbLp7te7De5FI=;
        b=ECiU41GAOOf1nH7V4WDoVL7hcVm8gwNpvektKou1B8rcK0dZf1eQO+pZMwD5H6jIwx
         ql3YUd+DFpumvAZeVs9SM109ABlE3imPlb8wphASjSfZVZgP7wJA1jhZc7xSXBn8Yvzd
         mVG3UmZ/rXlaTCl1+v4QaHamMAx6xTtbdFvoD0yfqVsX8uKdz2ygRp+niMrYjgi3OlJb
         i2h4MJKF6EdarBB89Hja8ZdHrcNBYaaNhVBBNxVDpO5QTJVpefb86Ae4aTwbtlQK7lR2
         3umSJj3ny5TilTRn9mz3dxc7sSN+l9ypS8aieofQ5HE2jLHa8sj/curtoyftnuG2v9rO
         gJ8g==
X-Forwarded-Encrypted: i=1; AJvYcCVT/LVYzUfiqgRNkUreakkN9b4c22vCgF3O4WyZNpSfkLebNCH89ZBQIYp9AjyD95kPdwSRh10CXMM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxX41MRXcj/0dQnVSAf2tlm+VG5H1ZihW9LHhYEI9slHroDlRdc
	VGccufRSSbc/U6pNWaVQpTiVHvIuI8IicVjnPuQS8/zZPL5s4Bed3xTfw4HO/IVOZxL3HtLrwzP
	1ENpICuVC/RF8H+8l1w6AzGxAzYhZegZJc6NkD28VPBXMnUOyUQRLJJjqh2oYM+1P
X-Gm-Gg: ASbGncuqVvkOFsxwBvTqAoWnBGi/W2xWmEpPl9rwN0oTEOVxnYHrsorCLxJVVyQ+rT/
	HVyn/VD6BFjfgXC3wagk1zflqVrR7hQNsu7pyYt6iwsJU8ToqFGnRzaMqqaOuBSfj2wly1qgPek
	8jAbxLKN9emvVDDhIgotrcYG7POzOkVe6XhIge9IXGdN8sc2f1Cp0BFXucf3MCv1A+kitZwmrl/
	bsM+aWQWUE+nX1oQegLKJjQXyIZGA13JuamA2+qnBV9WBVTBRYu9txVIgsCHLKj7h49pFOOVi6R
	IgxtzQY5q93ssfC87PlzZKdIYIgBDNcua2f4uukwJsPGmpFcMVcYWdVAHUGc0RpD8dE=
X-Received: by 2002:a05:620a:19a7:b0:7c7:ae26:9bb3 with SMTP id af79cd13be357-7c94d25a6b0mr185332985a.5.1745407539444;
        Wed, 23 Apr 2025 04:25:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFAKueAMYdW8vImOAi5a60M+gwJ663bWKU2mlGWA17qqnLufSL3bclAp8Ot3R4t4SQ07ODnkw==
X-Received: by 2002:a05:620a:19a7:b0:7c7:ae26:9bb3 with SMTP id af79cd13be357-7c94d25a6b0mr185330285a.5.1745407538941;
        Wed, 23 Apr 2025 04:25:38 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec0b6fbsm806483166b.19.2025.04.23.04.25.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 04:25:38 -0700 (PDT)
Message-ID: <a9a5680f-de4c-49ac-8ae6-d2e0452d8258@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 13:25:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: qcom: qmp-pcie: Update PHY settings for SA8775P
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com
References: <20250423-update_phy-v1-0-30eb51703bb8@oss.qualcomm.com>
 <20250423-update_phy-v1-1-30eb51703bb8@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250423-update_phy-v1-1-30eb51703bb8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA3OSBTYWx0ZWRfX1iLzBS4zRUrh SqApTIKeUKXo4rxG6V6MedmTP3sV5i24FWNusiJkaKTSHydHG03d1VMq88TISBBB8gwfyeLQ+p6 oHdL2d9oOJanCjMbUCVdQEZvBcExATMWjBQbqQD2Q+g7H8YSqTpQ9LKfQpmF0GLnmRMb7lMU9hM
 emUlQQVO4zAmAvIhqj66ymKTkRk2oeqaSekehKbQt/dE+ujMqBO7pCkoIkAoOCE+GaJQzWFmMAd wG3kFVF2dW/yD6hFufvkOJdmkqISkTKt4Jy1UElwkLvq4kU/ZvUtw/aGl5vkmFR+mexAxnOm86j PuqAmqhLBDmbeas7kwaldB4WPLtoPpnhALPUZYrNYGOdRrQ2gjY6cHMcAuEmTDYAxyHjBGucNhY
 tVP6cExI4RMGrl2dCRR4t0aGEnTYUDZPXRwZGyFzXu+cbQXhc0eWlnAa23UhQf2xAslU4odi
X-Authority-Analysis: v=2.4 cv=bs1MBFai c=1 sm=1 tr=0 ts=6808ce36 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=4ZBdfkmogR933_44ZQYA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: WFML6ERaBDsA1YKc-00N0lM8W55JasZv
X-Proofpoint-GUID: WFML6ERaBDsA1YKc-00N0lM8W55JasZv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_07,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 mlxscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_042543_053174_562EDA55 
X-CRM114-Status: GOOD (  13.11  )
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

On 4/23/25 1:15 PM, Mrinmay Sarkar wrote:
> This change updates the PHY settings to align with the latest
> PCIe PHY Hardware Programming Guide for both PCIe controllers
> on the SA8775P platform.
> 
> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> ---

Please also mention that these updates happen to solve the stability
issues seen with Gen4 speeds

[...]

>  static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_30 = {
> @@ -3398,8 +3402,8 @@ static const struct qmp_phy_cfg qcs8300_qmp_gen4x2_pciephy_cfg = {
>  		.tx_num		= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_tx_tbl),
>  		.rx		= qcs8300_qmp_gen4x2_pcie_rx_alt_tbl,
>  		.rx_num		= ARRAY_SIZE(qcs8300_qmp_gen4x2_pcie_rx_alt_tbl),
> -		.pcs		= sa8775p_qmp_gen4x2_pcie_pcs_alt_tbl,
> -		.pcs_num		= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_pcs_alt_tbl),
> +		.pcs		= sa8775p_qmp_gen4_pcie_pcs_alt_tbl,
> +		.pcs_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_alt_tbl),
>  		.pcs_misc		= sa8775p_qmp_gen4_pcie_pcs_misc_tbl,
>  		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_misc_tbl),
>  	},

So QCS8300 and SA8775 are closely related - since you're making updates
for both, please also mention this in the commit message and describe
the impact it has (e.g. that it fixes electrical settings for both platforms
that largely re-use an IP block)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
