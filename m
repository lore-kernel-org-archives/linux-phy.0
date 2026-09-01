Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9575C61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 13:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIr6p+c3RhSL1/WbG0Tm+5F965WXkvd8pbSrvzJNl24=; b=ISZWruz5JtEGsd
	gd6/MEQ7CWVH0O07o+OA0MHIv+jAcZPdEl61kdLrZEWS1ZZdvFqnPPv/7QUeGwp5yrxfUxVo5v73H
	K0K/qLY7r80kBGK8vYuqpVO6f4U9MT70G5vegs18vYLq+AKK0tGqr8b8u2FyUXXQYb8L5qWlK6QxW
	udiBbAP6XxDrph9d2j7XW4hZoRmA+uX6477bIPSfyetcvZIWOzSoGufYSMiNmnXYGDN4rjFeHwXn/
	YATUDwOh9opsBtgil0R4HcXSy4FNcAaGrZofEOWKpdaKSSHw0cgmO/5Svbnk7SpmbMp4OgUnXJ4Eo
	Wy1j7At42knpNU+vK2BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OLn-0000000CC06-0bMM;
	Tue, 01 Sep 2026 13:16:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OLj-0000000CBzk-47dX
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 13:16:29 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 681AJChK3406525
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 13:16:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cy90vL1GBodthWnfvenYboXQveUCRwT7k88OCAWjnQc=; b=U0w6tk3id0rNfBAS
	8apj5ENqwbMeBUyf4VZWyDAc8MwLV7WyLghvqZDfjadRanUylve3o1GWTWBzUxui
	YUa2GLCvsaj5X/Z0sKhpO5MPT4isuKQ6JM/f0Cl1sey772Det9Pv7YqjzFJE5mv9
	qPUtd6NpO3knt4liK+GZe2XTXKbSRSX80OOGXfZf114WmWR+q7sPwDKq3iPLZ5xt
	YxyrFLcdi0SO1zLiUWqfpKvEqS4ox18mvjOREDWr0xaK3l16LlTHit/v7M5tm4Mr
	GiRvp349WdlMN5pyrZNAFchut8V3C7C9FMtPSMzyk11nwSBocjKhs+bhIGDco5vN
	FqZ0Lw==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdsnu1ptx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 13:16:27 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5bf9ff71075so143176e0c.0
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788268586; x=1788873386; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cy90vL1GBodthWnfvenYboXQveUCRwT7k88OCAWjnQc=;
        b=YteBopP93qXdgDrblRaSyfHfqIrrfpdPlSXZNnShaGI6rSNgGuDiVQ8terWIS594iP
         vZJnW3YohDxiB6RL0N0yTL9UaRjZXx0SrK9v3QD3DAC7JKXShgxR3Ftsc3hDH/tSlXB2
         hf5mpT6hS2kueoIAxp5hR+YWQI2QO4vOLxVhQTK9G1SdYodrr+Lh9O9JEEZMjeAmN6fD
         P5ut6xHecXt2WqCYBUDo1IqENSYhVYim648ecltYB1pw6jIVrwrd4CSeaGUBj/ytwVBD
         JSW2TIQ3wArb+RKpfHfJaVegQd0BVmixrOKMcQ6tDrauKUpTw7YTu8HuvfQr4/cx0h6e
         BcEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788268586; x=1788873386;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cy90vL1GBodthWnfvenYboXQveUCRwT7k88OCAWjnQc=;
        b=IFUyH1ABkURzQLwIvcyXq7YjjdqtMZ0sZNAqcr8doKqpt3t0ndsBVyL2v68O9VXYKG
         FDg56PfxoHgkFwJulv+i5rfCXaiECjbFkOlP73fEtOzaxvHIUoN/xrgfzI/VOvDB3P83
         hhGEaK6ut0RHFV7xVrjeK2Qg99cKiU5YvZu+HsjPY+SgvpkUsT1dflnBcoqbzjot/5/+
         fy+LLhTtAwzRZVTHYStwsPzcIJskDa+k2CYpL+HKA3Ct/WEgpJ7JIH0BRrl8s7kzLuaW
         lpiP8Fy0cMfbLlGFRNsyRmHnIdnThUUsb1otJVbCWfCLF73B3yFxFSIzVaC444V8n1Jm
         hnig==
X-Forwarded-Encrypted: i=1; AHgh+RrhLDKATnbynCN+9Khad9wLE5W6TPp3yPoRQoLtYnn1F1SvcyGPtRAtBWBbwLbUX+YLFvI2BeBQZo4=@lists.infradead.org
X-Gm-Message-State: AFuF++mo+Kij4AlMBdvJjrAvxlb0iRcBnNYxckRa2bqUvk9J0dzj6u4t
	eAPDtE19zfGsMyPpyXfJd+LaYfKUZGx0Flu/Fqu2jUQCn3j0Gjq/TbVQ9UQanDGjTIBD1HZlP+d
	WjjTfPuB/KFb+5Otaic+QsRMCkMmerHnjOU+yc6F60XsphcNrCfi6i0whJdYMfHfo3K0y
