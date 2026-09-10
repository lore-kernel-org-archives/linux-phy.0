Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2682C79FB7
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 01:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3yqdO9TY2vJ5db7hYkFQcwra9Uf9903XDYI3BA/xdeA=; b=R9mEGWQJzV6GZ7
	ABTcOKCeJfPGdsKbqqHOe/KnHQq6xO9h30RY1Fp/KRNSmp6dUQkAWYvcKi7bu9YNJZ/rCjNjLeBco
	ztgfidfWigX74ApdeGftZC+uvoLIeFw1ndegWSts37dTKc004TPtmHG9io0OJUsLfR/9ChdP9T7nY
	ACnCOJFQ0NfIYBmeKH0qkmhXCLnL2kpBk/OB+SdsI0sU4mOJ9NVByAvqakIOJbI1Y8Fu0ylUOgSlY
	mzt6NT6s0/f4PBtrFxFK83BbsZ3h/LGNuiPDOCkb2jPG08OzWS7epUUjx5cOI9HI47hEkhOr6rAv6
	NW4/KkIUQZCLJo9cY60w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4TNt-0000000DAos-3zGN;
	Thu, 10 Sep 2026 01:15:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4TNs-0000000DAoj-01q9
	for linux-phy@bombadil.infradead.org;
	Thu, 10 Sep 2026 01:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=TcyNSAMZC//xVH9qquYthMcknQJKP5aSIvOZl1B3/Ps=; b=mFRX5vs+x0bwgQq6U3jw52W0uf
	2yDEKZOadJnWBQM6Y7qX2NSkfnLq4cgC65dgvks3Z40uT4WOHvYvn76owl8Wyf7BZFFWKtsa9rNFa
	oT7z8QQ7DcphoZ/zV+OSqsuwfDZth5Rg1mZaQ75TTAbop0rAInJ2U0cp4xoVYT7fb6IdQt/NiE84C
	sD2WhsWG8rDV0PcLhanZqzdI2x+dwY3m2nKiLYV64sn0DGMx5kt8hVCtWkWbuoiCMVlZuYf/vNQa1
	mBnnptgB1fHyvecKmtT7Pb6bxrhJ5wSKkZo9nhWPTz5t/abo0Wr+UWjpt3/Bi8V5QY2N2p4sgGT7Q
	BsIlqFeQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x4TNn-00000001rh8-2AJ7
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 01:15:22 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 689M9lNZ2595734
	for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 01:15:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=TcyNSAMZC//xVH9qquYthMcknQJKP5aSIvO
	Zl1B3/Ps=; b=plEDX3iAFsnzhJmWyJ++S8JZUnR4XWzeaRxjgXtdik05k1g8xwr
	Br2ybuzcldZFGvla8dby0kAM+7HjhtSghqYjOmA1MY4FT8mIeu/9AnOeh4e5Umai
	67RLkS5PFsjLyny0fb10BV4uTgHolZQcM+4Yf4olkkZ933dwmWGRIGKxrDnw8VSw
	srhvjcAOO4plsscsOT22V6SyyfeqMhzuOYNO48JM2wnf3jDQ/JmIuJ7XJrc6jsSe
	mHRWjsbKjvQ4Q+tca/5quQPWjkIWMGdvdBGhEo7cOLAi+qgKaRzuYgc97GZrKGqJ
	qmm2jfxWtcKj07TurP9InBdtfvw3C+zTmGw==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gkcyfhh1h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 10 Sep 2026 01:15:14 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-6b34ad165e3so3819468eaf.2
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 18:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789002914; x=1789607714; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=TcyNSAMZC//xVH9qquYthMcknQJKP5aSIvOZl1B3/Ps=;
        b=ZZ4ePtmSQzZpb7dNamr8zK9GyPTeW9k2N3vswb1n9IAhWY6mbX5vgRv3RR7VmYwBIU
         2Y2RMIu+cI/2bxy2Y5RIeF7Jpppzu22bDNcLmD/IpKu+/P1RmKEHNTRS8rY56zIV6CCH
         6Z0BcvvkgiMzma/3RrA2zHumSKTu782AIPbYCB1cYBwuTLJ0UsN2/+pGOjppX3Rr3zQ6
         MEeiJVwmn83zAwRp6nNYSdM0/YvL0WpXqwHvtlDtEVeUGBsHwZIsXeo5gnH4i7ZyTXQB
         9AF8fCcobaq/TBL5Y7JeZ/RGuuCCcqiOwe1RWGINb2neNKZCacUG/3HBIlQKRqSCslCY
         iX8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789002914; x=1789607714;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TcyNSAMZC//xVH9qquYthMcknQJKP5aSIvOZl1B3/Ps=;
        b=PA3PqgBgV6Cu+AxO7/gGbN6HqN9dxNuXYU4Q/xSesNivfHIRVrcOoq/UKowMagZWoO
         0oXB35VM9mRs6e8qk5dgTLsBp2DXKl2rTRMB6ucOjdfZHVbad9hIUjpNOMXnhhPrrglJ
         zfWk0KlM4OElc9MTvSe3DVF5zf/hITRyw8uJeraVjjLd3wXQDUMZy7iUOM0403FY2ZaX
         wMhO8TX4CrkrfXTJsApfxKh3o3sPnj5x+JNc0MmOIKaANqQ0fFnF+0SFgIh86wVsF/r6
         2azeAwmC4NGcEYDkDxxko6Q/9ur+8y8dFlb5wTxJT6g1oqf8npoSmb/HNqVc9OuvdAXf
         Fu9g==
