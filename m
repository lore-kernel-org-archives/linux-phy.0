Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47D89CFD313
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 13:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+rGlS2rQDhshzNm9XQiotwx0aanH5qxlQknBAm7/lg=; b=qnrsqZycOJ6PST
	v+YdNzMOC3n1dA7yG/nH8GEEFKal8hNpqOkRXFzcGOaInrs8QABsuMISag+1odHcte4/JwngP9eSc
	CMWDZZajIUcNSH3/c+juNXyOr7GO0IskJSQBybg/VR/4DHMjQEY40I6UwH6B/LwdbaUmHpaSXEpuZ
	nvJ5e/s62oqnGf9K2vBYyzMRV0aFoXeD0UKpYDEzXpt1ZhMhYlJYq14Mnw/ccarYciQWaROcpsncZ
	6zjW4fWI1C5KSQzwX7G+kIRRtDbu6jqfG5QjOO5++pI5ryF+oKIqXyb8PrWU7H5Ght7U4X85H/AuJ
	r6pdhljNPsXm9RU749hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNWfK-0000000Bl3L-3mtz;
	Mon, 24 Nov 2025 13:31:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNWfJ-0000000Bl2d-06mk
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 13:31:38 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AOB2s353884524
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 13:31:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wwqYipmpL/YQVltcrXi93I++DdSe9sQYH/kQ48lusaQ=; b=joJjGqsFPYeVWiF+
	87W417dL718epTf66q5v38JyBqUef6qdx54JCkc3Fnaod9cv+UyHPg551rWz+hPX
	l8kRV55KQf7W/aOjBNLcP/AD2PQx1SBxCRcael4Ez94bUPCY+46RNZsOQMg6yPsF
	uD2wjwExSCUU7mxA1bu9HapVQdN40Vxp5gyLwsbuQXczrwtH+q0fV13MmDf3qQFz
	/ArLVBw7AAi6TUx8uehU2R4cj5jkFRvcgxXzGJOK9cOJaLFnB1Xh21XX9QzwTzwC
	ZRxBGDDlKCQM6cipLGhCNUkxTZvWK2LFLZArExYq9SfLeMAGQ3i6p/6GHFBkoIrU
	q0MOkQ==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amp568c44-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 13:31:36 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-55976a7c782so487607e0c.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 05:31:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763991095; x=1764595895; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wwqYipmpL/YQVltcrXi93I++DdSe9sQYH/kQ48lusaQ=;
        b=kUkFxOqnZ8nWpE93X6xKXkZ7JdXBADjeUNLDyQGAPQuaf/Vrj2P2CvUytInWeKOA7N
         M8F7NkrPC1MjG2bo/4pnqjJ9OC56KkkMPCk7lFVwmq6v6JFZMpt1LhRG03ulgxC/TTuA
         WXmhpYbswDV0oeYyok6uXEFUKPHOSou+9apIIsN/wC8adWz/n0FLOSziccARgMimUvVD
         6vjLqOX0SLhW7ic5YDOSNupeMaCWTHMp1NGUamjpR04cf8v/WVzZhKe1bkfCFPfFtxiI
         Hs6Esao9X8Nh9iTFtk3/wjn86LtCacwdTqyY9Mfrga1N+i9lWm/YwhEqwj9c+07vsYCj
         2/3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763991095; x=1764595895;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wwqYipmpL/YQVltcrXi93I++DdSe9sQYH/kQ48lusaQ=;
        b=cGUELbakSha+SoZW7kW+EqptE5mevLKvFT68b6g9zumWnOgsteFKj+eFrbHmVlt7L9
         tdHNtv4emWSS/AFyO2JSV7+JD/G5Wekhg65HxzWdBp3YQbf5Hqyk24lYgsc/p18sV+jG
         uLKJfQflULF6Shp/Bbt5G0OIkyLwDbHrvStqcwLCvOMZ4ftquy41xWgsCJidSkSPyup9
         gg/RzCFK35wot7MHxKuWYVaQ4Sd7XoW11FW5WteTIPeoiVWNr0vfBFUEApGLAUo0fFJI
         zoXxjTlCvNkM4vpefxE775fZrltl/f0gIweb5mD+fHATPL29uf4lasllUX3J1jJTkX8P
         5HbA==
X-Forwarded-Encrypted: i=1; AJvYcCX9y3rMj/HFOjCR+yCRnE5zErG/2zF4fo8mNSbo7Hj73pzvvubTXQMBiCpuj7UROMlfNxOXMmivdzE=@lists.infradead.org
X-Gm-Message-State: AOJu0YycftXvu3lakuT3ZlN6vPuwXSGlfNh4REYaE40vIQwZYI/Tl4F7
	JGkEZI9bEAVW0HbeUkBCoJNcJDfajKzbDsm7nzju5VWSk2leQ9Lgk4caQuVEwtUvUboy7bx1Ynv
	H/0RpsdoqiiClvgkik62S3t4pQiQVm5g2G+HCovfpjhkbLk494jIlsDyeJInsUp+U4iui
