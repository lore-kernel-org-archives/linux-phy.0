Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B807CC36001
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 15:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EpWxGjiFBcYVAVb7YppLl3ADi1ToOgKze2O95p6VvR4=; b=BpVj6IZvYUr6aO
	BZTPwOBfNMQTEMCNAUysly/3IplXrOd8ix2+phY2SGdfpo0xyIS6KLiGiwuQgYBH9L3UYYx3507U5
	vZRYAwG7WvQXuxYKFRMQQkQeQwg3KQ4PgE9B6Z7ZOQuBIi/GxH2DFXIjUn9gC5dyrFWSOcC2hNMJf
	7rlWynk46vV5cWyJKTRqQCG4t1YqOZKnRKVS1tTR9hgg423OBpp5smqJE08Sx/tW/HIAPZ4mgb6jb
	W6UxpLj+M44DmzL050yjZB0SJy9gqEwW0JWaTTNY53DkzdAETX9gXQO2abUY3l+TPpKRYY5HdnNL+
	L3Jd/kmP/8d2JeBi8bRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tve5h-0000000FGo1-28FM;
	Fri, 21 Mar 2025 15:15:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tve3z-0000000FGWU-1uTk
	for linux-phy@lists.infradead.org;
	Fri, 21 Mar 2025 15:13:37 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LAThVj032645
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 15:13:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xMZqwFdk5KSv8eArmzuOQClA
	gGlpgEE5tdbkxdpxDLQ=; b=h/6WsxSIpkBW/1vpvBD4bsmbgrPtvlQotX2E+c3P
	l6lUuTmlKhEoKuu1aFsMZLe+kZd72mFSYJyZQxtw5NnuS6SawRGqz+0sL31k5xqE
	YCTHuQKTtQrBVWupRyfq7nOGIUd5YKJbkHBByxPZWBHO31EF+wUbc0fUDGP9Ync8
	4b60IeJb8RzC4RQj6hqN2dITSuYivsSbTKi6Ev7lVfom1Rjc9UxtSP8SshRsyjuV
	9bUcTkeDeFhtQpAZAh/wJwIrUFMXWpBPmIHlB5W8GEZc2wJELyVkT/P7D9uPfoIm
	SnmSU5CEHREX/2k6N1Q7QH9QsXPs7L8AhgXeTIg1RBw6xg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45gt5kjj8e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 15:13:34 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8f6443ed5so52917006d6.1
        for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 08:13:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742570013; x=1743174813;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xMZqwFdk5KSv8eArmzuOQClAgGlpgEE5tdbkxdpxDLQ=;
        b=Jhh7PvKLFiXm7Kt0VzuUDM0mYY/5jq5FTxSLLUseSvPXRGJVpcw+WL/Pz1unXdb3Aw
         Jt360Qsw+vmRZxkcihi3nWvWfCeYo5OlNoMEkImE+JCQFy5x4JLmXNGY+w2gIYjeqYFQ
         V07oF52NNC/VWU4rO+CDVHYCL0CK8CFhzi8x3OHrPpq4DcyKlp4ywoleZHhzVlLjRjxR
         DNE57BJNlCUcpt8OKgQ+HTYQymDRw77QQpZAI2QgkVu6nqdUH5RUpJNLWGLNjdUptKyU
         TyarLGwHGNORr/hhgewKf9kyVLtgav4GKtMbX6+1d7Dutuncxg2AjQXgd1Y/bdoAQT4b
         52Tw==
X-Forwarded-Encrypted: i=1; AJvYcCUmggnIw0rtL3Gy6aViRozhunmsC8hPb42bL9iy7VTCiVM/pY/WWImxjQo+QqkRsk+Yo6Gl1WzDQlI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyjWl5fNQZb+wIkyibMBGiNi+Lnv+YYmN2kfYJaBWhjNevKUZUP
	lLMRv+iMNLIiJ6gQU/spjScCWaPFmEYF8COA91gpSUm2JAuwMJiHcuMMyhbEHYc0t8N5VQrlPG+
	rcDu4FNb40pSnJTZ2fWiqVMh+bVQGz/dgxaBAg4hIolMBxPaSHhVDfQiGWCdjm/vCEb9xlZEkjE
	k=
