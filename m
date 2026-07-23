Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8F51C4453D
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 02:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hx1wEO5MVaQj4eWq+YyFHmFYL9OYDILRkgcYYDcqem0=; b=cm/mJNKt3WjoFz
	4OYTdAH+B/tga6eLt7GJqRuxrwcCDoaH0qz2WdpWAO6/I5aajhTzGJ7pHLcmD5BXl0zaElsC8BYdJ
	cM1zsEBudUMoXmKLUfcyeGcpkZjOv80TfgiAstVNHY2kqJYV4YYG60uu2h3kLDeN4evLTYKBN56dR
	q9iZ17HgYLDPv3aUPL+Le5rlDLNC5ZbjVmtKBJ0eh43xVKgyECfx1uq8x+PiMduvh581HEy/TvQa8
	hOp6y1UC+LyBQPgy7nV1cFdUfVOecwLeGQNJ6fE9kIQvGXeQl+qICQ6FTTQ6SOrFig5KNmFvE0tDF
	G81boXNNTlG0Rfc8qmeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmjCp-0000000DESP-1qiZ;
	Thu, 23 Jul 2026 02:30:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmjCm-0000000DEQt-0zDn
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 02:30:37 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66N0XEhT2365495
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 02:30:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xGQESnapNniC439AziMhXbTJfLqaefgPzfYKsPTLavw=; b=hXDhHiXIypTL2I4Q
	Nm0xckCyLs0Y/M1peMRut9fEBa9Yn311o9sHlSc4WW+VXni04g9zgJIEcVfEbWjC
	L3hv2z0mr88xgEz7a5jyiCmeOcVwdEnZWivb8ot9P1AOCdDDqSGjUTnsrxWyBp4/
	3D6b9Q8RkA5y7Dn1JdPzHSfyYvPj/kOQLBVchOY9t94tgaFfVI0N8CL66rQ7FDTe
	S5ilX2XdR8RZV/SM9P1teb3tOcUHdO9XOD7yFm0HwiX7A0sL71qCpfEGp5FX+Byf
	4i1z3m15MWfhQw6pGtt+0nWpuv1VC/CmKSzQBxOHcEbANDrTT1GVHptrJeE7bR9D
	IuAccQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fk28vhtca-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 02:30:35 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2cc73f47bdcso3894685ad.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 19:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784773834; x=1785378634; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xGQESnapNniC439AziMhXbTJfLqaefgPzfYKsPTLavw=;
        b=H+BW8lGSUD4m4yVBqEfBJu69bVmJyuCQh0CKzKXMYuJLdcOJRbPjNfQn10ZIWmOdFj
         6pqC7tCe88iVGXMTx5sKLTJYOojmC6vU8lqVLCVUcvh58PRRyjjU/OiFdS260bhv7lAM
         uIOnleaI8IF0bNnCBGvwtzkgS1JOBeh1k+z7b560nFwnwZ/Zv6PbAfoogph38NXav1wv
         8ywBaGM7ZfjIq6UpH5s/mCbIXi2XVNVN2TpnAMy0jzfu0ydhh8qaNClpZyOZ1ts1NgXQ
         84ehQUuJdbuZq6o0QTpxgi190eEbY7XQYZwGB+F3hVALjWKks3cjYLRwMdtJwMfYfbJj
         A1PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784773834; x=1785378634;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xGQESnapNniC439AziMhXbTJfLqaefgPzfYKsPTLavw=;
        b=gvQY17p10v8p9DuFJ6BW5Ca82jhqdnNEBRSp9k3eGLtBTz60M+jDHIwnjc1r8dab6o
         1gmWdy/r++q93/wPJ6bQkSX8BGgWSGX3yCYAAKPyOa+5trECVRQXnyNP/juRaMZmpAm1
         jbPZZNXjp5zJLWTqPf8NvXpsgUj8RXkIJpKEifbPalEhySMTlEMeuI/CA5wN8eP0GICg
         X1N1rv1UDSQoWx0TnNiwbABCYb8R+slz/RR95JJb8grQWvWBN/31BR+X1wPSegTzLwHB
         7dtFQBgGgB15d/rbDck1wFtOadbf4bp+ofKLddOZBnkwBWP8J8hF9yzZ977/3J+7fIuv
         k34A==
X-Forwarded-Encrypted: i=1; AHgh+RoeWWN8HpDyl0TxHp3gWGMJ8UpA3WZZCPbShRQztZl6aKpPs8Evlw3zcR5WahQft/3hrOIWJ3zfjZg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6p4WEV2+5xRRofokezrlLKEUxqE9glubv7EmXa0jph+D+6X0V
	MuXjkqsrrBD/cuzgrLbBVK8YiIcwEGSzFc1GWoL/4aRVUOufeQ14htKQ1EpSQZYhHOI6Qy8kjGN
	Mo48RKTXlWdroAHkxqTND//KKL/PJCof6jol9HmOO/T/ZQvCbIvTzdWwN8P5WtAZtfNq/
