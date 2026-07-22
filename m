Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C5BDC4451C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 07:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:From:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wXuVi9BNIvEOokWLVAmEVJ9s9M4T1k8Kl5dVcDrl1Bg=; b=2PyGi8xA3pE1xIJyA3NbtKmBuS
	tx0cafaYoptQ5g5gagezzY03TuHNECWzG1MykQRzVYr741LFyCX0qqP+DN3AK371QZXFDwzlFMJ2w
	XxvrzQBzZg2K6dzOOxZ0QYdMHyvOlQAAV8Mvt0pRtGGwq4l9dwDBuNC6nLje3pKM4SSVGBx88D2dZ
	Ouwzbw7DT3doU/hUf6ltByFeRi6F9wP5liHvHSacGRtztl/RjKKAfi8At00FpQORgASJXn7NGunnB
	VXwk+d6EdwNgi45r/SjBvjjrZfvvBSj01TMBUvc1NPhbCUUNxfKZps221+/f4TijYYqhAwvpC9zEQ
	Ei6CxwMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmRA0-0000000B2RF-39vg;
	Wed, 22 Jul 2026 07:14:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmR9y-0000000B2Qv-1bQT
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 07:14:31 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66M53utA3996109
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 07:14:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o6WZlUuh3ud4p8X6xsya3c8SjjkN8PuSsK3pWB1fpMw=; b=AjAqo7LAuFLPTaW+
	g/1pLskBeOz/IJGLF/MUAyzKMnFXDB+lJCR73CwGumcStABOBxIR1lpMmopSJhFE
	q5WMM6C0Cwydk+/tY1R3nNXG+puSausZOvEmMRMTOpkwpWks/F/9B1sjf18banSH
	Tm4p/TlUtC9e+EMHndKx1V+k6KCMnxnBLSGbeHWDS0dzVwUH2qMcKGe8WDYPxDl1
	rudj16LahEaZgvd+KiYtIgPgPcmiZb8NFleBZ8iaXkEPrbiIk13jvJOZZjvQQfkq
	YxmMEpTvyenz6MnTT5dPkDQ39mLpJdkBPgYCORVLPZM77jGSUPoIjg8cKBsEmrwo
	WD//vg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjd6d2r3f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 07:14:28 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-381abcccbf4so8132240a91.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 00:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784704468; x=1785309268; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:references
         :subject:to:from:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=o6WZlUuh3ud4p8X6xsya3c8SjjkN8PuSsK3pWB1fpMw=;
        b=RXwPbUU5ZgnTop0I7elUyeyxw5XMJSfXNFOs8TTHrBp/kNaieMaD/kMoX2UySo36sR
         7UKA6AhZZG0usnZMGzNbcT9MOeQbrQQ4BNQ5Mw9YezdosRVpy8Oekh5JxAD/4MWzCQyA
         zIs478lSIscPYbjOsJyKsbLtqHrmUZ6+OII7ymDwkwY8uTnesnX9fy76axPS8LDR0Tpo
         Aq738qupxMbEMTsndCI35AmsOx+8/kvHl80K8jpdIyZMn2ozRkdTISOZiIim1SwwLRSu
         gwh+oM5DnSbZA6oWbgdukPm71aibwl0HJHZmnnrzpE4o4TjsQZaCgleMyyd1hbEagfLM
         C1cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784704468; x=1785309268;
        h=content-transfer-encoding:content-type:in-reply-to:references
         :subject:to:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=o6WZlUuh3ud4p8X6xsya3c8SjjkN8PuSsK3pWB1fpMw=;
        b=lTMohh/aHJq4GNbqAyTNU0cJTcX/Uq4iCW3WuxhIgV8OFQ2HjjG27CSsi0x5FXCQzy
         kHWBGwIsQiO4sEkWfMoiiEAk/8PHrVyxQ9/BeBMjYsdkVfZ5vZ+EZLS4PKWROGmdScmg
         9roRzof9232ii/xc8AhdbuhYf7WoJ9uvy6WFnmYdD/ESubLA+JGBM0VX98b0aAocchCf
         k1Mr1hJHOIbpn9igQCqmKFICeuKE1DaDKzXI8Kd73azyI0lwb6dBzjkJWUWx+lzP69GD
         mOi+7ODGzGIqUPpb4Gu0VzgM4GHVuiMAQBSGMDu8ZQi6qGJPI/UKcA7yUV3Mf9zWk8VO
         odZA==
X-Forwarded-Encrypted: i=1; AHgh+RrTGgp2/gzxvfZPLWk7v+nLyY1H7rLUxY2yWI4VLMGj6Ux0BbBrbNDx4I+haCxfjuVPJDj8pMiIsGo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxoAso9HC4Dzh1u1dAFHDu0UOQVQV6B5BCUt/fTVk1piTue46Pe
	G8C85nXjJ6byGi8dZIMjyC/yBoZVzndPCLjnQ7SsYcPjugpdzb57zwmY914K60hPbwbmm5vJLuc
	On4exgJwjli0TL3+7akrj1R3BLAyatRJOXc1+blL5PwRcrnPfNxB21uu6AOn3qZrBws/f
