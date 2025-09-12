Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E73AECAC582
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 10:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtQ83P1AwrQBlI7L2U0ox6nnwE3U5O+kK56gdTa8dWc=; b=KVrU2imcst7NTU
	1JME7dYvawX+QrtOkwqfTKKoSOwVwrHfGqk4sE5O58DdY9K/CXujkRxDAKNtVWT9Zd7FUU7WoaTB2
	HWwurwaS86xQ6DQaEgX4AgvnYEvpMLPg62zsqxrqGZvD8y85hOcQnWciiDKYtn9E6D7YVQvyxkE84
	8enhcVXIo94/VLfez81l3oAYjT/ZlRN5JTL9VWWHCs+PSyKUGqdbGBHNw5Ub7ZMTw0hDsJ03WeaB+
	xG4mgjfVz5Bj1ndXRQ/vnmB8tNF9Pwt3Uj85UyfnuoHWSs+V0JRckhI/NaYsAlUWuQmMoWMKhcF7G
	K5BA7qN7rBQm0uNpRxgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1By-00000008dvf-2QPx;
	Fri, 12 Sep 2025 10:39:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1Bv-00000008dvD-2n3e
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 10:39:45 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fILt015195
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 10:39:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JZO37LOsBsf5QkQB3SdvehHO
	fE6O/aUfSqad1UHXEXY=; b=CWrtb5M8zWyJSZV0/SCddrssbyxp3WZ1WDxot9Vg
	96inzXhFYQOhvwakMdUZGf4q+RGMpVo7jrokQVN28Bd6Pj4++FlJOsPI/v6TIjYt
	y3VcRTNY/d+4FI8e/A0duerWbuBDAluaxBSNPVUTmSnoTFbcYkR0gX77Hig1Busq
	uEbHxm6i+l6yaBF38szdLXWwaBMKXxZDVslxqxwHRzVNzSFCpC/EluaZdWFETvcy
	R2yW+EYjq1d3sphNTXfe8e7Dyz8KGVc/W61OCSHI6h22VdHTifat51MXBQ8bJfJ+
	hNtxjJj5WrImWUPVWIrPcnogCkToZa/z9hLDmuLUy36HHw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapufgp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 10:39:42 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5f31ef7dfso54867821cf.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 03:39:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757673582; x=1758278382;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JZO37LOsBsf5QkQB3SdvehHOfE6O/aUfSqad1UHXEXY=;
        b=QEtqghrsr3OqgtsUreAe44O3fvVXSdKpbPoSw6u0gneWdWwYLfA6EqXzBhG2SRVX26
         0W/Dvb6ztX9aFiUv4Xs7HjNnJV1yFByhD/AWLnz0YkMQ++DgAGvbVjiOckhuRo3Y6iL+
         WBvt203UpPJSalnZXRO1E7MRdkDI8o/9nTrJfuTwCMBNqY+kvm6fcOW2MxYgVgkX4qQY
         GYLuf/HHBQoJdQ8IoePVQuglRZ5DX12kOJveyUoW0MjSOnefLuFfoLp6NovlR87Wrkt9
         T9h/jjZDmW1sDVDjfKSXuD74+eOG98PzMDxFI68KoE9dYFppuO5Krcf1mI2JEldLxCm4
         H4Pg==
X-Forwarded-Encrypted: i=1; AJvYcCUetgRGf5CPT+I1iCh9ULX7ocNWGSjElUwHGjueLGaS3JEg8IPIi/mlpWdcIrTelKblU7+pAe9ogKM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyMSlDXvx5lQW+4RMSAMun03/nMf8D5FihRWuLlwWrLAopsn687
	Slo5K+tNs6abKGk83ZhGhjofDn1kRItzljVzGuJ4JTWvI+iiX4xTpJDd8oxk4PESND8gpnVZy1S
	9oCYX+lKfFkv70Kyy7GoFNPGtbHRtLpxhFo9/3pGGP5HrEbtOomu3emdJuE9Qq2G5rB2T
