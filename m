Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B579CCA476
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 12:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajtT49PapxhXs2SPXI6MVepxi3c3/32ZIG5fN+9fnQw=; b=mPRWgPaWB8bNVL
	JSCMqFrcenXrAqQFlYZ19qMcn/RTDmvfi2t5HNA2dPhKYDPVqDPSJz7Edq8ellXH2gSJYa/H20jU/
	D6ElX9uTCFBA8Mx+V9zVERkivSpD6iI8lvMzEKhdYkaigAwTpROkclZ2VUiApEhJq56xVua85dtbj
	MDwcuwKHHD5zbnhK6fiwFxZ7cP25Nj/KeIe/Yz+UWDpkUXvKBj0I9H3XOqz2kXD3swmdOAN0CKHBO
	J8IHqpUHiEJRq9mxDDf+sQts00IgOh/UCzhD9zfXkQA46ZRaEhsTLTmAVPLG4mJG8Zqj1CUq1cKU6
	f/mMgTEGdhBNpPCHuuWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Hm3-0000000D8jH-15AF;
	Mon, 13 Oct 2025 12:35:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Hm0-0000000D8ii-42tf
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 12:35:34 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DApTOd022356
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 12:35:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=m7L3o4Pwi86bgIe35Awo4E+H
	exJtX6srm8LE+iq3Tr8=; b=jZ5vOFEegJlPQpNfq3lTwLEnKM2Ukq9nwYbVRsfM
	XsN1rgjkcOX8zxZOxM4o45s1FEseh78LcztQ+fmeRqquEGP/39OkDCXLVDa7q5La
	+lRHXkqajUk2aR8U5D6n9Q4SmcC+curU7m0ND7GTQC5kok+JNl9UM+1kCXAcNKLS
	/M2Uhl2bsPfo6STYYZ44vvKVk8RCQ8Q7xUEN4KC9RgNujHSfHGJ34ZHFd5WyoDPs
	TgwJbgrZXjTmzbhY9RrZaO52pNzB2GdwdvioGfD5A2X6CvSBGDBZbSoKQ7KA4V06
	BgnMfkx6A4D1htxF2nQFc463c8jd4TBb1b9yxdtas3Rnog==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgh64er2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 12:35:32 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-88375756116so247223085a.3
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 05:35:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760358931; x=1760963731;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m7L3o4Pwi86bgIe35Awo4E+HexJtX6srm8LE+iq3Tr8=;
        b=I+C3xoHdEa8XMsNK9V7ZP864H3Tlr0pw5VKAMA/5teVZgdn0c8cgqnCQmdvjENHKwd
         A0x6GbPzQWE0fjvgp4hYLRZgsHJMUExDDVpEriJfQIUlsD2jsXVIS4QNLdBF/Fba9f08
         YqaOHk2RWK+v9h9JnOgOjPlOZRyTS+k04DwMh4NwuuT1hfNHPWip48fg3zPzBLJF2sk6
         8A/l711ElkIi7AQtuIzzA/DGHNNc/RPbt38/uIlsMwO6bZ2Gf57z2iDh7nytn78/g/ZG
         Ja4beaikK6cBIhnWmnhius/rfPvLeHBjBEFYAl6OcIOCTdY/M6WNrxb1CAY3y0sTT2kd
         LgqA==
X-Forwarded-Encrypted: i=1; AJvYcCUnT96CBG91ckDyuJA1/902/ehpDiS5Y6rr58TNCv2VIeJ8E1DHmLSvrlPIAmpghjHxOY45dG8F2pk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0irRp0toE2EyUW9HtPiYNGRtshKgBasFg3sTXw+9srNurnzGM
	Ur3soLy2GWcrnjMK1kxiCGndz53bs5TnlG5tKolq6AvFYRMPqBzeCO3JTXJaEpzxOpkPjT7MXtN
	nmXQ6BI2shD2BbSat0pP87QguRSDyLEQrk4VteizDCir2AcUkm++fKAF+Yevr8e90Q0/S
