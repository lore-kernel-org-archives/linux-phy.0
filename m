Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37222E9A047
	for <linux-phy@archiver.kernel.org>; Wed, 18 Feb 2026 10:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5QW0S7u8xqw1k0j77yzBv0aLCHC1dO5VYsq8TcB7R7c=; b=B0ltC0esRQPiIa
	Ne2csAcJDPpMaCNGCCCf+tO8pf02kZW95+CecoMd9Ns9JSylQqNkYdofQ2rvIrUUD88Lo43FoHbYx
	SH1J4QdGPvzZf296VX2q+t/sRPlPcMqfIrfm/HdySespO39y+XbUKttRzRmHlTwnVO7wJlownmSDM
	xKm2rOppsle5NUoccKTqWBlrR/EHPg+U+VJgyrwbxCxu0D3hRcJSaisa8eUE3ItNqi3MXosWF9QaH
	YQuvgUjNJKErtsVtV3wtvnD3nwndmpOsDPx981txXyQtYd7G7gfE0P0k/qq0STHE0uejqnQY3mgun
	Y7aFhN+d8sRxu6tZw1Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsfGl-00000009gXF-3wil;
	Wed, 18 Feb 2026 10:58:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsfGh-00000009gWe-3Z7j
	for linux-phy@lists.infradead.org;
	Wed, 18 Feb 2026 10:58:57 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IAlMRZ420193
	for <linux-phy@lists.infradead.org>; Wed, 18 Feb 2026 10:58:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sTsBt5a0VaXLPvQkXmwtAzHaEXpR+5wnJCfbUcQoLYo=; b=muoeLrI6i4dtbvG0
	/OqaK9BGG5QtWfSUaJLk/whAutpzfPELfTOf+l1V/gIx+Zrx94eCz/M/ynjURJO8
	e7HA09S08kUMqk0z1qoNZrmB6epyAf8SjWsJxBBSwMDEW5VfZgOGYEu5Cg5nfCo8
	un73jJynTrd9yMbCvEOA3++FujRsyAiAD6T9SmHuGUDQ7njj8prwgLN05LNTzn/S
	W3lZ8T34vE06y8Ft2JXJvKzKClK+OoHCGj02kyYePozV1aN+UWmnmoVtMeldafWv
	9x0wh97EsgoTiOQkXC696gf6ISJFfFuuO9QA/qgaI8AdmjdATxI5w+G8HNJ9mErE
	cZjOXQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd0k5hqcp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 18 Feb 2026 10:58:54 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-896f7c56f10so42862376d6.3
        for <linux-phy@lists.infradead.org>; Wed, 18 Feb 2026 02:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771412334; x=1772017134; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sTsBt5a0VaXLPvQkXmwtAzHaEXpR+5wnJCfbUcQoLYo=;
        b=JuMVP3c4GATCIT0s36eQYvRswGr9HxMVVdasLJHHfLhWrU6yVmas4XVzQSjaQ77Iuv
         sA9Dmqe/ZyXy8CAPzba20KIskV/dMnWDPQ8Vp73pSnWTbZREjZVXQfkDLjFTFZlW2QDq
         vCiuAQz2arlFhhVOmhcOiDf794MosiML8QChJpsn+RZ8w6+AJa8jRiFb4uiE5jTNJ2og
         ERtJzCC269zo1ytd49JNXXr9MSxXV+yNseMakiyxL8w60fKd4DbwyChHrQHPD8dRa2qj
         O0Y/XkMLJ7BrgWwC50wxvXuV6v2higJGShyBtScas0sWWw4N8aN0PbEyRqQwu1FywT7h
         pyfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771412334; x=1772017134;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sTsBt5a0VaXLPvQkXmwtAzHaEXpR+5wnJCfbUcQoLYo=;
        b=cCt95Tw81BeD6lj+H+aYxW8ZlzbvEYWjmVpovF4pwRBYW2MInjPIWFaFuMvDK73jsw
         CNrNE4GPSesOzgpQITCNckVlV1iqA8AYvtVriMUwuILVu1ttjCfTYmIcs9gF96MwQZ27
         zMyil2ssfP0a/X86Bcy0QnqQnA/FF9OIaEfgm3riTADrnBNCIn3SK9ciThLLW3ueRzpp
         qyzdmB9+Sx5GgTagXk+EdvV/rS/X54krzZ9iTByDVn0jEVqcYhx6jhVTyLAyoCSAhg+c
         kV6+zJCQkN/tZBubUy2vJq8zms3QzA9jioBCvSq6gmIYCx9WJiuw7Gr0fJr3jzW4Te5y
         sE2A==
