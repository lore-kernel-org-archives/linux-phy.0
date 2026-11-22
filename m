Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91105606A32A
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 02:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3NqM2YQR;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=BT39TlH3;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=as1bQRMN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FJB+Sn6rV+vt3yfCBWThfO2DHZ5igfFswdjTnOpnLXU=; b=3NqM2YQRw6ZWYc85sqGfG5+KHX
	TmkCLlvnDdZjYCkJTQ+SeCQX4jH3hZC0gtN3IiJ3KUxWmK3Zu8YRCV85sJG7ch+D4BQ1xG8Wn3BeU
	mq1RV8+vuWGGeNEz7v6MZmHVJwkk44gUxGngwHze5tgxgEKhXcH4+jq6n9gWKWwR/KvknFThirB89
	HEu2vl7swYU4tON80z3B1nTJzpKXnEmtpkq6HnukxSpAdvMoUZyuIlk5npuFL8Ncy5LfJCpyk3lAz
	xsA2f3/m0ju6YUZc+Ig/CXx4tFHTEFo1dsb/qdRJ1T22DP/x6McE6I/oVJdXs1MvpaxoPZk7pKsx3
	cuudqrcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxlc-00000000hCB-1NZD;
	Sun, 22 Nov 2026 02:57:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxla-00000000hBe-0UYV
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 02:57:23 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AM07v5L1941296
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:57:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u4zLVHnTkobPJ41e1mxux5zeHM9rWie5mC2ac7V2I6I=; b=BT39TlH3EBk/ld49
	JlixeU1hA0cxiL2kEiY6fmbgKiIyJJB1u8jLSkwOTiFoOVAVkipG31qadW6sB6qv
	vj5esXrGlHynubmJj/UNOn1dOX856oSo4fPOp2uUZd2jpPknF/2vKoFF8kYBtrd7
	JTapXEd+CIhdUzrfb7DBUFnpfyfBYzRwgLwmwAEtExxpVu3s33wqAvVH5Ky+fbym
	gkxsizMBeAgx+CKUjSzORpDDuPueOF7aJQnUkAHDHwAq11zZFZX3V26CrMF5a3m/
	AU7DJ1jlD16OTURtTS0czTaEbdz+TkPT/UJkp5PkweAQF69ir5jqstzTjaBvPUYq
	C2nS5g==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j33h32hy4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 22 Nov 2026 02:57:21 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-38355b03cb8so2204199eec.0
        for <linux-phy@lists.infradead.org>; Sat, 21 Nov 2026 18:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795316241; x=1795921041; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=u4zLVHnTkobPJ41e1mxux5zeHM9rWie5mC2ac7V2I6I=;
        b=as1bQRMNzDPl++ftU7OuMPKtoZrXcYf2nzVtsITe++U/+OtKpuPJzWsZorW5Uk8NGW
         KoyFaeZGs/x3PEPlsxlTqxX+EEPfgvdzjBjKRtoo3XF035ABxbpTnMAf2Is4vB6RmcZZ
         zUTkPdGrVqYXyMJpp4ODR2rEUzOyxN2Fr4zUWafpoqkeKqc+ijtyS8kyHaKlMHt5QsJd
         YdgMUN3Evls+tb0hfJGI2XggGi1sE+UM4k1m7qBho9oxrByyNZknxpd43O3OuKjcpDKu
         9RKzYjgV36GVAaMdsZai8iwoU99I9C4MFTaQOKtdH74WmBdWjRmaK5dWUtV6jHJ3HCVg
         fhEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795316241; x=1795921041;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=u4zLVHnTkobPJ41e1mxux5zeHM9rWie5mC2ac7V2I6I=;
        b=Gnj2V30ziWItXkuLBWf7V6z6PWeqMQwQrjWQTD9RAeNZ5MqEzBtN/UvOEM5D7I2Ouc
         7VjdMeAN1G/E+N8Fl9N94Z3sZ6SlGzs5o38doARZJfidMrXaPJZxMeK9mdWQSUVdlB/x
         NGKRoYFxgowqZuaAVHsq0d10cNE9qP61gEGP7tF1/+qIhLjPQjYnhg6ZMaii2J0EK1ZN
         bnAbqWl+0L3vAHrpkBJmEcQAF2/bR/9DWhZie5h+7pOXJSp0GuxhrcLyZYhk9iaybnW/
         1EQdIWTj67FP/2YSiIMKkNLutj/XpF1/NlthPKMs2yC2i+/VnMpJHVVDljokXbuX6lrV
         sJkg==
