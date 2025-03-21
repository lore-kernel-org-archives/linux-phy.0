Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3CA1C36000
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 14:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWjKTVN3Av1+ZGCTS473IQqPJB21XZbFemt/jAZsv9s=; b=mfz8+dbmejTf1s
	+g3KxE/u1Lwyn47d+MuNrgXUzm9ptP+Me2X/AgIZVWaYWXjuJV1Hq6cNMmY5qxfVrLdqwm/J2etQf
	A3GxsKe6qoPXKP7UVHtstABh3k60UZxLMpj6luGRybkPMmxqHEUajNiBiPrJcT6H/f0PBpFfhyWsC
	cUge2O74c9bXyoGcG1UiKAY/aalIoaHVy3SDQE0SorMqOODiDcpEdJWKn+gQ0uvNT5yTTHCsvBD8B
	wLDHHbW6e1EG51q9G8iSnbvIAoiM8W9L6hpJex7BRqyYipmBBq4pDHfNRgi2i0hqQnA+zkgTglutr
	7bmVzj7q5cllzwaFRCFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvdIg-0000000F62L-2KJn;
	Fri, 21 Mar 2025 14:24:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvdBi-0000000F4Vo-2ZA2
	for linux-phy@lists.infradead.org;
	Fri, 21 Mar 2025 14:17:31 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LATDNk001580
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 14:17:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=O8rDG6mc90cpVD8APsXbzuEd
	d44KuoOwLvpTV3Smtis=; b=mbWFbcVsxJyNDBSxrw4EZss8r0tIgahU/BASCYmS
	XN7WM4ujs2W1Ev2+dp/h2z8q5FwVs5p51c2TZf2tUp3y+yFtw2BZuCC4Ub97itct
	p5IZIsAlWbCYLlV0s0N4dIcEjGoca1zWVCrrpCoiYaUFSagwmCB9ZyNWSCH4R03t
	x0rw78T00jCOW4UQtDHjy6yQHb46rA2mQGXyiRA4sNuut1BckZV9VQIt4iLJeCIN
	oWz/OHDhp85banjVwEcH5xiYsmffG/vphQqCvqGcmTxT6N0MqwYDvSk7XckD2gGb
	UXUQyAwBRCkU4gUz8f4JlFZ7tlOB1R+BV42QufwL+UhUAA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45g3sf67rb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 14:17:29 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c54e9f6e00so536460485a.0
        for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 07:17:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742566649; x=1743171449;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O8rDG6mc90cpVD8APsXbzuEdd44KuoOwLvpTV3Smtis=;
        b=OMbAzpzUFH62b55hYoJncSExqPVSO32aqOPjbJQ8BIesDxzNZiMiANmb/v86bi7Bcg
         ln8gis2bMIo/3RQdmhNuKtrEdeof2TtiXwFcAdBU6UxCgB7AGPrem9S1hp2qgHEnJeIm
         qspBqhYXzZy6nJtU3NJ8w36r40SGltcCRd2pUMvSw9hRroFLrrBtVLU76A1/eYrCXkk3
         W//B4QhNI74b2ez8yUZMixYM1MZShExgxAp25B+iaj+9npumGx3utLuOC4RgzeIp2nkM
         JNbbJ861L8174xhukEDBnpiGplwuZjqaSwhbysgTjAhhveN3o/yFx3WgcOP9wMcohaRT
         xoCA==
X-Forwarded-Encrypted: i=1; AJvYcCUpypXVyjfFt/1imsn/03qW5SixjFNQk3asAFzNr4D6vL+WHzRXpOOe6jIvoIOngSHIjdj6sBqIShA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzsDHxTkx/bl1KYW6+gwmfxcSJZcLJnwdNbkOLD94PRGlxdFy5x
	kN6xRftkilsAVHQ7PbNIbn036x4N8TlDNeYek69gSL6VwD2j7NxI8cwzcrE5M+1svcHaIVszkn3
	qHj3mH002MCXwdyjJE9naav495P4JbwxgD4IRZv7sVUnb0xJaTZWUhtMZnUWiVsGI
