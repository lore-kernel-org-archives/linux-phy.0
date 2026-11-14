Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F06606A881
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zxq5l0cA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=cTJ6s3aR;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=HEllk0vm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=JdH3UEyhFlLmvetppaVsCJia2ZWb1fOVdGr/HBRO7YE=; b=zxq5l0cA4dcOgL7ij1Nn8NYXW1
	B9ABlZFt97CZgW4FFDCZKB4c2tfZvCmrF19spQQpaVtZMvm5whJ77cmFriwMi+aVz1nBr0/3bAK4V
	cUMk/9IIoRi7JNeEXi4H3pqkW/wLDBG2Wg44F179PMXie5imhD3v17i2ux2+HwVc4A0FFnWcOsK+Z
	Kdt0tLQkxps+v8oK4/bKaHVLZBjvpv/mIkMh83Et5PnvAzAGIy/BMemxpkP9zawRnoaAYEwCPMOS4
	w/Mg1FaVOOFxh9PyDyPHMYwFz/nw7y7zDxFevJMmFoPVgXi9Mw3F3AWZfCNucFGXgzch+BPCVdNtz
	4kbLEb5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBxX-0000000Ftk5-2LC5;
	Sat, 14 Nov 2026 11:30:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBxV-0000000Ftje-1Vfw
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:30:14 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wdNV1089381
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:30:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hcdILR3xyf7f8ySp8tYpqHBnHrARzRGQO+9FgjgHBks=; b=cTJ6s3aRh19wkTsF
	H/K6BHslxjC8hzN+VWNrLXaj/TZow405xJNfC1755wdMinzHsLKhUlI1DnxArzP2
	FSBf1emn0BZzXkenv+tjkmB4GKsUXW6FY92zxpIx0mInq4q1VXoJhjxFso99NJPU
	DZBhZLKuzyqgorDYFlJ0y+5/uo07UwrF46wG2VncCiYedWU23onVEbTl2aZgUjUe
	DwRWQgqFT32DB7hPyzaHMeS3xPVT2UyAizNoPXZZ0rHSPrbEpLqfurK8ZPVLUQqc
	Fj8tUW0Tvv4H+WFdxm7oiW6WyTivbJ/q1qrZTTT6DWKJ/8k5KmDOrmsjyfvRmeZF
	qOQE9g==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhm8rkuq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:30:12 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-91ea39a2f8eso42484056d6.2
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:30:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655812; x=1795260612; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hcdILR3xyf7f8ySp8tYpqHBnHrARzRGQO+9FgjgHBks=;
        b=HEllk0vmQhBXZ2rq1ZlajDbdgSC2vOs+bYRtqnDrHMRwdctHFbN3E1dQk0kA6d/Gd0
         NtJK1y85LbtItkBNNamlvxd98e86UzCcTQYGVU/WcCqgdDvKzXeGO9rbE6QyT4lrU1SN
         6d09eN+6Z7LFImAB9uXfCCXHwlIf0WculXGxu38Ym4JoFH62WQcfDxaKs9jf8QpDUe0z
         tMSKOcz+0bHOw2tnzRrZye6u+TFVspfCDY+AhRwFMTtk7m6EHeV+MoFor+Q+8TjnA0I4
         11+ifuVTIJZ0bKiXlLkhV1swWBRVQrNrp9DKZFSXTYkY7jj1ifjUitActO36h7kmAUD/
         q3Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655812; x=1795260612;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hcdILR3xyf7f8ySp8tYpqHBnHrARzRGQO+9FgjgHBks=;
        b=cdcu5ohKAXhzWwX3g0OHSyBdaJ72S4hBSCBZ+C38g/XXQ8z14JArPOLzWPXv9pcwqV
         fvyapdhnhPXZEZTKMHT0nXMoN30pNadMFf9ryyUsvNzC4BBajXemjmYSHgtBQGEVOAr9
         +XZQp+0Laiji+ELSin1+SzkIlLHAuoPkcYMu33Ftr07JW7DnHoRfqm1maihfeVLWMfyp
         AmuJQDX4tWbYAoS98WQcNh+PqK+6bns+8riGcdGcMnA++lXCelf5nqD8GRFtLofTuiig
         PWklYcL6rrwTeQ8qKRtteA9eLciEtJFTRv0giB+EarrOIKvqYOSUm1fieQLiloiBIWFU
         M5Wg==
