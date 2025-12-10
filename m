Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0558BD3E764
	for <linux-phy@archiver.kernel.org>; Wed, 10 Dec 2025 17:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2NmiqF61zUD5HiYEsuKENcazYX16CBmHMYhzZ2QW9U=; b=qvr/e/ybVFln0B
	4Gov5T7JBkBO/sCEcgi2NSlYJ7Nvh5fTynXiZoFnzHVB/6yjCkpyM+cBkUykfKyJr+3fdgJK08SY9
	0q1KyP9JriLgPXSpWqaWq0gp0Dz/S+IAMjfOeVI4TB0dN9y4YUCp2glC3w+znZaUO9+r6o5yE00wT
	QFEDaZ1Bq3bc4qGR4F65JhVEENQHSCBlhmjpSSN/LnoI2vOmcnrpZsU47pjFn7XnjDAqlmLE+BLoN
	B1KpuCfHS7tF+zGDzCRjw+hDL4NmngshHAeGLqG12FXsSuuS5R8LdgzzxZVtyxuvhJE0uX1GdA9Ce
	BGfKc2OsxdRi9oHdinwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTOLa-0000000FijQ-0lrw;
	Wed, 10 Dec 2025 17:51:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTOLX-0000000Fij4-1L6W
	for linux-phy@lists.infradead.org;
	Wed, 10 Dec 2025 17:51:28 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BAHaSQs1817811
	for <linux-phy@lists.infradead.org>; Wed, 10 Dec 2025 17:51:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BeSQQNCY7n3ICAefy9Ece8ch
	se8u8sQw7ZSYOSvx66w=; b=TIQfC9mXoDdJvk4a9oHqwyMn1jgTT5pNgliPChck
	ygFL6I/FJkGztwY9KfZ9OXoujBCFkPjdSr6mkAmc7rhAzaFGbRhRm8XhEVCwkGnF
	SDWDSx4RGoEIVKcXjiMYib9iAP5c00TwaqV5Tzt69cLHyXRUyKpz70SUiCwHpYKU
	T8VwysJJmeupjVDoL6jHYRIiIQAUUHMHt7TWQ/7a7irIPzeO1rfwZaeAf/vY1aI5
	7s8fJ9X0vM2Qq1w10uCp7nO3NvJUhUEmhWfQus+e29X5jS7KlQ6dNuop8HfafOLX
	wvMAshfL8B2Z5QRkxyZSMvezRYJRIlno8hotxj5Qa5FLVQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay2e0j8ep-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Dec 2025 17:51:25 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed74ab4172so1586281cf.1
        for <linux-phy@lists.infradead.org>; Wed, 10 Dec 2025 09:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765389085; x=1765993885; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BeSQQNCY7n3ICAefy9Ece8chse8u8sQw7ZSYOSvx66w=;
        b=gT5aAOXiH1u5+f7JlFNtsmJpxr13esXBS/ksjRfV82fePDRQedrv5tmAjclJA5Jds3
         syxercCpfI0IAfsdnuDuSqy4ga/fy84x0is5mek73WDT7Bu7U/9gk5AdCS6WSsUT2fi+
         bNJL8CfkwUdyG/MgT1+nBR8isczoAFqkLfr8si2sCX10ikGNLADeePhmya7amC+u39DN
         cLma3cQ8ZxWzhdpxSnBCD6D7uiHeGnPcO/rFgJBmFzEfUOp4VgzdSHDgAj4zHlFkDJGt
         cddUwBgNxqNSHC1VwhhRwzORc22Qo/dzc8qjyi1azaZYoID7T5omRzOMqhHvJwc5a8N6
         IRNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765389085; x=1765993885;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BeSQQNCY7n3ICAefy9Ece8chse8u8sQw7ZSYOSvx66w=;
        b=cC6Gux+sd+2CrM7lZFVlDzQ6ttc65NAYb+aUBsGWEXG6Nj8t+Ywy3S+sl2nYr9qK8+
         Ry/G1p/DUeUUFT4gfV5bX0Ki56QVlmx6srd08JUY9smKJzETgwWszuqGTl/y2fp39CzI
         52DBWaUNWArRjfQMJnM2cr2Pkb+0k1sTSy2lzM5I4QTSMQx6Ue+wcrEhR0bUOnJ/C3zQ
         mm2MI1xvQ5nCXmm7wBXC8/Lcb9zIcR/5O1lc1v8bNYjGZhLXwVtiQmboGWqOsTe5fCsN
         3YG5EZ8+ZCO6fZAUy5i80G7u1IhZHLFo0U+dHqtbXylGg3W7lmiQVnMV07XDuB41MppX
         og5g==
