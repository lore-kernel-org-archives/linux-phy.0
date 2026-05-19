Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A79ACCD4F54
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 05:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJFnCbZEmXkdx+qyY/wqlCig8QhQgjGV8PF4/ojOXCw=; b=FhEM7scjDmzogM
	cOtwbIqI7bzlZqb2/yRT4yvrfTHbeNpzczUpPXZOhJ/gjpxillUfdh+L8YsWnfrAO1VImYXuaq42v
	HfAsdPCXVHVyltnImqz4pUmNennyp9E4NQPoJ3eMXjeq1NgbuWO12z1fqgZm8tdywvovRGlSp42uv
	aHNSaSc305fW995A2v5pPS8qvof5Xc2gH8+pYCDJbqWOYNQ/MR+c3hED6kuEWfsst0MDXPlzShKN9
	xHF7Qdw45HD0CW65i+MbpWVzl93CR4/5laWWSMrHuwRNoZ2kSvyrfn35uqjASIvDjfL31OYLxP13/
	wJtwQQYDQzmJRLw3HU9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDId-00000000EKu-0cWq;
	Tue, 19 May 2026 05:47:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIa-00000000EJW-1gHi
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 05:47:25 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64IL9eZE2891865
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VZ0NwMyzJUB2GQ7WiRH1btiCyEC/1XQsRKRIRIi2gqw=; b=ivDzhSe2Nl7+MLrD
	QPsmkAixAxCKAGIhTthgVrTiy7Oia7h6wbWrl7zoZ5r0OBs1aMlqFtmxA1YtHxQ9
	HUBWUvpVbfqs5B5tgT/Y+FMXVuVsEAsW9nl83P1DCt5km4Z52s+ziJv1GdxvuP+x
	wvxNW2McNEgoNu8s/JIpGw4e1EUlsZyjEKkTZwX389rHeP5uNetGpvniu2qG4N3j
	w9fPN8f1F7jXmLZP23EgH4VKpNv+ldLfWEbHfbXdmxMKauyt1y2vtitzhoed9IIK
	X/4Qh9AfLs6yBG9BzNm/PT/nWTTF1rlLMNlPmPMjiBeJrjcYyoenDeXDb1/MJq6o
	toQWaQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e7xk1ckvs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:23 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2ee5b73c5f2so2442555eec.0
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 22:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779169643; x=1779774443; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VZ0NwMyzJUB2GQ7WiRH1btiCyEC/1XQsRKRIRIi2gqw=;
        b=D2fRpBl0OCCW/aFEQMJ7vCy7//ivk7HCTmxZD2+3fkQodvgaQnkvE09nnt4wsV5Vbk
         7f7TnJawPzC5VzOkE+wKIyXrl4aj95V5S8o78Odx2qSNz25/xP+6mvBB8/RxVNDoxx4Q
         kLkHYplRWXB8lDcmHGvoTyt1l9Z1bjHFRK3UWpq2znBbvaHjeRU8S6smRkbg8GP2otqY
         ZknqUifowAZsP8m9dlecIiEJmvxfoDrQfe6cGsOinNyOYu2cthhkDvjDTWzWF3MhBc7/
         mLWIpIoX7Effbk7OjAQBUecyr5EuOKz1MwVa35vRrtf+J0PSEAHHhWDdH6yoA5r6Mw+4
         /frg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779169643; x=1779774443;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VZ0NwMyzJUB2GQ7WiRH1btiCyEC/1XQsRKRIRIi2gqw=;
        b=H7PL20gC11zzrZjbyn6a5Q0tE0Ip/sWE2qL25mghMMXemRciWEWxc+5G+dMj6w5jN+
         rIXM06I+wpU4hxfDrDuq3ztAS401OMiH+nGm5JI8yDo/e3hCjs2i78rcJGu7oZdmCWtm
         HvuBTjhvkdazjs0+Re9+CsPRxtOqh5JDFErcr9yXbsE2uyNggfB6DDwh3J8GEWRZkoyQ
         UPIQsa+y93c7d+dqCCKWixEupqUn34+wF8gQgdkdAMSFcfQRP2iSI7PpvdTdkWBzfF+n
         1ivWKPbjClJzV9LF7ZXcR0H+m8qge0u2dRYatY2X5D6y98ojDATj27kgVgRpxlZZp1KM
         VFpA==
X-Forwarded-Encrypted: i=1; AFNElJ+EAt1PJ6g4pPW7MKBdkER/G+8fSdZVQJtjQ0Lxx2H2BXwnnXXNO/0bHBJNKaGHCXOU6Ijlbqd43OQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXHMBY1jT8eDiE/oHHwEMb+wjDEw50cuKhjI3VyfcpReI/2asH
	dUNS3UHkVIdmr6zzDRRC62RScWZbxUMxcEmGNIBqQEo9BJkELya7s+87DVvyQk0eYiEb4qyf6wk
	CcbWo7L2WoDILDSAPfsY3Ixpkx99abXIS8d3uNgKDBTH/NPA0dVa8/2KyCfmPzQJ/qsDZ
