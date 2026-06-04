Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A37EDCD6E4A
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 13:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHA3Qe7CK/uIKzM1cyMhQHb+cJ09D+P4O81aMydR4LQ=; b=SwG6S8sI92+o60
	6S0RzpUQAx2GjnFPcUKUARnMVP0IWRGdho/I65uXp4X1I5JXxk2ndAn6E9wSgFMMUdqpDoL7fs2aH
	oB7OCiSyO0lXHHv3E+rCPgFSAr7f3OXBBH6FCVLjupR4ZFN+CY6S13lWrGkamv/i8LFD8AXqxt9w+
	hBEg2xIyUkGPctdLme568gnBnuszkjLdyizvNjm6t6EbazzsrL2MM7/vjKELYbDotaHna57LA9OAl
	h8q+tBy1RHL2x51TsipNaFINcfpL75PqSECNr4qhile8qvFZQ+zs+IkawSg0Vu3DSOw0d9piXSGkN
	o/2p0qqV9MVY5EA0S5jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8SW-0000000GpXi-0xhL;
	Thu, 04 Jun 2026 13:50:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8SS-0000000GpWu-3dsh
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 13:50:06 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6548P3HQ600152
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 13:50:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pNZYhuT8aP8yjUE8ts6a4+Zb
	HuHx6SQBsmF68wpFsBM=; b=ZJCO89+jHh6MNbWGmkV5dEEs5s3lM9jadMQaLPZW
	7VuttPfqDB3Oo8hcN3C/ctDbFdKJ3mGrs/N3FOYzqBWWZ4zRERVPO3Y8TKiFth6l
	Nq5Hrs8OQu2r3Jv6KAUYytPUALjbNfW4TcfPs+i8tqE2kMBlt34Am79ihU/Y5NEq
	apWkOPJjQ8krMW/r6xg+IVwE7kTtXgS7qTWwwPltVMBoQzggnG0YvOy3Sa4PeAmj
	8SUz0M7+QynNRuKucV9xS67PDdppdTbGhgf0zkW5Ew7D9TpkLttUDT9XItB72yQK
	dMLp958QWaCNl97S9WftCYT7rX+trqIi7dmtcVQihd36LA==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejy8m2mqq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 13:50:04 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-96391e58e62so978533241.0
        for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 06:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780581003; x=1781185803; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pNZYhuT8aP8yjUE8ts6a4+ZbHuHx6SQBsmF68wpFsBM=;
        b=YJav2TskQtz/zqt1DEJejFvdJZ2LHroQmich900HQUrqA389hRsWg8gjsAFglCMjI8
         EMC1hIRHYDUPzjzKTnlrP/0pm4TzmdQSfXePn79iVB0SC8UQF1NcOtBwTGuVXmtQfJci
         Fshw6V6a6T+wOtOr3l/dBFjDApVRSAcuuNE1/BIlEjqCnWmlYmAHy1Evl96pkLHILl37
         i0CDEb4Gaqe/AWfMwmmSH4pjXOz64TOVKoLYgQeaH/rd9HScwj6R31z9cSMjpI/GwuXo
         uDsigj7lK5HNgOzUhyhYmrHN29pbdJuafb4OVqiyH6c6NDU3Trh2ntHsDz6YK6TeYH4B
         j4tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780581003; x=1781185803;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pNZYhuT8aP8yjUE8ts6a4+ZbHuHx6SQBsmF68wpFsBM=;
        b=ZtNzbP5g2q6AgxPhcv78aLMyqQ2bVZKHQJix3quniIm0zphIGaJCrQJY8Aqm3T9i6h
         m8RuhHHavNK9/c/wB5co05YuOgGpXOVQjjsdrzKWcGKHcuRM7V9x5STXc/Pfo5DVDpy+
         kNQ3daUTSRECfFYL8cXMRHehGdcqCA/TySPRYsn41GkFj/I/w4bbnzwFP2IhmNWV6FJm
         VcJTPqvtBM9TQZ2ro2AVZkwW6I5ihB6CsizrKT53e49WywHzuI0diMECLCJzbkyzc1V8
         YAlfc2iG/ka6AFfETQ3fyX+35z9ujEknHu/DUp0b1PkBlu3N27D4r2faqMvhBCqMT1Hs
         +JMg==
X-Forwarded-Encrypted: i=1; AFNElJ9WhKl/KWN8ZIw4GKmRcPiqf4ym6DlZRlajcIF7mjnIj5wZTlkt09EkOXttL8bpY8QKw6gF/sIK2I0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4TYM1OWh3X1qokcXjqnqKghkx9eXk9hm6IvCkIoHbM3ElYciG
	Sp4ZIQDTzsuI5tZFF5SOIvQbuSAcl0zAhbCCqoirI2RJvv4SeH/yOMAfTt1Hud6/9/wzliiQzXz
	C+olvvMTSmN6as0cNFQauMdMzJXFuJR7MiBClff/RN530msZuz8XV/6xYHeM200yFxmRt