X-Forwarded-Encrypted: i=1; AJvYcCUFZSvT8OuEHQQPIxu0lFOv947UX1V9U8723jDFqrqxhDZFElromo6wo171qIBhjICJF8C+tcGN3oI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwXHXQtB7D3h5YPUddhwEGXg3PbAIH4h9HGQA0B8XaohMnKdhw4
	HXW55tIw/FnRw4RYI4fUCI0hV/Lqm8sLenVgIshb9zst/X6UTOlyAS6yoiF/lxOpL7TS0x7jZSA
	Pb/R6/AIvpuYqLLmtuGzkPybMYd6d6YcRtQIymhiV+T59Fy3ewNaszz/WN31LNXr/tN0G
X-Gm-Gg: AZuq6aJUcesVrRZ4GLZhJzSZrgJ8uT2XuvdLq+ihVyQwZ7H5euVUrKESgpWqV9sGn68
	bfPtGgMyXoX6KiyXIh1WjXt8YdID1Yh30iH4BcWM7dU4rO2rgItQxGkS0aeC0P22lRPrtfEsaXi
	tN5JawSuJzKumuvgbO6liJ0DKfUnbajVfOMD+mJyqfamGjF0I1Cp6OA6eqGLOD2+YOiw8RcYlQL
	eK976zfhlhWwLYdMfOb5uJikiUtDNKfPFrURkhiuH0EHjRkY7ugntF396II8Iz20ILR8gtHedAe
	0tHj/63HS1LwZwM+yOQ72kBF5DG9YlD4iFKEzMn7QZ/rVZkPFPk8NdtAD/HS13FegujlguwbsvJ
	PSSMGO/+Afs+v2BHXkwMDtqcromiPzwcE3Eqtv41nJSLM04z6cXUE0cBze0S4/zWOcM5oWiWTbM
	ecrJ4=
X-Received: by 2002:a05:6214:8001:b0:896:f317:17dd with SMTP id 6a1803df08f44-897346262ecmr187484516d6.0.1771412333898;
        Wed, 18 Feb 2026 02:58:53 -0800 (PST)
X-Received: by 2002:a05:6214:8001:b0:896:f317:17dd with SMTP id 6a1803df08f44-897346262ecmr187484476d6.0.1771412333513;
        Wed, 18 Feb 2026 02:58:53 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fcb0ab637sm413859266b.39.2026.02.18.02.58.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 02:58:52 -0800 (PST)
Message-ID: <018f19ff-84d2-442f-8d6a-88e05d2428d8@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 11:58:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: m31-eusb2: clear PLL_EN during init
To: Elson Serrao <elson.serrao@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260217201130.2804550-1-elson.serrao@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260217201130.2804550-1-elson.serrao@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=JqX8bc4C c=1 sm=1 tr=0 ts=69959b6e cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Sq7H2pQaWTqN_k3XZF8A:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: aw4kqfzTcYe4yc6PZnz5x2BrmzceEkQk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDA5NyBTYWx0ZWRfXx4vl2+RjoFCD
 vi40bDv/F2x30M8Mn9GPPIoypPpwLA0TDOyWqeUkG8fEQP5RMroU5Y9U4vbonZ4wFcKvYD2V+d9
 PnCK3Fbkmj4tsAc4OFmidH9ZvOpwmqtNRSJwXaysPEVEhGFcJiFK/BcPVpQd53Ls1D8780g44hA
 GziO/IZnYGiiAGy99hBjxTa7dz7WvSQYi0asefn/Ta+A28YyJ8yVmxuWQ0L22vPtcSvoZciLaBH
 P2J3uWUohel4NCQMEoldNKJokgm2J3FdszG0cUZ8xk67/KYPf3gKahJRkK8skr2nDjXBoy3Frb9
 eTELOXa8Z4uqU/76IpyW63/VtCl0dFvgNS104OzjGKKF2aWbxVrBUNuiGyNdX4AGDzrzSgP8WhC
 Iq5pDr3MmPtXMZksF0Vl/05e0vEbwc15KMabjTK8IdlUsW0u9bTPNliXWYspGB5oIgiIiqZ94oo
 ZqO7Q3v4kjmlNus71Qw==
X-Proofpoint-ORIG-GUID: aw4kqfzTcYe4yc6PZnz5x2BrmzceEkQk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 phishscore=0 adultscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260218_025856_042226_49A8EC1D 
X-CRM114-Status: GOOD (  10.07  )
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

On 2/17/26 9:11 PM, Elson Serrao wrote:
> The driver currently sets bit 0 of USB_PHY_CFG1 (PLL_EN) during PHY
> initialization. According to the M31 EUSB2 PHY hardware documentation,
> this bit is intended only for test/debug scenarios and does not control
> mission mode operation. Keeping PLL_EN asserted causes the PHY to draw
> additional current during USB bus suspend. Clearing this bit results in
> lower suspend power consumption without affecting normal operation.
> 
> Update the driver to leave PLL_EN cleared as recommended by the hardware
> documentation.
> 
> Fixes: 9c8504861cc4 ("phy: qcom: Add M31 based eUSB2 PHY driver")
> Cc: stable@vger.kernel.org
> Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
