Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C80B1C02188
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jan 2025 15:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Se/8Wa1zp0RdU5dGnO7qigJtzyvTaeVu42wRalTghg0=; b=hH0xvGhct79mL1
	fJt41TUpB5Ha5uXUThfbbjhSO1/xxcy3wzqKQilqNhCRwgHi7obkaRLqlxR5Ka2Xz4ZDiGvLU1wDw
	2KHKYrmZyX3lJW6bZBx9GwNlIu89O68/s63Ob2CA/AMWKyYvGhKNvuVZYylHsuTxTUwQUG5hwnrrY
	Mf5BuTeQcsoiT0hVWbx9A60dB2Q7Ayi1jjXcJwrvtoti2iH4xVpveds/jKwKqlyp/h5YuL2xyuSJi
	qDtLS3Rg0+AgEFFFQ6n4NM+e2Yhj3gbt75felIMeiTdYBgIDLsOP52RbkhT6G8rCLSIBo+dqG8+NM
	q/QdxIkvma+vn0VcVv2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcQrp-00000002Zwp-3L5V;
	Mon, 27 Jan 2025 15:17:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcQqs-00000002Zk9-0yXD
	for linux-phy@lists.infradead.org;
	Mon, 27 Jan 2025 15:16:39 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50RCTt1u021236
	for <linux-phy@lists.infradead.org>; Mon, 27 Jan 2025 15:16:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eiOVlvy8O2sljdqhnTACcFcT/c+BYziyN9TVv9igCSg=; b=lRybVIDH/erv8Rke
	Huf178CITEZwh89jtxljjRNIzq6MtfNnY4DVt2h63q73kCiKDAD/gTfsXj+FB+Uj
	pRbtnxm1o92a6I+EFD3TM09Vl7nAXJuH6mKMZ5PGytMUDTvq+2CAZuF1SYuMOHAJ
	3CXyD920lvofbQB5GAEUzG5ZirwLhTgj/puBfkJ78x47kTAiGvsiitML7n/CuW3c
	MFnJ9bhqy8rx+Z5eo4VWGUIKTRuBQZE3Di5UNlz41238pNf3f9R1k3OZGYZUw3ZT
	sjp7NRj0cfSNM5IKTMushd+UqASJL0axMZz1mxgfknjiaetChpWnxHoIKfIDhw6L
	b/jS6g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ea6s0acd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Jan 2025 15:16:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6e43ed084so90808185a.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Jan 2025 07:16:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737990996; x=1738595796;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eiOVlvy8O2sljdqhnTACcFcT/c+BYziyN9TVv9igCSg=;
        b=LAZ4RjZmLSr2l50KP95kK7aFj1wDmEdQJyJI3hQfGvo1OGh2qPJYRRtPvAYwPVsJcV
         Y/CSrvB9rPc5BhlPJAd75B74tQVuOx+Rc+v0C5s9WFL6sfJT4orlDFhB2mlQFT5BrIbr
         oB6+ZFCki8l86rYD0hiwwlpQtykgoeChTxQ7tgmFYRnJRYj7F4DNUo4+Ibx1eidTAkzC
         KUZJU82xy80SqrNLmTS/UnAQOTleC4WN8NsvaSDMoaNCuXygTPXc3h6keDDLUTQpALs5
         hYEuDmrGNk1Tni2tZ+9gNq6ExyzgfXSu3ZgN/Ke4qQmWJowT0HJCrrK1CXNLYnrS1hXU
         zhLg==
X-Forwarded-Encrypted: i=1; AJvYcCWBhmyzkGkkhodKSxUKFdVW5pSUrFuLMUzdad1rqgz45k/k1b/w1h9Au7hnDvo2O8p4hmdboFVAdbk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yydp6mrGe0hJw+qb80f+Ufi8VQnT4aCP9JGIg5RDPLe7b+0e2DY
	+vvYuFAcGfVP0bieflaFxMFpCZk/Jtgt2sPyq5Ih6eicQiXU6yjl4LJkW338OVJV6itw0Ko5b6h
	THsmfkEHUiRzbZpdGALmqhmOtht3tFTME3vX8s+H8IQ+42uh3pYEVlh6xaj+Bl6al
