Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06CAACA0EF8
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 13:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lt7L0jl6rGXeJT1eVncfDhOZVlWuiuUHDCcqz6vmzZw=; b=n7GGxZAUaBezXp
	Fmf++I3uPTvLIH54dv9gWB99Ye5c8/Rr/mmCMopWpMM1UVC6+GxbUTLuxGxOsRkKwC2ljCopZbpOV
	liu2ON7DJGQNsPbiLR/fhh3Zr9Tsi2YJxCfEeIcHvKkffvq5R/7e3qgPjtKmadgz0ILFQeh2G1oSU
	Wfy/4pZHcEeJZ8VYxDrz6XnyKFjG+eF4WJhPGHehgJBTnGDsG2ZzNIiaSdu54lEL16WNoJWRN62aB
	4CTK5FDeRSNv7cy3c69tHaNhZWBJ5Bc7FDf/R2p4p5sBy5YOZaDzCRNQXu4wJxe9R6oeUpDddcgnJ
	9seZ4/9D5mGX1hti1FfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5C1-0000000H1hL-3IKM;
	Thu, 21 Aug 2025 13:19:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up1qo-0000000GUqV-0EO1
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 09:44:55 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9b9d9015176
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 09:44:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4HB2uUgg4ObiGLYTjYfuAXBTtDoOjkuI+b7+MZ1F1B4=; b=PsAE+VEEmmQF2Sau
	/CClwvxDl/DVGgLZhQ/XD1sWcoKBxNTTz9sQJXrP98irkOvGQYP/k+Jj+T6NduYf
	AKOsLLeR0+oa3KLCTZ3ANXwFZFbZYHcaz6QR+NVZYqtZkiKOBFX/bYSNomh6m9S4
	GyZscyNIxj6Tbmn6u7zYDp0mIUfLA0GsIMoBm/zdhFa9Q1ALMoMwyFyVnfMyU+aj
	Y7EqOibQw+QMRhI8tm0MhxipKpFrnNLwCr12bZ6MuY7Nn56hlqN8Y5ej+/jcIiVW
	nmp+HEQ+4gwY2oE9O0KzLgwCNhmp+0Rd/nZQfsoRG93uYb4IyuGryeCtifbon48R
	iHGCyg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52cmy9v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 09:44:53 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b471737e673so1467539a12.1
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 02:44:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755769492; x=1756374292;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4HB2uUgg4ObiGLYTjYfuAXBTtDoOjkuI+b7+MZ1F1B4=;
        b=ZQbX1MzmGM/rc3uf3DW5n5Syg5yM86+zX36aAjSbfl04Hm04C6jsCqOl1000usJELI
         gTupx8X8yjxqDrB9NBh0nGNazAUsQ6bTfpGCCYNh5DKLKMe4Bc9PArhFsNkPAfRojrYg
         KMrD+rHwpDuh1GtqFlamFo/B7v/lcStZMqkDBpSLqqGnH2FqKE/z0TgfHeGHT5cUZdEa
         LP9yiLcKadpRfZ2C/8ZHqswNj0nlZEGAAnV4BGemM/MwzKlTx+UgAW9lZjawm7td+XP+
         GsLuxCRcKsQDmMqvPEOGib/Nq44h+eKbMOFmdYcRFSQCyNbDBKkp7z/qUCp1fsDASPat
         vMcA==
X-Forwarded-Encrypted: i=1; AJvYcCUjxBaQLv2tk71fqZ59MCLwB8n7EV8/agV/r8GGeW/IY8KvcCZlfPMYVeEw8BggG2WXx49F7LvROUM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2aE24y1GYWDrW+bCtB39lIjyZ/Ywm1f5TPQyuf/7WniyN36Ge
	k1t6Dq1mE2QJ3B+s+yU1sSIaf5FXIr8ibHId3LYbB7PVvwx6WeVWPeuxRZJrBSu0BPq/PNiSKzQ
	LQS9CJ1e+Tr/NaGi1/NLFNaB8qlJVYLZ7dc0w9SSc4UPr74wrJxzWZeWypyRFD/WGr2Bg
