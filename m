Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66AC8606A8B9
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 15:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ip23Tu6l;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=bH0ZZBbw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=TMuM5+Cm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=LuxqTtzlcvN+OsvSmrGKVZbu3csmzxWn8WJEmugbLhA=; b=ip23Tu6l7hUEDbCLZ/0JXZcEsS
	9lMZ3jpzJvgUWw8a9xlVhubqxrRXbmrDlcEwu1D8c+rKjLAXgrQDGBRqG2Xf5cm3z8tVHkLoFGDJk
	lKpU4wbSkpYF4Z++eVMJ/8t4Y4orQZZN+xJsYJpVeL43OUtBljsaLrK9vNW2F3NfM8+z0ACs2tsoU
	5ez+xtxBrZncdamz3jU7QmVIMfQw+wejF1MjxRQTaI3huy8BXSYlh1kI5elaE+urubKBgji3vq2yZ
	54/JONTXhUqI1C8k05rzb5wAU0V+WEXfl/C1bXSIaP97GS3sKQ3WUHXRxyDubYDlz3U730x5WIaCr
	Te7tQSEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRWrB-0000000ATwK-03pX;
	Thu, 12 Nov 2026 15:36:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRWr4-0000000ATtH-19KQ
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 15:36:55 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6ACFZZap656986
	for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 15:36:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5o0W5j75J312TRJZEeDeuGSiHrZG94Q7/QvaFifJOmk=; b=bH0ZZBbwFAtooZ6+
	aUvXug+ZyNhrwWkGVectFsOPazk2nJo1XbmVYJP9qkLXebpbyYil/xlmKsWCfZej
	dCLQcXspY13eJ/VR5QkpMNVBXfuPCA5WZq3dPjQ9BE6Cc3r+gSGhGNVTDxEZanxp
	6Wmc9IqIA0XDazAheDnHc7wZFlWwBMgNEmNwOeKc+Jafy7UN19315ZRI2UXzgIxx
	7C7h0BiMqdgOiDX0Nzfe9U71wRwbP+z/fG9r2YaKPa1LMEIeH/e0LU4vxgkTsXp4
	Dju4ZmeiPrznfc8JJzuRre+w3tO7s9IHyVu4KAyAw5D56uO017IQt6HhHiaRHzdK
	0TGUyA==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hw6yuj7a8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 15:36:49 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-7cc36b97a77so1015878137.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 07:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794497808; x=1795102608; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5o0W5j75J312TRJZEeDeuGSiHrZG94Q7/QvaFifJOmk=;
        b=TMuM5+CmQD8MXa5ENUrAea0GF6P0cg4N9e598wO3maUQ3ci7a7zRnQidvEy68QYXH4
         qfuTYLYtkKYg+r1MAUljRZcY0CjWtRGiWE9xQJlicGhU7vHECDYiHXQNCel9BH1qK2bE
         iRlGvy4MO0mmkiskDDDA3RCcZtSiAOTWaNOx7x4zklFbPJ/msXwlKFMS1rEhIyFvhCjY
         hl5yLjInFGvTrYIXaYr06UWyXUdArdcQmkpZjsEB2Ds5XGcElq9rvZ7qaIgJKh1uzctS
         fjTvnMjl/tArqArrLZfUGsrlRDfz6ixXsB5lUrVecAyn0BKHEixpXOf08TH3vQqYNMVt
         ybbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794497808; x=1795102608;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5o0W5j75J312TRJZEeDeuGSiHrZG94Q7/QvaFifJOmk=;
        b=uVwm3bNF5BCEuBw3zWnjE+WIPFili5DDhkR0SeHC08p1qxvMSdHM81y3UVVmYN47f4
         rMPl8VkDojBtZJ/nTl+nrzRz7nXUjeaE8n/7Tc/zCs7ZFtNSNW6qtXWvuDNrkRuU/2iG
         DioFKlQoRWg9u46I4+uOx2g5mRO/BioQLOatkFase+i9+0Z+WsrVDaUqjzMzF3zH6Vrq
         PB8dZo/7GMfc3HWTwH3QHMpzsYYI62EurvvvvgHPd8NorpJfW+w0cmN5bPUu6C8ldbSE
         CyPSIfx2Gl5sv8Y1dh7zf8r8NXbfhefkKkgLNBhJPdyupdjjWp559dAgvoDNmCqpBEhy
         XhsA==