X-Gm-Gg: Acq92OHREgfqZfn7vmUAaSFLertZGM7TmbytIvnnmcLY3B1FQ/WAFc+ktQQKTsBP+/G
	HSp+xrEDlZXx/TiLWm/+F/NsedzYhFEJjlauGfkeErLXIgPBQCBe+xhW+2YuUBY+zO3gOJ50EIK
	OD0JhAyjbODWjD89+W3ODlOrqhEG9LUj2w++tgG09UTWpBaPoNU0aq3SQuE2qxecN92O/6Bn+iT
	4ttcDM+dZA3Rf0eARZl6PmqvWM82vu2wVOSofl8m3akK/V7N0gBE7WxQwrVpCyv/pCwK2m0zKEL
	1YvcT16TAW7b1ECC+3cUDgkT754nt1e/7n3EJChh9Vgj3kiD/3gRPnHQu3fqN/ftR57oDcftVi5
	qLhTia4Einl8zImqCBG+7y78POdk4E2kphT55e82BZMJx+qswgpSiJBv5UUGcZS1EJc8x
X-Received: by 2002:a05:7300:6429:b0:2df:7fe3:96a with SMTP id 5a478bee46e88-30397c321d6mr9406025eec.0.1779169643325;
        Mon, 18 May 2026 22:47:23 -0700 (PDT)
X-Received: by 2002:a05:7300:6429:b0:2df:7fe3:96a with SMTP id 5a478bee46e88-30397c321d6mr9406011eec.0.1779169642830;
        Mon, 18 May 2026 22:47:22 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-302944ffdf0sm16288683eec.8.2026.05.18.22.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 22:47:22 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 18 May 2026 22:47:13 -0700
Subject: [PATCH RFC v4 2/9] dt-bindings: phy: qcom-qmp: Add PHY selector
 and Glymur link-mode macros
MIME-Version: 1.0
Message-Id: <20260518-link_mode_0519-v4-2-269cd73cc5d1@oss.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
In-Reply-To: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779169640; l=1262;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=LGL4VHxqKITnhSL7axVc8uFn3R+u5JVC+56a547NSCM=;
 b=WKP9YnTK4vYGaVO0+9dyaRHPMS4ebEb4bYteVtJj/gWytZ4fE/tYJGj+u8VCDw0E3kMnA+dHj
 hhX8CbwrCUKC+GdufP8pYpGn6xxe6xjagIVekpe8polHzLcl9JUMe7c
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: ISg1NLbkQO5sWO8imoO28dxTYlOtB3p_
X-Proofpoint-ORIG-GUID: ISg1NLbkQO5sWO8imoO28dxTYlOtB3p_
X-Authority-Analysis: v=2.4 cv=BICDalQG c=1 sm=1 tr=0 ts=6a0bf96b cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=B0oFbsU2YAVyZoOp_L8A:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDA1MyBTYWx0ZWRfXxpx/z2KUNGRG
 1+E+LFN6kxXyjLkM8vS6rbCqGrw2HBC8xSzGLp7AMYPib+32QU67fv6xtr+6lIibtFBuwpRpHAy
 qJp8GrxWy0m5vn+lp1StY27UyGsE/vinrPThEq02gZL9h2FdyZYvJ+l6oEC4P0CEcAzYZIN0Uni
 57+cguk0ysEtq45NNURIG75MdjFrsWrbDR6ovs6wkZJ3n53+S467/vgmL48z0nQ4K47pgNm41vm
 BGCJaaGcJE+p/VQzU3UaIsSL/9QHX77KlqBjJzd/RBFvoNyB8QdwVcbI1OXDbJNaK0tYd9t38uW
 P7pbFZ5zsyI2PioJfZUXbJFYT9YTp5kqtnNVXyUpACuSaEaEbJ+G8baTvXM75c41C0JE7qWBnIr
 QaZeMzrlSWq2Nf5J2M9VttiBHEC+q7bpOLYjNSkm5zoVBm5rtj4Adjwp3ITob8qbIQ8qVaags1k
 RThZQMDroUps1MAndqA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605190053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_224724_450883_762A0B73 
X-CRM114-Status: GOOD (  10.63  )
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

Add two sets of constants to phy-qcom-qmp.h to support upcoming multiple
link mode QMP PHY:

- QMP_PHY_SELECTOR_0 / QMP_PHY_SELECTOR_1: generic logical PHY index
  values for QMP providers that expose multiple PHY instances under a
  single DT node (i.e. #phy-cells = <1>).

- QMP_PCIE_GLYMUR_MODE_X8 / QMP_PCIE_GLYMUR_MODE_X4X4: link-mode
  values for the Glymur Gen5x8 PCIe PHY "qcom,link-mode" syscon property,
  selecting between the x8 single-PHY and x4+x4 dual-PHY topologies.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 include/dt-bindings/phy/phy-qcom-qmp.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/dt-bindings/phy/phy-qcom-qmp.h b/include/dt-bindings/phy/phy-qcom-qmp.h
index 6b43ea9e0051..befa76f8392f 100644
--- a/include/dt-bindings/phy/phy-qcom-qmp.h
+++ b/include/dt-bindings/phy/phy-qcom-qmp.h
@@ -21,4 +21,12 @@
 #define QMP_PCIE_PIPE_CLK		0
 #define QMP_PCIE_PHY_AUX_CLK		1
 
+/* Generic QMP logical PHY selectors */
+#define QMP_PHY_SELECTOR_0		0
+#define QMP_PHY_SELECTOR_1		1
+
+/* Glymur QMP PCIe link modes (for link-mode property value) */
+#define QMP_PCIE_GLYMUR_MODE_X8		0
+#define QMP_PCIE_GLYMUR_MODE_X4X4	1
+
 #endif /* _DT_BINDINGS_PHY_QMP */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
