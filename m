Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BD08CAC5AE
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 01:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrMzvDYIThgWHijKNcun7EtjM5o+r9sO8dtAp8Qs/UA=; b=BV7DI6GP9yayrT
	GE7j31jOxOzK+WO7/srNn/cteJahCaV9c4RCF995AlvN/5oPlzajro7KPXD+4m2hWUp58kZjTAsjF
	0ra4qdNnU79ZxNL8Z/lkyM4aOVEY4Tx01ztuUbS+i1/1GQtOveFgzYdChzokAJ3n/cruq8V0oklVt
	s5n4R2Krse5wH5b+IAIsoQWT5EyEe/S7sNBDToKbVCOumgJeN4jPGR1GQ9Bp+K53FtbRhcaIIQ5An
	R7T5fzAY1VqYCKCSKROpzdi4ahC2jpAfLWAYxyVYijyoFegjj4jBXfpC+RDlvbul11UqYioHBwVJJ
	Rzb5ZEqLxyoKT34MGStQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aoS-00000005BwK-0zUP;
	Thu, 25 Sep 2025 01:30:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aoP-00000005BvV-2uy3
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 01:30:22 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0Hi6T021499
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 01:30:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7mUyHQNj70Gz7bixQgpoodM4
	fSwBQ4FeRDzfYe3Kgjg=; b=bIVS/4YlSjx/k9zYtxSjYonLhSq5UZNZ6xUK91sJ
	fhbv9Q0+vEAV3bPjX/RSDh7p+0e+n2yW/UQcwS4wHX/UA+krksvwppcUbWplp958
	r4sgttbm5d8miPC5YgzHeWcZDbZkjDNLo+M66r02rXGCCUWCTA2pnHoKcnD7dxaq
	U0Zrl8+u6skEi89VyGT/F3IRasF7SDXVTe6OMQYkBYjX7T3XhL8Jh+/bZE8EjLTD
	3m6ugBeqEuT3ou7zlJF+s4M2Zf/Ej8fqzpYh9F6LU7bh8oXMxkpm0xwiPTV9l0Iz
	RKj2w9D48e+5YSTSNiWarYEQmquPh2fYeK0c/fsdpNwayg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budaduqg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 01:30:20 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d9a3ca3ec8so8717501cf.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 18:30:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758763820; x=1759368620;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7mUyHQNj70Gz7bixQgpoodM4fSwBQ4FeRDzfYe3Kgjg=;
        b=d5cKwGHXU5bnKVBRpsyvNXbmyj3OeTVNmPun4dHbB8KueBNKmUP+apZmI57XXTFfdr
         IlVzRaqoazkrD1E+i6oU0OT2Knq7ZgkPbd1kgXf2MSg0r4H6wFxo9TXcnMRXe5zZyFf+
         eMwN0gCa5ZRJvBDg03f0soxtUvTzQJaU2Naqx5uEMVKOBuv7CwvQMriiHHfuCwxg663b
         DMcu9dhDmogJSvEYmsRgRfBWOk9ZzrHO3WC4HqH5tNyNGSukRMPHrnpySiHmaSEqC7gr
         BHfhU1NB2DA4xBCCiSnjqEt2DHEj+T/y0GCfI0TFPnal/fUYfyWnHE6SKDyCuWCvcW+Z
         8dHg==
X-Forwarded-Encrypted: i=1; AJvYcCU8AlFfSICxK0DkUNxn6oDrDhtJ1Sf8tSjj7RmaPsZWMmJMMKCjLPzEC+8NKnnIVsaSLG0lF0S7Y08=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGweyH5IjVG9mSqDxNSDePYeoCxQaIuF048WMIxNlWtJAuOP29
	2f3dWAhsv2S/T2UKHjTuMKjvrimPm0xEIKz73hXQw+TxKz0GldCN+0j8tVWDMhJkfUj8J5TPA1R
	bwOoKlsdU3gYzDNw3+xt6ffcvn0muH/1doGe0eEiDqRNmRLv/imM4rfRQJxa5z/R0QB6/
