Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39C58CD98CE
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 07:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kmIlkdLi/Is9v1Z7OEbjWxWoW8WDhNBKUz/CQCDtWXo=; b=HEjff76wsXIQW6
	V58F5FVlQUn9D+LkfJUPbMsW+LI/LxyTSv44DsZyCp9bMLkQopiuHqOWBQGAB0K0zfNsT7MW0cX80
	trOZfZH8CF/KK0hcG0cJPWV1jtQrMmf+FB0s+QxvZAv0jm/wwutgxw+ZbRkbaXXoWprcTs2gFEMzT
	5qGOACq9OKNbqMO9U5gg8OnnqqeHn9xzd5RyVMH475NmTNnwjAI954vdMSYe4dw8OSBjbTHqtid5+
	ZxyTgQcUjx7Ib2mb0HSNQbsYqyKjrtJdd4DmJaEZWbF4ZKRjaEDkC7JofzHplC/JWZCInM1JBoY01
	li8XmO9ycyg+2pLdFbPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwfg-0000000AV6S-3qoI;
	Fri, 12 Jun 2026 07:51:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwff-0000000AV5Y-0Xcf
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 07:51:20 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65C39oSx2411698
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:51:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rnj83nPUbR07NzFuXsiThyrp+KHvAMSxaw41t7iA8jI=; b=REVkMqaQ10yK2k8B
	PJ8XrvcdDzzqrYJmWstTQ4rRZ4AXrbD+lv4CIkQgBLoWu7wMqult7ZL6GTKUIp4N
	ueTfDQ4DEoDIfe9mxfPgqiYHjm6woI3pVkVux2qLUb0EdCQ0f5doIdIIDBH15E2K
	B2Xg3UUyzxYvQe/mCMJugJUVbM2udGW+r9mfysl7IEQEBOV8ToTRbK2dEFiKJ9aB
	YwlLhbrize4CGens8eKc8Y70op5GHyOyEoAd1yl7DTFQHtl5MJvXQ2ova/nsoQxC
	pCyyArPL8foqM+dgKXGpBecCyCo+RYU7RzNgGfcnx4fqubI5qQEkUT4B3jKPb0YC
	v90beg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er165an0e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 07:51:18 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8422ca754d8so637351b3a.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 00:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781250678; x=1781855478; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rnj83nPUbR07NzFuXsiThyrp+KHvAMSxaw41t7iA8jI=;
        b=CXlb7XnvZpMsMc1QELEVml23jDtcp9kYjG2TZMlkFy37qWh4dtTTRZJ9We1cV1eJhZ
         oh/9qWrJ2JnFjrrn0mzlvhqEpZyYKDD30utHSb6hILB4uRlXr9w00nHmu3PNv1z6lFW7
         7us9uOv4XiKU1Q1/UQbQEfUkKkHOSI5Ru0jPtp69e2WtKxYPE6WpDjUUnQqHtrZAPaTn
         j2nT3A1QjFSD5ZKcs4bqwj5OaBSWDTCGCr4kF/L/uB9RDHqkiZxd5xrRWdQGA2J8c9KP
         IS9a+OGkv7SZb1s8hT3uud73VxoFRQZAj/JqyDdaF83ZVrBuBOIitNOySAN/EiAqX+40
         AUoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781250678; x=1781855478;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rnj83nPUbR07NzFuXsiThyrp+KHvAMSxaw41t7iA8jI=;
        b=VoUhcuTpgGV8+tFuZM6QYapWOCiIwtOUGolJcMbDIUcFWIIBqgu+2i0Q5KSb792lVn
         yAPlZX0ijNd3M9LjOFUX2mmyomN7ZESLOpUJ/ykyNn6Y58XrX/N42NKvO9aKRBQt46lx
         78ekJbGP0MceVq4vAy3tEdqxM5CgGUo8tXkqcJ441PTYRVzRjII4e4mp2QgjVWv0SV/N
         MnJVwNkhyfMKHttr0BCPCe0ebbeFV54LuuCR2IPAAfI43huGDXiqwuZSlKQjNE5ilHe5
         WfFIknMm1qI1dfo/EiMY5yNA5QkkctjVimypt1gTS8OoGA18HYrIRVH6DNmt6JzcxMeX
         mk8w==
X-Forwarded-Encrypted: i=1; AFNElJ/yoZQIff+09w/3SNQwDkzbvxcILIqlUadMVtzZo/DdtKL9/SPACCOp0xbe1XpUMGMavwQjg4PyVcU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzKvwgNUd5MOCjXr6mwyHGkk0DATwXWkSHVGxw4ifteZ1YYZvNX
	Df3aCtBco3zHqsmvzc4SAj0MPjj8b48Fm4BFjXYsDKy6J22RM+R1nl3rOdEureop1So6mluOToJ
	rt1s/MdjEM9wRTwrm4dBHlr13kuGGP69kxS2RePG+hliw1gyMtrYSv67PVEvCQiAbhf69
