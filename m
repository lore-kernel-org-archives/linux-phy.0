Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E533CD4F4A
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 16:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6hYFr2WW+Z6oyTIuv8RC3NhuR5FD6gmVKhwNR1I6SE=; b=ZkRIznwnz20T+8
	ZnqidzjVE25KdMdEQovI53OU7za+ifYRI5Fh/UnD2fI6HJAU9X2VMN0TPEclbO+gfBO3a5+fpox9x
	i8vekLO0CPkSylF+nerZA8Hguh4Pyd89XjYkZB7uprTQAnOWxlByYV8vqtrk3/hokwhlcYty7lCwy
	f42pvAUJmS66U4ny9MCpNzt9KO6mrLUZd6+LCWs05vlQvAWM2Ywm9fHANWBAhhF9cjyAABzVDBDsG
	cHEXrMeqgr/eKA7nXUx4Gf6UPieg0oMR3qce70ajKC6vPhPBmtALaICeOshm/a5fUWuEzoq8nIISg
	sEC5oU0n3d8gp3iUjYtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP1EF-0000000GLjr-2uyG;
	Mon, 18 May 2026 16:54:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP1ED-0000000GLjC-1nBj
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 16:54:06 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64IBHQWC2482375
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 16:54:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=QsRIgQLI2Vx
	jSQE2G7J2CVT4oRZL8O7+2aFEOMgl1AI=; b=jlf6SxZvDkUjLbUlYWpqN9ECRy2
	1TGxM75oOz9LiqLeJoWb9CbgFhmRzX1pWc8om4HJe3Z/S/XVrEi0LFqdI97mCI07
	Yi8DL77Ba33eIJ4PEBXAz5JwlkWOfmcV6Zuxd2s1TdZBi1nlqaxWPfLUE7/ye18G
	cumjE5bpEiu0iAOZZPrRdKFd8Ww+9kINVFucLybXsVM81qvgDC2SWksWXcqYq96w
	BSCmskxaYfvF7OC/QELhjYbBszkkUGwMi4bhD1sJ7839UqSw4agv9thI/imC4ySJ
	dwhaquucbhB6TEixTO6obuW3sjY8j+63iYIwrMC+5a4VzOz1VOUE7bL5qvw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e81rvh9en-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 16:54:04 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2bd6cc53fd6so26096795ad.3
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 09:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779123243; x=1779728043; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QsRIgQLI2VxjSQE2G7J2CVT4oRZL8O7+2aFEOMgl1AI=;
        b=CKI4QoazVbARiVtiMf8aRFahoFVyEqKzGIZZ0K1BMzlPPMvxey5KWSHa1wmuLwZWIl
         1+wumlXiuBNXlDL8APKH+cdUSGhvWlmsmMCcLMucAuLSjzQCAD3xzvCKgVzaX3KJLkhT
         GzD7rXK8JiKlxESbYSkghBgknDprPhHzLE6QNo9T+vh1C1CQ/I53S/jYYs/afKdxKRz1
         1Na8ZNUko8JS9DzD8toGu3lJLRmv50L8j8Rs7M6wMj3rOHjxQwN6mNNiFwkooF+KNqLt
         ZH/vrdADHV6HWJFNeT2tk28lDPSYyB23QP+egLlO5M2XUH5MUizSpBFx+DcMEIYr3eQM
         DYZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779123243; x=1779728043;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QsRIgQLI2VxjSQE2G7J2CVT4oRZL8O7+2aFEOMgl1AI=;
        b=okZuhT2yUUhuLJEqHTPx2KEsdkBdufm36sn8pnX5GMG/HskRR/ghRyZ/1KxJwialfU
         QHIOFZpH2ZDVmcng+QzVGur2kauUrYNmVZ/0tsiDlyeDtWbRlBCI/ND3cxsLy+ODyTYG
         AqJkFDUtYrPk52zW9x26wWuHh+bcY18C7MyGgCT4yEJmHtYe7EtHO1hFTUUU5NEZGT1G
         h53T95bwVeBdWOvRwvOQYzrY1CPVfxZrdQE8x86qcbIb8rBJnwX+8EQ6HF/3exKwW7M3
         dIdQgsgSyf0BvbwxOMNVDOrscBhJM85FDBu9weHvqqJPs9tQHSdL3LRxQ6ruIxNSx3PQ
         1RnA==
X-Forwarded-Encrypted: i=1; AFNElJ+x5uZDRXaPIZx1GPEKHaGUF6EHb1TmUsigba4ZrTFcO1A6XdplQF0EJsJ1Hinsnz4yMiAdmo6cywg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyhFSioUXCTzNOzyhY0lryxb+DuwnCB6wkU+MSk5bSmxerEbFxy
	rp3l0iu0H6rP8WBF1OcerOa5g+gNpYp34MEwe2pyNAUgyI2mhSC4UkMM3unpmB1sx0sJYIOkwko
	iLjX5IL49nf7KheKvdvL2jwMUZlE6ZkN8rxDlsxb03jcM7bgvMYaj1N5vm+1vxL9rhTRX
