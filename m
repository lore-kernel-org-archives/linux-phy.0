Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8031FCAC59A
	for <linux-phy@archiver.kernel.org>; Thu, 18 Sep 2025 02:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+t7U5ePXEg48nmsgdga53sYr0ig/qXR8BOWGLEVnkGQ=; b=eNsqPBndtMCXRW
	6VHRUhUkMyehADd290WGrUix/iilB7LIaEYGKVq/k0G+HpEdhydJCH/LsM/8yW9w2BKbtDKb1BUCN
	OTSUypmlYYxPVBRM4We63PiArqHNSrJLBQDr+LkKucpDFToV6eUgONI2cpnBUfzXvPkXK2k56vAby
	uRawrz93gDuzjbRcujF4y0v/Qg1BOGPTvII+S5kmk7OqXgczU4WID8C6LwL6LQYSxpIdjY8PAFb/h
	R/A/ROG8dcY4w0MmFkeA9LU9IYH+rh/31PSvoky/fgItgXOCs0GcB7iGqG/fBrORiEYViBvu7Paku
	WjLpiKOeOwxkthEpzK0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz4kE-0000000G4fW-13Zs;
	Thu, 18 Sep 2025 02:51:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz4kB-0000000G4f1-2uj4
	for linux-phy@lists.infradead.org;
	Thu, 18 Sep 2025 02:51:37 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I2pM0G019548
	for <linux-phy@lists.infradead.org>; Thu, 18 Sep 2025 02:51:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fgecCebfDJtpE3JoBpenuay0Bs5D6Xykj3YET5V/PY8=; b=la9pR+BldbY1vaar
	z2ZOcpik7u9tIlKZiJvBbA9VeNGYARVhcmkrJowjycZL6wbInfwlv2zl+ZiCjaqn
	QZRDTZeAzsNpa3RQOGjAA2EPuq2qPgOGIDGzQqnbR0MrD7Irko5v64FWHZJmHCtc
	6tigV/dNKYaXzM6qk/j8wbpckq1CTRow47BYmA+AXC4FSgZ/KfiTWOtZFPCh6eeX
	0U4TVstOEz/r6gCTphdgxh6crAuReFj7aP0FKuSQGA7kxsPWjrR8RYTHsZ5DFxpr
	v9BzvTyZcCefnD5wd6motgT6CdM5zkRIvfKNJpsn51OhYEOFEmfhapQ2TgOdDW58
	0oMqCg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy1vraa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 18 Sep 2025 02:51:33 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b54fdfd5045so395324a12.1
        for <linux-phy@lists.infradead.org>; Wed, 17 Sep 2025 19:51:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758163892; x=1758768692;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fgecCebfDJtpE3JoBpenuay0Bs5D6Xykj3YET5V/PY8=;
        b=BGd138yLqriN2MDxOseJoAHX2LdeVN6ROYf76iEQPcGNxMCNq6G3vdwXO7EBKeSuYR
         qWCuVKcZ6l8d6D1gyg+qFk8Trx9VZFsmBdsUBK2SXVy1XpkTcdJ0qyj4rXMCki0+RqMV
         JLi4tVyxrgwT5ry60iW3qgmvA9SsRST+WdtLHrPIUSiTpcIc4wWEBd24WgQjfkdwkk13
         hrbSTGROv8Ee3TxlNmpc1CLrdVP8MGpnefCFV10Y3bWw9ncXlP/xTmch8MZfqTQ2TkiY
         WIY2kIK1kM989szktOH/JTFgcVjHT95GQh5J8j56KrzArPSxDMVT9tAzglxEQn4Y7Hxz
         hOaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWo0f7taShS1cl7+MqlbSKa2bmSav0P08KQtJl8KebM7/kyg7bewSmDwfTHkFlEAJ5sSDjQ1XJsYCE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxD/HkxE7OxE1KhCDLHuWj9ULQntpIEuHTRRfy01Lo9GNpHRBff
	N2uxh9hT162/qG3olf7PeN671c7VdoWApGLZ8sjIdjtUAXOxZ3h6km+scY5bME2FOSqG7VpEzbB
	Nn4R5brhvxwcuI+IJ2RoOd6jekaBrKCrcKWLAaVIzufweFGzR2Z1Ag6hcUuIbLTk2wb/D
