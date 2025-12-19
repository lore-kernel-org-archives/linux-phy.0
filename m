Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FE3FE66880
	for <linux-phy@archiver.kernel.org>; Fri, 19 Dec 2025 17:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/SMpIuVUlFni+hLQT6nt/+NMzwFQ45KD2E4/J5pL1EU=; b=xhVM+ECoNsWcsy
	UNz5acKjGUqIGmenR33/HvEravzQe0m5ReF/u4Aoq+KH38JxxRQzPFidqJ7LgFSz7eOUD4LTIC7qI
	y+uN+h0/JD7+JFY0Yu/Jt08mrqxL7DMcnllcPdlHoztTJVQ6v0Nn/Nn4GpJD5V27ySnySmJ7ilcZN
	0E+9AoWjwzegU0tMBh50KqWam0b3Sl4rz8M4CisuhVOfspjfVdrdTjaDDFxDNdlM4v0limS/ElkGh
	a0RAmPj+AYp77qc9l2iw8snqqgBdvfbUUCrvVxk13l12nNZVne7dqF8cw5divOCU/qD0MQZix1tax
	xdgW0Ddxjmz8GI6gO75A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWeKA-0000000AiQJ-1RJU;
	Fri, 19 Dec 2025 17:31:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWeK6-0000000AiPZ-3IDM
	for linux-phy@lists.infradead.org;
	Fri, 19 Dec 2025 17:31:29 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJFjuEp1410536
	for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 17:31:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=y4JtJATT+zn
	ugwSXROWGs3HE8ker41Bd+L89u7rq9RY=; b=eQeto4vihjjCseV9RTj2Lf9p/eq
	hPCZVuRf0FUfEtXYy91afEQ9aL68z73xz91/+aAkAaMw05sw8hzuBP/Wkks3nUdi
	hdTZR6j2EiDCL79tww4URh7Ws0D9sWY0r8sSJbB63rY3x3s9OmsvqBnXAeRjjRgm
	BlyqqL+wlIwvuGT1GL7JFN3Xp1Wrmnlp8vzbhHhzznbTYXSpG2g5j8vwEXaOfF2q
	a/I730oHeQwJBIYlQsgPif2Ro57Vv188hv6Jz7XsaZDjJX/I4ze4MzLv35KNNM7l
	44utb+GZu6RCpZ2sHqbtqo2VPNosPw99T5Lc84Kx0SIm1RibWVvm1blzMBg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2cuj1m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 17:31:25 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0f47c0e60so48586685ad.3
        for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 09:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766165485; x=1766770285; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y4JtJATT+znugwSXROWGs3HE8ker41Bd+L89u7rq9RY=;
        b=ISdrk6teQgAnnBtxkNco3LYeAt08ebQTa8zCh5kQsZtCq2hyyPqIbHTUgwYNGR84x5
         v8w33TI1TjWo1BluRYFVZOeSDTwkJn06LP0IJc3AINpqC65W6TCM2kEmVaJZH6IurYOr
         fu4Qzak8LxI+fDWn8RKStdx9IdNRv94axJnTSN9b2dFFMtSye4hjlGMD5Qxvn70i7ee2
         3UHg8jaFNkmEFcEOVPMiCyDpEtAHyWk5hCJceg/r03OCfoD0AezcruMBfjLYmK2t2+qo
         djU7RGbRH0CO/KOrks0KRLAaE7ThVc+4EPcbjUU/DFFnGzGylO/Yo4eFSkbwHiL3WmDu
         k9Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766165485; x=1766770285;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y4JtJATT+znugwSXROWGs3HE8ker41Bd+L89u7rq9RY=;
        b=VaI2wYa0P/jQ5dAgIvyuUz7YEiiuqee47pZBFjFqTTp6X/aqzO57n0VFOXYABlIxRb
         Kj6dkrjRhdL6zoSzseBFoR5T0lWC4QsM0B8Xr5qz96eqPTWF6MZsvT+4vHpqqSk/Uq5Q
         K7NHsileNbyujRU71IoiZRKoQ76k5kbl3EGLo3iLWAm2aLb7R2ixIpnkTtF5xRUjDKmH
         Se29x+teP2TwCmjXztIc2Ha+3Fdi0qNmPwpaWdNZdS097ZoOJWL8tRxaiWUVI9CfplCA
         JbcYEqiOArpDZbSCkRU4Su3mHyMptyLUKvK/vz+mL8yzp/2snhWAwG6KyQUPAwB4wp8S
         7W1A==
