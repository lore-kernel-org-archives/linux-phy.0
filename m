Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEA54606A898
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OTHwJZpy;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=l1PCjtMg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ZJ3k/6Rw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nZ3fbnVfSUM/exuQpdNJqjJCOe7hmEwlQCV30kQ/jwY=; b=OTHwJZpy5HBF+BJiC3VF5Wy/kJ
	Mc6YoZawiNXjJVq+ffhu+z6Xt3Kfx/ZOwzmC3/gRh+54DS4VtkEZFkvtiBo8ccPVv1nd+bTT2ccfX
	m8mHqDrkzXfMUwd/xQH9f7MePANFpL+dxRGnmVwhYoosq17ZqJlTVsvKS+150La9u7bgXARMB3ulT
	/yO8V44K1A3jX4I1a0bnchMRSvI1u+YQdl4zL6RDUkQSHdOJ5XmDAR0W5Ex5ASlcV0gZh4N626zQy
	4jcCAr1c3MBIV17pnNPW3C4M6sutGJEKsayf4WbIPaKVyuHbRg41E9mPEVIOG7gU0KyeMYxEEliAe
	no+3okNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBxN-0000000FthN-1mCx;
	Sat, 14 Nov 2026 11:30:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBxL-0000000Ftge-25Tg
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:30:04 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9w7A53649820
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:30:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	StjpzzgV3K5FMka2TqMOP7NLAIJFL8U/IFU/fNStwV0=; b=l1PCjtMgREQfKx4P
	zjv2l9uRq5lMe43qTPNoJN0Tgj6vGJILER7VcC32DvWY2sX+zSIKQ8OTrq0TE+7D
	fjcH2qGfoVzvYn2ZhyEwUs+cxRtx0qpm06b3raicfchLlLbpW3xk0c+yqaTz3Leu
	KcsIsdAzM50jijoUyYsiGhDnUZvQh4kxAi5XzHPDDTYPm1fCWtELPxbmkJTWJYth
	Eg4wv+nGokkQGHpPLq/dYUMk4XYdoglyVlZm4C7n3d0vf1gH5ZwOMcnwOJypuWdS
	wa6AlcnnAwH+RqnjbnCFpyWq28cE7AtGpE3wuwQCqeMOC0vinla7fOSW4FbYyx48
	LnlicQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhhjrn8j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:30:02 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-9496ff065bcso10503685a.3
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655801; x=1795260601; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=StjpzzgV3K5FMka2TqMOP7NLAIJFL8U/IFU/fNStwV0=;
        b=ZJ3k/6RwETF8qicwMpU12T9kLv2g2HxsPtJ5664l43OED8AXzFQZU6G5ncnc5RVV8M
         F1NBegMf9x/akvSqtlREqz2RTHB+8lITwB9TGHjPwkNvAo4vS6fB/wwHMvIZ19SvMYqt
         TvvgOv8iu8c5HBUDJXpWAYcDogARkBe6XvJcafiVNU0oyVn1mPAUTQ1lglH+v61Qkwlm
         5fjs7oXDEQdzUMHqLhOb8mr7yeMVrnBgea4D0g+qCK0LS0pPA4U0yBc9GKz3SoGSHTYb
         xkt0jaqN6bq714Tp57XPL6C1Wj1xy5k4ErkvRvG/K61qkM9Ozzb4cnu+iLTQnZT6BqDA
         hYqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655801; x=1795260601;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=StjpzzgV3K5FMka2TqMOP7NLAIJFL8U/IFU/fNStwV0=;
        b=cjBPI8tZuG2gSjlLH81yd5ri4jC0DnvkvfoG9ZMzGq1gwTWXuzZSKImqR3uIrVAGYE
         98RVjR/j3+5yZ+MgA7bpqtWwY5x5JeN7S8BdaZ4ns1KaEKQdvIHQOJQbt5xxBc/dTcB0
         bIGYJl0gSRNoXCNwpt+wQ9tFzLsJk4C2Vj3Yw1KUeBDFVsE03Q2zqKI+QtTsvmWkcRjO
         4mFX75G6cSfHvKHoXHGJYXqsMwjPyRoKZHJETnXU1wHZkzVcIEuSH61HS2m6jG4z6yqe
         ogsQTaS6ckasXdpziB9piVMsH5yBtxjF9QSeuirbe0Anp+TUGW+pm8lu/wWtjZj3cg8E
         Tbaw==
X-Gm-Message-State: APuU4Z9OqcValxlqRM9jzibauI+Vpt2CGp5aHtGAQJM0309qC9uxwPTc
	h0KCeIscmeUrlSNmFkArikxZUrjpClQFFam1HTHf3w1RGzU6k/tUpcuL6HXdeYP55nTjX+jaYDF
	wK36KvjICr7VRq9xYOMAVAWHXdAtXJEqzc/LCbwncHOeFWCQ9r+5gsoTuvZmyt8RNycX6
