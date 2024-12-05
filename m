Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D7E5E7716C
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 16:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FDXtTr9tSJOSE1E3ACF82vKxNcI5NBeZywtTE1plBOo=; b=PRt2V3J+pRht4d
	IpzbQWrLN9jWVADuRfonAVyfYESEKGq+t4icBGj9zf/sF13Yhn1GFxooatfzpUHnLTuk3CGpAo8TT
	jSqaUuQowZL+lfE9TVyu8ktGKqX607IlQlN/ZsZzmRlu3WdOUQh558ShbEjDwkysWPHyQbYO36/WG
	CFe1l1MA+Ov+Mv2160kCNnyUhSozM+BaiMXiJB3cOj8erI97+M5uJblYx1dWyoiOKd8rG6bkqdqaa
	FeYpHsPXRckl8rJy7LYO3nsrvQE38lpmYCSUvQfexmFolCQ5Tyi0kE5+JI81IXVERtreDCMV5UKlL
	gqo7Mom9Jf+HNI9JxzBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJEum-0000000Gmf2-1MtM;
	Thu, 05 Dec 2024 16:41:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJEtq-0000000GmWN-2W8O
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 16:40:23 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5Bt2L5026094
	for <linux-phy@lists.infradead.org>; Thu, 5 Dec 2024 16:40:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aLw29Pi7z7qUWfxhLPSPGB8n/z1YvzoWA9mAxcNsR00=; b=Ix/GHlMDJO3GphmL
	0kssS+ysRF1FXwcUqysgaOG59L1dsLB+SnhVEesECmxDmsngOXD/aqlEcjpo9h8J
	608+KDEiyX0yqmbUi7mjbEgLN/WOAJJy+Q8LfRXnE5h1iGTMqsVQ4rFpmmZnXtB6
	n/wKN4wWpiG1offZU8IaAKTTN+oJ5I6NGSpppjUq6c/B8/J8HsU6+eW2JQV45yZ0
	AF8RWTPw0bOEc6sI2kev7EeteMfL0j8cwtwekdYc1tj3Gta0fQvYhCYy0TV/uh7M
	wJumsAvk+3VTA01InyV6dk8XUWzm5IdRmzzgUTFV8pxz0VuDQczWrZHUUFiWYYjt
	e2gWJg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43bbqm0s64-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 16:40:21 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d8a3cb9dbfso2840496d6.1
        for <linux-phy@lists.infradead.org>; Thu, 05 Dec 2024 08:40:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733416820; x=1734021620;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aLw29Pi7z7qUWfxhLPSPGB8n/z1YvzoWA9mAxcNsR00=;
        b=aN+hvzFKxn654IIyDuKlsNntXigUrLvh5J2iWOtGHU+P/Nv2iReo8FjXdcdsLP6wpW
         lmet1foY1RfDUIISiErWYNVYgyWymWZAy7JMx0WfBlA01uhuotw9GDb46yTL6BglM9bx
         VCASrjwVh+BG7hl+Jqfs9c9xyaz5DoxB7iDJj+4NhNe/aBydijL5Dt1LBhu3MunWTyAw
         Z9FQdoDGfFD6CpF61bS7geUyrh9+WhPWba0KR17JlQ4WbujJBHSiBGfJiqtEMCB2bSGr
         Xk+cKKg6XPyTawgS6XumewWnOEtXlgfqvE94xFuaDYVp3ympQyrfgyAnqZ7C8M8b3evH
         yX0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXQgYpyu1475luB4mH3DeprH45wP8uyh25hubHJVtHbk1T5aWR4wTYYmBFmK9LKxqEEp9wdeG7pjcE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKSUMHb3zyx1khJY7mXZteVx6tQtcne74ttnSBrPTdXyL3C7Wq
	JCQk/tCSAzBQueEKsiXavewYMQd0btjYOsflqa8phMf5XhWzY1uAealuJKHWMTwKYrq02Bh0R19
	UCBU4C+dj1SKjfJ38mwO/QEsgdOO+PUHOSbsEvykDnAgmN4oTd7uPXq1i4tNaQDGu
X-Gm-Gg: ASbGncvTXa39sQjK7EVq+hjAwfs5uewPs+UeYOWmzDfJ+QgwN94ju3IpvXKn24pCJk8
	vVj8560Ze2EKl6Hw+v7Q5vduntbCpfnOKlYuLxSKqvp9YSLwnBjmh8kxmYc1P9zgr9c4dCF9V1X
	eXLUb8tf9bzNLcoBdT749dPsGK4DU6HiJAdHT1gz4Ev+kCXXw1+3WWOs2HwowwSxgHn/xSBJe2Y
	fyqUO66mRXlbeORSf8EYBsAWPs01kyW6m4ISWN2n//FnYC570XvRD/FiIM0+qxKhVSReLC5uTxI
	nXAPNu0AHyl7lE2BBVd2msUyXLdmbz0=
X-Received: by 2002:ad4:576c:0:b0:6d8:a67e:b2ff with SMTP id 6a1803df08f44-6d8bb81ffdamr62000506d6.8.1733416819950;
        Thu, 05 Dec 2024 08:40:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQx8n0UgIEsXZ8s+AlTdnCo2VrzHdMoxFqa+DhiPMk0FP4LFAb01Hav3JtSk0XoXhGnAOfHA==
