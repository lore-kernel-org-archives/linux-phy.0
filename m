Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B61F7C36002
	for <linux-phy@archiver.kernel.org>; Fri, 21 Mar 2025 14:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJKjruWRYbbOSDc6eal1G042CkwwB3udqP22xoW8XEs=; b=Jee5d9eRG6DfaW
	3lQMv1xgzXhOH8O3SY36EU2GBjRHbIK91ucLXhdIwMoSJZl3G8MOTjJc++v+YcDD7iqJAohvIpw2k
	DAd5ud0eXT7FgjyWIwhiw/lqu9Th6vfYHSdcpjawqJQOwYnvHnsHyeeap+iEY6tqn33dXmNFhZPtr
	ptkrEuHhAsSffexJQtwIPledAp1j6EyLg6cvPfI02rW20kM99m13p4kLrS44J0og6vNwaMlBKJha5
	2Xep5RmDXAkMBfj3plYtTPhzw24CM1LvUJ0Awf+1GojZrB4A9ICz99+VXrJVIRYvl68Omx9wvOEM9
	x/zO0jc7F8EEaUAHiQMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvdFN-0000000F5MT-22jO;
	Fri, 21 Mar 2025 14:21:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvd80-0000000F3ab-1lTp
	for linux-phy@lists.infradead.org;
	Fri, 21 Mar 2025 14:13:41 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LATD70001588
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 14:13:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/OpsejO/nFX3sSiWvHtSM8e/
	VQXv7bXmKGj+8glzoBM=; b=FPVlj4zzrVAJVgRA0tFAUrVa2rWZvCfOke+pU7tr
	Hpu3XPD8rb8vPqIY3TTEBf50hszdjHgJDzd+tg8X/+H++klmbMvOY0ehw99aCSa7
	uq2dQ+4QA4QKRvUXCxsYOrv+eyLW6cigopp0orb8wcW7LxFYs7RjfMmfFxHMedhc
	4V7HSUn1rEfmnK9dz8P1aCLCRmbluP+r90Y3sb2Z3yjN1e0IsJk0z0D2l1iUI5n7
	rxDbBJERCAAltD+oclMWWZiR9XON8zcIPDBpn7VOjRwnEAJ4ivxEX+tVmhfQ439U
	YGgE87sWNhZuCBD00bqsTaO45IlZH4rzKMoBbEXlCmRSZQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45g3sf6790-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 14:13:39 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-476753132a8so17370051cf.3
        for <linux-phy@lists.infradead.org>; Fri, 21 Mar 2025 07:13:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742566418; x=1743171218;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/OpsejO/nFX3sSiWvHtSM8e/VQXv7bXmKGj+8glzoBM=;
        b=TV1PsdjLeXPUvTDD7Bh0rWeWwmsQJJJdemVc2InX8bgn8gwS3Q9V0PnLoyLtbQVRrR
         RtsD2wdVr+1MRlqzbjKgdXVY8UaNpz+ZOl5MVWWxyiCWo+89qHH9MJWXLnfnCfPeLSgy
         7EJz13wirecA63ITgP6oKU98atVUf5Z4kE2AmU4EFPwIBhXijMiJC8MsLMZYFYCU9qF0
         gUxsPmIIDRjo0/p/Hc0pOCMC1Sq27PyVjJoh0xqVSTNrcxK4b6SlCuo5aC6ydRx8UsSD
         5MRInpj/yzg6m8Jj1mLTP2HpThEPA6hb0z6qPEf3ooB8kLWcHhnUdB7lziHmAvBdLXHw
         FiYA==
X-Forwarded-Encrypted: i=1; AJvYcCW6vago+G5pEZo+vv3gZNGV/cGGYFsIWAQSiMMzgSj+Q2PvV9PkS1ilGss4O96oPsXQNYXlSV/iTYQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxGPg7+Qh95/0y8VgjUBxmVDtaZa5snfnXeDiVlawFsmCYzY1PH
	ysHBhREQyjvemcaENnTeLUT1S2zvptMuI41rwUdlcDayiem5qE3dxqT0f/i+1+UyA3MmmoAiu0R
	odZyi8TKQIvRO2W+OBPQ69LPHl6vQFUOjMExBmRiqFG4yy5Q/Hfn8tMPjGLlypVLN
X-Gm-Gg: ASbGncvF7SPY2clO0EqD13FRp4/z42rquwaYEYjufsGdDcTc3onfWkvr3aIxi6Va9BC
	Gn1zcL4JOE4pyaRNjBvIWHK9W6ET2p+sNyaEbW4shwKG3OK7r+mnHHIibGreUh783c9uJzG79lp
	PKYQW9equNRnsKXbiElE2VMk2pPwNeFqcFslgSEm0G01+EKdv9D+qyXzBRaIzt0WkqapvbpAKf8
	08oErXcMhNwtdHgP6iaICx7iKEyNFOQMJBlUhWMmbvPa1JcEsb5HUAfP+gPcNqpQV0akVTfwXRo
	lBCVWgVm0D5s0CIkbWvaOINr9weOgLkChpR9l2Vb69KzgF7y7hlq+cpgzC6w7fIKWFlxjlrNolp
	98AY=
X-Received: by 2002:a05:622a:1896:b0:476:8225:dacc with SMTP id d75a77b69052e-4771de6129amr63272401cf.49.1742566418634;
        Fri, 21 Mar 2025 07:13:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGcpv7lxv7hq3U7s9ctlOYQCQmLNU4dbw+zXD/Ekb+GQhj36pTR5y+EtUBwPhZ6EX2Ma2zidw==
X-Received: by 2002:a05:622a:1896:b0:476:8225:dacc with SMTP id d75a77b69052e-4771de6129amr63271671cf.49.1742566418102;
        Fri, 21 Mar 2025 07:13:38 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad64805c8sm194189e87.90.2025.03.21.07.13.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 07:13:37 -0700 (PDT)
Date: Fri, 21 Mar 2025 16:13:34 +0200
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
Subject: Re: [PATCH v6 6/6] arm64: dts: qcom: ipq5018: Enable PCIe
Message-ID: <5seajsw64e7mber5yga3ezcnvip3e4o2wylg3uhvaiu5pob47i@ea3rnxqrigcx>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-6-b7d659a76205@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250321-ipq5018-pcie-v6-6-b7d659a76205@outlook.com>
X-Proofpoint-GUID: YCHMnLdyYdwfgacY1XXQjV43T_QZa67L
X-Proofpoint-ORIG-GUID: YCHMnLdyYdwfgacY1XXQjV43T_QZa67L
X-Authority-Analysis: v=2.4 cv=R9IDGcRX c=1 sm=1 tr=0 ts=67dd7413 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=zzgNwz6f6jWhJtTWXysA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-20_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0 adultscore=0
 suspectscore=0 clxscore=1015 mlxscore=0 priorityscore=1501 malwarescore=0
 mlxlogscore=544 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_071340_580727_35474D87 
X-CRM114-Status: GOOD (  13.32  )
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

On Fri, Mar 21, 2025 at 04:14:44PM +0400, George Moussalem via B4 Relay wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Enable the PCIe controller and PHY nodes for RDP 432-c2.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 40 ++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Minor question below.

> +
> +&pcie0_phy {
> +	status = "okay";

If you have schematics, are you sure that there are no supplies for the
PCIe PHY / PCIe PLLs on this board?

> +};
> +
>  &sdhc_1 {
>  	pinctrl-0 = <&sdc_default_state>;
>  	pinctrl-names = "default";

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
