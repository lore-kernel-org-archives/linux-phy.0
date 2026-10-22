Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6385D606A32E
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 10:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yfnAyd3J;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=CEkWc85G;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=KXBlGGrA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=I37XTL4qJkudjsuwPNXOEVanwk4lFI5Q7G6bsy5wowk=; b=yfnAyd3Jl3ICFgeWAuFFyDKvcf
	obqBKHfXTI3/KW1/8TMC+twcvUneFhnJ8zxbyhu/pEbMKWJ/xzX8dvWQo50ndCGvcR0I2UleUaSpv
	GwS4bviaiA/YL0mHdQpX11D0vto+jwWUOr0kECWHA7yiOYLop3DrLIJm8bpMOOQ10XEEZaaDbuSco
	kPFbqt7lhxnBoduwYxfHwCmBCCk9sU23IOu52JJP5KLUHe+JIDYzhQVyKGQcGfVgFRxv/lW+SHIH1
	cP+iCRL8N09ceWkQ13YdMN9IQsgzBLMGDaNPzYktpffGZYMQ/cSMGsdZzFbipj5Ob00ZVxbK/ZRUn
	L/Sdu5Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJq8L-0000000DwTc-408J;
	Thu, 22 Oct 2026 10:34:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJq8J-0000000DwSi-2mmB
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 10:34:52 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69MA0YCK3923254
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 10:34:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G4Rc1GTj2IusimIXAzcUVeQX/GJI/v+2tt578pl/8w0=; b=CEkWc85GvqBYH3U+
	ZaXM/nFTsY1gU4TRFvHL2269XbtrHmWnmaO5BqAf5evUBvxv6JhJijBp0Uvupoiv
	N7RPXYuP8hzeU89vESZSXy+HL7d+Ah4Li6odyHdGpsP8f9y5TwAobwDdyH7ul7VU
	6YKCPtMfqKTdfnru7F3b2fvsUbDDlQBOQyL7Efki3qTziGq6/ZQWcdqQhgvtuzet
	pZPLHOdJgzwaDIWdpVb0kxmgPykAw4LG233B28uRu5zW+/5SAkFxPUnt4otQUHDi
	GU70usn9UmWbW5zqzuhP6fbhTLlN5kyAP8k3LIW2VKBGgGmNnjAJmKqyziQGBdeZ
	wc1xTg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hf93bj27y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 10:34:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-92eebb130dcso30081185a.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 03:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792665290; x=1793270090; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=G4Rc1GTj2IusimIXAzcUVeQX/GJI/v+2tt578pl/8w0=;
        b=KXBlGGrAOo9S4UL7cXWwjZWKvJrHe9eCeFtC2A2SsXh0B+OduIQ/gAcOYkfqWFj3LN
         WnEeFBMOJlwo6VoUn4XBW+JMR9K1bCrxDbNSnvvRKQc1NEJmZxopAGbFNXNAJptlVP+y
         DyQ9CoHhpifL2v1k+ctH12EqJw43wUqCThc/lX6uzMs//UHrTm9vRoikznQlizL5kcYT
         ybFv9TYkSIfttDw5BhdO85HNxXkWgJffYYHrJ6Wj/UVTtDIYaWyPYLlqJ7Y8fAdZCmVL
         Q9qoH5s9iDLufM1uSlNLx8K4aNrTyuJAfJCiufC2yZXiJJaKLl/cASYfZviuOTFIeVfh
         6g7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792665290; x=1793270090;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=G4Rc1GTj2IusimIXAzcUVeQX/GJI/v+2tt578pl/8w0=;
        b=iyUITH3D49Cw165eyBuUhzVKRX62EQyW40eDNhX4lmKV3o0/tUCYm/3lrHwBfzLoKq
         Yes718r+o03t3xdAzrOK4eDZ/vIcTKkLsi65t0h6qMFHmxlEjQ+Z5aRyaws7Iz4jw/7D
         zz3q5tff2NIt6h3n1udsXgEzUph4eUGDALhzoOispGoEeZLy0P1ZuKCo2rWMe0rkHrAo
         JnLRsb5IE0TSlv3hZ4rrzUwt0XKImOzd9UMuGIki71H2ARJvYTB3NDd+5T7MoFpiv9el
         dU+pCtjX8kTJQGzPJLg7wk6yCL2ZEpVvXDn8MX+1muGQJ4wsXaP6kYHFq7G/XRTpQKt0
         qiiA==
X-Forwarded-Encrypted: i=1; AKwUvBzkax3MN5hJ+XeHU+OA4sbUhOi44D3mdvWGXfCI4wVz6zQmysulwykU1VUEAAwAriisp1PbYF8PjAU=@lists.infradead.org
X-Gm-Message-State: AFq9FYKECz9hXZ8ENmaxW1NxbLRK7pZn38BFAzMfxP7ld9pI9zAQ7qzt
	nBlkmw+vwwcLRGmdXrMUbQxMs4fgOT8uLe2LGLfb+W4GH/FDJKl1DYJrI4034EqC6knJz7L2dZg
	PUicj/tfTqWKuDO92gg0Mx2GwlKCvze6DeYeibhELS3rPqCJPNfMJKeKwLF+1nvcl3ZWR
