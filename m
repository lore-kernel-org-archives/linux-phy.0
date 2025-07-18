Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 889A9C83F17
	for <linux-phy@archiver.kernel.org>; Fri, 18 Jul 2025 11:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wDXhh+d700suRUwFm0Z4sQv+5eE+zXcxSQzem0kyqY=; b=2OLdF334ZNQfPf
	BrgwOx84m9LMwJdvMDsLnuPc7e2oGn7I+Q/6BvY37RnzLjVxCjAtAxaziE3EmOYQrb5dSuEvHFGbE
	1XCFOkh0i4YAfBj+Pc+D+v5zHt9QXvAbzCdyAgNK5EFsRGvoXE9Q3wImuHR6gLUny7/RANwyBJiSK
	2Ma8GSvZqf7OqZ33aK1SocRMoc1vKtLgOVB7PECzAoBoQIVFLlaenNk9bb1IPlxWVJiEPhonqn7JL
	f4soMWVWsR6m320D2IsObVnwxdaZVEKar5KvlVUD0UIUdDIb7TNUZKfLQtIezR3/G+0LGWlNbWR3d
	XP/c1GNPHsVhix/3tpeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucjFI-0000000CQmW-0zAE;
	Fri, 18 Jul 2025 11:27:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucij5-0000000CMEU-3RCs
	for linux-phy@lists.infradead.org;
	Fri, 18 Jul 2025 10:54:05 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I94lQI007216
	for <linux-phy@lists.infradead.org>; Fri, 18 Jul 2025 10:54:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zoFL7Jxs7RkKl/HeM9uPqTAAPaM3GkGbjjY3U9dj2iI=; b=hdFNWohIzcND3iZ3
	BkAJfQ65KpgfjHOX2Nxa49jDvvVG8k6+qZ8brK0CDvyuksdx+ot/SVyowcNOotia
	ajEJdvn9Jp5p3hn1CsJYedrfjshqSVxPN1zVUOFkB8PJqESoE3U+aw30qVjzEvnG
	2Ch1tKrOC+31cFqFOUwA5Nan8xictEbC16g0g0pcFo3KP1/+AU0XfArkpjH61MZ+
	ZtslqsXo6E7trqcixgh+KElkCHBa8OciN+hmNGACskwbpTw/HQOuVcD1NTQwdXQo
	T5umiroDG0bhAHKLDNXEer8iND5v9ENx8ESZOniM8DjwcDCFUvWYYj6M1vU6gy4q
	JVcGRA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wfcacc37-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 18 Jul 2025 10:54:02 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fb030f541bso6501966d6.1
        for <linux-phy@lists.infradead.org>; Fri, 18 Jul 2025 03:54:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752836041; x=1753440841;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zoFL7Jxs7RkKl/HeM9uPqTAAPaM3GkGbjjY3U9dj2iI=;
        b=uTGDACb3Y1yqhFNhknVC2udz4lZ2WXvrCMAlTKNDn+YZffYrRbRjWc02W7zzZWkSkG
         ERCavaa6eZ1iZYWZFSa5jxrAc1jTaqxf8Ci02qAU46uo4NgpSgRcWaYv4jYepAdI97cb
         qKK3ey0j8eC72dx5dg2tZgN0CvzLUOmvtz9iDP0xGvXkL/RqCsvHX3vYA+vAYZdCTA7x
         FEFz/x0ICYM3r+2IYZqgaGv+MEabpKkYJoYQ4rCT7+6yJmaMPKdBA96viVjA7VXw0/Wn
         jps9dMcInaSymBZb6N2EXIQysK/AgTD5mZsSN7IQYzjKJt97HYbK7p/O+cMHGYlIn27s
         TRZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdVvcegfkiVS8DP012RJsoiCh9uF2PxsL9egSfaqHbq4xePjwnMl4xG1w6yJk3saD4Ng46SFeBiu0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyfSPtaQKEln/MzWXs73SC6u0+1zfn6aovkPKu6rRSwqY2mMfdE
	3i1abPc0NxcI8o7NZABiETOgPyuqWTj+aITxxN7LPbMIKTnnbd1XkfqVW36GCsFH+X4qXV6JPyZ
	1DmJIRs2giUQgzgnqXsEHlM6lAR4oZoUyMyyI26ipdTjL6hUJM7ISM+QYIHyVbzIBfOWA
X-Gm-Gg: ASbGncsD+CpFuwbnJ7d2iS85OVy3qcvy8L9H2FTZAKc2H6+bP4ToOQYBeK6Uv3o+M+x
	14aUwsFNDlYrpsHl/joB6SSMkceDvXFh/16m4FY21lYOnY37F7L7V00vTvyqsAaCrE866DjK6Ym
	ZSdZmH4QdbgDjPUoTO9Cn1kAzT79gYL94/1tRKvVYc8AHMIegTQrkcenB72owHE/RRDgB+mvUE7
	eQQf0cgR9fJvFFa0o907qEFycs8xcbHW5Hlkjh2Yx4GCWRg7/S0Do260roppbF48RAbjWJt5jZW
	6hYjBrZsGGvEhDSQBYdHZrLxJ/Znjpg5BLVMbANmr+RUIPhNcpptha2OQXvI1Z87jFiZWSPN6Hz
	iGix0avc8Tqaho4RUaqtB