X-Gm-Gg: ASbGncsxAH1JhfR9ObPOaVTySKyRUIKtH2nX98oJEj9wgiXdWfXr/QdZy7qUlJ6vZgB
	xKsCbjSV8JSe+zejS6lbyHzvkyKA4p4LjZ7Qx8EYQkUhxjF5drGTxHb23FxF0ckPPnf1ieuWV2g
	m6WKxsHJv9mHgr0v1i2Be+WtnSehDRHMKn/7FA69hDbxsn8UBDm2Z1Zj8uCR1pVO8s1bPpawwky
	KvivTSsPZUgpi/lva1kTwQNiosybi81pp2GCkbARV4oy3ux0CkrwwMWybMGclPe9Ln5C5DZOyT8
	tJ9kSt3kGIaw9jExrvm94y01PuWDWhH6GuUpjXme/aJwoR6fbch1/9f46RI=
X-Received: by 2002:a05:622a:1a23:b0:467:85f9:2a67 with SMTP id d75a77b69052e-46e12a940b8mr232903641cf.8.1737990995893;
        Mon, 27 Jan 2025 07:16:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHHbQBaClGLDjf47vJiIgHk5bysqAnHMsfctaPHSAVkHPdBSwDmwLdwjqjUQMvLgQ8TfbrmWw==
X-Received: by 2002:a05:622a:1a23:b0:467:85f9:2a67 with SMTP id d75a77b69052e-46e12a940b8mr232903471cf.8.1737990995484;
        Mon, 27 Jan 2025 07:16:35 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc186b37b6sm5388019a12.56.2025.01.27.07.16.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 07:16:35 -0800 (PST)
Message-ID: <60d02c55-0d18-4704-9126-8b8ffef5bd68@oss.qualcomm.com>
Date: Mon, 27 Jan 2025 16:16:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/7] phy: qcom: Introduce PCIe UNIPHY 28LP driver
To: Varadarajan Narayanan <quic_varada@quicinc.com>, lpieralisi@kernel.org,
        kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org,
        bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250127072850.3777975-1-quic_varada@quicinc.com>
 <20250127072850.3777975-3-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250127072850.3777975-3-quic_varada@quicinc.com>
X-Proofpoint-GUID: uEL5fOY5_Dn1GowQjPigfzB6xUqENy_U
X-Proofpoint-ORIG-GUID: uEL5fOY5_Dn1GowQjPigfzB6xUqENy_U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_07,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 bulkscore=0
 phishscore=0 suspectscore=0 mlxscore=0 impostorscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501270122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_071638_284785_84BD563B 
X-CRM114-Status: GOOD (  14.38  )
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

On 27.01.2025 8:28 AM, Varadarajan Narayanan wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add Qualcomm PCIe UNIPHY 28LP driver support present
> in Qualcomm IPQ5332 SoC and the phy init sequence.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

[...]

> +	usleep_range(CLK_EN_DELAY_MIN_US, CLK_EN_DELAY_MAX_US);
> +
> +	qcom_uniphy_pcie_init(phy);
> +	return 0;

Please add a newline before the return statement

[...]

> +static int qcom_uniphy_pcie_probe(struct platform_device *pdev)
> +{
> +	struct phy_provider *phy_provider;
> +	struct device *dev = &pdev->dev;
> +	struct qcom_uniphy_pcie *phy;
> +	struct phy *generic_phy;
> +	int ret;
> +
> +	phy = devm_kzalloc(&pdev->dev, sizeof(*phy), GFP_KERNEL);
> +	if (!phy)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, phy);
> +	phy->dev = &pdev->dev;
> +
> +	phy->data = of_device_get_match_data(dev);
> +	if (!phy->data)
> +		return -EINVAL;
> +
> +	phy->lanes = 1;
> +	if (of_property_read_u32(dev_of_node(dev), "num-lanes", &phy->lanes))
> +		dev_info(dev, "Not able to get num-lanes. Assuming 1\n");

return dev_err_probe(dev, ret, "Couldn't read num-lanes\n");

And please make num-lanes required in bindings there

We don't want silent fallbacks in such cases, as it's easy to miss those and
e.g. ship a product which would then run the PCIe link at half the speed

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
