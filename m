Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9020D37497
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 20:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxH97btrX7ipqQp3w5Z+TgrwDnfam6ihkKtKMGWbSMs=; b=EdC+95DCn5Hf5d
	1nYjnX65QEU/Xtngt2pbrTueA3P5RLYO8EFnP6FP1NiusvXYtVthgaiBEBP3aGdKv1I/fqikHuwQ/
	1siyHaU2goMQF1Cm+V8T2CSY1092AAl9ICrzWqPw+fRXfo/eUbKIJGBEPYxm6fqyhESjj7xQulPh1
	4CdtuQeXjTJXGh5nY4nprc1/YTbwOCfIF/Hxren++04f4iz870speRdeWprWq/Shbkw6kDHI71Hjk
	cEAHFD5nGfHOo26W9lDr0R0QcO0jrHE8k2WQKr+XeDi5HRpmVECfHyLYMBnBKcEQT3PtI7D2qOkgJ
	FUfQWinLzn9ViagH3FDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcO4-0000000A1M0-0vJ0;
	Fri, 05 Dec 2025 20:26:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcO1-0000000A1LZ-08Cf
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 20:26:42 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5Hr6qq866044
	for <linux-phy@lists.infradead.org>; Fri, 5 Dec 2025 20:26:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ou5OTe6ItK50Xmy1KzAFGVvq
	CH5BTqwqPAu2c0Wd1Dw=; b=aFvJjX1KQ959FsseXfoL9ADfYv1LLhNAvbVHKYm9
	Aa3jwV/MZ2OD/AncIgIpgiulcsqvkJeFA2XDSBwjcMOhBaWcvK2toCXd2ABDywIG
	mkWOm6L+PoA1d04zh/Fr+lFnsKYOWz9jdMipEcxph6eUh5WP1ksfm3gZWYMarwon
	pOvPMrJM83+AwGnQf7/+UjP+SPFs2fwC1At2TlQxGZoVLRxY2jgYys9d0DmlDWm6
	BUSU4jfz03DAj5b/8LiuZbZzLuhs4hZ5T3Dbo4sOf/XIGec306TPms+hoEIIuHv/
	DSV/U5ng6m9olj7xN4/Pz+e3kOjhs3nuaRtwA4Tr1qh24Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4av46f8d1p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 20:26:40 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b55a033a2aso644990185a.0
        for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 12:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764966399; x=1765571199; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ou5OTe6ItK50Xmy1KzAFGVvqCH5BTqwqPAu2c0Wd1Dw=;
        b=CWX00YJp3TpblsGi7GAxmGOKNVzGBUfbJWUe/1SUajq5UxafwiChICUrcr1FAcLjZX
         HmbeHrBcxqjuqmrCw2BQcqPqDmIJ0QCvxXGkZBTZ1zuXw1+irPXq2QYqw3kjqhR3bC7s
         koDRgYcTo7eye0DiZvA7Hz9szENZyG5asd8z7daNjUrGGyOC2wnqjAwo+fNJ3/fLH25X
         Ls9jqfqUhZr7fjOilhv2JNGfHINQ/PWiar/CnOORCyo4d7ypb8q33RhI0BK88EfQ+E6s
         7cPWObv44V7GeuUq3g6WT9Ynpf0xynDV4w2meDSuzxdIMNeJEbFqBzfeDb89qA9NJBW5
         KPFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764966399; x=1765571199;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ou5OTe6ItK50Xmy1KzAFGVvqCH5BTqwqPAu2c0Wd1Dw=;
        b=mw4EApPqOHwF2On9x+6MTu3TXd8SUKHZyxfGpUqHKlWILcD2eBjU4a9dD6tkPeyWJF
         Q2wh/AIixkwIUguwDgaknwm2TrmTyTuVr+sV2qwrBzKTEOCUd30alLsedNm/+YPgCREp
         VvgHIIe9omC4lP8QejtIO5UVhmbChgysKj3iGKyWZ1GOlBplPWqJVG5Qb5hZKsgUTm6c
         rxJqyvThb8Q3gx+FUu5Zu5H8Tt0ZvecCU4GAqgQC88fCqT0sWGbjDkrsl7/gyXvm1AC4
         64W/9pwuiEGODkgR7ds6UqUnvk4pCmEjRZDvhU+EKRzKQ0eLNpBGIZGmXQlOCn1+T7vj
         iVAw==
