Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B961FCA0ED1
	for <linux-phy@archiver.kernel.org>; Fri, 15 Aug 2025 09:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oscA93BM4lrWNNs/BOJb1r60SlhXE68YVg9Kc0hg344=; b=gnV+Jm4Y8ncI21
	A+DPlG9XsV4+dDhG010mtzS1aMBI3uETIEW7ZBDsTmLTgLRx+CQYhjkCQjTCiZPA69Fncse5A4sUb
	Q3K6A7PWWMmaJJKybAbGXsgEjgcyrs8dGRFt6PpUgiNYoaDna3K15Lh4QF5oe4FHojyFUmstRVrUW
	DbKm5/+dY4V7pQxojyFnm8cIBvJQql51NhZ7BMFzHF9o3xhbi/7btSZI3OMOOB55lZ4Js2UCPN6mk
	FbdOvTLApxP8PYmC95XJyVVaAqZpUVGb4iogpKMZwDTnOzWb01tIPomVWy2jR57onLTL+LvI3lD1Z
	GI0578PeAlVc65L5HPdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umqZZ-000000021u6-1q9q;
	Fri, 15 Aug 2025 09:18:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umq9s-00000001unj-1B6E
	for linux-phy@lists.infradead.org;
	Fri, 15 Aug 2025 08:51:33 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57F8UQvS029021
	for <linux-phy@lists.infradead.org>; Fri, 15 Aug 2025 08:51:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	viA0ftgPjs8CYNz5BU9g3zq8XF4gr1cHoqz5uG+TLmk=; b=VVsM8c/2HJspZpHO
	88q0sMUufJIP/OZqja2CN8vMlHuCxsOdYbW9mMkkd8VefDLfmoolFz+n6u8TlqQl
	VvxnrOK3eJP1CtPqTTCfg9Ckq3/4mbgj6b3Q7wqWBq7C6wf1+Z67yavWodqNxClk
	qPdlvRmvFEvX8RmO0IrN7mYqxZOOdDPv11GgXTQ1SJ8uBoWV/Z0m+AX1Et7YdLDM
	vEKoAj7hjqe1wtjFa8nnFxjc4BNtTBYaSFTCl7OIZQX6ZYezBifgIx1sMUwUFCL3
	QdYVLhRB8zfiuG73916yBy7gDgbUdZIL6Mu3UreaOy7do9KGBCr+D4qfAg9oZx8s
	nc/Yfw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g9qa1mrp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 15 Aug 2025 08:51:31 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24458194d82so18720625ad.2
        for <linux-phy@lists.infradead.org>; Fri, 15 Aug 2025 01:51:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755247890; x=1755852690;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=viA0ftgPjs8CYNz5BU9g3zq8XF4gr1cHoqz5uG+TLmk=;
        b=cfRgSZ3I7lUKSfaAqxQJD5Ia+pZp/hRWtkLEYYPyTrFACLAwFMXIXly+WPjARW5qtJ
         VvgBXFym+TVooxuXFAERBIAhbR+uvoIoAMfUnIslIQt+3xyp/pgPrCEswUlaw/Fb1vau
         YwGj8KGv4+u3uqA4bix+3G8Dc5D4fINu6keW1Jk1WwUIAZ9wLylQA43iaKAvIrz7nKay
         G8QRyAzMDf3DZg+esIPEyNhlpuNr3bx7jErUQE0YRUu7rps9B6M8q4h8gpOAY4KEHpME
         K3y2rVQdoQiyl+EKjGko6xDtfVRn2I9HGq5kj5emJeGoDkQoJ36zUJ0SXm+hRG3gFDUO
         OFRA==
