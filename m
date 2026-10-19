Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53066CCF2DA
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 09:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvqx8MB0mHAj9RU4MQDvKrf3jixEApXjMUqE1uNTgIw=; b=H703NnQMA+80uw
	WR4/lgnzoSdD1zc34bZo1LTcggZ9uN2wULRFn6oB+oln0lm632E6mhLKVAEcMPItOn/ceRKdrnuAI
	hyv7F34ejzOt7Oe9riLqR55E4LC5ITNZPG8n4udPb2Obg1GrfBl/zBj0dZxXcO3yiyrwbyP8QnH6O
	b4Mk+v1rb/ytT5jwo8pVdeyZP7if2bMBD3USkZ+axwqIH8aZr9O/HiIvB36UaV0jVZkKOVf/gLrGL
	Z2I9T9+xco63VKd2rLQ/XrebAZgb+8cxpnhDZiTSXEen7wE8c4Zir2ogycaiFOQ/TZzY9f7r7uPX9
	8w3Vdie6K1oXdI2P5Bnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjcf-00000006zdX-47Az;
	Mon, 19 Oct 2026 09:25:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjcc-00000006zaV-0NJN
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 09:25:36 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69J8P5OZ2753872
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 09:25:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SmgoPkIbymVYjw7eCT9qzVCSGIHJdZ7VOnQChMyqa7M=; b=nTVz4CZfISCySK82
	AodWtF2VBEpfzD8KoV/v289orq1/VTZXWvKpfYdy7WyywvqYdIMftUi+jHnjte+R
	Plhb3oB0HJMShnXFAYOyPRV/y9hdE9pSvW095ondxlsOrnwC1nE7e/LJ6e+u/B2n
	B5ZVKqJ3aqQuCnNhB0kURHAuNlK3pi7jw/C7PIQe8AqTRipMf7N8sUBE6uMi6hzW
	Wq8MG1rpRSWEbLnclld9DUeojw5ObA/H/U/kK/kRxr9IXYPshE9ljahiGLc39Ts0
	ldBtgZy4NfToiYxH1d5oICMgOkYsijFzjpXa9Wl0xOe7foSSTiyROJq8Lr+d0lXi
	tTmpIQ==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdf48gc5k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 09:25:33 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-15c16792146so148064c88.1
        for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 02:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792401932; x=1793006732; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SmgoPkIbymVYjw7eCT9qzVCSGIHJdZ7VOnQChMyqa7M=;
        b=UdAMQkSiR3dRsPI1jGVpq0Qe3BPYgrYjBUuEE4MF1EM3U527OJNh97xdzvRsEzcyu+
         YS75TMgZSkz0J5BuVGWmfkEydKNdL1YJHpwNhaFkcKrO78tQpUaPV3dpjwbBqJ65wnQx
         EHt+2IMEeaFVHfml9lDFy3HtSK783JBAFericaGrcCBbGfAZE8x4dqbLckM7c6v1hw0Y
         2LmPGwJvQxlBCGB/Vxar90hBRbJLeSaZ78f05iDGXHg9Uxn5j10kgt1nHCAnINE0D0wP
         2wIATwdfIx/KtUn1f7ZySbp6TrSrGZs4YA5GvokwLptuFGZPKcUV2WcdmpLKJ4G3r3nh
         1P1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792401932; x=1793006732;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SmgoPkIbymVYjw7eCT9qzVCSGIHJdZ7VOnQChMyqa7M=;
        b=yg9l8qedE+1ecl6t4w8EJf5zGTIWgZjCU+3V8f7fFLkThXSaguqfguVtflUvArU0Ao
         V3IgHiwfP1KO72V81YSWA1ckWtVeL2FlluKpcxzWrcFudvJIyB/L/sIlY4i0YFTF5Bcd
         Glnd6X/whfHvfYA0BKEzs4yHLYTaA6sPQ/bxot4tEGcNgUI87FSy8H1m5XMKmWF5Xg9G
         5AM+p//2NpFE3ydXVoc8cb2RmeubeYMapg50KBZuBu3gcC+jWuXMbrJqITGzdWSCSSAC
         bDNlqib+xV1ke9+qMj7s2V4lPS3Po+tiA8e4ePobUfJi/HVQRiY0cPxFYRejLnnXpiXI
         YZLw==