X-Gm-Gg: Acq92OGBZkXJh5kMBJKAYwhrjvZgkmRXenMwej8r5whONuIMjPHvtInkD9m21C0dI2T
	dvhMa3Wfa7ypnAP0cTSlGHal2nw4/ehV2vkXrVeKLovI/oeHsswVyf0WJ4KVow80wbtL05J3uFe
	ZPjFa/zlQlVOSa09KbInTHJyyedBPmcd7qaLcybMv2B+4MkJM/ZBgUW7rjGO4oI6+XMOZWZZf0l
	Y/yBnpxRKSihgwfRE63HVhh9QOMnLccUr64wtl8o9xHOxbrdxMcFSg4w6/1A+1pblvDp4W2NvgE
	I8m4jzDEOVNGdi/wkXxvk9lxBZsQQbcTZ9TwBXUeuHsaePPpXke1VUHzdKqlbl2f71xYPfeHRw+
	Pu/qtLTEH7n2/fJn3H1NqHhr26PVosHvwTjR7FmJqgLJGpxBSYmXyWg==
X-Received: by 2002:a17:903:3b8e:b0:2b2:4b4e:e4d2 with SMTP id d9443c01a7336-2bd7e8056e8mr164901075ad.15.1779123243453;
        Mon, 18 May 2026 09:54:03 -0700 (PDT)
X-Received: by 2002:a17:903:3b8e:b0:2b2:4b4e:e4d2 with SMTP id d9443c01a7336-2bd7e8056e8mr164900635ad.15.1779123243000;
        Mon, 18 May 2026 09:54:03 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bd5bd5fc47sm149971045ad.10.2026.05.18.09.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 09:54:02 -0700 (PDT)
From: palash.kambar@oss.qualcomm.com
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
        andersson@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com, luca.weiss@fairphone.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org,
        Palash Kambar <palash.kambar@oss.qualcomm.com>
Subject: [PATCH V1 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY compatible
Date: Mon, 18 May 2026 22:23:44 +0530
Message-Id: <20260518165346.1732548-2-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260518165346.1732548-1-palash.kambar@oss.qualcomm.com>
References: <20260518165346.1732548-1-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE4MDE2NiBTYWx0ZWRfX3jCuQ8aaK4IU
 4neRXv2lkOPJrjBYIkShPVR2rdjuMpZqyxlywxJXRx5dsBJz/ujJAMusE6MrGMGzx1J+GJjvCmQ
 GMIzajEARTqGkA1tNwlAmNaZGhuuzYAtTJgW50AE2zqHm7inS2tkpkHKfKgCIZSiXaAmtIv4Poy
 Wfs7CRfy0X/GkEOC7zJaDt0cTyztfxJtbKWR92FaeMSM0JZ26b+y/hBSRtKBqObp4A21OCLgluG
 jTQrHo1Cqzcm4r//E1WuEFdTQFDdSAVnqXvIE/CYzgCLLYWXxy200p66CEtbZppOZwPu/0EjF7P
 rZOtNKPDvtqTiP7WmbohzpdkJWCetK3+gxsaiyNKVb4eGvlo638/DOQD+PY+KlQ34rZr0eFQoi9
 ogUd+8iw96wzXPz5IeTuKy+e/aH9km+enVN7Xa+X+McWAUGaWvek5BkhW42+iAikA9uPV68MsQK
 EkJc+MoOxk14peuHYMw==
X-Proofpoint-GUID: gdugKJpWmgif8ixYcqJ6H471C_Ezi7g2
X-Proofpoint-ORIG-GUID: gdugKJpWmgif8ixYcqJ6H471C_Ezi7g2
X-Authority-Analysis: v=2.4 cv=Lf0MLDfi c=1 sm=1 tr=0 ts=6a0b442c cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=YyC-2lJWTkF9Doz0jaYA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-18_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605180166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_095405_585034_D2665E62 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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

From: Palash Kambar <palash.kambar@oss.qualcomm.com>

Document QMP UFS PHY compatible for Hawi SoC.

Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 9616c736b6d4..2326dcf38a46 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -37,6 +37,7 @@ properties:
               - qcom,kaanapali-qmp-ufs-phy
           - const: qcom,sm8750-qmp-ufs-phy
       - enum:
+          - qcom,hawi-qmp-ufs-phy
           - qcom,milos-qmp-ufs-phy
           - qcom,msm8996-qmp-ufs-phy
           - qcom,msm8998-qmp-ufs-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
