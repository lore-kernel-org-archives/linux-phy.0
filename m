Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8C02C61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 05:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7CSrTBdj8kwhUo0KoFLyQoBr0D8CWEAp6zlApplYSRQ=; b=Tl3GjagDSwb41y
	+EAOL+hmH5TlSIe7bq6D03Pl5o0591hxop9lY5zZbIt2lyhpOzvcehNBrAJetpXJXTxN0uBuWfO15
	w9gvyxQhv09CvLe4Fgdt9sUTuPeTyKTQqHfDNhjQQkzWQCj7UsIyJwfU57XStGwwbapKilBkO+/8S
	Tt3CLFXw9J5DcHw5exwYnLGyasLCb4MGw3QtDjUptEsTv5Ioa3dCSgtzQcL2vq5iEmUQhFKqog5SG
	mSP6kOaswHZVVFY0RUQ3DvlWy8xOOilapOEEWs/czEvUEmRYreTdpio55kVUxrqtzPlFcGwjcmDq6
	a0ZO+ztImvk858XpWDGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1zxl-0000000GOSU-25Og;
	Thu, 03 Sep 2026 05:26:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1zxi-0000000GORv-2Kb1
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 05:26:11 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6832xiOe3657552
	for <linux-phy@lists.infradead.org>; Thu, 3 Sep 2026 05:26:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=m9X9wMPV1ZizICLacCYzxn
	SkTZv6Ifd9J8mUVYRMKtY=; b=OV4BnH8U/md85Q6CehBbydEQaoLwJ21pI7rXZM
	wSsia8PfajbvApKbrZ+2TxwpJrfxT9fADu6nOLaad9bh28O7TnnNNvIGwx8dKmeq
	QxS3Uqz5FAQudX7SIABQZBJRD5Gln2HkwcG0R3g9eKHaJBmGKlKvhqzvkDzoffNb
	siVhBqwPnKhqrxlnjmd2MnFa2a3saLGEf9zknZdiOiL9xJB24dXoEl5pvsFMr1Gg
	hydbWJzv4LY5LF7gZsiHCrY+iLvlrBktSetO/A3cHfiEoUD8TSPBXQaeqp6MHBAt
	0DF+Ah2w5/yNU54pNkbKQGHgflpGKl59Nm3QCnF96gvild7g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gemjhbh0e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 05:26:08 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2d70d8839f0so22442425ad.0
        for <linux-phy@lists.infradead.org>; Wed, 02 Sep 2026 22:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788413168; x=1789017968; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=m9X9wMPV1ZizICLacCYzxnSkTZv6Ifd9J8mUVYRMKtY=;
        b=QNEpLWgMyhshEvk85KXEl0YtOvC3Ay+JlSOKx1XTNwdPc2mTBpRfIuEWsnNQWrTzeh
         ta4sadgutKycK4ME/B7A6cU3kdQbpjw8OgAa82dAAsjoJ2JNSUKwWNKWHY7rzc0GDP8w
         QHH16YsuyPFfBkHl1crIhD/FU3VuQ6Vn99ZhOgD+qjZ9bjbISU4A2LL7XAi/UBn4hvj2
         JX086mNx5MnkwolgEzpSo8yqRkjtP8K0wFmrjipQ9u9VNhtU60zpWMgn65nZ6DEpQ0Jb
         E8nc/PELDpuYf8KSrZafO37lXc0nz2m0DlE2V3w53rckXM9/xZsISaYh8WDKASKCrauw
         VePw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788413168; x=1789017968;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=m9X9wMPV1ZizICLacCYzxnSkTZv6Ifd9J8mUVYRMKtY=;
        b=JojER3iIuxvB26Bb+wTW72eKYTBaa567jFqdcm3/za6dgyMOpknv9n4WPF3afXZPOe
         +XqirSdCYR918COIUMIT+mLWLQmTNIgL9fw9Y+voPxw+tzAUz/IaPikp0T25K0vbNQwV
         lpKIEntxn//fZAl49n5OjQQtaWSLHix919GwcSqXJZfSvAm44F7x2gTiDCQfzRRXW1PF
         4V/rID1HHJYWYLLVH5r+BSVZzUcrDrAxC/6MfaUrK+tUCLIPlEU8VRMpgu4BaHCcUIA2
         5lKS9iyFmIKgdRFWB5AJfBJv5hp3O0m4fHlhx+GztI8tjLXc2DnQZNLpUKr5LJbr3a+S
         n7aw==
X-Forwarded-Encrypted: i=1; AKwUvBzJJ8m07yzcWMwyAT5+a10sKCLceX9z4hEO+2Hjv6CycaFK+8irHnGNoM8qyZFvtZishvkDuUA+vWA=@lists.infradead.org
X-Gm-Message-State: AFuF++mVS8nfmRScrx3qIWqig7FNBQxWJB0XN7o7ERLy6etCDQmvr5EO
	nQYpkC//FlpfODM7hmEBIqZzO+v1I4OVE1r9tpHMwVSqj6fps0emqDGS9Uy18mtSNkaphAaNUAg
	1lzTPfrTnMGrAvBBD16+tZUS0SgzFn1geBUiLll83uFkeDgC5Zb7Avna8shS5sJo2XmYq
