Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78FE060A2612
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 09:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=B2vFFSsA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=kfuFMLg3;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=fdSEH6fC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AXo/0DsozRV2UMtgkWXgNRxavmhUGPYnvK7PRT8ko9g=; b=B2vFFSsAWmZiuGSpYepMA5KOMq
	g/KsMBqajj7J3pXXppRro02ta9dEeVjI8BMt9xVnOTjSQVOdk6akVWDYeLl/c+nYXEELukZbp17iX
	D+YWKFrGw+vKJSu9GwZM5iiQoml7wjQKRiiwoCX7K9IMe9mX0Fp3ccpHLjlUtUbW7KGOCIfzz5C1L
	sYQRTszXXDmRQJTTsyxzJxZr+9w+83L36TsE9HN7q8BNLpmWEw9/DuXqgjpgHBW7vvVW/ihe8iFDB
	4Ier/mgE3it1bVleWpLwsYooWNUp6oxOObQnW69POhXR+GsEgPNcrugfmyXrMe8JV54nXmzSqy6FU
	Wq2nHHUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHCz-000000026Gc-0uvf;
	Mon, 26 Oct 2026 09:41:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHCw-000000026Fa-2xVn
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 09:41:36 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69Q9aZct2560675
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 09:41:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=niHnPNS4j7b
	8me3YUuaMCbVbzdtn5rF7l+LNOV51YUI=; b=kfuFMLg3s1QzdI7oJ66bRfABjSX
	yzkTsgVEfiYxHkN/lOXXX/B0mWeqvMrJ0+6g5sMVgZGv8SEBDFhxAzldvyhskXJh
	BvLhm1DDQQ5uZkKrYZMvVaxy3JkwxePsCo1r61QD7BpC6dd4HIDKbk+LoKCZLRO7
	/hUTD+/iMbOVNXYDzh+HspjIBvUBoKP/Rsj+1q6BM7Dz/WQ3+E2nvQpVg2qPte1t
	n3awQOMWZ8fqxxrjZI0mGuVxD0jZGZ2QuunCOPBlNEW7lUFECQjjl10ZqMhIIi6c
	yiNdEe0eJ27tQHdqLVMEQbXtsbdykIJKdnNZgo3K3y74js0KbJJIXx1dfcA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hj4cp80m3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 09:41:33 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3adf71ee6a5so2601153a91.2
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 02:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793007693; x=1793612493; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=niHnPNS4j7b8me3YUuaMCbVbzdtn5rF7l+LNOV51YUI=;
        b=fdSEH6fC2O23o8Gy1tYlqUTPCLSfz1pKtesjKNIePnX1ZlW87R9zVApPW1PN6uqAxP
         56Q9bqHRBLuhljs7C/P6HptXVSf4ezRXNdnpZz5FQx++/liPpn5BM5jwShX12Q2Jon1c
         AiN8KnHuQSdNb5kBIg99pulNT8VVc4sWMl8rs+Nzy5QtuO7t2MXdI7nxw+vEHG8gvJBe
         jaPbSpF3V1Pt6gA1aBaxaIiSQ2fCCJR6790DyD53nZCMKIW/rHRvB7Whx55mUajY/9CE
         cgP3cvBbWhS5eh/dr6vl5YxBW3FWfKg6/HuEAZJtLq44F3DoJd+CXOwy3pNfjJ2B/mUN
         qrGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793007693; x=1793612493;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=niHnPNS4j7b8me3YUuaMCbVbzdtn5rF7l+LNOV51YUI=;
        b=tpIVuiUt7JAAtKBssgcv4o8h2AVj1lur1THtGKaCtDJMId/ObqTKeB1UPoRHMUS2V8
         LuK/GxYb2Jx/H6WqdF/rntsVZXiXSM0iZ9MJdUjJdHMmsmCI/mc5z0sCPF3ZmYtEH6pD
         B3sfXqaDen8fHU3ID6b6YQwhRtyp62YEry1qv8fhLWGoCkmSTWnVZA/F4HhuriQocwvm
         ea7jzr1ANjdZ0jVQG+vMGEA0oHvG31QOGFlG6Qh6LIpG4grlxTRY3Aqy9ufSc25xVHr6
         FUEtiKwz5PnRGDkrdv8URT2IyJ0kuOsEBwUZVIHjxC8XPO7YTJA2WgDHQYxtvaao7niH
         KJ7A==
