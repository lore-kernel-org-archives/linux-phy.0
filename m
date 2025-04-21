Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFC8DC369AB
	for <linux-phy@archiver.kernel.org>; Mon, 21 Apr 2025 22:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CB0dbEsTHHEMI26q8OqsieStyN4RQjNmVrLqdL5qMOM=; b=4qHbFdAeAlFJzi
	3QJTe3jJ/MxuheqkFhSXnWfMqRiso/KanB33XSjRfifBxCIumZE4NKu9wKEC44NvGPxk3ZU5GKaEs
	3N18yMHvZmdb0kkp03vI7W5pfjS6eDsVXboHKT47HmUiXQsJVi9LI4MEtLTogmMdZCL4LXyBKBJfY
	mu0rxBLyq2hcS92v/GCb2+F4b+XZ6j6PSPHSnZQ26cHyJKByYqvbRE6Xk4zKbygUqJZfEiOGRfVHh
	k6ys6ZixIOye/XdgiwnG9ps768rg8N9LPfDm/G6SuxAtkysmCm7sBM4D8w2p8VdSdgNDc7ZKLvO+i
	Zwjhb0gqJcLB0HmjL3sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6zUL-00000005JNy-2XB2;
	Mon, 21 Apr 2025 22:19:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6zBy-00000005Gch-2C6h
	for linux-phy@lists.infradead.org;
	Mon, 21 Apr 2025 22:00:44 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53LK3qUd021089
	for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 22:00:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RxIreYtDs8PbxaWWNugh8dWagakL5JwQYhA96Zqa+B4=; b=SPrIDwSfCZk8LcCs
	H7FS4181QO7ZCoVZcpL4inEKpDlj2RGbVk0bu+D8xnt1Wpga4CAMyP8eIBcy066m
	Z6lC/YhMVR2YVPOveBLC6k8a9pZCfyMTlaYLnET6yih4UGlvWbZx+IFgFx2uuJaA
	q61pNmlSrlP46frW97lSqkMPNLuDKRS/guc/4HNy6GM01eTUitO9e3jToSqvyCMn
	rPvPjQ9SiAViPofaEeGNhLqcw2y2PbZgs9TJvcosD2yASLwTNgdDAkbUfKNcRS7/
	01mnpViGTO9IXLLpDyO/XB40BU4xn6lJVPLm5tH3z9toOKIUSZQDT/HYdG/v2WEA
	CMk+Kw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46416qwkg5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 22:00:41 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-736b22717f1so3363726b3a.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 15:00:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745272835; x=1745877635;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RxIreYtDs8PbxaWWNugh8dWagakL5JwQYhA96Zqa+B4=;
        b=pTLgqpste7gLmPg/KuhgxePeS4CeBmsnrgaymJPLR7MYxQCkSEkm/rinR7pPKkkp/H
         NB9vHzNC2794DvC3ZQzKqpJ9Im09SNonpCIqgJO/cyAVjPXWJjg8cB8BtO8+9q840kqg
         gg+Q/u357ZH0V3g9WCHDyzGreI8C0MmukmBoS1mI8uUDaSHXV7ekspcXGIvXJtZ/7QBn
         uMyJlbnPf1NNPZlweM2R0SCXOyXI3A6/YaOidUM4a1oQdu6wpUazii5PVUaW/OTIyHUu
         lWo/G+SpEm78mj7n5bvqUloxDWh9k9p8r9uXEq6gcQsfire78Bz6nZY5YT+YLYZ2rlQD
         NWkg==
X-Forwarded-Encrypted: i=1; AJvYcCWqyy0sqJO1H5YavbV8tTX2Ymw5Lv/UVFRLWEZrNFPfD6nPYXJFyP4rMBRXyMb7FZUEIDqoDeeKlEw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxNj3dn9K4XorvLy8IpwQ1p17zxSPBcmxZQ+FKzZeuc7kvw3rzk
	3QKpcHIghcIw/5uCHYpdyWn7Q/fy/2iYLxpWao8SZmnD2wLl8HQKcncg3uTgrbE2jtkZn64oQon
	t3MO3aF7JojtdkjVGvJG6fIX1H1V9QLemJDUVB1sd/hckuuQt2GbCQ3290/3BKHyO
