Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6678CAC59A
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 18:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3WUVkqddLF0gDvJPFAQrFjNHip7TXJ621tJ7CLbe30=; b=DwJtlphpiJj1sQ
	+N0i17EpMRt7bpm8O3gqoAMeETGVwndx5YJkr/A4kHLrA2PnVBZv0U0XCvmzaGtqdTSX2FLLeCnY3
	wS0608zA0vOViRy7FIteLuXRXhNcvxCq1lUL6J1hFmXHkR46udTzIJqm3Rxv/nh+VWDTS5QidcWPD
	K8XiWm6VaCZMk09AqSMWGK90tpmBiRNGCQ+joSj8UXAbOoOfdWLZrwPzzMs2nNefGoQwSJEJteqoH
	A1dlsa2Xt4CP467ggRS2BXzHVhZA4V2ahuyFzaVFD6oN0P+Bggtgip0VzMmg57S9HBIXESjLEsmRD
	VxftIJWvkXUf6IccGmnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzg4X-00000003nlo-2E8O;
	Fri, 19 Sep 2025 18:43:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzg4V-00000003nlU-3LDy
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 18:43:04 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JDs6Dk029526
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 18:43:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iDUVT1j3d1+CSBXfFOTmyvH1
	fdhZ2PGbb9X8k35Q3Ls=; b=K/PK5xiKgRdHln+rXzsf7M3F+hfCe70jVbWY+97H
	vb8vd4bOKlTFixKmvI69F2HTXw9VGxrQBm46A6YdcUnOoU/SxCmibMOx3jPVlOdW
	EN443q8AcfUV/InJZoSJ279xcEKACXMiBb9dq946wlZRV3RynEUHF3+IQJgtNm5A
	xLR9ytZdCiRF2T8hgyeB9H1YY1+F1PO4SQYthEXMuZX0w58qwerZlXGec1hl44nC
	FkkhWac4GEz4e31yLaU+3N1wBViYWHKzovqtTJBvA/fVLo6XGJPLwLAi3qD+MNwq
	5+1T6yT6KtUTFgjiJg0XWSgIuHSLxemc+SaAdWnrcJdS7w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy13fkb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 18:43:03 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-78ea15d3583so40509276d6.1
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 11:43:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758307382; x=1758912182;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iDUVT1j3d1+CSBXfFOTmyvH1fdhZ2PGbb9X8k35Q3Ls=;
        b=XrC9l9QnlXuq7ug2NQE4K9KadngQWP8zocNayu5WYO3Y0C7ReBXhUN+8wTjU0I8cgz
         0DZvhY3fKWAjJEkOokpXS3Ci/l7/CXWaNBu1GhKeeIEooY4YPvli0C/iIUaR6ocHDOsN
         i+kXaaJBHmOVvyWG42Kx+6dOeKvM0Yvz3f7nyg6PDu4dRf6wa5fi5/qbljmnB7O41jAV
         BoaJ5zjs9Lrjtdlcd8wXJ8QuT5XsaZNWo7oNRAWBA31IwC5TfQctfXu3l76H+sNnlSSU
         xH9BvieM1xL6dkke1D8if0B0GCcwquY4UsGZSy77WoHm4ONvHsmiIr5Lv/z8w2OCSnEq
         YqZw==
X-Forwarded-Encrypted: i=1; AJvYcCWpzLoZkrUSPIjtAQDZS5syE5s944zoteUIVjpgjdOEi7r2YtAJxF9xiPIXTSweK5FVI3x9GM5+4Lg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKArz0h/lolpc0HR707X9+JAdwLu40rEre4Y98apSE6LrWJ67J
	YyuTFbvOYBR9fzp+tNlXIXYHFP7C1vxKBCX7EYDPsN3GbSpJ6LAJ45WvxOsPW3v4OxBx7Nl5wk3
	byfqXtnPYtc72arRrO0Z45fCQt057OcgeLjHlLZOR216Z5ceW7qxqduDZd+0dBLWN2QMv