X-Forwarded-Encrypted: i=1; AKwUvBxu1OMVwdCFoRxQmRNzEIZhqQkiBUVjruZrNRyyzaoG//hyjEJhGsFQ3jkLSDkW/fVwzKHRY2cM+b4=@lists.infradead.org
X-Gm-Message-State: AFq9FYICgxsoDLrDe/+8gYKySSI2295mfpaCNhj+5zTHK0FrvjuhNlFZ
	9kJTA4SN7vIPP50DXOGmjmPW6wDhvZOIdaPQcIYoloeXIpHLK2QX0xfRBeXueGfpjNTrUNQk0aa
	e2VeG2y6uQkvVmF2vzWJsq1wAs1U2EI59bZj4b+iv9Ioh0Ij4Pd4Jkg/RfypImHsOLbs/
X-Gm-Gg: AYBFou1GcnN3erpYKl3DFFj5sxaM1HKQ07gdjq/xR5WzLk1W0D3c6Je7oTGIK83dq/d
	hW6mdxBsQ7WBh73arHCw4XaTDVuf/gzjLdG9rqgQXlVlqmFeSLTI3zR+ht4MylcsNPH51bUaUKj
	jQ9FM1wazjp/trGMbq6vBVuP2aov5OAb30L5wG8DiTiw/Lelqb47JM/NVjwkBarqXe/ibjiGxC3
	MtVbwUUSw/yksrimT/A6TlHsRifhdSjkEX/umuaUIvkNucv6RfAopepoe95a/R/cyf7VAQwxZ+/
	rq4U1hh1XFeKrtvAHUPOIb0epB9mZL2H785mFyybGVTZPOHRp1KL1R+UygESZtlkk1hn/oWzUWT
	l0MZir3ssdm1Q3PtR3CWCkaeEpKY=
X-Received: by 2002:a17:90b:274e:b0:3ac:3588:b548 with SMTP id 98e67ed59e1d1-3adead57c9dmr5510113a91.13.1793007692649;
        Mon, 26 Oct 2026 02:41:32 -0700 (PDT)
X-Received: by 2002:a17:90b:274e:b0:3ac:3588:b548 with SMTP id 98e67ed59e1d1-3adead57c9dmr5510084a91.13.1793007692169;
        Mon, 26 Oct 2026 02:41:32 -0700 (PDT)
Received: from hu-vhiren-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3adebfa4102sm7847966a91.12.2026.10.26.02.41.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 02:41:31 -0700 (PDT)
From: Hiren Gohel <hiren.gohel@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Hiren Gohel <hiren.gohel@oss.qualcomm.com>
Subject: [PATCH 1/2] dt-bindings: phy: qcom: Add SA8797P eUSB2 PHY
Date: Mon, 26 Oct 2026 15:11:17 +0530
Message-Id: <20261026094118.3264112-2-hiren.gohel@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261026094118.3264112-1-hiren.gohel@oss.qualcomm.com>
References: <20261026094118.3264112-1-hiren.gohel@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI2MDAzOCBTYWx0ZWRfX9tMaGOGQLf9R
 va4nPrr/kGz60EJZq+Vyk1S03oyz/QiceMnCYhoufvY+dUchuUhp+LdDuDtYE3baMtvDK8Sf9XK
 Z0hDXBRaRrWRDVwqGfXoURMNkWWNFI7MOfYnjvIGjZOOyzrRu17iDh1B1hnTLfodZx78/N48zdT
 fUCp1BiVvV6Qa4G0RIWJ2IcTU84kH1UZpyyjKESui7Yv8RljJKuWvh+D4gaAAQDe5d0t6jFKQkh
 20DacmgwaM81zF/aw1c1oc72iR6DoNr0ZZppR4o5yWkxmAuIyFuYncBB9yOhjedcCtqf1Kpi+4L
 6fL3KvWReiMOrv2p/FQUFJ56MWXWR11ZbJEW5FA/O/dBPvmlvjQOwkuQu7RQVIG6Pz9SxqxfEMW
 DXGpD6m/sIIMLcGtWEB9NepqXFylhu/BECr5qjPW2jy0X6PoUyI6FNNI5oCA5/xCKZVZeaJP3tD
 Fnm5FcGx0IjDRUDNUsw==
