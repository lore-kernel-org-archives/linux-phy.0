Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0963CC5CFCF
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 15:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXUAfk91MOmWPkl2nkzCREevR2S9qs8fpL9vtB3AFdg=; b=TMsXoXM379JOt6
	NAOeNZ9+Mf5y3AhF+nLp1Nd5i+pw5mPNNljQNScHOanUYmjnVjls9g8TLVCs9YqkKEQZsAW4M/K2W
	YRARnkPjHRcpSFNGTKydmIoZcJrbWTe3+k/dMSrx0z00/rSkeR2pw3QnFsx7iYL7fSVFOQYORzxvz
	W5Tl/dBCpF0+b3ubS+RfFX29HKyPnJyQjI1yzsOJfPcJaItyJht2C51yiU2plG9r7ORbeLOg7xewO
	IGsE3LlHTnU/pDg6XMUBp4bKq39Bt//iByxT5fLmszJfGrMFvdonX6JL+87M/oDblOvNQI1Jm4q4O
	EyP4UAcXYDwouRDI6JeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXVY-000000013FD-2NE7;
	Thu, 13 Aug 2026 15:38:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXVW-000000013Ee-0JZr
	for linux-phy@lists.infradead.org;
	Thu, 13 Aug 2026 15:38:15 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67DFTNd2084378
	for <linux-phy@lists.infradead.org>; Thu, 13 Aug 2026 15:38:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2Z+8TPPRz/0BEaS0dGmL/mci
	2zflTsU1Bc4aBxXGWSE=; b=g+aYcNPpxIWs/oJJ0iCejJakXeLzxdBdRG12jvMh
	argp1tvJHacVB5XZz3z5BLhlTizXR2vhaqycVmwEPP9Waogv4QuVA5csDPJpPLYx
	PIafcPe5N0WFyCLqROGpo1/NZ6MCmI3LJ03mxcxvj3lox5vOQXdBvnQcTTBPM8Bl
	a+FZoL+NsdoH3gxuv/uhMGCG+82Zo7nJs5nInVwTTrJ94rP6fkAZ/021CMu0l5Pz
	MJ9GHQvRTMsKCdamXCqkZ/fmqYYYDrvQfRlcnr2EVPR+MrDWm897sCQa1ULNI1AI
	8fCtJtkbmXoGOSmT9M4QnxQFFTgvbV30H4/t4KKv1vdOag==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g152mb5vs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 13 Aug 2026 15:38:13 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-52d7b3adda4so470631cf.3
        for <linux-phy@lists.infradead.org>; Thu, 13 Aug 2026 08:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786635492; x=1787240292; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=2Z+8TPPRz/0BEaS0dGmL/mci2zflTsU1Bc4aBxXGWSE=;
        b=CHi2MaxS5yUXDKAL/21M6tzZlTxkvvrW/QZJaHdRfGIhEZEBoBrl41j/WOqkxXetY/
         7YoMo83ej1cwcjSUorgMm1lgL/8w0AaY57E4k5FXFRmUnGmmohhq6Ym3ja7qtZ9nmmtr
         52g3x/ExxIx6VW5u7FN9F/R2be8mEtZcG8v8sOYJucQApVWydrH5fP1vjF21wBG44uiT
         ECWzY3Z5HamFYVqsY7n+mFT6dev9ZmMMZ2mc/HY24vxs+4Q66671aGNmEHfY3xaaMeSi
         tqvDkSgW6z1g8aQVatG+WnKsTpW79L42WhtXAacBS1fbIgQRJ3ym2GuxpGWWgsu7CtiS
         SGHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786635492; x=1787240292;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2Z+8TPPRz/0BEaS0dGmL/mci2zflTsU1Bc4aBxXGWSE=;
        b=h7BZIuFLIZ6FHAwF/X8kfTojEloTH8jq9Ypr7mNyyM8XL0IgmDehY3kaLI0IEIEEBy
         AEiwL9Rk0Ic4sAMoqDXBz1qVpnayKfkgJeyJKdVDtnRD/giaNcxjWIf3lEbtRpFy+LQb
         6Ex5hgaKaxqY0jD/QnEzfwAdP3oapj85SRpuf9NNrwCDM5we7ia57Q5tpsW1DVEX6Urh
         88yCSV7CUESEVpS8mHmXKb0tXRlj3lJquhZeYhNE1gTij9y9lHHqkfBqlbpLOtLL+ezI
         KEGbOS1m+jMT3SV7w9KBY3/I2/h+fXHyqpOcLq/m4YB7uUHNwDnHlcjrHBz7ccAQ4TGM
         uMUA==
