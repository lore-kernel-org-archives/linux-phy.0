Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720D560A260E
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qGdY6i4r;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=D5Zhrho4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Ah+doQTc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DQRRUHHD3ukGROLxf5OhFY3rvekODNKmRM6Rj6/V6zQ=; b=qGdY6i4r5V3dS80w0M++JvGqAd
	X/TVdFLL0/cdJZ1VprT3Jld0eZNQIkFSZr3OgfwsypAcUCAlV1w1s9Ct2MexuS1cHwIc+1v1D/AQz
	EgbyOTZ1mgTkFE0DqFX3o7xcjFS0+gE6QX5XGvTvVRFohgB89MglORK25iY0hb6Uh3+nPCx9JYome
	INPUFdduMxQNCE3d9dM0tJvUn/DUAtdWD7wtugdOoxLrZ/Dl90yQVwWgQFY8MMkQ0jzO6wHq3FAfv
	c/y5oXER9mIttahNBO6h1KFKqKsDJnXPkV+vrWBvWnncA6zx6VmdrQ4nUbpD4679GfHCnrxVtT/EW
	bII/WSyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpK9-0000000GBCK-4AsM;
	Mon, 02 Nov 2026 10:31:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpK8-0000000GBBT-0a5c
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:31:33 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29A4fP260600
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 10:31:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EswjIYLr1e96wvciUd6ySjqcZdj8RdoKtvkdKwUdjN0=; b=D5Zhrho4JNtM5SKc
	9C/2uQubF07fQBuHlnHO0Kl1QTSQsW1MTfZI7+pNeC8HqGDgtcbeyxAO8/pYUdoN
	Z59rwc49qm+eRxCMaZpfJo2zgr+ctuFMeN7R8jeJveOEADtkHc8YHIRoXTprVHt8
	QzHeNk6OfJeAj0S643/7ubSgf+6X0qdyxD2br1Tps5e7om/VsEaYQ6OGsvqRK8u/
	/lJWrrejt1RYd77W5vhj+6QYhAzhCXnvQWU7lYQHQHu5Ihqi/MG7HOwp0T90UaGN
	cf4oE67aT+eUini33hyJ3mFKam22Qp22EQ7eQiZ33jUS1z/Lag6BaKxeQhpkYhtp
	A02tVQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpqmvrb2d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 10:31:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93e49a1d3b1so696063085a.2
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 02:31:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793615491; x=1794220291; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EswjIYLr1e96wvciUd6ySjqcZdj8RdoKtvkdKwUdjN0=;
        b=Ah+doQTcNJ6zBIRlzAtPwFVRjojaD+a2wSh+St/f6M53+QqquXcGSD/B08RwPOxtE+
         EQ/KlA2lFnijSL/qgGLVj3fbjWwsp27fBO2vhgvvodoOQf6uTCW75tSiLxOqjxhJ5lZO
         OzS8IiUvcrnxjMafvYxr4drbxqP1wA7orBTnbuUZJL8h4nmjDXmzPudGKcqq6wxpkPcV
         0Kcpp+oHXQa4s3XjqkOyznSwQmsV8Gcpc7+09g4HiM1uv75cMq6rs1KinAbVOC24NyJ5
         VR2WWOmlviTWyjXltgaIf7O5CoyPI3GBAh7uHyWG7E6iR6gjX89QnZrX80V6mtNzXyTi
         LoWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793615491; x=1794220291;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EswjIYLr1e96wvciUd6ySjqcZdj8RdoKtvkdKwUdjN0=;
        b=Evt8fZpYv0nxh/l6ZGz7JvwpulXu14A8WWWlXvaATt4VU0+wS4IKiGUW9jDXGk+pL3
         SO6rfcStug2w1G9kkITgZ8Qlx5HRzqnutjBqUE5NEtyuxzn6qTlvziqPsADQy+ApprQU
         C52kOqYFldrSs0etkWOwaH+9Knam3Fxxf5bgGH0Dv6YYwPXMT8AEpbavh4A2VeeGyB0Q
         oFkFa/1MksufJSQ2UJhvYQ9Y8rTrFKXqXIi8Yo2aogwxshU3gD/8A/NmUmZPrF3Biu/B
         3bM31saQcTYpBhwMNY9w3reziiO4SDqFvuvOZc4LCbWsa3yoz6JsX+yWrzqax5TltxuN
         Spng==