X-Proofpoint-GUID: xWo_LYk85ofwHn8kj4wVOb1AzlnEn7OP
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI2MDAzOCBTYWx0ZWRfXzlpddOuf2dGk
 8XmOjYKAbT6JAfoTiXL7WLOf3ad4LpiHgdxvE6ZUWvhdRR6lmr20DgnI/+OpBM6Dh00gYbxc5v7
 18wUO7paAlo6No91Fby56W0VMJJiIr4=
X-Proofpoint-ORIG-GUID: xWo_LYk85ofwHn8kj4wVOb1AzlnEn7OP
X-Authority-Analysis: v=2.4 cv=TboDJhQh c=1 sm=1 tr=0 ts=6adf204d cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=agO9faSf6CXyJqtrtTsA:9 a=rl5im9kqc5Lf4LNbBjHf:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-26_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 spamscore=0 clxscore=1011 adultscore=0 malwarescore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610260038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_024134_872497_8A5DCB40 
X-CRM114-Status: GOOD (  18.19  )
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SA8797p platform abstracts resources such as resets, clocks and
regulators in firmware. The SCMI firmware exposes multiple protocols to
control such resources which are identified by protocol_id.

For this USB phy, 2 SCMI protocols are exposed by the firmware:
* power domain management protocol (protocol_id=0x11)
* performance domain management protocol (protocol_id=0x13)

The power domain has 2 indices: 'core' and 'transfer'.
* core controls the regulators, the clocks and the reset
* transfer only controls the clocks

For example, to power on/off the PHY, we should use the 'core' domain.
To disable data transfer and keeping power enabled, we should use the
'transfer' domain.

Add a new binding for the Synopsys eusb2 High-Speed USB PHY
found in SA8797P.

Note: the performance domain (0x13) exposes opaques values (0xa to 0x11)
for which we don't have any information. Since it is not mandatory
for the PHY to be functional, we have ommited it from the bindings.
We can document it (and make them part of the dt ABI) once we have more
information.

Signed-off-by: Hiren Gohel <hiren.gohel@oss.qualcomm.com>
---
 .../phy/qcom,sa8797p-snps-eusb2-phy.yaml      | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sa8797p-snps-eusb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8797p-snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8797p-snps-eusb2-phy.yaml
new file mode 100644
index 000000000000..0a9f44199490
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,sa8797p-snps-eusb2-phy.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,sa8797p-snps-eusb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SA8797P Synopsys eUSB2 PHY
+
+maintainers:
+  - Hiren Gohel <hiren.gohel@oss.qualcomm.com>
+
+description:
+  The Qualcomm SA8797P platform delegates control of the eUSB2 PHY clocks,
+  reset, and other platform resources to firmware. The SCMI power protocol
+  exposes two power domains for the PHY. The core domain controls the PHY
+  power, reset, and clocks, while the transfer domain controls the clocks used
+  for data transfer. The SCMI performance domain is not required for PHY
+  operation and its opaque performance values are not part of this binding.
+
+properties:
+  compatible:
+    const: qcom,sa8797p-snps-eusb2-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  power-domains:
+    items:
+      - description: Core domain controlling PHY power, reset, and clocks
+      - description: Transfer domain controlling the data-transfer clocks
+
+  power-domain-names:
+    items:
+      - const: core
+      - const: transfer
+
+  phys:
+    maxItems: 1
+    description:
+      Phandle to the eUSB2 to USB 2.0 repeater.
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - power-domains
+  - power-domain-names
+
+additionalProperties: false
+
+examples:
+  - |
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        phy@88e3000 {
+            compatible = "qcom,sa8797p-snps-eusb2-phy";
+            reg = <0x0 0x088e3000 0x0 0x154>;
+            #phy-cells = <0>;
+
+            power-domains = <&scmi12_pd 1>, <&scmi12_pd 0>;
+            power-domain-names = "core", "transfer";
+        };
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
