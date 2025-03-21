Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B8B2C36000
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 16:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dks+jjSYlvxXAOW9DtJDjKQgvkWEhrBHU/EFjI/JIpI=; b=3yemLZutPG/1WQ
	WUVCuss0YDzDFh1GRmUN0dX7tYnFEehLVCQRU2oqaf26JD9ybuLyQC+CngwjqBZhnIqV3VPvBn+W+
	sS0YXHsU0MlpQnkiY4vksRx2802diTMNhQd1VSA1iCX+OLBmsnGAQgVf8v4uylRFS3zXR2el9KHIM
	XD7NjEZxE03VH3d+PqbtWjSLp1VmED4Zko6btzXZuoqLEL3dxaa9BJirQOQmGXu4nQKNmczlnMk95
	kD6Vclj6LfZ5Le78tx0Ys1vpSm7g5E+BOHkft+RdpA6sBw0gwTsuMG8YcXt5tAbYOOX/iCWwVWFIO
	FbtinN4S1KHVHvACcDrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvfIq-0000000FWAH-1Ma0;
	Fri, 21 Mar 2025 16:33:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvfH8-0000000FVlc-2QtO
	for linux-phy@lists.infradead.org;
	Fri, 21 Mar 2025 16:31:15 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LATABg003015
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 16:31:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2IMt4Kk4/Dx/8oRvpv98Pwds64XlQ1coaXykI33I/Bc=; b=o+97gpzr9oNx+1c/
	KXMa5bWbdJwfh9Xb5upxmRQIMe+lpArlut9HyxAj7NHPbnPPWRLf8NC25ZJhIlrj
	QXSOZZ7yXJC9jrbfF0fETqLbp4+Inj3JAQqb5KPklZmSXvo3sRaWD/8yN+CPZ4w4
	D0AYupa6Gwbw+X6uySDgOpV/NxAHy7xD5B3duToLxZ1AOXF2NoKeJKqYsYobUU28
	7offgH1u4v87A3G9l8+673B44Jm4Gmy/6jifTISC3ngtUbb4vW3g/OkZ0WTZwAVE
	p33SVoDPiC4U7jMj07+VsOenHXkYxEbKEB7ocbWOZVtKdRwz9iE8xYYiunrGE3XE
	+arRHA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45h4p11c0s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 16:31:13 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54e7922a1so455886685a.2
        for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 09:31:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742574672; x=1743179472;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2IMt4Kk4/Dx/8oRvpv98Pwds64XlQ1coaXykI33I/Bc=;
        b=YgigU1g6j8ZNArqVPBqphtXdXzba9vTQri2I8TdUF/pJLdcIKeahapy19Dby3URX0e
         9FY3eMBOjWuXsQiXGX5Ik89Ws08JYQuL2P4NHfrqTRFqWMJUTXeiUp/y61JWD5evNtyj
         KrI6dYBn4R/KwyFDov9Cd44Im6Dc/DwHi37a8DLZSoto7J0B8Zza3koQWTlUrjmzkynR
         Va24g9sFzScI6Rl6L1+jJk77GWmEjrs6scVkp7zwTrZwf7fAv5KmI+jvLXRG1CN3V89y
         XsXZJGijZe8twMiNRF4Epk4MpY9uk8fCy3VWnfZMtPVtWc8xWIEZrjaGEFLqoIGwMWI9
         UWUA==
X-Forwarded-Encrypted: i=1; AJvYcCVdk0vtzYJ1JxxzDD3FGjQ7gnKlRUeUloMN7EUQROCJu+pSMukAsKifrWwVOdLs/90xSRaw3dBIw1o=@lists.infradead.org
X-Gm-Message-State: AOJu0YyoVR0fR7YNIRZ4ED1h/RfhSpbHcprybsstRX/gFKEZPM/BDrUg
	8Tbn4l3SlmPkUAEElCAkA5eyIPyo9eS96gtzMHgEs5DaG0YXjf9jQ8+QJQOQNWbJTuySvNg+rnx
	ykm84a1vZcLk+wmwCG/PAUmLBrOenHFiA2CoRPnwG6oZ2zvz10lzHjQBOCUUc0PFO
