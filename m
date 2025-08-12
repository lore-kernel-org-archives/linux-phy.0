Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5927ECA0EDA
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 12:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpgmCVQh3yE3nVjfkfhmpyuiY9b3+/bbIl2apDTT/4s=; b=WQq8M1zjG7yqw4
	HWraRv3u+SPbYA9G4lvU/Qp/RXojNf7idv9r5FhnI+Wnp070Dqj+LEwLZE15NvDGdCWqtuAP6PZMF
	at+uzSbeL1xt1Wj28X/S+qFN4tNMU3pwLzs5Kz0W05X0fH+NzDewBHqyMtaRd4Vjo84Hr8l2G5U3j
	7ty77nZBhwvoVhDnsh/94t7+0+uiSN0XVt+flofyEl08yacklXnpgQnVXqLFpU+pOfY2hKFIC+pG5
	6XDnplBv7QxJh+65ncxlGQBp3U96cSZ2i78aXKEmIRUW8R0TBjesykSMPij5XTxX0YXJ+tUH1LKWW
	bdDGVcI4vKgQpf3U0EFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uloGT-0000000Ak90-1jso;
	Tue, 12 Aug 2025 12:38:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulkRA-0000000AFd8-3om4
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 08:32:54 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C5HjIC022381
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 08:32:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IsGAhOBPhH6jXb8JLaEGyYLWirWIfQYG+A75B8KfNqM=; b=Rl5PFVLIMkTwvV2G
	PNL46chUp4em0p4sYF7iQMs1xSk6nkmQTeIq7r0ptsLXeHFe0tA7AAmBb7HdJmqF
	clp5vz1RZfP/9d61Sc9pZkS3iQrZ+DREH6wE0o0HGdnJw0sSkVdtHdkK/da0UQHv
	ARtzYFDB1W9IXZ9QNC19i18bvBo4uPPJcK8H7pQteADuYqzv4l+qSGnq4s8sI1gG
	xWhhimG27HE7NgWH9/s9zetMMjgQRYBO8EEM8Oh5qEUCRny6O3wwLLlc4SAIIFZ6
	7F8kHu73KJZMOpaUUAyaztcYjPOuf8OyZ6oZMfXnxCEjWLkOzftOTOkpzzxg1Aai
	Mb4mkw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxj47d90-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 08:32:52 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-76c0039e0f6so5485842b3a.2
        for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 01:32:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754987571; x=1755592371;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IsGAhOBPhH6jXb8JLaEGyYLWirWIfQYG+A75B8KfNqM=;
        b=dYz1EzOcd1hHAkb1o6+QPzD3tek/TkgrxPS+sNMkKRZ8TN5DEE9rQHCcf2lCI3rwJq
         Z9fyrSgr2tSepxOidDF1DN/P07PUE1IVJQnZI72eDY/LIno//1A+kCfKPy5o2v5NG6pp
         aZlSeVi8QUTCNJmgeqy6t5nKoplVQTHVE6kmx/ABub9CglCfTD2Lk00b4wPZlMXTDDYA
         hounRVUOnbHFtXMjBTCSa2gxl8usJFkkk7jMjMMZktzVUoh2vr+zi7CrijIGs2QDEMNn
         6L2QWeuOHdLpcwYNXMYq76rDt1uRsxx0V2AOSQewGG7mQQuqujfCcULKbhbeJ7t2vZ4J
         7elw==
X-Forwarded-Encrypted: i=1; AJvYcCXmL1g2dJ0PJRQbMfSGJ5jcgi9hhSM2Si2vhQdoEYZYCvwjKRS4qj2xzC6NnSeWG/6mok15gztNCno=@lists.infradead.org
X-Gm-Message-State: AOJu0YypOTaSUEXXcgAyLLuKkF7lCr9qF2fMxq30AV3uscJzI2XoSAQv
	XLMoHbkNb8q65vO0+4BqJr1Uofmu/sFtyKBY3FlYC7LZ3/x1d7Yv7XCwgTHEP4Wp6yVFpw/mng7
	NjvNIa/WAHpOKIWzk+SmVLKdB3hTKlUS9NG3LDXMXgTEG9+2hJX0uOXGRHR+6PQw7gSCL9x1XrS
	Aa
X-Gm-Gg: ASbGncs6kKXvYOgNdVOy4PNHxDHYVJxpMR7KXbdB7IN6b3j/gq99gIQ8CWQguDypWyZ
	o8Q+Z/Yvhhuzg/DJKMLWFgBO8rOc4p9QzneTbkSeDVxxFwP8QFUzrRMeznXWGiPvxCDn109d4BG
	ivOLQr3EFdjz7s9+vSilSVFDvvwTMszDEgtA9RXLXXTWgb334XvG9HWudQn4mXILmUTNS2OGTof
	yJWQdbegwQwUENc9iQ/IqcOhpYiPXIpD0dX/iEz7afDtrAKh+/VFgIH+X19dlMafi4TtPD0ooGb
	kIgROA3PlJnKRqkLKyytfn4j6ByhuYgNycIRoEfiZnBW7LadIKuRB/vd/KgyDf8jOqjHUjy2ozv
	naTVSwtrfUu6fBAXf3epjr8Klsdv7