X-Forwarded-Encrypted: i=1; AL+hErHt+f5BiGzqbAs/yNuHat8M7KdItIqM5QQ84GFOAFM494MAC1k4Kg1ua/bLgGb0GVAABAx1OGBLZlU=@lists.infradead.org
X-Gm-Message-State: APuU4Z/TsW2z7NbV3uDdG5v1bLXuwt4j0iw+QaasQzlCHoxHt4Xu+lpN
	1CA8vatJ0wTkcd9xNDHquBju1e0CSEuToPw0q+wt8UvTm/ejCc8yHHHNlw3I5JQBkvTg9QQn4hB
	UfJwfBxK37cn4kp3/SN/aRmJdyOYJVx1Z/nUXO/2HDkwVMYGKEfzGa2O5Ev8DlJg7FQ0u
X-Gm-Gg: AZFdTZdKB/SzCgyEykNpKYhwsP/ucHBUQtH1yD1KnR8HpWLZG3eTmQjXsgLbp/63yYQ
	AtWhVEpIr6gq0qAxXWS/m+n+Bx6Mr6bRwGBxwew7/TDvGGPnno731plu8TyDxOvzCk1HH9dz35z
	KLYxwDoPeJU1zrLoAzW+Xk0jAqBag/MdE0Ka8MCAOfytWJHj/QQQ5qz5hUrPuUhaueOK5PPDFcu
	QHVwm1AwJrbr7NJN+NI0LdF8WNQtovW2A9FgpmWG4XJQlVNilOnggkcdwEwfKrPlk7uCZvAEU1O
	P40jYw/V4TSHUuts4hlu9PhN6pKOLTMwGLIxy9ec6Mpo7YHfuBVsZ0Hxy72/Sv2tVhGefyhMSG9
	xpKItuixMbFxkBkspRe0ByJASWdo3bHHJzEB8zc9gPCzuybNVhflwsl9oBxxbHkxFAVlL+/e8jJ
	uIFQeGS6GT
X-Received: by 2002:a05:693c:8641:20b0:383:50b7:1d78 with SMTP id 5a478bee46e88-38571223ee7mr8559661eec.40.1795316240122;
        Sat, 21 Nov 2026 18:57:20 -0800 (PST)
X-Received: by 2002:a05:693c:8641:20b0:383:50b7:1d78 with SMTP id 5a478bee46e88-38571223ee7mr8559612eec.40.1795316239376;
        Sat, 21 Nov 2026 18:57:19 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386aaae4960sm312044eec.18.2026.11.21.18.57.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2026 18:57:19 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sun, 22 Nov 2026 08:26:20 +0530