X-Forwarded-Encrypted: i=1; AKwUvBz2oKkCIPLWEbUKmxGnx/J0MwPmK8J85HpIUJl+Wezo96KJ0wC+h7i4dCEZdJTWfA2ClHLGPJyNft0=@lists.infradead.org
X-Gm-Message-State: AFuF++n77G6lJXBqoyGmOr7Q3QcyfRXYYJN7rATE83Kn8gLX+Cd8APlr
	F9L8/aiBmIgv1rGCN/uTUApyWMxputWW9vaKdMC9Sn0QwXH5usY+eAMkWMsM+31BSfWNqBUqcDw
	hnBQ8VDV56F1xiGBMG6Glzqn5iafmYqQdtLlr7jCO9ibCykyvvxlfMB4yz/4J8mdhyK9p
X-Gm-Gg: AYBFou3z4n5KqvXR/02vSxTfU36bvpZ8hIfpUnzSByRhtORaa4ATNLCzp64Ly9H+X3V
	bdDEXVqZTAmUKFiZLywZ+NTdLNy2LotlHWs2/4gChuXxiQArDt6V3RaHylwxuwy7yrH7L2/jIN+
	cag6mB7A8Z97Er99kEaphvFRehVIAAQxwSLwMlAlPwCQbpmRssN7pYC5A4jBtSohrBHihCkhcGe
	ZO5hb1o0xVXVpHmQUD1jAaGK8F7XVKi9lIDlEbDHM1NTPQeexSaP0PE9QL6Gmm04sn+tHVEsEde
	HhXEJdejalttyX2pPtsWsivAqsYkrKC9JaKMxTjdHzzP4+XOwoS1U5SL4qwF1o7K+IfApgHAzgd
	rbkhgBtouVZOlm8o/yaOBSk9U98Lqw5SBTjR7Ikdhbfp539VS1ni4O+NT8lXE
X-Received: by 2002:a05:6820:f02c:b0:6b7:8396:f3ca with SMTP id 006d021491bc7-6b78396f950mr20792494eaf.44.1789002913642;
        Wed, 09 Sep 2026 18:15:13 -0700 (PDT)
X-Received: by 2002:a05:6820:f02c:b0:6b7:8396:f3ca with SMTP id 006d021491bc7-6b78396f950mr20792462eaf.44.1789002913243;
        Wed, 09 Sep 2026 18:15:13 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1434c745a09sm15284220c88.7.2026.09.09.18.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 18:15:12 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH] phy: qcom: qmp: Fix alignment in pcs-v8_50 register header
Date: Thu, 10 Sep 2026 09:15:00 +0800
Message-ID: <20260910011500.659353-1-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEwMDAxMSBTYWx0ZWRfX9geuof+JQlvf
 gfUct/+HNxmP3xJW8SOSJq7MUahcK0+ui5iPHajfsslf4rHW6fq6+SuWxosvfBJDNOZhikGfwCl
 Ux8wUw+su5PFy+BhF/X3ethWGIny3Yc=
X-Proofpoint-ORIG-GUID: O60_axktc66VU1LGkOLdwMH_DKZsI6es
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEwMDAxMSBTYWx0ZWRfX9rFUOCzO3ogF
 xx3weJH9cMoMVjwvnrAionEfVN0jR1my6GcwV1xKRRwRP6ZXpzdrSO19AXxtl3SP9scTYzu5qX1
 RepWhwydfxNRF91J/+ejivZ+NAoEw6PLDaL1Hdzc5/iNfUeHnYIIv5TdjXlK4IKKv16ZmeHhtCk
 IFFZsH5HSeffMuHwnuZUUFjZXXFiuWNcQUMvh+9UTtEYwlmLjNyCTOdd7MVb8BlKpVW/K/WADWu
 xsehugPPMN/qyKUt3HuXMWsE8q5MvUODVSgwkSkzt/0uw2wHkNMNjyxYQRGE9jU7Tu7xNB5x5/y
 C5zZVXYyqKUxKVKeIaVCle6cUDUA8K20IkW2OYtdI417wXicpcBFBOFNTHyuLSdduVStgjQF1nD
 PXzjcEvd65orxyCIeWn5DOWze3p3knHqWnq3sTPKO1bCpwmHzrfI8e1xRevnqDsyjO6NNEdST7K
 4SQoAYkgybBwncAg0Gw==
X-Authority-Analysis: v=2.4 cv=H5pOUOYi c=1 sm=1 tr=0 ts=6aa204a2 cx=c_pps
 a=lkkFf9KBb43tY3aOjL++dA==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=dxXbasm6c_75TwCK60EA:9 a=k4UEASGLJojhI9HsvVT1:22
X-Proofpoint-GUID: O60_axktc66VU1LGkOLdwMH_DKZsI6es
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-09_02,2026-09-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609100011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_021521_136302_20710577 
X-CRM114-Status: GOOD (  10.67  )
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

Fix up the whitespace so all offsets align. No functional change.

Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h
index 325c127e8eb7..f094517ae3c1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h
@@ -7,7 +7,7 @@
 #define QCOM_PHY_QMP_PCS_V8_50_H_
 
 #define QPHY_V8_50_PCS_STATUS1			0x010
-#define QPHY_V8_50_PCS_START_CONTROL			0x05c
-#define QPHY_V8_50_PCS_POWER_DOWN_CONTROL			0x64
+#define QPHY_V8_50_PCS_START_CONTROL		0x05c
+#define QPHY_V8_50_PCS_POWER_DOWN_CONTROL	0x64
 
 #endif
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
