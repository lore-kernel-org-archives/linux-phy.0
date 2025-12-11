Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C58FDD41C14
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 10:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/nkVK6ADc1EzAN98nE3xK97ceABkVRMo1XWSR86UaB8=; b=T4VYdAIjlaX0Ji
	IVr9ObKim3vYWCQgUscnXaaEswAozlOZf5F8D2X/fTl7fKr1GldMlOODLLmgtU6cvD3vxzBcRJb+X
	F+cR+pq5CtdLkdZUqohwPRXoyhPY+ixMA1PgrpI0HVauH7IX/OnKgXNSUiSj2xSE6ki9taaRd+ubK
	vjyfpwyAJjbsV0fSGAYvuTdnmlMzw4Puk7e0wZrgVsfHHrIKy4yyRNwoLwHRVdQ9te4yrDrpJF6yr
	VoJ0B0sEKD8F6cgi0JRrl59x+pwEZqq4dcfLpuPP0ydfp9mtwc4y4ULzQtPGP6DqmF46vChKqEXPI
	aKGxO1VcT38vaI5lPFzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTdjs-0000000GTcs-2Dpm;
	Thu, 11 Dec 2025 10:17:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTdjq-0000000GTc6-1uTi
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 10:17:36 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB9ZOZl1469782
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 10:17:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=yIoqupIbLitrzZ0z6uCE2i
	S5VaCJD1kUszqIjbamWQU=; b=GBTxvHDTYnb4WISoTjvwYIjPcBUXk7RCI2Aaym
	B/ztAwIrrSQwBsvC0ppDgzUnQXas4Q3pqNgRsS7TFKqByYYEepgACQq3Ig8NvtgM
	1EzltAFP23wxi6Jl5PGc3pv+XWiPMWgUXN6yki2cAnhWPRtqUr8vhloFiQ4Bc0/i
	Jf3lnPB0fDejMdVKf36S1r4i7MWIPQ5WS9QPVqENlg9uR45hi2mwvwqrX0+hAWKe
	5GFhX9KbbAPCuCBmOZht9cuY502CV227awd+ccRj0bpFAxF4z/oLwSn4j0RbQHEl
	FVHoH4Jri3PFb5tjrqWmsmN+U8rB2oQPLPA24NT1+CLaVREg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aybhpb64k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 10:17:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edb6a94873so13578521cf.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 02:17:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765448252; x=1766053052; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yIoqupIbLitrzZ0z6uCE2iS5VaCJD1kUszqIjbamWQU=;
        b=f57X28GC/cnGu115EMXfWDoI7KNaTAB+jpeWFtlxF8KDKJZoEs6hwDoR97zHnp6JRZ
         4xZhRHzVIrPTcrS1qe2KTcEOBTOh6ds5duYoeZKSYZk65PFeBXHUQ12y3nY9Dnhr8WUy
         51hcHu5xGNA36NHb84UPyLrH6mlNdILbtWCz2PIvqpTfZWXAJd81SiHGoBV/l+KiAU63
         uQpkNnEXlmvmpnw10CY9j3Hlar3lpTgrrM8fRh0NtqRXBmffr3EfSs4+NcJdf83uqdz1
         ZHiFBXgG8NN3uC4lqa8M13zIO403b5UqldR1m1eeLGMDj7rvj0tNOy8fxLXZ79aWSk+F
         CPNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765448252; x=1766053052;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yIoqupIbLitrzZ0z6uCE2iS5VaCJD1kUszqIjbamWQU=;
        b=HJqB6z90tPgvjJS6J7SQlpJ4L6i5S/16d5FNzzxalyr6aTVbczn7l2H1B8GgNdtsBT
         1S995NZpCo7xwgHySZ/maW1qKs5+4Riol/5BQgtl30YpsId7XKHQkGrIuSjAv/MWAvQ+
         7xOH1C4HuWyFFpHI+vM2VPWcs8lbMoBMBxltMlPjFGGwX1nXe4sGBlNkezFuu6gcSmTH
         o8YLT1rI5oy/hOgrY+fw9wCMz3ydXa+QLgE3RDa6xTa1QQ3uGMMfWrGz/3VaXYS7KVMA
         hlq/hadHqKPE0XC7573KROCr83hKg4GwFGV4r68fgCuRG3lMMzRL0yDeffL/RBvEuBpS
         KQ5w==
