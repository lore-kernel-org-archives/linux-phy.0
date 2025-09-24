Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4B2DCAC5A5
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 23:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0Op+myN8Yz1LePnnosbelV62YBEcGruCmyyrr2UUkg=; b=x51YLSubu95DXa
	9cZ/Hcz0L5hShhIdW7q2nTcLvnHZeturJRH6OrECLKXEK6iRuKDPezRrdTpTCylKFhAzkWKJtfxId
	j09kDNTjxkZ5TWGAiIKXY6kcso+/afwUljSW1AWDQp+IQYeme8+VmBtc07P7nD7OmOneZLgYX5pqT
	fJF71R5oOjyVPBQYAXNi0bNPwfRO8iYqW51YvYYXFzmVt1HF1qCMItGNSaIQepY3JEQxR7MCRsdYJ
	v+eyqx0j+gqWW234ODf86UwENIcesK+Z7b89a6sW9++E0CyX5p+DnUr5FVbX1JDff39Fk385uHhS5
	175Qho2uRb2pNsUvVxRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Yv8-00000004gpf-1US5;
	Wed, 24 Sep 2025 23:29:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Yv5-00000004gnq-2nDj
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 23:29:08 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCseUH002662
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:29:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8pW0sZS/QufsY4Bkw7D4M7tAZ8fJtgfaJSDVfDSVr74=; b=ERR71+PSYocz9mPK
	Bj6PQQMyF98CuJxkrPJ1Pc+k2wMNbxkum2EIBqoowSjaL8+koG3HJ88uvST+X5MB
	c1DP4Wf2Ha9i+uUKLaCbBfgY6qPewYPOnJ9pLIkckP0xPMLQqaH9XX5m7NYOblwx
	9o+2e+ZUqUPUBEYSAicVG5NLU4DfcQ82XQkd7/Udu1bF6UGGQPi7iavrPC8owJW7
	QICJPQceWasjXk42wsLu38MxX/0VHotvCm0aLU78a9/JXpyZNFHwmbEhrwevfmFV
	bKjldap3TvXpzUpZwRlXc2snM393yLzBbMsrC3F5Zu33wJ0ZivUkwf+dLMVsA9k1
	4rNuQg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf0k8w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:29:07 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b550fab38e9so225812a12.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 16:29:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756546; x=1759361346;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8pW0sZS/QufsY4Bkw7D4M7tAZ8fJtgfaJSDVfDSVr74=;
        b=dZcKCsYL6JVw19rB8EktlYmwu/VaTMLIS6krwz4IllCkuDIqpNHI5+gP4PgnPxepiz
         IwZ2wo6i9inlq7Ty4UpJ6LA+idJb4UQuzyPYpQI1DaM2LcbD5tvHZKMAV7/eyt13Ldrs
         xfDQwygWV0coTRC2JlXtGan8ogpMWFyKBK5FhHBaIoi2gSqQnTdSSFtXbNo7jm3DrGh1
         9HZr2uI4R2FrSIY+0PwccCFbAykGpZiNHXWu6qF4KwPP6rieBw7u6C5A1d+18Z4BaCyw
         aCzs57JYpOUDb4F5qeG7XIz51d0V3Rakx+FqHhG5oL4L93q3MQrrwicEy+8Owf5SdlHJ
         kuhw==
X-Forwarded-Encrypted: i=1; AJvYcCVIf1mcd9y+pCeJqflsPxssM2saTFsYPnsrGwrQ7SbE8YJ9BCVOjsucLScdJvk5qpbPvwndz2+djDA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzM1hvZdZvY11rzM62GgOmkCY2hoy0/kxCNN/gEBki/30RBwMqj
	ow3reHBgHiSNNF4iRN7PfnohEJzrlRWYyxaZ6RTiyWVst4bK1P/K1q/sOETk46+lfMRgUAZBMXX
	fUM/TvVo+MrbnT/4/JFvd2Ow7MhrsiFwCsltdhVE1u7MkrE86WjC/TUWGIBCGpKkc2L7R
