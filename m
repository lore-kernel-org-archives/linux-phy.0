Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7EEBCAC5A5
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 15:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ht7DnPhCCq3o+7E9+/Y7DLpJ+PJxby0E1ezW/0nLufQ=; b=GbdTQxY4BrLu2G
	JQXph2z1QBfd+E5L06+AHXBYUtYoM2lkjh7LcaHa+T+9Q7CYyL+Ur+t2lyrCrNeWW6frB54NeSyVE
	iOnteTukkY9f0KX0LnWTc8O4itzMqwFVMr9Vz1InMAMCsaUiRgIfd68XoBdHB6CkQMX7bVq/fiFOF
	z7Zy7b4jVtTGboJfozfy6M1pxphmdZzrlq14bGbr3UW+OEuaeNqQqVLUXbwvoqloWdXswYdmkzmjs
	zGWl5rGSR2osb9GFos0t7hccL3fDuHjLOBcXeW+lNTn39veaybStti9AZRssuUC6v3W5+6e1voEKy
	r+J99gMKcbmWDj5YdJqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzzYv-00000005XfM-1nKH;
	Sat, 20 Sep 2025 15:31:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzzYs-00000005XdV-0Qpy
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 15:31:43 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58KD0FSF008654
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 15:31:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Agw1jf4xhD2dHvOPSs6hIpbq
	udXfs5BkybpcFGMrFAA=; b=Qg2bH4tcfoIH9x0hMOcjMnqT2Tnhanqu0xSzf9vr
	UxJTTIAX2EDnB/J/yjVXv+isq8NlO4GN3npTf3glkUOHfPXNMxhsRNBzrLOtZJXy
	JHcB2TrR6Nq6W6sqvgUVC0jd3tioWSaHM7QdkKdvJYgJeEc/P/rAJfovXlhtzxSI
	quiRW7Pw4BOZLISYzjZ+hqdU0YcPYPKXk75ZZ91BVXAoaI7vwusd291CYV9Sk6tP
	YVFANlrRhtP3vSoIyFkh2PBzCYRRLGpefFUGBd2uA5JAeaJYzIo8MjF5KMlmyQzK
	spCgGPqtmDKCZkTAZ1ZZFzJqJjppIx6y2PY9gRYmaMJupA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnh66f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 15:31:41 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-82e5940eef8so674028385a.1
        for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 08:31:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758382300; x=1758987100;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Agw1jf4xhD2dHvOPSs6hIpbqudXfs5BkybpcFGMrFAA=;
        b=N3gUTzSGdsvTBmywcR0fZtsRKhvnWok113pPHzcLOYKyISsX8S70qIdrQoeakp9UTf
         vTTYho0svYtIIYiEwMTKfGhFq4rdmHo6iTXWkmDNLy1Et2kHZxcWmvLdgRctdUazo/yi
         21PwN61skaIGTEDmkM7oyGK0PUv1KtMcJIpubJvlJHQK/OJFfbyt3B7PSmy17L69Wj/x
         66vd2Knop4+Qi6OUoc78+fpeW2DglhnH/DSjESr75iix43aPIXvUwTA06DrmS1UppsJ8
         ikPmW6FWbJRBSIc/o0cSoyt9elRGUQRjVHl43uMZzkv0ffQaWRjb/qV7D366TxhFZlX6
         Rp7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWu05UpAnk0o5Yg8OJuUbktAadHEXvBf7RiKOuFC9Qu3hGEpw3zbz/qpqNuFaIrqFlZhEMRHWW83Q4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwYI4BdkEH88Hj7UB7/pWJ7LmpRw3Ek37jjHOdwv2FqRtjk3+dd
	T5ZHxhHaEpXXM9hKBNZMqVjQY4uryUhGKTSQSXyeiX/ivZ3GvhMJsH2X3UqDfEn5VQ+D0Hu2gcZ
	GYpNTY9B+wpiAZ8x4hH2MwapeJejyfPwY64NJOUhY3fLN8WjH0l6z2B7FxaUjeXI0QTTA
