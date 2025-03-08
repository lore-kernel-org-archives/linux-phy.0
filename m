Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A67CCC28B2E
	for <linux-phy@archiver.kernel.org>; Sat,  8 Mar 2025 15:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=khwRRXXqDwn76e+rDR9GUTqJbahsfIeeExCja4VDi4E=; b=LxEkZrzdndgr8b
	293bc2g3yDc8+MIzQQnV4n6qq/8vlUJtQSc1i6/KOT46sZL9Nz+5Y65VDFi83VipdDitfJydiSHOO
	9bjhSqZ0Lxfpfd6BA7aGBSH0o0398fZsO8GQhhbggu0Nh+qbhVGGvP41kO/sZSsYSWIsyT14p6uzL
	rSw00x+8ywAy+52sCLOL9HNB6z0isZB7dBNYccZ81fgUw2u/RdgjGMenN1JGV1a6kRU4Tim6s/8vk
	VnXt5oZTKPlVrnRcf3z3qJ+mtCwusCIZeFF+37mM73wndY1DijvCJEppP/POirCBM9dCoPmst8d2F
	+eHOR4KHj5bldTWSzGKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqvow-0000000Gm5v-1BO6;
	Sat, 08 Mar 2025 15:10:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqvnL-0000000Glvi-0WE3
	for linux-phy@lists.infradead.org;
	Sat, 08 Mar 2025 15:08:56 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52870eDn016623
	for <linux-phy@lists.infradead.org>; Sat, 8 Mar 2025 15:08:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9WvEgSQ6fjLHoWS3Q+wrjvW0AGfYG3GKpopCgkxp6Ro=; b=pm3Q5tMk7TXVfjAr
	voItw4cmezcg4cFw7t8NmsUkDERgQUACEOGihn7lbmphMlWl8PPxm/jQPN/kzsxg
	pv2X4eHso0gs6UXwfFIJI2V+L+hpvTSzOMh5tD9PH1Kr7s8JJd3+vbEelu658R/9
	fENn5xZd63C8/+3exPGG2M04E0i2mJJJAdI0BqLAFLaq2ICqCryftaJmioOePiNg
	dDsmDVoeO/M3hjjvFDz7K8MGAkTFlNWei7No7oHiYGse7an6rhiJBM8QKDJ0OUsI
	BmJV4l9rtJJPLtzeUkBw3qRcZDivDihFbLTRXMlQSiecK+WhGQzAsvLR3Zj8R1Sk
	URtFKw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458ex0rrht-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 08 Mar 2025 15:08:54 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8fd4ef023so6131346d6.2
        for <linux-phy@lists.infradead.org>; Sat, 08 Mar 2025 07:08:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741446533; x=1742051333;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9WvEgSQ6fjLHoWS3Q+wrjvW0AGfYG3GKpopCgkxp6Ro=;
        b=Xhlw/JjZGzHLzNFmlSB6AMftZQ+oUTPmdnqnFS+PCI27zq2KE8Zp3Gg9Zm9XrSz9qY
         h3Q9CMfUYyEfM7Ke4RchUqrk4guvwDH5B9K7umoZg1rWfo7myyObmb/AlwFAjJBF/iU+
         IIHQx0smf3uZyMIAZZI72fu3iOCBwjEN+HCsTDOPZ0aCqievmEQhJmAXpHWVo7dSeRK0
         g9YNVCceivdqaImFua8GZRkepPLBxZMBo7S0ECk9HCjF82jJCIpVyKPST5HViQ3vCNyP
         kCCPWZuht9Zci3sIvE0lcRuyt2TQz1TLsIlsVdaCJauJS8eD9XvtT0pd8glka9yT8nnQ
         x2NA==
