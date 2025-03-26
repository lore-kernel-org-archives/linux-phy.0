Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CEDEC3600B
	for <linux-phy@archiver.kernel.org>; Wed, 26 Mar 2025 14:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNDf2OYyTfntKvc2bdw7TNfuyLbgF+Y4Xd8NwJXj6kQ=; b=4RjpEzoFjxRg92
	5zRbc7zqddKK/8/IdUGvVpyax/UDAXxn2iw6U7uH5McV10PySWqycJVLnm6lRRd6j9zXaY5c69+UQ
	YwneE9wFWw/kmc34TmxDEnbNPeP+s2NCw0/7/4B9lFovl1QHkIdAdZITTQl1LO0uC2FflMXz2iwbN
	6VakxKZXTLxgZQGFym91Cw8tKFqnYetB/uvkmb0zvFcsg753vkkoFIdczZ65CQgghJ7gKxaO1RSMj
	kCT3YgJFO4ah4T44/ZzrS9NHU85GCW6fggnljC7eFrfzL5NRKYOjr41ltRAevBLIPE5+VseLd3MkL
	5iDOGWFl/t13QHrOQ3jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txRr0-00000008hh2-3ivd;
	Wed, 26 Mar 2025 14:35:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txRpr-00000008hXO-2eCM
	for linux-phy@lists.infradead.org;
	Wed, 26 Mar 2025 14:34:28 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52Q73H3O009110
	for <linux-phy@lists.infradead.org>; Wed, 26 Mar 2025 14:34:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RY0WQaB9X6ZreP0NVetrV9wA
	t2tqT58NwwimdxdQF20=; b=NoGaHWXDU+LVn7AtakWhD0dYjqhRxg19LcJnyWot
	M/3wJQ88MXpKvUmtVT0OZ7pDfosQbmfvVDvA2VlMiKKAUgk8p03yDTe633zFmNyw
	gnKRUaH4ngrb+70yFCr5ihb5jJKMuE/c7jZ6Z7J2CSFA+vtWRhNynmx3Ah5F3yld
	HbIar1xIAdoM1xcaqNhtdKV4b8IBmlTqByep1i3f5uQogALygQmMpu6eNteXZQKr
	s5LwbUUEbgCDtTNbmOgGqEn17IuH2ORrZ5cksGaiOLfkTfLfHKnOXGGKR9Wb4skG
	spaqFv87QtX/1bB49QeRtKJNOTDOdov98QopXiTB75gBnA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kmd4n9gj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 26 Mar 2025 14:34:27 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5d608e6f5so203566785a.0
        for <linux-phy@lists.infradead.org>; Wed, 26 Mar 2025 07:34:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742999666; x=1743604466;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RY0WQaB9X6ZreP0NVetrV9wAt2tqT58NwwimdxdQF20=;
        b=AUVNuQtwBoJ+PzyW33P4pC7EHNyqwMzxJzKeW58FQBtbWKq9fOJtas2b1VnM9pDAHC
         2iWAQX5cmbnOX8HbRqpx+PwUCYyRHMGzlZ/tIgZBDndqy+rYtU4XCRcNr0Ih9mTKKqfg
         gxBF7rbDI9g7Eb1y+2PkJFstFe20RdyqNGenNgru9bgxcCPjs/sgEZSpW53RhoTPMzDm
         +SbxS9dVhr2pp4P5Hd4qWzReOF7dYEVrxrNPw1IMD+kQXbgLkmfUHmhXMTKo5h8o6RED
         APqy9VwZ+0QhnLak/lczFpgQ9RlWSjcjlaC4eEtLByB3FhuwghPA3hEhQ1s62UW41DS8
         s8lQ==
X-Forwarded-Encrypted: i=1; AJvYcCUH3o7pzSePtxF/SHL8Iq/6JSvZIVZ07r5OIWH7WYs4Xy9AviNgeJmHZGRjHeAM+F3vP3HYWHV8ZdQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyIE97LcXiYLn5mnpYpNRELe9m6/8cYpWoNTtex4n4yk5pg4rrw
	nqb/nnqM6w9kJumneOn4sTa4iOTqgbfu+x2bcCrGgQ97Bwi+AxItAiTOrj6Bl9C/tRvg4NuHNBy
	QGl+C8DGVQY9WfOO641oZT1GroMsMk1HWJjbt/ay+I650J7KdYFkh2cYs4obgzQxq
X-Gm-Gg: ASbGncsd/Z6X9SGGC2/LDcZEDES/n5xhAPFAcTCYpJlWld7HfYpqamBtuOuPiWJECZl
	cST4PqLIcdaorwidOeG1s8URerbGNbY/N+gaDcIdMoqRu6VSml72vJcaAJJ7HcCdooj3Mznwl91
	VItwl/xwsC6ZlRps8iysI3F1doABz0ZMIxYzq5C/TLlCwkj/9ZaJzcSFMOS7dea9OJ/Pui4oOH8
	Krz33CBY69vXMHlLQUEwGru1faFKimDF7RDFE3HiB3XtUc5+beo1rSBFtWlQyrknBRt90o6RSZQ
	Z9BON95KPe05qN6gOu/rWb4yOPeFgZxZdDVDt4JNEzsXsc3h0oxEelLuhc96M56rLNwNvs4KC33
	RVlg=
X-Received: by 2002:a05:620a:4588:b0:7c5:4d22:2149 with SMTP id af79cd13be357-7c5ba18febamr3269038785a.30.1742999665687;
        Wed, 26 Mar 2025 07:34:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECnr4KG/OEqDIRPkCO6WNP3n/KkReiXPV8GoopXIeN6jC6CBHU7czD9VyoO4qTAXKU2p3ZKg==
X-Received: by 2002:a05:620a:4588:b0:7c5:4d22:2149 with SMTP id af79cd13be357-7c5ba18febamr3269034685a.30.1742999665204;
        Wed, 26 Mar 2025 07:34:25 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad6508252sm1818881e87.179.2025.03.26.07.34.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 07:34:24 -0700 (PDT)
Date: Wed, 26 Mar 2025 16:34:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <quic_molvera@quicinc.com>
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
Subject: Re: [PATCH v3 10/10] arm64: defconfig: Add M31 eUSB2 PHY config for
 SM8750
Message-ID: <bsbv6isa4dprmirm66keduxdshm4h5spl4q5xptcuduo6jyux7@35axuo7mze5b>
References: <20250324-sm8750_usb_master-v3-0-13e096dc88fd@quicinc.com>
 <20250324-sm8750_usb_master-v3-10-13e096dc88fd@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250324-sm8750_usb_master-v3-10-13e096dc88fd@quicinc.com>
X-Proofpoint-ORIG-GUID: RWguao0HFAaXC92EtuGG8v8LEJwxVXZY
X-Proofpoint-GUID: RWguao0HFAaXC92EtuGG8v8LEJwxVXZY
X-Authority-Analysis: v=2.4 cv=QLZoRhLL c=1 sm=1 tr=0 ts=67e41073 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=xq4t1jtuFps5bkffva0A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_07,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 phishscore=0
 mlxlogscore=532 mlxscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_073427_675377_D0077C34 
X-CRM114-Status: GOOD (  14.88  )
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

On Mon, Mar 24, 2025 at 01:18:38PM -0700, Melody Olvera wrote:
> The SM8750 SoCs use an eUSB2 PHY driver different from the
> already existing M31 USB driver because it requires a connection
> to an eUSB2 repeater. Thus, for USB to probe and work properly on
> SM8750, enable the additional driver.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