X-Gm-Gg: ASbGnctGDgwesTNHizo4Sphwf+6asfck9+ES9QyZu56Rs7pzH3PsE0ueKUYUSkpMjxv
	dBagIm5DLStUxpdRJ8rN6WC9eLHuNC92hn0xxQIeALAvM2p3oxUP7nWKjkJzg9be5R0iEr6iKP1
	BRwr2BchH8DaN8RxVn5EPRGUo3ntgj8wKkOBZ9tauqLcF0kggRAQ7hG5BMCaosas46rDDmX/UCb
	xZdr9NPCQbiqyOqTXLekKfXPaqDNkzcuCtrEw5cqCrNgbDY+NIiaUbopKdzzM+SO8gkq0Tflkbc
	nCWFRMvId4GbADDBQOOkYd6onpExVDc6f89eqWFtJV5MpOp9TZmILp8qvsfKwUNY8Xs=
X-Received: by 2002:a62:e315:0:b0:736:4c3d:2cba with SMTP id d2e1a72fcca58-73dbe601c10mr16714355b3a.9.1745272834748;
        Mon, 21 Apr 2025 15:00:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEa4d/A0MdKe7wsQHbdyWdb8WfMEvnr8OJVqW1df+NeezeSlqtJ/whYCxmwSASSmgAQKiKdoQ==
X-Received: by 2002:a62:e315:0:b0:736:4c3d:2cba with SMTP id d2e1a72fcca58-73dbe601c10mr16714297b3a.9.1745272834133;
        Mon, 21 Apr 2025 15:00:34 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf8c04c5sm7107917b3a.24.2025.04.21.15.00.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 15:00:33 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Mon, 21 Apr 2025 15:00:12 -0700
Subject: [PATCH v5 05/10] phy: qcom: Update description for QCOM based
 eUSB2 repeater
MIME-Version: 1.0
Message-Id: <20250421-sm8750_usb_master-v5-5-25c79ed01d02@oss.qualcomm.com>
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
In-Reply-To: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745272824; l=1377;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=+hImyIOsCXufDPn2hP6J7P3TE43wajo+VUahTyCkksk=;
 b=e1eWhBFHzDWXtYIz2cG0r2tDlIYq7kkjoByLMH3dJK3efUPNwqwPXRsotlSepEFtiK4HvWeYV
 56XvmXYuE46DxXiIiZYfWfv+gCA/1Ne3Xy6BxIOP+QrhBjZD2uOxJnZ
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Authority-Analysis: v=2.4 cv=N7UpF39B c=1 sm=1 tr=0 ts=6806c009 cx=c_pps a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=2IHzoM5ujN45o2WKKn0A:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: UCAbApYVCEH0cJkgyqrW_qnCetpLa6Fm
X-Proofpoint-ORIG-GUID: UCAbApYVCEH0cJkgyqrW_qnCetpLa6Fm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-21_10,2025-04-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 phishscore=0
 mlxscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=983 impostorscore=0 bulkscore=0 spamscore=0 malwarescore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504210173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_150042_763365_9D742129 
X-CRM114-Status: GOOD (  13.13  )
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

The eUSB2 repeater that exists in the QCOM PMICs are utilized for several
different eUSB2 PHY vendors, such as M31 or Synopsys.  Hence, the wording
needs to be updated to remove associations to a specific vendor.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 drivers/phy/qualcomm/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index c1e0a11ddd76c2056eb2e72a287ece4def2cf5d8..3cfb4c9d3d10dce49bb93b241f9b56c75b934601 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -135,12 +135,12 @@ config PHY_QCOM_SNPS_EUSB2
 	  on Qualcomm SOCs.
 
 config PHY_QCOM_EUSB2_REPEATER
-	tristate "Qualcomm SNPS eUSB2 Repeater Driver"
+	tristate "Qualcomm PMIC eUSB2 Repeater Driver"
 	depends on OF && (ARCH_QCOM || COMPILE_TEST)
 	select GENERIC_PHY
 	help
-	  Enable support for the USB high-speed SNPS eUSB2 repeater on Qualcomm
-	  PMICs. The repeater is paired with a Synopsys eUSB2 Phy
+	  Enable support for the USB high-speed eUSB2 repeater on Qualcomm
+	  PMICs. The repeater can be paired with a Synopsys or M31 eUSB2 Phy
 	  on Qualcomm SOCs.
 
 config PHY_QCOM_M31_USB

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