X-Gm-Gg: ASbGncvFkSXjW+Iu1N6eeWARU+dlm03G41Mge97s9IwzUSyTc4QITrpFqsW6J8SkLDI
	E6OLPROB2o0wCGmhV7GONk2VpxqruPMwmm753Mu9hwL9KrhfiKYF5PRx3lBZxyBXN0UgaH4chsJ
	6Ov80qdY2H0kXu6P8hWMDfqqm/blbWrCYghVcwLD9OdVtVJHq/5/COR88qV12vsE2u3/gCbW1mX
	sAhXat9AejNosAK6E1296+63uYWHK43S76mGSiSZrn5gL0qWdwhJUmu9RPXTc2+C4DDs2G/quJb
	Wtf6l76IZfO7xOC/lb5jXv880BcZzjQa9FSoZ+ZXIwnUN20d5L2QDnNC7uSlQByVmslff5+pYpQ
	HJeY=
X-Received: by 2002:a05:620a:3948:b0:7c5:6b46:e1f6 with SMTP id af79cd13be357-7c5b04e1a47mr1057149685a.1.1742566648721;
        Fri, 21 Mar 2025 07:17:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvRRIcP4NEyB+cyjpZHS6ssbbMaBbZ4WSFsTnEbRxypn2SHDAJVW5qIbAY4WpbAbHbZm7Rbw==
X-Received: by 2002:a05:620a:3948:b0:7c5:6b46:e1f6 with SMTP id af79cd13be357-7c5b04e1a47mr1057143885a.1.1742566648233;
        Fri, 21 Mar 2025 07:17:28 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad6468766sm200353e87.35.2025.03.21.07.17.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 07:17:26 -0700 (PDT)
Date: Fri, 21 Mar 2025 16:17:23 +0200
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
Subject: Re: [PATCH v3 04/10] phy: phy-snps-eusb2: refactor constructs names
Message-ID: <ftscdayi4uegv4bfzckytfrg44vi6f5wlvlhjqsh5nmgumrjx4@ur6rgxj5ixsj>
References: <20250321135854.1431375-1-ivo.ivanov.ivanov1@gmail.com>
 <20250321135854.1431375-5-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250321135854.1431375-5-ivo.ivanov.ivanov1@gmail.com>
X-Proofpoint-GUID: NBCgnOiprVLxtOzoWxirK2MQr7iwt8aM
X-Proofpoint-ORIG-GUID: NBCgnOiprVLxtOzoWxirK2MQr7iwt8aM
X-Authority-Analysis: v=2.4 cv=R9IDGcRX c=1 sm=1 tr=0 ts=67dd74f9 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=bmNeyW_Q0om-5_paTGoA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-20_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0 adultscore=0
 suspectscore=0 clxscore=1015 mlxscore=0 priorityscore=1501 malwarescore=0
 mlxlogscore=931 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_071730_770498_9793CE72 
X-CRM114-Status: GOOD (  14.22  )
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

On Fri, Mar 21, 2025 at 03:58:48PM +0200, Ivaylo Ivanov wrote:
> As the driver now resides outside the phy subdirectory under a different
> name, refactor all definitions, structures and functions to explicitly
> specify what code is Qualcomm-specific and what is not.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  drivers/phy/phy-snps-eusb2.c | 256 +++++++++++++++++------------------
>  1 file changed, 128 insertions(+), 128 deletions(-)
> 


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


>  
> -module_platform_driver(qcom_snps_eusb2_hsphy_driver);
> -MODULE_DESCRIPTION("Qualcomm SNPS eUSB2 HS PHY driver");
> +module_platform_driver(snps_eusb2_hsphy_driver);
> +MODULE_DESCRIPTION("SNPS eUSB2 HS PHY driver");

Nit: Synopsys

>  MODULE_LICENSE("GPL");
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