X-Received: by 2002:ad4:576c:0:b0:6d8:a67e:b2ff with SMTP id 6a1803df08f44-6d8bb81ffdamr62000196d6.8.1733416819528;
        Thu, 05 Dec 2024 08:40:19 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625e4db6csm114422066b.39.2024.12.05.08.40.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:40:18 -0800 (PST)
Message-ID: <710aa948-d27f-49f6-a4a8-73f6208502c3@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:40:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] phy: qcom: Introduce PCIe UNIPHY 28LP driver
To: Varadarajan Narayanan <quic_varada@quicinc.com>, lpieralisi@kernel.org,
        kw@linux.com, manivannan.sadhasivam@linaro.org, robh@kernel.org,
        bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, p.zabel@pengutronix.de,
        quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20241204113329.3195627-1-quic_varada@quicinc.com>
 <20241204113329.3195627-3-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241204113329.3195627-3-quic_varada@quicinc.com>
X-Proofpoint-GUID: 5feKZd_V6DgOcBkoirPujOMLVEgZKEUd
X-Proofpoint-ORIG-GUID: 5feKZd_V6DgOcBkoirPujOMLVEgZKEUd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=999 spamscore=0 adultscore=0 suspectscore=0
 malwarescore=0 mlxscore=0 impostorscore=0 bulkscore=0 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_084022_650357_3AF4887D 
X-CRM114-Status: GOOD (  18.04  )
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

On 4.12.2024 12:33 PM, Varadarajan Narayanan wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add Qualcomm PCIe UNIPHY 28LP driver support present
> in Qualcomm IPQ5332 SoC and the phy init sequence.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

[...]

> +struct qcom_uniphy_pcie_regs {
> +	unsigned int offset;
> +	unsigned int val;

u32

> +};
> +
> +struct qcom_uniphy_pcie_data {
> +	int lanes;
> +	/* 2nd lane offset */
> +	int lane_offset;

'lanes', 'lane_offset' and '2nd lane' together imply one of:

- there can be more lines, all at an equal offset
- there can only ever be two lines

Please specify which one is the case

> +	unsigned int phy_type;
> +	const struct qcom_uniphy_pcie_regs *init_seq;
> +	unsigned int init_seq_num;
> +	unsigned int pipe_clk_rate;
> +};
> +
> +struct qcom_uniphy_pcie {
> +	struct phy phy;
> +	struct device *dev;
> +	const struct qcom_uniphy_pcie_data *data;
> +	struct clk_bulk_data *clks;
> +	int num_clks;
> +	struct reset_control *resets;
> +	void __iomem *base;
> +};
> +
> +#define	phy_to_dw_phy(x)	container_of((x), struct qca_uni_pcie_phy, phy)

A space after #define, please

> +
> +static const struct qcom_uniphy_pcie_regs ipq5332_regs[] = {
> +	{
> +		.offset = PHY_CFG_PLLCFG,
> +		.val = 0x30,
> +	}, {
> +		.offset = PHY_CFG_EIOS_DTCT_REG,
> +		.val = 0x53ef,
> +	}, {
> +		.offset = PHY_CFG_GEN3_ALIGN_HOLDOFF_TIME,
> +		.val = 0xCf,

mixed case hex.. please make it lowercase

> +	},
> +};
> +
> +static const struct qcom_uniphy_pcie_data ipq5332_x1_data = {
> +	.lanes		= 1,
> +	.phy_type	= PHY_TYPE_PCIE_GEN3,
> +	.init_seq	= ipq5332_regs,
> +	.init_seq_num	= ARRAY_SIZE(ipq5332_regs),
> +	.pipe_clk_rate	= 250000000,
> +};
> +
> +static const struct qcom_uniphy_pcie_data ipq5332_x2_data = {
> +	.lanes		= 2,
> +	.lane_offset	= 0x800,
> +	.phy_type	= PHY_TYPE_PCIE_GEN3,
> +	.init_seq	= ipq5332_regs,
> +	.init_seq_num	= ARRAY_SIZE(ipq5332_regs),
> +	.pipe_clk_rate	= 250000000,
> +};

Are there going to be more UNIPHY-equipped SoCs?


> +
> +static void qcom_uniphy_pcie_init(struct qcom_uniphy_pcie *phy)
> +{
> +	const struct qcom_uniphy_pcie_data *data = phy->data;
> +	const struct qcom_uniphy_pcie_regs *init_seq;
> +	void __iomem *base = phy->base;
> +	int lane, i;
> +
> +	for (lane = 0; lane != data->lanes; lane++) {

while effectively the same, < would be less eyebrow-raising

> +		init_seq = data->init_seq;
> +
> +		for (i = 0; i < data->init_seq_num; i++, init_seq++)
> +			writel(init_seq->val, base + init_seq->offset);

writel(init_seq[i].val, ...)

> +
> +		base += data->lane_offset;
> +	}
> +}
> +
> +static int qcom_uniphy_pcie_power_off(struct phy *x)
> +{
> +	struct qcom_uniphy_pcie *phy = phy_get_drvdata(x);
> +
> +	clk_bulk_disable_unprepare(phy->num_clks, phy->clks);
> +
> +	reset_control_assert(phy->resets);

This can fail, return it instead of zero

[...]

> +MODULE_LICENSE("Dual BSD/GPL");

I think this is too vague, there are many BSD variants

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
