Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 364E4D3B7F2
	for <linux-phy@archiver.kernel.org>; Mon,  8 Dec 2025 14:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J77Ivhzr760KDy4rzYIPS082+F7jFpZXDAcuFS52PXY=; b=I33cV8mnt18dL9
	GJBW+YKtEtQWGyxLmxfr1Sly2tAt69f2pjwCtGk7Ilw1XZut7rxygCCG+VXx+7+2rjsK/UCImhqGU
	21jVmZ4gSTOsuKWP5MznJdYDoHYuoGW26BHttmpfHXvMY3eDTBZX/hUtlfwxt5VHmN9vzCSt+LScy
	8kOl+flRvHL35SHg5bTIFckwzIiPzA9h1xRfbkBetykD10uLeNqIhVYVsaxq3KbXCIXLaAFB8Lu75
	hi4mikj8xW6Z5PxMmSwknZdIe4LPje3mwQtDcNwlLg+iBPYYjvZEoIAeHtOi3K/ddTR6CwPq3eI6a
	Yl/WzGSYPQYtNIsEiWqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSc2c-0000000DAmt-1w8j;
	Mon, 08 Dec 2025 14:16:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSc2Z-0000000DAmK-3dtv
	for linux-phy@lists.infradead.org;
	Mon, 08 Dec 2025 14:16:41 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8E5HF81419084
	for <linux-phy@lists.infradead.org>; Mon, 8 Dec 2025 14:16:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=C6BdKba8GuPoNuZiFMtECnAO
	5JYC52XsvAnxQLdNLUY=; b=ijK13upk5HwvfRU+Pw4/hDxiU6CNLPstF1MtXWoK
	q5pDFI2JhCyVw/TOzw8wNCafcsVen2o2wb2O59MrIsd7QNk4JGT+tZawYl/Mi5nr
	t9x5zAk187HIs0fCxgbasgu4eLaUsABUxuDsWgb07iTQeAAZsd9qre+7VT7nPgTa
	Vuf9NBmkv2RxHaPfFk4AjA8aw8IzJgV8S6odakl0xBLcS0nGUuaa7Q1bQe64XF1Q
	xjUrLbQzsPgXw769DEUFKqjKrqxXQtWDCquB3LlG6mBJztNdM3CRt90gdctLOovI
	kDNraHWQC6WDoZir7ptJ9Wmva3IkNcjFf1N6W8EHBTSp6w==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ax04ng10m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Dec 2025 14:16:37 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-559597352f9so2666221e0c.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Dec 2025 06:16:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765203397; x=1765808197; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=C6BdKba8GuPoNuZiFMtECnAO5JYC52XsvAnxQLdNLUY=;
        b=gzoK6ByeU9U+AikWFK85WXwXeiiRMizYzy3V6vLWmkd4BQZCDXCcwetMzfO1Up5xwY
         VPn67FYcuq1Y6u1ipNbhRVCsIN5dgJ52UwEiTPsqoCgyDthOnNa8jmMC+9KavpOUdqZQ
         B/mxxuE454xl+f6l483DAU8bBWJcRfiI/nbXe6CKxMAR321SMspAo/V6JQqVwMFtMp4v
         /BGT7b7yAkziH8vX17ZPkB6qI8rpC080v2FrnjBpKMpfyeGIn0FBmJha35NKtzRuwSOv
         musGg9RS7tE+ueqsD86p5LHlfZkNs0w3dqlS+X03Jeti2qjEBKlUqBEAQEwtzOk0fVqj
         dF0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765203397; x=1765808197;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C6BdKba8GuPoNuZiFMtECnAO5JYC52XsvAnxQLdNLUY=;
        b=w4IqqMFOW/0HWNzZrG/g3QgzX+isIBBoJ8BQ+yxXcKl02Oe7i0LNBGznu+sMn9EOsz
         YuMKYVtgDotmYU72mEdrs0KOUADGn7E1HJcA55s0RiBK8CFcFEvQ3QWROUtldCpibPfJ
         0FSDae0j3p3Sb9FBb4Os2G9qA9hz0QNVQxBHhtW9nuLnbGMwXDbjqhn8cHTwsjFoWp++
         PvpPcIuhUiSdtJE8K0qjiBDxFu9BfQiunOaTTGYrk6Wiwi7u9dhYLu7yPXf2uajTJoGV
         tai9WpDHr/nAvCCCf+LVCZZe4UW1pbJ43+5UlyGGyKG/JIle5ScyIEm6yBviVgo97ypN
         4yog==
