Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5B69CD98DA
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 12:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXQPKMWijB9AxVbM4Rhz1GZXtvufmT8cxTggTNk3mfs=; b=p4HGSLKZWR0nXH
	RwMSlMuJpQGiEYaCC2QHPwGEEZiaYhK0x5JWMoq7oV9QxgJgXeLDuvoCGzLGi50q2ikHw2dWwLD/2
	AxgDCanhPyFnYnb6q5kcBNWk16Izc72BjvDTVXYF/j6rzbXyibLFweqWAMfZS0Cek/zQrbPrNfOx3
	FkUQbaWomGLetP3gcRF0IH3bXS3CRGpou4UQEKMXjacEP9YCRVUkrsyXk/pDHitJ8VadKanT10Y+w
	V6H4OBoamyImJ2WbRomraxLxgHomze2fTF+LlVa3mYwogqZSqjeIMIJ/8GBhdfWolfUEzp0vaeA03
	1HXm9AAZoQwVz/y8D5sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZSb6-0000000FkSl-1e7P;
	Tue, 16 Jun 2026 12:08:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZSb3-0000000FkSF-2khw
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 12:08:51 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65GA9Cpe2893402
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 12:08:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5sjHg+ZVqRUaGbwJbPdqwnI/I306Wmg8va8QLePtTBs=; b=B8HHmZ5IdwTV2kJz
	4l2F3g1PRU5YhbVq0YDrzIxCRcZaZZrwsmffOiSZuJXUTyfFCFEMERP/bIR09is/
	UIr2GCm1b0Sp5+9jJZuXjSPgLRDcY4NWR+VcRE397Z/rwv8sjzRVT7i+Ryni39zo
	UmEOrtcMK3ZZ9d9FfGzUpKJHt5DUC+3l23O6NjuROVTeu6QAq90LKXIxwlPxc+aw
	OV2EsNWXO5bBBhf5DDqTkpxwsgOTbvNcgweQqVsGgJGR/XUv1v+heQl6PW67kfhC
	Kh5M9N2qG4S4tjEEeyAUdE5K6QwCLmzpvTBz+NAYCfhbchq97NOVvihpPsMj9sUr
	SFV5qw==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eu253h4sx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 12:08:48 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-6c9239a1dccso145017137.3
        for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 05:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781611728; x=1782216528; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5sjHg+ZVqRUaGbwJbPdqwnI/I306Wmg8va8QLePtTBs=;
        b=e9EAwwWrQwM4d5/gnC0NTLI+zn1M7OPN7wQWKTVbVUntlEyErHx9u7igVksfMN6Z0I
         dL5w7aMaKEvPYzdRtxAfdEgd+LYiA7VqyoHbCqBPMOrkX3XNQuHy7et1Rnkenmtul/fE
         wvCKNVL7TLvF+M0cIOyrW8sAQYd26OYye8m+BoyvAUPwuKSvcy1BoqTAyTLTfsSNoXPV
         4xn7F8T7C8Ya/rXOEk8IlnO2RnB8SUbQRuo4siw6n6msSuW7CAMVM1Mceu5u/p0FRIuG
         yaX1L/JfFiYQBBlcVqotoTL+PvYw3la2YG33xxvKEgZZYp2MTNymCfg9daWcZlR/6gg7
         G2rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781611728; x=1782216528;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5sjHg+ZVqRUaGbwJbPdqwnI/I306Wmg8va8QLePtTBs=;
        b=XyCsEn3gXd9RsJPqI87/GZuE9hxPrlh1I5WZseuysE8zfL5rWPsz1+736olkmsYGa4
         ncY2Xg5IICvA/WFs4bsc8M3jIM03FOMXK7QLf/ea1KYkUPy/eXICepXbUUQ40VeChHlm
         BV+fVAoFbLuzMzwR+gnRXdTIekgf4mELqqQMoQAYIXPQzIW2DahYlKvbTQZyQcSG95UV
         RIOjtTyE4C+sSbPKtGIM3XmqEmnQ1mvy2a4dP6k+6T1t6SiaPFFv5tJwdBod633ksqmX
         KY3NB03b1DwCDCU2+Wel5mTBz9nV+1+qHDnEU6b2B3Oh9TOiHd2dFYbBiZZEsTGm/p9W
         1TOg==
