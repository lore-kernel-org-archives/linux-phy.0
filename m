Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02FB0C36007
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 14:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXhexl813CqBZUURTuQG7H9DkAg9Tkm8U5tg+qruTJA=; b=ee+RofuHgylHVn
	f7DwG+gQK+eNij0hXWXLF1LhhRvWT2p6CF5fO+LhaYD6ZAvevz6a1iueNmdYRelmlBCNLLGSu51E6
	GcoYqL2x6dJA19pOcdZbRZ6K6hOjEdahA6W4aAzBcUq3YXXlJ44Qb4GF1Y52+2xLA5KLPQrC7oKo+
	0xv2SQA8Ln5QCiW0ZG3CHIDnpbk5bogXewiz7bX20wfQLxYwldJy9fWHXUZ1yFMax3GXF45LggLDQ
	3KnALuH+ehIUyneW7oFXgMPlrwFaY+i6krBf34kxKTQOSynZZSsM5DQVcOnxmsaT+tVZdSDfB+q8J
	kS6FulO97Vi+WrBP+ijQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvdFN-0000000F5Mt-37Dk;
	Fri, 21 Mar 2025 14:21:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvd9w-0000000F41S-2K2j
	for linux-phy@lists.infradead.org;
	Fri, 21 Mar 2025 14:15:41 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LCSlmF010713
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 14:15:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IygKvUSovqJjIcgBHkL5I8fd
	pvAkZ2upGcSD5Jix+nc=; b=iJTOldNn2Hujp/0G059Gy26ug4FclmrYmd8es9cq
	8K6TWDVA5odygD4qey/epN6oVcaw5LFZiG9lbyj0bRdmxwWsgOSeeSL7kplhRhBX
	jOre/1U3+4O7xg4IVT0uQWXP/Dt8UF0e+/MtlllSOi7fjeA4RnZHp2pcb5DmGZQF
	hQPzFT8IVuoPREIiX5PMrVsL/1hy6CtdpWbxbeM/r2B3/N/Zgg3amQUAyi0lCGEg
	MMrDVIfeFDHtkJkGSQVGOzuT4wJH6eb/Zdf/EP5Kkk2mq4mheGy1Cy0FQ69FpTKV
	Rt4BiyLLU0eGNCn/zPes5yN9OKWDeouak3r/qqi4UqJvkQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45h85e09bh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 14:15:39 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e913e1cf4aso49434166d6.2
        for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 07:15:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742566537; x=1743171337;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IygKvUSovqJjIcgBHkL5I8fdpvAkZ2upGcSD5Jix+nc=;
        b=uMztj8kqatvWBFhwQD8jPd+D0ZC65upMIrVLYEjzP00hVaRqAAKeEW3V90h3xvRNIv
         I03qhjrsRyZAgGfs5TGyEIzkAb35auvnog5hzU/PzWXCE8fnyqj4T4lHdRagk6IC8LfT
         bU6t/gBNROFtQ3HgPBOJ0UR/+Z9P821PFF7hVio6lYQ6nAlD2BR3FDBYaQM7md3vguTk
         vLafD86TtZVbJEWk8hZIP+p9p1nMoT8QsuO+C11+Z/3jjbRC9e5dUZyKwUNKoIwf98rj
         AH0bUIIKRGPAqZo16PPGZzN/FYoehHkKPVPAdI7VPPfzCpPb4ZuVr9wpNXvhv9Qh1j4X
         Wnuw==
X-Forwarded-Encrypted: i=1; AJvYcCWMmtkNn5eKSIuADgHLumIX7zaksEv1Hd5YTwGpN/iLvAKfW7mmoqXDG1eQXlFvBLofTTMHwAybPeA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwsrZmeqQIkf/Zj3fKMHghNbc7NQFNyp5Cxfu/1HNStbz0Tg+Os
	AzR4QcDgg+BGXcpxJ1RLxCqvaupP8DnPqhJ2zctCVZlG6O1VfxeoQVi3Bqm4cnKtq1v10fAb5qO
	7go1iOAxw9Upp0HrUCGrVdlcN3M4XwUIAXcgIMl225gvGx97qaY2ZAbyG3AfWYz7o