X-Forwarded-Encrypted: i=1; AJvYcCWXQgKNCNivgI2rIeDqS5fKK2Awj7fdwzBRk48v/lKPY+cbagSozbyjR44ddPz1Z7Afq5RDvI6p9mc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxZ+AssS2zz3d/Jt33yejiSyF635P0xM6FyAszw7SuhEhzPbRsc
	jWmN50lzL37cWOUY2dOKzcrKhbbfA5hQvO3cjkcue6YdNRnrsblI3oo0pRJ60Emr+iK/AQ47ArE
	apB7L6TpzqhmZwya7cC7fwwrdOralfiQ2Nge6szcwN/sK8hY2myV5CTiL1ZV6mi70zFln
X-Gm-Gg: ASbGnctxvbQ9QNp+lWTMunjLLf+s64vFUPXGb7VP7SSz1W2/bSeAgZkEROvOp3DX+NM
	LKx75uQWHfA7Ds3GWyoQOsGJiGV/Y9sM7gi+dPtYkSMOkF1mjLfKQo+20+WfEaMb7g4hkYPZmOW
	3zPhgWtcbUAVcX+GIxvu2DhBzpNpN4rFQ6REa5tI9867gCUixp945rilgUCGeEJMUgPUaJEyPya
	X15fkS5+spEx5AruBkSjHDu5K+7rsi2Oyl2KIBQjh9pxS0MusNVi7yKkPov0HlndXUVlL//Hw3z
	G4oETgF43CqOycgJykyt1vYu4jaDBaOYIdMc6a99H5QMJx592HtZRfrfQfFSMzSUf7FCXeHsHYJ
	PGnhHKsePxApV6WUNKLt53A==
X-Received: by 2002:a05:6122:1312:b0:55b:d85:5074 with SMTP id 71dfb90a1353d-55e84667f4bmr1501813e0c.8.1765203396941;
        Mon, 08 Dec 2025 06:16:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEcGRu23ACp6NvDvUOo3R/VphM+tlV2mvK7RUyWx0Y0RTuCbElmpUyZggpSb2iYjl8W6A8hjQ==
X-Received: by 2002:a05:6122:1312:b0:55b:d85:5074 with SMTP id 71dfb90a1353d-55e84667f4bmr1501593e0c.8.1765203395085;
        Mon, 08 Dec 2025 06:16:35 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b4121d05sm10981467a12.29.2025.12.08.06.16.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 06:16:34 -0800 (PST)
Date: Mon, 8 Dec 2025 16:16:31 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
Message-ID: <e22cqybvhlfv6mvmbr6tlaz4zousxcyo475g67yjerxw6xks64@6zzg6tj33kxa>
References: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
 <20251205-phy-qcom-edp-add-glymur-support-v5-4-201773966f1f@oss.qualcomm.com>
 <q7iguwi6uxkzl3ogk2jidfncc3guuaqzszvemvqita6t3mlnvz@6e2vxnu4li46>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <q7iguwi6uxkzl3ogk2jidfncc3guuaqzszvemvqita6t3mlnvz@6e2vxnu4li46>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDEyMSBTYWx0ZWRfXzVkpJSgyxgq3
 MLUgtwelN/dlfVRxPRzKaXY7kPfhK1GcKBH5YPxw0lLBSHCeY6/q4oJT9alWR5WY0JK8TzJoLU+
 SJxhZ2Qa8rfhQpqZH4VxJdGtOZ4qHS6Fq8LQjK+Qv8uUrUF6myVBnd9qVMZiZTQBikTadhviBWp
 LCRYbjjPyk0uQvZYXTtApk8TuJZppDMZS5Du6rWoZZNGptKypcz47XWZFXh/rBBu17eib5wmYbY
 HVhRnKkT54Sum8kdo2GEpYhxdABLklJehVQGP5sEsBP68dWcD7ydWbYHpwsaBivvGdZL99r80St
 ee6AuLSJ9VbmZW8m33Lqmi1Yp7mOfrxD/JV2o4/BI/jMdRJI5cdnhPq8hjLHHRlXBO3qRXBP3ZS
 +rbmrdeRm4LLLuNij2KSRfBVbILcXQ==
