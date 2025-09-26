Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19B3CCAC5BB
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xg87wOKoBeVwr/vuo3x0x4nn1ijBZDuhtfY0uCUyiII=; b=25yuoP5HtFlvs8
	jWMEITyM3/c/Yw4VT0xTjD6YDF/i+iGomTIlMDqts1NbrUyXz7udZsZ/U2wQ4hd8pXiR2w9v3zJdE
	lLHrG9ke9cVDmWwHwOC0FC+3G+7z3vuENL6XgOb9SoU0gqx7tcpsSVXbIlrzg7WXDuErpYOoBMndx
	Mtzc9a8wXEuseOi9BdA75DECTN5TtjIQaB4AspWSQ5RQPR5VQhMn/nvRHEF8m+f1h16ZNX00K99dm
	6B8rMojfBVfbZ5UbQ2v+O/Z1MMhH37Mvh847vuE6vj05XZLG7V6KljvEIeo5F6PrOJhXI79m4gsuC
	+IqJTzDeU18VuDBNnWGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2Gvs-000000051hL-2bfR;
	Fri, 26 Sep 2025 22:28:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2Gvp-000000051fo-3opE
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 22:28:51 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58QEWuJV017420
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 22:28:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MRd4LCd4GH7g/51mFAw6JfnX
	VcEmlPTkPoanPe5h3Qs=; b=Cog++oYctCGSML4DQ9CepK3CbQKraJJREoPOW7L+
	P6nlebop8i2Gg+Z7NpvB9XoecTqbAR4SNPm07NSxFoMdIxzCl7TJ+LIekC7v1bZQ
	C7Xn3fy9Aol3FlBf49Rs2fcDIGMvXtoZslAd/y2ozIHeVkrUJQQac8+lDKktKw++
	VRgw0L96p3NZ9wm67DkAwhXpMmfIFbFaymnDt2BKk1Ke1K6YJC+1oP+J5sADDrth
	dVm+1s1mNdaQ8FvyqhV9/GwKiSQQoIqsRoIHAedZWFbOTgsX980W620J7wlezL1C
	RrXFAidsptbUW0z0H2hTj3ssLTq/IiejHp3vTDA/zZjEOQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49dt3g9kv9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 22:28:48 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ddc5a484c9so27451051cf.1
        for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 15:28:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758925728; x=1759530528;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MRd4LCd4GH7g/51mFAw6JfnXVcEmlPTkPoanPe5h3Qs=;
        b=Za2juN4h8uRLgUhtdQFBk05TrGHFe7qoskbuSIHSOTEj5j5JT7pt8KBKyGEbio99Xk
         N9Mw2+tLFwvRO5YR3TNyJZXyxejWvnL9CUHi3piE4XFReKJ1PDrYljDjICG49vVKvKdN
         2Y0pLcD9xGR45HbaLsbylpgc99shsv811tc9ncTiU51Ksm/UVx/G7mjbT4jc+dBgXEZc
         Ku1bwQbyg3sN0NrkNdFTvJtoX9yfrF3jErb0L/zOzq/je79wMu9FNsZ9xMa4nIxmzfRh
         FfClhqCprKACeev6TAjbsZNMzN6M1SQPo4/53CVZfvu3msD1PHHhrN1xk4UQabdbTIbc
         LI1Q==
X-Forwarded-Encrypted: i=1; AJvYcCX9GqT8WfVFeOfy7iVdRvY7A9um9NKcq3F4pkuJeALa80LHvQ9DYmRfy/N7Wor9aDZY3IQqT6N08is=@lists.infradead.org
X-Gm-Message-State: AOJu0YzGN0F+j+16AuwM8oyb8l+Ro5WMCtVlLh52MBYpOdclI7Zy8zlM
	9knf3Ki3n/FM6icJVVylfOmAI5P+Lepg+X+2twcEaFsIQpqkDfZy2J7llgFXjPmwUArtjNx5fLg
	elFQ51dW+B+H+VG9JH7HzQrTO0RfOI825imCdYt4Fe5+BdQ33Enr9NhXYWNUiSCu8Fa7k
