Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EC59D16812
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 11:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9duJJjCvL9lvgyZgxCdtJ0xLK8XfLvjgEj3ksk5SUw=; b=fKMjxttFSvFYp6
	stxKBYqgzJOLXWn76FlfBet6d+USe/69mREotVG5A1vcin9HqhbW9a9kKVSrZc1tLENqwiKI1Bj/r
	wEf1/6/k9BQ7ckLngf2x4wVBjnNTouttzjyKCUs7k8IuyKAfsbei9kAa7SMmrRjpmPRbB+XtEosWS
	JZqY34rEpF7XAQNNmhNpwGf1VLZfkoe7qMz8XHvqfkPQajpRM++waqESga+juTJeKZAEMBfIhUXG4
	fRWEY3KcvW6g1F1vUOHV7zd6VzcAoOGBDU3mu/c+veRT+QLcOT4IQeuxbJy2+QNbA0Mhv70sxFtlv
	nqFc59bA3o3b+D/y/6qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veARZ-00000002CWI-2bBD;
	Fri, 09 Jan 2026 11:14:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veARX-00000002CVs-0hBD
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 11:14:12 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60952hre3542117
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 11:14:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pbGsyEjb9GLUxR/KE7Zt2yh4eaMOiAA5kJ01ApCC77w=; b=ARHEqsJBnJaq2osq
	Z87MjGzAlY18jovCmDfmtA3z3cSuu0Fr70TN1CKh6m9jWM9CFxn7mw4SDL9Hlg0a
	l3EvtqvtYViUB3lbOl/u6ZuLoSWg36RUH64qc2CB+HF31wGLPXZSFvluq/9g4Ggm
	ZSqcFrGopLuge3wVPZuRpDnjytjfv5sTUGyL41Y87noMqVEg0PKxcHvGcIUosZ3/
	6ypZRzdYCxV6kFo9BAHZUmsjo0Ad1O3nhNVnUgYjgW/UmdkOrkDA1CnkOClUREG2
	8TJtnDPLGXUrs1g2aKe7gdAKbJxlFh9HAxA3sS27pdu7x0KlZdyTYTmi3IMP/VRr
	xSW5Rg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bju6b126w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 11:14:09 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ffc6560f05so4097721cf.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 03:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767957249; x=1768562049; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pbGsyEjb9GLUxR/KE7Zt2yh4eaMOiAA5kJ01ApCC77w=;
        b=BM+d3fmXQXyVta59KWbgnCtqhSfOqB25GFP+Whaecoco9/FNYSm5faeTbT2JsjFl3X
         AUCkbB2/CIUIr9jLBh7+1EB41BcunfS0OK85ap+jPS6lgxM4DOKM1AhO6q0mhRP4nufi
         wutAejZOq73ybbEumid7Jx2kJ9qJj47R/SLfAS3uWd2GzxOb+jTOVgRb7ORiHoELGZbE
         g+7kwqKdlKPf1xJ7ho6Fw2jylDb4/f2B84d3A4+qLNaRKiV20mGnDXMhMA9cbqUFTRly
         Z+5RysOu6wabHd/6EK7kG2K4NtnaVGoxaFRNdZNL0yulVkW8Nz93HPp4JF6o6GrxAn0l
         VnrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767957249; x=1768562049;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pbGsyEjb9GLUxR/KE7Zt2yh4eaMOiAA5kJ01ApCC77w=;
        b=jXOQ/cA3hYewRhd2HUvIlwYxiQwkI4uLICXASY3q/eDGhz+etSUNMB11gWPcBsU1ce
         N096QIh0iVnTnNHfJqvJVIFwMb62bDed5+Phh8dzjA7YPXpQ9gY/57Z3OFddm72ZJRIV
         91EkHsYYKb3sSlt2kjITUnuH7R46BNKLXmdGxxbx0d0Bo54Mbty2lCjFN8g0uklSATg8
         WVfHnSzvSeykhBbtO691gW1KWCVj87DBCN/VyYQtUkcdCcpLGNvZ9pE+9G57EwtM56Zd
         iuJfrSXx0MxD7DdyHY9l8+kkQjnYjlmJidESVGV61nT7JoFC8yPUrtjwl5J6MGUxcVxG
         AB8w==
X-Forwarded-Encrypted: i=1; AJvYcCUtp/5KVX2lzIbahXKMCaC7lS9F/wyaZTfi3b195EaPNmnind05Oh2fVYcgP70e5SpYKG9yE02UlWE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5H/dTgUAJ8b+uZyc8nH5lDdHztAbp6Y5ocsZcrL+vRbaWb0Wp
	v7M3pk7T4PlnntUgcIEPvbsSeCfJ2PsAjwMIRzZqqNjeQVdkj5Mul3La6rlhRRkzKVBL7MKLkfX
	gVIkVSax4ErZFPDaWfG40sOuAZYwqbUzbkCnv7oSueUTtv9+0WSDu/IFx4+x998E4W1wk
