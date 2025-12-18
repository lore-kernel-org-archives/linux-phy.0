Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B526D68BC9
	for <linux-phy@archiver.kernel.org>; Thu, 18 Dec 2025 01:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lqLTcTo9uc81mLDHE8sVQoCAIGwT5cWEGe8iQh2yfe0=; b=2dCBB3EJ/UOwyn
	0piAe9Uynti7S7b5dPil6nD6ffGXDENG0kXSubfKwzCloQFe+cOJR9Byasib+/nATmoogtfU4aNvS
	DLCWZMmvrHHEFvbgAb5/7H/7/SX8GeTfE13yyf0FWkM6XrgmnPlLD5uDfMshNojhYN5qTxV8tY34I
	Ds6XDKNKzjRIf8kQou6EHtZWE8fYC1RN8MLi2GOX9u/IdqVZmmSAD75vYUiBx+gFAU9fNtKsdP33c
	2EhIrqGPydncwIMTK2W82b0odKT5Cs+6Jg704rv5LFfzU3LKdGIXQPwvhWbZLX5y6MWMPw3gSZBYT
	rwgAZZmaMQZ3kpSwRJ7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW2bN-00000007eAj-0NbO;
	Thu, 18 Dec 2025 01:14:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW2bK-00000007eAF-0MfJ
	for linux-phy@lists.infradead.org;
	Thu, 18 Dec 2025 01:14:44 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHKV1ah4092934
	for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 01:14:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HQnr3dzmL4d8EP8vVA2TzDK3
	LoJt3uHQ9Cnt1cjFu9s=; b=S8k3hqd4uhaxomb2Pxw2qpCtOf78OiJKVQxZDBSI
	XPyJ+ailriSyRU0OZ7LgsPoEdrVBau/NzUBbDeWUErmU+1gzta4ot4bTKUXLlDQV
	tYGXq4yI9zht6clWBF4Dk9RT8ImzJ2EUka6yQ/9wvJQ5lqMedzSSV2aEQs7e3687
	yPixbaIJHITeV6et36bFxVFOjZpwFT2ihmTZhoHG405AQGJwEhWdSY0Tc9xEtLBo
	bNNq5KgGRparYWgLaGg838KK44+uxr/9d8UoJIVqIyJ3k3k6mOgHWjUyxf5O+Kj+
	jjV1DlS0MlkwFxE0hMDj5UYx77HQEkZEczEwX5To4NkmuQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b43mb0mme-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 18 Dec 2025 01:14:40 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed7591799eso2558471cf.0
        for <linux-phy@lists.infradead.org>; Wed, 17 Dec 2025 17:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766020480; x=1766625280; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HQnr3dzmL4d8EP8vVA2TzDK3LoJt3uHQ9Cnt1cjFu9s=;
        b=R1dfP3/plVXkN9WYSf9Ci5VMxokNgNcIYrchiIYEf9P6iRWdM0SVmkoAGFXoral6Bp
         0H7Kfke+ysf3gEisSL/veq9hdtPBk+TKY6CbCjnynvK2CKQVL2ZUE8Pra5XqSbrvsO7T
         HMUZjIeALejzsEKPaG1fp8T3sIS8G40lf+3XlWALIToc/M4A36lg8Cjl3wz0w8wQ5QzV
         kX+cmKE4yUE/itu0tM/NXhoK2jLeNT6iKejR8yvtepN5xR7L4x/bQcQOK42RSeAgLpw2
         89B2Y+MAaGI6JDkhhKqVZ1w8QTEf4/qJnKBu2x+cVQAQNphoJwBot802hKCc8dybD4gd
         bjwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766020480; x=1766625280;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HQnr3dzmL4d8EP8vVA2TzDK3LoJt3uHQ9Cnt1cjFu9s=;
        b=wvFS+CIKirPrxZ+HhFvRC5airpyOHjjo0HsZjc/ciUHe+skyX63s80Bq27V4Rq6aQu
         Whv2tP+0fTjlwTEsgSABxmh9nfB56yoW7bTAJ+EIhD/KDbg4Mt4nReDyRQa7plG3Gi+a
         wUFjcbwiy3MHPwnHOm9fF3S1iWdss2wQKq44GbcAWUE71SKatEbwOcIemnuSpTDBqnKW
         Y5pxSyZgBxOPw3ytZXDV/ZXl6IfECMhKUvS5tO5IZm42b28RT/znaferxK83JiW2SyPN
         5qrluoN/5gzgICG8B8lxrJBV2Pq3b0/EamPEGF1LH1Bvo7qdMDdCBhrwV6wqrcjgPO4/
         rsAQ==
