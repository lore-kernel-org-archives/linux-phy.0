Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC93FD2CE17
	for <linux-phy@archiver.kernel.org>; Wed, 10 Dec 2025 04:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgEqlLpdQWZaUMPWd4UC4+0rfsmDadjpWzC3CvCTCCY=; b=iU4rIdRDw9lVcc
	Gj8ejb9hVZ4tsgjaL6uf90BNwb/nS+cfmSvMTtlgS7Uls/PqpM/ysmOqMyGmaMcZsrUVg72Se9QGF
	TaxgLTxyjMg8KRpyKEwl3ThYiyllJ0EjrZUpow4AHlZJVl0SoXiCNYFDaB/Lhvu8ao7/uIfg22wqQ
	/k5r6nucgby5LEpUZFnT1Pde3jYdhl2vcASr2bsNHIJluChiUDybNwWNm9+vrOa2Q24S6w8r6/XfE
	DNGPHF+X6vFlOIo/QtZ0KfOuvd858tDY2FskAz5rkeo9yHafJfwEz9Zp0U8pl/2Vhr2cq6vhUt56i
	HJUtwXeMDIFz98V3h+CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTBSK-0000000F5BT-28v7;
	Wed, 10 Dec 2025 04:05:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTBSI-0000000F5B5-2GaM
	for linux-phy@lists.infradead.org;
	Wed, 10 Dec 2025 04:05:35 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA3LHAo1747653
	for <linux-phy@lists.infradead.org>; Wed, 10 Dec 2025 04:05:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BaIaRANy3uqkRwMb/m3PyK/b
	+TpFVtVKhaShgO/WNgs=; b=OqCGoGs1J9YjOB6IR9+X/KbZ87o35AwVJOD40MOI
	ojMQm9YRXKf1GfNN6Hbx5navLzkS9TWpKrqeUEbPfmSJYUFQ9EPCA4do8btHVgGw
	W5hoXl74Y8HhrT8tAE1c8HXpHrolHCw1Ko/KEJCjlkmkWSjss2+bfn3v/Z8cvlRq
	btxzqFDeQnXeX1WyKbXOCojq3zqOFLrtSBamFV/E0Xb7Xjb+nhyF36IpABC2ITE1
	ey2D6IJYa/yvxh48cnw4JBoj9HvXi0e9dDbeyMxLyk/bbAbdgrGyjDqC/KzTNEFr
	v+Dnkb6l9/9ERO5qeGcc+r4tIK1ZgEvfs0DpUQoGRfUjSw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axvm693k0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Dec 2025 04:05:33 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee3dfe072dso144688891cf.2
        for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 20:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765339533; x=1765944333; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BaIaRANy3uqkRwMb/m3PyK/b+TpFVtVKhaShgO/WNgs=;
        b=P6lxBDpf8EXhPSq48+DjY1sU1LIbUuU9W/qrApWt7CTo41otyJ6SzplnpuCRzCyPV9
         5Z44slQCeArm/a1p1aGO78TpzXthTWovBTWnGtNEzQke9F9aX0kk+2O0NAFIZhMPyYrn
         T2Q2CwdLuTQSXw912mAH5vIpZ6QWVS9MGBI/3ZlzEBg0zVojQva9rq5HVlk90HsdU7hV
         qjEG0aeWHkw8mT+zA79SCWo9dLXdG/C2uC2Jq0h1pzKgTpvv2Hjx/ApilBTHp7Q/R7nd
         6Z9yEaSVF4FP5z66fNJEqsoeNAcF66sWE82Y+ckW37MgyfRO5ySYe/44aQh9NMVYQ+TN
         zIzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765339533; x=1765944333;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BaIaRANy3uqkRwMb/m3PyK/b+TpFVtVKhaShgO/WNgs=;
        b=weNq+v37RmDq5GO61QMxtPWzioCJUeeh8SVCYOBXs1pfu6dM9wFyv/VdUTLN135/+m
         Vyr0nIRiZG6bHUqtDvLei1pOUwvUvmHMJ/ACPOng7FlI+BbJ8xeB4XVwqNdZW/nH80uL
         c4PP6ZSfgAZJRCQBarfTpBfEEzYk4iJnDAqe//yTCjhgYd+CN4TRNvDHKfwLz/F9faN3
         VD0u3N6/BmMAH9FGZGDrAe4T6Ih0+VbKHSoQzbnyTCwXdS0jNMIdnpD2gyETzrFO7Z4L
         /3F8oELH5wELk9iaghTvLFDDyq2g4PvZIz4Lvyd5OHTXDM4UIQnm5S7IpAVh/brtsiJ3
         fDNQ==
X-Forwarded-Encrypted: i=1; AJvYcCX56PTo3LCL8zdG7DIprWXSkCDZFFbRud9IFz0ZIIZhdC83ci09rpJ/pEKinePkVERQan6irNdvG8A=@lists.infradead.org
X-Gm-Message-State: AOJu0YwGZ6RmINLwAd9BnQDdPWjpkRb0pBsQ4PBgaq+/PFyTylOwIkQN
	iu8WGdPBOegN0Jal7oBKSaCY7hdwD0hlybZLfvYE09yRftJ43N7PcjtesSwEizBqPg+kW5mmWHZ
	sW/zMH+Eo98t/Kjhse7siiyhiNRu5TKoNa2gpCjjRemByf9L/P5ju/40opWDYLW/raGHt