X-Gm-Gg: ASbGncsnqYM3HiIRG/z6xBygWEU711a7EACykI1EW4mGknqmpYzImvXaG7BcXuK4Ur5
	5eG7IOJpt+VCPbQQv538GbSTNrLA90fKtnYyR/JoPiLOWkDC4IWelPyvHNl2UgIspiIt1DNEzn9
	vYOc7ZomDBOcpsnsbP59PUOMMXz7nKeal7R2NXrryaZq0tNG9dDFHuVGCqOeQxiyO3JNNYmsiIN
	GIermYjc8OJzAJwFEO8PKUmG7i0R8KbwAv/Br5k3nQ/LYKvJwO48vne/pkxCJp7SIgR4OFtYAhH
	G8VBYOG8NJvFrhqiDQ7eE9rMKrAoYFMMHcnJy/U6h1+lBvhWXKe/Zg5XPHtomeomwGO2m+WtfK/
	WSlCrlNvVuGNOXx/BMFxs7DAbzaPJvnY9JV7NZmi4RdRSaH03gF+Q
X-Received: by 2002:a05:622a:a956:10b0:4b4:8dfb:33c3 with SMTP id d75a77b69052e-4dae3c29955mr91598131cf.59.1758925728012;
        Fri, 26 Sep 2025 15:28:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECT+nuGAx7AybGioU3MTy0w4rerMEkx4bs7/aNnHMDuso1+UFEquoAeyhJO8yc6dvhGeykNw==
X-Received: by 2002:a05:622a:a956:10b0:4b4:8dfb:33c3 with SMTP id d75a77b69052e-4dae3c29955mr91597971cf.59.1758925727541;
        Fri, 26 Sep 2025 15:28:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313430dd5sm2149171e87.24.2025.09.26.15.28.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 15:28:45 -0700 (PDT)
Date: Sat, 27 Sep 2025 01:28:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
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
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v7 12/14] phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY
 config and DP mode support
Message-ID: <yuklvnhgq3q5ddeakv3pmt4iq7jaw6csccpzamxfgcdcwguy5g@t5or6bzrwwoc>
References: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
 <20250926-add-displayport-support-for-qcs615-platform-v7-12-dc5edaac6c2b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250926-add-displayport-support-for-qcs615-platform-v7-12-dc5edaac6c2b@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=df6NHHXe c=1 sm=1 tr=0 ts=68d713a0 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=hsSiBWVQevx2fRdbtS8A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: Hdvzd8jfLXCuPZWPLz33Sh6cl4B8WEl3
X-Proofpoint-GUID: Hdvzd8jfLXCuPZWPLz33Sh6cl4B8WEl3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI2MDEwNiBTYWx0ZWRfX6ZeyWmkHEm7A
 lFqa7am3nzR32JEE/nnqDgYZYUQPHtDBxKwzM0NcjQRhZTZEXGHNuIB0m5lNvDt36kVPBKoT5BD
 7sVm2dRE3ZN6rp9di+jo6/wW/5+wh31e698jsktIrBr096/KX2x9fY35oROmAUTHN4muEgQkRtn
 o3A3F0XHgua/wDwvTNdfIrPRpc8aYVWKFdhc85AumWkQ2W4mMvobgliop8gWbo+jYVldz2Vhty6
 dacFVk1CSal/S3co87+aNIlOA/0Qpz+e7AFD8Jz8xLzelcPBexfPA5UahtGEqrHRaQc2BdCBsHr
 J2acdU5UKiALz5k/LUOU/tuuASsitW5gvCNi6mk+GDODr098kq0BKD4dcHE2Z/zBUeVid0dr6EN
 3kb9L3IAdHa8aNKm2Xc+EMzQIb8nuQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_08,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509260106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_152850_074762_3D3D6E72 
X-CRM114-Status: GOOD (  12.21  )
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

On Fri, Sep 26, 2025 at 03:25:48PM +0800, Xiangxu Yin wrote:
> Add QCS615-specific configuration for USB/DP PHY, including DP init
> routines, voltage swing tables, and platform data. Add compatible
> "qcs615-qmp-usb3-dp-phy".
> 
> Note: SW_PORTSELECT handling for orientation flip is not implemented
> due to QCS615 fixed-orientation design and non-standard lane mapping.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 413 +++++++++++++++++++++++++++++++
>  1 file changed, 413 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
