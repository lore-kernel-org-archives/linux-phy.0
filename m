Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28A08C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 11:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qVmsG35vfVWmK/nxyp63OYY1kRm7722CE9UvafxK2I=; b=PbtphQqEz7us5Q
	Iz2vkESG4Hkim/YhYXG9vuQ5KGUh4a0myM9tqKxYcujG3QRGSFvAUGADaJUSmdVL5FSszvVWP5LRD
	tAmyXinBG+edjbL5YF9ScoZ/exNXZSBNBbFJ83L+uOCm2+8Tg9RhA1M8uMnrPVhRdboeRusU7rpxV
	PJpS2eb97ha0QCAjBIKMX+EBL+TVwUkCMLibMqAQoPZg+h5LKZeTclK5AqIp2XGcyxWnUBjhAODiu
	+sDb73g97Wg5pv1fFTvDZV3BokhLmOvWFGQEJzjQ1bk44MJjqmerUBR6y6gVolr8hJy1MGNulJpdf
	WOImjUexzU6grfcsgppQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GnL-0000000BcfU-3BsJ;
	Wed, 09 Sep 2026 11:48:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GnI-0000000Bcf1-2PP6
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 11:48:50 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 689BUQPJ2376525
	for <linux-phy@lists.infradead.org>; Wed, 9 Sep 2026 11:48:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5ptw7PO2IxZi34/R9TCTZRFlXTJ7+L0nCUhyqPDnhdQ=; b=bGjfqDix/tOmRuCp
	DwiVFyVxJU9onH08g6OhyrXvMKY9ZeLHlA3xj68GqzeUVgsCDENmta2l7Je7ut7P
	NULOt96MDkIrpGqfG0kN1wAwTWhPVvCmyeUECZuCFVR2xjQz2wDFglxpRVfEyS+e
	tJX7heNcIMTEWi8OkTmdJBem08Dhsk8jC/jNH/c7Ac39TECUN9Msm8kAslHyxTgU
	31UBEPN2z1S5kB3SuxzfPPsUSg+hJN7dxxuPAiGTmekNjALwWtoqXQx/1ehChCV9
	XYmPscY8Qr5SvdMN2giVIXVSs332mR12pshk9Zo1EXvCie7xV2E6uRfmGEA86IPp
	ErzrDg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gk5ru08vj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 11:48:47 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-398fe469aa0so9346441a91.2
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 04:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788954527; x=1789559327; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5ptw7PO2IxZi34/R9TCTZRFlXTJ7+L0nCUhyqPDnhdQ=;
        b=S8NTrdEVm2YJJsDjLYK/rSuSrveFzirPH/i0hQzbitecCpFJcaM+FeamxJbjNIUjh3
         S4otUJmype2BwAyE/SLL0ptYj+ZimDgjwK9RIIHRuil+bIL1+HTExaRqUOBgKyKITLOK
         /N/JakSOQdIrH7h+Fj40aViV+OI4rzsANwtoGlflQz3T/iyeBWcm3K6jMW9k9xvl8b99
         nNk5twOIay46JMU47yB4PQlwF+GGYQ2Q/2W60EuwPuyvNB5dmSgkfzMrd3vKMPYeC8hZ
         VN2+n+eEht4q+lVvLmopjyII0BJY9YvT8bQRwAC5nzdwmBObSKYfstACQRK5MKQl5Uar
         Xy6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788954527; x=1789559327;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5ptw7PO2IxZi34/R9TCTZRFlXTJ7+L0nCUhyqPDnhdQ=;
        b=QLC84jX4oxC8kkdM43LLtszaOK/4ztBGlMAZGxsbSuV7/0LQHey884g7sS+LqNbyVK
         0jL/yCB0v+MUs8ZNhS4ua6fkrLrPlQFpyO2d+B/DHQBU8gpRlvhyewBWrp45KiFN+Pn1
         DCUsA6uPjwIu2gauRmvTYc0CpwrNCxp1KHINxy8ubmz6ktuJLKUz0BQ7W/snFzf+jqdR
         kFKz4FsPMoQLAvg041FqOSVWgkCjK8JyTDhsIM6prr6ectHRWJ/SsonRM/13vvjZSpo1
         lAZuMcUL72wyF0nqBpFQiFo6G6QP/46glx9VetsZ5zGrYksZ92xRrMVOl47mSM0De/a6
         ceFw==
X-Forwarded-Encrypted: i=1; AKwUvBwdD0gijM5gW7snPSYSpSvo7dtTTKVXl23SSglSmHKxq2FSyGFssmbRP5UlabycDFYhAL/A37cmOSU=@lists.infradead.org
X-Gm-Message-State: AFuF++ldLBot1oW8sRCUW9LQmceJeWGTpVE/6KcOzrS94re+EKhTShC5
	iIcD9WYmWIPIfK4Ky9bG5zDTJjcl6zbMTWvkmSKK+OrTeDtZ9Hx9PyOoryz34B0UcX/QLkc2X3r
	MYlXM5tJ354d/sc4+gCMKHhioVQ86cQvIG3kQH9wLJfXMphlU86bFbMalLfo3XBmapuL9
