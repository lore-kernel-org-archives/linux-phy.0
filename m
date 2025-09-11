Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 872DDCAC587
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 15:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUK4BrXtwi/6I8SM1uRJ0CbOiuPbV7hAeaDy1spH02M=; b=J7xax53Eg/43yQ
	taMv+HLxwStFF5cwJfTSVQ3kd0SrxViQWbK2Ia9Yf7Rc1FyBZeGcuMlCPabIaRXtVny5tnztZ4afk
	3wBZtAvI1I8TkzY41yqwn6ekfBhSksm3pmuixf3unW1fpRoHpAkWZjuUKO8XPmcXDnN4lmV4C99jt
	IrMcPRiCErRtD7n7cM1EyYNdkox+3zS8JsrfOsJaOsbT2KR9Xk7gk4BcSvxZWDBtCGOgLRPvUWaDD
	FFfg8sbszoAccyCkpVV5kYKtXcV2QdPHVFKQfIPZnGPB0LK3cnJlgYV1mOYTIeT5UO6qKOw2UyoZ1
	70dn5iDce+zfP1g5WBlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiqw-00000003ksa-1LcB;
	Thu, 11 Sep 2025 15:04:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiqt-00000003krJ-1Cna
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 15:04:48 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BAtn6F006978
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 15:04:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6FKGH0QcPq3zUDyOCCypdh5UbCID7mN5vXsMYkcjroE=; b=XEipPzJnvAcMMuSp
	rQ3ee6JkPG3R8DPRaI7rTSrrfrayqYsM6hwMWsZfks66TdYvX/cx4bnBGuROXhRg
	vot5BBI/Fs1CmMWqS7rSc2e/WVQqmYqLP6hbJPuX1jn2A7sGP1fr5+Q24xFUVQxt
	Qp+DpKkv6bjRzSmeToebculihMnO5yxbEyHTo4l7eiicZiavfJ3imkGhX3mtaTOq
	m0gPy8oZWiLBDBzb94AQ7EZVMvg1cLFrQrnoYw4Wdq7oKCp4j5Z+yDqkl1OsKXbI
	jS7DthkM8CUeyLTHuReci23rdT8UgocSEzDSHvy2GLeu+MKs7R2E5RnlG4ykO3W+
	pLZwIg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491vc2c94t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 15:04:45 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b3ca5e94d3so353271cf.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 08:04:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757603084; x=1758207884;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6FKGH0QcPq3zUDyOCCypdh5UbCID7mN5vXsMYkcjroE=;
        b=td6aqpSwg85KbLO+ERVgRXxs2zvx1dc6sjkwlUpb/oGcraexmeQmG5rmKDOCGV4Y15
         3/hlNy9UDqxqeD+c6KCV29tIjKZl806AKiSwOL/tKwSPsjCbp8bpvMUzxZeu5h+So/6p
         kqOCrtgopXYiQdDQg/wA2SWc2b3/cPC+5ZcxmzLyQE5vSDNvXJu5xJORfdCdKx8rCJNB
         nnpZq/973tIDywsLafIk59ZBS06GgbZ7M0ssIKEOciAPLysHXDoEWqxkU4gxg7RBwBhW
         ySka/2LMEPRup0bv3Tkx11SE6WEafWGHtRoJe5kfCbxbG9QRThvjtyDYSgNyzNeelKhi
         TEzw==
X-Forwarded-Encrypted: i=1; AJvYcCXva3R7jymfl4ez+I6jAThZjhAlkNloJabrdtI2FPNL1T//ycFTTyPH1l7CLjYwqsWV8kw0tvADRy4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxgDcdRNXdtOLkNe5u55vCP+dgKLxxm7BHnoFxq6VIbgY7PYoIH
	x1qCMTlFY6C1Txb8dHNdftWiqnd1MPkvync7fGt9YccCiX51NJ2uM2FYwQ/UGrqdAB1cZx4KY+d
	GjODj1vqa/mn1wIKephptKpNg3bqr6TI2sKDJvNqW2VxNopMtKopg0zIpnt4tggPXJBcz