X-Received: by 2002:a05:620a:4490:b0:7d5:c29a:b41d with SMTP id af79cd13be357-7e342ab5490mr671467585a.6.1752836041386;
        Fri, 18 Jul 2025 03:54:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlcZ4cMvUifS/6K13j2DzA/MxzlKQABGHki3WuWIX0V7eMrHBQtq5xw0vfsXBYwbja7Ah8Qw==
X-Received: by 2002:a05:620a:4490:b0:7d5:c29a:b41d with SMTP id af79cd13be357-7e342ab5490mr671464785a.6.1752836040901;
        Fri, 18 Jul 2025 03:54:00 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6ca310ccsm99825266b.85.2025.07.18.03.53.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 03:54:00 -0700 (PDT)
Message-ID: <86e14d55-8e96-4a2d-a9e8-a52f0de9dffd@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 12:53:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
To: Johan Hovold <johan@kernel.org>,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
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
References: <20250718081718.390790-1-ziyue.zhang@oss.qualcomm.com>
 <20250718081718.390790-4-ziyue.zhang@oss.qualcomm.com>
 <aHobmsHTjyJVUtFj@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aHobmsHTjyJVUtFj@hovoldconsulting.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDA4NSBTYWx0ZWRfXxWCD9Z3AaEft
 op9jTyLY0VifULMQrh4zR/+3BRI9ISwHay/pnHw/F0RQ29cQBs4Qx9UDd8rZPRnfa143TkR0IB5
 nxBTQi+fh5hWduMSDTq+NXn0lFL4ciFNPjuzKmxUq3MqtvpikaUGPTXge/GZ/nJcbOoCDitNt4M
 p+9Mkl5LR7/mp2/XbNf2O0Sh9A/HJtdYFpQq/JhEljP2EWx86OCYkqeYR/krZ3GFSsSsVmvsz73
 zZQRV2ZaAUfSLk7xrcb/pVO/NjFvOOFWPqhPiPpGG/J7XX78dAyAv9qAT37MLLMsu1hEDaVE410
 FaIQVjckx4CV8Y4B6sPbyNpB9rtNSqk8QW1xvjywhHq9I8XTj5vO2acRZ1ThSgqoNTvSXLaxPB3
 ezHA8XeRurSMJHx5K4/hDOQTQEn2GJFmdM8nuaQhJ2c3zc/Ch8euEeLWdusQ3foDaclSVxvv
X-Proofpoint-GUID: gkasQwC-WBT-N6EDMSfUPkWPEpfuqHgP
X-Authority-Analysis: v=2.4 cv=SeX3duRu c=1 sm=1 tr=0 ts=687a27ca cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=JwSYIlhaqBluAGix--wA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: gkasQwC-WBT-N6EDMSfUPkWPEpfuqHgP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_02,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 mlxscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=999 impostorscore=0 clxscore=1015 adultscore=0
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_035403_983220_A20FE6AF 
X-CRM114-Status: GOOD (  15.76  )
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

On 7/18/25 12:02 PM, Johan Hovold wrote:
> On Fri, Jul 18, 2025 at 04:17:17PM +0800, Ziyue Zhang wrote:
>> gcc_aux_clk is used in PCIe RC and it is not required in pcie phy, in
>> pcie phy it should be gcc_phy_aux_clk, so remove gcc_aux_clk and
>> replace it with gcc_phy_aux_clk.
> 
> Expanding on why this is a correct change would be good since this does
> not yet seem to have been fully resolved:
> 
> 	https://lore.kernel.org/lkml/98088092-1987-41cc-ab70-c9a5d3fdbb41@oss.qualcomm.com/

I dug out some deep memories and recalled that _PHY_AUX_CLK was
necessary on x1e for the Gen4 PHY to initialize properly. This
can be easily reproduced:

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index a9a7bb676c6f..d5ef6bef2b23 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -3312,7 +3312,7 @@ pcie3_phy: phy@1be0000 {
                        compatible = "qcom,x1e80100-qmp-gen4x8-pcie-phy";
                        reg = <0 0x01be0000 0 0x10000>;
 
-                       clocks = <&gcc GCC_PCIE_3_PHY_AUX_CLK>,
+                       clocks = <&gcc GCC_PCIE_3_AUX_CLK>,
                                 <&gcc GCC_PCIE_3_CFG_AHB_CLK>,
                                 <&tcsr TCSR_PCIE_8L_CLKREF_EN>,
                                 <&gcc GCC_PCIE_3_PHY_RCHNG_CLK>,

==>
[    6.967231] qcom-qmp-pcie-phy 1be0000.phy: phy initialization timed-out
[    6.974462] phy phy-1be0000.phy.0: phy poweron failed --> -110

And the (non-PHY_)AUX_CLK is necessary for at least one of them, as
removing it causes a crash on boot

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