X-Gm-Gg: AR+sD13FACrd4aIsFWgLHh/kFbALXstIi6ajyqF/ASsASP+HKrKOOqY4m0Or/oRvr0j
	tuUk2aVmr0+bubz/GkPDkqKuUC08n97gJemWVZFjiD6Kq/8fKA5TfEEI48ol31YM5Ri/c5kUyGb
	4DxQYQ7DX83Jh7yz60MZSc6qpqUyUQ9wdEp/yC/F33yc6ZQstp+9dTGCcorzaWxQDz6zjvvpugd
	5+8X9XaMwWSw801+gvBotkzx2vfloZJQ05C3ah3qjJvM+7FY+lZzUpCHTXwDazfGZDlhS1642TP
	AQruBO86zqYnU0AyNzhEMekCCv4l3B+XwKSp78k8182nd3lIXTSnOTArPsG9+5+WnfKBR2Qg+UL
	PK7p7hpQlmFaG9BMXFZhEVQ==
X-Received: by 2002:a05:6122:29ca:b0:5c5:b075:40a with SMTP id 71dfb90a1353d-5c68140e41fmr4560680e0c.2.1788268585181;
        Tue, 01 Sep 2026 06:16:25 -0700 (PDT)
X-Received: by 2002:a05:6122:29ca:b0:5c5:b075:40a with SMTP id 71dfb90a1353d-5c68140e41fmr4560669e0c.2.1788268584589;
        Tue, 01 Sep 2026 06:16:24 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a305386390sm22564121fa.5.2026.09.01.06.16.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2026 06:16:23 -0700 (PDT)
Message-ID: <a1d438e9-0a12-4b05-b154-eaf9d1a6d31e@oss.qualcomm.com>
Date: Tue, 1 Sep 2026 15:16:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/12] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp: Use
 bulk reset_control API
To: george.moussalem@outlook.com, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Praveenkumar I <praveenkumar.i@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20260825-ipq5018-usb3-v3-0-39be0955a6aa@outlook.com>
 <20260825-ipq5018-usb3-v3-5-39be0955a6aa@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260825-ipq5018-usb3-v3-5-39be0955a6aa@outlook.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfX0SsBePOKQ6fu
 BI2dzd0VMRB3x4FS7Dv1jGHvN4gUn4K3Lgs6skeNXmnhS7XUzmqvWuOOT6AnS95jQlRJaQmrrFN
 8pzudle3WCaLNHbhE07iyOarp8ykW0/r4yAzNhLrEl6oiSPWdjPW5vd6IA+6HIAOGqh+Smw8bBd
 DgxCjHahzyYviRk9nNvOtgftXgbBPfkYKYFHMTM6xmseZEZYlxJypdB3HWmf6CRivY30ekuQO5Y
 Ic63b4k6VtjZ9v+vNgpL9bub49jI4z7JqVV/1hEn1gGzi0C23rug0E2uIsCj25rko77f5WXrAAC
 lPwdx/yvlFPx9lmgyapQXCo5BW1tkWjctwTsp3SUu0R6rdYMpLtuM4rijQCrLaA2TyK9Cn9lxPC
 HH0FGyeQdpO8E0X6fkSZxcd1ziiF/GnkQVwJatnX1E3eFUl7BUYErNn3/U9uWQ5DCg2SjH5dvQU
 OoxcbmnFFBeMfpPkvHg==
X-Authority-Analysis: v=2.4 cv=L6ItheT8 c=1 sm=1 tr=0 ts=6a96d02b cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=UqCG9HQmAAAA:8 a=r7ctpyJW7PmjMhvLdxUA:9 a=QEXdDO2ut3YA:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDExNyBTYWx0ZWRfXxQLZvsE8m60u
 Ok9TJK7xKsN01S7+kU8WZY9LxQfha39W6Av7vn5fCA+qx42ChTgPH0JIef1snAU04Rxm2LnTFi5
 IDO4zJdWA8IE2CMZsC+8skbU3if7tb0=
X-Proofpoint-ORIG-GUID: FT5uTUFK5z38PLUkw_cYV1ea-W-zhvUo
X-Proofpoint-GUID: FT5uTUFK5z38PLUkw_cYV1ea-W-zhvUo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_03,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 phishscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_061628_031381_061B028C 
X-CRM114-Status: GOOD (  15.32  )
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

On 8/25/26 2:37 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Switch to using bulk reset_control functions to prepare the driver for
> managing multiple resets, acquiring reset controls by name, and
> uniformly storing resets in the private data structure to enable support
> for future combo PHY functionality requiring multiple resets.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

[...]

> -	phy->resets = devm_reset_control_array_get_exclusive(phy->dev);
> -	if (IS_ERR(phy->resets))
> -		return PTR_ERR(phy->resets);
> +	count = of_count_phandle_with_args(dev->of_node, "resets", "#reset-cells");
> +	if (count < 0)
> +		return count;
> +
> +	phy->resets = devm_kcalloc(dev, count, sizeof(*phy->resets), GFP_KERNEL);
> +	if (!phy->resets)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < count; i++) {
> +		phy->resets[i].rstc = devm_reset_control_get_exclusive_by_index(dev, i);
> +		if (IS_ERR(phy->resets[i].rstc))
> +			return PTR_ERR(phy->resets[i].rstc);
> +	}

reset_control_bulk_get_exclusive()

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
