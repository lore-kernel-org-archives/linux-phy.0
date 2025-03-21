Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A4CCC36001
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 14:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64K08rK2O6yGY48jQHQSbAuXEwF2fezHMQq1Uw0n5Fo=; b=yeA29ZyE90mjXI
	ki2BZts86HA74flZ3MUGjMtHp0rTqr49dNKkSeCsNk3mYd6cUc6SZ3a1dB+8WibQN4pS2YA9FLDyF
	pumpWmD3Xu9BseMuqJYiDtp0R7J+BfrV3hxlcamEwNqIdZjdMnoHtECFeHYfoijxSuR37tpjwTeCr
	CBjFhdqqYQrdjGajAyE4Nv1qzta5hoKCBulTqjYMdvPuqCLEaCVURP77fjHQnYdfPaRQ6iI3dLW0O
	eI18SQk4UGTDIouOogEFCUnCzngNJwpf3OfwlbBp7mmCuI7VOmY46s9XuO76rq4jQM9B3UypXlWE6
	SZCqigZeeyWKeDvXiSaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvdFN-0000000F5MG-0yCE;
	Fri, 21 Mar 2025 14:21:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvd5m-0000000F3Ay-25Ph
	for linux-phy@lists.infradead.org;
	Fri, 21 Mar 2025 14:11:23 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LATEk9001626
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 14:11:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=enO7l0H3hE0QmwcHT71cY/s3
	vWok3ap99CzatKJPkdU=; b=onTNuDhCNCTfXSrPOBUcLvp3f5OeALfpEsuhqHW9
	RCv52LkJ7SN2KAleenq0acOkU/xJgABrrAcTcYmL1A/0ZTF2KUurtJCKAZW5eVdM
	0YMevWr3UTANvyorpyF+QXyOX0iim7CzFO1M73VaDIQ7rL7jz3YMovWVpuK4H0nC
	ZV1yZU5fizpEfF5OgZUo8wtW7i5GOOWqAEt1LRqApZnduWNL/70Zs+5Yqt9OwAE6
	KdR8TJ/whDUmPRDaqt7Zz4qG6NO0h0cH5dVmBUMto9EDn7kMAuHbm1Y4xca2Bexz
	wxfWeKUra2VuxsoY4LnJWphMnIpWAoEDJc4xxwK4Ijn6YA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45g3sf672e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 14:11:21 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6eada773c0eso59557826d6.3
        for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 07:11:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742566281; x=1743171081;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=enO7l0H3hE0QmwcHT71cY/s3vWok3ap99CzatKJPkdU=;
        b=GAD8gsy2oua3Tri4dhBo49LdpyPaGB3u+oebzMyRQTcuRAox3WkYVwxFP8DMwtoSYW
         dICPB+DwcV9rtwKwqQATU/mjs9Lqxgq4Vk7MwGMc4vjglkT5voeP6AH8q8fBFPXOUi4D
         GnKBLBqkZ8KBgBpNBxS9S+3dkjGDS/8+N/D5f2IYjPrC2drYAKAHyNVTmOH0VMgtarO9
         Jh1ZpJ+p3dG0N835HIkQrQJQoe2RUJ4CLAAxleahsoIYPPg8YcSnhKaxkdCup54mP5iU
         D3GhJ+dl5UuEBsbeQjtTxXwccMylMc2nI590lQIjRTDTtzwcvmminur9pn4hPh15LrDo
         1QRA==
X-Forwarded-Encrypted: i=1; AJvYcCUl3xZW8ZhzdQoWI4aHVArVin/h42y4gKGiXo+h/Lg5IfSjS5Qj3lr9/GeHYnJaOG+GFJd3LtYapX8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwbccAylZ2b8WVD/VKDUQehI+vZQvWpP/kkqPtN/i65mC2hnBHl
	tDEsEUuVxnLy/gBzomWMD13hIJ+of8LmHcrpnAWYpsT2k5vjH2SzMXhjNqeUvd4wwWGLDWcaBqP
	ZEyiN5GueuZSXg74XXGKkWxAZhk4tgSbIaFFd0w9pfu1tGaag4TiBe3TQ84x8OaqG
X-Gm-Gg: ASbGncv2ynrKnxjQX7HRqjUv2SUMq0w+3aGMfnbDwNTUpBiIPLzvaSQHyjpxwwL+Z+K
	mwyr0mBU9GexlOMxBtlsAvvbM1D8yAKB5ljLsnNNs5+yDa0FU9sIGkOEVP42x84GOqdUMnPmEvN
	50/a8/LiSN8+gIptm43fOEc39O/F2ft83UyTwPBKhGA/Szc6rz6Jz6bEAifshgXQv3C5j3GMhN8
	44I3Lw+1Cqmp2LgmIof0gssmMF9PG9/boIRvqPBRmcz+PXoMmuo1vAUoETimLX4jddr1ue9Phkl
	yNFXSmHMmC6zBIFugc3g9sHMDXvNoUxpaNdTWCwwHaeTDLm21q+rQG4GR3CPeLssip1ecoKJSey
	lANQ=
X-Received: by 2002:a05:6214:248e:b0:6e6:6c18:3ab7 with SMTP id 6a1803df08f44-6eb3f323055mr49278486d6.27.1742566280632;
        Fri, 21 Mar 2025 07:11:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGeivZrTcegaXr9Av/yzGkp+WEb5kB2nx0cZWW158gssFezgkz/WGmpsLNHyxLHrjlqxKgOeg==
X-Received: by 2002:a05:6214:248e:b0:6e6:6c18:3ab7 with SMTP id 6a1803df08f44-6eb3f323055mr49260706d6.27.1742566260223;
        Fri, 21 Mar 2025 07:11:00 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad65037bfsm191161e87.183.2025.03.21.07.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 07:10:58 -0700 (PDT)
Date: Fri, 21 Mar 2025 16:10:56 +0200
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
        Sricharan R <quic_srichara@quicinc.com>
Subject: Re: [PATCH v6 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Message-ID: <6szijrbeubobgkiccxvs2povplcedacnofpqtlsnz2se24yjcs@3g2nry5nk7dc>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-5-b7d659a76205@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250321-ipq5018-pcie-v6-5-b7d659a76205@outlook.com>
X-Proofpoint-GUID: TB8kUn79idei_rPtnIu4QtZgpV_expjG
X-Proofpoint-ORIG-GUID: TB8kUn79idei_rPtnIu4QtZgpV_expjG
X-Authority-Analysis: v=2.4 cv=R9IDGcRX c=1 sm=1 tr=0 ts=67dd7389 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=IwAU_dWaxX3plY3JidMA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-20_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0 adultscore=0
 suspectscore=0 clxscore=1015 mlxscore=0 priorityscore=1501 malwarescore=0
 mlxlogscore=387 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_071122_659259_9A95A345 
X-CRM114-Status: GOOD (  11.94  )
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

On Fri, Mar 21, 2025 at 04:14:43PM +0400, George Moussalem via B4 Relay wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add phy and controller nodes for a 2-lane Gen2 and
> a 1-lane Gen2 PCIe bus. IPQ5018 has 8 MSI SPI interrupts and
> one global interrupt.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 234 +++++++++++++++++++++++++++++++++-
>  1 file changed, 232 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