X-Proofpoint-ORIG-GUID: y85y6TYaGI-dlc4daZ3Q09opoH1QmM-0
X-Proofpoint-GUID: y85y6TYaGI-dlc4daZ3Q09opoH1QmM-0
X-Authority-Analysis: v=2.4 cv=CKUnnBrD c=1 sm=1 tr=0 ts=6936ddc5 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=lrDoRkyyTIirryIH6YYA:9 a=CjuIK1q_8ugA:10 a=vmgOmaN-Xu0dpDh8OwbV:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 clxscore=1015 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512080121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_061640_049475_AE37ADDE 
X-CRM114-Status: GOOD (  26.39  )
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

On 25-12-05 22:26:35, Dmitry Baryshkov wrote:
> On Fri, Dec 05, 2025 at 04:23:23PM +0200, Abel Vesa wrote:
> > From: Abel Vesa <abel.vesa@linaro.org>
> > 
> > The Qualcomm Glymur platform has the new v8 version
> > of the eDP/DP PHY. So rework the driver to support this
> > new version and add the platform specific configuration data.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-edp.c | 230 +++++++++++++++++++++++++++++++++++-
> >  1 file changed, 224 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > index f98fe83de42e..052b7782b3d4 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > @@ -26,6 +26,8 @@
> >  #include "phy-qcom-qmp-qserdes-com-v4.h"
> >  #include "phy-qcom-qmp-qserdes-com-v6.h"
> >  
> > +#include "phy-qcom-qmp-qserdes-dp-com-v8.h"
> > +
> >  /* EDP_PHY registers */
> >  #define DP_PHY_CFG                              0x0010
> >  #define DP_PHY_CFG_1                            0x0014
> > @@ -76,6 +78,7 @@ struct phy_ver_ops {
> >  	int (*com_power_on)(const struct qcom_edp *edp);
> >  	int (*com_resetsm_cntrl)(const struct qcom_edp *edp);
> >  	int (*com_bias_en_clkbuflr)(const struct qcom_edp *edp);
> > +	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
> >  	int (*com_configure_pll)(const struct qcom_edp *edp);
> >  	int (*com_configure_ssc)(const struct qcom_edp *edp);
> >  };
> > @@ -83,6 +86,8 @@ struct phy_ver_ops {
> >  struct qcom_edp_phy_cfg {
> >  	bool is_edp;
> >  	const u8 *aux_cfg;
> > +	int aux_cfg_size;
> 
> Can we always write DP_AUX_CFG_SIZE values?
> 

Sure, I could check what are the values for the rest of the regs for platforms
with v4 and v5.

> > +	const u8 *vco_div_cfg;
> >  	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
> >  	const struct phy_ver_ops *ver_ops;
> >  };
> > @@ -185,6 +190,10 @@ static const u8 edp_phy_aux_cfg_v4[10] = {
> >  	0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
> >  };
> >  
> > +static const u8 edp_phy_vco_div_cfg_v4[4] = {
> > +	0x1, 0x1, 0x2, 0x0,
> > +};
> > +
> >  static const u8 edp_pre_emp_hbr_rbr_v5[4][4] = {
> >  	{ 0x05, 0x11, 0x17, 0x1d },
> >  	{ 0x05, 0x11, 0x18, 0xff },
> > @@ -210,6 +219,14 @@ static const u8 edp_phy_aux_cfg_v5[10] = {
> >  	0x00, 0x13, 0xa4, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
> >  };
> >  
> > +static const u8 edp_phy_aux_cfg_v8[13] = {
> > +	0x00, 0x00, 0xa0, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x4,
> > +};
> > +
> > +static const u8 edp_phy_vco_div_cfg_v8[4] = {
> > +	0x1, 0x1, 0x1, 0x1,
> > +};
> 
> If it's always 0x01, where do handle the divisor?
> 

So after double checking the documentation again, it seems
the proper values here are:

   1.62 -> 0
   2.7  -> 0
   5.4  -> 2
   8.1  -> 1

And did some testing on the CRD and it seems to be working fine.

So will update and respin.

Thanks for reviewing,
Abel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