X-Gm-Message-State: APuU4Z+euWezrNK6BUTkINjanFa+NIhqq9OE4iK/t26VBD8lGrjPa2lP
	gUAMdCj6afyzthvYpBqoRjWuBF7q9XjkQfC83HzhB+mJSQ/NojMV3KsXdT7TTh67ibebDRshfCG
	byr4QSkrgsbgIF3Zwd/yaLuYjO4h/1a1Fer9ZhcMwreZtqkfxBvWaDG/YAtyGeQpnbemN
X-Gm-Gg: AYBFou3R6NyNFhul4wyDaUWw0AapZwmF3gQN0guV/QkSvefIGFPlke1BYijJIXvKdCR
	biAtPU/ex6sL4+JfEwf/fJ9EHxaqZtALXlOhF/kumI8PR7VcEkdnYdLnJOqW9NZxlVuJR0WGcns
	xLuKi28ShKENLVyfH8q+8UayKqFU4Dx534GJtnoBoBCfxRk01/b1x/dJKbnQ4JWKk6GEhlZrUuY
	dTe+CZU4i/JKruNE7y32d9meoLbSP0SmWb9/7kV2sWdbyMzJwm8URt/kLj01+az9MOUbNc4N47Y
	/wofDrCWtkxcN7CzEQzR4lxFl5pl2h6sGWCX9YqrXQMNuMWyYYEssyxHoGPieltTSk70lJFIvMz
	M700y+MOGGlpWutfZHrbcSZGB2eL3G6P3I05FHXLKEr/DtJ8H5dIIFGtqPRAl0plOD/wcW2Txry
	ICwPUnIA6v5Bp5x9nNZf5cM0+lLQ==
X-Received: by 2002:a05:6214:5684:b0:917:8a83:a15c with SMTP id 6a1803df08f44-91f2417a770mr75225826d6.34.1794655811330;
        Sat, 14 Nov 2026 03:30:11 -0800 (PST)
X-Received: by 2002:a05:6214:5684:b0:917:8a83:a15c with SMTP id 6a1803df08f44-91f2417a770mr75224976d6.34.1794655810708;
        Sat, 14 Nov 2026 03:30:10 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.30.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:30:09 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:20 +0800
Subject: [PATCH v7 03/23] dt-bindings: media: qcom,sm8750-camss: Add SM8750
 CAMSS
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-3-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=10729;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=6ECCq5dmZrMTJAeaCZmdGOCSRUKo5+lFZTMMouXNrMo=;
 b=AwznNgiH+vGHgSPLrz35eVn+WtJVtKV9Spl8X36JFZNJ77cwosaGCGCx+x7/W5AGQZ7fCKz6J
 /0epyZXXeTkAfInlIKkLYtdNMWRUmV9CqIwUNnEviBzQnkYtKkEKd4M
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Authority-Analysis: v=2.4 cv=ItKL47/g c=1 sm=1 tr=0 ts=6af84644 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=yzr0uxE_ijXmPgLYsrIA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfXxihBqvrbM5It
 vKd+TTiOPHnSW8W/fsVZGlBuYRwbBJByGqvvt+mdaZ/4nlpIcKj+lQp90A5/cb9fpdfaE19nY5i
 YlgKXFcievFR5a1//f82EwyefdWL3XM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX3zMIr3WndVjF
 dmH11OJUha4uhxv/6XbQ2c7Bu2irmhvt7qnzqQYXguSV6vVICV2S6Ruw8mKIvEKAYJbWTrxRGru
 YIFVjmLoNFY8cGY/9N+JmuLe60diDvVN0FPbTeIATawFdB7zEke+Q4VlN2xUCjJz4ffgAaRqvkz
 oHdnKcbACtvne9HT4MrdOI/kdSGWbbCE41cMXZ1eiKpdEOYjfr+vVGnvgs44WV3xSLPypA42OHM
 87IAgnw1u44CCElIW/3DDPmcDWMidDcRwYhlZ/H/q8iqR/4cmkAAT1W1d1jFy5xWO0xCYeAZq7Q
 smKSh13lZ3I+SxOwTVPm9xUZLP4RCeHZVOc47GczHrpjx6IJ4Nyo41xtdI4mmQ+0rZ/K95iP/JC
 p+rp0bYzHzBQBq6NiaLdRai/weOVRdBKf7o75rI//zCtMEatZ8jJSz2N535Kaiq79bvwje/Zes5
 mncjNJZvt0EEgJFnNcw==
