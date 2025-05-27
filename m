Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8872C54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 21:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/0fbOzisjrfnaIpvasnyAk4EkCBH3xJTyghE/jEOq8=; b=fJs1EdTsjoFSac
	DiC7lOsFHIoTocg7J2hBteEN1Z2RvghBjrlLPdiV6qcawYy39ACGVir7ntCZ31XXlvq2qNi6VJ/Cb
	rRXWoRkO30Yj1BmZPjBjnXWv/KSwGkbu8oFfePvK6nwgndwHO+nSfCFRiWjBWH7vaAZ3xcwsjorEI
	hx6mZE1qCxvkwUWkPHrKge9JnIpq7XMf5nb4NC3cAZtWT2gvXSC62zIMPDvhqeBMrbkSkffOXaWlp
	8lxJxYPKvEwy10JLYrsiq3khlp5CMlzLOmRSJE3Zeo0LsLpdWo8z1nV6M/MXQNh2P1rDno+CoBq/5
	XTr6v9V3z8jsi6gROXHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1Y2-0000000BZfo-269f;
	Tue, 27 May 2025 21:09:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1Tl-0000000BYpg-22hd
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 21:04:59 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RHTYtB028888
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:04:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	63TelnMaZLywwjt0ZE9rQRxentiOmbDDz3cY3YJGWYQ=; b=OyTIxGaN6HeRDMcx
	xggCgzI1x739zuaZPZkK/Z17fZFI0xZzNM/YZTFgTheQtJbDdNXhYKBxKf+W5MN2
	DX8XrPOieMGaVw9TjzUVF4PkLqbtw5/UOSGvxncP4jZB4c+ONewBgvuoXu/L4LMS
	RsVbMLBofHwDTxffM9mQV2K24JGIDxD8dXqbpYoYLqfHpWrJmehsl1O5ZhwyHgI+
	PAnUyDcepMBh4K5Xs0pqa6+UZZCPwpClbD1RYn9hv8bOjITC9PG6585FidoNAWSK
	aSzs98QMYwA0XAQESPVxSAqKW1RLbIFbSw7z7WslNtOr+t5ckkJkntlD807oyV0f
	Y6Qzjw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46whuf0jfs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:04:55 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7375e2642b4so2797259b3a.2
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 14:04:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379895; x=1748984695;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=63TelnMaZLywwjt0ZE9rQRxentiOmbDDz3cY3YJGWYQ=;
        b=Iv/7O+JN6K0mWdQTQe6/ZbH/adYeld1HT4T8bGTfWRGe3fJOTORl7TQWp6eYQJ8nwZ
         tnceX/dESx2auBDT4KHrBEmWV2xcc90I6MFfICDBflKitcYa3lMHrzvJDInyQrYC63+P
         FgOygD0SXsQsLEWqc3bxN/yv/IC7VXfXJRyJymptA9dXaHBsotehXvyJlcbCVhq3pZw3
         MjH63FmMEnGv5PXAFjwpr3bzzxMwVYqFx3abcJRqZIZJJC+ELfPtxQDBnudeK6Lab5h0
         A49ZMIOd+WLE2eQizTYLUf4fL/Yg0Yu/7LfOM4sTLkceQuRlPnD8VAuBf+wOPy+cIbLx
         P1Sg==
X-Forwarded-Encrypted: i=1; AJvYcCVUZTtZ9aV+ttvmnqCeAefMmKk3b5tFpYd8K5tDSaQRS3nHN8/RWmQ78u8y0cepWqDn/PzmoPTYL2M=@lists.infradead.org
X-Gm-Message-State: AOJu0YyBlOPY1CrsGuuNJ8zPaPzPBskrLTIym79GlnZdUjmhEk3prxhQ
	DS7MXtcH/APGbrJPS62sf5AYccXSP/UkD3o9yD+5tcLVsEzoFeFUygkqqaQwwSWV7eWaHPFgQhr
	IhpQe6DDdZpday5XR+Swr1MWC2xwc5xPj9FjRNzgSqUP19gF0JF1OuxLD3bP0pQK13rNG
X-Gm-Gg: ASbGncvan4YiZK0LJJ63C4Np4KewotPl+Sr309icrJp/REdjkPdhB7h7lClYU246pj/
	LvqN4s4vNhgRXxZKBFx/GwNHuzdf3xp49lheXgKG8UK1hX8AVlN+L2FvzQ3ZZBwcViaCyqHSj5m
	HUflzgAqv9BLJIVoY2gBSm+M0oWCIWn3a9JcW/CuO7OuDsQSWOmsvR+Efe65zbDUf7j1nLfW1op
	HtvjYdsfd36+wfXmPujO4RAepn9uc9XS58dQAVgRjYghm2lT+XLlFoWvwuvKm05g2RJbraTbrXx
	bkAZNmy0ITVPl2N5nsaoxXaESjdQj/sKxha4xXfEIRSWn/WMMsDjf/S4I13v+5qq/kI=