X-Forwarded-Encrypted: i=1; AJvYcCW28PvVxbQaO9hHPwviUOZ729d8R4+aIQvBad52VgsQqmDRbkN8BVxcXUjxwdsZFM60FP87sUUeWuQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDqqqkhJdZsAd/fOVxBpOvuT5jeWjJ50tOFXldkzGf9iToZR3w
	ZlJftSjk/WYh/rpJrFb2kM0EkezO5rT5HIpvUeRLN9OXHt3IH7LJDarizb6RtmCv2LiIdRhQZzD
	vK79fzYcH8NeZF2wFijQG2ufWdLYKCWQCSfgYQVG6h0m3IWd3hOqEgkh4S9PnKE+7Gjjx
X-Gm-Gg: ASbGncvN49sjPg2IJ8eEf2FH6zNdpcIzpPYqoUZuansS+jCOmFrAL6yLfwBHN7dffP2
	AMfUx1mnTgJ1EzYBc7y6jtrIiU810BYjMFpmeQWYCjCHq2ubD6iiVq+diyCWK4D4Evm5c+u1Acd
	TPQ0f6DgDr3UybuBg3zzhWoXaZ+YmXN5fxKGSDv2fjmfav8ZvQp7kiiDVEhpqaBEmZwE+FF3Umm
	x3pp88ZcJq3bhSUVLdFN1YSbbH5Oxm/d0ZN4/NCwmT9JgWO4jsL3XYkoA5+cWE5KnMxdX3w+EIU
	CS1w9dBZ6TTK8Ud7ZWcVnhSElvLDB/xlHUunonmnDLGQhKAz+wjZrdidG6lFishp3YsGMn62pTm
	n79xIPJ9deKjRy3Y7hoRNKA6qMs4o
X-Received: by 2002:a17:902:cece:b0:234:b41e:37a4 with SMTP id d9443c01a7336-2446d5af49bmr20126715ad.6.1755247890314;
        Fri, 15 Aug 2025 01:51:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRZ3xoE0Z01Gar2LyZr8un5sb4pG+FITKlhbiCZfOjE53dG11yImWKgWB0zMbX+CcHUtPEvw==
X-Received: by 2002:a17:902:cece:b0:234:b41e:37a4 with SMTP id d9443c01a7336-2446d5af49bmr20126405ad.6.1755247889823;
        Fri, 15 Aug 2025 01:51:29 -0700 (PDT)
Received: from [10.133.33.31] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d55035fsm9240305ad.132.2025.08.15.01.51.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Aug 2025 01:51:29 -0700 (PDT)
Message-ID: <c931bbc5-f246-4d34-9280-0c1a551a1e7e@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 16:51:20 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 0/5] pci: qcom: Add QCS8300 PCIe support
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
References: <20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=CNMqXQrD c=1 sm=1 tr=0 ts=689ef513 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=QyXUC8HyAAAA:8 a=IHEL40AIkIxnPEiLsFYA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 63uEtrMAfuQloQCREGp1hfGQpCRwI7Eg
X-Proofpoint-ORIG-GUID: 63uEtrMAfuQloQCREGp1hfGQpCRwI7Eg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDE2NCBTYWx0ZWRfXytzGZXHmCQea
 pfuU1pXXEej2bYsFHNXyvF5mTFDyCZcnipfe7EmcbDr23KwFqPTsRixKFjwLQe5B1u0fl4gLCRw
 MbJO1CAquF46bZ8Cend7rLEz3e9DTcU9GUSfswEBMOXY1Amm17aJo12N+6BtIAvRMuLtFzzDqhw
 AWmCYU/xLRe8Bukk+183Gy4WzKWeQ+FmVQ9ODwZBY5PVwg/awNwD0f2B1ScC/6MRikYdadOxKhE
 MUIj3hN0cX84zIaSXE3aps/dyr/KYMWVmadKc+/NZN1mffuWb6cSv8E1F0dppwutfzIsbL59nU5
 Tna11PY61UHrC6qdU6Ebuk+uuwzDxFf7gEVNBPkHC3kLuSO1Aqy9fN5eNq/8treJk5cLlkxcsZQ
 RVD8JEIx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_03,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 impostorscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250815_015132_328783_32864D98 
X-CRM114-Status: GOOD (  21.13  )
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