X-Gm-Gg: ASbGnctwFMrZn4exoMmmc68PIWMZU9mFd6XwoRaAhdqKOfr3UygY5rCq6fG4myHn5xy
	Dzhu5OTHwYmC+laQ6+bHl3cUmIQnS9NNnmwr6ML9EAs8Yd2Ssmbe/y8b4dfa0Hklyb1X5A46YLD
	0W9hYw6pPBQrpUu9Kv77QrBNq9aAQ3/ddy1R0G67UrPb/ZFyCtjCka/tS9EyYMwCEx0oxZkzYhl
	V1ejaKTmEzNpkevoWCbWdrn7b7ZKXvLzc1jTtm26iGgXRdOfJSbxklMI5UiHDvsTm0L4SLlFgeY
	cJ/tBXPvBryaK6NMctiqzO00m6mONZu1af+J772oZS/R/ODodHlxOsYhO4dQoSBIHFWCKLaxZQH
	vfLsFnPazyYOfbMZPXHolWKSjY9vSbtgk2f81xCBYggrGLJsp8k1IpZ0CMCV+AdtXdJA=
X-Received: by 2002:a05:6102:f07:b0:5d5:dcc1:3bb1 with SMTP id ada2fe7eead31-5e1e6ab5701mr1657639137.7.1763991095346;
        Mon, 24 Nov 2025 05:31:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFR8WQYIIBYx0OJ8QrzSt0LVy9fMGvVvqn4AlMJ3sEgBjmm7njyHSM3dhUyzVZcq3PAN5QePA==
X-Received: by 2002:a05:6102:f07:b0:5d5:dcc1:3bb1 with SMTP id ada2fe7eead31-5e1e6ab5701mr1657570137.7.1763991094783;
        Mon, 24 Nov 2025 05:31:34 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654ff3c6asm1279950266b.52.2025.11.24.05.31.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 05:31:33 -0800 (PST)
Message-ID: <1c50fd96-74af-4096-b53e-4feb3ab59f06@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 14:31:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] phy: qcom: sgmii-eth: add second regulator support
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
 <20251124-sgmiieth_serdes_regulator-v1-6-73ae8f9cbe2a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-6-73ae8f9cbe2a@oss.qualcomm.com>
X-Proofpoint-GUID: UhSNte9XKusATi3W9Uxiw4ngIdhDGssQ
X-Proofpoint-ORIG-GUID: UhSNte9XKusATi3W9Uxiw4ngIdhDGssQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDExOCBTYWx0ZWRfX2e6OV1oJtOYe
 fJCIkdtYvcs3eiZv7rXa3R1iIUQmVVguBvBa50+aBD8ni60FuOKLHS9AZrzRlT+ka3wldSS8t+J
 0An/4IiLiR2VFFGIICffkpJFYdm6FPEcaYvSLo9ToJGfjvak4WtrYsPJiYfWsgV2sq/No/TYAcl
 YovcJWu9h4H4fSv9X5dX+QAYi/4fKkTxtjmraNnHCFJJPoMe6n/+MUmKNWOI/vKSE7aab26gpn2
 n5g7tLHzNP89BreuvRBrJzZtGQQkDey7uZX33Pzm9zW37PLeKEpBCqGF1icCa7o8S+GyDcovySB
 09QF5acX6lFKxNHG29XjGpWJOkKgJQzoVhAm9NgWTnx3WbSg4Vkyu/EWnz0uuyTFxmlgIi7hCDs
 IZv98wEIFae2WFu8H0cL0e5rz2ov1w==
X-Authority-Analysis: v=2.4 cv=dPWrWeZb c=1 sm=1 tr=0 ts=69245e38 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=figFMop1lUmvoXQ8gv0A:9
 a=QEXdDO2ut3YA:10 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_05,2025-11-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 phishscore=0 malwarescore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_053137_075139_3592D8E9 
X-CRM114-Status: GOOD (  13.23  )
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

On 11/24/25 10:25 AM, Mohd Ayaan Anwar wrote:
> The Qualcomm SGMII SerDes PHY requires two regulators to function
> properly. If both of these are not enabled, the following error is
> observed:
> [   77.105651] qcom-dwmac-sgmii-phy 8909000.phy: QSERDES_COM_C_READY_STATUS timed-out
> [   77.113447] qcom-ethqos 23040000.ethernet eth0: __stmmac_open: Serdes powerup failed
> 
> Therefore, add support for handling the additional regulator in the
> driver.
> 
> Fixes: 601d06277007 ("phy: qcom: add the SGMII SerDes PHY driver")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---

[...]

> -	return clk_prepare_enable(data->refclk);
> +	ret = regulator_enable(data->vdda_0p9);
> +	if (ret)
> +		goto out_ret;

'goto return' can just become 'return'

[...]

> +	data->vdda_0p9 = devm_regulator_get(dev, "vdda-0p9");
> +	if (IS_ERR(data->vdda_0p9))
> +		return PTR_ERR(data->vdda_0p9);

Do we have any conclusions on the load discussion?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