X-Forwarded-Encrypted: i=1; AJvYcCXe5UKictQE6ciyOU/GFkoYOpfxOHQXO96A9GBANM3bpMUISJfrCZfugKK7ypg1UqZRyI2X5gRw3s0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzD/3xB4kMbZ8yTpv7tSliVToevCIZcHx7hfhMB7MbV4yyQkwK3
	vzvckca4r33De4Aby4FynZ0VC1o57Qu927lgU+xnXOavh6wxgZZwH88E8uL+tPIqICi5OUbULJm
	tXJCPbBhrndq9cAarIPHpzMn7gTC+xP9a4aZiyCri6kbiWW2y0DEbUXYIYsipp2MLPwfX
X-Gm-Gg: ASbGncuRX9LIoCYHRZCgLYTrWbM0Owst/n5iR4Bd8UAp9pKpq9pzemG5CC4p6CYx0i6
	BF8yJWQu30pnX/pEIoczGnrhz2LrWBlcqzx1rKWk8x8trsyYVE4a2U30utNoIbmdfGQEoCEDZZ2
	3ejspEmNQdRZnPE74R0c+OlM5D8drYNq+DDGXXnofZ05Cx8HOrMWp/W95fuyf7stRRiHhjXEiV+
	D690nDEZKKpTEff2dxHAmAFdUlATMLENhN3eZ/9GReTBAPj0IxuRF5xz7DhihkQ0XK08WWQr4Xr
	bYFG87sBbDyiXJ1IDIc+ljXllxlZZL7ZTGAnK3PIY+FOECoaiHGCsQNMXg+VMf7GgwWSV6ai01L
	Xm8f1rwoiS/dFJzTjChpMNYfConOjSSMnireFZu2Ma5Qqlut7MyRn8hBQVltScm+Fz+o+lDd6us
	AwkFc3C6uirWzl2A0OmWaYlaw=
X-Received: by 2002:a05:620a:31a6:b0:88e:1be9:cf65 with SMTP id af79cd13be357-8b61608be49mr1221983385a.39.1764966399298;
        Fri, 05 Dec 2025 12:26:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF0jvyEJFspuJp301SRTQ4mBO8YxuNpLtruUmwrp/86yZNMUr3AiwHs6JfRoIZ4TBzKziqO7A==
X-Received: by 2002:a05:620a:31a6:b0:88e:1be9:cf65 with SMTP id af79cd13be357-8b61608be49mr1221979085a.39.1764966398801;
        Fri, 05 Dec 2025 12:26:38 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c27fc8sm1769634e87.77.2025.12.05.12.26.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 12:26:36 -0800 (PST)
Date: Fri, 5 Dec 2025 22:26:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v5 4/4] phy: qcom: edp: Add Glymur platform support
Message-ID: <q7iguwi6uxkzl3ogk2jidfncc3guuaqzszvemvqita6t3mlnvz@6e2vxnu4li46>
References: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
 <20251205-phy-qcom-edp-add-glymur-support-v5-4-201773966f1f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251205-phy-qcom-edp-add-glymur-support-v5-4-201773966f1f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Wvom8Nfv c=1 sm=1 tr=0 ts=69334000 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=rYCfnyAUmxxiaWWey-cA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: TPN2wJYHGV2npsWF0TrdlW4kSWIShagr
