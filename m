Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EBC8CA0FED
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 07:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVZdyKcd3YVHpsYa7c3j3aDIRLI4ZBkhAefGQFkaPN4=; b=RG9tIrybEbrAOv
	ecTnv+R6fQ4UEIi99ScjUq6PaOrjmsd5vmM+b2N9qgSUXm3pRMx1xH90Zg6PJsj0ABO1HvbnOKWwJ
	FSbePlHivj21IlQQyO3gGUGE+jEzk9Z3oZEHmlG9HE2PQLHEFVj+njyWbU9w6Y0qTxWSUuGsBRsZG
	n+fPbLEMnMAyBK8cs9LUlWGcuEZj+OMhYZ3xQbBeufkZsHfXoNCyr3xBMW1pO4r2mWsHvJ9IfU9RZ
	30HOH+t9K1qr7I/zAzF1sFNoX2y8XdqQ29WgAn5fib7nn31OxL3lI+l3NNURtoW2XIIgFoRszInrq
	RzQZT6ttnev7w2oCRXhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvssJ-00000005Bz7-1RS0;
	Tue, 09 Sep 2025 07:34:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvrYv-00000004boz-19yB
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 06:10:42 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5895aPK2006015
	for <linux-phy@lists.infradead.org>; Tue, 9 Sep 2025 06:10:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	10/u9q+Ectl5aZ4oToFDw7ffJZNCBBFAUzBbsaG295M=; b=MQyu08Eg7cEJVEmU
	I1wgOJUpg1xSzLHrhw8119YJdVWxQLVtr4k0wK7LN4XUBw0CJu0YGvh4FcJ5nVNV
	YvVRls4WyFEOWUaNTPru4iC3vj1Cyif45YvXh8DYL+CPbo0YmrTMQVbdhOKvFzOF
	h2Ndg8hRMbTD+UBUg1sEBbdBxav6X6eQrcj98gQAwXnTAlimoWt5MJ4G+0ZUSIsP
	bpbMx3P2VjTKSumFq6wxM0VoDioZpLhfwGIh6mfwf0TpltpK1EF8EMpFkdWVYADF
	3zqhrqkXlaYpO5092DDopTnh47gLjC2yWrIpKV8Ryh6Iv5+ho/ZxOeAGNtw+QM9C
	3/gIoA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8a701u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 06:10:39 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-329745d6b89so10604195a91.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 23:10:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757398239; x=1758003039;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=10/u9q+Ectl5aZ4oToFDw7ffJZNCBBFAUzBbsaG295M=;
        b=aUT1omS+VMJuheOqy+KkiVj6LrVg8B6wumTdG1o/9eZbAWa3hSqli9v8Mn4935h5bL
         c5x5jfxM73LciUkiC5cFs0QWW9/vUSTqV7aPWc/YKME30wDqSvLm3tDgwPPJEzOF0t+u
         EKYJzN0PIGQJVH+RmEhZn052iafoep8NczuHRN8L6GvORidRFWFsunCMcNlyPTb6wbVK
         77CIFGZrCC4H7y0OwECspRdOPCe788sORG9E3V9OpWDl/bHxc95l47XpXwW7nTPe2eYN
         W9gsX3LLxSGr2HZPkzVWVvtaufWudcIgXza5mHIZ3kTbuz1vyz5PfJA9ntmpQchCW++y
         VYzg==
X-Forwarded-Encrypted: i=1; AJvYcCWfefUQ4mdFDxobV3bmcfXV+AvPDF9lG0krnQVXyyZ4Rzr8QSf42MrMHcOVC5XbGYFYnngf2ubgrrM=@lists.infradead.org
X-Gm-Message-State: AOJu0YydR6UUJvkdWnukm7D08o/eZmjQtG9riMBv5uAy5AtjaKGdCoDR
	/bmdvhi4TpxgDESGJc12AbRcorKR8ofKRPEpAXgG7UWYFOEgHyVdL9yAHbLvKPey+XIPJMayD+1
	Ag4VXDQlHrLGC8Oean0S1klo/MSzRZ7USloH4T/49oeyZvJ60UySo7a3t2lO796QWaj7/
