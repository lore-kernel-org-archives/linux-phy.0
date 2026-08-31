Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F31C1C624A5
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 07:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/BF2wohwdxf3S4Z+n0obkkgWNQdte/SMvXONtomueRs=; b=LfvvO3GAoB8OmE
	kjkAL5Mm3eOoRRJmzPLpgbeWQWFfUI4TzBOwdPaBLDF4ogkhVixLgxt9QAQo9iEJ3DfdG+HJQiQ12
	dSAB0YoN0tVmg65yqkTr+htKbXS8BUmPNflXHiWdQcTDYLTyIKiIawp8C/1TjI3OCNaPRmgxXjgE8
	XIzJ0BKXFNl1XQNKwhW1rnZWbN+8hs/rdCt8KAkuBBJMaSoeUGNly9DTCMKE5ZPsyCc9gaLbuvc+M
	puRxpRV9jRcUwVzwNa9+cyGy1/h3rQBk/Sa9os1Tmts4Y+zSVu2P7rlX3wmz6oSswH5OhQBPKwuBX
	MwMo61e1Em7/sUy/o07w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wqw-00000008ld9-1lz2;
	Mon, 31 Aug 2026 07:54:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wqt-00000008lcC-3nfB
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 07:54:49 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67V52Vp72680012
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 07:54:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SePPvMBxpaGoDJhHrmxh33/I8LF7sPSpOeAAcC2frqc=; b=o461NXyCXoygd1RA
	VCJENKDrt7zYXZp5QGLvjzWYSuesVy4N47reVzWhT6SWKMAn2G/lft7T4a+c+eJZ
	ZwZcIP1OtqnuiIlMzpr/eGOpzrZRX57VMXFVxobK86iDkgurQju3wonsKCRXGk1U
	fQkFaFyDzCQO0hX/3Ro4OTAWS+wu617bwsN1axJ85dQ+Y6id9IGVTmR5X0uxm5Hk
	9fNC/zo+3wNzW4wPlCL2/rFX+vBydf1MhYIST6m8dS35BdCS/o02Lcuq/L0sXQ/0
	3BkOEoFmSb43DSujMVatjP3npG5yVcnbV/vkR+c0FLd2+5b/hAi49b0rsMpicPMZ
	rjLFTA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gbqhwdb44-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 07:54:46 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51bfd1772d8so8512551cf.1
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 00:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788162886; x=1788767686; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SePPvMBxpaGoDJhHrmxh33/I8LF7sPSpOeAAcC2frqc=;
        b=G6+EdJo51kKBEznP04nzUI07/hUy3Lbe8BPr7CeB0xQBAfyqF8rpDDZKwiGNcFQ6ly
         q/s5/WAi8Ed2gtouoUvBmkiKs94tCuZ87loF0RSa69DfIYdcPTBDfqTsv5s3dP/Mto1i
         3VyEVkdDRE8HwRZHkvuSnkS63e7ihiSH8LmLEvuq/nP6GLmfNYFX2/EiK79QNpdcWS08
         ygfBv9kUCtC/vzgF1HFjG0KpvBvOcd+zzMRCQGNE5nrRQn6xbvY30THkrtpDBt42DYYH
         i5LnB2WZbnrp4/5a4q7LqQafKSaQM2/0D18F7xHLPQKUTUzsjaWOtpMpM3/ceDAlhXpM
         Z87g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788162886; x=1788767686;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SePPvMBxpaGoDJhHrmxh33/I8LF7sPSpOeAAcC2frqc=;
        b=gDz2kVybJ14oc3PUobD1SDbJzFtZYaRCmmGSwVV5oTWh3UNd/YiPUVQ3mMJPc37dgK
         LSWpNwD2t3+EW3MlzBE0MDlyQPtaNQ5t2lkPu1auBrI+wBeiy2whJceUNdlpb6CGqVGF
         7GCbckszCgHl9zR4behY2y8+a5EZDhPYvOwS13YEM2MNUqfW5vf2nmg8+Lfxi1B6QeMn
         ZHwRdHAVE/41+dbEZn2yjNTzmwI3uwfsxH9FHh93TWK1AdB0g+xJgPjQ8T4hduxJ2Zl2
         OFeOuoYDl8VaPy8HpDCXRQLWIXmgZm1VV0ky1SB1uIgSh+5Thby7vOUwVhuuhB3QJjCy
         S47A==
X-Forwarded-Encrypted: i=1; AHgh+RqFrEzvkbdbBA6TfyXbaJAYpNXnCUbt5fnxcOEAGGdqqKFnUwdSVOm6M6Nsg8fCeYVOAG1f/bI1ArA=@lists.infradead.org
X-Gm-Message-State: AFuF++lIlp7zkTSXmZe/HxJhJME+iwoaUZPK9YEONQpvLvsP6PjafpJd
	4VhR87KlZkrJ6LJAetUdgO3RuSkjjUNcpCviPIYYewXpdLO92ffOAnGdPhBn7L/MhhQ8uCbE3Be
	4/7OXvg+VgQT7d2ANiXoKDOcK/dmM0ANGZ9aMjDtkWK3reZDNhTKMJ1NLL5Ch2HlwlvHtK8UtwH
	yB
