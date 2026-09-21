Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86C9FC982EE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 10:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WxLeEXAVSXkYA39o/huI9/HDwwCDw8zHJCHXhSkJnKQ=; b=y9aqxeBtCxy717
	WSv3VXq6NGDxaExYZgQHkNc/IWF4bcsdRxKOaETPc9yGZZc323xPjMwNA43qqVuC09DAYFWFX88tJ
	C61cbrLy1K1b7C+w3eA2zLimoK2TBJ7EJ6m0fYEQuuk0RZUoqOpmMQY2d1QnhxRyvBH2fYsXrydCq
	6esew+wVdF3fYc34xIJd5pycQES0QPTNN0sKBnSEdokaO59ogpBgfLv2DO0IksoFM5oiMOWWAjlvc
	yMDMuqsL7RrZHlgGWBUc4GKtk5ohUS5G2CuTPhiXblfOnrPRwWOsb+1y/C2iDf1z7cIaQ+sGQ55Hz
	k1ki3ZftlcBCWJIEe1PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bjZ-00000001nKV-2pIz;
	Mon, 21 Sep 2026 10:58:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8bjX-00000001nGf-3vJ7
	for linux-phy@bombadil.infradead.org;
	Mon, 21 Sep 2026 10:58:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=vo3Y19h45VaNjy1xkCcVniHXb1WIEPxZlIG7JByPcWk=; b=WMemvy5g5Cc1D2lCYlSSBiI7BM
	+ugWki6UoVIZf9ohpb+/JeW19GsXf1UjtyiggaMi90K86C6bFoEeISVfugHqCyGLsI2jHUhbzDgBs
	ibsJg8rkDQhpIDLRbRM8FEp0H43bQ1Fw54S0MAOolsCb+mkaCYIcJ+NAJzEKnjVNm6XCmEOnbiXEu
	3J6ruLjOXPqnXTqhFxrZjdJwwa/TihxkuOTMhZfA5VBhXEB96YZFwemfEn4N0IQx+roCUjbJzFT04
	1/330jzhZYnS0TTYedr6TBP1hlsnZJ6Qpw7TTzEedU+QUeWebQo/uA3ElRrI5MjqqzFIRGC7ocNy/
	CAqshXVw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8bjL-0000000C9c4-0sAQ
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 10:58:50 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68LAduTv1926513
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 10:58:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vo3Y19h45VaNjy1xkCcVniHXb1WIEPxZlIG7JByPcWk=; b=oXVi0W9pQkk1wheu
	JS4xAcTjV0cGGIJqVfAmx0C09R24AVEkfafyG2JArUZAi+Y/dIdgB8jaIz64A8XK
	Pui+pNBWYCatVUNdnBTrD5bKoJILoWUn5/N/MRp4T2xvpU7IhrxTJfYujN2Au5ov
	k6XjE8JvzNOunP+yMLEJ9hzeQ78YDOT9Cngq2TFSkyfk1C+8ab4WRsjTt3Anddke
	wGRF4caUQhy/+nl+z5xlw2X2gYNHnd0xGHKDxO2Grg5k+Cfpv5NBJf08wyqPdYPm
	pBRnI//mq13zO4QmvLWOQROZm1D54eGljj7rCma6HZeVW/fpRQp9baNWBvrgl+Pu
	2vYE3w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gtt3va1c0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 10:58:37 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-39512608fb1so7057439a91.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 03:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789988317; x=1790593117; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vo3Y19h45VaNjy1xkCcVniHXb1WIEPxZlIG7JByPcWk=;
        b=Tl2FfEy2lqD8B+wCnDDQakV4pv+KvNTGsExI9/1UCTqrYlUOxlDJEd/OuYXDozugNq
         tNeC/QyWXSZG3fCT257sNCgIam0xkHQjh4u7v/WH221FfSQHig1WCf2llTqwisi+XFfd
         g/INsLQWzqev0Up8BAUlGUYPgKrSR1HImOMW7AhyewcITH5BemJO+lnFKcnn6GkYmYaD
         GtFhVLNiJhgeHR82EM+2m9MyYNnTk9hMBfRwoObsmlzlxJlTyxkXTnvsUmLqwzr+xDRa
         oBh02JuXdngYpyO/e2pITWK40b4D2HYz6ZaUMgXGRn2DDuz9Sg9iSNyGZJ+0PA3NDd67
         1UEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789988317; x=1790593117;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vo3Y19h45VaNjy1xkCcVniHXb1WIEPxZlIG7JByPcWk=;
        b=egxM0E3ilE8VUr+fHEVR1POxS4beuKTecviY5pIBVbpKWxr9BG5db+UTqq/KELb18M
         Fky1tODIjFu2NDXFfk1Qj1jEeApSgem1GTS38+rJFTbsZqa24wn2VPy3gA+FTlCjT9fI
         oXhAYvIcG+wxcqrYd8rFSOaNHnFoO2AAWFIgS3uCNr41pqbsr1+AAnLL8alDtANLJ3Ph
         V2t5bknt0umIIMf00cB8JbC/Zd8bb/kYX1F5g1rmMi3I6D0jJ1bif398OSqPRy/d5n4E
         5oFXobxU0hIwR6a7dubfNztLW6KYmeVX87isfjArOxPuy2Ce8u3M7i0JfAEyuep0EDyT
         lQsg==