X-Received: by 2002:a05:6a00:a22:b0:742:a82b:abeb with SMTP id d2e1a72fcca58-745fdf3f47amr20526687b3a.2.1748379894987;
        Tue, 27 May 2025 14:04:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVTU4ArnKS3XUx/KYBpdSClXfXaPefEciMMvAQUuS6TJ1WcP5QX4l+NUAEE9Sq/8WhMbuLTw==
X-Received: by 2002:a05:6a00:a22:b0:742:a82b:abeb with SMTP id d2e1a72fcca58-745fdf3f47amr20526638b3a.2.1748379894549;
        Tue, 27 May 2025 14:04:54 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7465e64836fsm29167b3a.26.2025.05.27.14.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:04:54 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Tue, 27 May 2025 14:04:37 -0700
Subject: [PATCH v6 01/10] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add SM8750 to QMP PHY
MIME-Version: 1.0
Message-Id: <20250527-sm8750_usb_master-v6-1-d58de3b41d34@oss.qualcomm.com>
References: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
In-Reply-To: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748379891; l=1370;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=8DqyV8lJU3L/SgQ/5n/G4b54XOO0JVKsEdNPv+HKEao=;
 b=o1YRULItzlopd45+R1RF7yTgwH4zsRX84NLJyscueOAZIq8dR/2R1drH5MEiKT449uZdTpeo/
 nk9NUMT8WM6A2HSBqhs2UW4zZJSmRT2pJUyfWqLzvb98NRmaK1BG1O9
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=OslPyz/t c=1 sm=1 tr=0 ts=683628f7 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=bbY3M6C_flAL0yJJl3cA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: bhoGMmUoHYZVNoOfSrnPNWy1N3P6s7bM
X-Proofpoint-GUID: bhoGMmUoHYZVNoOfSrnPNWy1N3P6s7bM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3OCBTYWx0ZWRfX1UrGmnGwjBdU
 /C78n2vR70/FZKtS7COtkY9FHq47lwKg/Q6ijyKpATH6fUP2ZapyMB9qJmCmaU5wOQXCWTIDsYk
 ZRIswnExdQiu9uwB7bllIt3DDmf6JKbYxI0xORQQPt8YfiUtBmXFAkLWNxpvMH9jFy506DVMUko
 9oGYWhxELJJjmPVoU9l0H5avA4jo+4HFs30P4iXy74ZvWwGDXKxtntMaMlFV0yzE6NKJ2aHw3JO
 hiU1KhWYN3tty6lOkfLOsSqVqtmu94MbG+ARRBu5Szt5zMNW0CQZnZcHur+SjhuwuMM30Zfx+4L
 ZW3lyolQDPLN8/6CaNrWK3CFVAF4nbHQOklFwml1OZ1QHhKtWEAF3maXdlKYmoziWJeagx7G5vz
 zEbwRMiBNjZzin0o1yVfPSCi/6B6WoT0wd0OitUaJmfO5rgPEno6RIRd5UXXKVT9frTXkSFj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 mlxlogscore=953 adultscore=0 malwarescore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 mlxscore=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_140457_529397_F59B247E 
X-CRM114-Status: GOOD (  11.99  )
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

From: Wesley Cheng <quic_wcheng@quicinc.com>

Add an entry to the compatible field for SM8750 for the QMP combo PHY.
This handles the USB3 path for SM8750.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 358a6736a951ca5db7cff7385b3657976a667358..38ce04c35d945d0d8d319191c241920810ee9005 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -29,6 +29,7 @@ properties:
       - qcom,sm8450-qmp-usb3-dp-phy
       - qcom,sm8550-qmp-usb3-dp-phy
       - qcom,sm8650-qmp-usb3-dp-phy
+      - qcom,sm8750-qmp-usb3-dp-phy
       - qcom,x1e80100-qmp-usb3-dp-phy
 
   reg:
@@ -133,6 +134,7 @@ allOf:
             - qcom,sm6350-qmp-usb3-dp-phy
             - qcom,sm8550-qmp-usb3-dp-phy
             - qcom,sm8650-qmp-usb3-dp-phy
+            - qcom,sm8750-qmp-usb3-dp-phy
             - qcom,x1e80100-qmp-usb3-dp-phy
     then:
       required:

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