X-Gm-Gg: AYBFou0Xmr3ygw91XHtKrIy8WOE3p/Lo8LD03uIHjQF86NrYfFDg7MTIDT0QMHYaTNQ
	9RAfd1aPB64NCDBRZHNHedSqxZFhhxhz71XqZ9IE+agQ9GySdMxkcjcaUJ7kIs0vEya1Sj67gzt
	jle5QhUUHFpVzGcV8RfcwY+O8h94GqxPVoYMoL7Piyac67C7yNYikjDUOoIXb1HSwshRiyuMaeW
	eFhBR1Y8sT4XuFlJ5R8txbRAhwzgG6J6rVHfFOaNh1vuedtkFwRhWJPZF+gCAdYSvVWkxwVowes
	iSD89NkK+sQMIb7FsJ77WtWpAwoBkm0kDxXTq8o0WAbG20jehI+ZZffbxdNnNXpcCGIl3kFhZ9v
	jrCWq0Lqmcnj8bXvOJnfLQYizS0x3194VHRc=
X-Received: by 2002:a17:90b:4d82:b0:398:bacb:1137 with SMTP id 98e67ed59e1d1-39d70b1c7demr451388a91.19.1788954526462;
        Wed, 09 Sep 2026 04:48:46 -0700 (PDT)
X-Received: by 2002:a17:90b:4d82:b0:398:bacb:1137 with SMTP id 98e67ed59e1d1-39d70b1c7demr451338a91.19.1788954525966;
        Wed, 09 Sep 2026 04:48:45 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339b608409sm50156857eec.21.2026.09.09.04.48.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 04:48:45 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Wed, 09 Sep 2026 17:18:17 +0530
Subject: [PATCH v3 2/5] dt-bindings: pci: qcom: add Nord PCIe controller
 compatible
MIME-Version: 1.0
Message-Id: <20260909-nord-v3-2-b0a82721c547@oss.qualcomm.com>
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
In-Reply-To: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, shengchao.guo@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788954507; l=1017;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=9ql4uJf+bmo1nNNjIE6D+tbj4KJVSk+Obl363fXcddg=;
 b=tHX0LCb+5Wt1So4bJXxbiVPpqbP2gOaAqHp8Cg3P+pLnlwY8fy6UkI5XFgrfp7cKloLGT8Qan
 L8Q6S80Gq8LCUIq/jcybPpijg2GnFOynErCs3iFo128QGtDJjWYRbka
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=M+997Sws c=1 sm=1 tr=0 ts=6aa1479f cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=ly1VyIkaSgMpB_u5KqwA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: hYbu55q78N03UWzAMjOY-cyyH_yD6u4i
X-Proofpoint-ORIG-GUID: hYbu55q78N03UWzAMjOY-cyyH_yD6u4i
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA5MDEzMSBTYWx0ZWRfX3/qiXuk1ciHe
 m8aKDtCZVe5pkzY3r+tlUMU6CrrJrK3pq2xdkzBqfHuH/Yw7rcUxAIpaFS5Fls/gXL+j6oU1wKH
 gCjOMoSGqjh54/5ZIOn07siywmdd+1Q=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA5MDEzMSBTYWx0ZWRfX7/JeFtzQly1Y
 8iwBq0pIs3POk67IzpcNrAmFLU0xu5x5BDOQfwJtY4PjglrTEBYIGqhOYpYzlR2Bv4BdZlgqOfK
 CnjsDpeAsTFAe3s2qQY/TnwNm3GyjEikcFd0eWHaZyF6AFe2YtrvF4w85K5M+NrfF4v50V0P+u3
 pjirLh52hXVG2F0BsDG+8/4Q2UrlWyIyHfjpFCBkjYylTHKY32xciJZC2DjORSkH2Nh7kg4KxXO
 PxU1w2ouYCX0purjCs8b1x0RBr/Q+LYqk+1OMIC5FX86d+w+0chQnW6sFgQRqivJooQJtygGfu7
 6p+EEXlU7spvda+aQWEBlMrck5+HbC4QzfpAYYQC9xq0F33F0vxWUrHMQXXHZb+h9km5da802hz
 A7e7xpdkw3IyQj+IaCq39yEJzZYb17hySXf2iD5Ssnbt+auziCG6ZCxdZJSbVuln2pDta90VLR3
 md/7ZEO+0yvCqk6aq7g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_03,2026-09-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 spamscore=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2609090131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_044848_738392_711CF47B 
X-CRM114-Status: GOOD (  10.48  )
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

Add the qcom,nord-pcie compatible string to the Qualcomm PCIe
controller binding.

The Nord PCIe controller is compatible with the SA8775P PCIe
controller implementation and reuses the same binding definition.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
index 63630a814f28..b8ba2c4449b7 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
@@ -20,6 +20,7 @@ properties:
       - const: qcom,pcie-sa8775p
       - items:
           - enum:
+              - qcom,nord-pcie
               - qcom,pcie-qcs8300
           - const: qcom,pcie-sa8775p
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
