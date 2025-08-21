Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A881FCA0EFC
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 13:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGLF2BUEKANAWs/3Sb8hvx2leCVaHm3M/H3TXKM1ojo=; b=i4uhrsAs4/qNrk
	NUXXO799fhmmrVs44QgalVBVf5DwfDsSaX8NuI7xGye0tG7lzsGeRisHCXa6mtzrZmJ63MkTzWKzK
	WtyeeaWMioyvpkyFEZzLlQgQ9QZlQfIGddKlP1Ob0UM1HduRzAkMJeT5kA7kV/hPBV/lr0JUfIc/Z
	3geUWhAOqoT/aq6NFH9mi4S0QWI+i1SW3yCDhzgAKN3SOySEaEts6GC+e4F18FINqeGbYTCcZqFti
	Hv41ZGaGcuGu84OVst33GkVRzG5X3MAJMhsqH1uBrFVfrqeYkmYNBb/u/rLSIwH5tKhKk74siUA/o
	A39g17EsnIYpYGFx9KkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5C2-0000000H1iI-1bTr;
	Thu, 21 Aug 2025 13:19:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up1qp-0000000GUr8-1EMW
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 09:44:56 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9b7Ib024179
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 09:44:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x/mJfVjavIoqW9T/ceCVgzgHEhxIAMs4Ha+bWe4V2mM=; b=UTZQF6JWyKAbbNAO
	CEckhQ8WUH5jUPHMkOrnvg0Kb7HHZni+BbQNcdgkrXctZMn3aN9iou480xEw9wVc
	frbMySBIRbYIZK+aiMs9RTQn/l16HSwXoyB2dVFIFmxTymj/SDWzlb8HbZYktwMG
	sloO9nJnQIT5ju+mJGEWWY2AuEz81LXyeC14CPF6WWeJIZ8uyPV5E4MG7KYlF/1s
	RI8GfoD9LS2CD+HfsSEaudSs1pCqkfMURPD5/jUVfcjXPRxZ4c3oiyQmR2zfzjdS
	FRt1NMrLPp4ZqxWMMpQrZ5HT6bt45f+p4Av4gSbRBHBM+zVWFLu1vqQxSe1V1XT5
	+WLHtg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52ad00h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 09:44:54 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b4716fc56a9so1423330a12.0
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 02:44:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755769494; x=1756374294;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x/mJfVjavIoqW9T/ceCVgzgHEhxIAMs4Ha+bWe4V2mM=;
        b=OXks2NALaYrSuq08tIHcviIjZ2RXJvyZ4s2BFOTmwBCmPzaG6/08YgrrjP2subeW21
         ZW8r9i4mWTOf6OjUHpBC8KTaobDwqbP06pQrKKsgxX3s1c5iUO323NMYwRBj7k1tJcBd
         6W3G1bin9Q/xrJrq3AZgxH4FlWataVmVoTz54EfhoR9xj2Z6qbhOiQhf61ZFLz/ZZE8+
         SZLOlgaO/QigjQ75VrfknWjRbnzOjkmoFVCbSMYsKVcUuiHBsAIFuFJnjsC8YA1tlLKb
         dyjLjqP+OnNwOVzD2W6ZFEvXMiyr4B7cVG3nL38GON1ITXRXyPPlTU4wsbkDM9+TcKEb
         tkEA==
X-Forwarded-Encrypted: i=1; AJvYcCWhKt3KbsfpaxAmDgKG6aAjavbOolBGXY9vbLGpvznEXdg6ba683/yAgh+sR7ZrT/HwwBFO8Ab3kow=@lists.infradead.org
X-Gm-Message-State: AOJu0YzCiC5t0TOdiJaz0b2uzDrkUttCcAR8kSWz1o+qXZjtrkES7B2z
	IEjEFpBU0mwYoIRqUA2dvzAp6zcBTzSzExfDBS2NLWv+j2YjD3zZDwZ939KbvTFCiLs2u3EviMe
	DrFwxWvu/cWisGVUR1HFWIPqun2x0qEGHXfzerJZnUJba6p9+GQj29k8TWqtZQZatX4vs