X-Forwarded-Encrypted: i=1; AJvYcCU4ewQ8z9MuYCIvou67kxLYYrsPNDjhKSM+UngnLhOSGXmGdTgvG2y1xdblQM2lkP/6m2Ha1wujV6Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YxorF9/8JaTi7rGGMjPUO7cF+PedDp72s9q9BUcHdCMfH69SqkK
	m5f3vRIgZHmanNkaooGeFxaEXgxUO/+oYdmrxaLccbrVjRcWKwiCFBwfpQlcHkfxWliz4/DU1TE
	huiQiZLh/OcQndAcMImzl9TkEfro2i/RXcEMLqbk9Qb162McshQvWRM3HFYOq5kkoBn1k
X-Gm-Gg: AY/fxX5kJUgmoNVfLq7n39+8hDt69a6KYA8z1idOzwXh1DmUU765HTzZs1aDuZeR2N7
	0tCOHxEfceoWK1aHFMXtTBYRfXLZOv7qPTVvWL9ix1/8vOSqDiDKBhaPKaKaYdp/sXILFiUa7v1
	xmOWBPXTYbiTxXBJVPA+PbPM95fvfNCuI1oERVD3CuLVrf0cp3Wb4xO8Mfz3nBWRv8ZHG/uK6ew
	HgrAeWpbMx+fyrPLvQagP6cR4pDcrSfSMSrSBEuT7PPyndZbdjVOpf1sXosWPAWH8b3uA4vpV81
	/Ix/3z5p/PMI7ep7Q1a7eShRIPAT+nmiFbt00bw7W3J9k6UiBelXR+4DKxn1J0DTfOIFyzvKikj
	7HTcZUEVixQDisAw=
X-Received: by 2002:a05:622a:40c6:b0:4ec:f07c:3e85 with SMTP id d75a77b69052e-4f1b1a9b174mr73152541cf.43.1765448252047;
        Thu, 11 Dec 2025 02:17:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFmWyqlpm4ije4EDHxWehml5rJFNcFDBMiVXFIGGIAmz/RHJ2O3FfjGRGoDAdTF/+AbtDiiIA==
X-Received: by 2002:a05:622a:40c6:b0:4ec:f07c:3e85 with SMTP id d75a77b69052e-4f1b1a9b174mr73152231cf.43.1765448251502;
        Thu, 11 Dec 2025 02:17:31 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa5191efsm225381766b.40.2025.12.11.02.17.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 02:17:30 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v6 0/4] phy: qcom: edp: Add support for Glymur platform
Date: Thu, 11 Dec 2025 12:17:21 +0200
Message-Id: <20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADGaOmkC/43NTW6DMBAF4KtEXtfI4x9sZ5V7VFkYbMASxMQOq
 Cji7jWR2kZiQTcjvdHM954ouehdQufTE0U3++TDLYfy44Tqztxah73NGVFCBdGE4bFb8L0OA3Z
 2xMZa3PbLMEWcpnEM8YGpUQDSalopjbIyRtf4r1fD5zXnzqdHiMurcIZt+2PzQ3sGTLBTrC4rb
 YCL6tL7m4mhCLFFGz7Td1AfgzSD+VgwpsBxaXcgewMBjkGWQaiVAM6AGSh3IP8FgQD/H0ilpIp
 JwqhrdqD4AykRx6DYQAJSMl2WDTSXkFJxn0yfn4YiD3Rd1/UbNaLMdRkCAAA=
