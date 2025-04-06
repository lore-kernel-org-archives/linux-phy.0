Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CD32C3601A
	for <linux-phy@archiver.kernel.org>; Sun,  6 Apr 2025 20:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hUD2fpmlCFK70Fi+mrpzCQ71dPZQxQEzqKx8o5HP3qE=; b=En3ScBtiT1vhly
	Zkq/KVUMXoenJ//K69txhnwEObrSOswgrOFn8WfXw/lxtbaY2qrMvUtJhVoGtb1mLoJTGSxSRQhq/
	+y/hSL0kZjLXMuyZVlvMj6Zuowj+B7CLS7DDwg4pWHxHhIvXBkwtzZxbHj/0O+jsAGhrQ246Q+BTn
	Wvaor0RMHWqPr+QNc9deMMm8Q0qtZIFfPEdiVoQOrL7fbSAss/lrP8ABfw3CJyimiMtATEkg7rYNV
	kc6LwnG0A+HoXdQwSEPPxluDld/J3AsiH1i3TguDlNKrFggZCtr+c49cyfJhC9Ri3fU+wKfNxXKz4
	j8qWNFQ/8iO94VXClLFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1We4-0000000FmG8-2pRr;
	Sun, 06 Apr 2025 20:31:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1We1-0000000FmFN-1AXO
	for linux-phy@lists.infradead.org;
	Sun, 06 Apr 2025 20:31:06 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 536JGF1n025450
	for <linux-phy@lists.infradead.org>; Sun, 6 Apr 2025 20:31:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=D3SL3RFEF7ExCpjlHS1MAW+1
	sKINZb/uEY7WG2e/dtQ=; b=nbQm2k1DHVgO9JyDnG/Cu3Htvankzz/CS2tae7sC
	KDwdAl5lhABX2+aeuKLhea7GRdFldmwz12BGRLczfzFCJ5eYdHnpqyXtjKY15L1M
	FRMOotG9L4ujTKWHcjmfWodCc6Cia5h4JPtwFBT14Ul4bW7DQApKgs2iYOUPTlRW
	Q2LlZaz3cW89OCRvGNIQmc8DVXYzP1/mM+AY1/lLydAKRxpELBInQmsAc1/nnYOL
	xLDum9ZNVG0pJoStxEAYIVNVf4QeOkPKtP0M3+fNe2EZD75vwH0Ztd4gxki0MaqO
	dNvr4XpxUjw5uX6kuVleWAC+mifBGqolKjtIU3L5gmFiRQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twfka9d5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 06 Apr 2025 20:31:03 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c543ab40d3so564459885a.2
        for <linux-phy@lists.infradead.org>; Sun, 06 Apr 2025 13:31:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743971462; x=1744576262;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D3SL3RFEF7ExCpjlHS1MAW+1sKINZb/uEY7WG2e/dtQ=;
        b=XakJtM2vo5yd1I7f8CbT8pCZ7QmakIY8hqUbMcFK1H/b69HOVc54LtH9JRIW988Kdb
         u9LIuijdwWKVgRYOv+U2ZWmlgGetplXb0xLDik8e9121Bdd7DW6uwskDoIzT5eV+VKra
         mSHzcftjjyAmNI0+hckL6sWBfinbTUiiQOB6Zjx8th1/+JuvEDjucLHzeAfdxIXC3CyD
         Usa8KOvz3UyzYFGO/G/CwayzJvgsZo2R02X/rpCgpe1EgyGcUNtkrySEIcwG337IYGE9
         8mD2HYNoNrHT1OlkCSZ5v3hMQjzB7YDM8S70OdSAHk6wj44a4iIkFTFMSs0O9gtHRuE8
         mKsw==
X-Forwarded-Encrypted: i=1; AJvYcCXM1hQZVd1HTFjKrp32wezwa+GDZ72amesyzX2lvFzMNzqgTGAMXfOet15GZ1pA8/Yr229q/C34grg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyBR2FH03wdCXWDxCVE6CcMVp8bsQxupXMPf5G/edLK/gLpzeNl
	9qZDPf4RDGqwagJ4tDu1bqLAkvQSJQVSofaRDm6mUkOC/ke8CUfWxidQgya8uFviyGYZP0xQuDX
	o4r9jzQuGZFCbPb1zVZ0MCfDXKXs0LcDCP1q32R+77Xi2MGcC3VDOv4lh9NyYvPKC