X-Forwarded-Encrypted: i=1; AFNElJ+RuyP98vkQHeojuP0nvoimcWznOc3GQrNQIyXCeq0s6fojGXd8QsTfUzxsuHRSK2WL7M1qW1K4tJs=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywm4mzPfEVDtbkpv30qPDBHcw0IaQEYwbcpO46U9WClxF0YLH85
	n1ZqECxyj0NljU7FGzFf7zCGDy30yY8z/hHpCaJbgC/i9fTBCV3S3eiyVBaGXkpVMByCENzK1Df
	cU9Ijc8YGLmVuPlH72ppzCrU582o+94jfModbcj9Yb9wXTIXdHFIfMRLe6xHaAVFsDqxXQUSNQN
	JE
X-Gm-Gg: Acq92OHvpgbCaKay+6dEbiAsSHeUbRkAurCPDCXsumv5m31tEcPKbEwJp20Npf135Jg
	9eCdyM94ziH/Y3c7ZP62o7gonTHttIfXE8e1LXAVnClMjNvbCQpkbbMFmbCi7S6uan0DM+m3YRw
	MosbeFDjvaGDnpIlKIH+5xNZ34Nql6i9J/PC3yJeIfhJIu0RdtQWSUD23E2kJBeda6EzMgKMe1a
	TgXeS4INHDkoBkuiy4oa251j2FKNfxJCg+eHPmsB0jgQhxoJNYQUdV4Vjrdj5wIToT+U0sA7c3J
	qcFSkShrNhkUdyjnO5QZuJp9CM8vH5Go4VLnFOXs4Gx9eI4/0wDG47k7kBXLOXcN72bTZIIJFMe
	Lc/e2MGM53S68DfVg2pg5ij2ja//yYg1X9tZ2Osv7bzl+JA==
X-Received: by 2002:a05:6102:442a:b0:6c2:7d0d:e09f with SMTP id ada2fe7eead31-71e88b61ae5mr2830895137.1.1781611727852;
        Tue, 16 Jun 2026 05:08:47 -0700 (PDT)
X-Received: by 2002:a05:6102:442a:b0:6c2:7d0d:e09f with SMTP id ada2fe7eead31-71e88b61ae5mr2830875137.1.1781611727381;
        Tue, 16 Jun 2026 05:08:47 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c01ee8286c9sm350078966b.5.2026.06.16.05.08.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2026 05:08:46 -0700 (PDT)
Message-ID: <8bb365dc-25b4-4fe3-8ad9-1f110bad2417@oss.qualcomm.com>
Date: Tue, 16 Jun 2026 14:08:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] PCI: qcom: Add link retention support
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
References: <20260521-link_retain-v2-0-08ed448b081c@oss.qualcomm.com>
 <20260521-link_retain-v2-3-08ed448b081c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260521-link_retain-v2-3-08ed448b081c@oss.qualcomm.com>
X-Proofpoint-GUID: EqO0jBggcrhEzBrmcdjcG7VBnAUx438a
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDEyNCBTYWx0ZWRfXy5jsbPwbC0tR
 WHmqlp22dnjOCPuNsvlJtY4XaU+suLzVR7JHSBACsXhcRjdpoM4Pcj1zI1e4VPG5x+f5YM+hvwC
 U0ttl+faknA13HFQ4zKbAufQmPzhGwo=
X-Authority-Analysis: v=2.4 cv=WNdPmHsR c=1 sm=1 tr=0 ts=6a313cd0 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=pjaUC6Pc4IK-3t1tjCkA:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDEyNCBTYWx0ZWRfXx+RtguZpjNs7
 z/pVmRQs6F0CISJUYfcJDWiZVKdO6PYum4Pth1Bqm04e/1T5hOpoyPYwBKdf/iCh0+WaTbdg94i
 YW5q+o/Kkrt0jQ+u9aa6yZcpMLXjttTWh/6TbyuELo915z9m8fIuzqVwETkAcr597qkxzmeggCA
 jNj7id2G2puzAl7nLDqYjXsv+C5xvHIUa3svLp9rvbL8fCAp57ls2gjeabAyCcjkwHl0xdcbduV
 citet7lQwvmclE6o4o57FxMQz3ouj197RhmGkTAXPouHQMfPJThgOTIjnIimw95YJ4+7uNnqXip
 ycHMzzuJYUZ5a3RHnuAqFfaz5P6gPPIQuM5JSCqB6pdvEcn5vbNInaoRlWKbH4uDyNRAZ6CYlGp
 OEYvaGWeE0zx6pU+jVVOAjBoyDzLbBlPRh1LTzEzaJA6xzbxp1bf8ACtyuZ4mtG+TSQOjCYPGPi
 GWF2lBSVIKIW2AMXitw==
