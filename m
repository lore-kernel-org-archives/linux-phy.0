Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C4FCC87FCB
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 16:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HNTHye74l4xMMsEmDBlkmM9Z1aOFcT7vaKucGElRY0=; b=Q4XbYdbnRu97m8
	XZ0tkRY1LWGstzERudTubTE7XjmmfkIfTOTXL/yM5wUphc0MWcha9mX7lEiITngdIFIOLI4C/z7QT
	slTFw6S3z9zlpg8kqGVFg3pPZb+xnl8ppjy22IAd9DqT1tXEOKUON3YSD7uNTFn+ZmMAMB4gAn0U0
	lmMvI1RUfKCnDs3x5cnr10/5b07NYjnxtl2pC/Zrz+OrpFANRE0dlBwov2nfXqYagZZTPN+hHwbUO
	yrTFy+eFYSPWHVx3411W5LLt53PYwnIfBqrl7Z7ryNyTPfxfjGwnFV3np9x11BO1J4TcsxON5WuIu
	mSiUXjJxevxo6p0dRjQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujgoV-0000000FjcJ-3fk5;
	Wed, 06 Aug 2025 16:16:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujgXH-0000000FgmO-1wHG
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 15:58:40 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 576ANgBO019477
	for <linux-phy@lists.infradead.org>; Wed, 6 Aug 2025 15:58:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QNS/uT0UsRLTZGD2d6XkWPD5SB9JWddvW75QWH/H0eU=; b=AVYKFz1jdDIocdhe
	0o5fmMz+DfjGieO6x0g+rQWNH5CaTK8jk7KRHLUEISUv8IEDX2O+f8VVue8xWmpc
	8OwMlUTuzuVivad8WHfjixUvac4VTIyiMT2UwiuuBf0w1LMStUAhV7Nfq4TfdgTF
	58nAu6jegsO4PaWqb25GfMeisXKhUFfHW0SHQ52xgr4yjdIuNWOrGKGxd3+qSeFe
	509UJeVj5T09RmA3gKSbgyU/0pR6oeon8uOf+iHHo53iiXoHCAacxCeuxoZzxrtj
	xBMtA3/Euf7oMzFiFCnC1CNJY4W7ZjKQ5udtDyN2sGp9S6SFW/fSazgsK1w5XOIF
	n1WscQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48c5868w60-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 15:58:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e802ee0d2aso370685a.1
        for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 08:58:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754495917; x=1755100717;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QNS/uT0UsRLTZGD2d6XkWPD5SB9JWddvW75QWH/H0eU=;
        b=EG0IbWqZdVYDgdqOWMjVufdzuMsXp5bFXqLjbRokKVvhDOW8EXJN+YU6zavMg18uMh
         PvigfUxNk5/GV2XgDKgTwe6Jm7XU5kPxQjZ8rcXGCiOt1iNfUbKZ32l6+oBWbEV5SZXg
         dyrN/BDo1La8Ex042MQQ4o208gzPgJnsNkUIXkp2iT6kx1NaXBxHWqkiEGr+yIgZZtQH
         1sx+sLvJqi13fYlVchzSM3+HkEY81/4J7cuf1JaKyuYFshcbRWRHQ4lOk7KEBBkkHZ++
         o2vkvO8hMstCnXZf6WS9i7njgiHxwwrMarN47LvJMY7ocdIePDwwTcxCximAkGSm5nWn
         3/3w==
X-Forwarded-Encrypted: i=1; AJvYcCUidVmLjkO4/x7OoMFMgj56Rm6oui24xiMdIZ8xuIrlLTnQyFzozucHm9m+dGF+oXC0Mwa6+ncskfg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwrtATwIRcfFWAoyHpeVeZSYD8qUNaRXPUaM2tm6IEO5qD6AfVn
	HfOGwsVeUxMEYAV4wZzr6gwuLT4ietDLAtMKubuTt6QwDekBvl+IDRVzHkdlFSZsZfrlP+tKe+F
	LUNpl/prm2Ix/P+hzVuYx/HdLvqX14DAJyqtB0p8PLLBr4j/d2HtAn+Flq3l6Yz3gdm6a
X-Gm-Gg: ASbGnct0aygvj0DyRrVTEMSnanoF+HeFYeMd6QrOZhLnXIcaMSR6W9Ajdz7YbOplZ6C
	01QfxB4ts/qADbX7rFyQ+4vShXALlXFKwG+UIEW+pKP+oCJ6B4ZFgwIaTEz49vELXys6FBDTWcf
	Plmpu9sFSCrKNbyqhCX8DVllLCNY0pWVMmtq9W+s60Hac5oYNFLLkkMjX+DiBeVHe8A6kPN6I7F
	BrmjNaUX/m37N2T5+q1SdqHu/CtEjpGqQYG4I6MCWOJgRQAzRdVoZfoxPgxUmP+PfSo2QRIcs9z
	3ZRw49q2puNWGE0wzXObUU0PCu/emcAGau4cQglxWv4bjf0o/Ls8Gps+/3SEjDEonBPMk0CNm9y
	SwWGG7KPCX345+3JiEA==