X-Forwarded-Encrypted: i=1; AJvYcCU9cWR7wUMDWrjd1hDJg2oNuGKGD7KvlAceC8HSwb0umyAvMBjRjas4uIzW8aweO6Ja6uAZIGyuICc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+7sWVaOAKJvdX5s1K6C3yyGCJFrzzqZU7T4k22rcU76PSUXD8
	aMqaAWwQPXBxF6zI9CO2yXfuyRcSFq9j+t46PgZ3VfG6QHOWUig93/ObwCuaOlGWL1g+MYnc5ah
	dOYQykX2fkWIr6EWn+xxHu3NhZcl8xIa1qit17wVSpdusVPvKex2DrbHTJfrIDPXIQatK
X-Gm-Gg: ASbGnct+TBFzfqvjknklbzMNrA3HJEgVqnCSzX8+J9au5ccek0Tkpc8l+SnB+S27g7s
	zqCS4xeGGpzLppOacyZpNftN58gV9ZYYAsBsBcnHSWRx+FwMNAx4j6tx3Vh8OwkLKQHhLiXrwlP
	NLJBjX5ox83XtycQAZWsT+XZf544cOhtFoU0RzV0WYFDwldaoFPBzhZLYhvELQWh2OZtu0uFdwk
	JCy21BIdxhWKM5tFOCiwJ0OTfFL2QsiqZPcqRrNSpAH58ewurhFcofub3d/NsSDbuRsuQ54Qq9r
	mD4nkZXzWpi8Ld+2n8Ihmtn6mVwx32f3FrnK+RFOaHIS4U3sYZItnDFhBfYP+XjKiz9p1P5iKNY
	rJZEKZk5UtfSU0jhG784OaFKl8MA0oo+ZA7ZhueeSfN61jSavAf7Wqw7ezuN06r0PqyXYd1KkAD
	isygQAxhwkN3l1REP26bQ/bGM=
X-Received: by 2002:a05:622a:6089:b0:4ee:2bfb:1658 with SMTP id d75a77b69052e-4f1b1b0b1d6mr38135761cf.45.1765389085275;
        Wed, 10 Dec 2025 09:51:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFuloF8EWYgTNimNJfZde6kWgxvxaGZZr+YBsiejZFJFGZe+iFpq3QoI+oYylCx2XnCAFrI6g==
X-Received: by 2002:a05:622a:6089:b0:4ee:2bfb:1658 with SMTP id d75a77b69052e-4f1b1b0b1d6mr38135421cf.45.1765389084815;
        Wed, 10 Dec 2025 09:51:24 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f379f5sm37713e87.11.2025.12.10.09.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 09:51:24 -0800 (PST)
Date: Wed, 10 Dec 2025 19:51:22 +0200
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
Message-ID: <mao4pyywje5x526ggasodx2hpmrgrw3yhq7a4v2lxtj2m3p6ii@6mtei6u7jbuc>
References: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
 <20251205-phy-qcom-edp-add-glymur-support-v5-4-201773966f1f@oss.qualcomm.com>
 <q7iguwi6uxkzl3ogk2jidfncc3guuaqzszvemvqita6t3mlnvz@6e2vxnu4li46>
 <e22cqybvhlfv6mvmbr6tlaz4zousxcyo475g67yjerxw6xks64@6zzg6tj33kxa>
 <ef6gkmgy4n6ipdam2nbm3no2ew3mga6dt45xpf6ykv3is2nkjh@gvz6pzg6dk7e>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ef6gkmgy4n6ipdam2nbm3no2ew3mga6dt45xpf6ykv3is2nkjh@gvz6pzg6dk7e>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDE0NiBTYWx0ZWRfX7jLGs1u8x8W+
 8/AkpPQ672HNu6BGpn6FP0AHEQpkxi9PXlAD8taK93mR6ghnRMyEYNWrXZvR5JmBZoIQDuKk6hJ
 bR/jH02HBldv8X20xFv/1wJhQBa4VTMKSD2R5S7qQhJ8eyJL1Y0BnYwbsXMJeESlO3f8HhgF1O0
 z2ZnuqNPHgE0mlynbm56oE5M5KIwMK/s0DalUpkYXK8S1LTBkok6e9UKN3I4zgVJtdEcfNw1XTj
 0zNlDBA6sqwwQM9rG/M+dem61D/lcf9wZV01y5mgn5RactBqnHTrFSUOXsudEvTZFP484/ztwx0
 iicain2qbmSMQIauzQ1cDi/xg3gC8KqYRJ4mlDYNcGfHBcJJZY7AOOKRZ42gb8/zPrbAG8C1jsz
 7bztLM3IN+FlJZlYcs9tGCpnnwdcAA==