X-Forwarded-Encrypted: i=1; AKwUvBzrRnkBaDUd/t2+KI7f+s4ZrRt9KquMaH9I3yuZfej53DNobdVqrCfOEfNd1xo6XIuehXPCNU68e+E=@lists.infradead.org
X-Gm-Message-State: AFuF++mBrqc9nVm/B6uwoViopX/dki25xSou/CuTmb7hJc/9iWsssr8B
	+MKypaJcbiLCBWUBZs0qgtf2g0ZKDZXG+19gYZcg5l+vGqSeaXXzpPoV7pjMgKRLHf1/LzbnnlN
	xOk+fsQ8pb8zW4NbX8YrfoTybWwZqzJ+NXFZStjMrA31p9jh8bhRwCV0YXRq22v8XYZaj
X-Gm-Gg: AYBFou1TcpF2UJXZ23czIaakgjBF3AqXFaSIk8q9Ygl+IOIT9Ak4rnvpd2Fqz3za4tv
	Ze+ApXmhZrmVdGAtrALPCcgLprgCjXt1LOcAhv5s9kMrGbCV8RN7BT3V5UbUORTo/HZ0uNp9jBc
	KpJanm1zeOaoECcXrHbWKdaaBOHcLmKKKKeeH0K7zn+e+6mc4o2Yeucuo0SX/CXvUnFw5a3oA/H
	L1K9OgMjNe0rMfJVbtuW/8SjN7BC30C7H0/Lw4ynBlXZf+DUxano0BfRXIHdBVLmrq8jxeWWPaE
	GDq2Cfk4RghAOcslPs5AdYgk62Dtbeo1VeHLZbE5P8ZkMIdjv3t+zNlseZ2vZDSjLkq56i1qxSh
	7+IzpKF5vgHkVM6rI6YY7YrtZBcdnPZScfg==
X-Received: by 2002:a17:90a:e7c6:b0:39e:6a82:afd1 with SMTP id 98e67ed59e1d1-39e6a82bbf8mr10312557a91.35.1789988316520;
        Mon, 21 Sep 2026 03:58:36 -0700 (PDT)
X-Received: by 2002:a17:90a:e7c6:b0:39e:6a82:afd1 with SMTP id 98e67ed59e1d1-39e6a82bbf8mr10312527a91.35.1789988316117;
        Mon, 21 Sep 2026 03:58:36 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c331d55cfsm23544128eec.30.2026.09.21.03.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 03:58:35 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 16:28:12 +0530
