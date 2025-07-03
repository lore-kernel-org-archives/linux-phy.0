Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A6A0C83F04
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C0XhVZ+sdW4FNH+cIaQMP0o4z/4Zo+12HVpGSFQWOss=; b=3cMUrjInDl/Td7
	dJfnLdv8Bb9YXz1iftw0Ca62Nr+IvD5k8m5UOuD1SoLPff7rliHbTnBiMPet+Eo8C/i38gNVLtuRh
	HYnJuzxu4iUfwaj0LvrySI9TwrZhQksgAaIn19Vt8ire/yj1W+vVzS0YOfIKGqjn+0SC2wpoe3JC8
	yhJKeFD/5n8sjv4ep6Nd23EOsLXM0B0fhWrOOQwnv0SX6ZLF+4F1HNVYhKtyB8EdV2CkX73YIlaD0
	aIGsoz+JR+PgpDgbWiItrLg+Htqc1QGkYZsBVdBkQCgRpn2kmnXToL71IOpfbMTxNjp1WsXQWg4zo
	gF3+hPv0Mrh54ZHK7NCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXGjR-0000000Auz6-0o5W;
	Thu, 03 Jul 2025 09:59:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXGgP-0000000AuQN-1aeo
	for linux-phy@lists.infradead.org;
	Thu, 03 Jul 2025 09:56:46 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5637Ucpe018581;
	Thu, 3 Jul 2025 09:56:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=X8Vt27x0gtqA1Cj8+Uws/7nYRByc/B+Js1z
	U07dKno4=; b=kFbrHp5+J3eNef1DvVEVmK6AQbzFyuixlFfxldX2xasAIV0iviQ
	neUGer4mGAhqeyCBOIq5HRfA1dDKgtPstao+VgJfPNdGxd2HCGXOWEFXJdBc6SGf
	HzDCPxuu7lsO6GMjIdh0Vh/q6ZBES3T62QbkIVkFqVqJBuSg131eFjDDaJ5D5PCv
	NJDVurMbrLbBO63+6O2tvfyGFHAnMHFVlxnCUhYarB/U7BpPms4r5ETRpaNCVm7M
	WK4WNJdWG2Vupg0xPhXXY45zdhIK2BaNcWXfvrjWS5BuV7T4taq6gVyJPTCSyt6G
	OMq/mKQT5IGlSSZ3vQA1efDZESOAsYqnamg==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j8fxr0fr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jul 2025 09:56:37 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA03.qualcomm.com [127.0.0.1])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5639uaFw003423;
	Thu, 3 Jul 2025 09:56:36 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA03.qualcomm.com (PPS) with ESMTPS id 47nm8wt4ye-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jul 2025 09:56:36 +0000
Received: from NALASPPMTA03.qualcomm.com (NALASPPMTA03.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5639uZ4Y003416;
	Thu, 3 Jul 2025 09:56:35 GMT
Received: from hu-devc-lv-u22-a.qualcomm.com (hu-ziyuzhan-lv.qualcomm.com [10.81.25.41])
	by NALASPPMTA03.qualcomm.com (PPS) with ESMTPS id 5639uZLx003414
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jul 2025 09:56:35 +0000
Received: by hu-devc-lv-u22-a.qualcomm.com (Postfix, from userid 4438065)
	id 824D95A4; Thu,  3 Jul 2025 02:56:35 -0700 (PDT)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
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
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v8 0/3] pci: qcom: Add QCS615 PCIe support
Date: Thu,  3 Jul 2025 02:56:27 -0700
Message-Id: <20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAzMDA4MSBTYWx0ZWRfX2xYCGSnQthxH
 MZmh3oAy5KN4yjHlaLat+tUKYVyZ0qk6ZV1MXKf0Qcy28KH3iQmqoF2sMkewYTXarr0qjCzRXWP
 McZMtxLVIs1RZk8rjQgIZxah4ogFRZW+/ntNcEyciEuZxq662lo7iz3VVdpchgI7kZspF7WzT2/
 MiEddL0KS34bLmUZK7DJi+yKQbkrFRk4VnAcZWL57r4pYjiKo0l3RrbfD3KbAuk8agKz0s61ODH
 EH4jkPjFJlVBu0SfQ7tAOW7MjT2HOEQqGToHL6xSfoJCvmrnKZGj+AyQe/4O57hcUiWryo84Q8+
 yJtIZy/2GT4yNvdG144Wy8FbfWEelXF1dH9zH+HBxBHxwdWpoLJq+L8RYjkGxAUARrkEhpPsCXt
 phtICIG61hP5mCcMlWcrrOoQHrAhR0re3UiCyhyRZRpdooYbv2lR16ayu6OIdSmP6PtOsaYl