X-Forwarded-Encrypted: i=1; AL+hErGBRwu0N4BX228CGYRURVJEmw9PeDwp9zQ4HM5cjDU79C6hk8oJronOIsgcbfGrPhYzaxvsCIIgW2o=@lists.infradead.org
X-Gm-Message-State: APuU4Z9t1FrPa8dYtqsvh9gGcR8UOgwYYlLDCdYCTXU7NRsCx/MNEfou
	NoV6n+NNGBPCnRf4OjupK1pc43ZFfDx+WHUa1o9Fn7pN46ufiC/S+t1WSYP/duD+djlnRiHRR0K
	rmbmG2So5PesLoNCB8HZZUzaGHN0tF41G/Jjho7D2nEg2qlyo6LtsJRYEdqmY+B18HywH
X-Gm-Gg: AYBFou0UvvzsB6/zWbLjSlAIllBt9r/+SnkBua6eSW6yR111j6SLr3NCEukeZC1DTO0
	KN3xkVtglWTdhW966k2b+lZOljHso16kpHt+myB70gV3h2nXS4yhGYr+P0hNmfDQ4ZoxLtYCEPV
	oU3LeK23CzmUrB2kY6dRXoa5+Ez08cHFgpJtRbd98+PCnG5+e5/xsbugd5wws+KpZgnZO9rSO4f
	ztkzKWFzTvHhy2dFdFtESilJZYKnUnfzDSB1R7TL824AB7WoSTsGzcIQINvWsElc9tmdFZ89M4t
	F+AiYTPSat+m9s51hue9J7OMYi4whaw+GD7I+dXlK1t4zpDdSWRMZtNVxp3O1QRAdxfZMHnLwvT
	1tlXCF9pXJ67p2vPES3eWxPL+7VnCdjWwnCOliSsfBF10iEWNXHMBgaxnKqPbCF43rHTmXkXZ7T
	aEHw==
X-Received: by 2002:a05:6102:418c:b0:7d2:7f93:7708 with SMTP id ada2fe7eead31-7d4fb2c2e29mr2099508137.8.1794497808130;
        Thu, 12 Nov 2026 07:36:48 -0800 (PST)
X-Received: by 2002:a05:6102:418c:b0:7d2:7f93:7708 with SMTP id ada2fe7eead31-7d4fb2c2e29mr2099502137.8.1794497807693;
        Thu, 12 Nov 2026 07:36:47 -0800 (PST)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4ba09536ebfsm138353235e9.5.2026.11.12.07.36.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 07:36:46 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 16:36:39 +0100
Subject: [PATCH v2 2/3] dt-bindings: phy: qcom,snps-eusb2-phy: Add Nord bus
 clock
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-qcom-nord-ahb2phy-clk-v2-2-30ad3d947217@oss.qualcomm.com>
References: <20261112-qcom-nord-ahb2phy-clk-v2-0-30ad3d947217@oss.qualcomm.com>
In-Reply-To: <20261112-qcom-nord-ahb2phy-clk-v2-0-30ad3d947217@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2593;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=P2V+JNK6+l1UtqbbRQrYDDi6Drwba1YCgJEpyneVFMg=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBq9d0I6t40xtjdl+V+j7iVm5y8G3QJhQgQiKuyb
 hBTtNqP0DqJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCavXdCAAKCRAFnS7L/zaE
 w4ZmD/wMCXWaCFC9VAweSsB8FI/e0bIqdjmRpNlodYp/YPRkCeGqFuia7xy37qYNm+u73hfriRE
 hNTahZzVjpooPaJfPy974giG3artxayNeKbY0k1JrmbriqL0NkFG8MCMvYo5GKJ7yRrttD5B59R
 AfG1P3JOWA7kasQiexiDIfzhvyc4XImEOQ6d3JS51iJegHtLC1PjCACWx4OVyL6Yjrdc7prUNcG
 5gmpq40zypC+yxSNgoCTg9PPacuEw9libt6weqeB5KlY6ad6wFN6TsuXVjXvmAB1W/triFS1PrW
 07XzzSdMLshPntyqBNDAcirhmf7unN+2QCqfeaxXaqYntqi8HAfXUt9LcriLGyYYNwgScsssO4g
 jdwLUsFyBvLyJ+rOrqfiwbcb1hLxK2B86nSv8bY3gPp+NxVJndqsSCI4wqIisHr/FkkLdhN7Sh2
 0aiTHq3llXqjQaQYOvNDrmZOzB74f0B0Lkfd0/WoTAN2hGNfLnuP6mJDZITi6QrRSJzDm3D1sZL
 qi9IvhrLogEfPEAeXk4iRmzwTvXeZEkDz1qTqptcJacHDl9Nvxd9aTsz9jRmZk0QhZrg+WFogvW
 I80EX9CT452JASeY4eatTRCzNRghDk7c87XgX2/3f9bEiCj3T9QzMf2f6ZBs7m9iu8KssYWeQx2
 G5YAexuE/58Dsmg==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-GUID: B9vzMvD79PxALuXneYu4KL4o6VcB3ipO
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEyMDA2MiBTYWx0ZWRfX3awXbkcWZIGM
 EFdMuG1NhqmZtArZCvTipfCHu1ANnxnhGiDyvjCaAcxLCfLnP2Gdyw/39rbV/8iFwEVp+rrc2WZ
 KoOb9l5E5+aC/61Z7EZSr4kxlQEJ3/c=