X-Gm-Gg: ASbGncuTpLfGQkJqTP7coaY7cAAoV02x/EsB4Z/N1VQtRbl6JTOsB6Q5ZCEbwKlRg58
	ds9VbR2EXhlWeXmHaiMLfXh0f+ylQ4R7wRMkZDJdrVzrnCYsjxPhPuWxFeG/qTe10BGAu5TbNKJ
	2vame26iNh6UfQrejERANY2We0h04lZxWYuLZ/UnMKkkJHOhLgT9u8ykTkVcCU1YtJA5gDQs3gG
	nzgDMP747KOYG43ECEajqag6dYs/QlQ5fGCJEvm9SgK21fD+Bi3BqzTNIcfIS1BoxVt0MFYHQLA
	PB8tWlvsmT16kcNtuJkX7Czx85haHekvyuQdgDjA6XQx0ZndMca8or4Niaa0x4aW8m2XnWda/KH
	bIMNLmtAEad3RxKg=
X-Received: by 2002:a17:903:384c:b0:240:640a:b2e4 with SMTP id d9443c01a7336-245fede0b63mr26328195ad.49.1755769492401;
        Thu, 21 Aug 2025 02:44:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFx4GHGVHvitiI3tfieiXs12r8JEwBYJ5VY9Fy1i8PQK7RHyuxBxDvyosnXBfmKrzsdVv4Pvg==
X-Received: by 2002:a17:903:384c:b0:240:640a:b2e4 with SMTP id d9443c01a7336-245fede0b63mr26327955ad.49.1755769491957;
        Thu, 21 Aug 2025 02:44:51 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-324f23d853esm1426078a91.6.2025.08.21.02.44.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 02:44:51 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Thu, 21 Aug 2025 02:44:28 -0700
Subject: [PATCH v2 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the Glymur QMP PCIe PHY
MIME-Version: 1.0
Message-Id: <20250821-glymur_pcie5-v2-1-cd516784ef20@oss.qualcomm.com>
References: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
In-Reply-To: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755769489; l=1596;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=5L5bgft0hY3UL+GD99tTktGev1AZdAzNOUPNY/hYCs0=;
 b=pdeoV5QDRCXDZmT9xtvFBUXUQoDPeo+E8tde+yev8M/WcSKq0u8DjWSJEglrEvd5uQ4Qi4ve7
 fEhDoOWl3GJB8NBi/EMSt+TPtD6W0ZX44pFzz4lXdUPAwolbJYpl/ij
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-GUID: 2_54wzzGBTXfGawH5Z80_0YLipIE9JLx
X-Proofpoint-ORIG-GUID: 2_54wzzGBTXfGawH5Z80_0YLipIE9JLx
X-Authority-Analysis: v=2.4 cv=Xpij+VF9 c=1 sm=1 tr=0 ts=68a6ea95 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=prgL3jgsdPShhDvlN2UA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX0v7HKZTmpW5/
 QlVLzoP5IhJPfHaR1if6/3QbVOx1QBiWNTNSv1TIHLkv0+nTaavRytCGiMLBkphEzPQ3skyJ4Bh
 SVc8GNcXpLAD6kSPRlyDjlVS0VmkFVvguP6Ydz9PNkcqIvZSyNYvyQ6kj8Vj9s2nxuxpAJHsbvG
 wVojw01YDTWUYhhm1+cBPo704CpsVXCmzimLeJSrDOMDNwH8nx7JArG3JkZtpOY5WtDbgw1IvxE
 nSYxlB0xYWaBgP0XwftekXB04LThHacTwUWBjW8gt5u5PQnL0q+Oa9R0SlAjTTq7SGR1dYFOY95
 5VK65kDF5LinvOxH+B+Syh/WlU4QkhIFQI42D28mNMyDTp9wlMEgkWJCAHDBylh5LJdEEowT28P
 FyUD0W8ERpdTYSYgd+d5Pwnl1O1neg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 impostorscore=0
 adultscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_024454_093416_D0C1820C 
X-CRM114-Status: GOOD (  10.57  )
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

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

The fifth PCIe instance on Glymur has a Gen5 4-lane PHY. Document it as a
separate compatible.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index b6f140bf5b3b2f79b5c96e591ec0edb76cd45fa5..61e0e2f7ec7f9cb08447e4cd9503698c0a2d383a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
       - qcom,sa8775p-qmp-gen4x2-pcie-phy
@@ -176,6 +177,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
@@ -211,6 +213,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x2-pcie-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