X-Proofpoint-ORIG-GUID: ynrL5Z8z31lpYn9tOMA8_hI-iTfq7mba
X-Authority-Analysis: v=2.4 cv=G5oR0tk5 c=1 sm=1 tr=0 ts=6939b31d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=JfrnYn6hAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=x1iXGeQro2BAPSpZQGcA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: ynrL5Z8z31lpYn9tOMA8_hI-iTfq7mba
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_02,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_095127_483201_6DF03DDC 
X-CRM114-Status: GOOD (  32.07  )
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

On Wed, Dec 10, 2025 at 01:26:38PM +0200, Abel Vesa wrote:
> On 25-12-08 16:16:31, Abel Vesa wrote:
> > On 25-12-05 22:26:35, Dmitry Baryshkov wrote:
> > > On Fri, Dec 05, 2025 at 04:23:23PM +0200, Abel Vesa wrote:
> > > > From: Abel Vesa <abel.vesa@linaro.org>
> > > > 
> > > > The Qualcomm Glymur platform has the new v8 version
> > > > of the eDP/DP PHY. So rework the driver to support this
> > > > new version and add the platform specific configuration data.
> > > > 
> > > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > > > ---
> > > >  drivers/phy/qualcomm/phy-qcom-edp.c | 230 +++++++++++++++++++++++++++++++++++-
> > > >  1 file changed, 224 insertions(+), 6 deletions(-)
> > > > 
> > > > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > > index f98fe83de42e..052b7782b3d4 100644
> > > > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > > > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > > @@ -26,6 +26,8 @@
> > > >  #include "phy-qcom-qmp-qserdes-com-v4.h"
> > > >  #include "phy-qcom-qmp-qserdes-com-v6.h"
> > > >  
> > > > +#include "phy-qcom-qmp-qserdes-dp-com-v8.h"
> > > > +
> > > >  /* EDP_PHY registers */
> > > >  #define DP_PHY_CFG                              0x0010
> > > >  #define DP_PHY_CFG_1                            0x0014
> > > > @@ -76,6 +78,7 @@ struct phy_ver_ops {
> > > >  	int (*com_power_on)(const struct qcom_edp *edp);
> > > >  	int (*com_resetsm_cntrl)(const struct qcom_edp *edp);
> > > >  	int (*com_bias_en_clkbuflr)(const struct qcom_edp *edp);
> > > > +	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
> > > >  	int (*com_configure_pll)(const struct qcom_edp *edp);
> > > >  	int (*com_configure_ssc)(const struct qcom_edp *edp);
> > > >  };
> > > > @@ -83,6 +86,8 @@ struct phy_ver_ops {
> > > >  struct qcom_edp_phy_cfg {
> > > >  	bool is_edp;
> > > >  	const u8 *aux_cfg;
> > > > +	int aux_cfg_size;
> > > 
> > > Can we always write DP_AUX_CFG_SIZE values?
> > > 
> > 
> > Sure, I could check what are the values for the rest of the regs for platforms
> > with v4 and v5.
> > 
> 
> So, after checking the docs, it seems we could write the reset values for the
> v4 and v5 as they always are the same between all platforms: 0x03, 0x02, 0x02, 0x00.
> At least on the platforms I was able to check.
> 
> Should we risk it and add these extra values to the array even though they are
> the reset values, just to make the driver more clean by having single sized arrays
> for AUX_CFGx between all platforms ?

as far as I can see, yet, please. I don't see a risk in it.

> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