X-Change-ID: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2664;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=qNGWcAov8RIDoxIEP/74cO5bpg4jdNYIs6s37ZDzBc0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpOpozCmZkhn6r19tDW4FmYUz2BDWzqJhHzIgiA
 JVyNzf026+JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTqaMwAKCRAbX0TJAJUV
 Vs5+EAC2FidAFarc4PYMxFqe7Q1B60XvbdKZHvLTSrOrTvBe/U5gKU0xfVK/rYz73sAD8iyIlPW
 VBFT/990/H4ytLpYfwn1PbEOqfsL0BiPEnHbsKKIVa0xdPmphucrCXWMD/k4Ia6yTj1zaeeJy51
 Hn4nWxStoM2/B9yfRgVSIfmKk2EYTk6ruywN7WStwlBpNA+Aqdq2kQJQUKze6mYglkoa99kqciv
 ANg0k4sp/IIQBPsA5MXsgGk0kEuHgPxqRoa/mcd6bw/eO3XmVvU0y25rknSC0qcPoyHEAGAfBPP
 aFKs9HrA3UWvYzKReh4yJfqRUPcQq8XaK8YgprbYJ7qwXq3gKh/QoRfDigJtZwxhjAJEEXSqaCe
 9tLTAaqcXiaAR9aLM/NlBqFna0lVVgH7/29nBiSIrCVjTNo++g6Mt7lpoi3DaFE1RN/Kg/9UJLt
 eHp5LcYFs+UTQsaO71bp7PzI26jB+q0lmi9PuBGd/kqVrK65iU+dcKDfOxtI4kSOh6qErqX4/Tk
 UA4sttl7QhijV9hdJm9JnNGE04JlDRuUE7MoZGnk2OZrhOnViUubVvKjciM8kXI2Abhm7BRy6dR
 7DoiXzmGYIqGDzoxWHQmTtUr+GIzomIH/N3T5qn4cht+7IoyTXkZ/NdAypF/WS4/eN2+e0NIpqQ
 QZTPmVnw5gboFIw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA3OCBTYWx0ZWRfXysWVXVDzrjSF
 nvJ6txceeBZSqkwUd8SZHUwzmeLv/SH/fEXiXd5l7YxiHvahxLs9u1p+nfysPTwCcxjOYpwZnkO
 GvKmLAn11imUHaC5ILdvN/U5CPqVCvkTUMB3qryqSYIRGcAFgKnHmeCervpAeDB+AH//EPtSSss
 C+G2VaL1dT/XP7KFsPG9b7+7h0U8Wo0Fkq2LQ9PnV5BiMPhRoYNYU+nIBS5jm2E/cYVf9b83spq
 iDo1h8XEiKg/KojpCpfBop42nxNFloK6mINONdIdecduyn6qHPOLr8Iuwl0qLlJZoOMrlHKD0bI
 VF5poRed4VCPdqXkZgG3teESSkYfmL2AyLnQRLK50Rfgtq0XQK2rqJwsJhkjKSkn1x4nQMn/c69
 /Dpg2ne2lUahPLhT4pt1Q/Bf/gc3Ow==
X-Proofpoint-ORIG-GUID: q4NxeVz5YednXCKHVT19_y03rqRZlMN2
X-Proofpoint-GUID: q4NxeVz5YednXCKHVT19_y03rqRZlMN2
X-Authority-Analysis: v=2.4 cv=LJ9rgZW9 c=1 sm=1 tr=0 ts=693a9a3c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=rv5esH4l-LSXXVRZdzkA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_021734_622473_0659CC03 
X-CRM114-Status: GOOD (  12.25  )
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

The Glymur platform implements the eDP/DP PHY version 8.
Add the necessary registers, rework the driver to accommodate
this new version and add the Glymur specific configuration data.

This patchset depends on:
https://lore.kernel.org/all/20251030-phy-qcom-edp-add-missing-refclk-v5-0-fce8c76f855a@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v6:
- Added the rest of the values for the AUX_CFG arrays for v4 and v5
  platforms, and re-worded the commit to explain why. 
- Added proper values for the VCO_DIV for v8.
- Picked up Dmitry's R-b tag for 2nd patch
- Link to v5: https://patch.msgid.link/20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com

Changes in v5:
- Renamed phy-qcom-qmp-dp-qserdes-com-v8.h to phy-qcom-qmp-qserdes-dp-com-v8.h,
  as Dmitry suggested, and addapted the include guard.
- Added my Qualcomm OSS signed-off-by tag.
- Link to v4: https://lore.kernel.org/r/20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org

Changes in v4:
- Force fallthrough for 5400 and 8100 link rates in qcom_edp_com_configure_pll_v8,
  as they use the same values.
- Picked up Rob's and Konrad's R-b tags.
- Link to v3: https://lore.kernel.org/r/20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org

Changes in v3:
- Split the DP_AUX_CFG_SIZE change into as separate patch, as per
  Konrad's request.
- Re-worded the dt-bindings commit, as per Krzysztof's request.
- Link to v2: https://lore.kernel.org/r/20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org

Changes in v2:
- Sorted alphabetically the both the compatible and v8 specific
  configuration.
- Prefixed the new offsets with DP in order differentiate from PCIe ones
- Link to v1: https://lore.kernel.org/r/20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org

---
Abel Vesa (4):
      dt-bindings: phy: Add DP PHY compatible for Glymur
      phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers count
      phy: qcom-qmp: qserdes-com: Add v8 DP-specific qserdes register offsets
      phy: qcom: edp: Add Glymur platform support

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 229 ++++++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h  |  52 +++++
 3 files changed, 274 insertions(+), 9 deletions(-)
---
base-commit: 801584822345ed46c0443c1a66ead9173a47c723
change-id: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
