Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6BD2C4453A
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 02:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3HgykB+aYCesGdjDexh8KQGmKq7CKjgWHxMmEAltiA=; b=C0gX9bNEXk83+g
	AfyIk8J4P2UL1QXNT78o3EFRjexhskpLMoWY1//KWbCYUgZa7apqf2cGfDY4YLAAl9kVn69Su5ZxF
	ParqG/7VBIFpxaeZZRwoQ/JlxlbDbko6f/aP1OOUCuU2TzC+DcLFFrVUEpusrZuVIwGZL+p7228da
	IHWRtp9luC5AMicf/Y+IqBd+vCYhl6xEx8gIg6SXQfuBtIirF3N8jSDzhHBWJZre+pERgs0JXf4pg
	8UI4QeBwqRs1X3Ls3IbKl+EBATG6H7PWuRrdUpHFtHKa7To+PTbtcUGmlXwD7K6mRa8UX9joYy70e
	yZrqZVn7Qwo0jIYx4KBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmjCl-0000000DEQ8-0yoI;
	Thu, 23 Jul 2026 02:30:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmjCi-0000000DEOX-3p3i
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 02:30:34 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66N0XgCB2521329
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 02:30:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1xzZ4TYv3eyDh/q626F6lbXEnoEWyDq/x87h4i2WaNM=; b=JOMWGSUFiOR1AoHc
	jqDK/P5BgAmRf4CTUXacXxHt2o1/4czG2SNLEAm+4Ve82GUzzVPE09ukH+bVUfWQ
	pC/6fhncGEOMUqekwxXzDV6tGz59BZ3oNfqRC/BfeDuvwem2rRQvqqkfrdlcgbeJ
	qZcIkDZwNC/1/MBXs4bQ3LKWqVq0ez0kfFl5JZXbJe6MLqKu6qZ10CCK4FR7Ym76
	+YsL4SaSwNcwFA9cIQnwZY21BPtsb6X6VkjORIl5Zm/OfO9wxK6zlE1+4hNmtwdQ
	qpKrKNVnJwJnA/T4MTcz6beqZ80hn9o+O3UEZxWqy5SgxRBdFro2xGzU9NhXczyq
	WEdNXg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fk6c7gpuy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Jul 2026 02:30:32 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2cec4226c70so4091605ad.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 19:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784773832; x=1785378632; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1xzZ4TYv3eyDh/q626F6lbXEnoEWyDq/x87h4i2WaNM=;
        b=I25wODQ20YyhQs1wyJpwezVhbdW1tJHEdeyDH8QAURtUJox1u7QvYzWG5tUh6LIJur
         5xoq89QyHRA/3Rdi6hV23/TK0gnRk0Oqlh5zDqaR1HIpHZX7m/vn7FLgh5k+UNMXZYYx
         ioNriwHUBtMNPQFD1A9pQHfsRyTq0LihDTtFNvweeN//11PHMDJyidr4ZUVI7qOzqQL1
         ob7TztSaEUSu3o6LtXvCHNhYS0llkqqQ+0AE87L7a8UNMbgJ9Lo2thpH0VU7OqwMHYgy
         rwpOp6wuBA2BiqXFuseQ6e4mwF+OMd+00eMHpXl7JiTLrgeNh2GDpw6bFpQDLaKowVr7
         FuHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784773832; x=1785378632;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1xzZ4TYv3eyDh/q626F6lbXEnoEWyDq/x87h4i2WaNM=;
        b=eYzLYhkbZzOp8G43qJS2w3pidtrGa/mf+bZCZfEp4dt0E2qySBfvddOzKSjZf5XyD9
         NN7bVg1jPCcOAvPhUzJ954PGBHXJw3U2vqMmVF/hMrEdxTPcjII0kz1P7DlOw05059Ob
         wRHGS7vfYCsidVE7XzOSv8iIfcGj3jAzR/p4ETuRCWP2B3i7eo+KbGIgkY3BMf56GLvM
         B8GaAkgyYxt0c1gh+Szck+aJVSbx+eH7hTmqPvu1p26gT+zOw4vlg9SgDltzK2IU1xzu
         RhYrn4BmkOaGL6+Lm1rEIpMRu19IBuL1wPXAcCnr5UKNhRD4cOhir7MBQ25MZuabFbB3
         qpGQ==
X-Forwarded-Encrypted: i=1; AHgh+RpYagF1oEZLaTID+Y3+h4mS3mdvsh6k0BBpg6bMSJ9Ofw+OYG0p/bWu3Ol+k+osDjNe5nE6zcHsIN8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6Toq4HyohYFBKGEZdaJWBFZgVlE4J4rhLlFvrsRat8je0PKUG
	yOm8h+6eJYA64sKOFpN01XJwHS59qgh8gNl3/H/TUwNbvJhWUJvzFn5hU/YXF6u6GGLbSkhGQMZ
	gZ8AAJiMVxS4P3+b1XpZ4SG2yvPGa96ONze4wHxSm2XkYSrFULj1JxJ8LpjT58xd/P85h