X-Forwarded-Encrypted: i=1; AJvYcCVtMFF8t17LDKS1iAgH5SuY/k5x4CL/s999yjSv6YfhTBiVN9nPQPGKqvy6ki45K2flYhOgzsq9V9k=@lists.infradead.org
X-Gm-Message-State: AOJu0YzUdwu2rksKQVVpsGaMuWJgUc93ODvsX1bJWiFTtKhnbrB4sP8S
	Qh4XLb7ncFTwO3++/cveY8D2/dxrmdygpmRma/UWDUSS5fTIoKCMGVUfy9x18ZxuE44wQM4AW3/
	SZ+Z6xFxft/1hsJOurhfxHrW3AmkPVsDFHj322wIIaC6NpIBwOFrfGPUamDKfzm5t
X-Gm-Gg: ASbGncvW1VllJpiIIKwPxoFs255Ifs81Y/bV3THWTGNY4kHPgIA8LSPcQDEjcuCGe30
	elJBFpjMBVN4tixIDvr0tosM/99SP+rXs3zOqMaYL4ZitQ+sr0iQa4NG8+Zpi7uNO0GoBMZtP/9
	CxVa2V+3vv6l5i/kJFhQZMfIGZFNf6gBV3rwJJdDRWtDwW2W3ZzPbG8kUQm7xLKyc2SNmAc1jHO
	g/aVTn8Q2Gd6o6/lrzJw6woNrrBiTtYHYekjVPI8W2dThBf1fOU5buji4PaP8m3B5JCS7ZXfH1a
	pFI9atXrQzP6NN2pJEksJN2WPo6ypbBNyIQqeKW6OJh5LnQVPO8IqM3WZjnRcxGmbyRJWw==
X-Received: by 2002:a05:6214:5289:b0:6e4:2975:ce54 with SMTP id 6a1803df08f44-6e908cb5248mr17585276d6.3.1741446533294;
        Sat, 08 Mar 2025 07:08:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG7VzZfMJABr9wvGjQaN3mynWkb62I3My6wlogqF3sUcltn/eOJ0ALm9h7T2SCMQYhNBFiMvw==
X-Received: by 2002:a05:6214:5289:b0:6e4:2975:ce54 with SMTP id 6a1803df08f44-6e908cb5248mr17585166d6.3.1741446532965;
        Sat, 08 Mar 2025 07:08:52 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac23943878csm443575066b.23.2025.03.08.07.08.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 07:08:52 -0800 (PST)
Message-ID: <aff4fd18-59a2-4378-bfd2-840bcd1a2392@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 16:08:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
To: George Moussalem <george.moussalem@outlook.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        andersson@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org,
        kishon@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
        kw@linux.com, lpieralisi@kernel.org, manivannan.sadhasivam@linaro.org,
        p.zabel@pengutronix.de, quic_nsekar@quicinc.com, robh@kernel.org,
        robimarko@gmail.com, vkoul@kernel.org
Cc: quic_srichara@quicinc.com
References: <20250305134239.2236590-1-george.moussalem@outlook.com>
 <DS7PR19MB8883E4A90C8AFF66BCAE14F49DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DS7PR19MB8883E4A90C8AFF66BCAE14F49DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
X-Proofpoint-ORIG-GUID: 40D5aq30oT0OPTvJ5RR44AXCzyjQhSod
X-Authority-Analysis: v=2.4 cv=f/qyBPyM c=1 sm=1 tr=0 ts=67cc5d86 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8 a=eQ806-ShdUuXvpoWo40A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 40D5aq30oT0OPTvJ5RR44AXCzyjQhSod
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_06,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 bulkscore=0 phishscore=0 lowpriorityscore=0 mlxlogscore=585 clxscore=1015
 priorityscore=1501 malwarescore=0 adultscore=0 suspectscore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_070855_291965_91F6094D 
X-CRM114-Status: GOOD (  10.53  )
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

On 5.03.2025 2:41 PM, George Moussalem wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
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

[...]

> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 142 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +					<0 0 0 2 &intc 0 143 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +					<0 0 0 3 &intc 0 144 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +					<0 0 0 4 &intc 0 145 IRQ_TYPE_LEVEL_HIGH>; /* int_d */

Please all the comments in this patch, they're not very useful

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