X-Gm-Gg: ASbGncuM/2X+UevoJsID+dHJvx6lruWZrc2WEwlOg1be16aKf+XCJFcvxseyIWib0pn
	Cda7AtmtSaE1W62gZTzdqHiCszYbt72Z/GGXf0khEiXV3z3YG5XadrW0vOKsrmq4DGA/Bsi9D6c
	IJzkxLvwvcfzxAKlKqA7nEA61iIz7iJC+zUef0ixjIdi3fa/7TZtWRRS418N9LWm9scDes4mGLC
	fVpmddP2xL5cn6Kw468Xa73Xy97627MGiv6Rxur4XYPwun7pP90G/S6zBPasapjNxQhfAYq/n+e
	Eb10Yrjcy1SNx4BBMTPHZSTRZQu6Lu53Mtz/S84DO3rn0Q77xlxF3upcjV4fF61OQgLxNUBcBYO
	OAUkPqQowYynilEe0T9bT9paVx8Ia6GaHFYRF7z7K0EtS55yFHNUp
X-Received: by 2002:a05:620a:4411:b0:84f:110c:b6ec with SMTP id af79cd13be357-883546e153fmr2786635885a.76.1760358931016;
        Mon, 13 Oct 2025 05:35:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtTA5MLWXtycAaJRA0YpGMVukU6FtceKKwRiGS0eYpqRLVEiT3h5hR82xs7c3USv5CsJzY1w==
X-Received: by 2002:a05:620a:4411:b0:84f:110c:b6ec with SMTP id af79cd13be357-883546e153fmr2786630085a.76.1760358930475;
        Mon, 13 Oct 2025 05:35:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881fe5besm4080369e87.50.2025.10.13.05.35.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:35:29 -0700 (PDT)
Date: Mon, 13 Oct 2025 15:35:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 2/3] dt-bindings: display/msm: qcom, sa8775p-mdss:
 update edp phy example
Message-ID: <cjweltdnffozpi5amqvrfwikw3a4plogjm6ozhbf2lqee2neby@ueoha7dmhpgq>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
 <20251013104806.6599-3-quic_riteshk@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013104806.6599-3-quic_riteshk@quicinc.com>
X-Authority-Analysis: v=2.4 cv=H/zWAuYi c=1 sm=1 tr=0 ts=68ecf214 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=en-7mTTXfYbHl6GqnY0A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNiBTYWx0ZWRfX183GaYsEEHzL
 1PwRAZvxvl+2CL2yEL4t227YIC1A2KvBcT5mol+lwumQOefHejIgzv2k9y0tR78fb0am/WZ1IeL
 5bdV6jEYmYO0FrHzZhknDSWBPRfXvM2+uKRtuWscndAP3CF4C2ebCDSAizn57F4u7tWkx5oWXC1
 LQLLaSB9hhbX3JwS1b8Ii9Nk0rfVG8pyblu6NSODmqsUK8g8fjXYR8njoh+cdfkwRLNzgOKT/Pi
 npFB5J2PJDWZv+yuTHe5n9MmLqdI0EgXntjrgE/wZkR9zAvJRY0On0v9+9XlmiDEp/UDg/iQg92
 ZD1YpZZT1LOCXIy3IhJ2BpGC2UIkUrvitBcqww/fz7z4QAYSWGVFd6wtYK6VTuOXqxv+ik4svA6
 HWB6EnA7yPL9tDJEm6HaawHP0Pk3RA==
X-Proofpoint-ORIG-GUID: HFGEsig3KAphe74xhnZvDA9W4daXc3xc
X-Proofpoint-GUID: HFGEsig3KAphe74xhnZvDA9W4daXc3xc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_053533_027415_A41BB381 
X-CRM114-Status: GOOD (  13.11  )
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

On Mon, Oct 13, 2025 at 04:18:05PM +0530, Ritesh Kumar wrote:
> Update clock entry in edp phy example node to add support for edp
> reference clock.

eDP, PHY.

> 
> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
> ---
>  .../devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml  | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