X-Gm-Gg: AR+sD1325/G7oe3ccm9n+h4Pv+t9qJZpgmr+GZtm2Iy6BeiyOF6hJUzY4ITc1bFTLuF
	wPncNyeeFDBvFRBKdKv2Ocx3oWW9x7Y7E3+GV084P+encGGjKrU1YyGGT2/d7wM5m7BfSiHiqTS
	C/+mqjQyL3pOYAjiuCDQ46dsWual8BQAN3EmkDtvmRLncQuuab/S33abDLQ+VWmVpEE8BANd1e6
	/aXMuXfk7b34+h/UeoQZAITMCWBXfmdPwN/j8jI87CFCY9M9hUvMr+4jOQ0ThMKV24ilRrctlTz
	sene1h8llxPQOcVP0ouYAh/69You8sIBiIftB1IkFSaIA3SjEWoLJIHJA9Vs9Se4YJ0JeF/EiKn
	snbBorxvYqZNT/b1erNAf18Z5sxXjeEl7/gDp0lDh1nZ447Y=
X-Received: by 2002:a17:903:2444:b0:2ca:1eef:5096 with SMTP id d9443c01a7336-2cfa6c7206emr15351555ad.36.1784773831822;
        Wed, 22 Jul 2026 19:30:31 -0700 (PDT)
X-Received: by 2002:a17:903:2444:b0:2ca:1eef:5096 with SMTP id d9443c01a7336-2cfa6c7206emr15351325ad.36.1784773831387;
        Wed, 22 Jul 2026 19:30:31 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3147d47960dsm13463980eec.0.2026.07.22.19.30.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 19:30:30 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 19:30:21 -0700
Subject: [PATCH v6 4/6] arm64: dts: qcom: glymur-crd: Add PHY supplies for
 pcie3_phy
MIME-Version: 1.0
Message-Id: <20260722-glymur_linkmode_0722-v6-4-bba8156b8cbb@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784773825; l=909;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=hNJNcXrNH9t/WVgtwP4qKBm+72KdIBYy832AI6C7B9Y=;
 b=S3uk7KDA0ZwRV+Te1UbFB0bnvHhyN9EvfnL21SzCM961skWCXtS/2yN5a432Owq9i1TXkFNJD
 DF47c9qtfydAlx3gTJahZRdEyORC3Z2ZO/tTyOkK67Bj1Zqzj5TQtCl
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: c8fvQxLoC23WgeB0lzof7DaCIlwYucTA
X-Proofpoint-ORIG-GUID: c8fvQxLoC23WgeB0lzof7DaCIlwYucTA
X-Authority-Analysis: v=2.4 cv=baZbluPB c=1 sm=1 tr=0 ts=6a617cc8 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=A-Hq22lvr9pePbC5bZQA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIzMDAyMiBTYWx0ZWRfX1/2Mp0GVCZ2S
 IieLNFWp9cMQi+ca+JvYU6l3i1rLicTTalVZdYEtVuImMo4C1/PAJjURt7pCySBUqx+9ZWIUcaW
 ElCsgPT4hi8QriU8rRf1ecCeOXnjvPg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIzMDAyMiBTYWx0ZWRfX9EbQ2/EF3uUU
 GcGLz0LjddHZWfltAk663hrxpjNOXa4V2iJjLp7ZILmGQuK/KjxrOhKDKib5sn9j5oVlIQTsgPT
 lwpAurwwV/jxhjC1T+TIDbDcrm8Kz1Zsdj59PoAIIcvh3IaJAgOnkkTp7ftnbJ66zlJvVVtnV5a
 PoVystLbZ37qIKtXcxCthjeQoQykmzJYth0fKNJZaudK/tdbtUpYOBvKZwcmzsgzTTYRvF6+8Hb
 YUiEdrn9pXnJMqbToPDcph6S6uzfzqjNENWHGsk5Wz8APfzBDHXs28gL3kJKsE/PyF6VtIOxFFG
 rYRSkwi4mATw/y5OhVkxtVJyFU4PD3XNoFreSfuL9lG6kMu9v5pxB8qgp9uu/0X+urzGCXwetrp
 /LxjSYXzoZDRuV7dFF28EKSULwubJ3WegAQKlDDq289i62R8EsBpiNb6//de6Dpoka2a6PxJtg0
 2j3TTa1RCtqEpxZujAg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-23_01,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607230022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_193032_964546_89D4BB16 
X-CRM114-Status: GOOD (  10.66  )
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

CRD wires the shared Gen5x8 PCIe PHY's regulator supplies through
board-specific PMIC rails. Add the vdda-phy, vdda-pll, and
vdda-refgen0p9/1p2 supplies for &pcie3_phy.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 6125617de82a..0aae613a33ad 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -28,3 +28,11 @@ &mdss_dp1 {
 &mdss_dp1_out {
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
+
+&pcie3_phy {
+	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
+	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
+
+	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
+	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