X-Proofpoint-GUID: TPN2wJYHGV2npsWF0TrdlW4kSWIShagr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDE1MiBTYWx0ZWRfX1B/8PbqrtvbG
 drD9quKJcXAFfO9LIrVIF08jto8BRejKs2H36x6+DZ8bxe1DYMk/wi2r4+LdYcqfrPV/RmushLL
 MisBmFQNAhiIKdN7oI1iKo6Sp12QV/MU20hYk7QtFocjEpVIgB03QUiyqW9+YKf5bwolR+dFsKI
 YP5RuzkOSFemDrNUl/nuOv76+TnSlS+VonMhPmKtsafCiJcRE0Cdmwb19yeZmcaj4kWgYMMXHX5
 js8s4pDGEFXGo6fcGsyJiRgS9FIKMvexD2MgnLG8ns4fzwR6+t5IVuMnMNdcOYkADNfMl7i/UnM
 8JMKdf5JvJUSu9MMA/XYL8upFPswzt8kbuET8EYFjJqGYg7C8APOzSAvrcsVLqX1PqoMR/myaI0
 hxmnM3+w4UJ+exjCsvfWf0OeWkY80Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 phishscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_122641_079094_D71A8336 
X-CRM114-Status: GOOD (  22.21  )
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

On Fri, Dec 05, 2025 at 04:23:23PM +0200, Abel Vesa wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> The Qualcomm Glymur platform has the new v8 version
> of the eDP/DP PHY. So rework the driver to support this
> new version and add the platform specific configuration data.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 230 +++++++++++++++++++++++++++++++++++-
>  1 file changed, 224 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index f98fe83de42e..052b7782b3d4 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -26,6 +26,8 @@
>  #include "phy-qcom-qmp-qserdes-com-v4.h"
>  #include "phy-qcom-qmp-qserdes-com-v6.h"
>  
> +#include "phy-qcom-qmp-qserdes-dp-com-v8.h"
> +
>  /* EDP_PHY registers */
>  #define DP_PHY_CFG                              0x0010
>  #define DP_PHY_CFG_1                            0x0014
> @@ -76,6 +78,7 @@ struct phy_ver_ops {
>  	int (*com_power_on)(const struct qcom_edp *edp);
>  	int (*com_resetsm_cntrl)(const struct qcom_edp *edp);
>  	int (*com_bias_en_clkbuflr)(const struct qcom_edp *edp);
> +	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
>  	int (*com_configure_pll)(const struct qcom_edp *edp);
>  	int (*com_configure_ssc)(const struct qcom_edp *edp);
>  };
> @@ -83,6 +86,8 @@ struct phy_ver_ops {
>  struct qcom_edp_phy_cfg {
>  	bool is_edp;
>  	const u8 *aux_cfg;
> +	int aux_cfg_size;

Can we always write DP_AUX_CFG_SIZE values?

> +	const u8 *vco_div_cfg;
>  	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
>  	const struct phy_ver_ops *ver_ops;
>  };
> @@ -185,6 +190,10 @@ static const u8 edp_phy_aux_cfg_v4[10] = {
>  	0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
>  };
>  
> +static const u8 edp_phy_vco_div_cfg_v4[4] = {
> +	0x1, 0x1, 0x2, 0x0,
> +};
> +
>  static const u8 edp_pre_emp_hbr_rbr_v5[4][4] = {
>  	{ 0x05, 0x11, 0x17, 0x1d },
>  	{ 0x05, 0x11, 0x18, 0xff },
> @@ -210,6 +219,14 @@ static const u8 edp_phy_aux_cfg_v5[10] = {
>  	0x00, 0x13, 0xa4, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
>  };
>  
> +static const u8 edp_phy_aux_cfg_v8[13] = {
> +	0x00, 0x00, 0xa0, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x4,
> +};
> +
> +static const u8 edp_phy_vco_div_cfg_v8[4] = {
> +	0x1, 0x1, 0x1, 0x1,
> +};

If it's always 0x01, where do handle the divisor?

> +
>  static int qcom_edp_phy_init(struct phy *phy)
>  {
>  	struct qcom_edp *edp = phy_get_drvdata(phy);

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