X-Gm-Gg: ASbGncszhfOC9QEi5XJwjxNDKNr8W4P7u3I8FqQFt7/6GCSxmyxc/j41icHqlywRpq0
	I961My2w/xG3NRpBPRebkFh5qig02MyifSMM9oxuO9jpwLH9o5s6Ol6l6Ou8GbMED5BhrBA2uZt
	nhmJlkHf5EJ7maFNOVttrMdJfCVmhhnHqAwGwxo5yusp+2jq3MPjJldU7lLVXrG7HIZoVe1VpB3
	DYimz+irKjegI3LmTPCD+Ng9+zUVEaPrOSfUoJ2eWa02WpZPKkzJoCOR5UJGoUeSgy+a+K6EGOb
	Y1vM4jaEtqN1HxGjMivA75ilZuob6zCpXjoTSqGUTUSSnND4ED1u88LIvVScadrSWC9EVk3Lso5
	/syc0su3wSygH4zfwVlY/NosWNWhX
X-Received: by 2002:a05:6a20:548d:b0:24f:f79d:66a8 with SMTP id adf61e73a8af0-27a96a993f3mr5835784637.24.1758163891894;
        Wed, 17 Sep 2025 19:51:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEO8+Yv7Mvypcl39Oo+6RrtTJ5B0aTO0XwTIkdwLESldoizSlNvP5sGd7bDmK1hg4lFmJhW6A==
X-Received: by 2002:a05:6a20:548d:b0:24f:f79d:66a8 with SMTP id adf61e73a8af0-27a96a993f3mr5835757637.24.1758163891401;
        Wed, 17 Sep 2025 19:51:31 -0700 (PDT)
Received: from [10.133.33.24] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff435325sm869595a12.43.2025.09.17.19.51.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 19:51:30 -0700 (PDT)
Message-ID: <f16f14ab-ff11-42a2-b63b-ed28e85d620b@oss.qualcomm.com>
Date: Thu, 18 Sep 2025 10:51:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 0/5] pci: qcom: Add QCS8300 PCIe support
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
References: <20250908073848.3045957-1-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
In-Reply-To: <20250908073848.3045957-1-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-GUID: FdPMOgBqCOXgE_d62Kwc1HQwCnjLv-Yv
X-Proofpoint-ORIG-GUID: FdPMOgBqCOXgE_d62Kwc1HQwCnjLv-Yv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX7Mirr2ETPv0E
 Gmy1ag7ouO0oEIFpKkL3Q368322gDowA0HifuEIPQBNRmNmiv+AEBk1TrX3cJoF8vVjW7CElgfE
 E4P06S4bbUq8AqExSHKScbjnBQoVJiJbAH0zRpZbto/dv7D1gJ1UE5pthYEOkAyKF2c39O53Sx/
 G74/OpfiALEcwdAcIGpYwreaWnPxLZeQrScoNqdYfwt40ZoM/nD0X0TJXerThk+1rsWp85Vku2G
 OneK6rEECIMyo5p1gEZfbT6f9MBFZogV3I5nTpsJzQ5Tic+6/+FN8i1HMZo5oW9QVQ1OQsNr/dl
 eJYgVRFHaQiaf4jeG42+3ZW3zSHYBCJnI13Ki17wBu9nVMy4kVWx6FV8C0MU89aK02sENikjGMm
 2FMuwHT8
X-Authority-Analysis: v=2.4 cv=cf7SrmDM c=1 sm=1 tr=0 ts=68cb73b5 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=QyXUC8HyAAAA:8 a=IHEL40AIkIxnPEiLsFYA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0 priorityscore=1501
 spamscore=0 phishscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_195135_864074_F42B8596 
X-CRM114-Status: GOOD (  21.29  )
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


On 9/8/2025 3:38 PM, Ziyue Zhang wrote:
> This series depend on this patch
> https://lore.kernel.org/all/20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com/
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
> Changes in v13:
> - Fix dtb error
> - Link to v12: https://lore.kernel.org/all/20250905071448.2034594-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v12:
> - rebased pcie phy bindings
> - Link to v11: https://lore.kernel.org/all/20250826091205.3625138-1-ziyue.zhang@oss.qualcomm.com/
>
> Changes in v11:
> - move phy/perst/wake to pcie bridge node (Mani)
> - Link to v10: https://lore.kernel.org/all/20250811071131.982983-1-ziyue.zhang@oss.qualcomm.com/
>
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
>   arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  84 +++++
>   arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 310 +++++++++++++++++-
>   3 files changed, 394 insertions(+), 17 deletions(-)
>
>
> base-commit: be5d4872e528796df9d7425f2bd9b3893eb3a42c
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
