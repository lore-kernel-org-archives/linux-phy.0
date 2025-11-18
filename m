Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E8E7CCD19A
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 07:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHcqKybu8yWuFJuglxtL+Dbpqg4bNZmt0z6Y2EEdQNg=; b=dSLEkODUAvO0hC
	dz/p6yxYDBbQmeyoFCjf9U40OM3VkhiYAcJfEJNiXr6YYaVJVdEbvhSo7M1f2TaXtWSvAfzy8Xude
	dFvalpf9FQyQgxQAQWLj+VKEFtrUAm0T60iEdDMdjVsopBH12AO5xu4Uz0LkLrD2OocgectXyg6Ml
	ekZVFu1NCNqgVh4PVcPvbQYeoK8tutbPAJcXFopP1MStJGw3g3mODPHlNDtJ5ANTNO7ofoWx0CEgz
	kBtAh3v5pqYZCIGbAMWjgzmpT7OJ6xVT2bfpjdPNPOqJVlVi/h+MrAO42B0UWoDLtylDGGaPR6tlJ
	s+NCsfF40ZH5Nwr1dL/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLG7R-0000000HZ7U-3vRI;
	Tue, 18 Nov 2025 07:27:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLG7Q-0000000HZ77-0KIw
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 07:27:17 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6ePYH1106928
	for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 07:27:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+YPJPXMwuMWtPIDlSQE+IIGY
	3z6hcI8lbExcS5jy8Ak=; b=PTztex/026NqxlIOXpfBdEY885w56E0Lf/PCLzhG
	b250fsyFZgxVXFzv7gNSy64bNEEnaFaVsGMduYqatUlnQRNRm95eHwwQv3hWrv8/
	YNTt8RHIfOLI5sNXqc6B+lfU+i5/S/c8pym6IcdzDyg1zPn2Q9QODQcz3fXaIYKK
	woiRMQifn7mjCgnptJOYU0IBDXQ3kitZAn3SnkIs4/lk10J+tPBVF9VmK9dm0/NP
	mVAB1r4q2ptOSxbABkgMfthmvWBYIEda5sQvQb5V6BJJfm+7iYIh0L9QiMSjFe71
	Z2SIzxhcIoUL0pX0sdOzFLVdkxCiq4lJ3TPMvcsGwE+LTQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2hpb5a2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 07:27:14 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b95d06db747so5309713a12.1
        for <linux-phy@lists.infradead.org>; Mon, 17 Nov 2025 23:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763450833; x=1764055633; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+YPJPXMwuMWtPIDlSQE+IIGY3z6hcI8lbExcS5jy8Ak=;
        b=g+C2ScEBwMn+dx0Z2riqt2Ozk+I3AlnUkz+MGN5qrSX3yt0JuJDGCDOrVeTihcG2wb
         YWSeDhStMKs6zVL5jEmKRkkTchX20kSsXxSmKWLrKjg7uODk15VGk0SSrYDLN6fKuNrf
         TemZwhDnxGQW4aYjtvESgUX4VxlMBZhkIqNK9DLeyALaV4ldOEVMTbUBJG46uBncn1VZ
         Wg9udGl2WTE4Zwj8s5zLemkVC9TOMY3+m2gQFHTYbzxsBaZvya+u+CjpkZxK3ifB6xJG
         MhaFK3awBLaMzUngrh0AiLVl3sV2LR0F11lxHCUrN0XcG9aZOyo2JfKXmV/ZOLq9tYZ7
         oD/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763450833; x=1764055633;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+YPJPXMwuMWtPIDlSQE+IIGY3z6hcI8lbExcS5jy8Ak=;
        b=K5uE8vqKN4MdBLHs92r7/M09ysz8OZ9/ijJWhSZ4wDsL9ot73zDjZWXDClDbF06UF4
         /do0lwSpxtzyVzd/z1q2EqOtcBXJDSebXbnrUgntQJYoYb+0FNZSqAxMXcAlbipEffmG
         aIze0K1lBl3uhsB8gLRBrPfhVZZrsfqUtQSLUc+CeZDlEVPdskZoiIlvO9GMto887cnF
         O2ymC804w5psldx3vflOx1nWQxoupNmPLmFVbi1+5CdycB8GaFRfSkEqVkTgYH4z590m
         Bf7i83/KIKhmREJ/BizSIrAgCSZ/BruJzYwogc2CTY4ywCr1wWad5Xe6vzZRzyo1iHoq
         gG+w==
X-Forwarded-Encrypted: i=1; AJvYcCWpwj59Lxi0UJ0T3LJmd7jDPbovZnGKRXoCvzlJUV+b8wtA7e6QEN/+7n9nix9WkUD1mwTJavcu+4Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHSXYXrbqg26TtlnEBOpdHyt+NJq6PKY/He9Ij+iuS8PDij3cV
	BTZ03fVKrY4GvkOXgpzsy9n8pGi17BP9rT9+jawLUn2vtU9yViGM6wajZkrjifDt73686sLL48z
	YDV5/9zLkgUFIbh8cCi0jw1O9Iz3s42RO2dJuEa2dVOORFgIr0PpHkOYVo+ZhRNA/XlB/