X-Received: by 2002:a05:6a00:4b14:b0:76b:dee5:9af4 with SMTP id d2e1a72fcca58-76e0def6cd0mr3811789b3a.13.1754987571247;
        Tue, 12 Aug 2025 01:32:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhR2w6toMfJEA5k8DSMBAr+Hp2gto1dAdBDOIUnY9c0thK8wCmrUNrTBbF64qPxgnoUtOIGQ==
X-Received: by 2002:a05:6a00:4b14:b0:76b:dee5:9af4 with SMTP id d2e1a72fcca58-76e0def6cd0mr3811751b3a.13.1754987570792;
        Tue, 12 Aug 2025 01:32:50 -0700 (PDT)
Received: from [10.133.33.66] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bcceab592sm28864985b3a.58.2025.08.12.01.32.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 01:32:50 -0700 (PDT)
Message-ID: <23e28eba-3c7e-439e-88d8-998decd2b285@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 16:32:43 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/3] Add Equalization Settings for 8.0 GT/s and Add
 PCIe Lane Equalization Preset Properties for 8.0 GT/s and 16.0 GT/s
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250714082110.3890821-1-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20250714082110.3890821-1-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNyBTYWx0ZWRfXx1jAIejT2gXR
 CMoc18zqpeEqSLKWcQrRgFAGvTLZBlnSInUVwGkwJHI+Eeai++Lx/4Ps5YD3bq3QVhxfhnvKLJn
 wiCFZ7r/9MB9HmokDRnPdR5wMG7iaPO5suRDXT0B2RssnahyHygmd9r2ZDY3TYQj2DrPIVxOsxE
 /YLRfUr5q7dThaS87joAe54YNU+woYbi6Zp9WWLJODx3XsqkTgX6p0lcHy3qTEhEEdRSu7FQZpi
 D9hcmCMvYzqvvMZ5I2RkVyHf/mrndqvsjS+qhffB+ppY2FByr9g3wlFMx4Nl4TMsmOtC2BNRY81
 VJGMnxWuVLdlinVmt1dHaussKc3a0tKUVtuZTIMP+N0zAPcDstkTMjcwT6ahv7EAo2h207Uu28T
 YBH0YjfK
X-Authority-Analysis: v=2.4 cv=fvDcZE4f c=1 sm=1 tr=0 ts=689afc34 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=JG0w1mhhnlL07z4zywYA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: M7qc31sOi-rsClTgmnBifcYwxUjXfIoq
X-Proofpoint-GUID: M7qc31sOi-rsClTgmnBifcYwxUjXfIoq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_04,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_013252_959464_06C3C23E 
X-CRM114-Status: GOOD (  19.03  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 7/14/2025 4:21 PM, Ziyue Zhang wrote:
> This series adds add equalization settings for 8.0 GT/s, and add PCIe lane equalization
> preset properties for 8.0 GT/s and 16.0 GT/s for sa8775p ride platform, which fix AER
> errors.
>
> While equalization settings for 16 GT/s have already been set, this update adds the
> required equalization settings for PCIe operating at 8.0 GT/s, including the
> configuration of shadow registers, ensuring optimal performance and stability.
>
> The DT change for sa8775p add PCIe lane equalization preset properties for 8 GT/s
> and 16 GT/s data rates used in lane equalization procedure.
>
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
>
> Changes in v4:
> - Bail out early if the link speed > 16 GT/s and use pci->max_link_speed directly (Mani)
> - Fix the build warning. (Bjorn)
> - Link to v3: https://lore.kernel.org/all/8ccd3731-8dbc-4972-a79a-ba78e90ec4a8@quicinc.com/
>
> Changes in v3:
> - Delte TODO tag and warn print in pcie-qcom-common.c. (Bjorn)
> - Refined the commit message for better readability. (Bjorn)
> - Link to v2: https://lore.kernel.org/all/20250611100319.464803-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v2:
> - Update code in pcie-qcom-common.c make it easier to read. (Neil)
> - Fix the compile error.
> - Link to v1: https://lore.kernel.org/all/20250604091946.1890602-1-quic_ziyuzhan@quicinc.com
>
>
> Ziyue Zhang (3):
>    PCI: qcom: Add equalization settings for 8.0 GT/s
>    PCI: qcom: fix macro typo for CURSOR
>    arm64: dts: qcom: sa8775p: Add PCIe lane equalization preset
>      properties
>
>   arch/arm64/boot/dts/qcom/sa8775p.dtsi         |  6 +++
>   drivers/pci/controller/dwc/pcie-designware.h  |  5 +-
>   drivers/pci/controller/dwc/pcie-qcom-common.c | 54 ++++++++++---------
>   drivers/pci/controller/dwc/pcie-qcom-common.h |  2 +-
>   drivers/pci/controller/dwc/pcie-qcom-ep.c     |  6 +--
>   drivers/pci/controller/dwc/pcie-qcom.c        |  6 +--
>   6 files changed, 45 insertions(+), 34 deletions(-)
>
>
> base-commit: 58ba80c4740212c29a1cf9b48f588e60a7612209
Hi Maintainers,

It seems the patches get reviewed tag for a long time, can you give this

series further comment or help me to merge them ?
Thanks very much.

BRs
Ziyue

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
