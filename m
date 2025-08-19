Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB1E6CA0EF7
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 11:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGLF2BUEKANAWs/3Sb8hvx2leCVaHm3M/H3TXKM1ojo=; b=SWG9fxFCGuQkfc
	mB+1RwgJApbHawNEN8nL3spFOG4Ewd7NIOUMK50nBUljyuWg4tTnS7R2DdG+FQ3GfxXd9tv8Kq1I4
	KRsYpcJ3KZT8YeQpBxn+6ZNlaZBRDUA7zA+aOETlLIoda3N740fgz0PbkXE2yOUnutQnAjRGPzrwA
	Zf564KddDoCrjxhkqaUcT7oiqY1I8UjHc9JdQxaMwvn7znLbMY9rFXkTGvNZossdmHedSbTfuBfFP
	AORRgMoxIttM66vGwLUTHCZLC3d6RZSv2pGEIrg4gpqzaDs2dNXags3IdZ2por+B6Xl/jy53RTSMV
	es6kVYIJnmKwLhVrkMNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoKdU-0000000AIv3-2Se2;
	Tue, 19 Aug 2025 11:36:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoJ1N-0000000A2At-1JjQ
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 09:52:50 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90Xdb007216
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 09:52:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x/mJfVjavIoqW9T/ceCVgzgHEhxIAMs4Ha+bWe4V2mM=; b=n1gd3tfWgh4Lple2
	RUP0TcqfCejGVxtXIvYyxDgViyFw0n5gKq1/3QvburWZ0byEhkv0siASr08gQUJL
	8y+juCf9hO4kCtDML0dDO7bIc/ZXYY8W3URSt1G8SWGLWjR9wkwn8EwX/PQpKsbQ
	tVSy9QpSUovsa4Cr8Whfl2Vd4LPXmeLIIcwnbUJM7q//+9itjZOuEU1Qhn0rJTOa
	2FZbqFQoD+obABmuddnvgHf0qRyRfPPFmK93mx5oLv3kpfnCW9BxuA1GJhVmOjXn
	nhpbxfhdClpqYmWjPh3oDVtk4UkMv6Z4fDfStqeEyVJCwnspE1Yktmu7RjoZCqLu
	OXxGww==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jj7483eh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 09:52:48 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-76e2e8b4ab7so4350448b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 02:52:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755597168; x=1756201968;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x/mJfVjavIoqW9T/ceCVgzgHEhxIAMs4Ha+bWe4V2mM=;
        b=UbqYkFo8KODUJexYrOwE29HkfJbCJVne33UomjU+QFkPXCEV0rBIyDKd8uEnyKaxmz
         lPFcsL/PCw7ZWcnRHuMioU4+y8e/tp7EIFgO+p9ggbM+DrHKDjPzzhYkKfSoUw59j87T
         9UN6neUEiAPSP884gSc4XFyTKdZHwY8dKWJeLjcvZ6bEq71jEXLBwNsldlXMJl1vgH62
         jRGRFre3TchJGcpIQX+X+jJLWClG8NHNxhxG1T0gs8cMT51gjMrUKnpNSxlcnXnT+jct
         p324vFf8ga2kA+kYZhke1ysBMF2EmfLZ5/pBbNYsDY6lX+AtlP9gAYdU5rKgU6los7+Z
         4KSw==
X-Forwarded-Encrypted: i=1; AJvYcCVFNDgUTbcixBE3uSxMkwzegCgzZSekiKjKQbts2NsWJS+rAJ+YQy0zsS1iukhP4M9LYz+nsDs/xeA=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywh0D6CoQ0ci5140eNfZlsCfFE4NckZU0WpcnOJmxpY/oKlvPn0
	EQFUdVGjXQSe/1uXEVDpu0V8rrbV1PQdqvhpiwtpRmi96GIA2l/kvd4Xv5M+j1LUlEAwE9GZZa+
	nRb9kVmv+Jt9I8Uu0GTbeh94UNPUjobmaqXKbv51drTNJjUUxEY2UZrFT/0qRaIV00Eb5