X-Forwarded-Encrypted: i=1; AKwUvBwRDVW/q9OWS59tSncgNbCK2H10xSbb6RPW0mLbEiq/EKTwrjACDfrrS+v+UAWWF7EZI5iD4u51YkE=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ87guU9ug2Yovct1hiqGS080vrZWAyE2l1vBsblhj9gRLWZth7
	JOjFbXDXS1fH3qawqYvQgpeBz4MNk8tvNZWM2m/AApSPMK4tUqTTfPxwo8dqXCh5SDsq3bs/NdG
	LSehgdAX+UQR5waNzokj2w84BsjS5tk2ixNxyTMVkhV1BZf4DFLbyF7Jb7tSltIYEgqo/
X-Gm-Gg: AYBFou2mr64XjlFH5CsZH5nZpAUQE4H6KJyebLZTQ8tz0HGhxCEo/kn+zE0vTery3fs
	70GpLCCi1Tyujx5/Of2jc5QddrHWCgqQbihQ0JzlarapRPAek09OfG2o1h5cM3z2FcltZgxL3hC
	tC1kPavB/3ZRuHFd5nYXSb50Dzq3oo1u5QoxMhwtYh//ZUxqxxPfdrUD6vW4Qgse7wxb7AAIm7X
	jcQ6cEyAiQEm5548nMsVg0sdZSJDDrI7knYb1NxoaslTTxtbQ6ijmK4SHUN82vXnL6XQnyo431z
	gmtt79a3oXIc1h7l/xmM96ZNGTEtSJLpkgUHiyx0r4peQ0rbQR2l0fOLDcVA5Fn3DVSYLyi2Ms5
	4SKap8yo8pd0acwhgVy1XjGbBlZc1rAlwKw==
X-Received: by 2002:a05:7022:7e8d:b0:151:2e62:fe8a with SMTP id a92af1059eb24-18514256ee0mr11182474c88.40.1792401932006;
        Mon, 19 Oct 2026 02:25:32 -0700 (PDT)
X-Received: by 2002:a05:7022:7e8d:b0:151:2e62:fe8a with SMTP id a92af1059eb24-18514256ee0mr11182438c88.40.1792401931423;
        Mon, 19 Oct 2026 02:25:31 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1831c4d4675sm26682584c88.21.2026.10.19.02.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 02:25:31 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 19 Oct 2026 14:55:09 +0530
