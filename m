Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D931BC83F21
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 12:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVA5g32c2pGx5WCZw5AQPzLg1IH3vohL/qzDo70+Vgw=; b=WG0uBczL+PpBew
	CUCy6Ne5wOOSIfiwMIOf21p0oqMdThu80Y5NIc0REiGTsU0XYBp7DHCI3VbFM1ebvCOsImU5Zrqhy
	VeSUKBK8qfNNQmE76/2LpFPmeHaNG1U/+bK7J/WYp6DK6MFJsAg388HiVjpffYhbB4DGhQUzi+bQB
	RvChf+507U5EdEJ2AlSW7BtoaTiLY7YgrsQ9ts1EZhAtOYsVrR+QCXQE1wCjL2/PGKdIRRRteYHPS
	FXna1GmGE58YtCyDWy0Aulkqu69ZvQ4oDn7tTcabxnmhcw1NQpH2vfgtvt59/otRnYNi3MKrugSKz
	dp3CCOm+EyS5a72xKfoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubeRu-000000051za-2Nno;
	Tue, 15 Jul 2025 12:07:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ube8O-00000004yqJ-3nuR
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 11:47:46 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F7pwBF032437
	for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 11:47:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+iXLFGA6J5aFgF0rOG2NVhZA5bpjJjvu96bzK64t0fc=; b=hxeTaSLlbwM3IkY9
	VOUWJ9zFL+zNuiklw2zu7Rk5K6+pYJeZylNTefM6ZedT7EIkJV61sPN6m3f21dJ2
	tcOt5qZVjhE8BJr/nTCSb3KeQY9p9l4mm9tt+qQ/ADsnqcMVf2ywTxK7PJqVNOR2
	Y3XJ1vCu7msHKb/uFl5cGVb2i0PiOFcxc8rT92emwI4LAqr99EuHYQmcRC501QT4
	3XN8JumPnAvzB8uNWTs5JOD3MIyYFkoYc6iDlEPRr5rQiD34CCQXBWPFFdr4G/Pk
	k2U83jvX+/07lR1dnL6YmJW7SwEPD747tE/YnMbo7o4Ei++gAvwDZ3eFDMYPtulI
	V86oRw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufut7ydj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 11:47:42 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ab3ab7f74bso12248801cf.2
        for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 04:47:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752580061; x=1753184861;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+iXLFGA6J5aFgF0rOG2NVhZA5bpjJjvu96bzK64t0fc=;
        b=haXLsQ2DS9IbfflIHV5FoLI6o9ExCKclF5ADCefvm/+OOdLyQw23y05ayISDUZURb7
         5SIBrRYB8bWXr2MdtzkURjssuoc/C6UIX+6iXObW7tdP0C2Sdtnej+878iDfS7n7YCDU
         aWGvrbTbQFaffMre88l7bBHTPHZGQMkjOJoDFs1J+f3x4h4lI2hwfQUwCQlaVwHsKzl8
         eFhvv8iUHDRjyQJ3Dl0WmEPs23DtiHz0q5DpPSOmUIJJ5MZTtCRHWtoNFMLjobujCDSs
         G0IpV5H713W+pv1Zeqw8OdpEA0xepPiSSNkMZTeW/2WpgaYyhY1sTGTyDHH8D54uo1Pq
         NkHg==
X-Forwarded-Encrypted: i=1; AJvYcCUQjWrYJsNyd5ZBL8WpyspEhAc9NNmlUEILs6QSmWEgZUASwHCoFzz1IsQtRSvidJfG7b/ogiwWpeA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyX/UsBbZuolDFM4P+BfSU3OH3Vvw3ynPtsgigp3aRFAV5+C+Wv
	pwmFc7qZpe1uqPfP3lKgnqdDYvag//ojyIrB6AX+uCC8z6rezBpJXw7N+5ANGk68B58tPRHW5iK
	j6cSE1lOAvAlpy8VpB8JUyhGf0Cj9WhJzNL4uT2RC5+g0XU40YfEteGYwF6K7brLJ6l3Q
X-Gm-Gg: ASbGncsoY+/R4hVII0VBrlC60K8TGne6ad98Q21fWiJjRUnifqordPqH/9DLGy4u0g9
	QOR3Ka+Ej05SdFGAH0vFOYl/rtvPLoM3jbTLqN7UaNDR/6NPo38fQzDTesux1+LhOp8c1IidRut
	M2cYyaVPgTKGV21i/OLTaFZsNDrVMoR5CN0W8A4i6ucIfFiCTb1wle9oKPLGMTe6tlU2jUtyh53
	VQg1j4BY2qjbXKeCsi7l7SFdGdTxsgtlpn5aF24CyCuQtxThprCKlrato2QgfcdtYQdSMk4yOzf
	KomBCcIRPeyR03ydz0FvWm9SxytwIccmkReIwanfZppq08FQuIHj9B8IW30Obt+0nmVKERKFa/u
	3G3RdWkCv1dlydVi/TKXQ