X-Gm-Gg: Acq92OF4ct6UAsM2lsc9iTeXA2KVKqw38tlZYwTuvMA8QrPJIxPrCfjLk4s0aZirTEc
	Mx6FXzjcPJkRO2nrBaJfINIXTohZkipNwd+lLmm6Zo7JSxEgwOdwua40zWUpimpntZspnuEXOyi
	CtWaCrwgIOl+rT98kEM2Vwn3ssrwU8oqWhZO3p2mflfY+9LK1MkoOgUmZdvEDjhogX7CIApCtxZ
	2EmM4koH3ZaMZ5gNzjSGU8mJJsGFuLL3lZSXjnd00VwSfFYTmrns1wUNKZsffa6fkPWeDf+WQp4
	dLcdUpD8sjS0yctCBtZGF0k5OAvx1dHjc6o9AtKEI9tRO6V0FvkUWPgFO5ikud8ZE5iaxjXhJ+k
	qNdC9f3j8cenJn6Nt5KxADNkdA7TF+kY/Rj/x7tZTXhf71wYvFYHsTq1yGdwXdBKGI92M8spsvZ
	kusUJN7bwQoaNspATapiS8pHi1SoVBR+HlDmq+
X-Received: by 2002:a05:6a21:6d93:b0:3a0:b781:4c80 with SMTP id adf61e73a8af0-3b783b3e708mr2418852637.4.1781250677694;
        Fri, 12 Jun 2026 00:51:17 -0700 (PDT)
X-Received: by 2002:a05:6a21:6d93:b0:3a0:b781:4c80 with SMTP id adf61e73a8af0-3b783b3e708mr2418819637.4.1781250677265;
        Fri, 12 Jun 2026 00:51:17 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c8661b5ab99sm1307544a12.6.2026.06.12.00.51.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 00:51:16 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Google-Original-From: Kathiravan Thirumoorthy <kathirav@qti.qualcomm.com>
Date: Fri, 12 Jun 2026 13:21:01 +0530
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: document
 IPQ9650 QMP PCIe PHYs
MIME-Version: 1.0
Message-Id: <20260612-ipq9650_pcie_phy-v2-1-b938cc2fc267@qti.qualcomm.com>
References: <20260612-ipq9650_pcie_phy-v2-0-b938cc2fc267@qti.qualcomm.com>
In-Reply-To: <20260612-ipq9650_pcie_phy-v2-0-b938cc2fc267@qti.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDA2OSBTYWx0ZWRfX4dnPf8SgDEm5
 lfOdu9EAftuPi1RrBaioTi2JEdT8/6VNb2JYx/MVpkBW5SrODSoSpT6a6502486yFGhoeSSj4rk
 bFa9h+jb6PRfGYxn/6MncMCHLCRDkWcqe+FFbOEK2GRohbAGGMZwg7rJiYY4rufNKM+PuQ7Qold
 vRFC05K1J7wjCsQ2aI3Bo4n6kK+n7qHVKC3730bgjQ/ZhmboTANK8wzpYnxuaIz0U7zanlSAPMC
 HAZ47M7Z4bwRwugioairhEbUQPYAbmpqcWIXNgfUiCEtSJ93xUKPrQMttXP14vMeI5fTNMTb0TI
 n1PoZQwXK3/n4HfTOei9WGQimsKPSylOQm9uol22j8zch7t0thpqTxxj96WPnwq74kCWSgGXKAa
 Bcaf2EX54cXeZkOkkOKYI9Cupb3x+mRfTM+TDyYoMqT9oobNjQm56YbwKdxefALPKUKTl+LkCBB
 DqjvxkPBVDIN1Ubu+Qw==
X-Authority-Analysis: v=2.4 cv=LNpWhpW9 c=1 sm=1 tr=0 ts=6a2bba76 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=pO3CVo40WvI9-LPkYfMA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: tmg_ov8qDmb1bkJrFVmL0Ce2gM3jr6sp
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDA2OSBTYWx0ZWRfX1G9yu6+5KrSc
 109zwT1GeKXBkLyknWQwW2vic4osYh2h5MH3pPS40c2yYpXG5qFAu3JQkLtjH9BwGuvQca789EW
 oDO6KIQ4KzgoeA2EAuvZfZ8GT/nTNUE=
X-Proofpoint-GUID: tmg_ov8qDmb1bkJrFVmL0Ce2gM3jr6sp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_01,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606120069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_005119_177221_E7C42E34 
X-CRM114-Status: UNSURE (   9.91  )
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

From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>

Document the single-lane and dual-lane QMP PCIe PHYs found on the
IPQ9650 SoC.

Unlike the PHYs in the other supported IPQ SoCs, the IPQ9650 PHYs require
the on-chip refgen supply to power up. Add the refgen-supply property
and require it only for the IPQ9650 compatibles.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 .../bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml       | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index f60804687412..048b2e3ff0ef 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -22,6 +22,8 @@ properties:
           - qcom,ipq8074-qmp-pcie-phy
           - qcom,ipq9574-qmp-gen3x1-pcie-phy
           - qcom,ipq9574-qmp-gen3x2-pcie-phy
+          - qcom,ipq9650-qmp-gen3x1-pcie-phy
+          - qcom,ipq9650-qmp-gen3x2-pcie-phy
       - items:
           - enum:
               - qcom,ipq5424-qmp-gen3x1-pcie-phy
@@ -61,6 +63,8 @@ properties:
   "#phy-cells":
     const: 0
 
+  refgen-supply: true
+
 required:
   - compatible
   - reg
@@ -72,6 +76,21 @@ required:
   - clock-output-names
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq9650-qmp-gen3x1-pcie-phy
+              - qcom,ipq9650-qmp-gen3x2-pcie-phy
+    then:
+      required:
+        - refgen-supply
+    else:
+      properties:
+        refgen-supply: false
+
 additionalProperties: false
 
 examples:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