X-Gm-Gg: ASbGncsiYf1XSGZUujfiLn9xgLDV62oiWF9e48I/FlkTcrZCmUq1IUrAPtGMP/2AGtT
	or0e0hyMhMKmsP1aKF71x5WiAEpDQhgSckkIfP6UjqvLX85jhmZCH1rhVVOteTzotJkvNaL0BRz
	WznHBSYbXI97JjkRViUkZhAqpf1aZJjQUSxGgVMrpGxZYCWhHXRLPwmJnFX69g9Z1FY5Sc2Gpjv
	r9sB01+E18E0SUm7ZD2UYPdDTrSFJEFGO0KVg2kVkdT/rmoMNaWxgUbhHI5AOzdEw5LLrqQrB97
	e7G+AMXAjCgbmewag9zmirYqNF/JB1SQ+m76DtIlSPDiGruMZG0tfjW72ClZCxB5w2GQqir5JBv
	9d+JWgONCP+10kCOl7JFhBDvF1kJSpDGvOLNXvQudEhORgLeBjdxI
X-Received: by 2002:a05:6214:62e:b0:768:f173:a0a1 with SMTP id 6a1803df08f44-79919dad1b6mr75240886d6.42.1758382300078;
        Sat, 20 Sep 2025 08:31:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5J8E1oBMgOvgfZk+xaTiZAs81UEBJOVjkmbbKOqjcN60ku0uMpKtLAmm2ZHJO1n+o1SNXFw==
X-Received: by 2002:a05:6214:62e:b0:768:f173:a0a1 with SMTP id 6a1803df08f44-79919dad1b6mr75240506d6.42.1758382299623;
        Sat, 20 Sep 2025 08:31:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57cb7f53a76sm144778e87.102.2025.09.20.08.31.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 08:31:37 -0700 (PDT)
Date: Sat, 20 Sep 2025 18:31:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH 6/9] phy: qualcomm: qmp-combo: Update QMP PHY with Glymur
 settings
Message-ID: <kmo2xwxia334fba4nt3eyzijlet7ogv4trxskoog6ymkxmpsi7@2pr2pryaxxgp>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-7-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250920032108.242643-7-wesley.cheng@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68cec8dd cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gzIeawRUdsEZb0YUvHYA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: DiNl0rKpGTPUNOgQ7iI6_bi0uPNRrIkQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX3IeufaY0CNP9
 sd0TCW6FfcadwxMKjpdDy2GFFil/w4h/4sYKRtUkTYiCTAyC2WuWqy5D087EBEX2pu8JgolCXe4
 1C6uvrZMQWDFpKxXeoPWvikTKx8jlMRuVzrA+YvnHfuvxa2qo1Sk6UFijCRBPG42Evmg/YxbhBa
 9eDb4NMwRBOdL8U84IZqCmYrqlF3Ve01jxzKsSsS0OGCf8O3q0xQrcKad+FJG5GE61q+hs9V4Dc
 wInMZmytLd5Ab3WgOduHPKIVyskAMRf5twQcJ3CD4fkpb/5VCrY5W6l6ook5zMsEYRs3xmTxVRx
 q2ceCtnhtY+xKvZVmfhlgc4UP6mKg+8oBqSmMt+wdkSXEtZnbfKYdAtNjR5SrPeObMiJ4KmDeO0
 430KIghI
X-Proofpoint-GUID: DiNl0rKpGTPUNOgQ7iI6_bi0uPNRrIkQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_06,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250920_083142_275651_8712B5C8 
X-CRM114-Status: GOOD (  17.93  )
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

On Fri, Sep 19, 2025 at 08:21:05PM -0700, Wesley Cheng wrote:
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
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 309 ++++++++-
>  .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
>  .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
>  .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
>  .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
>  6 files changed, 1225 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
