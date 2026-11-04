Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFC4A606D82F
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 09:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=x0p+Vgur;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=pDhZGywj;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=itfRh6iG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sXAK9yKTWelAHJjfbokgjMRWsPoZ4fvNb0mBIY2X9oc=; b=x0p+VgurgyBqfAY5e8dTE+Mv76
	bvOTDo0aVa/c8y87v2nKCM6mDmsti/qinhRASjmGhJ7DikpVxQPPqulUoZe89MTg9kayNc0UJURYB
	WoYKiPE0Mvr5Qg96/dYo8tBW2I2Nop+QQNtnaO5oL/ojATKHFBnwvk50ZdT1UPP0wJ8o8I061hZK9
	nuDpikwKrOMD9EUpczX7ErhAmG5dqq55M92RwO+ADL1JKh6bUPFqLCAo8T2Do451u3/AOX+RZZGaB
	gEXtkk3q9dARbGqAXlfpKJsV9a8bRwy6e7U8lg8ckYrS+bsTuXrp6CDXi7LEJ8PWNvX4Cv7wlchxB
	K0UqZAgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOWyc-00000004prp-1J7k;
	Wed, 04 Nov 2026 09:08:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOWyZ-00000004pqN-2Pz9
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 09:08:12 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A48KgW2175263
	for <linux-phy@lists.infradead.org>; Wed, 4 Nov 2026 09:08:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lLNvy67hh/zUuo17cSVaBEwBaP+1fyl5N0OjhghBW3c=; b=pDhZGywjgW3e1zOK
	J/lyr6z0qNgXUy395nv/t9Xt8E+cHb+ABeGYOkSGVdt2vSOAiOq2xcq5+rZ5ZaT6
	UHNnUeF0B3EKawm3aGNUfW5Q11t3YxIbGJ2N+uDRZT9r7yRL49Ixc+lA0GymSkC7
	jTx8gbczrl9ZtQvTZAPUENVwKMiPdO1cHOV5PAya2sMJ3iP/iaAhCcJOCxKPXG51
	8HdA7VKT3anjLQSuCDskXkl0QxQVaM+UQZskIsunqwPJ2qVjB1BX+Rog4EjkEiOg
	7ImssSZMdEbnNMNFNS0+/00NY/mw1XJxiYDeOIQSkGKXQhDM9gU6GQ3F1vaAwcjR
	gJMW5A==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hqmjbu766-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 09:08:10 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-846863cd436so532868a34.0
        for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 01:08:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793783290; x=1794388090; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lLNvy67hh/zUuo17cSVaBEwBaP+1fyl5N0OjhghBW3c=;
        b=itfRh6iGXEFt3eOtWF0MPvSxgEqUulwD//B40LD95w/8/AyoiS7GWbgjfn7sb7ciNu
         iH403cj5+neu9VfBYrUOzVlkIl73FDh3ZZMg0w3GRwXB0c7gXArHI7IZABeazWvNyDIj
         c2v44GEo3uwlNKa1aFf4NjKCAY0uFsewre49ifB5cRSqujl89lhOhI7pFSE027IC0imn
         YlQYD3BEPBoizUwggeDFPxt0OJezmAtK/2/fAWVW0OU9B2w+sigYAr+OHkpQG+ZobK1+
         RN6CCiQHM3UocgtgOrDIVMpQMCKx8w4qGmooybtQg1Ks/E2ziFAxyhF+aFV9CZeBSthu
         jZCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793783290; x=1794388090;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lLNvy67hh/zUuo17cSVaBEwBaP+1fyl5N0OjhghBW3c=;
        b=WEwiynxyfE2ZBl6PsAP2LNUw8JlbxoI07KEjcEbu2fCrL6ewMDXCk7QgegvDSYEoB7
         3OrIrBYfXc2snz0ovbM19abicmy9KvqJG5sobj5VH/SKIKGsC7X7kSQ2rchSEdIZXXfc
         Cy+4LEnkNSiPYFhFem2DgA2nmkCbIeAZddPsRMWDTsO7U3FjqdnBck7PzOymuiwSTpEL
         XEEebRCpiwHsi1poW2zN3l19ahyxTWWZl6owPAKlBPwHdF+BUrPPkXCgTJni23nq52FZ
         lBJT2P5X3JSbSLycMxfCgt1hnRv1C9+F0AY5aj6BRgvjmdP5xgTkD9yAxJx6e5MUCVIQ
         qsIw==
X-Forwarded-Encrypted: i=1; AKwUvBw8yGjSFv1gwtISwV3Lmp9ju8SkRnTUpzOw+x3AoawDGT2wjquwizf0txNziEpRvRd8UmD3ICnaosM=@lists.infradead.org
X-Gm-Message-State: APuU4Z/+6wYfZfSlZgXzBD8/tEN0dio838l5nb4XpsXAV+qSHHWZ1/xq
	Y0bHv5MsQjvetJbSF8aviEUdNkwgnZOKtmQVW4U5ORDExUDNQVcucJr0NGbIpbj4BqnCzAc7k+M
	sVrpvaeVHUJX+bSR8i/MU8e1Q/6CEvuaw0VobrSiMJPxjm0MkhdB7ONkavP8ENmTHW9uvCdNmDv
	hp