X-Proofpoint-ORIG-GUID: B9vzMvD79PxALuXneYu4KL4o6VcB3ipO
X-Authority-Analysis: v=2.4 cv=d49gWhjE c=1 sm=1 tr=0 ts=6af5dd11 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=tP9VjBngxETQ9kDmeHQA:9 a=QEXdDO2ut3YA:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEyMDA2MiBTYWx0ZWRfXwfQ2Y+J4q1Go
 FYhpsr4Wj8XMdY6Wzjj33ngj+oxsNFpnuTUlldIFmuQ4aa4srBwFDpr1IC90j3u5pU0idh4aUGh
 KEAzyTQTLzz1B+LNPoY48Oz1PUIYDzJYw60JGwi52F/D/EoYCnd1qZHBiSU7JO3NKeAV5SC0GU/
 61ulO3IcxHVY6lYCHoKc7skpW1NSYVwBU31HG2JB1J18K5z9iMi1u3tI6RVamuQqhU8P40/3NDK
 MgnBHxAgt7DEF+nOWSCgWGtpELFT/Ne+gXB3XBIRXTIyhjLOVOzfbdchYN58dbN4YBr3V3kICA+
 Hfu31Y1Z/xNpQc+B7255wKq4ujVuOaxYhK+iPojV0+2D+r8iwlJ1m7dJTtiwxpXRaU40rab/99A
 c/lvh0ykXPpf90glycbYJA/rpzNVdK6TJ4T9sk5tRQREVLFM8O6s3OAububAYJPwxrWcAKwzoyt
 jzquPDxvedcY8AdUuPA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-12_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 adultscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611120062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_073651_962532_369CEBF5 
X-CRM114-Status: GOOD (  12.32  )
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

From: Shawn Guo <shengchao.guo@oss.qualcomm.com>

On Nord, the eUSB2 PHY registers are reached through the AHB2PHY_0
bridge, which is gated by NE_GCC_AHB2PHY_CLK. Allow an optional
second "bus" clock for the AHB2PHY bridge, require it for
qcom,nord-snps-eusb2-phy, and keep other compatibles at the single
"ref" clock. Since the Nord PHY needs the second bus clock, it's not
really compatible with sm8550 so drop the fall-back. This is fine as no
DT source uses it yet.

Fixes: 4d1f3875f328 ("dt-bindings: phy: qcom,snps-eusb2-phy: Document the Nord eUSB2 PHY")
Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
[Bartosz: don't use the "qcom,sm8550-snps-eusb2-phy" fallback]
Co-developed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../bindings/phy/qcom,snps-eusb2-phy.yaml          | 24 +++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 931cd0e7d297e..fbea2129939f9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -19,13 +19,13 @@ properties:
           - enum:
               - qcom,eliza-snps-eusb2-phy
               - qcom,milos-snps-eusb2-phy
-              - qcom,nord-snps-eusb2-phy
               - qcom,sar2130p-snps-eusb2-phy
               - qcom,sdx75-snps-eusb2-phy
               - qcom,sm8650-snps-eusb2-phy
               - qcom,x1e80100-snps-eusb2-phy
           - const: qcom,sm8550-snps-eusb2-phy
       - const: qcom,sm8550-snps-eusb2-phy
+      - const: qcom,nord-snps-eusb2-phy
 
   reg:
     maxItems: 1
@@ -34,12 +34,16 @@ properties:
     const: 0
 
   clocks:
+    minItems: 1
     items:
       - description: ref
+      - description: AHB2PHY bridge clock for register access
 
   clock-names:
+    minItems: 1
     items:
       - const: ref
+      - const: bus
 
   resets:
     maxItems: 1
@@ -77,6 +81,24 @@ allOf:
       required:
         - resets
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,nord-snps-eusb2-phy
+    then:
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          minItems: 2
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          maxItems: 1
+
 additionalProperties: false
 
 examples:

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
