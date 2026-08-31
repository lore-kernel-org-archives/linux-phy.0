Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68DD6C61DF0
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 06:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ciIaaGW+tH9DGfI+NZyQ9pp/lj1WmjaXtxc6VZp+FAY=; b=kqx5qZyNOBgHbw
	IgZuXsKkS7f2SSgNlGWWR6Z1Iafv4rpxjRfvhG4UnY6RcSnHLgW6E6RNnSZeoMOPx9KR3D4cLHXcn
	l7ME3JHI0Tojq5jeOTnVzaUq92Wt9IW/RbwdIjdIMCmnEzz+ZM1u3zylFc6usLVoxRJGoYrOUszbW
	1XbH6j5q6fYm/6uqLipYw07XY6T4kc74qQ0xAjViTnTWTktaaHmcJ/647/ummAj+g9S5pxQdY1KT1
	V/4BHJFxJIpQolDVIgTmlLTtXpPoWD2HbY1ef85AD5IRkFZ9t4dCxs499e7vABF5z2nHdUTJdIYId
	vL8PpadTtuOM6kyBG4oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0vSG-00000008bea-3NZN;
	Mon, 31 Aug 2026 06:25:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0vSE-00000008be8-0QBY
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 06:25:15 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67V52glv3679001
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 06:25:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=6juFQN7B89zvS8ijt0JeAa
	HNdtu+E0yqcKN77EHc6FA=; b=YjSUdQM4vCA96F6RyNPJZmnb5OgUX1VwtHf4Ie
	DLptRa9hhKKl77OVdL2AYWo2jrf1hrng3lG9pfBIuyT+dQOFZ3VS1SuM98V41Fee
	IZ5gkZcuQZvxPQAQEoB6Q14z54XSeyC43ciJSxh5zeA4wrhjRdo3hUArLJUpef66
	fn/o13UiN1DDnzUdsCC75I12YFkzIAmO1WAKrl22niUSOU+1RfS3RELbAQRsnKK1
	ivMey+Ws/FQFTEY/EFezEZvsozTNiFM5j4oop7WO/E/5eQ9OiQaNlVZhAbIUdNiD
	sEqsZbnw3UWgGvT65WyAjqKzq5V8OPxGRjMcJa/gT2JnPkzA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gcv8h1551-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 06:25:12 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2cee1ec30f2so38295155ad.3
        for <linux-phy@lists.infradead.org>; Sun, 30 Aug 2026 23:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788157512; x=1788762312; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=6juFQN7B89zvS8ijt0JeAaHNdtu+E0yqcKN77EHc6FA=;
        b=Y9qJjOpNLCBU447l71kNwEz5ptlEa2rn7agkCsD2e/4GBiV5+9tgzfKf5EcNAEIy+0
         q1vqIwZSBZIF+UjTsWZZo+rxhuRzeihZwWLbC8udjOlVf7iyfx680CC8OOWJhrd1FvCA
         fDEuyDUCUKeb1fxFWz7ByekLi7O2HPc6fsyV5EoA4HfZTcx8q3gw9KJ+PHvHKP4j8UvT
         ySMNEhDH/F7OBoEx3QQ6LLNiH7h0OLUyiC4vWY3SISRy2n1hL/whqnan/0kLvGOWM7w8
         7EZccMpSgEM/f8+Q9y3kcX6bpRLHzbqUXwY9J5XVyi+8sduhk39MRSDe+ZPrtMfPrYRQ
         w5IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788157512; x=1788762312;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=6juFQN7B89zvS8ijt0JeAaHNdtu+E0yqcKN77EHc6FA=;
        b=BAqyVAU1WwW1BFvUZEdvbxLsFnzKzdLh9j22QmbLp0/mTsvVpLH7FNiwsymlAl5B5v
         X/UB/jQUOY+09YKjPypGWEhA0YXZYlM0IjvkZyFVabr9dRBwv0mbbWWFpsxAjh2+8mx5
         ZHw5p3OH969iLE6ePfh8i86S5HE5l1NCTRENl2l9pSNXvlebgO/xO+tFjtFfTSUyF0w1
         j5TZHLXytdQHjBd1ec5kqvwNU8ak0gutm556J9Qm3WOuRberABr22T28c9FnhywysWI3
         XsSV983C95OjRbnZpFZWg+xqBryRpb4ps1MWrIp+7Y5i7zRd5YdngX6FuM+zUjCutVur
         ztoQ==
