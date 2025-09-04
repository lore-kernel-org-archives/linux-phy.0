Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49C25CA1017
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 06:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y977Ad7wmObarid74WsLbG0CtFXxcg52SwTNn7wJU50=; b=n5NZHowB/pN9gX
	F34MWyGem5XA0SnPkLlLMlxtYsTg/trDOwHNYTDkpNyIeQoI5xwotetB2k56TKoQgWyLZ816VzK+5
	lg6ps3gR8IlmEQFIjZDmh4EWzHJQoQ2DHVzo3VmHj0YfzrksGjwhJAPjYEQdNOScX62/RIU4R1f1q
	0y8+/bc2othpzpCQigkQ0oIz4PME1P3KpM6iOwvO6CYnRo85V15Q7CaTqSGg3rlM8QvOOhHD4cPI3
	2IHe68FFoZuTIm07DfwLWA3sWWW0BEexPk6fxSD8y/WFMW5kC0kyqASRjSenV2xqKTbzBkEAkRur5
	vJSlcTRRZQ4VlKnbHbWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3S5-00000009Wp9-0H2u;
	Thu, 04 Sep 2025 06:28:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3NP-00000009V51-2jaj
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 06:23:20 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5841APWE018996
	for <linux-phy@lists.infradead.org>; Thu, 4 Sep 2025 06:23:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3aPHP/ZvWkk9g17nfgyfPgB0CX4dTinxdGvwP60Nou0=; b=BxQYhEYKIe6AfS3K
	limHMXVx6HXWNF9QoHGJKKFTZ4sjz8DGgYkc2x5eapJaZTzH0VdmEGh9EwYaRRES
	qoO2hZ9L+DUfMUbUETfwCeOK8XRDdyhWFp3UKtJI7Zwcmy+nMpXBU+vTejSJ6/P4
	1vLwrEy9BQRafmZPx/8WOtx+BE6qMlXTRuvOsGqmcXQaNouw5IRNUD8Ry5egXjy1
	fzJDnwp//099ITRxlI2r28/93uMCgH4rnblfNg3Dgc7MzVVQLZ1uz98qRX94jPo5
	3Lgv3GbDhBEeCxAKy6hw0nA7a1B74Uzr8VgfzOrSLngC6zosKvAEBJDo2nsOhkzP
	BYDztA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk968jf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 06:23:19 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77241858ec1so677167b3a.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 23:23:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756966998; x=1757571798;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3aPHP/ZvWkk9g17nfgyfPgB0CX4dTinxdGvwP60Nou0=;
        b=pZUAKPQ7jr2uOnL5V3Ha8gIj9RS16D15lBdgoDwTnvNwbwkpk4zUdaBnpLOWDQM2S/
         pPZxu4eS6OxQLu8O0fXnZpeqO1mX47kbdv6ZOH0LLUtw0RdPqykRqqn+9EqG7fa9CCYQ
         yqXllv9uPPhUrVpsRCO9InZGUDfzH+PZwaBZhVMisKXPgcaeuD5xuP4/beLAU/44MUfl
         gebT2agrjhJrlUGgwsHWXWYhk1Y7JZ1R9z2BM1Th5ZgFYwksfHy+FTozBhanSFhTkoae
         xOW9i8aeYxZxjN8UpVgO/8BW1lILPgzmW4txkir6tZjQCV4fvvLQBCcREH5X0Wq66x+B
         SWnw==
X-Forwarded-Encrypted: i=1; AJvYcCX1JUnnsuHqlXnZ3/ZAF+LdOvY62bAX886w9ZjouBHDjkrXEnfnOMz6FOYE/9QMvkN8oGwuTb0+8c4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzkUVcWe8kywufH9zSXKpXkMzvlWIIgd7gUW9hkgMihxuivutkM
	1zgsuxCyucBr7gylW0q+4CFo5mX8hDy8PhoNy3VACgBWH+cHwBqDwfk6ZWjr2xpSYI6DyPVr8YP
	bdD87rpl140Dxvo0gqL8G6/xnquPUnhQTBWYR/A3O+vNEopLhIRTLosgBpm9/LbIT8Rpc
