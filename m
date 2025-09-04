Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D041BCA1012
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 06:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DpIHrEmEn3eVOvHJXumS+JbIf1D7wLzHDEeL6pp9jfg=; b=46tbDLVB/rjQGM
	XJaqIXD1jQffgNDgz3dld3dhlZBNP43iyThwdX/PTP6Zh7rLz+2ceDfJ0/0kW4erkm/e6l+qTxTVU
	4x1n91TsX+hMl//R+MGBThL2M7XrzYJzfLUzpQ3+egZJ5nUC/HIzWRryqnzzCQwP+HN1pyk1Njo5V
	Kvm7V6NkkOV+MqzLYn0g/vvTkYBFtVKvyj2AulEFuR2ZEV5eRM3jiWnFW6+/i5CJXoAd/PV4sZlCv
	SXIsiNSaSygyoUq4JIoPiedb4Q6rprQ38NL0XDx94TfCK1Lf+qOuPgjX8LFsOHdBzDgnm2nJNBsNv
	EEJGjk3ZcuTOgZnPe2gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3S4-00000009Woh-255T;
	Thu, 04 Sep 2025 06:28:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3NN-00000009V3x-3xtG
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 06:23:19 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5840w0ic021476
	for <linux-phy@lists.infradead.org>; Thu, 4 Sep 2025 06:23:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AO6iEgJ9nzZiIvfqCr2K7LOo1og6DI9YbUhKFKaY78w=; b=JtvT/uA8DoEYSotf
	/pVsvx1qD3LRNVjl4DN4EtvdqBki9s6xbDdkW83BOIQ6pfSDdC9AvXkpmv6Xo6VK
	KLTkKs0xCG83feZBroDpGE9Hqvw7edP5LCUqumriR5S8lDaqa/3v8ScAKKZodfRT
	Y6ps2TvqOUOBLU5Z5um6boue9DuvKCm+pSUciZQ8lz7txq6qSv9n8Nq6elzlSY16
	SUXPJb0VgmzlxwU5YsBdrA29ymDeQKfGne37i0IAaa8ZgmAFUhSB2Cv9tTamws4k
	YhlctVx1JHzPvYJd3y/klITQXqTZiMzDKrzs5yjYuq4jLUTn22YsUVs5gLaPzs77
	3xb3Zw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0epjdp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Sep 2025 06:23:17 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76e395107e2so717515b3a.3
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 23:23:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756966997; x=1757571797;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AO6iEgJ9nzZiIvfqCr2K7LOo1og6DI9YbUhKFKaY78w=;
        b=sCclY7Cq/+vmZtNHhMhEorN1ryFBfnYDDa9iPoWSVhLufy5TOw5zujJsEqSGCX1aAl
         B7HzfPJV77yW4RoDamCoJs+mXA/F1geuibxMPk9pOr+jPnpbLdjZXcfX/SmKH/OrtcWE
         uPFHlNFE6HTgFfyuFR747vq5S7nfVF1b93KBEnGxjmfOB3PKyl0grxr1wCapSZDts0u1
         uTMlWcYGdNAwgDlpek5qwkaxR7hhOvLBaakvugvOIyKIQLx22IbZMinXLRV2vLjsYG//
         T2uypN7iyRglXJNBcrFf9z7aK6iuJ+jFX1eHYE3pCEDylQsAnaeKHetg0QEaUiQXNTTc
         CDhA==
X-Forwarded-Encrypted: i=1; AJvYcCXbxdFTfgqND7lU0cwCEXA4nE3jNRD658EmQEqQA5WyCChY/+i/m/4hndO+UJ2Z6a+RR4eh7QeQpYw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx85dyObwTx/I4hBo/wvYgo7M23cDlg1MpFDKXVZPuUPTPI9Npw
	vJJNQHc4zkwUP3c3MbKeN36u+2PH17eVGyYbCF5JXS3ACCMIX4eBpXKthI2JYOijd1MPgh76mXC
	tQUJFUSUEvPP7SXwNm1akWHYRwN4AFt+ti1zkQXAroPUCAvN45xpU2fAl8zG8LK0DoW6C
