Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FCAECD3427
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 19:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhHG0W8uI5INNRTztuY8LZRqMgOWlE29646ICJS6moo=; b=Z6Kg5BLx9FzGJu
	En1kaYdkDWKBBSWaYwbvTAsxDdPy3mUxtyJPzbjGBw+uyOZ047s7PrYQKmWMbKufn6RStn1J4Htd1
	s9hURph7ixE05UCuJoy9q1Lqdb7d8i7zzsRbiGMWtfMXOmvBuwGZEe1vmGYjgemAQEZUv1naL7e12
	UuEFVfEf9sildN2BI8q4IbLIbriBHEQkSCzKiGGOmsXAyy7/yWLySWEUZMDGyBVhno+3ATHaH+XVn
	YERlwkwD9IkkOwcnIuycQy0sPvAWrOpGdnkXZ/TCWZSYihLzXfaI33l44Tr2UXgQ4AFlpnNzbVe/m
	SoRu5C2WBPEEHhjR168w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJyxc-0000000E9x4-0acs;
	Mon, 04 May 2026 19:28:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJyxZ-0000000E9wX-1m91
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 19:28:06 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 644Dlxid299982
	for <linux-phy@lists.infradead.org>; Mon, 4 May 2026 19:28:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PMC7EZxzEAp7VqfI8gWRBXZL
	5WK6FzBLWaPqyYA6xkQ=; b=UwX0c7LQkrmiglS99RbSq7UN/mYW1a6bvPn7ANKW
	wooYmGB0LPfzmlj+GGXuKl8NmthUq8WML/mCKZGXBubfJuby9iiLlkb8xb0uk5UW
	jdLVbbpYhKF5LZVN60dw9wiK2PDQoKvFYp92V2QookogJgx0NceI5xJmEIDEyxES
	hVii3ZuYeEKXuveF06OXuVYYBPs1+XO3RmE+BoGhB0NytXEgGnrG//EBkQFmOQce
	/btZm5rrh1hEaUzyCLqPSp4L5ujimLlHqWIVF0Jm55D5ZaWFp8G0Bb4zbVkiaGYz
	quTk7NAccovy85v2OEXHbuvHNF23ylO1uUOST/X+2s9tlA==
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dxvnd9d3f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 19:28:04 +0000 (GMT)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-69492bc3a38so5522670eaf.3
        for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 12:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777922884; x=1778527684; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PMC7EZxzEAp7VqfI8gWRBXZL5WK6FzBLWaPqyYA6xkQ=;
        b=L/W1e4I6okZx9J5hNRlrTrnvS34vU03oQ1IvIa1bDsED8/tWuW2B0UlIsZkHI+n1+X
         FEzlipHoz0UomNV1G5EOCXnlfpDwcg452NPDDBkAjqaThzEARXESj0Gf6oy1PxAJKWjL
         4Wp4Tu6U4RNanZK+bEwGiapHFulOkhrvXkQ9X9TFC8mrUzQfv2vPm1iMMcsfz5pMnvjg
         WBghPKJIyOpsE6yqBDpiwACzucQa9It40+GIRYc3rpGXc83zVbo6gqQQPM0n9JkcJUYn
         fib1XNP9bCt0hLZ5ifRdgQtrdTy/HFmlb3YGQsb1K3kPCdWsYHeTQwau66FX9TJfx9yh
         VQSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777922884; x=1778527684;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PMC7EZxzEAp7VqfI8gWRBXZL5WK6FzBLWaPqyYA6xkQ=;
        b=aXxM2NYeORzRYy5r5gt+EVfmB4+RqjTQ/tpL6LRcGrs0FNdSl6kXmdJjeC1LmXB5QK
         VtB5Xx7U+mzaFfzk7WbRyStQa1aION5MzhHQ2yf9E0dfY3GIqNPI8skqYuix+wyLldYs
         +VtIKrGC6/INiTE/FdHpFlJhbTRmlBGSuHP8g6XDkSsyOzXdPIwJRf2rzOSzhAXKHkvh
         ZOMBxhWe7Zw+vQs90YgEJikJa+rh8vXteTF/gLoVjyrXpV4cdo0DZXVJcrDd6G+yT2Rv
         jbYdK3J0f32fzuY0d6qjdf8B1R1rPI8kIUhGoZmtSNPgW+ABQTQCiDFTwpbmCnhYVCYc
         HyYw==
X-Forwarded-Encrypted: i=1; AFNElJ89kB4h+nFDDprkD3gIoZsSRpBueVxPHTo6e4pZzcnf8X2WUZXxoBDdjs60tCXVkbQlnOoCfWn1hsU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxga57oOUykHnEuGP16rza7W8z32k8aHxPuJLPzRVuZvLd+6iPh
	O+x5opUnHvtAMuwG/q9FDI+561QxwZCjt95ssEMhdxAlhPcJKQNXQpLGiw5OfX1sqkmvN0Cwt6b
	ic88zhv6514ySj0TteYWT0LdmsCK2Ijo5V0bL67t0ubC1fXeewIoonijKly5gNl5wS6Fh