X-Forwarded-Encrypted: i=1; AHgh+RpgPBSw60LqpwNTksbty9Z/xH/2WaATmlk8mtKPILRoXrGrV8UaRn9F9KPj/mh7l7/p/amVPef+r0s=@lists.infradead.org
X-Gm-Message-State: AFuF++nE0VutK0mkLu6jOITUWIx2VP/WDS7cHISJwFVLLbB4hbbK66Or
	lalE5XgNLeOSRu6rHL4AxMxoZn0NL9aNl8ac7cvgKI71Gin0qEgQUX6PM07I1d+BWHsQ1hhgnRk
	PipdThwRHqTWwXee7hnMXpuetOSzqHdpRJeHhzqgrJTxvZbTI2/fMeYaFaR6N+lWm5Gr7
X-Gm-Gg: AR+sD133/P0/MeFnEB7cdrXEtAIA5hBXvzlOKLQTHS1af+fG4nV1y58HaohYAtiQyGZ
	8TUuXSRzT5djkINEXX8DOjKEalaB0QrtoVAVgfKzrb4UiNNIJVe380PGwPpYuvaM3L/l9Av/sNo
	lnskX3G6zMxHZmMWB5Zrqz0//RJSvl7C3k0p8fk/ZVUhtI1JXyd9CoMNyPgz2GhO2/5oWvIT/G6
	EjC6MIlg0+5MIsrM0rK0Oo9qi4DmKWWK1mNCsS12YPCdgQa8b3Tac9ni45Y5c14hBA3nQ+aYjCJ
	5aNP7QvhuC2Kst39epMdYcqt2SKvypTsMikpgS9IOsHBZooJfBBbcGjwiyDab1ILk/Q7F85f6Fq
	Bd+rZIODiSCTyTvmRHqHtLk+CcFBHJgo3kDygtQ==
X-Received: by 2002:a17:903:19e5:b0:2d9:3636:d01a with SMTP id d9443c01a7336-2d93636d111mr30661115ad.15.1788157512234;
        Sun, 30 Aug 2026 23:25:12 -0700 (PDT)
X-Received: by 2002:a17:903:19e5:b0:2d9:3636:d01a with SMTP id d9443c01a7336-2d93636d111mr30660215ad.15.1788157511696;
        Sun, 30 Aug 2026 23:25:11 -0700 (PDT)