Subject: [PATCH v2 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 qcs8300 16 GT/s PHY
MIME-Version: 1.0
Message-Id: <20261019-monaco_ep-v2-1-852cb9f5d012@oss.qualcomm.com>
References: <20261019-monaco_ep-v2-0-852cb9f5d012@oss.qualcomm.com>
In-Reply-To: <20261019-monaco_ep-v2-0-852cb9f5d012@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792401919; l=4909;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=pdyXF9le/jqkQU0MXlhPqX2eJNzNJ0A11DtW+qy7QWI=;
 b=2tJTZ1dHw3nXLJ+EZHj+oqrss+gqexEX0Sx2I++JV6uD/iA1iULBr1zzVgUHjKRHiRfJxgOFA
 c8Q84aXAR+DDo/HHyB1UVkIaWdbPqFo1M6t+5itazlXKcyfceXWKb1u
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE5MDAzNyBTYWx0ZWRfX4UOHf2QaJXDY
 BdpYcyHeSy4M9v7N/XW/8MVZp4ByCMiyIzqQgokcBWapBYDIUdo3ZGmC4EUtEUw0kovQrPhjiDI
 lzdolywnOSDCbOXcdxl1j1nlSIDe2cksqy5hi/YZTIPCZMJC1yQcVIkdDMq4Kbni60du3U99Fo9
 p26UxQgXFXZTL8K1XwgPqsLG504n0g2s0KkP/KS9Kyw2Q78DpYIVsxk2asEqw2S2HVrf9sOXXIY
 WNr/8IxyV/ETAXe/xCZaeBrT80ovLSUyCGpQhnLTy3DJEUpRH0nlblkRCXMdlOdys+wYMYpeabK
 Q+Jhn3cisDzlxAvsfMK1/Ypd1xP8eSiSwzpQ3aNq1IsqKnqxDOoHnFkMEkaTE2qTHwiLb+Zzm8b
 lkENcOp4osdYBD3NsTZoEip29x4WaivzZA1KrVIC6wSSe6dPvGjlf74IX6BO3SnhBg8pCa2PxMq
 n5O0cRMCBngirf31AuA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE5MDAzNyBTYWx0ZWRfX5j20Z4W8C0Tg
 VQin99SGkmFI3pb2XjrmuFvzcoduN+pDNwNKCzGOsRE7DQMVDRF1zK1ILw2Svk4Ewx+zwXAcJhW
 o81rMZemLeb8blWfMOBLSMtFxhgZyPk=
X-Proofpoint-ORIG-GUID: mMSYtLuk-EvlWRRSdrSSGHHZgG4uRdQD
X-Authority-Analysis: v=2.4 cv=Qr/LTlyd c=1 sm=1 tr=0 ts=6ad5e20d cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=VirKNbUofNnfAjYdglcA:9 a=QEXdDO2ut3YA:10
 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-GUID: mMSYtLuk-EvlWRRSdrSSGHHZgG4uRdQD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-19_03,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 spamscore=0 adultscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610190037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_022534_253812_BDBE49D2 
X-CRM114-Status: UNSURE (   9.17  )
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

The QCS8300 16 GT/s x4 QMP PCIe PHY was previously described using only
the qcom,sa8775p-qmp-gen4x4-pcie-phy compatible, since no QCS8300-specific
compatible existed for this PHY. This was a mistake, as it left the PHY
undocumented as QCS8300 hardware and indistinguishable from SA8775P in
the binding.

Correct this by documenting a dedicated
"qcom,qcs8300-qmp-gen4x4-pcie-phy" compatible, with
"qcom,sa8775p-qmp-gen4x4-pcie-phy" listed as its fallback compatible.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 87 ++++++++++++----------
 1 file changed, 46 insertions(+), 41 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index b353b7bfb839..34d3a714716b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -15,47 +15,52 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,eliza-qmp-gen3x1-pcie-phy
-      - qcom,eliza-qmp-gen3x2-pcie-phy
-      - qcom,glymur-qmp-gen4x2-pcie-phy
-      - qcom,glymur-qmp-gen5x4-pcie-phy
-      - qcom,hawi-qmp-gen3x2-pcie-phy
-      - qcom,hawi-qmp-gen4x1-pcie-phy
-      - qcom,kaanapali-qmp-gen3x2-pcie-phy
-      - qcom,qcs615-qmp-gen3x1-pcie-phy
-      - qcom,qcs8300-qmp-gen4x2-pcie-phy
-      - qcom,sa8775p-qmp-gen4x2-pcie-phy
-      - qcom,sa8775p-qmp-gen4x4-pcie-phy
-      - qcom,sar2130p-qmp-gen3x2-pcie-phy
-      - qcom,sc8180x-qmp-pcie-phy
-      - qcom,sc8280xp-qmp-gen3x1-pcie-phy
-      - qcom,sc8280xp-qmp-gen3x2-pcie-phy
-      - qcom,sc8280xp-qmp-gen3x4-pcie-phy
-      - qcom,sdm845-qhp-pcie-phy
-      - qcom,sdm845-qmp-pcie-phy
-      - qcom,sdx55-qmp-pcie-phy
-      - qcom,sdx65-qmp-gen4x2-pcie-phy
-      - qcom,sm8150-qmp-gen3x1-pcie-phy
-      - qcom,sm8150-qmp-gen3x2-pcie-phy
-      - qcom,sm8250-qmp-gen3x1-pcie-phy
-      - qcom,sm8250-qmp-gen3x2-pcie-phy
-      - qcom,sm8250-qmp-modem-pcie-phy
-      - qcom,sm8350-qmp-gen3x1-pcie-phy
-      - qcom,sm8350-qmp-gen3x2-pcie-phy
-      - qcom,sm8450-qmp-gen3x1-pcie-phy
-      - qcom,sm8450-qmp-gen4x2-pcie-phy
-      - qcom,sm8475-qmp-gen3x1-pcie-phy
-      - qcom,sm8550-qmp-gen3x2-pcie-phy
-      - qcom,sm8550-qmp-gen4x2-pcie-phy
-      - qcom,sm8650-qmp-gen3x2-pcie-phy
-      - qcom,sm8650-qmp-gen4x2-pcie-phy
-      - qcom,sm8750-qmp-gen3x2-pcie-phy
-      - qcom,x1e80100-qmp-gen3x2-pcie-phy
-      - qcom,x1e80100-qmp-gen4x2-pcie-phy
-      - qcom,x1e80100-qmp-gen4x4-pcie-phy
-      - qcom,x1e80100-qmp-gen4x8-pcie-phy
-      - qcom,x1p42100-qmp-gen4x4-pcie-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,qcs8300-qmp-gen4x4-pcie-phy
+          - const: qcom,sa8775p-qmp-gen4x4-pcie-phy
+      - enum:
+          - qcom,eliza-qmp-gen3x1-pcie-phy
+          - qcom,eliza-qmp-gen3x2-pcie-phy
+          - qcom,glymur-qmp-gen4x2-pcie-phy
+          - qcom,glymur-qmp-gen5x4-pcie-phy
+          - qcom,hawi-qmp-gen3x2-pcie-phy
+          - qcom,hawi-qmp-gen4x1-pcie-phy
+          - qcom,kaanapali-qmp-gen3x2-pcie-phy
+          - qcom,qcs615-qmp-gen3x1-pcie-phy
+          - qcom,qcs8300-qmp-gen4x2-pcie-phy
+          - qcom,sa8775p-qmp-gen4x2-pcie-phy
+          - qcom,sa8775p-qmp-gen4x4-pcie-phy
+          - qcom,sar2130p-qmp-gen3x2-pcie-phy
+          - qcom,sc8180x-qmp-pcie-phy
+          - qcom,sc8280xp-qmp-gen3x1-pcie-phy
+          - qcom,sc8280xp-qmp-gen3x2-pcie-phy
+          - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+          - qcom,sdm845-qhp-pcie-phy
+          - qcom,sdm845-qmp-pcie-phy
+          - qcom,sdx55-qmp-pcie-phy
+          - qcom,sdx65-qmp-gen4x2-pcie-phy
+          - qcom,sm8150-qmp-gen3x1-pcie-phy
+          - qcom,sm8150-qmp-gen3x2-pcie-phy
+          - qcom,sm8250-qmp-gen3x1-pcie-phy
+          - qcom,sm8250-qmp-gen3x2-pcie-phy
+          - qcom,sm8250-qmp-modem-pcie-phy
+          - qcom,sm8350-qmp-gen3x1-pcie-phy
+          - qcom,sm8350-qmp-gen3x2-pcie-phy
+          - qcom,sm8450-qmp-gen3x1-pcie-phy
+          - qcom,sm8450-qmp-gen4x2-pcie-phy
+          - qcom,sm8475-qmp-gen3x1-pcie-phy
+          - qcom,sm8550-qmp-gen3x2-pcie-phy
+          - qcom,sm8550-qmp-gen4x2-pcie-phy
+          - qcom,sm8650-qmp-gen3x2-pcie-phy
+          - qcom,sm8650-qmp-gen4x2-pcie-phy
+          - qcom,sm8750-qmp-gen3x2-pcie-phy
+          - qcom,x1e80100-qmp-gen3x2-pcie-phy
+          - qcom,x1e80100-qmp-gen4x2-pcie-phy
+          - qcom,x1e80100-qmp-gen4x4-pcie-phy
+          - qcom,x1e80100-qmp-gen4x8-pcie-phy
+          - qcom,x1p42100-qmp-gen4x4-pcie-phy
 
   reg:
     minItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
