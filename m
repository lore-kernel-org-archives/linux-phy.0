Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF885C982CF
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 11:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zEyNb6cWEm0Y4J112J5G3wuoSZQDjqwicYUrTmazKHI=; b=38g8xVqjL6UqjQ
	5dbBZ4G40D8awHUrtQUlz99+BLEP3QkoguNhtm4Owbgv61HtCh6hvgADT5OCbpC6eby/IoVxwTUVR
	2v4QXE8ub3mW3Teml71IG1KYMPcl7eS2VIUPpd8TuBu0c3MTk+CdAKW7QG89I5HD0kp/OEh5fZwNz
	tH5EvyYqUTNVdOG/CH7ifg251P6Y26ogNPqoO5cD6hVFCPq8UEf+KCYITk417MiNYevTXlVIhIRbb
	H7Q3RWqVmFjf+Iys2ycdohK3eYlVwRStehwN9F1IdXHiBMpol+3mRM9ql19g2FzDUMnNGXbua2wma
	uQeAuvWAMPBISpE8vCEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x79uG-0000000B9bb-1zmh;
	Thu, 17 Sep 2026 11:03:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x79uD-0000000B9aG-34Pj
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 11:03:55 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68H9Zsfe4186752
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 11:03:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=/e7A7scuotZ7PrPwLZLnKw
	qe0D3HalEMbTyx9Wc2ggo=; b=SNxM2gQh0gHEfEkvm21gwrTEsimniXfYghe/IT
	vu8VCY2pZXm9Izl2SqsVrGvrC78ed2yqwXWa1PfyThGdm5d1Uz7ZxpdNVKr0gsSD
	8T3Aqy+CG/n+oBoLbU9lq001Tpk3PF8alfpbovPEVU6RusEQBSjYVNxdEQ3wK9Ds
	B0CpcOjI5sdtcOm5L5pNIL+V7LWPab1tJAoIj0mMgt0X7ux6+jj1sqKgSyVc6/CG
	WpKV70LAuR1xgOp7f1uv0BEUf2IfVuID0uzyHWORbjZpqcRNhUX+xeSZQvkX5oz7
	9NN/tvpIXjAb1L91cx3sQGKlT5+1WcZ1wym1akyuMU3RKfcA==
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gr7uc9ugk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 11:03:04 +0000 (GMT)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-6c1538bc4c0so544850eaf.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 04:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789642969; x=1790247769; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=/e7A7scuotZ7PrPwLZLnKwqe0D3HalEMbTyx9Wc2ggo=;
        b=KzhdkgKxR5R2odui1e5pn16akwD00kKg2p6mTO2Qbd0Kxh8j9Yzxk5jVpD8e9mwBHC
         nscbww1YLXckNncr0bywzG5ZUr7MxWmzPFfILRfLo9QV0FBlQfJJyDIjzM1flMG8VMZ+
         kI60l2o/4/97UDZP4itm9nq2wHPfdqgx2n2RccrHxMi+fYprbtfNrksTwnewZ8jGmZwf
         dMNJa1mb7uYuhuGNd6/Kgj5LXy5Xll9TovDhrwkmfHr8mKgg1/tF24yQtGgIruXUyihh
         lEiOR62FO1vZdlwWbskcSpEhVCtCj9UwzBEXwJBkvvOgqGEZ2RsQPAH5qZuPZ/v1f4O6
         hv0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789642969; x=1790247769;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=/e7A7scuotZ7PrPwLZLnKwqe0D3HalEMbTyx9Wc2ggo=;
        b=1210yaF7a7rezeL+6rPFqnYmGmNZshmXOhtWxrHPUkrhlnCzoTKKw76mYc2/RM3xOF
         OxKdl9aG7s5/5g9cl//ek5kCzHXjYb5+PfRdkccvc+EjxTf32+Vs8ASl+FmmR7o29stN
         VrJqhqTSafTMcBewZAjru1YVw4xXr+yX5/p49GCcYhLBGQdAXxTl1x7JCoECK9S5PUY8
         4ZEfzZIVtGjOCwVEZY+wkBFi5qMA8/OGdtkwkFeSZajNsuYCtInw+fFdZsTZw+rgZtOP
         xGlhj6XgE3yjhNQOq2XfZADrfTomRswQeJE0Zzq5t8tDB0zxu6bv9gszpEFKcQ19c9n+
         8VMg==