X-Gm-Gg: ASbGncusIW88ROWPsp01nnQdwel7+TGqVXjatjhMLWrP+sRK9a3wngL3yUjEiLqEpmo
	QQ3HGA7T+nt25eK/h1D+VakpOJy64nLWZ86ArHUa4vp4a5mSxrvBC3giuPWUChazqUAWFZuIUV7
	/VwDWiY0JGqj1y8MnuUqAr96zMeslvYtdJKAT2Hq9N4hYsn/RDj4rTXPzdHPxXDYMTz4dWY5tfG
	lHIXJV/IYel2pSG1vvpPw+W7/tP5vyRORDUskaSRGnRM3PVUY2RpHzng+1+HK/wrqtTiWWQ22rW
	zS9xT6t3bZq700zD7W0hs/KHuVeBKGm2rTTh5BGUBam2yEJ6cdujTXqXCnOZzcWiRksbk+D5IKc
	39yv2P6B1HewvZSo=
X-Received: by 2002:a17:903:334c:b0:27d:6f49:feb8 with SMTP id d9443c01a7336-27ed49d2f57mr11599685ad.16.1758756546157;
        Wed, 24 Sep 2025 16:29:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxjctrlKrupwMa7wpsVyrsKMoSCGPHZ4ZD641kuuwi66f9z3YNEOdmo3Cj0DuJRXVNnpmF+Q==
X-Received: by 2002:a17:903:334c:b0:27d:6f49:feb8 with SMTP id d9443c01a7336-27ed49d2f57mr11599475ad.16.1758756545741;
        Wed, 24 Sep 2025 16:29:05 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cdfafsm4292825ad.30.2025.09.24.16.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:29:05 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:29:00 -0700
Subject: [PATCH 1/2] dt-bindings: ufs: qcom: Document the Kaanapali UFS
 controller
MIME-Version: 1.0
Message-Id: <20250924-knp-ufs-v1-1-42e0955a1f7c@oss.qualcomm.com>
References: <20250924-knp-ufs-v1-0-42e0955a1f7c@oss.qualcomm.com>
In-Reply-To: <20250924-knp-ufs-v1-0-42e0955a1f7c@oss.qualcomm.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756543; l=1012;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=pm/rXrJyIy7XydqwV6FEZ9WPS3qV2+bd7t1bjxFXOAk=;
 b=JwWRgROgUEpSUj6UpssTKoS/1MyfEY7uBpbjqPNCyj68/xra0OlfcuEiDWPV6Of9aGUgY/84b
 +4p9VK5nutBArNoK4nJDG5akkvvsxan9LprulGdCmzNS4GrVxuFbmao
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: zH4rovmEd3W4nLcnZtLbaT9sYEsjFDNn
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d47ec3 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=dkR0I6OD3irOzcp_LXMA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX4DpSKjHFJVOZ
 sukteUAgZEYVLkz52MHNn5irXS+JdPP+Peg3s78xCwr8VH0A+Qvtpm4ak8BCpS5SHpAMzvJSv63
 XOJgsezwWQy/ehvX8NtWsk0UV8F/yu3p8YtQJ2ILbO9nPajLvEQ5EH0OVBfWoEyNtv2dLIahdP5
 sv+GiLRubn/blsIvi28GqkPpC4ZN6AXdcDHwKcdiyI1/OXwO0AB0HbWxOncLv9v0xq00jQhiMhQ
 p20St4tm7yN/RpcgFZ6iltedgipkmd6a3ZNc/IXx7l3VXFmZ02gQTKyW6MEvvHfRVtu8E0y5ozq
 pWqSWpbU2h+QrbQBMd0F352PaxRO6b+2Pl7WvYBReW3AJ4S5Ccg0lWWwaQuiCqjGRPtEq872/cr
 JY+muekE
X-Proofpoint-ORIG-GUID: zH4rovmEd3W4nLcnZtLbaT9sYEsjFDNn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1011
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_162907_715180_10764487 
X-CRM114-Status: GOOD (  12.13  )
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

From: Nitin Rawat <nitin.rawat@oss.qualcomm.com>

Document the UFS Controller on the Kaanapali Platform.

Signed-off-by: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
index aaa0bbb5bfe1..cea84ab2204f 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
@@ -15,6 +15,7 @@ select:
     compatible:
       contains:
         enum:
+          - qcom,kaanapali-ufshc
           - qcom,sm8650-ufshc
           - qcom,sm8750-ufshc
   required:
@@ -24,6 +25,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,kaanapali-ufshc
           - qcom,sm8650-ufshc
           - qcom,sm8750-ufshc
       - const: qcom,ufshc

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