X-Gm-Gg: ASbGncvXob0d7DeKYZpA/l+awqppng8Yxlwb381tOtTjWPIXP5FpWcpQGPLZoXbodWX
	Fjbuytn3x4cYnPDljNfOaLd7ozzWSh7nDm2tImOx4CyFx9Pl89MdtC7Ki0MOT1/pQNyycEuPhbb
	AtzrlQOlGR3O5nlfu6xblYtAJOQRN69hST9Co8GMLylmJU2DEzfinVx9pXn4UKfo1YEtiaVLuD1
	Stn/ttht0g/IPWnCj16Qe5Tejx+z0wou1c3sqGF1wYJgXyIdt38+0Ru+FrE/wA0GigzcJdoJgkQ
	YXG1A8erq4DpPPCXnlFXircuA1sr9LxAAy5Ks2A2fuAixXYSp+zahb2QB7KjU+amxAXgctvKHWl
	dam5T5It0187oS0o=
X-Received: by 2002:a05:6a00:189e:b0:772:1fa1:be4a with SMTP id d2e1a72fcca58-7723e3077ccmr20997583b3a.16.1756966998367;
        Wed, 03 Sep 2025 23:23:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGa4NYqRv/n7wy0CncjscwCmB9uKdLKscmRP3T4+uddra/JgrTA8Epohbob2gH8G3spbxydGQ==
X-Received: by 2002:a05:6a00:189e:b0:772:1fa1:be4a with SMTP id d2e1a72fcca58-7723e3077ccmr20997537b3a.16.1756966997892;
        Wed, 03 Sep 2025 23:23:17 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7723427c127sm17120911b3a.62.2025.09.03.23.23.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 23:23:17 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 23:22:03 -0700
Subject: [PATCH v4 2/4] dt-bindings: PCI: qcom: Document the Glymur PCIe
 Controller
MIME-Version: 1.0
Message-Id: <20250903-glymur_pcie5-v4-2-c187c2d9d3bd@oss.qualcomm.com>
References: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
In-Reply-To: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756966993; l=1219;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=NNqB0T3SwC/nQPPpaZYNgmY4nF2H4V0Dr0y62les5Jc=;
 b=VwLaL7XUam8ITtZecUrYv1zURWlReeF/jvoQfCPKfREzjCQ2AE/890Zrfen7l/KBiZ2A7M5Xg
 Yj8l7EpYtyDDpdVPbtgjF6/jWSzANjOaVft5/RZXG9ozmAfzWuEL/pS
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-GUID: eHNu_3DXVJ_08Dub380lRG-2mCT_Nn1s
X-Proofpoint-ORIG-GUID: eHNu_3DXVJ_08Dub380lRG-2mCT_Nn1s
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b93057 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=WgZgizuZlwTqGGW0kXsA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfXzlPlOcu2mcaW
 dhAZyx6K1XvR4fepIPzUG8OS+p2O+12lMgSGbfXRCXqeOxDiyizMCzSEwZ/33IWSfmk7BQlG3Xc
 ko3MLoYEGpT5hhCxEuZTAh1PMKn91P04jBDoTjjARfbIX8GTiL6Ajb5a9kjENUw4IW6fiFrg/Cv
 dP6roiCx0gZN8GOFupACUYXt1k5omP3XMKhU1qldPOrMITfczheTjDBhOJ1yuAHPX6YiO5UXSD/
 1uK0FvLMxLsgFbOshIyWpt1ZvbHKck6LE9Q/kAt3ui34FeHxQU5MutlTFgeIGZLE4GtvtTxbGbZ
 LgtQ5p+2YgWPRt2H22/Gc4agSVfZ86/lVFaWJ0kGW5APoWr3Op3PHxVSousLfjFXGF/20faWkVy
 IZq3DfpT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_232319_701494_91FBC1A3 
X-CRM114-Status: GOOD (  12.15  )
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

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

On the Qualcomm Glymur platform the PCIe host is compatible with the DWC
controller present on the X1E80100 platform. So document the PCIe
controllers found on Glymur and use the X1E80100 compatible string as a
fallback in the schema.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
index 257068a1826492a7071600d03ca0c99babb75bd9..8600f2c74cb81bcb924fa2035d992c3bd147db31 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
@@ -16,7 +16,12 @@ description:
 
 properties:
   compatible:
-    const: qcom,pcie-x1e80100
+    oneOf:
+      - const: qcom,pcie-x1e80100
+      - items:
+          - enum:
+              - qcom,glymur-pcie
+          - const: qcom,pcie-x1e80100
 
   reg:
     minItems: 6

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