X-Gm-Gg: ASbGncv81DuAr08Jzq+80hJHrZEwXzQpkNgN67GhxlKaAzU1GeNlGxwoEi2qI13E8dj
	OZRIQXBvoM3gZDiTFlcq/zrGxbuil7ho/cJv7A5gaRC2BpVyGBuMbEt2CNzHh21jGmD4uQfKQfj
	AA/dB2rH0hUJ5MfJS8t40sFjG/oWFz/I1dR3iHRmj4aAqvggHJvfawN2HW/r8X1Jr7KfKCVhO+B
	VlHpuqZ1FpKmRAi4oKjWW7E20WTaHsXtKyE7BFxeEqSTQWfFGec3xRce/+uBbLvjVBXmD9FNWfR
	8WU46LviVCtMJRFeQW8e+JpIJCEyb8Fplgik+4RIxoEnGjEzQ1HbWfmxvyNC/MfkXXRLkkAiDXP
	k6QE=
X-Received: by 2002:a05:620a:2891:b0:7c5:57b2:2cb9 with SMTP id af79cd13be357-7c77dda1c09mr772035685a.26.1743971462517;
        Sun, 06 Apr 2025 13:31:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF3veInaAbq3I1bKUD5eq/cfgw6MPpVDuHnLn0g2UE+IdMIGdhBMtA+oqNpUDXsimNCO2y84A==
X-Received: by 2002:a05:620a:2891:b0:7c5:57b2:2cb9 with SMTP id af79cd13be357-7c77dda1c09mr772033685a.26.1743971462156;
        Sun, 06 Apr 2025 13:31:02 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f0314b908sm13667311fa.55.2025.04.06.13.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Apr 2025 13:31:01 -0700 (PDT)
Date: Sun, 6 Apr 2025 23:30:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: qualcomm: phy-qcom-eusb2-repeater: rework reg
 override handler
Message-ID: <v6cra77j7q7gwwqcdylrp6eegdkcgtlhxbtvehfxhvdnaahp6q@emcwrbbzhyyf>
References: <20250405174319.405975-1-mitltlatltl@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250405174319.405975-1-mitltlatltl@gmail.com>
X-Proofpoint-GUID: RAHfDKxfdrCLtlRPgiRUwHh_DNxFZuYw
X-Proofpoint-ORIG-GUID: RAHfDKxfdrCLtlRPgiRUwHh_DNxFZuYw
X-Authority-Analysis: v=2.4 cv=b7Oy4sGx c=1 sm=1 tr=0 ts=67f2e487 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=pGLkceISAAAA:8 a=MVnmeVZX-4zFk2mnhQcA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-06_06,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 mlxscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 mlxlogscore=964 bulkscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504060150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250406_133105_447301_420A4008 
X-CRM114-Status: GOOD (  20.61  )
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

On Sun, Apr 06, 2025 at 01:43:18AM +0800, Pengyu Luo wrote:
> In downstream tree, many registers need to be overrided, it varies
> from devices and platforms, not only HS trasmit amplitude(0x51),
> HS disconnect threshold(0x53), Tx pre-emphasis tuning(0x57).
> 
> The device I plan to upstream also uses it, so I write the patch for
> it (Oneplus Pad Pro / Oneplus Pad 2, sm8650-mtp based).
> 
> In upstream, only Sony Xperia 1 V is using this, so fixing it for sony,
> in downstream, some crd, mtp, htk devices also use it, I have no
> such device, don't set it for them.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  .../qcom/sm8550-sony-xperia-yodo-pdx234.dts   |  5 +-
>  .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 86 +++++++++++++++----
>  2 files changed, 72 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> index d90dc7b37..99f5fd32c 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
> @@ -673,9 +673,8 @@ cam_pwr_a_cs: cam-pwr-a-cs-state {
>  };
>  
>  &pm8550b_eusb2_repeater {
> -	qcom,tune-usb2-disc-thres = /bits/ 8 <0x6>;
> -	qcom,tune-usb2-amplitude = /bits/ 8 <0xf>;
> -	qcom,tune-usb2-preem = /bits/ 8 <0x7>;
> +	qcom,param-override-seq = <0x51 0x08 0x53 0x06 0x57 0x07>;
> +	qcom,host-param-override-seq = <0x51 0x08 0x53 0x06 0x57 0x07>;

Other than Krzysztof's comments: In upstream we describe invididual
properties / overrides rather than just dumping the whole register
sequence. So, using a single 'seq' property is not acceptable.

>  	vdd18-supply = <&pm8550_l15>;
>  	vdd3-supply = <&pm8550_l5>;
>  };

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
