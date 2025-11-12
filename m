Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EF69CD4847
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 21:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6enXtnY2YYLb1z5btY45StDx1c/wlKmYrFw7C6Wcgk=; b=pfG6WCrC1aWqCB
	qgfkj169gl8P0iKGrr1QFBx1rAZnvmZn5FTSELCsOgRTThmBf9RbnnMrqxHKh1LCxT/Z0DpcoCEsz
	zRYcIMPEJsoBNSvr5YCbQ/UNRvdBDj7YpA4CR5TWnK+GHnfQhZcFN+gmxOP07YvFoCKFxTVepnTFY
	MHPzrpjpMTS+G4xICe/rE7K3o/zsbSkLx2JDHQh2L+SruMxV9YeTZ/OZx1WqBYlWPrtSqHBXEB8Wa
	cvV/n0jim0G5jeBl1ey+mGRipSpFj+xDAM6SYnnssrshhxGbC5VKqbVb/4btP7yWbfqzZw5KeMi7R
	uaatpws4yQQEcCE6fseg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJIC8-00000009Wk2-153w;
	Wed, 12 Nov 2025 21:16:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJIC5-00000009Wjd-1msE
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 21:15:58 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ACEJ7ZK1382178
	for <linux-phy@lists.infradead.org>; Wed, 12 Nov 2025 21:15:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HGBWrs7DnHLfdEf2UIMKQOz4
	rRJ3a068v2CpxXJAmdU=; b=FqFHfHRiO1SI3v2yuxSfDK2ZL4TkYZ6invjXimWm
	AvP+g2SUor3kQCIbE7uLf7M/kstYiPI4umK0Ii3o0H5hin+63EOkIG9Uir80lpv/
	ky99GAGv0H1EuwiSbeADrbD5FflejhtgzCyE3YiIsmOwO8Op/R4SxnXXj7Pcp/Al
	v6B6miEaMdznNKFa0k9ELmM+gowFgFu0j13AY2WPjvvyBpWv1yo1gLNJAFBomJkx
	+2QsG6PiACDZ1EAtDIRepJ/Sq9YWn3vJd0cPXEtIsrRRnRuxE+Tag3oErr/WG1L8
	70WQbLc3F5PdlzJb+lb7raErXiGB3TIKU6AtJ5qj2O5tJg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acuw49ar1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 12 Nov 2025 21:15:56 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4edb927e4deso2716051cf.3
        for <linux-phy@lists.infradead.org>; Wed, 12 Nov 2025 13:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762982156; x=1763586956; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HGBWrs7DnHLfdEf2UIMKQOz4rRJ3a068v2CpxXJAmdU=;
        b=Nk6XWB/QdHfdOFaVu19BsPRSY9cYXJXkyuL2n3mnySDj8pTABoMpUmUffO0QxF2g7M
         SSqVyTtmDmH2ThRL0rzTm5/YAqthBnwZ1PNMnw1DCr/n6PGoClQ+x/UOO0gs3Dub5QNx
         Zt7ei5XpOJYFm1jISFThkf+57mxVlKOKZZthlGGnsNCnbtUnprvweeHoPbxHhDGc3Fag
         qcnvUOtYcMF+Vh7XRRHGfdxauu8r/MwCOWvL0CknyNRPMtUb7KgkN9Yn+CmJd32e76PS
         Jz3DOL3vdnR2mdVuBJzdHZogBkiuQaBVH2JTQgCrLF5NcbsC9FjQPWbBSre4pLpEarkT
         mz8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762982156; x=1763586956;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HGBWrs7DnHLfdEf2UIMKQOz4rRJ3a068v2CpxXJAmdU=;
        b=lSMJJmv0cbczhGAz8AJPUGUqDXqDA1wMEdzSOuX9rZJNguFrEhAhff4qUgBtgOYQhA
         uQtfpcU0kcNQKdn8YoN3BbBYt1XCUAF2JI0T3svgAOSpFAEHNMZXYJmi2f4ZVZJkpmf5
         FYx8qlHdb9IeGD//K0hAKrRTVmScaOSphea77ADW9l9NBFNHLqeoxGw96PhHy1lVjYmX
         pSPHXh2EPbn/wNLtB2QE8EsNUlRM7vKR7pKdh55ta+KrQgcFvFT7/3LMJNateEj1hOuJ
         nTD+5f9QeSueWLBAsEYEbU5ZIRUCci+UqWOuwlyIm+LxegLMbwg+H7mLoivce4ednc/v
         7Xjg==
