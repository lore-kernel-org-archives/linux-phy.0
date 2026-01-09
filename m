Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2122D1680B
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 10:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+jC55smcwl+Slvjm9W73B4PbUwUg0Mz3BWkgqExNK5Y=; b=FjWrAWGnoKAN54
	bI4m1H1eCHlEsFJY8SNCESyQWkz36arpiVSIpQvBcRIDAn045TbeEvWngqF+LGrJl1mV6UQLGbh+X
	gYMyAdk5PClMhvKKmsb3Wl2id9rB9cfbY2Ri0QRDVjoQg7RC9EQDaz+W5OqZBJ6gu8X6oJsWodlWU
	4hZZwxL3PQnm3FXsTfj8y5fWF+oBZilms3ep7KXiPFbLtQASuW56VlBG57UiEEhGF1QqJArfUq2lT
	KutDDoC22aikdTGpVi1sqSF/4ezBi3D00zLJqmxupetK4QnWxK5aPOjqocmud2OyiEV6iU+Le7ms4
	b9O2b6fXYkytJxEJTwZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veA3k-00000002A0r-2lvX;
	Fri, 09 Jan 2026 10:49:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veA3i-00000002A0O-2Dgh
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 10:49:35 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60982WP12183974
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 10:49:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gF51mEvG4UeNNiUkScsa3C3kNkmiu6kc2Haqu7j3LQo=; b=bjnBgW18HM23IIIg
	7yplMCrIxwbp1qRc/Bd1WZ2lxgTTlWOAmjwnYMIDZDKeB1+ptlfmtrGrsICQKk8I
	F0Wf/uwFgqHhKpY9t+ZqgKLbVzNptZLd/mbLO6iJ1NhX52QrTLl3SeeReuwr/Dt1
	ugFsnRAaBrK17g01HIz44SFVFqNnLYKScw28ImjwuE/5PVKqSHW4Uk9uKKmBPB8h
	JrTt/VfR8kK7j5I2rdjvPexJ5jIRfaKdeM+IB6P65z20qJLfmryOGDyqdTJMuGog
	TzQ68twuu1a7c/vRtPFho8P+ySC+DLgi/cnlNBk4MptIXUJlWv4cz+Ih5ZWZs954
	GabsaA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjwtn8hnm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 10:49:33 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f77be4f283so6510461cf.2
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 02:49:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767955772; x=1768560572; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gF51mEvG4UeNNiUkScsa3C3kNkmiu6kc2Haqu7j3LQo=;
        b=CfXUBdgyNONP5OQE7IE1VWVaJsMGvrTI0bhHa8Foib5KB8/UuKsxt/RoIeU+pwhRG8
         3USJwyT0Ixl53p/6hnCHy7Hux7REjfMUwwK3Zy+ycn2H2slFdxbuvcEUw3yv/6Tnqpr7
         x2LT4yeNz3bvsfpjPwZxtQVMbN3+3T9Wz+0lYOR8PAta54WP0CHSqzLNfHqxJDgV3cKo
         aoWzFizQepA6DDyILBAsbaviv3J+UpUxF6X2VwOkc+dfKGUjdvlQ9u5N+C84N0Znf3aW
         oqD6UWNihXSZLL6rBLWuASgsdTSroE0WrVZeszdhy1THoNT8hBt+jkpO6Yap9cdcv7po
         0+ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767955772; x=1768560572;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gF51mEvG4UeNNiUkScsa3C3kNkmiu6kc2Haqu7j3LQo=;
        b=r6LCcqw7QvEkxD0uvIoT9Vf3onm0kjHPX1aHzH8t7mfYfIS6ENDTilVAY3lxDFrK48
         dnDVkm+wlBNbAHQ8Ggbgx/Up0ZSj/TfBIWIgI1XvxCXM2NqGcTbMW2DoJXW8DNFSg412
         0dmat5XhjtFq59McGKQzwbYWa26btnT6BetxOK85oJsm+9u9TFNpNnjTSxqLQ4mP3Suu
         Uw8LjYbi7pZNgITJdSu5JEPAjn4vkYlHAKtaMgk4ZmOOOvbwkaAzuyTlYBM5KQTw8zya
         RG9zyyb+WUYa6Lugoh211cXyrFOJ5mApGkO5tZ+akgQ2hjcHV96t/b49hZWFzxLJpKkr
         spUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAPuu/o7/KRl0WX0ZTwjR8mfiG/YUVbvt9yx0LDXsKck2eAvHPNmneoURcnkQB674fJUX8/YjUoUM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQYmWW8R/tXgURhw37CINYMWakj0JG6Rum7T9T5TwdlpqxDXyG
	GMPBoU80CCr1jo8JDrGdWPzVUOskD1HhxPFT6OIMS9O682HJcDWvQZZt0rfgghSHwgsgM1UdqgX
	MTn+Z4Hv7l2H35SaIEdgGoOte4e+KA9QLYIOa76iMJMP62vT1dSaWXxhmQRqO0qkOWIte