X-Gm-Gg: ASbGncsgQun7qodELLVvOMHqNkK7KTHYnPSK+WRJnLQJpPqEd3a2zbqLRBRGlrEEoyW
	+h8K5CbLCYkZ6D3tBgm+JbzfvOhXKfrHbklOsopkHkqym9wwYkQaf1R3C9xoKT1Gc3uR1m7Qfgn
	RKkZe4LFd2dg1b3NweYvveNridBD5AEm8lExh/c/5O4jImCb3nuEMQNDkkasObNZfcCEj8E69E1
	bkDWZJTxE9DxBNd7sxfOxjwr87mO/B4+fPlo7DBa1iSMlxhSiVcy5V3M0XbiMPGTvUL9U5bz8S/
	9sE+/4iiuCCCYqVhnJ1qAfSUIL0YVWO+6c7g+wW1mDFoYLjQ+G0o3GsA6iw5BxKqBLe13a3OL3K
	76iwpIJmJwndj6p+YVAzGL0nZWcU0SL4PKoOp3VmoF/oYdQ==
X-Received: by 2002:a05:7022:4188:b0:11b:9386:a390 with SMTP id a92af1059eb24-11c750a7e91mr1070245c88.23.1763450833057;
        Mon, 17 Nov 2025 23:27:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHbNCvsOiL8ZS+pAuABDL3Gy6F8Zr8vYWsr5Bzv9WUjJiWh8SDxOqpv8j0+EDDltIqiYDldGA==
X-Received: by 2002:a05:7022:4188:b0:11b:9386:a390 with SMTP id a92af1059eb24-11c750a7e91mr1070226c88.23.1763450832431;
        Mon, 17 Nov 2025 23:27:12 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b80fd6790sm31322813c88.10.2025.11.17.23.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 23:27:11 -0800 (PST)
Date: Mon, 17 Nov 2025 23:27:10 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v6 0/3] Add support for Glymur PCIe Gen5 x4
Message-ID: <aRwfzv+bs6/4W66/@hu-qianyu-lv.qualcomm.com>
References: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
X-Proofpoint-GUID: wN9VIPo7nEQ_ijBlDpWH7zXpXF9W1zd3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA1OCBTYWx0ZWRfX/QvbjyTwPPv7
 2bjCPGZ51OQBG7DqA6cdttwzaY47HRu036h9eonjxMjx8a99Fn4lNEPHMHpjd5oeu6UBQQSvbu+
 fClc5qLj7Y8WmPBCiLtH5ZAfw3+7RX+8X1Ot3EJB24K40aRkvf0UbIvitoEuAG1jieduL9LyjPj
 HgcIFuHURNFKpVYLcMOJiDZh0qhTiE0RUgfq+SUD3mzIP6FSJNbjg1ezoGfVNg1tYReaEGFHolc
 ZMfSMPG69OZn2KibfINJE4O1yIJFuoxOD5fA4YMVduSC8bV8J/21r7XYO+0C6hZ0lhSKAP5R2sf
 Pq/pFo9d+Jq8pEy6P7eQnEp7HgbPSkm+FqrDrnQ44GPXloTgDN6c/RxtKh0gmsjGwW/pwXKc8YU
 daix7enxQCutvjPh4A4dzVBOuIELPQ==
X-Proofpoint-ORIG-GUID: wN9VIPo7nEQ_ijBlDpWH7zXpXF9W1zd3
X-Authority-Analysis: v=2.4 cv=Y5L1cxeN c=1 sm=1 tr=0 ts=691c1fd2 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=CuAKqyvv_hBz-pJDB50A:9 a=CjuIK1q_8ugA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
 a=cvBusfyB2V15izCimMoJ:22 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_232716_285843_0EE3708D 
X-CRM114-Status: GOOD (  21.57  )
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

On Mon, Nov 03, 2025 at 11:56:23PM -0800, Qiang Yu wrote:
> Glymur is the next generation compute SoC of Qualcomm. This patch series
> aims to add support for the fourth, fifth and sixth PCIe instance on it.
> The fifth PCIe instance on Glymur has a Gen5 4-lane PHY and fourth, fifth
> and sixth PCIe instance have a Gen5 2-lane PHY.
> 
> The device tree changes and whatever driver patches that are not part of
> this patch series will be posted separately after official announcement of
> the SOC.
> 
> Changes in v6:
> - Rebase patches on 20251017045919.34599-2-krzysztof.kozlowski@linaro.org
> - Remove PCIe Gen4 x2 support because Abel has posted it.
> - Link to v5: https://lore.kernel.org/all/20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com/
> 
> Changes in v5:
> - Rebase patches on 6.18-rc1.
> - Add PCIe Gen4 x2 support.
> - Link to v4: https://lore.kernel.org/all/20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com/
> 
> Changes in v4:
> - Rebase Patch[1/4] onto next branch of linux-phy.
> - Rebase Patch[4/4] onto next branch of linux-phy.
> - Link to v3: https://lore.kernel.org/r/20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com
> 
> Changes in v3:
> - Keep qmp_pcie_of_match_table array sorted.
> - Drop qref supply for PCIe Gen5x4 PHY.
> - Link to v2: https://lore.kernel.org/r/20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com
> 
> Changes in v2:
> - Add offsets of PLL and TXRXZ register blocks for v8.50 PHY in Patch[4/4].
> - Link to v1: https://lore.kernel.org/r/20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
> Prudhvi Yarlagadda (3):
>       dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe PHY
>       phy: qcom-qmp: pcs: Add v8.50 register offsets
>       phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen5x4 PHY
> 
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 32 ++++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h      | 13 +++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 ++
>  4 files changed, 50 insertions(+)
> ---
> base-commit: 0688945f3e5f85f64c7fc9157223f92e0fc5cfad
> change-id: 20251103-glymur-pcie-upstream-bee1d45f5e21
> 
> Best regards,
> -- 
> Qiang Yu <qiang.yu@oss.qualcomm.com>
> 
Hi,

Do you have any further comments about this patch series?

- Qiang Yu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