X-Forwarded-Encrypted: i=1; AJvYcCVVMwps7kdgVeMTVfYQUZWd/Jg36ntFfFuyIoVRHhz7u9A+zNOZs/shQ6JvXp9pouUIoCOAoVtMlB8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1FOqmH+XLXfO/NrEAmUeowd/ctRD7XDKNC9UfM9KUFOZM29e0
	mtRHUFdHJBAZRGgiBXjH6cA43KPCoN7g73oKPpjfMvV6SOE2Z5f6f68A/571HpZ4nEGgr5oIzkP
	E63TtAwvhOzEHsYLMFPuUip22FVOW+kFW91KvKkuXIfv6lHGQbYD+NOSiW5PTc3mc015p
X-Gm-Gg: ASbGncuDc8O5yVD7P9OUtvTIb0+oDBdejVJZo0vO+hLt347x+X2FR04G7JUVjD7PASp
	JF9NCRlIMUTi8FswXM1e4wDThjimWncHqOvi9x3/mBzyJ6nhoBr+0UeiHd6u79c4gWyIlRZZWUO
	sAl2UrnfX0+zecquo9UmFdpsZjsBbwT6ngTzPH98OMnpap5p7KJ17iWP6mu7o9hlt/WpKN6Xjik
	PeVdXYbQctwcMeHVJvtAOYnPE269k1aGEtHkPJRB8NSLCv/cdKIY3BepcrfMkbxReOcoj8D+bxL
	XEgcglCsGRG25FKeyJqN/pMo4xM5qAxxecYIc0WCaMWqPHbWJ1urjlI/K2paCKJ4wfpsuj8Ayf5
	tVIlYiOTetUJV96akZDJGNS6u4B4eaMncDPFvK/BpHiLrZxkIHAJkyzNGNNRv63rkVUAjwGv1P7
	DJy96bGSkhPJaK
X-Received: by 2002:ac8:5815:0:b0:4ed:b2da:9662 with SMTP id d75a77b69052e-4eddbe56a76mr66415401cf.70.1762982155749;
        Wed, 12 Nov 2025 13:15:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEWqFy2kLgPWPVS/huXKoUFZ5R57hNEieCYdk97d1qbnfNL5pgKF8pzTG5alOHRPxvUi3yPcg==
X-Received: by 2002:ac8:5815:0:b0:4ed:b2da:9662 with SMTP id d75a77b69052e-4eddbe56a76mr66414771cf.70.1762982155063;
        Wed, 12 Nov 2025 13:15:55 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5957c50f627sm668161e87.26.2025.11.12.13.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 13:15:54 -0800 (PST)
Date: Wed, 12 Nov 2025 23:15:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: Add PCIe3 and PCIe5 support for
 HAMOA-IOT-SOM platform
Message-ID: <q6ztnuiouxvg7kpy6knrnwugusi72xfye6wf2pgfltugjwlbep@mxtt3vm7vx4i>
References: <20251112090316.936187-1-ziyue.zhang@oss.qualcomm.com>
 <20251112090316.936187-2-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251112090316.936187-2-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 0RSPfkrBgnoJPdHqCviqaxtSuaRySwX0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDE3MSBTYWx0ZWRfX0nHXKRgEsAHz
 NMYCx7s+5wxDSLIDD2m84YCd6vzyLzQyEg9rWqx5OAitYr2EMU/UHWiV5iLpZw1dTw7o6tP6N+0
 dKT3uukcsOcf73YdIeLc+ZGo0NypNKIqondA5VxDXn/NwXYn58t2RNBcfK6OEFEfv4lCCy6ibj1
 wOfjDhSS5I3efTFJ3SypFcyiuhszvXs1blACDNEU1NdrG9Lls2Mqvfo2o0jjOc4uTADvKwALVdF
 GUVjWpPwrzM6432vh6fkGfhkwv5t7GylwRNYWLB73n+LcwT23cGasgnUcR5vaWv2rI91hpQyPw8
 GO0ARDhk0dA2X7O++jjm5eodtcCZZcaCOa9BVNGJ7EdpwPYhQylfeDvsnub1ZkdxB0UlXljubNu
 3PEWUJyOn503yIbfGJn5EP/ff5vZzA==
X-Authority-Analysis: v=2.4 cv=F+Bat6hN c=1 sm=1 tr=0 ts=6914f90c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=EhQ9wbuxbXqUBhoRm5MA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: 0RSPfkrBgnoJPdHqCviqaxtSuaRySwX0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_06,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511120171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_131557_482383_157634B4 
X-CRM114-Status: GOOD (  13.33  )
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

On Wed, Nov 12, 2025 at 05:03:15PM +0800, Ziyue Zhang wrote:
> HAMOA IoT SOM requires PCIe3 and PCIe5 connectivity for SATA controller
> and SDX65.
> Add the required sideband signals (PERST#, WAKE#, CLKREQ#), pinctrl states
> and power supply properties in the device tree, which PCIe3 and PCIe5
> require.
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> Reviewed-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 79 +++++++++++++++++++++
>  1 file changed, 79 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
