Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70075C87FDA
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 07:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bR2rVbbb+RtaYWjepKAbTQvSJzKT7bmUydGa+YSt50=; b=SskW94bEOBGTvR
	0Ft0GeKuIrQckRLw7gbCD9eOcL/EPpgJtTNLbkaPrIN1iZEry2bpo1tJsr7YbKaLIipg4lVCK+XhV
	VdaVAky6tYLi7XYNOs5IHovSIPDb8rRCp41ZrFTUvORVQbcNl2qfhGyef4dDls5ca1vcylzJGwWUL
	AIA0PUkkafOIRL1josFDrbCBy3BppamwuE9EEqoe9hYTrWyiBSIhPVd+4a3Kf9bcloirWyAwu0PQA
	szCw1Op2Q5Mqkqv+749ylwPUhjjDlwFIr2DPoEdESLIPEdm99qZ/0dsRQvCCVtPmSBiUVTFy5mJsZ
	Do8UJz6yD5C8NQCyuqcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMz9-00000006iB2-0AEy;
	Mon, 11 Aug 2025 07:30:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMz6-00000006i9L-1mqP
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 07:30:21 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57AMrSvX005380
	for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 07:30:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OcP8VyIXvYe2IEmI7Z5YRpFJhorfq3DAeG+V0H/cwMw=; b=VapAIphbd8bN8TYF
	KwQSuuSb3hiRYQTYuLISG6SZfskrWNw6Y2pgFpEbB6BBiDhnOzKFlZIXPQE7x91f
	yiCK8qaiHN4f7Z/ZBBc8IxtiMo0KpinwBS1Uj+uujrvhAuHJy2yJjmVN6m674Q7l
	fVm98d+K1AYJsop9feoQeqGixCsh7tYiVlHM/b04Oq3K6NS77sreOqYBjJg5mmTm
	WmrYuaB/3Zt88OHfrkMZFNL/u1tv49W9ugzONqGiVbYGe35EH4ugRmwRbZ2SemuR
	m6haRxxUuP8MPAa9zo7icgn36bIc/AhoamaKy2MA7R6VqbFEz1Y2k7A+OL9fzPdO
	T4jqXQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxduuex1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 07:30:18 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-76c0039e0f6so4275192b3a.2
        for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 00:30:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754897417; x=1755502217;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OcP8VyIXvYe2IEmI7Z5YRpFJhorfq3DAeG+V0H/cwMw=;
        b=irKTBxImcSMl4lUJ9SidjVF+3+7WUOXK8uDGqwGk/EIqvs7C3DGgTtkPXqbHmLFCsA
         ka76bUkM4BJgqlUzpBi7NRAs/dbDkU98kv0Yg/UM3q9Pkq88jgamKuos5afbEIB02HT1
         ffJR9oLTIj8bWH9RkKvM4bNZcnlmVjH/w7qpekJYp1jpkbNXCf/54Q7ux2ALQZIFB7St
         gFqLygQtqOgSbmHcmWwq/jwx7QzdXDUJycJJkrhXA1HqlVMOylGEbvTnnVb+ZxS3HFJJ
         KJUWfgQeI2TiSx403E6OYNiCPb2VxsaUYhfll9UugPKMohg7tgGVvu+Wxg9/LzpIoUeS
         UVuA==
X-Forwarded-Encrypted: i=1; AJvYcCUCM1BhpM+yMhVqI9VBVtGTwJ2cYwLemdJD+V2ceRiHuZVCHzZnV9Ks0uc0vcmB0fo6D5sNZbCAXWI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxLoxCH6q9hoVwaaftG9VFpoBOH0rZyOjQ0WyZtjBGir5Q7JhPN
	74QOnQAYnk5FUqzWhGVEnkKeFFTxR6X0Bn9KuwcI79VRMjvO1JzkTDqKgCu/lDIzqa3kgmDKww+
	QAsMzDRt69mDHtxL/yQLaF2lsJkUUJmblpG6nzbJNPeKKXrVrkv9H1pAbNvqvffMKdB3S
X-Gm-Gg: ASbGncvtqLSYuHVzizsQ4Dy/nvLC9vYMb+CSLZMiUUVHDzd73mch8d4eYILmFfdAFCh
	5lsg5rULJKIZG7A8QJmYhgrG49OhbnupNlmLvp+4ePe2d73R2KR4kCO7jr7l9/EC3rx8R/PJpa9
	n9Oyibwo5WCJ3/QfKL/DuxGeXsqOTzJF3hc27Il62KBY7iOrYGGfVI4XRVBD1QqgTRwNkgytjgp
	lUknWxfDfDLnmIs1peP9chZxqsUMREYPeCG4et5A+XzdPsgXZXoL725V7TEJFzL9KspIuy13ovS
	HcmflKrkxx+DTIL4PVDUwnlnWjPFSoc4Cd/v8FME0YQAdQ5LlnTyv2MVmPGrh2l28NmJWf6hBOQ
	mShbwERyo/hXinkP1bCAwb6wGb++H
X-Received: by 2002:a05:6a00:b85:b0:76b:c9b9:a11b with SMTP id d2e1a72fcca58-76c46088bc4mr19460954b3a.3.1754897417513;
        Mon, 11 Aug 2025 00:30:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcltBUJ0g3R1fj2EUKLW6qYXdOXJ4NHnBg4nb4hNe0riHVIhAk6EPyUknxW89lXsGXleL63A==
X-Received: by 2002:a05:6a00:b85:b0:76b:c9b9:a11b with SMTP id d2e1a72fcca58-76c46088bc4mr19460907b3a.3.1754897417066;
        Mon, 11 Aug 2025 00:30:17 -0700 (PDT)