X-Received: by 2002:ac8:5a93:0:b0:472:2122:5a37 with SMTP id d75a77b69052e-4ab86e22a8cmr7185551cf.4.1752580061440;
        Tue, 15 Jul 2025 04:47:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE16WXzqfrkizeZwS9xDN1JalpfUl7uZPacEPMkaJASCCYgdE2C9z7E6fN8uPL5G0sXubPD7A==
X-Received: by 2002:ac8:5a93:0:b0:472:2122:5a37 with SMTP id d75a77b69052e-4ab86e22a8cmr7185261cf.4.1752580060937;
        Tue, 15 Jul 2025 04:47:40 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7e90a07sm987503366b.6.2025.07.15.04.47.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 04:47:40 -0700 (PDT)
Message-ID: <98088092-1987-41cc-ab70-c9a5d3fdbb41@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 13:47:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, Johan Hovold <johan@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com
References: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
 <20250625090048.624399-4-quic_ziyuzhan@quicinc.com>
 <25ddb70a-7442-4d63-9eff-d4c3ac509bbb@oss.qualcomm.com>
 <aG-LWxKE11Ah_GS0@hovoldconsulting.com>
 <4f963fcc-2b92-4a01-93a4-f0ae942c1b6f@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4f963fcc-2b92-4a01-93a4-f0ae942c1b6f@quicinc.com>
X-Authority-Analysis: v=2.4 cv=e7gGSbp/ c=1 sm=1 tr=0 ts=68763fde cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=dJGf4bKP5mfmDP1ZOs4A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: RmvbmIt0UN8AFo-LfJkgS-QzWpC9Lg0c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDEwNiBTYWx0ZWRfX1ejNU17E+/kj
 P3qBzotfHIVS2WV0t72hmJJyU+xu+INXIf2fdE05UYtbJd92cWtkYPE3lCz1KqzMmbIraybl4b7
 dn1zodVOckaE/AupLlW8eyEzNYJCVu+eCAv1emQpUYcS37eKmL6GEQXIsPdhFB7TlLBhKbkwAMM
 l1aGhC3DBmWnhW3HpNQ2p95pLX3biPQzQRfOB+xj9WLwl6B6ZDCrbGGF6uqH/GIz8IpOg/1m08y
 imgU3szWy9f+L6q/7H7EbeQ5cO+spbxJSu2a5hLbxzMnUbJVwKDmz3ez7lsyn8nggkdVwbjcB9L
 6mlhtOMx0eJjL4LzPU72WVI+t5OsGX7WAZaHzI2hazjgOAl0hw97uRvH52gznHISawvgT6sx0Nz
 4pNvVWmrGn5q6s7qKhzkAJ+iVsfVMgUeq9RjV0AGxVruPMXgFEfcixxH4qezHgfFs8s0xhU6
X-Proofpoint-ORIG-GUID: RmvbmIt0UN8AFo-LfJkgS-QzWpC9Lg0c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-15_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 spamscore=0 suspectscore=0
 phishscore=0 bulkscore=0 impostorscore=0 clxscore=1015 adultscore=0
 malwarescore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_044745_075623_4F8C1080 
X-CRM114-Status: GOOD (  16.94  )
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

On 7/10/25 12:24 PM, Ziyue Zhang wrote:
> 
> On 7/10/2025 5:43 PM, Johan Hovold wrote:
>> On Fri, Jun 27, 2025 at 04:50:57PM +0200, Konrad Dybcio wrote:
>>> On 6/25/25 11:00 AM, Ziyue Zhang wrote:
>>>> gcc_aux_clk is used in PCIe RC and it is not required in pcie phy, in
>>>> pcie phy it should be gcc_phy_aux_clk, so remove gcc_aux_clk and
>>>> replace it with gcc_phy_aux_clk.
>>> GCC_PCIE_n_PHY_AUX_CLK is a downstream of the PHY's output..
>>> are you sure the PHY should be **consuming** it too?
>> Could we get a reply here, please?
>>
>> A bunch of Qualcomm SoCs in mainline do exactly this currently even
>> though it may not be correct (and some downstream dts do not use these
>> clocks).
>>
>> Johan
> 
> Hi Johan
> 
> After reviewing the downstream platforms, it seems that GCC_PCIE_n_PHY_AUX_CLK
> is generally needed. Would you mind letting us know if there are any platforms
> where this clock is not required?

Do you base this on "downstream has it", or did you check with the
relevant folks internally? I'm still unconvinced by the clock looping back
to the PHY.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