X-Gm-Gg: Acq92OG5zByQ/XZgfjWnoFGMZuxHf0uLI/6Z47dYV7waop2JVWq7dWF9Pl/iHXFIj79
	NZfPUZ9kXLZNjcyvfmSqWP7+/mmUse4LIjh2gnVSBrX6k4nIEEmwWaKtVpYE2S5knAfb9tY7fRk
	6ya2TnzWU6/q8S+z/cfiKkJWvWJU+MW/Y9r2HMxcH1ZiHzGJHPA5EK8GHEOiy0dWKTDt/ZUGYMv
	l3Rehw2MLeAZz3TZ/aUtVjrCApAaPcHA2fuLmf7NHHAY73y/l0yRlBYPpkwWddyiU8CeHe/q47r
	t9cRysSpT31cIC5svDobP6UrXZA6YEGVdJJ4SqRQDdijcmk6+h5QFDuP/BPZHljioA5qSMRVIW+
	FqoQ6jGaXIXNXacjHi/BgNw61dx1MXLb8/DbYpdrlWu7OOutIeLxcXBDjG/zOKv/IS3VHi36fd8
	fSMR6yD4c/xm7SGiz0Dq8mBon3lNP8BiMLO/lwEcBvaZi4gg==
X-Received: by 2002:a05:6102:26c2:b0:6c5:3cad:68bb with SMTP id ada2fe7eead31-6f53f84fb55mr1743878137.2.1780581003113;
        Thu, 04 Jun 2026 06:50:03 -0700 (PDT)
X-Received: by 2002:a05:6102:26c2:b0:6c5:3cad:68bb with SMTP id ada2fe7eead31-6f53f84fb55mr1743843137.2.1780581002320;
        Thu, 04 Jun 2026 06:50:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b8fdc6bsm1211693e87.29.2026.06.04.06.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 06:50:01 -0700 (PDT)
Date: Thu, 4 Jun 2026 16:49:59 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH V1 1/2] arm64: dts: qcom: Add SD Card support for Shikra
 SoC
Message-ID: <gq54nr2bzvvqkocphvkji7g7rhbsrngsno7gvsfl4nsfvakj2a@wsfsnohrnscm>
References: <20260604122045.494712-1-monish.chunara@oss.qualcomm.com>
 <20260604122045.494712-2-monish.chunara@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260604122045.494712-2-monish.chunara@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KfDidwYD c=1 sm=1 tr=0 ts=6a21828c cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=6ET1qOE6ZwCBE8PxlAYA:9 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDEzNCBTYWx0ZWRfXzaHZkzVy0QLL
 B396hlWn34o5kIX65Hsr2AlCXBEb20sRKeZOnT8W0znLt4P4eMon6hXd2K6vtAGpWELX0yThxyc
 k+l+EWIKnfE/vrBPvGJ963NByHQEsXiYQOh3tQ27SYOxMiLNtY6+OmIeHF5yp7WosSHb6edgMrK
 tUEmz/gPKH+cSEzo9y9ec8yd4KQIZklFS6TaMH3cvFzC5A8oQEPFFIPN8UIJWnouY8eal9WDY6h
 aOPaHeH6ujvEatNVIxJ0Ep0WxKaZ2yI+ZyGpbYdIMuZ/b2fJQ9UVZ4YabtIx65QSD7YaSFRr3Gi
 sxXNG9Cf4N3g9tuj5diJ1vmpDHwNn2bnTM7dLpgs0gZdX2DJBY4kuk2YLSFDp/m16LB8J+wBd1v
 CI6WgiwmRen1rIJLeLtD1kyptGqKzcp0yXvyLB4mej7iiaRv44Y1M/tRzp6cD7pZLh0/092Jevg
 6WPa4WGqJkFyLyTTDnQ==
X-Proofpoint-GUID: RnMrDujEUi1p99VzLhFf-_GyPAVdzrBs
X-Proofpoint-ORIG-GUID: RnMrDujEUi1p99VzLhFf-_GyPAVdzrBs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_04,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 suspectscore=0 spamscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606040134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_065004_914584_B563EBE8 
X-CRM114-Status: GOOD (  13.14  )
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

On Thu, Jun 04, 2026 at 05:50:44PM +0530, Monish Chunara wrote:
> Add support for SD card on Shikra SoC and enable the required pinctrl
> configurations.
> 
> Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/shikra.dtsi | 93 ++++++++++++++++++++++++++++
>  1 file changed, 93 insertions(+)
> 
> +			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
> +					 <&gcc GCC_SDCC2_APPS_CLK>,
> +					 <&rpmcc RPM_SMD_XO_CLK_SRC>;

Misaligned

> +			clock-names = "iface", "core", "xo";

One perline

> +
> +			qcom,dll-config = <0x0007442c>;
> +			qcom,ddr-config = <0x80040868>;
> +
> +			iommus = <&apps_smmu 0x0a0 0x0>;
> +
> +			interconnects = <&system_noc MASTER_SDCC_2 RPM_ALWAYS_TAG
> +					&mc_virt SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,

Misaligned, make sure that ampersands are at the same column.

> +					<&mem_noc MASTER_AMPSS_M0 RPM_ACTIVE_TAG
> +					&config_noc SLAVE_SDCC_2 RPM_ACTIVE_TAG>;
> +			interconnect-names = "sdhc-ddr","cpu-sdhc";
> +
> +			power-domains = <&rpmpd RPMPD_VDDCX>;
> +			operating-points-v2 = <&sdhc2_opp_table>;
> +
> +			status = "disabled";
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
