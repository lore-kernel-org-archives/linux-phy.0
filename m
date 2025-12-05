Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3E98D2F7F1
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 13:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ESJ08jGTBlat0Y0Zz4yVsCiQqEzTc6pqpE6Q2NAADM=; b=opsSosYqJ/ib8q
	UVN14QHOjBBoqpW6A9DUi7gKzu712gMygiDHraWp+fDwJRj0/Ngl1Zw1u5VCD75v2z5j0PKb1IjH0
	mMxKxWnu2sZpeB2qCuGs0rkbGVw5t6qDfUDqy8KO5ZPs4Abk/SAiVE+Al4sqdr76QcCpj21lFbj8f
	ywZKeXXY8NhvBC06CIrxS66MgTw3d+wSSiOnqs5t6bKffNqJylHDVxfLQFRF1gai/FfKDICJz2ElD
	PsDqPm39RFyevAV7NgW6DynOjdmBokUuTf6gPxlDlOFTfoZr2DiG8wZriALboZhItJZlfsp/ju1wj
	DpZvMn35yaePbPlFw7Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRVug-00000009WpR-43Do;
	Fri, 05 Dec 2025 13:31:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRVud-00000009Wov-3FRf
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 13:31:56 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B58LCEp2299106
	for <linux-phy@lists.infradead.org>; Fri, 5 Dec 2025 13:31:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QUQdIs49tUo2Vw0zXbxQ69nd/OiCnomRFfhEIITIBW8=; b=K7m9HP1fuI5inR6p
	wXeRV88714q1gAsmEnhgf8xvi6yRxROKCcEHO55lSLSiWt3GnjwHCvOZuvcIwijP
	4CpFWeJ/bMjqtVJlSoUsNDFeBE6s681ddPMrwm12r2aj7d42XuAXcSkjhbe9Zo8Q
	ZiFCYpGxMytoPBVVz1g4WxIRe0p4UxVjn5tAzcDgArpxm6LvLU+XJope6gawelVQ
	OhbfMekbPv+xmhGn6H60aWUc8myyqSQkdVBwZe3pRc3uL+voWhTrVHLGrCt67kgb
	MeSliII19c6hvdcJ75nV1rswXy3XwqZ+jRs1bZ9kCdSxZBMVti+db+nY1ASSaZGG
	92VwCg==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auknfa4jg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 13:31:55 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-937271bb17dso313401241.0
        for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 05:31:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764941514; x=1765546314; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QUQdIs49tUo2Vw0zXbxQ69nd/OiCnomRFfhEIITIBW8=;
        b=GuwsBBA/gkW9s3f/yz0dYQOAU5IB+JhIAL35Wjg4TkOu/AuWDOHVm4doFBTOoOAvgS
         bHZuDo2kld2rktODMh/lZXYgSTi9UrQB9FAxm1RJ4NfzmQq9n13cS9GR07w7t4SVjcIM
         BWaxTRVW4wuyZQxhdfdV+hcHtcYGWLXpE4ARXuy5hwKTE39+KnvAeHkv7r2jzcDra+L0
         +SwMMcjuZR8J/SvA5VhISIEwQbFfyJo71phJFwmbo/xza+nKKrZh4/pQvFw0vTnpzq58
         xsMk1wJMA0HJPU6Bbqzym+7IlEp5EamjHf9T5dqKiww0HWwTlCL1aEBGN9T5aey/2CBz
         wIfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764941514; x=1765546314;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QUQdIs49tUo2Vw0zXbxQ69nd/OiCnomRFfhEIITIBW8=;
        b=pQ/yiyJfhmWyzhSYxLIThv/1SwdDUjDPU+uQcmZebgR2u10EpLH270Y/6utbipNLMQ
         xqk/Nd4geOU+4j3NZSpXakAm8/JzXO8gnZF+Bq82yzarzsz4WeDezwGdFVz0kLGWUOiW
         tOfelm1Y9GbUbg2o1yDDjq3wVs6G28Vcm0oIO0niQ8MrHfxzVs5M6GP1sc8L6WPWyv2C
         MBMsc2d+2ltAzELSBNoppy4E9L1FhU7bgPsXsSf2+6l42WjRh+FmOk4WkzwaaiuZmWvF
         dlXRnxLZ9Wrl67fIMaJ2rEgXsteqmOU8KCRjzKQywTqt5R1rOqcnFNk8mxVNgCSQ3BNc
         K5iw==
X-Forwarded-Encrypted: i=1; AJvYcCVGhE3aKdOZFc0/GB93tCfbqRe5TByMXA6FSlLE3J+sNTGKYmbWiyODRICTBIfqedVIl54TIPlUFag=@lists.infradead.org
X-Gm-Message-State: AOJu0YxV5vfPw+qX/jn+FeGhujC7psujqSmCN2GBikEXdbZjOHhQ0327
	SBEgjqzUH+WT6+6ZqENyGrE2DQ8pcLiZHZn37bY+XefHblV00iBEQOE9+YkW36dFUO5MIZp0AOq
	YLAb1bmCH0onTm0HxJ1y1RZNY2FpUredA7SGHiv0uUG4mHj5T8fwftZeOcnejjxuDsPAQ
