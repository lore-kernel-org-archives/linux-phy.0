Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3D3EC3601E
	for <linux-phy@archiver.kernel.org>; Thu, 10 Apr 2025 03:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VBuke7qWKXkeAca9hdylD+FLFL8upU+HOeCL7heAWZs=; b=D9Sl7J6ePCkRzt
	5dD1fCYitGji0oG3IX/XtL+mqSQ9s5a2EoDOlyin1jUS0JHhbQbLmHTctIEZgszMct3iKMS/gMzSA
	SKvaE6TToQ0LKSHdf/GBAjh+v16XlNcw5HjaBOMCYnsJnktSyjMAIJjJ3X7SZYhzysBeKz9+WkyLQ
	1TDMTWvAf4/ZvurOuwLIMfgE86W3kK4vU2ZKREBJmimumT0nO8NWSAKfr4NLXdy60IdPVv1EUbWuj
	d0YvzxQF77gCHfagIXB8/+/W5EuyVu1VPtiJWUwzSmoes4DGpYpchPfvTp1wEUDdFnuA50nNu4Wux
	/L/XMp/Qcz5dJx14ev4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2iUG-0000000974g-0LY6;
	Thu, 10 Apr 2025 03:21:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2iUD-0000000973h-0CIu
	for linux-phy@lists.infradead.org;
	Thu, 10 Apr 2025 03:21:54 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539H4KqW014992
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 03:21:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BM6/NjkfUI/1vA52IvXfXFtW
	Pqd6Fba8LY2OaYR/Rto=; b=Haax56Epy5hm1YbDbfEKLQDm3mqExVRkZE6GyJcd
	q/TO79XMedlAbmsd+6FPXwVqdHusbWJN2N/xaQNMPwj019tqFrBRTLuCXNFHb/Yk
	iGW8buMSyBfh7arI9p5RWr6p2vhuKbfY2POgyAZvgDy2upy7FfjQpvcVSiufVrY6
	PZwPiJLa0JyyxdxEyuhXD6oBI8d9jpKfSL5DVEqDOFXXMO2yxIVWoGSqSAbkjldk
	1e7Qx8pDXc1ulYo9aojMhDj6nsmQckfh+44ZBgdPdqK0ajwhP6w8sSVD49FUozqD
	eeYmGLtJFYdzhiQq6K1H3+Tm6m/UKSQP/LvjVSiLN72S6g==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbunfw7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Apr 2025 03:21:50 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6ed16cc6e39so5337376d6.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Apr 2025 20:21:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744255309; x=1744860109;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BM6/NjkfUI/1vA52IvXfXFtWPqd6Fba8LY2OaYR/Rto=;
        b=LET90W3AvDXtRK5FtJMOskO3ARx30g4+Zvytkl9joK4MLM0lHsD7kqC//lDilNaO1U
         PFK4CGjKB9DAt1CGARqqOUdkKCWwyeagEVz6sG66QMcY8195zG4h0xtNqdx1rbXZhzr4
         1QNkvUnLCgH9P41edS1Qd5GMFjQIE9OjW1C1F8LTv2oaIyQR+6dohskHxG/+vw7UI2gs
         hsWu+ukTsvDz3/uj0oHgvWWp+nDcVilio+alGeO/lr5L9P2kBVs9wZKbNO+PzYXP0TOo
         ErqPztEAdf7PzWXdrz/YDsasVVLNL4nn1mCKRujh+UFW7GtbOH3QSamMNwSx/Y7UXC/n
         u8PQ==
X-Forwarded-Encrypted: i=1; AJvYcCX87rJtpKTZa3gQlwydGtCPyKqT1ImcOeMlgbdpCKR95r4Ym5qSKHr58iI1TFDYjmBFW6vogr+HMUM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwHKow8EeTOu7wR2fwyEiGD0NGzFifblPVskkbxTQVn2aS9OfEd
	WnnK4nEviDGduOure03+YdoGndYFea1nTQMb3UvpYcD011LEKnWJbTATcwPzBkUtkpndBnzhd7Q
	6m0tdnAT+4aUNf8FopTEEpkvzd+J/ghenMQoOcH+4Dl6iMyJ8+kyn3KmtEgJPF1v1