X-Gm-Gg: AYBFou2/40wSD2ytyysSvkxW7PA/QL0kbIPaK0OGOBeEN8P5geIWLNTyiFHEVxE8cN4
	4S7YMvxhfxe6S744fLwhnkWihTRL0AHB2FQP9wEVcE7qgdn0i2JsIZttI5HxQht6EeV9t/kQAVQ
	hb9u48N3Z3sHRhLAOYgIMpyNmSfsqmMeAV8+kNUoYvAREWPpN+MYAdxb3jVfkdfWO6g2mNJY6KI
	ui7nkJv0y978BLoFNGeL5mdmdZE3PaqPl0DE37lmXi1aioIH1ie0ZvFc1G/XbriRmWUul83EhKY
	w08dZ9Sz21Aas8YZ0BqOQK/EyBmBCKptTiwW1T8C7L5TU6wbrfTG13b82G/UYld2RdJsEZFaqhX
	9z/065LG7Q6xwTljhJ8KjQGnBYjIvvN+NDyRnM9Z/vY5uxZK9C4KXOXhgMaexyR/Sa2YHApDtRq
	IR+K/6/QBHb5tw3w1sngXbojnUCjlWMqN8TTiqxuTn
X-Received: by 2002:a05:620a:2b96:b0:93e:5fbf:a41c with SMTP id af79cd13be357-9494bbb7e8dmr822388685a.16.1794655801429;
        Sat, 14 Nov 2026 03:30:01 -0800 (PST)
X-Received: by 2002:a05:620a:2b96:b0:93e:5fbf:a41c with SMTP id af79cd13be357-9494bbb7e8dmr822385185a.16.1794655800997;
        Sat, 14 Nov 2026 03:30:00 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:30:00 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:19 +0800
Subject: [PATCH v7 02/23] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Eliza CSI2 PHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-2-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=1564;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=QtLaeWAMwSvDdk5BkCV2zOXsDrkSYOKz3w000Imr2GU=;
 b=ayq0vPZ8usswe3DyeKH5IP05zg0wiuLc2SqaQYyKdo7ap2j6Eu99cswy46uQjGiABqtEkkTgk
 NJnxyDfwEYnBqhIjRcSBPIsviU6LYc8w5T8W63QcoOphFlwacdYlmcP
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX3HxK/q27Jb7V
 LBWEY+MucupA0GUddPENl5/t87chmwWuaF6wfuDqeD5ZC44sd2UtgOFQ4Sd34D5fDTdrtS39SWa
 sWya3UHxqj5ihEjWaWABtCChP6mM79VuSU+jvww9tl8EBmtjc8xhS8f1OfCdH9QWG91aO3oJWt1
 mRff8LYMW21SgjJTTNzs+AIesSlotzPRe9Efp1XqyynpOEJEC33lDOL7MdRwZ0J2b8dCTn7UWdN
 /snUJzwCQZeuIcAul1SWO58zHHhNkQQkpShqoTNZ9DkmveX4wIIuNwlvA5BnMjn/uBQzmLZPsg8
 o+v5EC8yZt6o5p5jTNhWajz7pAK8saYilz2Cd2N+pCBMtGp9mlZ4J7RC6RW/QltKNmv3EDF6T+n
 AFA7Tx3RtZ1eb4vYT0Lv1e1ZnU8X1vRWs5inNilponEHUiu85X4A5xxmuGoKM3XfsmxCnFzF7NY
 ZDC0TeG3OZWU57IR+Bw==
X-Proofpoint-ORIG-GUID: _1Udm7pgcVaTdwxueTE8W4nt1OfpBTVk
X-Proofpoint-GUID: _1Udm7pgcVaTdwxueTE8W4nt1OfpBTVk
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX1oJrZnkg5dGf
 WHKwPFsaerIu2o5k3jEdK9tl82Z0BQxap3TBn2BJlxhLnnvu5v1d9WbfsfA3iqs9/6n8mPu082v
 e/ILnNrO3iJmUW4bn2+Pqig6Hd4ezl8=
X-Authority-Analysis: v=2.4 cv=X9rHu2Te c=1 sm=1 tr=0 ts=6af8463a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=Cn39VxbTSVwEGcu4l40A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 adultscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033003_723064_AC2FBEB6 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add "qcom,eliza-csi2-phy" falling back to "qcom,x1e80100-csi2-phy", as
Eliza integrates the same CSI2 PHY IP.

Eliza has no MMCX and MXC rails: CX feeds the existing "mmcx" input and
MX the "mx" input, so only the power-domain descriptions need updating.

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 8ff3df1d0d2787b2af0499c1e4106b86f56ff82c..884984f6f6b9e595df9bb3b0027c0bcf285b8058 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -22,7 +22,9 @@ properties:
           - qcom,sm8750-csi2-phy
           - qcom,x1e80100-csi2-phy
       - items:
-          - const: qcom,glymur-csi2-phy
+          - enum:
+              - qcom,eliza-csi2-phy
+              - qcom,glymur-csi2-phy
           - const: qcom,x1e80100-csi2-phy
 
   reg:
@@ -48,8 +50,8 @@ properties:
   power-domains:
     items:
       - description: Titan Top GDSC - Titan ISP Block, Global Distributed Switch Controller.
-      - description: MMCX voltage rail
-      - description: MXC or MXA voltage rail
+      - description: MMCX or CX voltage rail
+      - description: MXC, MXA or MX voltage rail
 
   power-domain-names:
     items:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