X-Received: by 2002:a05:620a:2584:b0:7e6:81d9:359a with SMTP id af79cd13be357-7e814df0c35mr241157285a.9.1754495917407;
        Wed, 06 Aug 2025 08:58:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2XRnua00uhBgXJfMjuaXYjlV+/ag9i/MerbwZyjSbEZJVYDAvoxc5k5/SUInzS+jgdX/iJg==
X-Received: by 2002:a05:620a:2584:b0:7e6:81d9:359a with SMTP id af79cd13be357-7e814df0c35mr241144185a.9.1754495914102;
        Wed, 06 Aug 2025 08:58:34 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8feaf2fsm10329223a12.38.2025.08.06.08.58.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 08:58:33 -0700 (PDT)
Message-ID: <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 17:58:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
To: Mark Brown <broonie@kernel.org>, Nitin Rawat <quic_nitirawa@quicinc.com>,
        vkoul@kernel.org, kishon@kernel.org, mani@kernel.org,
        conor+dt@kernel.org, bvanassche@acm.org, andersson@kernel.org,
        neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com,
        konradybcio@kernel.org, krzk+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250806154340.20122-5-quic_nitirawa@quicinc.com>
X-Proofpoint-GUID: NUGCEn6gKMLaLcZb1_tcgGxR-I2j5dAp
X-Authority-Analysis: v=2.4 cv=MZpsu4/f c=1 sm=1 tr=0 ts=68937bae cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=LTPa4ebz5QvcgEhxLXIA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: NUGCEn6gKMLaLcZb1_tcgGxR-I2j5dAp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDA2NCBTYWx0ZWRfX6muwbqyt1JE1
 VSWLRuuBvH/wEUhRSm56xPdALSer17CPwnEOM/XabxLRYX26tGlF98MxU3SJk/HugaMMWWIJ2Z1
 8TtxsNXzDTcDRGVkfgTsVmxMa9oOCPFzZeHjPREUfK45pKir3csllbyABAgifhajJAJQAjsXtf0
 oP61vCLxpa3WcZJWfylZi+X1PWO4Im8qUU1Eb9myt4Aaa0dQLWCir/IZQ5mcWIl8qYmoey/G9w+
 eOGUQDy0hEuGXxq0Cuac0BZWic9dme587XFtdiDkv327eMGAN3i8oLdKd+Hn0J+pkC6MaDy1RMX
 p1tK7m1xGfIFxXYsmpYCOcSmEGlKvxmOh5Nq0wX2QfJaiGqzHn8thaH5xm2s2YZ/RwEO/KZDfr/
 wMbnVpLf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_04,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015 bulkscore=0
 adultscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_085839_630714_8E6E5066 
X-CRM114-Status: GOOD (  24.33  )
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

On 8/6/25 5:43 PM, Nitin Rawat wrote:
> Add support in QMP PHY driver to read optional vdda-phy-max-microamp
> and vdda-pll-max-microamp properties from the device tree.
> 
> These properties define the expected maximum current (in microamps) for
> each supply. The driver uses this information to configure regulators
> more accurately and ensure they operate in the correct mode based on
> client load requirements.
> 
> If the property is not present, the driver defaults load to
> `QMP_VREG_UNUSED`.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 22 +++++++++++++++++++---
>  1 file changed, 19 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 9c69c77d10c8..6e116f7370c3 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -39,6 +39,8 @@
>  #define PHY_INIT_COMPLETE_TIMEOUT		10000
>  
>  #define NUM_OVERLAY				2
> +#define QMP_VREG_UNUSED				-1
> +#define MAX_PROP_NAME				32
>  
>  /* set of registers with offsets different per-PHY */
>  enum qphy_reg_layout {
> @@ -1894,15 +1896,29 @@ static int qmp_ufs_vreg_init(struct qmp_ufs *qmp)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
>  	struct device *dev = qmp->dev;
> +	struct device_node *np = dev->of_node;
> +	char prop_name[MAX_PROP_NAME];
>  	int num = cfg->num_vregs;
> -	int i;
> +	const char *supply;
> +	int i, ret;
>  
>  	qmp->vregs = devm_kcalloc(dev, num, sizeof(*qmp->vregs), GFP_KERNEL);
>  	if (!qmp->vregs)
>  		return -ENOMEM;
>  
> -	for (i = 0; i < num; i++)
> -		qmp->vregs[i].supply = cfg->vreg_list[i];
> +	for (i = 0; i < num; i++) {
> +		supply = cfg->vreg_list[i];
> +		qmp->vregs[i].supply = supply;
> +
> +		/* Defaults to unused */
> +		qmp->vregs[i].init_load_uA = QMP_VREG_UNUSED;
> +
> +		snprintf(prop_name, sizeof(prop_name), "%s-max-microamp", supply);
> +		ret = of_property_read_u32(np, prop_name, &qmp->vregs[i].init_load_uA);
> +		if (ret)
> +			dev_dbg(qmp->dev, "No max microamp for %s, using default %d\n",
> +				supply, QMP_VREG_UNUSED);

+Mark

do you think having this in regulator core would make sense?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