X-Gm-Gg: ASbGncs4ovQq6nHw6yolBPDjs+//ZgLWP0PstXVy2jTcXnlOVGcu08DZ+Sisnu2EI1w
	g9hkg1/lpq/2i7oqiFOd7dnjaAcWgiq7NI1m7WAgfaCISBs2UZAHYnE5mNCIejYtAnePCIp4ftk
	AYd3PGldde4uiv51ThIRapnCrKL0kUk3MXLQ0FPiD1jc5fS2pq2/fMRBz/p8hgo0JA/0dqxGI3S
	1FvgFmwws8zfiqlKvXgwq8z51cNB4iHSTBF5F1IJSwSKCKeKjRHwU7KQC8J7dwDuaOIQ086TNP3
	PHtc/c+yM3wtdOllebooFvEi5qxPbXynJRLgQfepnPSOpYfAnyveRgOq4/6xWaSSVX1mVABX/BI
	Lpxoxe3O+29nxbQMp910mhuEeov6nHrdonuW4TLA04l+rLVavSGZZtGgN95qrSjPSWW+H
X-Received: by 2002:a05:620a:4406:b0:7c5:47c6:b888 with SMTP id af79cd13be357-7c5ba1deda8mr478439485a.40.1742574672467;
        Fri, 21 Mar 2025 09:31:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEC11C3ROuEuv4LnPyl+Nggj2bsLHRBsWaManjOdSZzmLn86PXUTHmkaKj69Rn5CvZ35HXpuA==
X-Received: by 2002:a05:620a:4406:b0:7c5:47c6:b888 with SMTP id af79cd13be357-7c5ba1deda8mr478435885a.40.1742574672070;
        Fri, 21 Mar 2025 09:31:12 -0700 (PDT)
Received: from ?IPV6:2001:14bb:c2:310f:a0b3:1d12:b116:f8e6? (2001-14bb-c2-310f-a0b3-1d12-b116-f8e6.rev.dnainternet.fi. [2001:14bb:c2:310f:a0b3:1d12:b116:f8e6])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad64fbd15sm215071e87.131.2025.03.21.09.31.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Mar 2025 09:31:11 -0700 (PDT)
Message-ID: <f3be50ff-53cd-4e8c-ade1-af8e4f2e1960@oss.qualcomm.com>
Date: Fri, 21 Mar 2025 18:31:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 13/14] phy: rockchip: samsung-hdptx: Optimize internal
 rate handling
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc: Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>,
        Maxime Ripard <mripard@kernel.org>, kernel@collabora.com,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20250318-phy-sam-hdptx-bpc-v6-0-8cb1678e7663@collabora.com>
 <20250318-phy-sam-hdptx-bpc-v6-13-8cb1678e7663@collabora.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250318-phy-sam-hdptx-bpc-v6-13-8cb1678e7663@collabora.com>
X-Proofpoint-GUID: bAzx2S7vHkd4sp8RyB3oufh99MiJSfwF
X-Proofpoint-ORIG-GUID: bAzx2S7vHkd4sp8RyB3oufh99MiJSfwF
X-Authority-Analysis: v=2.4 cv=NZjm13D4 c=1 sm=1 tr=0 ts=67dd9451 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=3d3HDMnJp-VYffEgFzgA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=966
 priorityscore=1501 impostorscore=0 bulkscore=0 phishscore=0 spamscore=0
 mlxscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 adultscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_093114_626722_1312F5D9 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 18/03/2025 14:35, Cristian Ciocaltea wrote:
> Drop the rate parameter from a bunch of internal helpers and, instead,
> make better use of the newly introduced ->hdmi_cfg.tmds_char_rate driver
> data.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 47 +++++++++++------------
>   1 file changed, 23 insertions(+), 24 deletions(-)

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