X-Gm-Gg: ASbGnctHr7oT1XHIiagq4b+JH06s5KOXyuSKZ2B3DlcJg87NA1uucW27bFBxICWqa/3
	1AEBwH1ICfSScO5Emz+ODSAwLL8BSiQF+wdFFjaKp0nwqtXQX3564unLTiOMj5V95QTASt/7VgX
	axoJ2AwjQuFwj/VjycujUEH0Eml1TnrVFWCsJTLJY7s1WcjWrch/TZQWdz9NLKRENAaogAzVhKu
	0XG+VOqQCtRy9XEQajtadBbiYHoj4ABnriAkt2ua9bYWx0U8eUTm7cad7Dw4saue3qpJwiG4lef
	gvQd8gidRqffAD/BrEuAIdk2sW4XsujYmvFqlxpnOAz1qa/p/BrXsqEyO8GQ0yfXlnaJ/n4MgsP
	Zdy807JYbSPAUkmSKoOL4Lw==
X-Received: by 2002:ac8:5f14:0:b0:4b4:9175:fd48 with SMTP id d75a77b69052e-4b5f830417amr151528301cf.0.1757603084216;
        Thu, 11 Sep 2025 08:04:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0FppMif3cYGizhNCQ1L/ibDbAQ5mYytEfu5gYANTSlZP+Xwy1nadB0B3Hzn2U//SYcIlZqw==
X-Received: by 2002:ac8:5f14:0:b0:4b4:9175:fd48 with SMTP id d75a77b69052e-4b5f830417amr151527391cf.0.1757603083289;
        Thu, 11 Sep 2025 08:04:43 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b317124esm149966666b.46.2025.09.11.08.04.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 08:04:42 -0700 (PDT)
Message-ID: <53f1e121-302c-4b35-9dad-114d16c2a9a6@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 17:04:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers
 count
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
 <20250911-phy-qcom-edp-add-glymur-support-v3-2-1c8514313a16@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250911-phy-qcom-edp-add-glymur-support-v3-2-1c8514313a16@linaro.org>
X-Authority-Analysis: v=2.4 cv=FN4bx/os c=1 sm=1 tr=0 ts=68c2e50d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=c4sUNlcVcd6a9V-9oyAA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: m3w0Aur4Dp3du8ksCMXR5rTyLWn4Wfw3
X-Proofpoint-GUID: m3w0Aur4Dp3du8ksCMXR5rTyLWn4Wfw3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA5NCBTYWx0ZWRfX1oRxlpghb0ph
 tVJf+hSw6rCtoqJpm9h85foabNOKMHvF5ZWbmk1P9OStaDeuv/pNqGoKw9NrN60UtxBoo7fokHD
 sFAfmPK3NF5RkBIfoTGodWNd+zMEQcXibT0wXpfsFFoWIappv5u3q8dUWVM/KrLiQTim215lxan
 RhYUBaG2ahQY6RWg1ijDb+nqhqnvSYEa92zyrzxuwHn6kkth2tYC7pllKSsNWl27uny0jXj160z
 6chJdjkgeW9bBiq8Ii4Pysy5DsNBkgXAWrY6Y6ElWqt+8nw2CKxYGLN/XcZL2AtSyg63fHW5YSr
 eynsG9iNemOOED05EFD5ycU/PCCEnEedE1v5XmIiG8KDUU+yNYc+qCn3N7vXRb3GWxN4SmjzFT/
 SAyfaddp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_080447_810856_35CA325F 
X-CRM114-Status: GOOD (  12.03  )
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

On 9/11/25 4:45 PM, Abel Vesa wrote:
> On all platforms supported by this driver, there are 13 DP_PHY_AUX_CFGx
> registers. This hasn't been an issue so far on currently supported
> platforms, because the init sequence never spanned beyond DP_PHY_AUX_CFG9.
> 
> However, on the new upcoming Glymur platform, these are updated along
> with the rest of the init sequence.
> 
> So update the size of the array holding the config to 13.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