X-Gm-Gg: ASbGnculpqqum3YTHghTYsxzc62+w8Z1Mb0V6aMX9Q+205Kv28ODw3IHhOlFX1bLvgp
	qamXylABPStR1+yM8O1ENJBT9lVXsu6WlVkoarMlMhzDcwFwyBop4LKIcoWRSu6snbcJ7PAXbzN
	tVoer/ZhZP4w/X+tNUt4IZVV7xlrgONPshGDOHSCfeD5uKwthE7l6rNjtmF4sHWVSnsvESh7Afp
	ThCHeDbrTSz4+lKhzC+McI2j023tyAM1Kn3lU8ituF2/Dpaq21fUWvWw18WqC2kENKq4d8vNIrB
	TS2qH59OL3nsXOlaXne9m2iH4L/UldDs1May0RG9JQaDSxoJokr2iCS8QSLFcqQ1jSKzekDlazz
	+IFKCZwQjdKnYdt0LkNBhnq6eNX/sUg==
X-Received: by 2002:a17:90b:2b48:b0:32b:9506:1780 with SMTP id 98e67ed59e1d1-32d43f4383dmr12807298a91.9.1757398238831;
        Mon, 08 Sep 2025 23:10:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/3YW/AGyw1pOiBdMzWKnU27fUqMCjMtdcgsRqWOBX438S0Hzgd28bb+NRvv3OT8HTB4tgzw==
X-Received: by 2002:a17:90b:2b48:b0:32b:9506:1780 with SMTP id 98e67ed59e1d1-32d43f4383dmr12807249a91.9.1757398238249;
        Mon, 08 Sep 2025 23:10:38 -0700 (PDT)
Received: from [10.249.96.170] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-774662f9cfdsm853480b3a.101.2025.09.08.23.10.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 23:10:37 -0700 (PDT)
Message-ID: <e514dac2-a732-45e8-a80d-a7a1b889f593@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 14:10:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] PCI: qcom: Add support for Glymur PCIe Gen5x4
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, konrad.dybcio@oss.qualcomm.com,
        qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
Content-Language: en-US
From: "Wenbin Yao (Consultant)" <wenbin.yao@oss.qualcomm.com>
In-Reply-To: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68bfc4df cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=nBUzdE8Pax3goPOuR84A:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: 5bZlCLBtPFwp8huMkYhizdT_HdmXSk9I
X-Proofpoint-ORIG-GUID: 5bZlCLBtPFwp8huMkYhizdT_HdmXSk9I
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX/TVXcpHp+ZUd
 me+JQNTNFMpU/iXbRYA2xuFx21Ix45Vw1ajT2RDlkP9ncbvQd60ScsGrWW7Awq8R0vuf3wMuvkR
 WsMdCE3V4012zZqV8z25CIwjRSxfqikIJHzx361ed8LSjpMKoeLCF+wdGg7aGk7pFgQdywWJxTD
 S1ojnBCWxC9pmL8IFxQ91vbIAjT5/WSEUhEhARQut0bs+n6BQfwRGupzQKyim582CkrlioLD7tp
 xSJhMckB0PxUptvNX9ljxB011jjtRMoPQT4S7GFtuua6B5Ijq7FUVhOjZs41fAhnxWr91I1OOe0
 b2V11cdYNVWknj8zBvxGrw0ZXfKiS+ebctJGxe7745aYlfHrOlqgVSLBSzQOyAMCTqxrGQQcJ81
 a7uoW5jg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_231041_340378_8E1288C2 
X-CRM114-Status: GOOD (  20.34  )
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

On 9/4/2025 2:22 PM, Wenbin Yao wrote:
> Glymur is the next generation compute SoC of Qualcomm. This patch series
> aims to add support for the fifth PCIe instance on it. The fifth PCIe
> instance on Glymur has a Gen5 4-lane PHY. Patch [1/4] documents PHY as a
> separate compatible and Patch [2/4] documents controller as a separate
> compatible. Patch [3/4] describles the new PCS offsets in a dedicated
> header file. Patch [4/4] adds configuration and compatible for PHY.
>
> The device tree changes and whatever driver patches that are not part of
> this patch series will be posted separately after official announcement of
> the SOC.
>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> ---
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
> ---
> Prudhvi Yarlagadda (4):
>        dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe PHY
>        dt-bindings: PCI: qcom: Document the Glymur PCIe Controller
>        phy: qcom-qmp: pcs: Add v8.50 register offsets
>        phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen5x4 PHY
>
>   .../bindings/pci/qcom,pcie-x1e80100.yaml           |  7 ++++-
>   .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 ++
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 32 ++++++++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h      | 13 +++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 ++
>   5 files changed, 56 insertions(+), 1 deletion(-)
> ---
> base-commit: 356590cd61cf89e2420d5628e35b6e73c6b6a770
> change-id: 20250902-glymur_pcie5-bec675b7bdba
>
> Best regards,

Hello, do you have any futher comments?

-- 
With best wishes
Wenbin


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