X-Gm-Gg: ASbGncuXCod0dsq5hWJLZmQ5UigKpQ5ZIp0ssOQY7TZpu4LBzjL7W6OYV+YyBsdaJak
	tRL2KbI9EapZpCW3tSfuIUTK3AS9MoGXJIrN0GpF8RTPG7vMPy+Ftl6nA6LU0FvDs2bYdJSjDgJ
	15Nbt0mWrIs79P9SHqFyZ9RpQGPZ0ExeBhxnHLgUQ3zPA1Vt5NgtPBxX4b4CsXX83U3WccyUNqs
	nqTIZHCmouSd9I5jWbs6nKs7VwOZmspXbts7KES6Y9W8yyLPOd6gxaFy2KaKUv6FB0VwWCxF7dj
	rfE1Dwstq2snxWPXnzd/uoIQ9pnWjVUjt8dDkQpcmJhNMnQkdRJw2fiGcn2vrAxI6lo9V4W0T3D
	wzSvezUdcLhxhDZfUzUXhUWHcQoYbJnWTswm+OxdGiArAKo4b4u2auBZVVfJeQwCd73FcluWhs6
	C/kCluN+NO815V+x28nkyK2cQ=
X-Received: by 2002:a05:622a:1990:b0:4eb:9ea0:cc3b with SMTP id d75a77b69052e-4f1b1a31be3mr13947571cf.11.1765339532865;
        Tue, 09 Dec 2025 20:05:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHkHSfkrOLAxJ5L1yij91ofOJjggiNdYtSat5qOrz5N2u0warmpPcwiROaiBMBHLGo/LWAr9Q==
X-Received: by 2002:a05:622a:1990:b0:4eb:9ea0:cc3b with SMTP id d75a77b69052e-4f1b1a31be3mr13947351cf.11.1765339532485;
        Tue, 09 Dec 2025 20:05:32 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b24730sm5940027e87.33.2025.12.09.20.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 20:05:31 -0800 (PST)
Date: Wed, 10 Dec 2025 06:05:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        vkoul@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH v8 9/9] phy: qualcomm: qmp-combo: Add DP offsets and
 settings for Glymur platforms
Message-ID: <ukl7rhthpfz5pw7pdeacplnaybq7txrkcnji5v5md6lazkw5bm@in5q3lilm5ug>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
 <20251209-linux-next-12825-v8-9-42133596bda0@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251209-linux-next-12825-v8-9-42133596bda0@oss.qualcomm.com>
X-Proofpoint-GUID: wXmapVm0JGNVe1LpBdEFyd1BUz36nPcD
X-Proofpoint-ORIG-GUID: wXmapVm0JGNVe1LpBdEFyd1BUz36nPcD
X-Authority-Analysis: v=2.4 cv=Ztbg6t7G c=1 sm=1 tr=0 ts=6938f18d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=2SJS8p1ZE3BWaHnukEQA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDAzMyBTYWx0ZWRfX505lU6uoXMEz
 1OaUMvhI7sRl9QkqmvjRo/FKGk7ANSCJC2bK2pCn0TxlPElfJ9ckzDAOAx5ARwtUL2HchtTTPuN
 Rp/u4UaWYiWzRRtkFfm7SIqV9tCvZrG10ePpJri4KTjkxA1RLjgaJ2vNBQ3Nt9axk2elrL8vgWV
 FefFQmQSz+3ogeVNWnDF9EitxV3s0pTRMSflqaD54T0Ndaq4Wgx+8BqMPPZmi2Q+kHtPb2ULAko
 /JBVGXuIznwNZcZaetFGfu/yCHnYBG4tuioUhcD3SFtQSpAbFVXCbED3hQ5XVQ307wZN0Nw3PpP
 SIbKwxV0kqjJNHCfycKcoq+86o5be65QFKVBXivnRrJKJjt5ZtxSwfvoiwavAPGPIzUPHrybOdX
 j4OY1QSHNbz1XGWlfagJrJL+e+QOag==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_200534_716707_880B1600 
X-CRM114-Status: GOOD (  15.71  )
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

On Tue, Dec 09, 2025 at 03:09:45PM -0800, Wesley Cheng wrote:
> From: Abel Vesa <abelvesa@kernel.org>
> 
> Starting with Glymur, the PCIe and DP PHYs qserdes register offsets differ
> for the same version number. So in order to be able to differentiate
> between them, add these ones with DP prefix.
> 
> Add the necessary PHY setting tables for enabling the DP path within the
> QMP subsystem.  Introduced some new callbacks for v8 specific sequences,
> such as for clock configurations based on the different link speeds.
> 
> Wesley Cheng added some updated settings from the hardware programming
> guides on existing PHY tables and clock settings.
> 
> Co-developed-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 355 ++++++++++++++++++++-
>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v8.h      |  25 ++
>  .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  |  52 +++
>  3 files changed, 428 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