X-Gm-Gg: AY/fxX57itoIrGTTODpqG10GlkoiRxJVpfgG1SBlvdQ/swxXOu8GuQpNMvadg25DGmj
	zay3Uc5Fvbl+uA3isFrR3t/bHMlFXWGzjfO9cL1uBejS4L7hLi35dxdHuCCRMdpOtOIM8KM4c0p
	a9pEccsxbXNNaD96N3csmVH4CXM563awGMY+LH3P6+jZN5Ul3bS0cqiP1jzSwSTrC+rx3hM5Fbl
	Wlo9bqL37m9sXOR06LZpSosXHTi6erfflljfzkGQ7Pw7ZSHGSpmWKIytS5OqekLGXBdf9NSF6la
	qtH5DVt9LIBGfGS0OlzZXEfe5KhNoVB2X/XhnxytF1nqXdXWdmYKtl3EdSenPlZwdVkFR+8R+po
	adn7E0OpVXxuG55rPnaOJzepB2f6GzTjG2wRZiZ4rpJUI51FfIQEh14xjObJda2nqfys=
X-Received: by 2002:a05:622a:51:b0:4ee:2339:a056 with SMTP id d75a77b69052e-4ffb487fcb1mr106443571cf.2.1767957249098;
        Fri, 09 Jan 2026 03:14:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGdvN0j1mfTjJ9QiVsMbOTGrNWeD/W2yvwWHCpWlcYUo0gPkpqG1W9F+oG5sS4PJEpVUDXSWw==
X-Received: by 2002:a05:622a:51:b0:4ee:2339:a056 with SMTP id d75a77b69052e-4ffb487fcb1mr106443331cf.2.1767957248609;
        Fri, 09 Jan 2026 03:14:08 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a4cfd97sm1044008866b.36.2026.01.09.03.14.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 03:14:07 -0800 (PST)
Message-ID: <be6aecbc-3ea4-4282-b777-0dc8ae1b8c26@oss.qualcomm.com>
Date: Fri, 9 Jan 2026 12:14:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] PCI: qcom: Keep PERST# GPIO state as-is during probe
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
 <20260109-link_retain-v1-3-7e6782230f4b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260109-link_retain-v1-3-7e6782230f4b@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA4MiBTYWx0ZWRfX1V77rVX2+lL0
 8RqPNttKRoRvZhHPSKdb0iaeyb2XoH1z8Q3AO8mGIPrlybqjR9PL0iDoGFUJyZARH2D/aJyADwX
 jhOCk9l0VaKIhw3DZdBMEKJnTP04bnJ0M7rOYFFvJuJjppWzgRh7mXLi/M76JrdxNOccmWvH/C8
 sO8hPNB9A3lWgRaB7tN5ELtCQrU2kyFMmzJgVV4UzJrQrPiUESTD+plEAWzJRgqwMiJYz05BIaf
 u96hB3oM4zY7tQwFPFr6jb6zWiZFMdCUKkQztpdwU4jcGcCu+fo49slXQMO6sRa4wnFnNpLm2Gw
 O83VPLNah2R3dTDrFnvPzW+SeF8d5Bx/QTzM66r0Z13IznK10DurcQao4pqd2nuVMglu6B3KBjY
 P3+0kEsxZCIu1TshzjPm0gzF7oxy7bYG/Vw511KDTbc8l1P48+8E7Kwft+DiBXr8tEBb0JvRfLB
 aBHHUya56FwSA4ihC7Q==
X-Proofpoint-ORIG-GUID: nAyS9zCQN68b1tXqAgn53H6EXFTh38Jl
X-Authority-Analysis: v=2.4 cv=V+5wEOni c=1 sm=1 tr=0 ts=6960e301 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=M-jGJTmE-ygQmRKCDXMA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: nAyS9zCQN68b1tXqAgn53H6EXFTh38Jl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 adultscore=0 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_031411_331468_73A88A72 
X-CRM114-Status: GOOD (  17.57  )
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

On 1/9/26 8:21 AM, Krishna Chaitanya Chundru wrote:
> The PERST# signal is used to reset PCIe devices. Currently, the driver
> requests the GPIO with GPIOD_OUT_HIGH, which forces the line high
> during probe. This can unintentionally assert reset early, breaking

                                         ^ de-assert, probably?

Konrad

> link retention or causing unexpected device behavior.
> 
> Change the request to use GPIOD_ASIS so the driver preserves the
> existing state configured by the bootloader or firmware. This allows
> platforms that manage PERST# externally to maintain proper reset
> sequencing.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 7b92e7a1c0d9364a9cefe1450818f9cbfc7fd3ac..9342f9c75f1c3017b55614069a7aa821a6fb8da7 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1711,7 +1711,7 @@ static int qcom_pcie_parse_port(struct qcom_pcie *pcie, struct device_node *node
>  	int ret;
>  
>  	reset = devm_fwnode_gpiod_get(dev, of_fwnode_handle(node),
> -				      "reset", GPIOD_OUT_HIGH, "PERST#");
> +				      "reset", GPIOD_ASIS, "PERST#");
>  	if (IS_ERR(reset))
>  		return PTR_ERR(reset);
>  
> @@ -1772,7 +1772,7 @@ static int qcom_pcie_parse_legacy_binding(struct qcom_pcie *pcie)
>  	if (IS_ERR(phy))
>  		return PTR_ERR(phy);
>  
> -	reset = devm_gpiod_get_optional(dev, "perst", GPIOD_OUT_HIGH);
> +	reset = devm_gpiod_get_optional(dev, "perst", GPIOD_ASIS);
>  	if (IS_ERR(reset))
>  		return PTR_ERR(reset);
>  
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