X-Gm-Gg: ASbGncvRbLmgtsNO35TUJqF9mFEbq3GXJN6XccmQK2ETFpIbV4orpmMITbWwgmBxhRw
	AC87ySdrVuCNuFZz8g1UDA6hpRTSEGY7SNFVda6PmVeUEgsue+areknbTOSMsBTuhmuZEEPnAQ9
	QYE0Fsn/ls4wf9K/QTosTp+DdsSRL1rJBhS6QikxoOG8RkKHJqU0KYYyGcqhV6Z3RdvZ8slzKFZ
	FZbv0aKVPcE7VvHbxmYd1/iHG5CReUiCB99yYSa9ZK0gDEu7LFwX77tpU6TgcOGsqOj4axp0jor
	buS7eBI0JCy3SPzunsOy6Dr3h0urc3vUn6mEL8aXew3H2HCT7Wz8CBbEZnYWz+Lad1Ji7sQTBHN
	L1Q8=
X-Received: by 2002:a05:6214:2504:b0:6e4:5a38:dd0f with SMTP id 6a1803df08f44-6eb348e09bdmr117295156d6.4.1742570013188;
        Fri, 21 Mar 2025 08:13:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEV2qUsrf8Ji8k4NQXXY0QZJ3uWE9bmcYzJL0crOi3WG2aGplZZOmwLfnoE3lH8ycAUmOl/vQ==
X-Received: by 2002:a05:6214:2504:b0:6e4:5a38:dd0f with SMTP id 6a1803df08f44-6eb348e09bdmr117294576d6.4.1742570012721;
        Fri, 21 Mar 2025 08:13:32 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30d7d8f4f79sm2679021fa.77.2025.03.21.08.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 08:13:31 -0700 (PDT)
Date: Fri, 21 Mar 2025 17:13:29 +0200
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
Subject: Re: [PATCH v3 06/10] phy: phy-snps-eusb2: make repeater optional
Message-ID: <m6uabp57a2kskyspnrz65frcf7dqkljmdeffupqkcni5qbgya7@cwmdcac5eh52>
References: <20250321135854.1431375-1-ivo.ivanov.ivanov1@gmail.com>
 <20250321135854.1431375-7-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250321135854.1431375-7-ivo.ivanov.ivanov1@gmail.com>
X-Proofpoint-GUID: qxI-gjTbLhiYijR_Qo7mkBIWZl9Ta5E6
X-Proofpoint-ORIG-GUID: qxI-gjTbLhiYijR_Qo7mkBIWZl9Ta5E6
X-Authority-Analysis: v=2.4 cv=PsuTbxM3 c=1 sm=1 tr=0 ts=67dd821e cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=pGLkceISAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=zXIZtLy0MoHwQ1NDvSoA:9 a=CjuIK1q_8ugA:10
 a=zZCYzV9kfG8A:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 adultscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0 impostorscore=0
 mlxlogscore=780 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_081335_513558_C2E21EB6 
X-CRM114-Status: GOOD (  20.08  )
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

On Fri, Mar 21, 2025 at 03:58:50PM +0200, Ivaylo Ivanov wrote:
> As described in the device tree bindings, it's not necessary for the
> SNPS eUSB2 phy to be connected to a repeater. In configurations where
> there are such instances, the driver probing fails and the usb
> controller does not work.
> 
> Make the repeater optional to avoid that, which also lets us use
> the eUSB2 phy when it's connected to a repeater that is not configurable
> by the kernel (for example it's missing a driver), as long as it has
> been configured beforehand (usually by the bootloader).
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Acked-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/phy-snps-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