X-Gm-Gg: ASbGnctuJ+247CJkzYIbGPVevrX3EAXlenE/Zl5VJancIDyM07XZrUKxorMyszl1Fgj
	+g6ZtHJ9GvmNXh6Dgozet4wQYyyvgH0iwPdzPOUevg8/NzfwsFbqmyRXbfFaLZ4O61/Vi4UWhKu
	WfhN9XWHvyi3hli7QFrTr9lmyLjtIUmVCTM8PpnWnFNHGgArghY8LXt9XrS3jR35xPGL8gDC1BL
	3033aT6xqxmVKdRamI4r6XGYeqvD0EAGqrMqOR1KYiz4jtKBQjxcjcgVj09Iy4WO6kmt79d8+1X
	A+wJEwoQX8Z6oOAKH5vFpq0QlDr3PMSlEKgltLc0qS7B0jzYbsocSyiwE563LgDc6B03Ly1I5XK
	b2WeGYGLWNifqcro=
X-Received: by 2002:a05:6a00:4fd2:b0:772:641:cfb8 with SMTP id d2e1a72fcca58-7723e0d366emr17986404b3a.0.1756966996564;
        Wed, 03 Sep 2025 23:23:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvXohAA/unSga9vVXl1kTHuDcfUmEtv9aPvZ2haTs0//u+0U/pKB3T8NlkE0osq1/WTnYyFg==
X-Received: by 2002:a05:6a00:4fd2:b0:772:641:cfb8 with SMTP id d2e1a72fcca58-7723e0d366emr17986362b3a.0.1756966996051;
        Wed, 03 Sep 2025 23:23:16 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7723427c127sm17120911b3a.62.2025.09.03.23.23.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 23:23:15 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 23:22:02 -0700
Subject: [PATCH v4 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the Glymur QMP PCIe PHY
MIME-Version: 1.0
Message-Id: <20250903-glymur_pcie5-v4-1-c187c2d9d3bd@oss.qualcomm.com>
References: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
In-Reply-To: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756966993; l=1645;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=DwIAlVG79vEnNxiE7JeLaRZgKTUUwjCwHpMa5vhARMs=;
 b=TxaO/eppeOEGOzYPQ07gElbix33P8l5Tcwej82955emjawk8w3ibEnTEgBuN1Yl74dqCxNpw8
 zb9tA/evQYFD29dcc+y1prxYzZzr83HFgxZ+8QPjidrS/k+bZNi83tW
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-GUID: yJe13GWSWUZOnMnX9dcf-aYm6v18zwIa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfX0zFulu612IyM
 73DAJS9SuK6dOWTeo/Ba82UmEUVk6jA2oDhWzSb9/M4+5av+YfCJ+rhwIjVaqQtGeGgSrBUV7Ax
 lZGAPC1oyVKT7ilr3B06RujrjU57unLlisB7IceYt8vx6ELxlOGsmE2iQhDKNRv3to0blrMS5+0
 07YI8gMkFJS+yMCTbJVoD4rDJ3OXgRaDj6wbn6puRxFdk5JfFOgOc7dxawhvRmrom0Y9X+p3tDM
 ASGvXEGoBio+k6bfh1je16fhfNQ82DlBYl5NaCrXdI+7jSPlzwemnpsUoTBLzeld+5zsHmVnLzz
 lpk5kLiCzJmmWisRvHiFexJns9Ux6v4C7GWrMMCt3inbOjBu9dJOC4Uh9p5Std/JrPjFEQLs/kz
 P6bI3y7Y
X-Proofpoint-ORIG-GUID: yJe13GWSWUZOnMnX9dcf-aYm6v18zwIa
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b93055 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=prgL3jgsdPShhDvlN2UA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_232317_994431_641D031A 
X-CRM114-Status: GOOD (  11.21  )
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
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index cb706cf8219d015cc21c1c7ea1cae49b4bf0319f..1527616902ebeab975c9c79d75cb1eada64ae55a 100644
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
@@ -178,6 +179,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
@@ -213,6 +215,7 @@ allOf:
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