X-Forwarded-Encrypted: i=1; AHgh+Rp2SKW8tdyLCajHcHZcdCCuwwsxPMJ+sLpmcb/OQW0LPWKl41BifAIzoC0/rJGGdZ2B4Xg1R6Os2sQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YydIPn4lNeX0wLNecd8g4WdRGnBcRGkmrJyjhe182HJ2Sa0VXAW
	Qy+qje3orpEz9LChUu1r30qBjL6x9MVL02T8HTH7rs7aIxonKlHh9YEYkCGtFlsj2e2VKichLKK
	t2Q4Um2qHyhFZ9aziKS9aVEzEj8ezwNgkMzev8poqFVqiF11Zz4urJaat3MFr+RP91zGG
X-Gm-Gg: AR+sD11zFrRg7rFt/lwwX6JfAKhgrIN8trgTojuuKVDcC5YWqkiMH818JFbptK7pbQI
	xqVHdYaQTABfbnNhb8YrrpbYFXvt16DWfky1ciJdTy7LJSO2Fq63J9kW7DEJkVrJAtaJCvHVyX7
	poys/GonPe53qDtcDA1av7hOX7zzBXKaqUlWg6KBIef1BvNqDw4IrVrhgJzsq34WwEttUSostDz
	z+GWlq4P+fLJE5D84ZMokhHRvWd5SJOpKmZR1YUbLiqfyTeqMfu0LV3/hmM2rMuqm5sXoIq0xVo
	GI6vOrcIfXycYg3LIPL5Wv4zWR7EjsmBLvQ45kju18eQcOSYJMCvDZ5v2+ryuCsiQxlMx7IF8B4
	3bk4tQh8IuHgqqr62kxVn8O3W/HmDm3j8KsK1TvwPtAL60qN5vEmUcTCjujSjTDQxxM1btLcgi9
	wdckEzQZcU5Hxu
X-Received: by 2002:a05:622a:1106:b0:528:15e:d1d4 with SMTP id d75a77b69052e-52d73be0ed5mr63315511cf.4.1786635492129;
        Thu, 13 Aug 2026 08:38:12 -0700 (PDT)
X-Received: by 2002:a05:622a:1106:b0:528:15e:d1d4 with SMTP id d75a77b69052e-52d73be0ed5mr63314781cf.4.1786635491629;
        Thu, 13 Aug 2026 08:38:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b458419613sm64708e87.62.2026.08.13.08.38.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Aug 2026 08:38:10 -0700 (PDT)
Date: Thu, 13 Aug 2026 18:38:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: George Moussalem <george.moussalem@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Praveenkumar I <quic_ipkumar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 08/14] arm64: dts: qcom: ipq5332: Add clocks required
 for USB3 support
Message-ID: <5dh3s4dbpynj3tbe5ivmsq5qjnjztmzpmbj2m5whmi43qlae5a@w6flmrikrked>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-8-8f355d7ff0ef@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260812-ipq5018-usb3-v2-8-8f355d7ff0ef@outlook.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEzMDExMiBTYWx0ZWRfX4C2oFXtQOaaf
 W7CShEMXt3NxAevEUaEmKS14BtHwiqmY5KrV20mhCS9srbCQJFVeWZ2QJQv0V+npusJQ9nlzL+2
 OsXbpRYOg7ZIgKRGLF8rUdgxT16jcas=
X-Proofpoint-GUID: fsbxK8EgmvWrEW6o7yaAiQP7EsI75UBg
X-Authority-Analysis: v=2.4 cv=D8R37PRj c=1 sm=1 tr=0 ts=6a7de4e5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=COk6AnOGAAAA:8
 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=TbTMhDWFNTfgXYAo_YsA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEzMDExMiBTYWx0ZWRfXway2vs0iveyX
 yGMDoviaQs/lscVfW4/hohCXKhvRRvPN89e6O94czZkl8CojNnej+Mm3pmThDh7dWSr5FTSVvHz
 kYBt+Vly5KcOuSXxym540EOKvZ6nv8HlmI93QDRSMOgUWBAsRR6H9jNRWuBeKtIIyGI6H7LO6Ht
 skxjgcA7nkFw1Jf7IhQzl7et/2Kphxt1derYPQQLWgb3dAbtZKScGkhydxT3kE4Qz+luFJQDvuD
 W3h/GdCFSsdpXnkVSG+8/lqcWkANeyc16wAGaR9Xeximyo/wuB8SHq5USImdn0umHmU28rHwxEj
 M7krH8lXPPT806iqLlkbSMS8ZJUnR2zpn6tyO2GwpoMBuvHqTIKSMeW+GbvpAho7uqKXt0ROYpo
 ircf5UprRmCXP6/Oa8zsVnWmcKgz1q1hst9YdsCeZUJUf13AtCxPl6UylZxf844tVaC4iQ3GUH5
 9UVp0rR2ykrSCD/o7eg==
X-Proofpoint-ORIG-GUID: fsbxK8EgmvWrEW6o7yaAiQP7EsI75UBg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-13_05,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608130112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_083814_114500_E4930C54 
X-CRM114-Status: GOOD (  14.01  )
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

On Wed, Aug 12, 2026 at 01:34:43PM +0400, George Moussalem wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Add aux and lfps clocks to USB controller node for Super-Speed support.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