X-Forwarded-Encrypted: i=1; AKwUvByYCbbktHg2e+7O4Y8pvDDqqqO1rKF8Cpex3Z4r/fRNXyBIMbXJrhaIDzBMBMTUYpMxl4OofwVKm+s=@lists.infradead.org
X-Gm-Message-State: AFuF++l2+jBttuYmm0bLIJcbhRpPtM8zzvrRk3cdmw0B4tptb+RjxtVr
	73PqvmiGEJjjvjdiNtHORKnbzgq7DfccKYF5QToKEqsajNGtI9xzOTD9Z+X+Gz3P1NhnurNplUH
	eGYFaii8kgJ2erFSr21YOcnXTonQlGBTFU3DCIXmhfsk9/evnPHcpdEL9ATDpqFYya1WAnBYOO6
	p7
X-Gm-Gg: AYBFou20HNvizDcU+GjmzL9ODKcYZLzAz7sw5J2KWbRay1hyG9PcSWF9jKkZlfhTtWn
	40PUhZzVwVEywKK5ACs3VlOXK4zEQF3i9azRUgAT1DstPGNS0FKASjYigLXMwZGqV4Fa8ZPHX2P
	Q05PW6Cufoj6NZVZa9e7Ta3SY0FZP0pYl4b4iPDlLp4n86cb2ezc+Bh8ggZF+owPlwWcmPyehdy
	OMUzOS5VuzAaIJZyWzB3D7aelG3jnBEhsm1ezm3NA5lexhRCQEIS9CZIi1+T6LW5iWdzgL7LgUH
	Og9PVPt9bcWSybti+lvUYdrfOiNdjLxNDuCqyAnzWIdJgTVWSnuKphKuxsesxBRiPQ9LnIvNRI9
	IkE+Vz2Aimg1UJ21ruL+W6yC2R4iZO4ihvH6daQ==
X-Received: by 2002:a4a:ee1a:0:b0:6b7:46e9:970d with SMTP id 006d021491bc7-6c7d4af272dmr5484982eaf.61.1789642968537;
        Thu, 17 Sep 2026 04:02:48 -0700 (PDT)
X-Received: by 2002:a4a:ee1a:0:b0:6b7:46e9:970d with SMTP id 006d021491bc7-6c7d4af272dmr5484937eaf.61.1789642967908;
        Thu, 17 Sep 2026 04:02:47 -0700 (PDT)