X-Gm-Gg: AYBFou3GTuXSdl8KMvONCv8WVUpVkOTLsYOHmT2GrW9PYNyQgBA2mM0/BMiMX4xbeau
	ucUKqXW3ngKUlRR7vUHMrmhrLkqHuJJd7M4N+acWAmge7C4vmjTf8pHhEQv1LDC3MrV81Dv7mrk
	E50siT1y1JRG+ZS5npcS7EUp3ga7/AJF2+U09A8Dba2THbPiWZ7fOvRZ0Mg8Lio2eLmuYFZNX3W
	Z1z0xtbfiWDiJkyiDFa9sMUL4sfWEURMeBGz9SifnZTRlU0w3mUmslxfcFmMiX+o11+JM7jctel
	dSwRkvv68IYoQmvnPKSmxT/McZtERPbM6R3qfVLF3wF8xn3Q4JEa0OzfVB0hasOuCq0Si1+OwYV
	7u6MVr9w5om+m+EKD5IBBfa09PfRjspLV+XiAcAH9ftqPJgPkBlf31rO6E90uKJlv5XkpZAxfXS
	91MhTCX2sev7dEolLieDg=
X-Received: by 2002:a05:6820:83d8:10b0:6d8:1b5b:3a74 with SMTP id 006d021491bc7-714f24fa260mr6089193eaf.8.1793783289639;
        Wed, 04 Nov 2026 01:08:09 -0800 (PST)
X-Received: by 2002:a05:6820:83d8:10b0:6d8:1b5b:3a74 with SMTP id 006d021491bc7-714f24fa260mr6089177eaf.8.1793783289178;
        Wed, 04 Nov 2026 01:08:09 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-85ef3d768c8sm1519846a34.8.2026.11.04.01.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2026 01:08:08 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 04 Nov 2026 01:08:00 -0800
Subject: [PATCH v4 1/3] dt-bindings: phy: sc8280xp-qmp-pcie: Add
 vdda-refgen supply for Glymur
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261104-phyrefgen_1104-v4-1-ba508fc6ab40@oss.qualcomm.com>
References: <20261104-phyrefgen_1104-v4-0-ba508fc6ab40@oss.qualcomm.com>
In-Reply-To: <20261104-phyrefgen_1104-v4-0-ba508fc6ab40@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793783286; l=1801;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=b92G5NczVP+u6lrMXts0b8MbJ4fUEmJ5769gnZJqg/U=;
 b=Gxv+gaan867+UwoYMh4j8LOZPhDAiDGdwJjc0Nl7Ek5ojWemHz7/FbNeO0KGJ5PqK66Twnqsy
 lE0fE8ukzNaAYc3ggC2LyVdt8uxWo3WL/2KDX7TMWIutzuQT7HxAGLl
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: A6F0dFMJKuT6ZBp697HhYjrEzMJ46GZC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA0MDAzNiBTYWx0ZWRfX0j4sn0SCYrII
 /ncVRaVj2/QEOLiPbZ0EPbkPW4/2UXO7ET2ra9IE3Jbwl7+uKQnDvKgSbbTB0Lz9LpuJOVNAB/Y
 VJLGCThuzqd5xf5hfEmDi4RVQiT7fAGg6QMYS+BbuSRglPHWSmP0mEBWB/OYuZpxU/V12VahMsv
 cwDrOR04tlkmxMp7Uv0UwI3vz4dNwrregwp2RyK888JjJreF6cgHdPXsZG30y8+a5DGly+PE4P/
 OG45Pb/btT+NdjCHD6MdJ0rVgvGQ3zSw4E2EgZobqtJgPeHuSJcdfbVbJmjfCk7u6V1HTa6TKMr
 y4SLLuiqQ0peXjb/irtFcOto/y3DiXyhZk8kn+N/i1GcIfRxh633IoRTeL40ht6M4XFURrkS6W2
 SXLTKbJ9o75sR6M5pMhFA1aKPlRT5vXqrggKA6j2UUZzn+63+wXdqkdh9U4Vh6uz6abGM5Da6uv
 K0VdhBRP6YJCqVq+Oyw==
X-Proofpoint-ORIG-GUID: A6F0dFMJKuT6ZBp697HhYjrEzMJ46GZC
X-Authority-Analysis: v=2.4 cv=NMhAaE6g c=1 sm=1 tr=0 ts=6aeaf5fa cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=neprlRFrkYi1VxbfstQA:9 a=QEXdDO2ut3YA:10
 a=Z1Yy7GAxqfX1iEi80vsk:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA0MDAzNiBTYWx0ZWRfXyScmoSRbdFUo
 r+eKQItYiazbUKsmruKKW4FSgkGKrbxnxlw6Bep8Q8Fjd+oYaNw5vkd6tWw3UG2Y8M5uv/2uGWY
 kSDIZof2QFKc6MCrXqxofWVuN8tbcdg=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-04_02,2026-11-03_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 clxscore=1015
 impostorscore=0 suspectscore=0 phishscore=0 adultscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611040036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_010811_737552_0B860947 
X-CRM114-Status: GOOD (  12.01  )
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

The PCIe QMP PHYs require a stable reference voltage provided by REFGEN,
which in turn requires two separate LDOs to operate. Without these
supplies, the PCIe PHY cannot work properly.

Add vdda-refgen0p9-supply and vdda-refgen1p2-supply properties. Mark them
as required for the Glymur PCIe QMP PHYs for now, even though it breaks
ABI; other platforms having the same requirement can be added later.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index c0a3e1f160ad..f827abaf22ef 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -104,6 +104,10 @@ properties:
 
   vdda-qref-supply: true
 
+  vdda-refgen0p9-supply: true
+
+  vdda-refgen1p2-supply: true
+
   qcom,4ln-config-sel:
     description: PCIe 4-lane configuration
     $ref: /schemas/types.yaml#/definitions/phandle-array
@@ -280,6 +284,18 @@ allOf:
         "#clock-cells":
           const: 0
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
+              - qcom,glymur-qmp-gen5x4-pcie-phy
+    then:
+      required:
+        - vdda-refgen0p9-supply
+        - vdda-refgen1p2-supply
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