X-Gm-Gg: AYBFou3Pf1HkV/MO/Fl5pOLQ35EhpY8Y8WWBHJj2svVfw7n9vCJyriKvkLhsefdBFEH
	tXCiQYkVr5MVQLpiMrB+1Lj0DOinb1BaMUvQWK9N4a5nD4TObT+qJraNIpQM9BIC1qwIk8Tvk1t
	vhjCrB5VTHQHKax0vokWAnCi021ECwRVRBToLo0Om+feaAj2r06uY5sxETI3MJbdJMshLBQo2p0
	wcAQw/Y//xyxsGN0UDeSJbEj2W8uzrkHVj89GvrG8UJkXOMPSvsBCfTAnuSOp4EDR84g8GKBePG
	SIhHorU/pplrvaEzxtM51gsJRPrLusIO2OK2SIx4bA/bQ8eYFxG5C35GVXkfxjF/jrP70aPjC29
	pvDjuy8txrhAu+oiVIavKjQ==
X-Received: by 2002:a05:620a:172b:b0:939:8bc:8826 with SMTP id af79cd13be357-93f57e897a9mr995953185a.2.1792665289930;
        Thu, 22 Oct 2026 03:34:49 -0700 (PDT)
X-Received: by 2002:a05:620a:172b:b0:939:8bc:8826 with SMTP id af79cd13be357-93f57e897a9mr995948685a.2.1792665289410;
        Thu, 22 Oct 2026 03:34:49 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c468a57491dsm91417366b.45.2026.10.22.03.34.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2026 03:34:48 -0700 (PDT)
Message-ID: <e3a8d06e-5f7f-4743-a332-b2a8ef30e781@oss.qualcomm.com>
Date: Thu, 22 Oct 2026 12:34:46 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/11] phy: qualcomm: qmp-combo: Add hardware-specific
 dp_aux_cfg2 and dp_phy_cfg1 fields
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
 <20261001-glymur-phy-v3-v5-5-3848c2615d5a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261001-glymur-phy-v3-v5-5-3848c2615d5a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIyMDA0MiBTYWx0ZWRfXy/yA8PX5gi3v
 XSEiQr/VhzGkTp7kRmw7BaaQlRbmfJHHlCRt7WamkbDO9dxqRO9O3RCr2/xelUR2OiBvc2D6Wd+
 or8C3ntx6zt+GR5uhJsi7tFEl7fkDmaOvOnl9SreoLbWJO/Iy+Eqt0CmCIcophTEyV1+bP0/KPv
 Csh42e/LzPlv/EUKyNeg45Dy0Jq9NFmwdKsikmcp0fzvllviok+VeTU+MiMkCQ+KsEdsv9gJvdV
 6W3oE1eMAzaTmRysgiZCGgmpZBNIExwNBGesP2OF2I0Ok8X80foYyDBDIKb6aqysV11SQHgwNTT
 23nE5/FZRE81cBv9Tp4Asn+JXny5MTzfJliiZxvK2NHfoePpWDRIGWmoXgdpBVdskTdX+8vSBCs
 ILVhru03scD5Qnp9iGE5p724GhwbgdMt24jY6n/nQ1Jfwz7/EVOWBOqFXNiPiQBQmq70NjYz8cl
 cfvlgaLF0qUtYaO+8ng==
X-Proofpoint-GUID: JEYOqOc7imMK3wcG08hwUoON4WPWCDMm
X-Proofpoint-ORIG-GUID: JEYOqOc7imMK3wcG08hwUoON4WPWCDMm
X-Authority-Analysis: v=2.4 cv=CMy/zhrD c=1 sm=1 tr=0 ts=6ad9e6ca cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=LtPWTzbXSToZAMoP2AEA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIyMDA0MiBTYWx0ZWRfX9CZ4h9HfJbfz
 pfYqq/dstMv8MHU0R64rjES/hNl8pc3DE/OqYkszDPX+Zoonnpj/XyAlGgMLVr80pQGGdduCJ9f
 w4pB/+MbVsZvUgyRz6A7AIwzg9Lw1/E=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-22_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0 bulkscore=0
 clxscore=1015 phishscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610220042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_033451_835501_59CE222C 
X-CRM114-Status: GOOD (  17.72  )
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
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/1/26 11:34 AM, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Add dp_aux_cfg2 and dp_phy_cfg1 fields to qmp_phy_cfg to allow
> hardware-specific DP PHY register values to be specified per-platform
> rather than hardcoded in the configure functions.
> 
> Define named constants QSERDES_DP_PHY_AUX_CFG2_V456/V8 and
> QSERDES_DP_PHY_CFG1_V456/V8 for better readability and maintainability.
> 
> Populate the new fields in all existing DP PHY cfg structures:
> - V456-based platforms (sar2130p, sc8180x, sc8280xp, x1e80100, sm8250,
>   sm8350, sm8475, sm8550, sm8650, sm8750) use V456 constants
> - Glymur (V8) uses V8 constants
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 37 ++++++++++++++++++++++++++++++-
>  1 file changed, 36 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 646e97a52886..ebe2e6136f7a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -2486,6 +2486,14 @@ static const struct qmp_combo_lane_mapping dp_data_lanes[] = {
>  
>  struct qmp_combo;
>  
> +/* DP PHY AUX_CFG2 register values for different hardware versions */
> +#define QSERDES_DP_PHY_AUX_CFG2_V456		0xa4
> +#define QSERDES_DP_PHY_AUX_CFG2_V8		0x06

The doc says this should be 0x16 for flipped typec

> +/* DP PHY CFG_1 register values for different hardware versions */
> +#define QSERDES_DP_PHY_CFG1_V456		0x0f
> +#define QSERDES_DP_PHY_CFG1_V8			0x2f

And this should reportedly be 0x13/0x53 for normal/flipped

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