Received: from hu-vpernami-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286f95a160sm26745643eec.18.2026.08.30.23.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Aug 2026 23:25:11 -0700 (PDT)
From: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 11:55:01 +0530
Subject: [PATCH v2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Maili
 PCIe PHY compatibles
MIME-Version: 1.0
Message-Id: <20260831-vdev_phy_next-20260828-v2-1-08fe5dcd4b86@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIADwelWoC/yWMTQqAIBQGrxJvnVD2Q3SViDD7rLex0BAjuntSy
 xmYucnDMTz12U0OgT3vNoHMM9KbsisEL4lJFrItuqoUYUGYju2aLOIpfi07oQy0MnMDPdeU4sP
 BcPzGw/g8L3EblA9oAAAA
X-Change-ID: 20260831-vdev_phy_next-20260828-afecafb5ecb4
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788157507; l=2568;
 i=vivek.pernamitta@oss.qualcomm.com; s=20241114; h=from:subject:message-id;
 bh=eHaooIe9fijaq4d5eAGZknZQ4gx0GVbvuDkAdxFPZJ8=;
 b=BlNjYw6tI2YPK+8dyV1JS/ecPHek3XVMzy34tt3S0kuQdZO3C/RKtVepS51A6mNhriCcthGsk
 AYPBkMuNPe9D9ud8HYeUg1ELdm+VrpPyGcWvf/yiWemC1aDVdCEM7nG
X-Developer-Key: i=vivek.pernamitta@oss.qualcomm.com; a=ed25519;
 pk=HDwn8xReb8K52LA6/CJc6S9Zik8gDCZ5LO4Cypff71Y=
X-Authority-Analysis: v=2.4 cv=DY0nbPtW c=1 sm=1 tr=0 ts=6a951e48 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=IvnoF98jkOSEO0IU3sIA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDA1MyBTYWx0ZWRfX4UsSzLu/0fW7
 +y3vjIpqtiExWbd3Z4SdO8RCryKTk/5MjWEHC6zD/5mCFDVSgJaeDnNHpp3EHA2OMEpa9xo3hyv
 7Cv15U6RrvyPBO5pW0kHoJexXVvWPj26QI6Ajbb52eg9iG7Ph8jYuhBEGnw8l9GbDXa7gV3FWw8
 A+CPeEpcCMJNraftFjmUEYu/CZuUVAmBKwY+09B3oltJvCAKWrvAonDgWdTQzojqINagPChEG47
 ggCvKF1ZMM59TN6G/UIPoOqY4jVeD//FYKvW4urKm3Rva39TnVeXpUfmb/LKGxeM1pr1Wki/YN8
 Q0d9adYcSFy1QwQ5xcEkaTcy0TzUgv214RphANHWgDYF5nPGp4RL58FzXo6AU+ayauVF1w3ipJS
 OEDf+0aaXF3RUdQIszk1F6X6xDCol1E6Oki05wS2mLlL7WuEWQfjNqLV4pVnINz/fKkHJpElkKA
 JeHOkZCIsXUxe0IqquQ==
X-Proofpoint-ORIG-GUID: a5R4IHF-cgokaKlO_cr-IIqr-Qi_qpAT
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDA1MyBTYWx0ZWRfXxlqsUp7qMpWM
 N/KPVDrLS1Nm/1HiqGMMhgHPHicDo57JH0GrUyhhlorO1EZQfqiWHkq65RH4ez1x8AOB/BqvRlR
 Nd/y6Q3jYuoPkslY012eK11yH/u14Bw=
X-Proofpoint-GUID: a5R4IHF-cgokaKlO_cr-IIqr-Qi_qpAT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_02,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1011 priorityscore=1501 spamscore=0
 suspectscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260830_232514_152964_745073C9 
X-CRM114-Status: GOOD (  11.20  )
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

The Maili SoC is a derivative of Hawi and shares the same PCIe QMP PHY
architecture, allowing reuse of the existing Hawi PCIe PHY DT bindings.

Signed-off-by: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
---
Changes in V2:
- Rebases to the latest code.
- PCIe controller dt-bindings: pci: qcom,hawi-pcie: Add Maili PCIe compatible
  change is already merged, so dropping change
V1 patch link: https://lore.kernel.org/all/e5516c61-44ea-4224-9da2-1694eac10fec@oss.qualcomm.com/
---

---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index b353b7bfb839ce9cc43ecd9ef96d174a7750b35b..701f0fc178220da5e3d2748330179c2193ff7418 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -23,6 +23,8 @@ properties:
       - qcom,hawi-qmp-gen3x2-pcie-phy
       - qcom,hawi-qmp-gen4x1-pcie-phy
       - qcom,kaanapali-qmp-gen3x2-pcie-phy
+      - qcom,maili-qmp-gen3x2-pcie-phy
+      - qcom,maili-qmp-gen4x1-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
       - qcom,sa8775p-qmp-gen4x2-pcie-phy
@@ -202,6 +204,8 @@ allOf:
               - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,hawi-qmp-gen3x2-pcie-phy
               - qcom,hawi-qmp-gen4x1-pcie-phy
+              - qcom,maili-qmp-gen3x2-pcie-phy
+              - qcom,maili-qmp-gen4x1-pcie-phy
               - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -232,6 +236,8 @@ allOf:
               - qcom,hawi-qmp-gen3x2-pcie-phy
               - qcom,hawi-qmp-gen4x1-pcie-phy
               - qcom,kaanapali-qmp-gen3x2-pcie-phy
+              - qcom,maili-qmp-gen3x2-pcie-phy
+              - qcom,maili-qmp-gen4x1-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen3x2-pcie-phy

---
base-commit: e30626823a406725ce29bc75cb8ec467d3e1e326
change-id: 20260831-vdev_phy_next-20260828-afecafb5ecb4

Best regards,
-- 
Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