X-Gm-Gg: AR+sD11ar2/WIA2Ij7f3Z/Hx8eLmSsfg9VsPkLTcVSTPo4xcxLA3jgmGgqo4zUDm+QG
	xGc9i1xMCls3dbe7gEa3JjF3GLW0/vQe/LuutH1V+bbdZYH9i+wy8pzaHzzuIcGRJxcOW1OFBkF
	zH67W/3ABIKw2pss/Qy+d6tj6pfp1TzWteVQZtvwjZ2CVoPTBHgEEd23cYR9BwYhxqEinKM6PGa
	8udX/mnRsm+9fNnJI/2ibsxtSr66tTb4ipKd7ykE9R8kPY6KcFTFuiIvrLPI4wLZ+YmKCM6UPEy
	zj9gy7lbu+e8t0ewhpT1GuPXeuweWbiDzrAXLV4Eur+NlP1jFPEpNEjpoWIsWFAybpCtOdN/hSt
	VWuhum6nratztd4D1DuKSb7qBHqc=
X-Received: by 2002:a17:90b:1f88:b0:38d:f1a4:1116 with SMTP id 98e67ed59e1d1-38e4b537bedmr18504093a91.33.1784704467800;
        Wed, 22 Jul 2026 00:14:27 -0700 (PDT)
X-Received: by 2002:a17:90b:1f88:b0:38d:f1a4:1116 with SMTP id 98e67ed59e1d1-38e4b537bedmr18504062a91.33.1784704467297;
        Wed, 22 Jul 2026 00:14:27 -0700 (PDT)
Received: from [10.233.16.34] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38e92091875sm2754093a91.7.2026.07.22.00.14.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2026 00:14:26 -0700 (PDT)
Message-ID: <ec502fa5-9e9e-4396-9599-4b297061bfec@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 15:14:20 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: hangxiang.ma@oss.qualcomm.com
To: Krzysztof Kozlowski <krzk@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
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
        Vijay Kumar Tumati <quic_vtumati@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v6 2/7] media: dt-bindings: Add CAMSS device for SM8750
References: <20260721-add-support-for-camss-on-sm8750-v6-0-a5f841061d18@oss.qualcomm.com>
 <20260721-add-support-for-camss-on-sm8750-v6-2-a5f841061d18@oss.qualcomm.com>
 <20260722-enthusiastic-hyrax-of-zoology-17bd7d@quoll>
In-Reply-To: <20260722-enthusiastic-hyrax-of-zoology-17bd7d@quoll>
X-Proofpoint-GUID: 1Q-D-d5QG4eu0CIQeUkJQ1itC_Jja2AA
X-Proofpoint-ORIG-GUID: 1Q-D-d5QG4eu0CIQeUkJQ1itC_Jja2AA
X-Authority-Analysis: v=2.4 cv=XaG5Co55 c=1 sm=1 tr=0 ts=6a606dd4 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=g9Y63sCnjjm7CRfqtwoA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDA2NiBTYWx0ZWRfX6KGZRWs42Vjr
 qY3QofPZwv2ys5yes7K28sNX9Ewqhw1bFcuHRWXitoaCg1MVesAi7z8UC91d8xBKjEUpc3w1TpY
 EDBgkNiaFuIJMOSUMCe2TSqmBCZPV8cBvlm7wvDjq9Fh1K+jLRpznz46S5jJUyJIHy2702lux1o
 HQkuNK7qjEfjAjhOWAGC6sWqrt6PdymS+fcXjaJPPAOZpeRG2lHzryZTHrT0EtAnDn11XyJDIGD
 hL/w5kxRpSkDWIcOJF8vvKxPbComFodXeNRUIHx7zL9+dSHXaj528yqYHxVJAVs/kYNwLCpTzWz
 wPl8DTncdXeQHJtu/jq7s8quAV8KXpup/MOBtmv9FRmmZVSeEoOCUP+13hfoQUl4UfMhsBPjskV
 Za1Ak8Y8DZFypFMFtNIBH/lM6obXL5HI7kmiLmDodqu4ylG1lIFEQU4MUW4ziEZUIexIY/iqNh2
 i8XwvyOVbaKEvLpcORQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDA2NiBTYWx0ZWRfX6FxuvJogufjV
 fx0vptfBrLldWecRtufrWkM8bF9QcvVQo9dK4XFW/HCfIaIx2PzyWGvb7NQ8zUT1cfUAzi50XsD
 clItOY/9AknuvcOX4+2HLQWuH72LoGM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_02,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 clxscore=1015 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_001430_584030_0AF26A44 
X-CRM114-Status: GOOD (  11.64  )
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

On 7/22/26 3:00 PM, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Tue, Jul 21, 2026 at 05:46:01AM -0700, Hangxiang Ma wrote:
> > Add bindings for Camera Subsystem (CAMSS) on the Qualcomm SM8750 platform.
> >
> > The SM8750 platform provides:
> > - 6 x CSIPHY (CSI Physical Layer)
> > - 3 x TPG (Test Pattern Generator)
> > - 3 x CSID (CSI Decoder)
> > - 2 x CSID Lite
> > - 3 x VFE (Video Front End), 5 RDI per VFE
> > - 2 x VFE Lite, 4 RDI per VFE Lite
> >
> > Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> Drop both tags.
> 
> Binding was very different.
> 
> Best regards,
> Krzysztof
> 
> 

Ack

Best regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