Subject: [PATCH 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 qcs8300 16 GT/s PHY
MIME-Version: 1.0
Message-Id: <20260921-monaco_ep-v1-1-63c5282fb0db@oss.qualcomm.com>
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
In-Reply-To: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789988304; l=4836;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=XqGrQUh0pQxlI5u9LP+UKJRIL43iT5tX45CHxhXgMCk=;
 b=TXphv9z96EcWO2ZpF3LQqu/44x8GLI5vZQ8CVlLbonzmTdfKTFy+PSBhIjHLrtx+XhdbWCe5q
 igdGK1BPtRsBJYvL+TnOeOmiitsQ/PzGJX6r69ZzUz9GaAJmz9leqpf
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=Ytia1IYX c=1 sm=1 tr=0 ts=6ab10ddd cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=VirKNbUofNnfAjYdglcA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: U58Vz4VoICaXuXyB9_LwFUwszXE00vp_
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDE1NyBTYWx0ZWRfX5PHI9jySIVcB
 +sSlXB2Py7hapfRLyve8kQiumZgJ3dFZk4Y12kst+osfbtqgFQY4z0w1BAgRXVuhRsFklS5cfhu
 KGpbjjlzZJ2p9txMzLYpUmHE/BFCml0=
X-Proofpoint-GUID: U58Vz4VoICaXuXyB9_LwFUwszXE00vp_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDE1NyBTYWx0ZWRfX7bZ3a2ImyakU
 pgtOR90/pEXD4Ef/dIjNCquH5A0OkYOCXCkk+vY6RJNP1bs9gKJZtBy4uSX1n1pLimQ8hkGoekK
 rTMfTpqAn2WA1MHmWmrTRPe65gBP5+jGcU6h/Lt5aExWM5fVnql/kd3jRm+jLofUMexo9dljXe9
 FyyhBgXLdJbYcFfNdVJfaWOCZUTcABqzsu+1pS1dNppk5nqegNvZu+t2FkyaF7NVUsS3bG9TJNb
 xFdN10zKv9/V7D7h8sQAtRDQzU+Ni5NX9DHdH7sAikyXWA9Cn29e2b9a0+bfkGwoGIU31Xur7YC
 E86I8SDgXop+1Dd0MnYhAe3goF9OTwlMG413FpZ1C7IeIt0ghgu/LJaeoW4t73VygKHNPoSwlu+
 l4BA6lQZGWmZE03iPSgdaI+B+cASZpBWv7phn6O488o+qy3HwCvzgO0EzJPQFmDX7Eqj9ZcvDNX
 gBMHpOnh4okcARFnOLg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609210157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_115847_967592_EDE64C1D 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
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

The QCS8300 16 GT/s x4 QMP PCIe PHY was previously described using only
the qcom,sa8775p-qmp-gen4x4-pcie-phy compatible, since no QCS8300-specific
compatible existed for this PHY. This was a mistake, as it left the PHY
undocumented as QCS8300 hardware and indistinguishable from SA8775P in
the binding.

Correct this by documenting a dedicated
"qcom,qcs8300-qmp-gen4x4-pcie-phy" compatible, with
"qcom,sa8775p-qmp-gen4x4-pcie-phy" listed as its fallback compatible.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 87 ++++++++++++----------
 1 file changed, 46 insertions(+), 41 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index b353b7bfb839..34d3a714716b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -15,47 +15,52 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,eliza-qmp-gen3x1-pcie-phy
-      - qcom,eliza-qmp-gen3x2-pcie-phy
-      - qcom,glymur-qmp-gen4x2-pcie-phy
-      - qcom,glymur-qmp-gen5x4-pcie-phy
-      - qcom,hawi-qmp-gen3x2-pcie-phy
-      - qcom,hawi-qmp-gen4x1-pcie-phy
-      - qcom,kaanapali-qmp-gen3x2-pcie-phy
-      - qcom,qcs615-qmp-gen3x1-pcie-phy
-      - qcom,qcs8300-qmp-gen4x2-pcie-phy
-      - qcom,sa8775p-qmp-gen4x2-pcie-phy
-      - qcom,sa8775p-qmp-gen4x4-pcie-phy
-      - qcom,sar2130p-qmp-gen3x2-pcie-phy
-      - qcom,sc8180x-qmp-pcie-phy
-      - qcom,sc8280xp-qmp-gen3x1-pcie-phy
-      - qcom,sc8280xp-qmp-gen3x2-pcie-phy
-      - qcom,sc8280xp-qmp-gen3x4-pcie-phy
-      - qcom,sdm845-qhp-pcie-phy
-      - qcom,sdm845-qmp-pcie-phy
-      - qcom,sdx55-qmp-pcie-phy
-      - qcom,sdx65-qmp-gen4x2-pcie-phy
-      - qcom,sm8150-qmp-gen3x1-pcie-phy
-      - qcom,sm8150-qmp-gen3x2-pcie-phy
-      - qcom,sm8250-qmp-gen3x1-pcie-phy
-      - qcom,sm8250-qmp-gen3x2-pcie-phy
-      - qcom,sm8250-qmp-modem-pcie-phy
-      - qcom,sm8350-qmp-gen3x1-pcie-phy
-      - qcom,sm8350-qmp-gen3x2-pcie-phy
-      - qcom,sm8450-qmp-gen3x1-pcie-phy
-      - qcom,sm8450-qmp-gen4x2-pcie-phy
-      - qcom,sm8475-qmp-gen3x1-pcie-phy
-      - qcom,sm8550-qmp-gen3x2-pcie-phy
-      - qcom,sm8550-qmp-gen4x2-pcie-phy
-      - qcom,sm8650-qmp-gen3x2-pcie-phy
-      - qcom,sm8650-qmp-gen4x2-pcie-phy
-      - qcom,sm8750-qmp-gen3x2-pcie-phy
-      - qcom,x1e80100-qmp-gen3x2-pcie-phy
-      - qcom,x1e80100-qmp-gen4x2-pcie-phy
-      - qcom,x1e80100-qmp-gen4x4-pcie-phy
-      - qcom,x1e80100-qmp-gen4x8-pcie-phy
-      - qcom,x1p42100-qmp-gen4x4-pcie-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,qcs8300-qmp-gen4x4-pcie-phy
+          - const: qcom,sa8775p-qmp-gen4x4-pcie-phy
+      - enum:
+          - qcom,eliza-qmp-gen3x1-pcie-phy
+          - qcom,eliza-qmp-gen3x2-pcie-phy
+          - qcom,glymur-qmp-gen4x2-pcie-phy
+          - qcom,glymur-qmp-gen5x4-pcie-phy
+          - qcom,hawi-qmp-gen3x2-pcie-phy
+          - qcom,hawi-qmp-gen4x1-pcie-phy
+          - qcom,kaanapali-qmp-gen3x2-pcie-phy
+          - qcom,qcs615-qmp-gen3x1-pcie-phy
+          - qcom,qcs8300-qmp-gen4x2-pcie-phy
+          - qcom,sa8775p-qmp-gen4x2-pcie-phy
+          - qcom,sa8775p-qmp-gen4x4-pcie-phy
+          - qcom,sar2130p-qmp-gen3x2-pcie-phy
+          - qcom,sc8180x-qmp-pcie-phy
+          - qcom,sc8280xp-qmp-gen3x1-pcie-phy
+          - qcom,sc8280xp-qmp-gen3x2-pcie-phy
+          - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+          - qcom,sdm845-qhp-pcie-phy
+          - qcom,sdm845-qmp-pcie-phy
+          - qcom,sdx55-qmp-pcie-phy
+          - qcom,sdx65-qmp-gen4x2-pcie-phy
+          - qcom,sm8150-qmp-gen3x1-pcie-phy
+          - qcom,sm8150-qmp-gen3x2-pcie-phy
+          - qcom,sm8250-qmp-gen3x1-pcie-phy
+          - qcom,sm8250-qmp-gen3x2-pcie-phy
+          - qcom,sm8250-qmp-modem-pcie-phy
+          - qcom,sm8350-qmp-gen3x1-pcie-phy
+          - qcom,sm8350-qmp-gen3x2-pcie-phy
+          - qcom,sm8450-qmp-gen3x1-pcie-phy
+          - qcom,sm8450-qmp-gen4x2-pcie-phy
+          - qcom,sm8475-qmp-gen3x1-pcie-phy
+          - qcom,sm8550-qmp-gen3x2-pcie-phy
+          - qcom,sm8550-qmp-gen4x2-pcie-phy
+          - qcom,sm8650-qmp-gen3x2-pcie-phy
+          - qcom,sm8650-qmp-gen4x2-pcie-phy
+          - qcom,sm8750-qmp-gen3x2-pcie-phy
+          - qcom,x1e80100-qmp-gen3x2-pcie-phy
+          - qcom,x1e80100-qmp-gen4x2-pcie-phy
+          - qcom,x1e80100-qmp-gen4x4-pcie-phy
+          - qcom,x1e80100-qmp-gen4x8-pcie-phy
+          - qcom,x1p42100-qmp-gen4x4-pcie-phy
 
   reg:
     minItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
