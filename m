Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C63ACD8C92
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 08:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y5ZohJYseNpHrLIrsME4+RFNl2T1jLZ4Yli0+xfFSKE=; b=1qNPjhj1WLX2CU
	w8YKys+KwLA/h2AZWrOJRdDY2NfnYGpxRbgEo66L8Vq5eooOTjJlro8zOqdIogl8FfQizZbXlRYKf
	eJJtfWl4DVHIUArKOCRebiyyU5LwaExQQ3sAGG/GcmtGSJtn61O2+ZfXJSHB/YhgUwt4dgmB3TWUf
	H5YI07ZYEB+Vvg5G6wrjixXZcle2XPD/mqqARA4R1ULcCvhQUoRmUtssVfu+kOnLkw6Dd1dwq9FPs
	2Xnx8cO2wtXVDrLLVdVJYD6uE7HLzays6rvrJ7sBxQxp+S75dYqSSwr9HA3FR++2g1UVGM0rDeRKW
	p/CJJFcMmP+EDfxV3RJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWVev-000000036xq-0iq8;
	Mon, 08 Jun 2026 08:48:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWVes-000000036xC-2z8Z
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 08:48:35 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6586OtIR2384511
	for <linux-phy@lists.infradead.org>; Mon, 8 Jun 2026 08:48:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jxRVdQ5578eayqXtMEmKyb3yUdHj+2MNMKPNvNzYGdA=; b=UzFUuDSHOKVTAHEX
	C3MQLfRoKXwN7wPbIUalvwzdpcV7Qo0tw3uzdOCRwgkUR/LCZMn1kWatXYEm9IhT
	4+0sxzeEhhrCRasemxBli/kPa5KnC6IjXByVMsVoAaKMe/Psyi0jUMXuCM6frzvE
	C598hFKYqkeytwU7cySJegBfVXziE8x8SUf90Xe074Vw7wH5UdsJnhNbY3ac76bN
	Gu4pf75slYDWpGPrnkQ1WuvzP4h4RAjPO23mcYCJrvQWw7u21zrxGFDWVldfc1Dz
	/yQB+DGqF6OisBAlUZtmbb8CwcKmpJNKPFTDGg6QduAHx2VgpFk8yR4uVSIO4s4A
	RA7Kcg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4embs1esp0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 08:48:34 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-36bb6c41341so4717737a91.3
        for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 01:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780908513; x=1781513313; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jxRVdQ5578eayqXtMEmKyb3yUdHj+2MNMKPNvNzYGdA=;
        b=XzZn5P1C83p6dx5SopYjQ0el/NGA4CO+G+tQ8NfE390nglJW0UcLuncHIcHG95R6AE
         ALm4D/fg9Ur9GSjdhM+LSGTXYr/3Vc4kMgrTqa3wqmYdbmWDT+roMth3sagrvgDqgQXh
         im+3CxpY+sNOEYp1rLCp0Uop9pfHHibQPbBQ8M+CNXCfMbVya4LFkcJGcRwtdtw4IBFd
         WcYy5QvCtml5+qdK1v1oyRN3bgXtJTxJLXT0EiYpUrX7rUh7xrPhNnEZfAR+emffw9gv
         hUJTo2OZcELKuio5QWhm79Mvq/dvpfhWkoEAnGtgnoU0hvQTKHJklgBJxx9T8ShFlrm2
         Tu0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780908513; x=1781513313;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jxRVdQ5578eayqXtMEmKyb3yUdHj+2MNMKPNvNzYGdA=;
        b=nhhxi0/xwyKF0/L/kLGzgaN3rosAVLOvJPPWutOF6Bs96gUcQAnTNWRqvQKqjTDr08
         PoKlzy66DzAaUeYuZfiMOF4J3MEBxZUQ/fe8RP2lqOSQZH6iyC0uJo/8SaZxXw80RHXU
         W45cT2Be1UKf+OR9ZQbheLclIb1jNsBXwKtozJzFQjYW41tptPmhGKneOuB2ZyVYkho4
         Qb+QAK0LMg6NsrLaatr+wGjSbBvf+DbuETht5lVySPbw/iVIqJrjZJyxLxOh2THEw26+
         r3ZVMZ5LU7oEdPV3FCElZpJ3nLD8Nl6G034ZYvlwYJ1XKVdGI7kWZw1QDcZsAmoqrM0k
         MbxQ==
X-Forwarded-Encrypted: i=1; AFNElJ/mwaOztY1tUloJ79lU/CloQjGr20fssaQT2kecSuFt/ZytSeztha2XLXJdLLIMhiUJ0SC59v8ojGw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyagC1vgy5NanGwvxDPxyblMOtxZ7ynfAtb6EL64zYT0FvuTcH9
	ywcYQM7LKWUJWjFDkRkVhHwnz8m3dnPzKjrNATbomPjqDwlotveKp1JVLe0PG2UBQXkGoNHt5vM
	Rr4cK5slTPR6ndx2i6q9wGNVsp8O1XTzwucVSgXk+ZBpSACPn3iB1tYjvftvYOVCB2I0O