X-Forwarded-Encrypted: i=1; AKwUvBy2urvaHBj30QtOGosJyurDTVPXluY+izoPDWtreCZTp8QRc2kpFfLD+ICX+6cIB8MsIOJvJYuvehY=@lists.infradead.org
X-Gm-Message-State: AFq9FYL2xcMxXnafqUMOSlJMVvkGgVqsZJ6h0B5VAks/2XcyX35XdPxb
	SFksviXGmf4oWffjwQELk9WH+meOMy9Z1M7T+9MnwEIag+iyDuVtgFBY8JNR22vzrSWsIWwrlfe
	ghmPOmkNqsMgAuISh6nwWfEXmehcKavpPJAMJ0BmED6Uyj55aRH4Zza6V/QjF2jVIHp02
X-Gm-Gg: AYBFou2+YhKpYk1gsWYYhxHMa8/c85ZP4YkgtX+nawYtVKb/KwoGgUp82K+PKfvPu1J
	Yu9V2sMTgx6m5YfVUQaiS9PrcHNJGwkg5gS8mDuare2VK+JFnHVjkZSNQn4gq88lUBy78S3fP/9
	zz/dhWzUlSjEEhI12dIwapWGxjxW8KrXlHGDdhA8w5Thrje8C2dmklF/5KD81V/gmI8VmfSgNqN
	ThBXUPlb18ExoMIk1Y39XReBrTIAtONlWe4kDW0uPj90ealuiQHq2JzWTyEz0wTyBWcxDlSgZR/
	dq4pf02g6iE9cOQ0VyEGeHWk0l/9TiSRIzz887jQYrn5C4AgJ+BCHezP3WysruY9FkR0I7DlbCd
	F2sNMCXBRFvo8IS7NEej5FSkOYYAMe4I7OezUpeKy8MiIY/9kt1T9RskRQGRqSdz1NIqnL2EnlK
	U/0g==
X-Received: by 2002:a05:620a:31a2:b0:93f:6f8:9d74 with SMTP id af79cd13be357-9442180b5demr1569726685a.77.1793615490659;
        Mon, 02 Nov 2026 02:31:30 -0800 (PST)
X-Received: by 2002:a05:620a:31a2:b0:93f:6f8:9d74 with SMTP id af79cd13be357-9442180b5demr1569724385a.77.1793615490220;
        Mon, 02 Nov 2026 02:31:30 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4aa7c5063e3sm327847885e9.0.2026.11.02.02.31.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 02:31:29 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 11:31:20 +0100