X-Gm-Gg: ASbGnctpzLndwxu74OZR+5bg+aMXpyGLX+vEkZVYfyX9UbquiAbK4bdWT9khqCo10bR
	cTHO+0ODrawK9wcWunjoGinPHFGxeGRFf32vOGfX2xWXyWkItoczJH67H6/uIe7YvlIeJtLzR9W
	foTEXrMx/9j8AUw7nFUVWywtQ22DZrPyh1+tXVrpRsGdrgYH27oD71CxwVUmMgaNVzPCEAQd25b
	uAu6TdYzRStTl0y0IwuOkVpiPwINgHdKWHPSvShrp/9r6u3uCBp6q9OGEEklrLAHVCTRUFWS5Ut
	4kaZksEW6Jyn5z9EF4PzxggOqe5QB+GgGRgZ26DiTPlKvHUbAlOnsBTuaZBoe4P69NlurElocT4
	=
X-Received: by 2002:a05:6214:2687:b0:6e8:f0fc:d6c4 with SMTP id 6a1803df08f44-6f0e75fc07emr6848846d6.6.1744255309707;
        Wed, 09 Apr 2025 20:21:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYIqjaenrrYWCNqFjWK4JuegWJuudSnIunDlsPqtfRTCxjlrwo2zihuMXwTVE6JJddNv1Etg==
X-Received: by 2002:a05:6214:2687:b0:6e8:f0fc:d6c4 with SMTP id 6a1803df08f44-6f0e75fc07emr6848576d6.6.1744255309329;
        Wed, 09 Apr 2025 20:21:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f465d23casm3432091fa.79.2025.04.09.20.21.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 20:21:48 -0700 (PDT)
Date: Thu, 10 Apr 2025 06:21:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <melody.olvera@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 04/10] phy: qcom: qmp-combo: Add new PHY sequences for
 SM8750
Message-ID: <o3ixtpmvueravt7uwpp7cu7fmucia5lonor2jmfepee5bramhp@uhnxvywjqvz3>
References: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
 <20250409-sm8750_usb_master-v4-4-6ec621c98be6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250409-sm8750_usb_master-v4-4-6ec621c98be6@oss.qualcomm.com>
X-Proofpoint-GUID: jeiXcCbmJ2ghdxbALIZUjmoJHivCzRo4
X-Proofpoint-ORIG-GUID: jeiXcCbmJ2ghdxbALIZUjmoJHivCzRo4
X-Authority-Analysis: v=2.4 cv=dbeA3WXe c=1 sm=1 tr=0 ts=67f7394e cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=dtmsXWtYh8RDwc6_VsYA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=978 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504100023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_202153_104615_92313255 
X-CRM114-Status: GOOD (  18.43  )
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

On Wed, Apr 09, 2025 at 10:48:15AM -0700, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Add new register offsets and PHY values for SM8750. Some of the previous
> definitions can be leveraged from older PHY versions as offsets within
> registers have not changed. This also updates the PHY sequence that is
> recommended after running hardware characterization.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 223 ++++++++++++++++++++-
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v8.h     |  38 ++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8.h         |  32 +++
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  64 ++++++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v8.h    |  68 +++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |   5 +
>  6 files changed, 429 insertions(+), 1 deletion(-)

> @@ -1739,7 +1895,7 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
>  
>  /* list of clocks required by phy */
>  static const char * const qmp_combo_phy_clk_l[] = {
> -	"aux", "cfg_ahb", "ref", "com_aux",
> +	"aux", "cfg_ahb", "ref", "com_aux", "refclk_src",

This clock isn't described in bindings and isn't used in the DT.

>  };
>  
>  /* list of resets */

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