X-Gm-Gg: ASbGncvVohcJ49x68mxnIhs/aehLGzF3Xrq7haQwyF+c4ZR1zQtPLaLt2HqArlksgT9
	DfEl9mHAvQPzLFCylzKr40jWHf6184Xi6kjfb1Vb64uTVHkD6ODvom/1eVJgixxqb7q0eFOFTGQ
	zU+hYhRsrn00jT8FJtECW64VcQSbIu6/UoSZxEWXP1UdKm+wqXRpyHPMrquLENwd9xglDOnh3DM
	wPWa+Lh9KaSZCbdAWXKqLLJDRQlPexe8qsugQ+jPOOz0eid4tZ3U52aZP4Jla+4i5cRfWMBucWY
	b0MlygMkWjxDufiMk3XUBTXMbIQ73DxOLgxg8e1WD0EN2kW+4iDycdGke9XcD7WRJ87ZPziUQ6d
	W5Es=
X-Received: by 2002:ad4:5d6e:0:b0:6e8:fb92:dffa with SMTP id 6a1803df08f44-6eb3f2f5960mr61025096d6.25.1742566537081;
        Fri, 21 Mar 2025 07:15:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFN/n1Ojxb+W+fnWe4TwdIO9ZmKkhfBLlVD64bA7J5vncM0McnA+X9BWkDQCQmyd0kZxS+AA==
X-Received: by 2002:ad4:5d6e:0:b0:6e8:fb92:dffa with SMTP id 6a1803df08f44-6eb3f2f5960mr61024326d6.25.1742566536504;
        Fri, 21 Mar 2025 07:15:36 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30d7d8f3c93sm2661681fa.82.2025.03.21.07.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 07:15:35 -0700 (PDT)
Date: Fri, 21 Mar 2025 16:15:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v3 03/10] phy: move phy-qcom-snps-eusb2 out of its vendor
 sub-directory
Message-ID: <vzlylhf5r5xy4ip4hkcolt3iye4stiabzxc4jwdzenbhll45ct@hx5gwpzrd33y>
References: <20250321135854.1431375-1-ivo.ivanov.ivanov1@gmail.com>
 <20250321135854.1431375-4-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250321135854.1431375-4-ivo.ivanov.ivanov1@gmail.com>
X-Proofpoint-GUID: uMGXXgYvZ3HewPypsEZ5nGsRdsf0BAO0
X-Proofpoint-ORIG-GUID: uMGXXgYvZ3HewPypsEZ5nGsRdsf0BAO0
X-Authority-Analysis: v=2.4 cv=LKpmQIW9 c=1 sm=1 tr=0 ts=67dd748b cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=pGLkceISAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=N56nwJYzXhOJYq9YhE8A:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-20_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 phishscore=0 malwarescore=0 suspectscore=0 mlxscore=0 priorityscore=1501
 spamscore=0 mlxlogscore=999 lowpriorityscore=0 clxscore=1015 bulkscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_071540_713737_210708CE 
X-CRM114-Status: GOOD (  16.09  )
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

On Fri, Mar 21, 2025 at 03:58:47PM +0200, Ivaylo Ivanov wrote:
> As not only Qualcomm, but also Samsung is using the Synopsys eUSB2 IP
> (albeit with a different register layout) in their newer SoCs, move the
> driver out of its vendor sub-directory and rename it to phy-snps-eusb2.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Please fix the order of the tags. SoB should come after Suggested-by
(and usually it is the last one).

> ---
>  drivers/phy/Kconfig                                      | 8 ++++++++
>  drivers/phy/Makefile                                     | 1 +
>  .../{qualcomm/phy-qcom-snps-eusb2.c => phy-snps-eusb2.c} | 0
>  drivers/phy/qualcomm/Kconfig                             | 9 ---------
>  drivers/phy/qualcomm/Makefile                            | 1 -
>  5 files changed, 9 insertions(+), 10 deletions(-)
>  rename drivers/phy/{qualcomm/phy-qcom-snps-eusb2.c => phy-snps-eusb2.c} (100%)

With that fixed:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