X-Gm-Gg: AYBFou15eRvrld6RHZ7ruhOqlqobc2oPcrrEg8t1a6yU0bY8pR+ZFWkesmingAFA0Kf
	+aY9VkpcLE5JQiuzgPngr1SuFrF+aMkEQxShitM97+JDYPsSnrVPTaUQYFz7cgWfeEOllWvyLH8
	Jfs9fwbWdsFxeWVUXRwNK/CDiNYmWfcPgtqi5LajNoE1wVPVZitDX0bZGA9TBmCX75u44e/q+eu
	GOJIJC+1xakB7U9f+/BW/Z06la/H1CRK0RD7Z0RgPz/L82vgJ5dlHttzciqzMEeeL6Q2zpADxG4
	rzNI52adQg44Bo5JPIWuKqTEhoyriRU7YmIxVgsU3/RwqzcB7bBgPb2QcRy3087P/N9hl+Cy3PC
	3i3EpKNQXKF6svBLEYNSLd5lJdHivoTGnI+gCDA==
X-Received: by 2002:a17:902:ce8e:b0:2d9:4871:393d with SMTP id d9443c01a7336-2daec79d31amr128573635ad.21.1788413167747;
        Wed, 02 Sep 2026 22:26:07 -0700 (PDT)
X-Received: by 2002:a17:902:ce8e:b0:2d9:4871:393d with SMTP id d9443c01a7336-2daec79d31amr128573125ad.21.1788413167328;
        Wed, 02 Sep 2026 22:26:07 -0700 (PDT)
Received: from hu-vpernami-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33256902f6fsm3215968eec.31.2026.09.02.22.26.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2026 22:26:06 -0700 (PDT)
From: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
Date: Thu, 03 Sep 2026 10:56:00 +0530
Subject: [PATCH v3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Maili
 PCIe PHY compatibles
MIME-Version: 1.0
Message-Id: <20260903-vdev_next-20260902_new_post-v3-1-108223cbcc10@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAOgEmWoC/y3MOwqAMBBF0a3I1AaGiN+tiIiap04TJZEoiHs3i
 OW5xb3Jwwk8NclNDkG8bDYiSxOa1sEuUGKiSbMuuOZMBYPQW1yH+pOOOvt984cypmKg5HzMNcX
 D7jDL9d3b7nlel5WXbG0AAAA=
X-Change-ID: 20260903-vdev_next-20260902_new_post-dd80ee705b52
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788413163; l=5804;
 i=vivek.pernamitta@oss.qualcomm.com; s=20241114; h=from:subject:message-id;
 bh=5ZKeJX0Pe2XaPJokiceoOf6fBWvsj9hj+Iooa05zS9I=;
 b=B23HGy7dwbHuDA1oOEciBPpBzzmHe9K+ee/kapfNyIy7ss298f/jeYd+pwCXjcKc3siL61PLS
 Nqt73YGy42ZDQuXrrLTwTViYjzGkzSINSYFFlNx3D391OJZDfCMmJ+s
X-Developer-Key: i=vivek.pernamitta@oss.qualcomm.com; a=ed25519;
 pk=HDwn8xReb8K52LA6/CJc6S9Zik8gDCZ5LO4Cypff71Y=
X-Proofpoint-GUID: bcHc7mxX9vMSviFuelBgD0EMa-UuqZiN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAzMDA0NiBTYWx0ZWRfX6yg90BZ6ODmt
 p6nZtuxmr5YXewOSHQhlehj1B2x2tX8EV/+Fz89cvN7uNenvHgYWooXpNJ8/exzY4eG01Ofrl99
 0kgypRjpSla56lgN+DNpsPrYG9pR3Lfl7npIfIos8u+5CKbHHtX+D9xj/2WU86UL/sW4tMznBdj
 N5jVDtKg6iJHKrqiqOnBBlpdP/YffkUQJWxJGUVUihViNIzyuE5Xfr/DwqEChORuAnmyR09tlib
 dXYtzvxXqS2Pe1ZZ0jVlxYnTSlpm+gUXz3nKU6BMQsCkmUiKdk86bH8/q+8WDdQ505vLrLi/R35
 uGIfSQN87V5N0aQTZZRFo9iN/fP4Bij1tA3Nrvbhxdbseh6h/FikaZPBMDjQ6YJQ2HOlOSvXTPd
 P9k/VsnvqmX5K6jIbhed4dGXiWhuY+LLnpAGWzO/VBpI4iOroxL8D+x/8ABlX/n4m8QsAJOgtiZ
 BTPRe3kSi75dw+lQFXQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAzMDA0NiBTYWx0ZWRfX/1gyE/h94KfL
 2CKR12OHwo2VLiWJ+ajS1ahVd+mzhZ5PHS+OkUQ0c0TriMWO7ueMQEPBUiebU/J1Y7Rb+x96UaN
 hCGPVLOIR0M6CLoVYuGsf+shz+I+Acw=
X-Authority-Analysis: v=2.4 cv=ErHiaycA c=1 sm=1 tr=0 ts=6a9904f0 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=-EJkK5gzETyOJOMAgRsA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: bcHc7mxX9vMSviFuelBgD0EMa-UuqZiN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-03_01,2026-09-02_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 malwarescore=0 spamscore=0
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2609030046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_222610_730253_8E519138 
X-CRM114-Status: GOOD (  12.22  )
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

Signed-off-by: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
---
Chnages in V3:
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
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 91 ++++++++++++----------
 1 file changed, 50 insertions(+), 41 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index b353b7bfb839ce9cc43ecd9ef96d174a7750b35b..31ba711bb114a43647a242520acd6c2e42ffa12c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -15,47 +15,56 @@ description:
 
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
base-commit: 32b6ef9a5d0eca44f9cd91f52f4faa89f145a0de
change-id: 20260903-vdev_next-20260902_new_post-dd80ee705b52

Best regards,
-- 
Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