Subject: [PATCH 07/11] dt-bindings: PCI: qcom-ep: Add Nord PCIe Endpoint
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261122-nord_ep-v1-7-6d8839ffa9aa@oss.qualcomm.com>
References: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
In-Reply-To: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
        Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Frank Li <Frank.Li@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Niklas Cassel <cassel@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: mhi@lists.linux.dev, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795316184; l=2668;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=JAHLcpWrndJ7vGe/EsN0GzNIf7dKlfRU1FzcikKsx5I=;
 b=kghpNVosYGIELkZVpk17V4n6t4JpVd1dJQKucE28HGajI72vINW5LpLNGFPaZ5JvvIGM+RkW8
 7mmpI8gxDj9CTU/PNuAn3ONGLtnOSFqxRWzq6KRvIPQ+7FGZS/vLPe7
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=EsxHPicA c=1 sm=1 tr=0 ts=6b025a11 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=FC_8z62UfPBbNpSbB3cA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: B6cbvD61_G5xYXdJjnn2isyJMM11czu-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfX9yddirU36o5Y
 P4HqpjJDMR2G3wxEWWXQiou6eyDGLHjpbBxYWtu7qXGZ+aDNvL15JCgD0vu3NYDQbQx7Xxk6P7l
 fpHBFAptzi3sWgVAVKHQHZ6Tb7KbZm7hG7cRn2uNGibqu6bw38d3Qo3QE9OYq94s2EoB+R2aWuI
 75r4I9RNAQyUmWD8fyGW1Lv+CPbWNaYMahcKrPtaqdhihdRAG6NG8YJxOhOW+jkPSBnkjxF0xL+
 dovBlHB9JEaBn8pzu1MeZW7OitlbCw37jWuIQ7BQfuNaWjYuuk04k1eG4L70Yog/HVJmQVg1Q86
 YAsnoeQCtFaqePYDSwCgPCQ/AqIW0tBJDNFXUaA1EfTmgJxmbkaGDtrkdLSj6krgk+JYyWVzrrh
 OhEkTe13O8MUQpR1VGDaF5a7OHCQLFeJ9NC1E5qM8cKCtkC00N2oViK7tnZHKN8dKvLIene9+jg
 gtFpWIWLT4KNZDDwbjA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTIyMDAxMSBTYWx0ZWRfX9dFL2alaN0u8
 +0AHLcxvVtnL7Fvog5tHcPwlSCM3viaOT4wvF+wI/L0UoP3vLIo2YOS+IRWQlUrs+HqejOSTjdQ
 zI+WF+VjCwwq1jUwv5WBRcBJdkJ6Olk=
X-Proofpoint-GUID: B6cbvD61_G5xYXdJjnn2isyJMM11czu-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-21_06,2026-11-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 clxscore=1015
 adultscore=0 spamscore=0 impostorscore=0 phishscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611220011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_185722_186834_9282013F 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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

Add the qcom,nord-pcie-ep compatible for the PCIe Endpoint controller on
the Qualcomm Nord platform.

Like the other DMA-capable controllers, it has three interrupts, requires
an IOMMU and uses the same five clocks as sa8775p. The instance that
supports MSI-X additionally exposes a dedicated MSI-X BAR as an eighth
"msix" register region, so permit Nord to carry seven or eight reg
entries while leaving the other controllers at seven.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 .../devicetree/bindings/pci/qcom,pcie-ep.yaml      | 38 +++++++++++++++++++++-
 1 file changed, 37 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
index bed9a40b186b..9a6a7f6f7f62 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
@@ -13,6 +13,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,nord-pcie-ep
           - qcom,sa8775p-pcie-ep
           - qcom,sar2130p-pcie-ep
           - qcom,sdx55-pcie-ep
@@ -31,6 +32,7 @@ properties:
       - description: Memory region used to map remote RC address space
       - description: BAR memory region
       - description: DMA register space
+      - description: MSI-X BAR memory region
 
   reg-names:
     minItems: 6
@@ -42,6 +44,7 @@ properties:
       - const: addr_space
       - const: mmio
       - const: dma
+      - const: msix
 
   clocks:
     minItems: 5
@@ -185,7 +188,39 @@ allOf:
           minItems: 2
           maxItems: 2
         iommus: false
-    else:
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,nord-pcie-ep
+    then:
+      properties:
+        reg:
+          minItems: 7
+          maxItems: 8
+        reg-names:
+          minItems: 7
+          maxItems: 8
+        interrupts:
+          minItems: 3
+          maxItems: 3
+        interrupt-names:
+          minItems: 3
+          maxItems: 3
+      required:
+        - iommus
+
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,nord-pcie-ep
+                - qcom,sdx55-pcie-ep
+    then:
       properties:
         reg:
           minItems: 7
@@ -263,6 +298,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,nord-pcie-ep
               - qcom,sa8775p-pcie-ep
     then:
       properties:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