X-Gm-Gg: Acq92OHqNin77lzpx+nQd3I4OyAlGtXx2p6IfYYmjhZ+bdGveXbD5gFnnz3/67NGzRI
	bvsb7vrOUgqAKno1V5RXu9v9VRpoFJ4R3fovPI3uDQQpdTY+g2CCPESGipmr7mhQipYBtU/qm4e
	j6SozoLkreLs0qjGzL9qZKsOz8MnqKjPHbE1XRemmnYLxOPyupZNGbn4A3qiC5airOpuN00sR8c
	WqAvG/lcly0xktSPIepv7nRu0CQXm3jQ+a09I3KmukXKpO5h7BVPUKUQkR3CaOQHSYD6rLykVwH
	EiMPtlgX2IPxBCaElbeksFnPdcWt4zbLMX4yZ7ghVYkPvcn/8Lf0N8zVQwwY9KJaLRE5PG+Vd+k
	zMbZ3QELzXLSHlCI8KzDwPb6Ux8ivUzeUIjq/CqoKIDTKGFx9Xg76VfwSMjYc6aLyT1Y=
X-Received: by 2002:a17:90b:394e:b0:36a:aeaf:ab2a with SMTP id 98e67ed59e1d1-370f0d4c33emr17913268a91.19.1780908513514;
        Mon, 08 Jun 2026 01:48:33 -0700 (PDT)
X-Received: by 2002:a17:90b:394e:b0:36a:aeaf:ab2a with SMTP id 98e67ed59e1d1-370f0d4c33emr17913246a91.19.1780908513113;
        Mon, 08 Jun 2026 01:48:33 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f712de91asm15070198a91.16.2026.06.08.01.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 01:48:32 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 08 Jun 2026 14:18:14 +0530
Subject: [PATCH v3 2/3] dt-bindings: PCI: qcom,pcie-sm8550: Add Eliza
 compatible
MIME-Version: 1.0
Message-Id: <20260608-eliza-v3-2-9bdeb7434b28@oss.qualcomm.com>
References: <20260608-eliza-v3-0-9bdeb7434b28@oss.qualcomm.com>
In-Reply-To: <20260608-eliza-v3-0-9bdeb7434b28@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
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
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780908496; l=2136;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=yBHjoToyEmvpw9ZOHDr7MPJDwbB2Fu203G+gPC/yC/U=;
 b=ja/5LGBZqLE+1Wu1sWlNlGqoDr6Lswt20oAcZyryoiw0HvM5vhjXHVza1wvnRC82kNBi3B9tV
 2OVNAra8hVGBs8SJerwHkz3+2x1CyINSKLNh7WzLfrR18UDw5xxuDYQ
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDA4MSBTYWx0ZWRfX94VMyIkoAp/y
 a1sFKaFiOcqWDEJNXvLzJo2+h5TwhKqS4pX1fJR4EP+oyHyfBXzq9JDbYrxSEOP+SDIRhT9YJVt
 BI4WGhfTvf2CnfeXbxD3X+CVHeadhP/IzqauScZd4//eutawLk64KnL/N3jQUJ3lUeHnu/CZWzL
 P+2XpAH29320oQAzXFq7AvnLxnZRTsmMzjfYQ8qaT4cmnt8rwK9g8DtRKWCGLXyurkbysvdYb26
 /NcaSbGbHg2BwOzO3DtluthGMawXzyEdmCgrJvHi7l1chz7D30eMhnMiMzBMZWUN4cYiNpPtqDs
 43SQZKaT4WQhl+sYlEJfjamdDyrFpaiWXyjdOS8b3x4vBYwJlDxfA5J6907cOmw8fWr5tIO8vZg
 mBWHRGlSAUUawLWETNT9s2XmAAanO7A5l99MNme/l/TkAHynzctI7QSkG3jswPvYQ9leH3nbo2d
 6fC4qTitjjnPlG5ioNQ==
X-Authority-Analysis: v=2.4 cv=CeY4Irrl c=1 sm=1 tr=0 ts=6a2681e2 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=FC_8z62UfPBbNpSbB3cA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: e1vqDtf344Cfvw7cXQBTvf4SLfMgbMFx
X-Proofpoint-GUID: e1vqDtf344Cfvw7cXQBTvf4SLfMgbMFx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_02,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606080081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_014834_766298_32FA0D77 
X-CRM114-Status: UNSURE (   9.45  )
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

PCIe controller present in Eliza SoC is backwards compatible with the
controller present in SM8550 SoC. Hence, add the compatible with SM8550
fallback.

Eliza requires 6 reg entries, 8 clocks and 9 interrupts, so add the
corresponding allOf constraints.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 .../devicetree/bindings/pci/qcom,pcie-sm8550.yaml  | 50 ++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
index 3a94a9c1bb15..fb706b1397a3 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
@@ -20,6 +20,7 @@ properties:
       - const: qcom,pcie-sm8550
       - items:
           - enum:
+              - qcom,eliza-pcie
               - qcom,kaanapali-pcie
               - qcom,sar2130p-pcie
               - qcom,pcie-sm8650
@@ -91,6 +92,55 @@ required:
 
 allOf:
   - $ref: qcom,pcie-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,eliza-pcie
+    then:
+      properties:
+        reg:
+          minItems: 6
+        reg-names:
+          minItems: 6
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,eliza-pcie
+    then:
+      properties:
+        clocks:
+          minItems: 8
+          maxItems: 8
+        clock-names:
+          minItems: 8
+          maxItems: 8
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,eliza-pcie
+    then:
+      properties:
+        interrupts:
+          minItems: 9
+        interrupt-names:
+          minItems: 9
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,eliza-pcie
+    then:
+      properties:
+        resets:
+          minItems: 2
+        reset-names:
+          minItems: 2
 
 unevaluatedProperties: false
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