Received: from [10.133.33.12] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bccfd8ebbsm26141096b3a.102.2025.08.11.00.30.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 00:30:16 -0700 (PDT)
Message-ID: <e9e77527-202c-411e-add2-2af9d82b8e8d@oss.qualcomm.com>
Date: Mon, 11 Aug 2025 15:30:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 0/2] pci: qcom: Add QCS615 PCIe support
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
References: <20250725112346.614316-1-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20250725112346.614316-1-ziyue.zhang@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=IuYecK/g c=1 sm=1 tr=0 ts=68999c0a cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=0rveLjV9VWli9pvRdbwA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: pTqNMvdb0Al6OIWnxm8L4ihDJGCS2wUM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNSBTYWx0ZWRfX5i2bA0B1+FO/
 YZzDdtNowmyPv7eGJ+a87cWoRaz0NgWGKRxhf4sjciF0XlwAhom4zrhF2/MYl73s81+TODOgLfF
 LQyc/9N9fyQgZAKAe36Oz9sxCmCgawUf6e6S4dg0kmD9dET/0ySwQPnxmsTF9WAbvV9678Q9nnP
 mmSk/bnozDSKnYOOn2i/RHsZwJ3RL5birixlrEZQLJYUP+Ka403Ea+K70Y8nsPv7/z6u94VVjj2
 zm1W9frARksOBbXbVQIEs7241qHbMaCeD4LSszPgvM5dsAcpKSsq82wElWZg+CgBF8/qMqSTZNx
 Ss4WEuDAFeBSYhi9x02Kt4tcLKQqZaqA1jTlwT6yJzMN0PfjEAXLWGEJm3t19THGQU63nFyJtzb
 kLSA7/2z
X-Proofpoint-GUID: pTqNMvdb0Al6OIWnxm8L4ihDJGCS2wUM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 phishscore=0 suspectscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_003020_590471_3E5882FB 
X-CRM114-Status: GOOD (  23.38  )
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


On 7/25/2025 7:23 PM, Ziyue Zhang wrote:
> This series adds document, phy, configs support for PCIe in QCS615.
>
> This series depend on the dt-bindings change
> https://lore.kernel.org/all/20250521-topic-8150_pcie_drop_clocks-v1-0-3d42e84f6453@oss.qualcomm.com/
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> ---
> Have following changes:
> 	- Add a new Document the QCS615 PCIe Controller
> 	- Add configurations in devicetree for PCIe, including registers, clocks, interrupts and phy setting sequence.
> 	- Add configurations in devicetree for PCIe, platform related gpios, PMIC regulators, etc.
>
> Changes in v9:
> - Patch rebased
> - Link to v8: https://lore.kernel.org/all/20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v8:
> - Fix scripts/checkpatch.pl error (Krzystof)
> - Link to v7: https://lore.kernel.org/all/20250702103549.712039-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v7:
> - Add Fixes tag to phy bindings patch (Johan)
> - QCS615 is Gen3 controller but Gen2 phy, so limited max link speed to Gen2.
> - Remove eq-presets-8gts and oppopp-8000000 for only support Gen2.
> - Link to v6: https://lore.kernel.org/all/t6bwkld55a2dcozxz7rxnvdgpjis6oveqzkh4s7nvxgikws4rl@fn2sd7zlabhe/
>
> Changes in v6:
> - Change PCIe equalization setting to one lane
> - Add reviewed by tags
> - Link to v5: https://lore.kernel.org/all/t6bwkld55a2dcozxz7rxnvdgpjis6oveqzkh4s7nvxgikws4rl@fn2sd7zlabhe/
>
> Changes in v5:
> - Drop qcs615-pcie.yaml and use sm8150, as qcs615 is the downgraded
>    version of sm8150, which can share the same yaml.
> - Drop compatible enrty in driver and use sm8150's enrty (Krzysztof)
> - Fix the DT format problem (Konrad)
> - Link to v4: https://lore.kernel.org/all/20250507031559.4085159-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v4:
> - Fixed compile error found by kernel test robot(Krzysztof)
> - Update DT format (Konrad & Krzysztof)
> - Remove QCS8550 compatible use QCS615 compatible only (Konrad)
> - Update phy dt bindings to fix the dtb check errors.
> - Link to v3: https://lore.kernel.org/all/20250310065613.151598-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v3:
> - Update qcs615 dt-bindings to fit the qcom-soc.yaml (Krzysztof & Dmitry)
> - Removed the driver patch and using fallback method (Mani)
> - Update DT format, keep it same with the x1e801000.dtsi (Konrad)
> - Update DT commit message (Bojor)
> - Link to v2: https://lore.kernel.org/all/20241122023314.1616353-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v2:
> - Update commit message for qcs615 phy
> - Update qcs615 phy, using lowercase hex
> - Removed redundant function
> - split the soc dtsi and the platform dts into two changes
> - Link to v1: https://lore.kernel.org/all/20241118082619.177201-1-quic_ziyuzhan@quicinc.com/
>
>
> Krishna chaitanya chundru (2):
>    arm64: dts: qcom: qcs615: enable pcie
>    arm64: dts: qcom: qcs615-ride: Enable PCIe interface
>
>   arch/arm64/boot/dts/qcom/qcs615-ride.dts |  42 +++++++
>   arch/arm64/boot/dts/qcom/sm6150.dtsi     | 138 +++++++++++++++++++++++
>   2 files changed, 180 insertions(+)
>
>
> base-commit: d7af19298454ed155f5cf67201a70f5cf836c842
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