X-Gm-Gg: AR+sD10kSKipoiL6rqJFCnGJTR0OSaZZfqM1WooEIRuVTfZYKTZX32JdD2ZHmFOJyBW
	GcmJQMl8tjzhf9USg1POHFLQm5uZ9wgGfJwIIKAVzrAtErEg0jnMlx2kyW+64vfGw40TJbB00iz
	/YYAikTrwHni0YRDRZcRamKUVj4TXxSL5r8yOo0mi8zNg4GH332+Al4I2KdQq9WI0oY8fA/KzxL
	KDAfB5EWdvULB3naZ+tCkd78sKhDw9YwBjNkupk/HWn1BbfbeaC76CqvYc8QvxOcK9Ao1KSzO1i
	GjzjCnlj+5f4jD00OJ6wtSA7IPQ9ZakYwQ5wkBU4BiVwgAhGFgi4oY8yMp26qlZBzzVJBHPjBPm
	KkudCB3eML7Wa+KknDAYN7ZgpbywF5H2756L+ugbewU15Y3c=
X-Received: by 2002:a17:903:1aeb:b0:2ca:53e9:1277 with SMTP id d9443c01a7336-2cfa6a43e63mr15762815ad.1.1784773834188;
        Wed, 22 Jul 2026 19:30:34 -0700 (PDT)
X-Received: by 2002:a17:903:1aeb:b0:2ca:53e9:1277 with SMTP id d9443c01a7336-2cfa6a43e63mr15762425ad.1.1784773833688;
        Wed, 22 Jul 2026 19:30:33 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3147d47960dsm13463980eec.0.2026.07.22.19.30.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 19:30:32 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 19:30:23 -0700
Subject: [PATCH v6 6/6] arm64: dts: qcom: mahua-crd: Add PHY supplies for
 pcie3b_phy
MIME-Version: 1.0
Message-Id: <20260722-glymur_linkmode_0722-v6-6-bba8156b8cbb@oss.qualcomm.com>
References: <20260722-glymur_linkmode_0722-v6-0-bba8156b8cbb@oss.qualcomm.com>
In-Reply-To: <20260722-glymur_linkmode_0722-v6-0-bba8156b8cbb@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784773825; l=781;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=KWNs/xCEnPlXMN2fZRU/bfpMbHhsvVdPwo2ZWlrIGks=;
 b=GgeI+2mlBp4bTa+H4va0AjEB1ZBhMjPdS2WjMBoprLL8UozW9j9WgkZI9WpFy/gdzAXVr+vvH
 sxRWa4f9U+/Dow9A7HnykLTLHwB/mWLeFBqqKA22kJeqIJamoV2Wu24
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIzMDAyMiBTYWx0ZWRfX7sPhe/VGixpn
 f4dy6NKVRAyy+dGiztrLNoJZ3R7PkmhZU06eANYg1eCINrEkgWSfDjRRoUn7Z3VSzkKHrEc9OEP
 I002RlFofxMwvP8D9JnAevEOCDYmAVM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIzMDAyMiBTYWx0ZWRfXxbgjOLH+FbNi
 yKjTUXkkMjmryeNYPu6y9AZJpCFxbeYPNfnrDmV5Zkif3LBOQdrB65BUqecVV7RaVJ28ny5sUwu
 xo7bFWurmo9TbubHqLjC20bLpIpaCqVpsD0JbGR6C3ZgMeeYQdOOw3tpMdJX/lwjdK0faAu5XOY
 QmhbLXElRJL6ti4JbsbikEF/p32j5nBx3sqJhhKBhWZVa+B3K186QAnlDNCaO/9AXDId3P4cRym
 j1JqQOEjidt/brp+zS/BeCciy1xhMP8nYrMKE3Kxi4J0pZcrdDVuLnno4UVtdFi9QFD4yLdMSXD
 2H88HLrpz+NBzhSRTc3GjTm/XAX9ZE3mxzPq/e8Fp9XYNoh09w4nZqf2T0tg5z+0FQ68SFqqpFh
 N1g38VT5YVZ2g1aP3NDTK7/4+CihIAW76Y2M/678me1UXU0ILHUhwgcYaRJl0SCtrVGyvDU/ztu
 nNvfqqfKZQt83aPh+Kg==
X-Proofpoint-ORIG-GUID: lRvZXtyUrnTj4LVnEqW_zFjZMaWQTpPl
X-Proofpoint-GUID: lRvZXtyUrnTj4LVnEqW_zFjZMaWQTpPl
X-Authority-Analysis: v=2.4 cv=D4V37PRj c=1 sm=1 tr=0 ts=6a617ccb cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=FJ594BFJAeq65zshAlMA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-23_01,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 phishscore=0 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607230022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_193036_420169_A56C8B8A 
X-CRM114-Status: GOOD (  10.87  )
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

Mahua CRD wires the dedicated PCIe3b PHY's regulator supplies through
board-specific PMIC rails. Add the vdda-phy and vdda-pll supplies for
&pcie3b_phy.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/mahua-crd.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/mahua-crd.dts b/arch/arm64/boot/dts/qcom/mahua-crd.dts
index 9c8244e892dd..c56f0ab71f4f 100644
--- a/arch/arm64/boot/dts/qcom/mahua-crd.dts
+++ b/arch/arm64/boot/dts/qcom/mahua-crd.dts
@@ -19,3 +19,8 @@ / {
 	model = "Qualcomm Technologies, Inc. Mahua CRD";
 	compatible = "qcom,mahua-crd", "qcom,mahua";
 };
+
+&pcie3b_phy {
+	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
+	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
