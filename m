Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2567ACCD184
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 22:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L1OzTSOwNYC+dL90Gk098uJy2hSOwYnCb8ZW92NjiEM=; b=Hnm6ArUi8WApN1
	01WCdeXT+TCurHSAnH76CZQdvFBvVYxuLcsY2DY8rgT7D9+/V9SSYwB4W2KgStZZn8iOt18LNiiVH
	EDBbycuYdPcmoKSKkW8W3sAQCcCO2usItlsvxYh2o0pIJcr6KHirZNlmBU8xMk/5nVuUhyBe4dkrZ
	UM8R7nxZMSf4hvoAan2Mgrm48rn/cJHgiEvB77E6roLRm9Xs+9wRNpI4KQuDZuIIyh6S7TvJmRxxh
	faAEQ4NsJtDY5EbnZbctdzTpUGQppd1OeBUrsPBYHGdMDEEWv/xXRhxGfdwZPiRoXpU6wcSB4k0Lz
	JY6NjGJPzXKnO17wDT9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZB-00000000uYK-3ojd;
	Mon, 06 Oct 2025 22:20:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5tZ8-00000000uUM-1rZn
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 22:20:23 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596FPQjr026723
	for <linux-phy@lists.infradead.org>; Mon, 6 Oct 2025 22:20:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DQ/0YD5xMRw
	3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=; b=XNzmyh2XOAAmRvkmnEGA9YOas+D
	TYNRCEo37uwuxgKSoVQ2PNZOqqXuza1cPH6fDea7aQ950p9NlUSH3uxOZn7Jv6/6
	BBvbmdA9fg2GDlh2/ocumOWL+3rQeiIrF2/tze39ZEBVDcl3R4qpNyzEQ9CFlISz
	fYHw6K7ed8c+izO13JIZ2Sof6+DhzrjDK2kYrl/jbEWQ+Qor14qvLS59Msy5wDF+
	LzuKqmTepXBELIVbR6o622fHxqTZpn/weNV3B9HewUTcKRRB9EbMOfrDGtfXY5K5
	wSgPiZFGOJoO6scn51m6sk2AE2F0lF2b1ovtIMZhlPI8bZF/sfoV3PMTxvg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mgd0h27n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 22:20:21 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-77b73bddbdcso5143842b3a.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 15:20:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789214; x=1760394014;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DQ/0YD5xMRw3lWfka6oyOcJAqHz+tEBt1EbVwdyanDU=;
        b=gdlqGNbjsjjfJpYdO//DmCv+Dk6dlyWnmroS9j5VZLq2/n4WzBwgKvaIBr0gYDZPQ+
         6JAHA73OVoZMzxQeOYorf3BOvQgvcd8G6SXoZ0yN/Pv9p5hAYHl+6XLMST8SHOhqUkxG
         3UXGJCNRHPe1c198GD+ncmDvc8lLpYqQP8bfBozo+Aef2kRaDQE7vgEQ0/zqjUmzIHg3
         +C6IdwV34/1Wl81qwfPg8fkAPki0ksGceZE5w8OcWsZKcRxWa7u1gCbKj5W2FS+A4eNC
         u73oFxH77hs6XBYVA1QCtCR9qXU7vkPJ+npFgetgg2cAwaLLNvwH7i9C4FUZBGBRnStm
         yclQ==
X-Forwarded-Encrypted: i=1; AJvYcCVml/MJQDve/1zxQRDMGi+4wAZh7vtq0LhP2MAQOY8y7ayQQWT0evvgBlkr9NvTCTVpJBqcOc+yQA8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1y5VzTpIFF++/wi8T6YCTBJjvABU6PQElhuVIirAK7+BQ246b
	rWICE864+cr7E3NxMPfIZroYoFubig0g6yQhbutBGu+Is+UcHxrN3S6a5z0aC93G/pIHR0Hg8K2
	ZoZQNnUsOlKbHpwqG64Zf9wy/EM3HMrgWFGPQ3qqr+wLgyZFm00DaJa0SBA02yyCC4JW/
X-Gm-Gg: ASbGncuoIa7t5UDwVAV1Rguk3eAWh+BobzWP1i5FYU4PvY/eMyd2mcLD0RzG/d4DxUd
	byKw2TWEFMwN+y95mf3zvIycAQRCNH1C2maqdIIJ51pe2RmCTmzpHKG9PJIgIKZdoxa69RrfzVQ
	Qkyh66rM6hfte9exJCEn0DgbK/M0OCuXQj4ra9XK42ubW639nlYEiaS9p5K7S04ZS+jSa+l0F0y
	EMzdfotS9bvH5Md+WUC4IVrBDY/WF/azWR7kD1RdBFx6rFAl4LQY2kVWt8cWs9FY5ZHFOxdWWNJ
	0ZxYO1GimVszHWDlpINIaJJCLDkf6McU6nxv+fSbhy2yD1vJ1kOqbZpsSjgcOZjYz0vEZf6dt9h
	3x0TDY11FFRJKW1SH7T3BHA==
X-Received: by 2002:a05:6a00:399b:b0:78a:f6be:74f2 with SMTP id d2e1a72fcca58-79230757802mr1247809b3a.5.1759789214004;
        Mon, 06 Oct 2025 15:20:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnkZXwidFHz7CWQzFnYlI1XTWEVkHlGYGjn1W8QN2IS0V8sHRnZ70wzY70yU9/PuxBu2FvJw==
X-Received: by 2002:a05:6a00:399b:b0:78a:f6be:74f2 with SMTP id d2e1a72fcca58-79230757802mr1247773b3a.5.1759789213473;
        Mon, 06 Oct 2025 15:20:13 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:12 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 05/10] dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
Date: Mon,  6 Oct 2025 15:19:57 -0700
Message-Id: <20251006222002.2182777-6-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: Tgi-GW-gnt8X67MBCDtR8ChT5axm5dQu
X-Authority-Analysis: v=2.4 cv=T8aBjvKQ c=1 sm=1 tr=0 ts=68e440a5 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=9ZGL9VZrYHwIVTkvpzsA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: Tgi-GW-gnt8X67MBCDtR8ChT5axm5dQu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMyBTYWx0ZWRfX4ka2+A0tEWs4
 XddH1m4LUfFTlbXcyITkmjVjVxXmUD5LLoN+fdqxXQTNyaqrBF3URPAm/CKkShgp+64CxElhUOd
 JvcAxwGN3q+Eq97Ww1E5OZBJew+E20ZngoPsIi8cXAuA5diDelwd/2nzXnGBTDa3fxuM46FqkiH
 PrOAeXWJ19m8uVwLvPSITSj3IAPWdoq8QHGs53BTvR9zpr7xBfsWnpQziuTkdMGYXdSXufjPEZT
 6G4VexeKrmnnHXa501bnRspGDvaEVBXtk4aXZR7IN/xeU4ECCKeK5iwS/9TDvXq1y1BY3suYbMy
 6+5h5Uixeik/se1T0/7wf2DgAgp7fF6CjHwwW9D7g/yLe8vYSXqEsHPkLzV7Vv+Q/aiorKJVXou
 geI9ZlnZRU/zz9WYStD/s/j/UJqsEQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_152022_612298_0BC62737 
X-CRM114-Status: GOOD (  10.41  )
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

Add the compatible string for identifying a SMB2370 USB repeater device.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 5bf0d6c9c025..0f015a4c2342 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,pm8550b-eusb2-repeater
           - qcom,pmiv0104-eusb2-repeater
           - qcom,smb2360-eusb2-repeater
+          - qcom,smb2370-eusb2-repeater
 
   reg:
     maxItems: 1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