Received: from hu-vpernami-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33bf5b2753csm29806029eec.31.2026.09.17.04.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 04:02:47 -0700 (PDT)
From: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
Date: Thu, 17 Sep 2026 16:32:35 +0530
Subject: [PATCH v4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Maili
 PCIe PHY compatibles
MIME-Version: 1.0
Message-Id: <20260917-vdev_next-20260916_dt-v4-1-e2f22f67646e@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAMrIq2oC/y2MWwqAIBAArxL7nWD2MLtKhJRutT8WKhJEd0+iz
 xmYuSGgJwwwFDd4TBTocBmasgCzz25DRjYzCC46rirJksWkHV6R/arTNrJ+4aaWSnFsDeT29Lj
 S9X3H6Xle+dZEqGcAAAA=
X-Change-ID: 20260917-vdev_next-20260916_dt-8b0c37990e5c
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789642963; l=6218;
 i=vivek.pernamitta@oss.qualcomm.com; s=20241114; h=from:subject:message-id;
 bh=iWkCu/y3GF96z/dfl8cQBoWoQJrys+dS2lwwoXdC6ts=;
 b=Aye8HcLkEaWZsinGu5odswmYBoOefcEiw7l+qvqdL0GiYpHrhLupyRY7zga17bBhi6bC3yu1u
 7q5qv0RrJzqDL4UhHEvaUF9iZIik8MEALP0VxY4+vs/l+hJm92xJoEl
X-Developer-Key: i=vivek.pernamitta@oss.qualcomm.com; a=ed25519;
 pk=HDwn8xReb8K52LA6/CJc6S9Zik8gDCZ5LO4Cypff71Y=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDE1MiBTYWx0ZWRfX+Z0dc6u/16xh
 gnXk0ujxBEeT5RQHiPrWdPgGSot6jxGWJSeZT08+j6cOnfe+innTYelaExr9AKY/rEnS7S6uF39
 K6qK+NuWfsP2RagYKrR6QxcEmzBu2dmLPI4G5W0h7AeX0SAcO6ZC15tT/aSIm+urZcnTwo2qM5Q
 eFlGuYlwMtA07jABm78qMT0uUD9nO/49oITUv4kcNHccjpxzpIL6jtOaqM5enkaS6+GhCbIsxc+
 r9eeQem0rt92J+U2o+c8IVntB8jF34sK1hNShipMoUsMOgny8LLmFEB+eGLD+ggVOeK1y4mSdT3
 XuV2pHrWGWiwfvS3EEmbm/7Me0vy+9LA20nFJvZaPSNVY6W+Lhd+uY+3oJHXGwWWQaSe51EBKb+
 /ZwelSvgiSxKohMDAzm2Odr9TSmxrwysvI06VXr1M3j0Z3kq5kxWqlpmel6JoKx39gsbOJcZfCd
 w239L+CNDOmo60Pl+6g==
X-Proofpoint-GUID: 4Wkn-pFnpa5UTcjVjxErRyv7DFhr7AAJ
X-Proofpoint-ORIG-GUID: 4Wkn-pFnpa5UTcjVjxErRyv7DFhr7AAJ
X-Authority-Analysis: v=2.4 cv=F9zC5ahN c=1 sm=1 tr=0 ts=6aabc8e8 cx=c_pps
 a=wURt19dY5n+H4uQbQt9s7g==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=19cs_hUoupj01Z9TeD4A:9 a=QEXdDO2ut3YA:10
 a=-UhsvdU3ccFDOXFxFb4l:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDE1MiBTYWx0ZWRfXz+tDSJ3JjVBQ
 NYbjRMT+BNiMdse3xUyj1fePe6GklJ/pKEXloYLFLGFifyyuBiQm6TezfP05f+3dd9DmnNUA4sQ
 ImC3m07Awpr36O//ZGak+xirAa2qPUg=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-17_02,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609170152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_040353_792947_B89AAC46 
X-CRM114-Status: GOOD (  12.04  )
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

Add qcom,maili-qmp-gen3x2-pcie-phy and qcom,maili-qmp-gen4x1-pcie-phy
compatible strings for the Maili SoC PCIe QMP PHY.

Maili reuses the Hawi QMP PCIe PHY hardware, so the compatibles use
the two-item fallback format with Hawi as the fallback:

  qcom,maili-qmp-gen3x2-pcie-phy -> qcom,hawi-qmp-gen3x2-pcie-phy
  qcom,maili-qmp-gen4x1-pcie-phy -> qcom,hawi-qmp-gen4x1-pcie-phy

Since the allOf conditions use 'contains:' to match against the
compatible array, and Maili nodes always carry the Hawi fallback
string as the second compatible.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
---
Changes in V4:
Rebasing the gerrit on to the latest linux-next.
V3 patch link: https://lore.kernel.org/all/20260903-vdev_next-20260902_new_post-v3-1-108223cbcc10@oss.qualcomm.com/

Changes in V3:
- Adding the falling back relationship between Maili and Hawi as per comments from
  Jingyi and Krzysztof.
V2 patch link: https://lore.kernel.org/all/20260831-vdev_phy_next-20260828-v2-1-08fe5dcd4b86@oss.qualcomm.com/

Changes in V2:
- Rebases to the latest code.
- PCIe controller dt-bindings: pci: qcom,hawi-pcie: Add Maili PCIe compatible
  change is already merged, so dropping change
V1 patch link: https://lore.kernel.org/all/e5516c61-44ea-4224-9da2-1694eac10fec@oss.qualcomm.com/
---

---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 93 ++++++++++++----------
 1 file changed, 51 insertions(+), 42 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index d54202f6a897deaccfca20b5975ba93ed363296a..c0a3e1f160ad4fc65333f02a126a3d924d2b4474 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -15,48 +15,57 @@ description:
 
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
-      - qcom,shikra-qmp-gen2x1-pcie-phy
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
+              - qcom,maili-qmp-gen3x2-pcie-phy
+          - const: qcom,hawi-qmp-gen3x2-pcie-phy
+      - items:
+          - enum:
+              - qcom,maili-qmp-gen4x1-pcie-phy
+          - const: qcom,hawi-qmp-gen4x1-pcie-phy
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
+          - qcom,shikra-qmp-gen2x1-pcie-phy
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

---
base-commit: 0d9d0dbf2fddcff5859d623e90ca73c4054276e1
change-id: 20260917-vdev_next-20260916_dt-8b0c37990e5c

Best regards,
-- 
Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
