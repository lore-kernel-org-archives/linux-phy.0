Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D8AFC36000
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 14:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=42kDgMfG6+33xuShlSp9e08/Yl+iBe1wb/FDCPxAQvM=; b=Yca9O2McCnlVij
	Dww4yOjzj4rRYh/WbdgQiLBzfnpobAerpkQ9BzJnC7fRj38CZmsdCbg6TMUd25L5WPv3IlkzhHpHv
	xQ9+j2XZ7AKjok7FbQ1okGivbd+C32mw0ag5so7QR6VwbT984tBHZj80djuoAZ6I3hpqYwZX+c7bT
	U3+FyQ2VW46YltXAjYP14tWtDYgLN3v+IlEsrA7bp+dWudModCIl1v9B89pGXE/cHfY1fMJ7U4pOt
	yzNvI40zBF9TLa5/O2yVXdDe99+TpCB47VrGXk73Ek6tO1n32T8Bv3RyRzm2w3nuHqvRN10Tx95MY
	RhsrTapvjfnQYknJv1Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvdFM-0000000F5M3-42Lk;
	Fri, 21 Mar 2025 14:21:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvd4h-0000000F2ww-13A4
	for linux-phy@lists.infradead.org;
	Fri, 21 Mar 2025 14:10:16 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LATBlW022207
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 14:10:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rABlXrO/d+EA/FemZvTG4T8Y
	szCxU8QYVwj9/zb8Fxg=; b=lO/PJpClRKjsCCzvlj+u5eNER+cRh1Cj6kCZY9r7
	X5a3SMYE/apIkt0wf6i1Zoaiuz1RuQYaguqLI/dOTTobkjx7PXdEFNLx8ieJ3XQe
	4KiMFpgjse3rzo9Rw/pFz3GDhNVwp4C1uybWSC4PmnUFKaS2ZT3d2FrmaFSp2hv5
	0zacoC8bwVY5mN82bN9Nv/ORT9/PTgnZqcignIQYh05bO5ADTOpB/qv5eZjIDkSm
	RiRSFJfwAnvJibzTxlY26J26TCyid8kY2HQxlzIynacl36ddqJCfSEVrjxdo3Ptj
	EserzgTJosPCUxjuR+0K77EE0kdVPyh8Qe+mV13EKkXH5Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45h4wpgwth-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 14:10:13 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5b9333642so177339085a.3
        for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 07:10:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742566213; x=1743171013;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rABlXrO/d+EA/FemZvTG4T8YszCxU8QYVwj9/zb8Fxg=;
        b=hsbPMklqCaaYgkzj8VUsniaoJbOGegXTUk2lXxjTTB4fKifcTFn0xsLUD979yijZ2s
         QHMrznx/Jb3Ju0ZCzdjtSZyur39q0+wsNEDPo1R454Yj0DwTpem5IncpQLTxZ2I8xOx+
         malwRakEEBqi8E9lKcqYLiXNMuOZ/9uhDhhCh08r6c4SCqNHerGSjB80HPHpG0yR/d5/
         VbGk27Kou7Sm70xc53JctDJHxXodeIdG/KC0+EsNGIBCxYEwF7sBFjmQ+ZmMwlHDt0zE
         0Vw7A7nJ53LKaWz4PO+xlCUUTFRzjwzcNptDWr7TkLaHQ4YBHfKU5bp/IXts213AfoBe
         ++ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFicYiAX7aNyPnAiPUwB4wlo1ef9OiyBRNw1KePfd5K7F4YBGodsrpQxt+GwvXuGuyPqBky13vMHM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxUhH+QJPoKiJ6SGG3QT+SEdyLnX7uwbVHIWyAXHyBJK4a2UgXy
	KAWVoDrOjeiI6mU6Ky1Lbch5brcXukLzWtGjyNEBuoKRl5K+t7dVuQHvl3NCDca8oym4atnOs11
	OuJR1WhM8iEiqvQxRB0WDgv2J/MPClaHJpC/lKNU6bQZD1eGI2/biBrk+rL0V2BYY
X-Gm-Gg: ASbGncuADFJSMFxrbWBBgXZSJ9IeqlWWrDkcFG7oqGzGTddJz8XFDaRvEtI1Px+F8cx
	oWXbBsAMJEYptnZPSJeXASK8pUVAtYjYRCUDVKi3Ec9oCQbljZNbjW1LZwIbzfSLV5mQXQPR2Cf
	ZQNm0+BAPURnX38ZpZJfjGEksXX1KGC3HsROqDS5dNx1l54IXiMI1riZHvsEom5AwniaHWTXYWv
	JViYms7x7LepgMUHLxUPPNkray3IpMnaIpvhMGB4XVXhiNz7fiA6tRiqQCpiWacxKFs19jXFOaw
	LbLwBI5N8yqbVB1Iu7vsKqzNzWoX6dZDmyldZ2nSVLK30ggRQdwazLiU3ToP7huPu7zpJE5cnPq
	F6OI=
X-Received: by 2002:a05:620a:d8c:b0:7c5:467f:d131 with SMTP id af79cd13be357-7c5ba20fdcamr622377185a.36.1742566213082;
        Fri, 21 Mar 2025 07:10:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEawjUzzoOOPdXrB4GX6jW7PuG5YFKtC8HWJqSmrI1KdldomofdQxJXVLISONgTpppCxQmwwQ==
X-Received: by 2002:a05:620a:d8c:b0:7c5:467f:d131 with SMTP id af79cd13be357-7c5ba20fdcamr622370685a.36.1742566212608;
        Fri, 21 Mar 2025 07:10:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad6510635sm188980e87.211.2025.03.21.07.10.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 07:10:10 -0700 (PDT)
Date: Fri, 21 Mar 2025 16:10:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: george.moussalem@outlook.com
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        20250317100029.881286-2-quic_varada@quicinc.com,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>
Subject: Re: [PATCH v6 2/6] phy: qualcomm: qcom-uniphy-pcie 28LP add support
 for IPQ5018
Message-ID: <ch7lwxgenn6hkvkvejns4buignew7k3fzpxx4zjtqcdrmvsahb@pkg53i5mqke7>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-2-b7d659a76205@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250321-ipq5018-pcie-v6-2-b7d659a76205@outlook.com>
X-Proofpoint-ORIG-GUID: feWEsN3GQCu8f5xBTMN4mYU2K4MR5Q70
X-Proofpoint-GUID: feWEsN3GQCu8f5xBTMN4mYU2K4MR5Q70
X-Authority-Analysis: v=2.4 cv=ZN3XmW7b c=1 sm=1 tr=0 ts=67dd7345 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=rOOs_Go3RH9W65nELVkA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-20_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=837 clxscore=1015 phishscore=0 adultscore=0 lowpriorityscore=0
 malwarescore=0 impostorscore=0 spamscore=0 mlxscore=0 priorityscore=1501
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_071015_415834_12F7243B 
X-CRM114-Status: GOOD (  12.78  )
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

On Fri, Mar 21, 2025 at 04:14:40PM +0400, George Moussalem via B4 Relay wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> The Qualcomm UNIPHY PCIe PHY 28LP is found on both IPQ5332 and IPQ5018.
> Adding the PHY init sequence, pipe clock rate, and compatible for IPQ5018.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c | 45 ++++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