X-Gm-Gg: AeBDiet5GaQDs4MSP8MZFSZHGRT/CurbQBMOfaDfi9klW1scdeYPXqPl1+4H0L/qchU
	6POLmA+1/SAKEcRpfBhNoYINS3xzoJp/gfFteXxV5Lg9iwXDAbrRZzPCH9nuaP42aLBqf4UmcXT
	Cyc30peVNODilC75M+TbJQZIZ6CKzSG1pcYXejbJAchG33aHbDProkAYEOXjORZK8LCcCRW26th
	QMCeeQPUhhEhMtdnUL/2aI9UFJdASI8ZssrGTzGKRY/mKuD4hqnktycWXnvo69lO0x7Z9MzAHJY
	haOwQjBE3pM7hUYm0paBybmY+am+xm83u9So7EPTRiuMqz7u/reVlfJ2crNbmCvUHvm09WqfBVO
	YXRhHU+XZJqojGXRYH8Q8aF1k8jykKSWlPxj/PBFRBAN2PQF+nWrCZRVxzBLnCI9KVppOi+U+mf
	zBvnNCtND7nbi1Pxryyz1P+Hfa9KPhXx4u+r3Lib8cTff3bw==
X-Received: by 2002:a05:6820:6aca:b0:694:852a:28aa with SMTP id 006d021491bc7-69697dfa518mr4590453eaf.60.1777922883724;
        Mon, 04 May 2026 12:28:03 -0700 (PDT)
X-Received: by 2002:a05:6820:6aca:b0:694:852a:28aa with SMTP id 006d021491bc7-69697dfa518mr4590426eaf.60.1777922883095;
        Mon, 04 May 2026 12:28:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-393610ba631sm34733671fa.12.2026.05.04.12.28.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2026 12:28:01 -0700 (PDT)
Date: Mon, 4 May 2026 22:28:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/4] phy: qcom: qmp-usbc: Add qmp configuration for
 Shikra
Message-ID: <gb46nv455vfkldkhvlo7c26amuonrlzvstirdpbzictbqgyxox@6vypar3byxhs>
References: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
 <20260504170659.282532-5-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260504170659.282532-5-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Ac04IjBle58hZw-0MybqJl9gOEZBblUy
X-Authority-Analysis: v=2.4 cv=d9jFDxjE c=1 sm=1 tr=0 ts=69f8f344 cx=c_pps
 a=V4L7fE8DliODT/OoDI2WOg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=fS6AiMJiFTYgNuFnBekA:9 a=CjuIK1q_8ugA:10 a=WZGXeFmKUf7gPmL3hEjn:22
X-Proofpoint-GUID: Ac04IjBle58hZw-0MybqJl9gOEZBblUy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA0MDE3OCBTYWx0ZWRfX4xuM9BAZubis
 sEptTIUNI+lPsJdMgykZm9kA9qtK+g8LLRmhHCeKbBamfSL/hBCqY0sRAYAxB29JMh6hajTwlQR
 xto6dKZjJU1FQUhV4ow+MNUWMuPplJ0SlCtb7oIFMxEolBtqN+cgc6YS/4vepaBl6iJl5TnJ1tw
 N8y8lk/4t/ChAGk14o9pxtGC+RnG26DVViUK3ZinFFAt1fs0FTe39u2ztSTE5+EADp0YNjtONyG
 faZ6DxVhb6+reSJRGpnMImNwCJvB232ApKuLS0pCHNnFElzX+9/skNzKk0YEiy3JsaQ0n4F/H0n
 HI0rnTMGsGcRHkwlreZAJKfDQRG2u9ML0N/VyOoREvKFGVfRikeT8oZD6IbKMuESFhMwW7+jLVO
 OwGJwXm61+Ecfcdkq0TMXGg3D56Fl6lgQCPiMTwtcuzSj8316JRR/Is1uc4txDGtWj+hLDqJ+dh
 11sSWCcDOdSA2+7Ip4A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_05,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 clxscore=1015 phishscore=0
 malwarescore=0 bulkscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605040178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_122805_469428_703F3795 
X-CRM114-Status: GOOD (  18.16  )
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

On Mon, May 04, 2026 at 10:36:59PM +0530, Krishna Kurapati wrote:
> Add init sequence and phy configuration for the Super Speed port
> on Shikra SoC.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index c342479a3798..400dcebf8222 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -2019,6 +2019,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,sdm660-qmp-usb3-phy",
>  		.data = &sdm660_usb3phy_cfg,
> +	}, {
> +		.compatible = "qcom,shikra-qmp-usb3-phy",
> +		.data = &qcs615_usb3phy_cfg,

If we are reusing Talos configuration, should Talos also be used for the
fallback compat instead of modifying the driver?

>  	}, {
>  		.compatible = "qcom,sm6115-qmp-usb3-phy",
>  		.data = &qcm2290_usb3phy_cfg,
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