X-Gm-Gg: ASbGncsYRkm8RcMHRQ6WiOo+xYr3TuoVKLLp4f9ZkOZ4zUA1iBwjvhvXapEv1Z0MKdf
	lgQBX+AdDTIoXLBlBp8Nh4T6iiz8yGtV9AD0gjPch8s1TQ2w8KhPzw10YRLwwQ0fpRrP1cegiIo
	23bVH8TzQdLJoZKoFOVHApGd11S3cz6cFM6xBK415RrttN4qwvW0PtP26qL1591yEcqDB6U4jSk
	Z/frZ0pmuJZeXBzpfSRL9vj+y3pspvHY/lyoPW25XBdRxeUwxrFYhkgMrRLiB1qg2dM24dvQbwp
	268AkGvxkitU1DAdaKcytvWhYTZFNpI7Yt6y4es9tg1r1xc592mum+McKuWNfmt2rvR6D7ChaV1
	JZfQL5LCnCSL3gRw=
X-Received: by 2002:a17:90b:3d08:b0:321:c2fb:bcca with SMTP id 98e67ed59e1d1-324ed0681cbmr2515838a91.3.1755769493911;
        Thu, 21 Aug 2025 02:44:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGN4QGoSOSkyHCDquqO4K7cRbMNAnFqN11llAdnPwRvafPdrmBPndjXdBnrgoZqS9H+rmNwvg==
X-Received: by 2002:a17:90b:3d08:b0:321:c2fb:bcca with SMTP id 98e67ed59e1d1-324ed0681cbmr2515809a91.3.1755769493384;
        Thu, 21 Aug 2025 02:44:53 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-324f23d853esm1426078a91.6.2025.08.21.02.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 02:44:52 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Thu, 21 Aug 2025 02:44:29 -0700
Subject: [PATCH v2 2/4] dt-bindings: PCI: qcom: Document the Glymur PCIe
 Controller
MIME-Version: 1.0
Message-Id: <20250821-glymur_pcie5-v2-2-cd516784ef20@oss.qualcomm.com>
References: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
In-Reply-To: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755769489; l=1172;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=jt6UG6eiIFzDb1oeF0pFhVGf3jfLG0hsOnnZ5HuEIJI=;
 b=iVAV8bG9k+1C7FYvQNu0ndV0BZQ3x7EFjTeiL0LohmKaBaK6d5AHjlrw1HUjekakwVBfWMLUH
 8CIuZ2ivKYeDQCdzm1zrXjBWXEQgZcZrjChM6VspFo0bMv8qJlyFeMk
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-ORIG-GUID: xmzeYMi4-aafZ0dHDI8a3VBHGUwx7tGn
X-Authority-Analysis: v=2.4 cv=B83gEOtM c=1 sm=1 tr=0 ts=68a6ea96 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=WgZgizuZlwTqGGW0kXsA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: xmzeYMi4-aafZ0dHDI8a3VBHGUwx7tGn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX7ApwUoCC9F6q
 hgT1w/CnSE/ZrvEX6hnQtVJMyzgr3sFF+JmYph3lRBCFnNhah0uz81JG8fqX4dxbrpbANT1PXjc
 xtfo+70JXtH8/2uu+V0sz0u0MWS1F5o/Im91Vgn1zK9qbpPRpbg2oF2y2Gcpqte8YYWfvuCSYBD
 4RbZzUApISoOl2EZuWJtrhWRp7BRMoJzLrWEkdIuvjAL80JzZhYvK0S8CLadZaO93+pghcfEB1P
 A4dZcr6JikS1+T6QxGmGhyNZU6f2LJVoEYis3TfpE8ToKrJgguYi8Wb1Uabl66ra4TIlXA2oJZu
 Gtbvav7NdTuavRxIKj6BZodkjmETmLiEjfMxTzzN3tfJafOeB6nw/xRGvp2iJUFDF8QXDDuXTZC
 9iJELLUUQXC9+u3f/G+46FV9oOtcPw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_024455_342856_9CD244A7 
X-CRM114-Status: GOOD (  11.66  )
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