On 8/11/2025 3:11 PM, Ziyue Zhang wrote:
> This series depend on the sa8775p gcc_aux_clock and link_down reset change
> https://lore.kernel.org/all/20250725102231.3608298-2-ziyue.zhang@oss.qualcomm.com/
>
> This series adds document, phy, configs support for PCIe in QCS8300.
> It also adds 'link_down' reset for sa8775p.
>
> Have follwing changes:
> 	- Add dedicated schema for the PCIe controllers found on QCS8300.
> 	- Add compatible for qcs8300 platform.
> 	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
> 	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
> Changes in v10:
> - Update PHY max_items (Johan)
> - Link to v9: https://lore.kernel.org/all/20250725104037.4054070-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v9:
> - Fix DTB error (Vinod)
> - Link to v8: https://lore.kernel.org/all/20250714081529.3847385-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v8:
> - rebase sc8280xp-qmp-pcie-phy change to solve conflicts.
> - Add Fixes tag to phy change (Johan)
> - Link to v7: https://lore.kernel.org/all/20250625092539.762075-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v7:
> - rebase qcs8300-ride.dtsi change to solve conflicts.
> - Link to v6: https://lore.kernel.org/all/20250529035635.4162149-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v6:
> - move the qcs8300 and sa8775p phy compatibility entry into the list of PHYs that require six clocks
> - Update QCS8300 and sa8775p phy dt, remove aux clock.
> - Fixed compile error found by kernel test robot
> - Link to v5: https://lore.kernel.org/all/20250507031019.4080541-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v5:
> - Add QCOM PCIe controller version in commit msg (Mani)
> - Modify platform dts change subject (Dmitry)
> - Fixed compile error found by kernel test robot
> - Link to v4: https://lore.kernel.org/linux-phy/20241220055239.2744024-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v4:
> - Add received tag
> - Fixed compile error found by kernel test robot
> - Link to v3: https://lore.kernel.org/lkml/202412211301.bQO6vXpo-lkp@intel.com/T/#mdd63e5be39acbf879218aef91c87b12d4540e0f7
>
> Changes in v3:
> - Add received tag(Rob & Dmitry)
> - Update pcie_phy in gcc node to soc dtsi(Dmitry & Konrad)
> - remove pcieprot0 node(Konrad & Mani)
> - Fix format comments(Konrad)
> - Update base-commit to tag: next-20241213(Bjorn)
> - Corrected of_device_id.data from 1.9.0 to 1.34.0.
> - Link to v2: https://lore.kernel.org/all/20241128081056.1361739-1-quic_ziyuzhan@quicinc.com/
>
> Changes in v2:
> - Fix some format comments and match the style in x1e80100(Konrad)
> - Add global interrupt for PCIe0 and PCIe1(Konrad)
> - split the soc dtsi and the platform dts into two changes(Konrad)
> - Link to v1: https://lore.kernel.org/all/20241114095409.2682558-1-quic_ziyuzhan@quicinc.com/
>
> Ziyue Zhang (5):
>    dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
>      for qcs8300
>    arm64: dts: qcom: qcs8300: enable pcie0
>    arm64: dts: qcom: qcs8300-ride: enable pcie0 interface
>    arm64: dts: qcom: qcs8300: enable pcie1
>    arm64: dts: qcom: qcs8300-ride: enable pcie1 interface
>
>   .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  17 +-
>   arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  80 +++++
>   arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 296 +++++++++++++++++-
>   3 files changed, 376 insertions(+), 17 deletions(-)
>
>
> base-commit: e2622a23e8405644c7188af39d4c1bd2b405bb27
Hi Maintainers,

It seems the patches get reviewed tag for a long time, can you give this

series further comment or help me to merge them ?

Thanks very much.

The phy binding's dependency is merged, the patch do not need to rebase.

dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
commit: aac1256a41cfbbaca12d6c0a5753d1e3b8d2d8bf


BRs
Ziyue

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