X-Gm-Gg: AR+sD10tZw/yOUYrYTA9HLMEqfRe1rJb9ZY95RL4uUHet6cPGmQvuNGntNlUXthTCwz
	3zu78Wq3ItQ2hpYJdcNPJ6EQYSb/hRfH/p8RgX2ykCJ+tsxx1uzEBGuxaAmJx3JT4D4HJ4eoTy6
	ESQijrfBBygNHgLMZWtxSuakq21H6I0EXEJAfqo8XOqWaLA8+xKsbxBgP+4W6UCXGMjjnLXMk6b
	HoOUiWpUaxYxWnASq4TRCvKCtxnAkg0IQA56M2VDmUhBIfT1PvwYD8zCEVa6/lw0Fhnj4T8A+lJ
	AmB12nv6+CRN8KkQBav2uqCPR8epPTUISJqkQv54op0bVK8sD3qDSV5jtHwBq4ZFL4/ynqB0LFx
	YPNBwUfNP1GGQ/x/BerchYA==
X-Received: by 2002:ac8:7f4f:0:b0:517:6162:daf5 with SMTP id d75a77b69052e-52fb95f4e1amr193281941cf.3.1788162885906;
        Mon, 31 Aug 2026 00:54:45 -0700 (PDT)
X-Received: by 2002:ac8:7f4f:0:b0:517:6162:daf5 with SMTP id d75a77b69052e-52fb95f4e1amr193281791cf.3.1788162885465;
        Mon, 31 Aug 2026 00:54:45 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a611b5c3f7sm3232618a12.6.2026.08.31.00.54.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2026 00:54:43 -0700 (PDT)
Message-ID: <aabdae7c-5294-4789-b123-4fcff8a733e0@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 09:54:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: qcom: add Nord QMP PCIe PHY
 binding
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi
 <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260828-nord-v2-0-18bf59d19d6f@oss.qualcomm.com>
 <20260828-nord-v2-1-18bf59d19d6f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-nord-v2-1-18bf59d19d6f@oss.qualcomm.com>
X-Proofpoint-GUID: pihxOeGaqPDt5kOe7TWf6VToar-RdGDf
X-Proofpoint-ORIG-GUID: pihxOeGaqPDt5kOe7TWf6VToar-RdGDf
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDA2NiBTYWx0ZWRfX6huobob4Qh/w
 ILt+vne5StHiQG2GO+MBwpWC/7Mk1pFcnjid2GtqDDhBbI18s2uw07vP3wDbE+9BQecj+Pi9bWP
 XeRRY8PwV6ccE70ZGJdLHZ0GGOIDXGk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDA2NiBTYWx0ZWRfX3zUrFj3ZuEbn
 riJbx/KowJzptvp7lM73Me7XIGgaU7SQF/kHmzkyN9fSE69WWuq94ygzkt85PB4vI5HjSTQdtPN
 JIS7jV0um4fCpo/P2CCg41xEHdTqsOBbYira2h4+lqhq+g6+VT57yolrvESov4fAzZM9OogWssR
 IVIDSDhb0tk+UJ3U3jb0/TGMmfL8ve/3rp3ASRRFW7HbmjzUCpDfRBEZa9SNLTG8187HO6yx8oJ
 oowgFLgotRCmTbVFYaPaNZyKAO7yYv7u3n5soD/KDGOh752gjnVhrhpCixGqMGkuOHPCe5DkEtq
 GZcs1gM/aykB5ITpn+2HUxAPvz/f+88EXjH549Rcuu/M2ZdPtRJC3VsPIUusEtZFP1RmjJShabt
 S3eJDtUbke/073+v/csX9LWKI4oPz2sCdgCvfGetz19oFlOdgKgOtZ0EsWueNUMjvUtFAFioPVp
 ZldTLwQNLz1Q6dZvDJA==
X-Authority-Analysis: v=2.4 cv=YKKvDxGx c=1 sm=1 tr=0 ts=6a953346 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=96DL8lvnHqRkPdvoplQA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_02,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_005448_081815_500A950F 
X-CRM114-Status: GOOD (  19.98  )
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

On 8/28/26 10:43 AM, Krishna Chaitanya Chundru wrote:
> Document the PCIe PHY found on the Qualcomm Nord platform.
> 
> Nord has a Gen5-capable QMP PCIe PHY that can operate in multiple
> lane configurations using four PHY segments (A/B/C/D). The active
> topology is selected by firmware through a TCSR configuration
> register and may be configured as x16, x8+x8, x8+x4+x4, or
> x8+x4+x2+x2.
> 
> The binding describes the register regions, clocks, resets, power
> domains, regulators, PHY provider interface, clock provider interface,
> and the qcom,link-mode property used by the driver to discover the
> active lane configuration programmed by firmware.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  .../phy/qcom,nord-qmp-gen5x16-pcie-phy.yaml        | 276 +++++++++++++++++++++
>  1 file changed, 276 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,nord-qmp-gen5x16-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,nord-qmp-gen5x16-pcie-phy.yaml
> new file mode 100644
> index 000000000000..37198f82c611
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,nord-qmp-gen5x16-pcie-phy.yaml
> @@ -0,0 +1,276 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,nord-qmp-gen5x16-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Nord QMP Bifurcated PCIe PHY

Quadfurcated, perhaps? Is there a word in the spec that doesn't get too
detailed about the number of effective slots that the PHY is divided into?

[...]

> +  vdda-phy-a-supply: true
> +
> +  vdda-phy-b-supply: true
> +
> +  vdda-phy-c-supply: true
> +
> +  vdda-phy-d-supply: true
> +
> +  vdda-pll-a-supply: true
> +
> +  vdda-pll-b-supply: true
> +
> +  vdda-pll-c-supply: true
> +
> +  vdda-pll-d-supply: true

I'm really surprised they aren't all connected to the same pair but oh well

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