X-Gm-Gg: ASbGncsLJjNBdIQW4RgOgdOv2VuEyHcD9IKLv2bYsGXFp6sqZa+2KLsDhADzAiFc0T/
	JxsTaVyAXGeBL98JRmdigTLcLh2RgKbm1QxxwZYEqj4rzAr11fxSpZYueBIQLLvRX0Ab2OtDKoi
	ql8vq4CCXDtbLrdXhkwINsH9KBMYemktsyIfboaucYWrF5H/Q8fsjPQAufktg89kVbrahK6La+7
	tc9OLzL6xDTu7IpNVhg1V5HN6/JAZfnfBCzu+bBQMR9uVoVIe4EYNwjdjlZSUs82GARquvYYTsp
	xtmZ46IwJnNngghzX79UVCZUvoDJEl3Pku9JttDTnjwyu8J2tyI+7Kp6iINGjP+dtRjGiuak6re
	yZrqpACLhIErMyKkw4s/wrrPj9/8rk3Prwj/ni5h7WGQJFw78qfD8HQ10t+azlGj1iQ==
X-Received: by 2002:a05:6122:804:b0:559:9663:bfb1 with SMTP id 71dfb90a1353d-55e5f65ac7bmr1440642e0c.0.1764941514073;
        Fri, 05 Dec 2025 05:31:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFIP19+UfEnX6wbo3VZlXqWiaS0KkWuEmbm+7UJoS4tYldEo6+X+0Rg41ZheRbrHG34I5XZkA==
X-Received: by 2002:a05:6122:804:b0:559:9663:bfb1 with SMTP id 71dfb90a1353d-55e5f65ac7bmr1440625e0c.0.1764941513642;
        Fri, 05 Dec 2025 05:31:53 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b368de11sm3690410a12.18.2025.12.05.05.31.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 05:31:51 -0800 (PST)
Message-ID: <755b7579-757f-4ced-b3c4-39c20e6b25a7@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 14:31:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add
 squelch detect param update
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-3-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251204044644.3072086-3-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA5NyBTYWx0ZWRfX76LHaXqggC26
 fc2poorJh5NRVRRyYZjtNLemb447eQ9G87VHGdkASScaxKJjMdCQubRXF9gw1VZy/mMkBH9B1yP
 dp9BYBlsSRVH0kPsltiqEr/YQRFnMQ09wgI4UfpPUlbhuO15cNsS4dvkN13eTIDXH4PdgJUIe4o
 dhdpF6vP8TCffLdjov1b1lfNlu7vkkFaSz53V7v2tDjDPn0IOlWePomQwOAAfHFHyAd9zzItTs2
 4ST1YPdiNwsbfOVpkyMbGX208COq6+Akpt7Cv5VjcCU5u4R4vd7Vzrtbnd4r1RmFNGJVo1f00DE
 FLCvGFOvtRMTnjK102KVqhHgKvgYCLLod9XWYhjQ5csOoFalYxgs61Nff8gRDjd510luV5+l1MV
 4yoc4MaQe0Vf5kff1xjxwMBe7V/f9w==
X-Authority-Analysis: v=2.4 cv=P/Y3RyAu c=1 sm=1 tr=0 ts=6932decb cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=82mjnoTymtVJHuoFAx8A:9
 a=QEXdDO2ut3YA:10 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-GUID: OlLSNil9Uo1WP9Qx72ok2PP1AL_jS_kU
X-Proofpoint-ORIG-GUID: OlLSNil9Uo1WP9Qx72ok2PP1AL_jS_kU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_04,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 clxscore=1015 lowpriorityscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_053155_887239_0B505B98 
X-CRM114-Status: GOOD (  13.06  )
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

On 12/4/25 5:46 AM, Krishna Kurapati wrote:
> Add support for overriding Squelch Detect parameter.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> index 651a12b59bc8..a75b37d4e16d 100644
> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> @@ -37,6 +37,17 @@
>  #define EUSB2_TUNE_EUSB_EQU		0x5A
>  #define EUSB2_TUNE_EUSB_HS_COMP_CUR	0x5B
>  
> +static const int squelch_detector[] = {
> +	[0] = -6000,
> +	[1] = -5000,
> +	[2] = -4000,
> +	[3] = -3000,
> +	[4] = -2000,
> +	[5] = -1000,
> +	[6] = 0,
> +	[7] = 1000,
> +};

I forgot to ask, do these values apply to all of the supported repeaters?

i.e.

PM8550B
PMIV0104
SMB2360

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