X-Gm-Gg: ASbGncujsfBrd8idZx4F+f6dfgWXrNF/uVIS+V9imnwRG6+VMtcxmPzBmvaf+n8b4EK
	3YGCoKZYA9vl8XIXnsPUxLYlElP5NE7BJuWfzWgGfV3p5bk9trGzla68jypygfnvMGtzIvYxWNP
	ErZcv6wImvnyuv9jy/acsYY0t7XuSV+STN37t5HbNGBwux7lXp9DeUsiHjTN80MKOv07WCKfoiP
	FEa0B6E0/9lS2i/YFJQG4Mzy/Ycnkc6uSHzLLaeKKkyWUb1hbUigbS9WArKtrmwsGPiWk2p2AxY
	5jerO4cPtYK55tHV7VWBwqaiefXV1sZGMEVX1AwuVhXVZOkn/LsF2uvftGqFc2EupktJLZJigNT
	ypvg6JbQUS3nJzyjHgXD2ZA0eD1s0W4Xl3YrDxd3GbIPrivxc7cY2
X-Received: by 2002:a05:622a:590c:b0:4b3:4fa9:4cd2 with SMTP id d75a77b69052e-4b77cca8d4emr39186161cf.33.1757673581487;
        Fri, 12 Sep 2025 03:39:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IElx+sIo2TyNNDSZKhdIXfRdT6OrkK5agLSxJeNhZFAzJExqCsm6/N6pZpW9c9ZnhxyWSL7dw==
X-Received: by 2002:a05:622a:590c:b0:4b3:4fa9:4cd2 with SMTP id d75a77b69052e-4b77cca8d4emr39185691cf.33.1757673581028;
        Fri, 12 Sep 2025 03:39:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e646135b0sm1042248e87.110.2025.09.12.03.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 03:39:40 -0700 (PDT)
Date: Fri, 12 Sep 2025 13:39:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 12/13] drm/msm/dp: move link-specific parsing from
 dp_panel to dp_link
Message-ID: <4kajb4imv4mvpf4bdzoqfw7f4qoqxsu3ca4pbgsunhxnortfig@kmsqgsj547hi>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-12-2702bdda14ed@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-12-2702bdda14ed@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c3f86e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=qgWfkWmIk_iXozLJbygA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: 7nw-VSV-KBO0fE6HcCNQcCsRnGaBrfyi
X-Proofpoint-ORIG-GUID: 7nw-VSV-KBO0fE6HcCNQcCsRnGaBrfyi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX5aBxpGuYLmXN
 g4f0MiXaKwvezW+fY3fWOlnpxchIiHyx+Mi31n2VZrNacr8Y+DJHGq/2q4x70nlAznMFqrj5JOq
 x524fuX3JiedyN7lUrlYXyBfTUSA/+EKtuIkHB8HFfIETYqwWCCkUzrRyEi84nyXfKVoYwQUvc3
 kQQUAcwnx287qovpL6JKs2X4HSbek7UQP7JDQVw/bspHaGER70bRlgdk7lEWjwM1V5TdIXpj36n
 QhLRXZ3k2t98Xn5Us5SbGS7DA8F3uD9Rv4ATKNGm+piadwKtDz5qqOp3WUhTb5LSX5RlK4Js/u2
 Fg+rjojkz/0n54P8OcB4iwhBmehs6j2WDN7Va9cDDE8WF6vNRK++I/d3aAH6IdvNF8gCJ6tPxi2
 cRD2cUji
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_033943_835564_CAB4BB36 
X-CRM114-Status: GOOD (  16.40  )
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

On Thu, Sep 11, 2025 at 10:55:09PM +0800, Xiangxu Yin wrote:
> Since max_dp_lanes and max_dp_link_rate are link-specific parameters, move
> their parsing from dp_panel to dp_link for better separation of concerns.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>

I thought that you've split all DP patches...

> ---
>  drivers/gpu/drm/msm/dp/dp_link.c  | 63 +++++++++++++++++++++++++++++++
>  drivers/gpu/drm/msm/dp/dp_link.h  |  4 ++
>  drivers/gpu/drm/msm/dp/dp_panel.c | 78 +++++----------------------------------
>  drivers/gpu/drm/msm/dp/dp_panel.h |  3 --
>  4 files changed, 76 insertions(+), 72 deletions(-)
> 
> @@ -1225,9 +1283,14 @@ struct msm_dp_link *msm_dp_link_get(struct device *dev, struct drm_dp_aux *aux)
>  		return ERR_PTR(-ENOMEM);
>  
>  	link->aux   = aux;
> +	link->dev   = dev;

It is only used during parsing of DT data. There is no need to store it
inside the struct.

With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


>  
>  	mutex_init(&link->psm_mutex);
>  	msm_dp_link = &link->msm_dp_link;
>  
> +	ret = msm_dp_link_parse_dt(msm_dp_link);
> +	if (ret)
> +		return ERR_PTR(ret);
> +
>  	return msm_dp_link;
>  }

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