X-Gm-Gg: ASbGnctiENAh0j736LKfNUUlLDiIQ4ZW40HmgjweFhDuVmC69W2rjN/lgyUQJoZ2OIp
	ddF3Lbt6pMKJrWC7vtSHKnBrcuLbfEKiB7Am4Vj9t7lO5G+/w32r+uU/ZC2qnrPthq1m1SxSDCJ
	vo7o7AREf//V0Jrsz5HnJzPFiMNlTL8Aj7/Rx7vRXGESPZ+0H6hxVz2j2BB3CiVisc1vReyA0CT
	WwSuPW5q8Yho5ATy07Egintizq67XcT0vxSaktenByn8A64TMUdhZ7QCc6noO9IKCBluZcFNFMG
	1jwdMIjvOpj6vjwLUJnce3D9raccQwAghj8cC0xvTVaTdcEEuq5YHL55BS6oB43N3lzFQTrvzHL
	McHCpaAn9RcWQKlk=
X-Received: by 2002:a05:6a00:238c:b0:76b:f0ac:e798 with SMTP id d2e1a72fcca58-76e80ec16cbmr2675706b3a.7.1755597168022;
        Tue, 19 Aug 2025 02:52:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENz0VJ98WADN+joIk0/P7w0o0p+4hmpEs1o6oCjBWcA7BvrTOLvz8FOh4tQnOd04eMjoXMVQ==
X-Received: by 2002:a05:6a00:238c:b0:76b:f0ac:e798 with SMTP id d2e1a72fcca58-76e80ec16cbmr2675678b3a.7.1755597167592;
        Tue, 19 Aug 2025 02:52:47 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d4f7cf7sm1998291b3a.69.2025.08.19.02.52.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 02:52:47 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 02:52:06 -0700
Subject: [PATCH 2/4] dt-bindings: PCI: qcom: Document the Glymur PCIe
 Controller
MIME-Version: 1.0
Message-Id: <20250819-glymur_pcie5-v1-2-2ea09f83cbb0@oss.qualcomm.com>
References: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
In-Reply-To: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755597163; l=1172;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=jt6UG6eiIFzDb1oeF0pFhVGf3jfLG0hsOnnZ5HuEIJI=;
 b=aLluycJkcVAxmTz5cJvmmczoB2nQCBmt5en2PL/z+GQMXGS1yuhRxxt+knyE5tfFmYvmM1uZ3
 3TxgHk0HhLTAUMfkAk+qLqJLStjDeG3lHUrH6iLe1j1Pj7Ojlp56vIp
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-GUID: s3Hcbewel4NlB3TXiW5fBasOV6uuHAjH
X-Proofpoint-ORIG-GUID: s3Hcbewel4NlB3TXiW5fBasOV6uuHAjH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAzMyBTYWx0ZWRfXzQ04szZvKMAH
 yGj4eKvA4AAzEfdJPlyeDUikuP2VRG8FQQ/klRYpaHv2r29yorKDQrl/MpOLgodzPHrZUW37jvc
 nFu8MMhh8NDB2jvM8hWCZjdXhiypzKyFUKAlzexqvs4N6nHQ9M6OBrgaZEAf7ZIRMsxzTUUApvM
 FG23QJcA0atyGHC1qc844UOlrbd/sP3HAtZb2ThzVdiDal1VRImtd6cJAyjf0RaOGMyWf3KYn13
 xPyXwDhnXZCINGigMH5y4SCsUHveeX5IIQnFGg4uvlsZD1ei59Rw53oaZRjS2twOGPydhtJAxQG
 Vc4COu7806hwtH3wyr3jiP0JqF9c09DSRZ5VUG9FU2UkUFVhzQVWYT1/O3adcg6UQn1pMErAW6h
 83K5AcRL
X-Authority-Analysis: v=2.4 cv=MJtgmNZl c=1 sm=1 tr=0 ts=68a44970 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=WgZgizuZlwTqGGW0kXsA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_025249_361683_A4E11403 
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