X-Gm-Gg: ASbGnctMjAEqWPy8xMDqvO2W5ySHHqzNnRyWOkaWv0d6s8piBHU5MLEBk9bVXEgKW+k
	TZe9AeMesQxQS+j4Om3thYEutIyD4ueic+Xn37B4TJgPOvQxAGr4kfVv9e7Odfbu6yp+RC4DWIN
	PMTd+3H41dGjj7s/s4DUxkPwM+ufBoxP6MD6n1gdT0OQKK7fPQ98TuTyifrsCUHPk/p1lIR9WtN
	pns+vw5a5O10ztF5dqWOOAgAWB8VRDwDe2waYFzUU0V1mVTQVUe31YzxYyy789WOnS5KGl51vJg
	JRUld62h2p04l75pdK2fdK3AF+dLA+pUolQ42plRH07o6CDebjOaH7zEhd/F1J/7hmwQn0OzFud
	xoaa6z+9YxeLAPGptmz/yNVb//zNaeOtKgSeoHevXtTS42xTmQT2h
X-Received: by 2002:a05:6214:620d:b0:79e:88e2:1e60 with SMTP id 6a1803df08f44-79e88f16526mr13039896d6.29.1758307381845;
        Fri, 19 Sep 2025 11:43:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBKob9aSVicKYLHzXQPUikT9E64t9XkAJpeGDW6LHYdfXs9n7cQ4eZ9GnUtn4na0s2vbgtzw==
X-Received: by 2002:a05:6214:620d:b0:79e:88e2:1e60 with SMTP id 6a1803df08f44-79e88f16526mr13039536d6.29.1758307381248;
        Fri, 19 Sep 2025 11:43:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f447f3sm1549103e87.13.2025.09.19.11.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 11:43:00 -0700 (PDT)
Date: Fri, 19 Sep 2025 21:42:58 +0300
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
Subject: Re: [PATCH v5 09/14] phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP
 switchable Type-C PHYs
Message-ID: <zhqm6bqnlx3cu2rlv2wdhbhnuwc35jtia72tjotchyq3utla7x@45ws52wsii3w>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-9-eae6681f4002@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-9-eae6681f4002@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: xcIiwRND7se6aO-HM8GPi59XvpSOFOVx
X-Authority-Analysis: v=2.4 cv=btZMBFai c=1 sm=1 tr=0 ts=68cda437 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gZRqL4tbKlavufozYNMA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: xcIiwRND7se6aO-HM8GPi59XvpSOFOVx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfXxuXzpHerwwHm
 9PZNlEHpnOb6L5tE0ZMs24I+bsDLwL6GTdBcQofr3xz+7q56SlhWZNftEk7kyyCNhUcYYbvfo+c
 I2aWIFy9JlHBExuZ75d5SdlUpW5vJbTOskINiUPii2+3JKrxZvxZXhHnWWc/N59oqOlECm15/rH
 ltHLC//bipdxFrRhBzstt6Llv53PEJLgptITsQWFU67XL4NMJO84tWiM/ua9/NwVYgTFwdFDsgE
 0IIdt8aG8bYUbi7Eii8w5d091PHRuJcbut5+T0P3x9gqjAF5XG0G1EvOGVkWlw18GL581/mh6yR
 FKBmOmkBtxRDPQeNf3TUal57xDWsD7XMF3CkIhBqW8OgbOJpp8loxFlvYQisPwuorf9vX2B/VR+
 mFYuLmvS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_114303_839279_2CC37C4E 
X-CRM114-Status: GOOD (  12.89  )
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

On Fri, Sep 19, 2025 at 10:24:26PM +0800, Xiangxu Yin wrote:
> Define qmp_usbc_dp_phy_ops struct to support DP mode on USB/DP
> switchable PHYs.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 194 ++++++++++++++++++++++++++++++-
>  1 file changed, 193 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