X-Forwarded-Encrypted: i=1; AJvYcCVplGAUHyFHLDpA1CNW9YYF4y1I/44y8G0U9Smfeu606fXAWHl8W/0qHZoWXb6ezIzran0FEXRty5M=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGmOfJ9xbVeOSFQcVbE8RPdqdkKzbJVA18XuQJOy7VpSVlPWGF
	Pw5S54/pOEbRqtk1fvcBsR+TDUkJh9LXpEN9r85ivujSUTWNo/Dxo1F1UYCV4Rp0ulenye7AA18
	lBhSmTRbkmfEC7k4Ix8yJS26yBlppD9IzN4nCw8ZAKgmoGLUwiKhYwj90BlFapAOGlxlo
X-Gm-Gg: AY/fxX4loxxYvBev8VECq8D/S3ECwznUqWZMrSu1pFWK5d28MRsI2SPzBfXLWDC5X2H
	RgoGjVSOiUotEOyLpPmx6ZfKJuxPt80tFEutMbmKnKY/50RG7sI1e11FsAX8tOA67GNnIAEZQgG
	eO21zamjmryI2LZN6/VUFBPgz8Yx/qW0fpynHVqYUTxSE2nwN/NpnvPHur365hzosrKQrHcrORP
	NKZRgknFzUjdVjX454rPzTx7a3ZNIprEb+ZeflmkaNh/AX8SD/nBWFeyhQHxo+NlsjOasBmdPa8
	enrjnKhQIRn5T8zU/8hGLExwnPMf8rbSfKyGViEyBMnSsVo28ShdAe1S5X4vAhnasmr90inuMpr
	vFF+WnNy3S4l4HXC0+hSJZJDrOHQEdewQBlFPp8bZZQCTMQ0=
X-Received: by 2002:a17:902:cec1:b0:2a0:e195:b846 with SMTP id d9443c01a7336-2a2f2c4cde8mr30440505ad.54.1766165485232;
        Fri, 19 Dec 2025 09:31:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG0ue4HpXY8vYB0mKQdG1pqLFR1JAAfGIxC9B6A6qayF7Q4jSjg2qMDAVUkxJC/KroWOTtT6g==
X-Received: by 2002:a17:902:cec1:b0:2a0:e195:b846 with SMTP id d9443c01a7336-2a2f2c4cde8mr30440075ad.54.1766165484573;
        Fri, 19 Dec 2025 09:31:24 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5f5dasm27568705ad.82.2025.12.19.09.31.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 09:31:24 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add squelch param update
Date: Fri, 19 Dec 2025 23:01:06 +0530
Message-Id: <20251219173108.2119296-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: 8NT9BOYmsVPzDe4xbgCwYQ2Jp1Ft69HQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDE0NiBTYWx0ZWRfXxxCNC7i/KjEz
 G5unG573AXtBATnDsrfo6pLCv22sxFzC8DYlPetcVOjcvW8A44XbfOzgL8Tv/41amuz5iEfnMne
 zO1cxk7KxsBgwQF0bPd2tFvel1rHBkbi92rMt4JJZtej8OPsdGkpzS0D5uM1uqoUwtiariVq7XC
 Ls3ts3UdRT74/lS7rHVK1WXwuYoWZFcweXvlWRDXZrAi/55yWDl9NFW1iD4I0FOF9DXY12wvhe1
 ZQt16P2pcrBJwJnNKYZb3WCrFVsQ2kzBBNLCopUjnz8cNzGhtwe9NubYuewd61gNzR2jCev6HgU
 vxnwXRymbxNfuNZh/xgGayTU0S+eVkP9eZ3+4zVEaBx7kdiAoinVUBLi8WpJ/JHfqeaWlMdroD9
 iwB28xCp0mcOGf56Wrb1JoI6vtPfaOiXH58Yw8I18NHmlF8H+WwiC+oi5vXMNXGopT5AX5TeLen
 CBtvHWfzS/25NKDWMeg==
X-Proofpoint-ORIG-GUID: 8NT9BOYmsVPzDe4xbgCwYQ2Jp1Ft69HQ
X-Authority-Analysis: v=2.4 cv=Lp2fC3dc c=1 sm=1 tr=0 ts=69458bee cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=HBn9Jitws6tvw3KM7cgA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_06,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 adultscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_093126_895147_781A5D15 
X-CRM114-Status: GOOD (  10.96  )
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

Add squelch detect parameter update for synopsys eusb2 repeater. The
values (indicated in basis-points) depict a percentage change with
respect to the nominal value.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 5bf0d6c9c025..f2afcf0e986a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -59,6 +59,14 @@ properties:
     minimum: 0
     maximum: 7
 
+  qcom,squelch-detector-bp:
+    description:
+      This adjusts the voltage level for the threshold used to detect valid
+      high-speed data.
+    minimum: -6000
+    maximum: 1000
+    multipleOf: 1000
+
 required:
   - compatible
   - reg
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
