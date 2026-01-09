Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9DB5D1A61A
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 13:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sR1lEXeqYNN3hIVxGYdqmmerYhilIjOw6Lvpby3hTlo=; b=TfM7WPn0rd9XOp
	QbSL37J9210MQV7UB1OEezbZnqSpq+dzvF2cY78mTkMoXtWt1846bKDW56lw02uEMPje2k207F2SQ
	q/GyxF8rKhgsRB+aJmyUdCyN6mD86mojSxcwPcJwKxprN0wxdF9izjI6cws9FfpwYbcclE4aS7+HH
	rJ7nvVcGJgOJHezqfLU7yh8wsftxstJZKloN1IV6A4YYt3FxrxbQqkzTMVDGRDwCxbjBYEQNX3lrG
	ZJoArptkG6iyIG8YmLCqXUWutxEJdbrHQXfwdGyygsUzXrAuVGC2G88zVBQ+PYNU7/zDdLMRP0N6O
	0DpCrQewVyBvXk+mLHxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veCFC-00000002Kqi-1K4b;
	Fri, 09 Jan 2026 13:09:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veCFA-00000002KqK-0bn9
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 13:09:33 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6099jFRm007871
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 13:09:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=R3a7pfMrwbdfP6OiQTe+1tjO
	UlbBTRlV6TY59r847XY=; b=LIwHT/IZ8UoQUUNUe0HlpwrU5Dmrch0OONEB2Qis
	V5fSau88OleOvSYAsy9FtXjjGntVc0wTEjniH1gVnP6DKycrdgD/Wh9fT2a3kvZQ
	sxsyl0EmJR043IR/xx8LCVPH+XYF9BnOKHuKm5si+kbKfbNVREXCsRvOuAOzBITq
	pl5v6sJTpsdH5raa/WEhWwejCwitXCMuu8DK49Haypa3j6rmMQRaTXDWb2y98WFE
	kBDkmJMwpUZKBtDu8t0Ba5QcS+nSibGIiDlVnoGix5MKPl0LgbVnikF2g+42r1Wr
	fZ1NEdgescWit4E9a2yhBcDkB3EQ0cI82wpGwjra3BbVPA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjyaqghsc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 13:09:30 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a2cff375bso98355926d6.1
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 05:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767964169; x=1768568969; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R3a7pfMrwbdfP6OiQTe+1tjOUlbBTRlV6TY59r847XY=;
        b=PQCJ2L1m5fcY6sVP++yO3F3vkL6X0Yi7u0dVtIZG9/cbvCCa7pUoQEJvEb40P1D4z/
         3GJmygk+1r8ld4m96ejcmWSD78Y/e4ucc54J6K6A6AEL7xsteIVCqgLWljMT6DIPY5Ym
         oyNB8cvRTYATbOVDg7iWkehYjpYE69uYWOIoljLnhbz5I8eG5CVQFN1QIYtO5Xj64aRY
         VWipnEp8o9FVqR3aXjSWKetI5bSBZNYt6fNqL/rQDKjstA7atQjRBhTy/Nx/JAAiCWWp
         h9B9PP21GN6+o4S7SFUjsShFiFwamae9l0nE/P7ZjxIsW93L1N0X8Dqh5B7LW0W3u0bj
         TIfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767964169; x=1768568969;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R3a7pfMrwbdfP6OiQTe+1tjOUlbBTRlV6TY59r847XY=;
        b=HHRPpqbz/yRPWX7P6He/SQWKtBNKiEKn6Iu7cn29oT0BySHAQ/kPeTY21EFfTrPTO3
         uHBlMO1Ym0lV6n6TNEX642mXqU3rNNUBt6OrYVOrbq8sDUWOPBieh5wLQNCNrCMYG9e0
         wkQfdYiODoi5PwmXY7D1ZTdi35/jq0mtm83aqW49NgZJqpHtWXlK6mzZzGqSugULvJWg
         PgpPqMGveYySaLIea+zNJMt78xLNEQygP8ULoqTkA8LfaZvIwjiLlmKdi6yVkVkqeGL8
         trERryTI/ZLXqwOloS3x5QwN81MWqCAJnI97DfP/KZNGz3W+XAJTa2CvTmjn0RfcDaXi
         v/2A==
X-Forwarded-Encrypted: i=1; AJvYcCXenoIzcUsQbMg1tYiAE4rBKYzu0i0zpG8lWQSOY+6GtC4d6EIe24XSxbJmDXnleDteGaBs7GA/378=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYAprvz9/4GHZ9SybvkA6B40myw1hjzxcrAVmHY5ftf9JUM0TP
	vilEhCqUUIm3yoNKkjiBlHWUtMbwV42Dcdu+dQb1EB7wgUl4LQyTPh3fi/YixKx9lLZHLZ5+rHV
	85rxlEe2Pq/9kFEH+rBQ8UR9KpXU/8H0Rdzr+gQmdPpmpoHxBskCqqzeI/dNYDyW58oeW