X-Gm-Gg: ASbGncsXBskUH5hnO4flr1oKCsn1KEN0JZXu2v9X6pcKfFpkcMpRT8c+wNHfnAorHpm
	GR9dcjXDx7nAOnE6VhM+HBNf46yk4AGqmLxOERwPhoYeZchuFs/f6lIHXEDCjXNbD6zbebLf+mR
	nN5r1rsYXEEdZ1IH8n9W6DfUU61RyPgmCsEm9u75Xx4+VeL8eDDMEuVtpgoAEFRIxPyWDT2oWy9
	7CnTUmb1NPib0tW2yaznlGPktoiwWLf1kCoX90RDVr8XHEmZCBiV8F6xvT8OfL0JDazaNCruuNk
	ILq2Yw5kK2qb0etC6Nn5p3b8qt2pZDfYnyZCMO03SOC8kjs+QY3Wc+FDcILMeeb7wPoyfquzUeT
	/D+jZ7mjuscYNMc1FXCdMmgjI8CVm8QY5Bu+qd1V5nvzKtQ+yRXSx
X-Received: by 2002:ac8:5856:0:b0:4d9:440c:2992 with SMTP id d75a77b69052e-4da4bfbe724mr22592111cf.58.1758763819777;
        Wed, 24 Sep 2025 18:30:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF456x3zpn/m71a91HI86r+v93v861E9jEgmFun7cueAn6yXuEgN6HFNgHqzD1nVz/Bp3jCWg==
X-Received: by 2002:ac8:5856:0:b0:4d9:440c:2992 with SMTP id d75a77b69052e-4da4bfbe724mr22591811cf.58.1758763819256;
        Wed, 24 Sep 2025 18:30:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139fb04dsm211238e87.44.2025.09.24.18.30.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 18:30:17 -0700 (PDT)
Date: Thu, 25 Sep 2025 04:30:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <un3pulyn7tv3qihdnqmktsctped32am2eglxzfpwyz3u3tqspf@fnieck3i67j2>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
 <20250925005228.4035927-8-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250925005228.4035927-8-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: JvjirZXlv-V-lQqX6ClbwC41zrci5BS0
X-Proofpoint-ORIG-GUID: JvjirZXlv-V-lQqX6ClbwC41zrci5BS0
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d49b2c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gzIeawRUdsEZb0YUvHYA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX1ayaVydwMhAP
 UHywqvyolt+Vk87hhMRk3mN9uHr0zYroeNrNert8rqbcaBfMucl42xSrH/uaqE/ZpsXxOgnTjZg
 CJL4R7QUmMR5tLnuBIXx+mtOgrWgInYYmC1GJ6mdqt13Qnm6nnXLejG3LCzSr7iYF4Q80gUHwzp
 5/zPEC4RNsdcEJMWSBBBPBF9E1ZqtIQeC+Kpw7VIA/p9CtSPmXo+WeUm+9J0rdPSNdVsUZ8nDiR
 kJqmiJuupF2BOx5iDhZWA8rzI9kSqYY0CxxvuxiWPkQszO3Q7ljyfZfs4TSBXcGZorjlyiwRH2x
 89H5HiKU4yQXrcbT1nCq0ZrL7U6D0Ah6z79aj/J7ZJf9nw0aRCAaxuuZ7LuLCYAI5hACKTde/2y
 +wbIRa8U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_183021_856356_42C9FC5B 
X-CRM114-Status: GOOD (  20.21  )
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

On Wed, Sep 24, 2025 at 05:52:25PM -0700, Wesley Cheng wrote:
> For SuperSpeed USB to work properly, there is a set of HW settings that
> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> these settings follow the latest settings mentioned in the HW programming
> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> new ways to define certain registers, such as the replacement of TXA/RXA
> and TXB/RXB register sets.  This was replaced with the LALB register set.
> 
> There are also some PHY init updates to modify the PCS MISC register space.
> Without these, the QMP PHY PLL locking fails.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 311 ++++++++-
>  .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    |  12 +
>  .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
>  .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   |  12 +
>  .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
>  .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
>  .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +

I think yo've squashed too many changes here. V5 and V6 headers should
be a part of the previous patch.

>  8 files changed, 1251 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h
> 
-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