X-Proofpoint-GUID: ZSDTG8BOgoZz-27eAEPXXQ1GTzSQQLCV
X-Proofpoint-ORIG-GUID: ZSDTG8BOgoZz-27eAEPXXQ1GTzSQQLCV
X-Authority-Analysis: v=2.4 cv=TqPmhCXh c=1 sm=1 tr=0 ts=686653d5 cx=c_pps
 a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=nFUSFbzN6SMpi5LfgmsA:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-03_03,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 mlxlogscore=876 suspectscore=0 adultscore=0
 phishscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507030081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250703_025645_549246_86755C9D 
X-CRM114-Status: GOOD (  16.57  )
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

This series adds document, phy, configs support for PCIe in QCS615.

This series depend on the dt-bindings change
https://lore.kernel.org/all/20250521-topic-8150_pcie_drop_clocks-v1-0-3d42e84f6453@oss.qualcomm.com/

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
---
Have following changes:
	- Add a new Document the QCS615 PCIe Controller
	- Add configurations in devicetree for PCIe, including registers, clocks, interrupts and phy setting sequence.
	- Add configurations in devicetree for PCIe, platform related gpios, PMIC regulators, etc.

Changes in v8:
- Fix scripts/checkpatch.pl error (Krzystof)
- Link to v7: https://lore.kernel.org/all/20250702103549.712039-1-ziyue.zhang@oss.qualcomm.com/

Changes in v7:
- Add Fixes tag to phy bindings patch (Johan)
- QCS615 is Gen3 controller but Gen2 phy, so limited max link speed to Gen2.
- Remove eq-presets-8gts and oppopp-8000000 for only support Gen2.
- Link to v6: https://lore.kernel.org/all/t6bwkld55a2dcozxz7rxnvdgpjis6oveqzkh4s7nvxgikws4rl@fn2sd7zlabhe/

Changes in v6:
- Change PCIe equalization setting to one lane
- Add reviewed by tags
- Link to v5: https://lore.kernel.org/all/t6bwkld55a2dcozxz7rxnvdgpjis6oveqzkh4s7nvxgikws4rl@fn2sd7zlabhe/

Changes in v5:
- Drop qcs615-pcie.yaml and use sm8150, as qcs615 is the downgraded
  version of sm8150, which can share the same yaml.
- Drop compatible enrty in driver and use sm8150's enrty (Krzysztof)
- Fix the DT format problem (Konrad)
- Link to v4: https://lore.kernel.org/all/20250507031559.4085159-1-quic_ziyuzhan@quicinc.com/

Changes in v4:
- Fixed compile error found by kernel test robot(Krzysztof)
- Update DT format (Konrad & Krzysztof)
- Remove QCS8550 compatible use QCS615 compatible only (Konrad)
- Update phy dt bindings to fix the dtb check errors.
- Link to v3: https://lore.kernel.org/all/20250310065613.151598-1-quic_ziyuzhan@quicinc.com/

Changes in v3:
- Update qcs615 dt-bindings to fit the qcom-soc.yaml (Krzysztof & Dmitry)
- Removed the driver patch and using fallback method (Mani)
- Update DT format, keep it same with the x1e801000.dtsi (Konrad)
- Update DT commit message (Bojor)
- Link to v2: https://lore.kernel.org/all/20241122023314.1616353-1-quic_ziyuzhan@quicinc.com/

Changes in v2:
- Update commit message for qcs615 phy
- Update qcs615 phy, using lowercase hex
- Removed redundant function
- split the soc dtsi and the platform dts into two changes
- Link to v1: https://lore.kernel.org/all/20241118082619.177201-1-quic_ziyuzhan@quicinc.com/


Krishna chaitanya chundru (2):
  arm64: dts: qcom: qcs615: enable pcie
  arm64: dts: qcom: qcs615-ride: Enable PCIe interface

Ziyue Zhang (1):
  dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
    for QCS615

 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   2 +-
 arch/arm64/boot/dts/qcom/qcs615-ride.dts      |  42 ++++++
 arch/arm64/boot/dts/qcom/qcs615.dtsi          | 138 ++++++++++++++++++
 3 files changed, 181 insertions(+), 1 deletion(-)


base-commit: 3f804361f3b9af33e00b90ec9cb5afcc96831e60
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