X-Gm-Gg: AY/fxX5mPLBV9/YWDBHprZFfwVR+Wk/gZNxSNhK9OloxAsMh94n/6aotIkeAIniAOeD
	CBYBI8prENo32h6ybE0zy6xGLK2hX2lWJZcC9i4YWyuX0iXks0a0CaFmMsbobht2vAtPb5csNGR
	L4c77vt+kbL/txaVE+e3UzkKl1j4ilVv93+7rRRdPkuMyVDm6JEikxN5tDJlSWjHoTrI8bCoxuC
	NQKZPCajX/Pdl+kkPW/9Jft99iZh8SzfAvHRaHs2qgvraCeaJ2JIYdC+1Z256fZIzdimJJGjwIT
	hHQvph7p3fHk10f3M6V74VMzV0ac/JKX3qseu+Ra2rSBj8qUGMHghxxxHbkG3y/yCwOx1Fl4XHf
	o2Lp5+WUguRsaeOKJIpx8aO1hK9ErrkjOLXmTpi8jgiurm7Hf27dQa1IgHXNi494khr5AmfEbBC
	PO1VO5slzU6Z/TQFt6JhSbubg=
X-Received: by 2002:ad4:5fcf:0:b0:888:4939:c29 with SMTP id 6a1803df08f44-89084337fa3mr121939946d6.71.1767964169022;
        Fri, 09 Jan 2026 05:09:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IExPjHfm5UM4LvqSExffBGQJ/2HOmM9rKV3EjtLbJMMh8Ei6M6ooIa7N4YvIEzPCYTBdksAxA==
X-Received: by 2002:ad4:5fcf:0:b0:888:4939:c29 with SMTP id 6a1803df08f44-89084337fa3mr121939296d6.71.1767964168441;
        Fri, 09 Jan 2026 05:09:28 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b71b7eb22sm1841461e87.41.2026.01.09.05.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 05:09:27 -0800 (PST)
Date: Fri, 9 Jan 2026 15:09:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 5/5] PCI: qcom: enable Link retain logic for Hamoa
Message-ID: <woztsrvxwkgi34z3yop7nja6ojbxdboyzz5xpz4xlym75dtyja@iopi7hvw42v7>
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
 <20260109-link_retain-v1-5-7e6782230f4b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260109-link_retain-v1-5-7e6782230f4b@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA5NyBTYWx0ZWRfX3aXF2qfF40bD
 tKHsxpk6906AxnyDAe+WzWZFHgT2BaXXqIdKVNbc7owQj/brP9AdnFfILnm1PFPkcobWko0MpCz
 Ng5FhqSo6XFkoLsL00RoLxUvOk6DbWlfUKIh+nWXh/4/ZQ1d0EmtyCcaDZuSP9OvBc/41HW1PW3
 KppARAMxLea7BytTy9oMHEkI+nAHBfPnceGgFD2RUp4YOsHwXeowvjMqDIZXSNQvU1NmPWzW4XX
 fiJ2PLUSN+8uSKQ43OHVxp7ybe7qrkZwXdnU8q7ac3NfB4ZzN3fwFXL6La3LDBc2yaH3jVEvMyQ
 F52e/scDq+jGjbHG0pD3mGc6lYwPmrLnUL4ny7oeKTx9U5TnWj9MwVjqv5BKiDFdv57OS0OdCeT
 vcvBG9IB4sX0UC+eeX6uO4SJZTE7XhbHf2hmnLAU9KeN2YT3fHoWwMbrS5DRTxPrLSdz5Bu88eV
 dBbcyXvE8VupYqedypw==
X-Proofpoint-GUID: PR0z31tOwDTL0X5e1PMCJgxp4luL-DRh
X-Authority-Analysis: v=2.4 cv=IKUPywvG c=1 sm=1 tr=0 ts=6960fe0a cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=M-jGJTmE-ygQmRKCDXMA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: PR0z31tOwDTL0X5e1PMCJgxp4luL-DRh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_04,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 phishscore=0
 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_050932_331385_7D3CEB72 
X-CRM114-Status: GOOD (  20.02  )
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

On Fri, Jan 09, 2026 at 12:51:10PM +0530, Krishna Chaitanya Chundru wrote:
> The Hamoa platform supports keeping the PCIe link active across
> bootloader and kernel handoff. To take advantage of this, introduce a
> specific configuration (cfg_x1e80100) with link_retain = true and
> update the device match table to use it.

Why are we enabling it only for this platform?

> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index bdd5bdb462c5f6814c8311be96411173456b6b14..975671a0dd4757074600d5a0966e94220bb18d8c 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1531,6 +1531,12 @@ static const struct qcom_pcie_cfg cfg_sc8280xp = {
>  	.no_l0s = true,
>  };
>  
> +static const struct qcom_pcie_cfg cfg_x1e80100 = {
> +	.ops = &ops_1_21_0,
> +	.no_l0s = true,
> +	.link_retain = true,
> +};
> +
>  static const struct qcom_pcie_cfg cfg_fw_managed = {
>  	.firmware_managed = true,
>  };
> @@ -2168,7 +2174,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>  	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
> -	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
> +	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_x1e80100 },
>  	{ }
>  };
>  
> 
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