X-Proofpoint-ORIG-GUID: EqO0jBggcrhEzBrmcdjcG7VBnAUx438a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_03,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 suspectscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606160124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_050849_871501_049D21B1 
X-CRM114-Status: GOOD (  31.88  )
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

On 5/21/26 2:56 PM, Krishna Chaitanya Chundru wrote:
> Some platforms keep the PCIe link active across bootloader and kernel
> handoff. Reinitializing the controller and toggling PERST# in such cases is
> unnecessary when the driver does not need to retrain the link.
> 
> Introduce link_retain in both qcom_pcie_cfg and qcom_pcie to indicate when
> link retention is supported. During initialization, check the LTSSM state;
> if the link is already in L0 or L1 idle and LTSSM is enabled, set
> link_retain and skip controller reset, PERST# toggling, and other post-
> init steps.
> 
> If the current link speed or lane width does not satisfy the constraints
> specified by max-link-speed or num-lanes in the device tree, fall back to
> normal initialization and retrain the link instead of retaining it.
> 
> Configure the DBI and ATU base addresses in the retention path, since the
> bootloader may use different base addresses than those provided by the
> device tree.
> 
> Also fix the -EPROBE_DEFER error handling path to return 0 instead of
> propagating the error, avoiding unnecessary cleanup when probe deferral is
> requested.
> 
> Tested-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware.h |  1 +
>  drivers/pci/controller/dwc/pcie-qcom.c       | 62 +++++++++++++++++++++++++---
>  2 files changed, 58 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index 3e69ef60165b..be6c4abf31e8 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -450,6 +450,7 @@ struct dw_pcie_rp {
>  	bool			ecam_enabled;
>  	bool			native_ecam;
>  	bool                    skip_l23_ready;
> +	bool			link_retain;
>  };
>  
>  struct dw_pcie_ep_ops {
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index bfe873cbf44f..b061eaa227b3 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -253,12 +253,14 @@ struct qcom_pcie_ops {
>    * @override_no_snoop: Override NO_SNOOP attribute in TLP to enable cache
>    * snooping
>    * @firmware_managed: Set if the Root Complex is firmware managed
> +  * @link_retain: Set if controller supports retaining link from bootloader
>    */
>  struct qcom_pcie_cfg {
>  	const struct qcom_pcie_ops *ops;
>  	bool override_no_snoop;
>  	bool firmware_managed;
>  	bool no_l0s;
> +	bool link_retain;
>  };
>  
>  struct qcom_pcie_perst {
> @@ -960,6 +962,42 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
>  	return 0;
>  }
>  
> +/*
> + * Determine whether the link established by the bootloader can be reused.
> + *
> + * Reuse the existing link only if its current speed and lane count match
> + * the max-link-speed and num-lanes specified in Device Tree; otherwise,
> + * retrain the link.
> + */
> +static bool qcom_pcie_check_link_retain(struct qcom_pcie *pcie)
> +{
> +	u32 cap, speed, val, ltssm, width;
> +	struct dw_pcie *pci = pcie->pci;
> +	u8 offset;
> +
> +	val = readl(pcie->parf + PARF_LTSSM);
> +	ltssm = val & 0x1f;
> +	if ((val & LTSSM_EN) &&
> +	    (ltssm == DW_PCIE_LTSSM_L0 || ltssm == DW_PCIE_LTSSM_L1_IDLE)) {
> +		qcom_pcie_configure_dbi_atu_base(pcie);
> +
> +		offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
> +		cap = dw_pcie_readl_dbi(pci, offset + PCI_EXP_LNKCAP);
> +		speed = FIELD_GET(PCI_EXP_LNKCAP_SLS, cap);
> +		width = dw_pcie_link_get_max_link_width(pci);
> +
> +		if (pci->max_link_speed > 0 && speed > pci->max_link_speed)

I think I raised this concern already, but this goes against what
max-link-speed is supposed to do, i.e. this will not retrain the link if
the bootloader had initialized the link to a speed faster than what the
DT requested

> +			return false;
> +
> +		if (pci->num_lanes > 0 && width > pci->num_lanes)
> +			return false;

Similarly, this should be ==

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