X-Proofpoint-ORIG-GUID: rQ6kgC7YIoBl_TDeb6tRx0U6yxgP7uQQ
X-Proofpoint-GUID: rQ6kgC7YIoBl_TDeb6tRx0U6yxgP7uQQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033013_552632_4952C1C0 
X-CRM114-Status: GOOD (  12.30  )
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

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Add bindings for Camera Subsystem (CAMSS) on the Qualcomm SM8750 platform.

The SM8750 platform provides:
- 6 x CSIPHY (CSI Physical Layer)
- 3 x TPG (Test Pattern Generator)
- 3 x CSID (CSI Decoder)
- 2 x CSID Lite
- 3 x VFE (Video Front End), 5 RDI per VFE
- 2 x VFE Lite, 4 RDI per VFE Lite

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 .../bindings/media/qcom,sm8750-camss.yaml          | 297 +++++++++++++++++++++
 1 file changed, 297 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm8750-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm8750-camss.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..e7ab61d71ffbdf653f8a3b92b26035a2b29093df
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,sm8750-camss.yaml
@@ -0,0 +1,297 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,sm8750-camss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SM8750 Camera Subsystem (CAMSS)
+
+maintainers:
+  - Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
+
+description:
+  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
+
+properties:
+  compatible:
+    const: qcom,sm8750-camss
+
+  reg:
+    maxItems: 14
+
+  reg-names:
+    items:
+      - const: top
+      - const: csid0
+      - const: csid1
+      - const: csid2
+      - const: csid_lite0
+      - const: csid_lite1
+      - const: tpg0
+      - const: tpg1
+      - const: tpg2
+      - const: vfe0
+      - const: vfe1
+      - const: vfe2
+      - const: vfe_lite0
+      - const: vfe_lite1
+
+  clocks:
+    maxItems: 21
+
+  clock-names:
+    items:
+      - const: camnoc_rt_axi
+      - const: cpas_ahb
+      - const: cpas_fast_ahb
+      - const: cpas_vfe0
+      - const: cpas_vfe1
+      - const: cpas_vfe2
+      - const: cpas_vfe_lite
+      - const: csid
+      - const: csiphy_rx
+      - const: gcc_axi_hf
+      - const: vfe0
+      - const: vfe0_fast_ahb
+      - const: vfe1
+      - const: vfe1_fast_ahb
+      - const: vfe2
+      - const: vfe2_fast_ahb
+      - const: vfe_lite
+      - const: vfe_lite_ahb
+      - const: vfe_lite_cphy_rx
+      - const: vfe_lite_csid
+      - const: qdss_debug_xo
+
+  interrupts:
+    maxItems: 10
+
+  interrupt-names:
+    items:
+      - const: csid0
+      - const: csid1
+      - const: csid2
+      - const: csid_lite0
+      - const: csid_lite1
+      - const: vfe0
+      - const: vfe1
+      - const: vfe2
+      - const: vfe_lite0
+      - const: vfe_lite1
+
+  interconnects:
+    maxItems: 2
+
+  interconnect-names:
+    items:
+      - const: ahb
+      - const: hf_mnoc
+
+  iommus:
+    items:
+      - description: S1 HLOS IFE and IFE_LITE non-protected stream
+
+  power-domains:
+    items:
+      - description: IFE0 GDSC - Global Distributed Switch Controller for IFE0.
+      - description: IFE1 GDSC - Global Distributed Switch Controller for IFE1.
+      - description: IFE2 GDSC - Global Distributed Switch Controller for IFE2.
+      - description: Titan GDSC - Global Distributed Switch Controller for the entire camss.
+
+  power-domain-names:
+    items:
+      - const: ife0
+      - const: ife1
+      - const: ife2
+      - const: top
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    description:
+      CSI input ports.
+
+    patternProperties:
+      "^port@[0-5]$":
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description:
+          Input ports for receiving CSI data on CSIPHY 0-5.
+
+        properties:
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
+            required:
+              - data-lanes
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - interrupts
+  - interrupt-names
+  - interconnects
+  - interconnect-names
+  - iommus
+  - power-domains
+  - power-domain-names
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,sm8750-gcc.h>
+    #include <dt-bindings/clock/qcom,sm8750-camcc.h>
+    #include <dt-bindings/interconnect/qcom,icc.h>
+    #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        isp@ac04000 {
+            compatible = "qcom,sm8750-camss";
+
+            reg = <0x0 0x0ac04000 0x0 0x1000>,
+                  <0x0 0x0ad27000 0x0 0x2b00>,
+                  <0x0 0x0ad2a000 0x0 0x2b00>,
+                  <0x0 0x0ad2d000 0x0 0x2b00>,
+                  <0x0 0x0ad6d000 0x0 0xa00>,
+                  <0x0 0x0ad72000 0x0 0xa00>,
+                  <0x0 0x0ad8b000 0x0 0x400>,
+                  <0x0 0x0ad8c000 0x0 0x400>,
+                  <0x0 0x0ad8d000 0x0 0x400>,
+                  <0x0 0x0ac86000 0x0 0x10000>,
+                  <0x0 0x0ac96000 0x0 0x10000>,
+                  <0x0 0x0aca6000 0x0 0x10000>,
+                  <0x0 0x0ad6e000 0x0 0x3000>,
+                  <0x0 0x0ad73000 0x0 0x3000>;
+            reg-names = "top",
+                        "csid0",
+                        "csid1",
+                        "csid2",
+                        "csid_lite0",
+                        "csid_lite1",
+                        "tpg0",
+                        "tpg1",
+                        "tpg2",
+                        "vfe0",
+                        "vfe1",
+                        "vfe2",
+                        "vfe_lite0",
+                        "vfe_lite1";
+
+            clocks = <&camcc CAM_CC_CAMNOC_RT_AXI_CLK>,
+                     <&camcc CAM_CC_CAM_TOP_AHB_CLK>,
+                     <&camcc CAM_CC_CAM_TOP_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_CAMNOC_RT_TFE_0_MAIN_CLK>,
+                     <&camcc CAM_CC_CAMNOC_RT_TFE_1_MAIN_CLK>,
+                     <&camcc CAM_CC_CAMNOC_RT_TFE_2_MAIN_CLK>,
+                     <&camcc CAM_CC_CAMNOC_RT_IFE_LITE_CLK>,
+                     <&camcc CAM_CC_CSID_CLK>,
+                     <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
+                     <&gcc GCC_CAMERA_HF_AXI_CLK>,
+                     <&camcc CAM_CC_TFE_0_MAIN_CLK>,
+                     <&camcc CAM_CC_TFE_0_MAIN_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_TFE_1_MAIN_CLK>,
+                     <&camcc CAM_CC_TFE_1_MAIN_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_TFE_2_MAIN_CLK>,
+                     <&camcc CAM_CC_TFE_2_MAIN_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CSID_CLK>,
+                     <&camcc CAM_CC_QDSS_DEBUG_XO_CLK>;
+            clock-names = "camnoc_rt_axi",
+                          "cpas_ahb",
+                          "cpas_fast_ahb",
+                          "cpas_vfe0",
+                          "cpas_vfe1",
+                          "cpas_vfe2",
+                          "cpas_vfe_lite",
+                          "csid",
+                          "csiphy_rx",
+                          "gcc_axi_hf",
+                          "vfe0",
+                          "vfe0_fast_ahb",
+                          "vfe1",
+                          "vfe1_fast_ahb",
+                          "vfe2",
+                          "vfe2_fast_ahb",
+                          "vfe_lite",
+                          "vfe_lite_ahb",
+                          "vfe_lite_cphy_rx",
+                          "vfe_lite_csid",
+                          "qdss_debug_xo";
+
+            interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 603 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 605 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 376 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 433 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 436 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 457 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 606 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 377 IRQ_TYPE_EDGE_RISING>;
+            interrupt-names = "csid0",
+                              "csid1",
+                              "csid2",
+                              "csid_lite0",
+                              "csid_lite1",
+                              "vfe0",
+                              "vfe1",
+                              "vfe2",
+                              "vfe_lite0",
+                              "vfe_lite1";
+
+            interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+                             &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+                            <&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
+                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+            interconnect-names = "ahb",
+                                 "hf_mnoc";
+
+            iommus = <&apps_smmu 0x1c00 0x00>;
+
+            power-domains = <&camcc CAM_CC_TFE_0_GDSC>,
+                            <&camcc CAM_CC_TFE_1_GDSC>,
+                            <&camcc CAM_CC_TFE_2_GDSC>,
+                            <&camcc CAM_CC_TITAN_TOP_GDSC>;
+            power-domain-names = "ife0",
+                                 "ife1",
+                                 "ife2",
+                                 "top";
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    camss_csiphy0_ep: endpoint {
+                        data-lanes = <0 1 2 3>;
+                        remote-endpoint = <&csiphy0_out>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