Subject: [PATCH v17 1/2] dt-bindings: phy: document the serdes PHY on
 sa8255p
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-sa8255p-eth-phy-v17-1-aa138f2912a0@oss.qualcomm.com>
References: <20261102-sa8255p-eth-phy-v17-0-aa138f2912a0@oss.qualcomm.com>
In-Reply-To: <20261102-sa8255p-eth-phy-v17-0-aa138f2912a0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1956;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=BfrbL1Fwh6l+Z6nIdrB6wR8juwiurOHR3kGeK2lY/yQ=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBq6GZ+RHjr12vHBhn0eHZ4GbLtL3zdbnI1zDJio
 LxHYZvQlqCJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCauhmfgAKCRAFnS7L/zaE
 w35uD/9wcl/m4vYFGffyJsazxW9oQxPMi3BENRaVfoIkO3MtigFHDByww4DdmrtZkop1/RTh/bE
 BItYPSlNGtrT4UH9G7C0WVvR6aCzZrGWQOQPyX2+6R76HoOfIGeFvxpnau+JofUy8DtCDtE+XzB
 VfsT5eFTqdD2Xu4SIJFDc5W+Y4TJhP+HGYGrt22fiGFgzQtadUSHqz32Okio4pdo9zRYhduBZ9y
 7tiN84zdDnpoxoFqtB0mUvfA6E4fAPaGjdEO2CTZbOsS+qQ+2+dCSoOChNe5GESRz9Ze2wdW9To
 RUKhHGioM9QIpbv7dQQ2S9Q/Dxh5ha1/4I7h9yzT/7sbugMAYAYqUTD3LD+uFwo/Cjk2btj1cdB
 ufsqWeLCuV8wMB4xc6lU8/Mn2KE1sCYkB7WbciyXW6yV27EG50OVtAPhu1oENZxecqMPDBiQg4H
 hizZTdI0dIekxgD15e/W8FGPja8fkFeHzT1qaMH6n2i/sMDX2wSvaNREa3ZK596Tg5XLjZawTxa
 Jbjhkl0rxvtsPcHs5htcReS7pQtulZXM+6ieogpCDnNZ/NJbVlWbn4d3X4xHiB5enjrLFi2nD7g
 k3WXFd+KvOEBcmmc8MXAEDvgxHraAvcxj3+RS81K+/0AJ7oX8QR1VopSYRYI0E1c487CJ8zg9pL
 ofK0qxPLaPcC8DQ==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=TMDQ2Fla c=1 sm=1 tr=0 ts=6ae86683 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=wENndLYK2PIMvs9AUu4A:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: bDCwGqd6orW9l1cTmD1MpK0pOTHXqF0q
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA0MSBTYWx0ZWRfX7n4jSUToCYM4
 0qWSSnMJQkguGIb0j2kF2Dd0axCnYkbHOr/ItP67FV5q9VrWbD8Igq3ZX6mFt68zjU+o58jWJIH
 gteW7fSulG5m6kKt6F0MeOwtLDXRUt4=
X-Proofpoint-ORIG-GUID: bDCwGqd6orW9l1cTmD1MpK0pOTHXqF0q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA0MSBTYWx0ZWRfX74p0GGiNx1eO
 PLYN2/FJaTEE9W/YDNjYjE8l1imLrLknUzTaeciRAKGt/EA+IVCCEtd7mK0PUcB0u5ZWaXZM93c
 ng/aaf23gGC6szkAClQuP55/8zptULluGwr+11dUxlzmZ+Cp6RGjDVX+kkuLwu5B+POBT6PeFiX
 97nYay/WeY6aejmHczllSdygvkLQW6yV3aLCMAVw1P7rTXndRJmBUKmUych0a8fl4gPCZCyAdTD
 /6dlxIahLv5z7YF3wm009FnHjxiGzEf3bZbG5UjNFmOHWhMxOTfRcAMUZa2yTb57/6MkdI5nSmI
 ixQpD1RhzQk3nxy8nLLsagMO+diiwK69P8+7gL9T75Np+kB7AjM714G98h6C8MFvcTT/bbm2y3X
 REqRq2r4uAxhXi+BEcp006UzhH1XCwH5qw9IIb2KFAD3McBHR8x/bDmTYiXVIhPRKD+DKmgQhv8
 8MIRruaiVUCXbyHFV+Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 priorityscore=1501 adultscore=0
 phishscore=0 malwarescore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_023132_190016_205DF334 
X-CRM114-Status: GOOD (  13.81  )
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

Describe the SGMII/SerDes PHY present on the Qualcomm sa8255p platforms.
This is essentially the same hardware as sa8775p rev3 but the PHY is
managed by firmware over SCMI.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml | 50 ++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..9e846e381555514bb32177f884abf0cf2c942948
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SerDes/SGMII ethernet PHY controller (firmware managed)
+
+maintainers:
+  - Bartosz Golaszewski <brgl@kernel.org>
+
+description:
+  The SerDes PHY sits between the MAC and the external PHY and provides
+  separate Rx Tx lines.
+
+properties:
+  compatible:
+    const: qcom,sa8255p-dwmac-sgmii-phy
+
+  reg:
+    items:
+      - description: serdes
+
+  power-domains:
+    maxItems: 1
+
+  power-domain-names:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
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
+    phy@8901000 {
+        compatible = "qcom,sa8255p-dwmac-sgmii-phy";
+        reg = <0x08901000 0xe10>;
+        #phy-cells = <0>;
+        power-domains = <&scmi7_dvfs 0>;
+        power-domain-names = "serdes";
+    };

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