X-Forwarded-Encrypted: i=1; AJvYcCW90ifanx36yctavDKp9osNyOa8bb9dDLTQhzxp8JGX/SoH4otZcW1t6ud54YVOry3fPzfxijQB8jU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/Tz8QAYsKYXsQoDjnJqJ3vsEAYNyF/9g8uk2VB8LJ2FsGgKYr
	PEl7kMMesFGgN4J+tzFQ8X5wpBrxIJj++pOY5AMHicnFk5hwmZu7qyj1435w0eZd6SYD12cT1AL
	cHOUuNVKfRtX5Eiyu5d3BwhDV5OOU0U4nwqUGMp4rB+YKck4vGfI4XSVqJPOSxB8Q3RRk
X-Gm-Gg: AY/fxX4mJSfu7joQG0KpAnb/czzM2Kh0VuJ+HH6v8ftUiEt+ZeJ4mxqHU/JiCuSSOwi
	sSt311o5p37iKCV/oInA03XeOqzUowBlkyD6TuS+WLupRoyFbCmKGD/J9NuHCZKZqnalvRpz8bE
	yNbtntBhvJoCAYN9QGsL6vYQw9zaDAWnmCsq78r9SIKuJdPtWIUaRhACZtC10q3YvYBQGPbFEVY
	UNowWofOHSTw9dm5QfLieFbvAFR9T81G5SsR6uRRQrqZE2IJuKCVyhN4M3xi/UfFvsZlSRQH5kj
	GbJzmdfK8c43J+3CExllF4DPKzSOiGVm5jbZjIg9ZgFWppe+xrhTvDXDN6wOvtCGVEYe1sTrEQl
	mLr8+ywpBWA/GuwFsO3Xjb4fUSYgrKftxTAeNLfJTYiyVX2baYqaWeQjplXDe0/F7VDP9WIr1fS
	gTe8xoX0nyPq2kthV2QhzyUe4=
X-Received: by 2002:ac8:5c88:0:b0:4ee:4a3a:bd11 with SMTP id d75a77b69052e-4f1d05ee877mr295118521cf.64.1766020480239;
        Wed, 17 Dec 2025 17:14:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0hnMu6EmldPN0mpKn86EDn4Bb/GKbcC5RxVnIK5DHmW2atir2ty/CdZ7JauTHi/P4Sz3cVg==
X-Received: by 2002:ac8:5c88:0:b0:4ee:4a3a:bd11 with SMTP id d75a77b69052e-4f1d05ee877mr295118141cf.64.1766020479729;
        Wed, 17 Dec 2025 17:14:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-381134f515fsm3878121fa.16.2025.12.17.17.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 17:14:37 -0800 (PST)
Date: Thu, 18 Dec 2025 03:14:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH v2 2/2] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen4x2 PHY
Message-ID: <kpcdekfcs5zmlptmddykaqcros4eiclya75u6fpxhiigc6l5aj@inwwh7t2rp6j>
References: <20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com>
 <20251216-phy-qcom-pcie-add-glymur-v2-2-566a75672599@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251216-phy-qcom-pcie-add-glymur-v2-2-566a75672599@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 7o2fyqv6eM1PQQlm903YfyO3kfGEQJYo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDAwNyBTYWx0ZWRfXwYHl1iphCcUJ
 XpUHUL4PQVAtJVpWbXykaFDgXao6WyspHTwE+6KMP6pNR3JIzRX047gJwMwQY9xMHov1h8rVsRK
 FLq5rfyFVkttqzxoxQyI9FdoXK02DYiHGid0JbtxGhBGG9WmNezVhUkWV8TgvENQ85K/PD4wnrA
 CcY63fsfAVzJIkcAImULbSlEbyPy0+BEZANdOrBAdQK8ogL1Im1lQWDoo3vt5rCg+LgSzthjf6M
 C69jbHb+BPr6Y50o6DQDug6aa4PUcVBZuXP/M3AEnD3cEnD2waIjsoETV0LzUcDq2Z+nzDPBIk1
 wK4qt1g3v3G9WSuPYj5rBK3F65L5P2XP8v8LGhmlk7C/ToqosuBoKpxUxH23hhU1i+gq631pEPr
 OozkloqX09Y1bH3GUFshUc7NQar7Hg==
X-Authority-Analysis: v=2.4 cv=NPHYOk6g c=1 sm=1 tr=0 ts=69435581 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=lwC1aLARxv6c6NPjX70A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 7o2fyqv6eM1PQQlm903YfyO3kfGEQJYo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0 clxscore=1015
 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_171442_243262_89C2F9BD 
X-CRM114-Status: GOOD (  13.05  )
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

On Tue, Dec 16, 2025 at 10:25:05AM +0200, Abel Vesa wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> Glymur platform has two Gen4 2-lanes controllers, the fourth and
> sixth instances. Add support for their PHYs.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 34 ++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