X-Gm-Gg: AY/fxX7Nwo7j1SUZRruYN+4gD4ylmeAAA6cZfPoQos6ZNSkYCHcn0hJiy9kvqGqImHF
	7+6gV2tbjaEULcO/98/CyK04i1zSX1yZB74Xg8722o4kJLmsXwdq3nQfERVZ+4z2xqScuV6yjcK
	gyW+lh45LifwpNg6ulQV2ETA+SoA+kzo53xlAQ2RRQQ/NzGA+B3R7Hly3OoL2bx7kn/ixJRYCVi
	t7Fnz5W5ScbQ7o5241+mDXM2cNu4Rb/F/TG4eO6b0aXiHAGurZuL1vUCe6rVtIKEaaOQbN/InBk
	oE2nz3m8O+ui2+XrlozZQJv9jOwDqoFMGCNMU+JxuNCH1viSRPcs/NnxKC/oU0g4WJosyF5QoVB
	LZ7Dvov7NxNlomsyBXOdfblv9wyIIJFQZD4+heiVoz2k4ixYuKd9x/JjEanhPh900Mks=
X-Received: by 2002:ac8:5d4d:0:b0:4ef:be12:7b28 with SMTP id d75a77b69052e-4ffb4a54ff2mr101486101cf.9.1767955772365;
        Fri, 09 Jan 2026 02:49:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE34C1rSk2bsxT2qW4/hAMnMPSjiOmm8OXFZ84ylaKTmq5w3ox6qX+TvXPP+TFiQ98bJ1mxWw==
X-Received: by 2002:ac8:5d4d:0:b0:4ef:be12:7b28 with SMTP id d75a77b69052e-4ffb4a54ff2mr101485991cf.9.1767955771995;
        Fri, 09 Jan 2026 02:49:31 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b8c4454sm10039009a12.3.2026.01.09.02.49.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 02:49:31 -0800 (PST)
Message-ID: <bc08f938-a315-4797-931b-5c11d402670b@oss.qualcomm.com>
Date: Fri, 9 Jan 2026 11:49:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: edp: Fix NULL pointer dereference for phy v6
 (x1e80100)
To: Val Packett <val@packett.cool>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260109045214.5983-1-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260109045214.5983-1-val@packett.cool>
X-Proofpoint-GUID: Amnh-xGopenXJ4pd8F1o1Xghif-o_qes
X-Proofpoint-ORIG-GUID: Amnh-xGopenXJ4pd8F1o1Xghif-o_qes
X-Authority-Analysis: v=2.4 cv=Uohu9uwB c=1 sm=1 tr=0 ts=6960dd3d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Bah9ZvdxITrzPEqZxngA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA3OCBTYWx0ZWRfXwxB2U2Pdht6Y
 lCXkSPicc8O4bV1E6vozgF429Vp4WeDxfty9iqDLUiLjgNITlkOnyz79rBVePzRBybYhrQm1xvt
 iOiV5Odi0hkipHMgB8sX0T0dRev8XtF0fLINpZ7uw8/H9UJSVrhNSNU+n9rjeizgOpyaE7PKJXX
 CB+4bkTs+xKgNMWS0OgJnRWmXgVYXaKzAN2ZxVGqEQ8rVP8vAJvAKruM81gOZAxy4x8diwOxrhH
 S5om/IsZ83h4zLb3lmR9ebssvfErl7OUEYkwnCdrFC7F5zp340Sr6/cGxt3XKjfE8mUEMXrMmXr
 0j5YKVar+kvYGCcfYTUr/SrOC02I1yJyAfa8Tnth64AB59AXUc0vWGxmd8lPkOF+r0s1ODRAp95
 /0VhOO4Km62UzV7qI9bBwwqwtdkd7K80UZ2+rVZryTx0lmXAHqhObbp+vGdLnNMXuWgG2fozYJp
 o1Yv/8ELF84GYycimJw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_024934_583815_DCED56D8 
X-CRM114-Status: GOOD (  18.20  )
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

On 1/9/26 5:50 AM, Val Packett wrote:
> For Glymur SoC support, the com_clk_fwd_cfg callback was added, and a
> stub implementation was added for the v4 of the hardware. However it
> was omitted for the v6, causing a NULL pointer dereference oops on
> Hamoa/Purwa (X1E/X1P) SoC devices. Fix by adding the appropriate stub.
> 
> Fixes: add66a6673bc ("phy: qcom: edp: Add Glymur platform support")
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 13feab99feec..a17492db21d8 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -613,6 +613,11 @@ static int qcom_edp_phy_com_resetsm_cntrl_v6(const struct qcom_edp *edp)
>  				     val, val & BIT(0), 500, 10000);
>  }
>  
> +static int qcom_edp_com_clk_fwd_cfg_v6(const struct qcom_edp *edp)
> +{
> +	return 0;
> +}
> +
>  static int qcom_edp_com_bias_en_clkbuflr_v6(const struct qcom_edp *edp)
>  {
>  	/* Turn on BIAS current for PHY/PLL */
> @@ -758,6 +763,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
>  	.com_power_on		= qcom_edp_phy_power_on_v6,
>  	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v6,
>  	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v6,
> +	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v6,

Let's just point it to the existing qcom_edp_com_clk_fwd_cfg_v4

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
