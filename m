Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 150AFC79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 08:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAlxza44yBZ/fxpqKrC6n9fngOIvyUQnkbUzd+rhJzI=; b=P3yRSHXMsAyzms
	QYRyH9ArUTrLT/HiN+Dn4WK9QE/z/Zp/tJ+CbgV4B5flmhhQc8aRv4WxMZvSQ1kJglk2HeYSxHmC9
	N7GmJx36UfHW0TLtRGZpB1oHspdaMjchDLCTEum9QUf87F6zNU03yqZN2Qanv3IPbWlQThcJZrMZP
	hhCDpqV8Pn6nQYKcmQzkEoinxnE/ZYjPUgJYgRZ9QUAD7+3bi2zeUHBn5buutKYfjKOvEGHSRvDfF
	G+YWNT4kNryEqUDr6T2Xm/57RcIQpYMrk7NfC6OyL6uiqKRAXkoaq1+hILBvTEzXGuPZk4hZhntMe
	I95YFWo+DSA3GqZAUHQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3UUP-00000006EoA-31qb;
	Mon, 07 Sep 2026 08:14:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3UUN-00000006Enm-3i7W
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 08:14:05 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68777cTF2724460
	for <linux-phy@lists.infradead.org>; Mon, 7 Sep 2026 08:14:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SbUhSdJqfU4j3cBjHfJ68H8KQt4qtDpaXXeLuXeVgGM=; b=kpmkfczRzIYDU7cZ
	zDm9dSeahAVejyIz48TzxKZQCamFgZd4JmB0N8mBsOg/3kB0fCZOEwQaCvVLoZZO
	fWBQxw8TpnPTgn+we+aVkHv6sj/OeP8iqSX6ct8fsjjbukSuF35lH6lwS4yxAlIU
	w5+HtRzxJ+81mnR/78vkUFCnyJhXmkU291+s9RuH+Ni2jbeg5QsMqWQnpqZXrQle
	Ny4ErBVvrHcxeZOCoLC7Il1KrDu3veYHUEvy5+/iBaJ6jBEe6OQ5lLCG7C78LOD7
	LKG1tBA5W8+3B7pZc5gMEeGYMX7i5t+uNAhYQM6zvLKS4/EQAUEaCrxLWbz9VZJq
	K1odEg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ghfxksn1y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 08:14:02 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cb48f41343aso3880762a12.1
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 01:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788768842; x=1789373642; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SbUhSdJqfU4j3cBjHfJ68H8KQt4qtDpaXXeLuXeVgGM=;
        b=G0UaLcmPzj9KjWZfTIlTHD+KPZw88LNM9jl01fsBy7T4SS+bLhm7QD7Xxv5NiarTV2
         Vyilg8+HSqHyJJBiDVbiSDBbhto1C7xv+9HT/BE6kJY+dXtIoYVGvGSKunYZlyF/6HOF
         IFznlpEuLS6YxvhT8WnlpZqcLlD8ra+LJOR71X4l/qx1Z+uqUQm/4YqOGs5pxVbpxrmJ
         ouqBUVUoLYDcir5xqTqDhDrTxUz/YL5UmUgdeXc8R3WCAGGLcQcJbDcSNCdU8e5nZqXE
         K/OsPwYSxdtXGMZ9DDTIp6srvmTNimaQRvwGk+wH2AMMwvdAAMWMVB3Mch8CGvRCFv+u
         5tlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788768842; x=1789373642;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SbUhSdJqfU4j3cBjHfJ68H8KQt4qtDpaXXeLuXeVgGM=;
        b=N2piftrfJAgM/ab0nDKfS4owYV7wjhvNpftHA1DZEqpfUIcR5b6toLtnchX4wlgX2S
         5clL7pAtKh4XhuLY22kY/plVHRx+xGtty+nxVzlqaBv0XSxW2sSqTFaHRn1PSyhT2ot/
         pybsEBpzt1FYgcKOiNck46EUeXI/sIYC5YmWVxP2p+SotKY0Yyl+37arQyOTvLtB+RA/
         n4mHdW1MFX0U70vtG1DWCFPq742cnvcoWBWOsqBy/dnPH4HJgBu/1M4NV5j0lbYdpL+e
         yN7sM1ZzszZgQHk+onMyCheOVKc51J39cGD1bq9Ztv7PGlbeem0yt8Pkkr10gHY8TIOk
         tjCw==
X-Forwarded-Encrypted: i=1; AKwUvBxMuyuKCGXknObaBtXlMdVRycEm288fFs+c2sI6W+aiNd7fOF8YjDiUZvSlopzfzW2VHn1YsnN8GxQ=@lists.infradead.org
X-Gm-Message-State: AFuF++mEQZj8WqP6YTndfRsMtlqzXW7nS0WY+p7NT7L4EN/xPwsGxnfF
	ATwtfk4lmA+DvjpdavwhSiFAYFn9tpRXuCjQ3+TjT716oLCQ+JFvyi1+DaAWXpp3IWvOnBC4c/m
	0RYYvXG6LlPaDYoaZ4doisvnIB0ANmHfDdUsXm3DkGxqzVhEChvrIgx4NcvKjWMjUlTpr
X-Gm-Gg: AYBFou0IMlcOkkkWTVx8YkGmI/n4vpGo0J4FE3nn1HU7T5yhwSohrjpDnYNpapQKpD1
	ayaDwILOZ43YN3Kdz9EillNXwXK/kAeClrMk0p9CUMFyKmZ74OPsjmIYmnU3gEsOJ2z4cxfh5Wk
	TZGz38ov1HicfBCIDA5mndn4gnBzHjd0jUQ6f+doIwGVTZZPnE/faBe6350wGe0x5XgqHDVJEpx
	vgeKq4s5BRrqozmhvCP2r2alRzakBm31ZGGqV7DttmzE4XlbDXbVfeuKdT8UNK0uDlUqxW4xNbn
	jMl2qZ6219Fgst0A3UBt7jCZQj5HKbLOFIswtzaXO84SkuWd8FNKU32kE/qUwI4H4G+GIccT0Ls
	yhBZ/7E6sovybI6Adk+z1yOR/68mcX3k=
X-Received: by 2002:a17:90b:2542:b0:398:9beb:a2be with SMTP id 98e67ed59e1d1-39b08969b5dmr31357101a91.32.1788768842013;
        Mon, 07 Sep 2026 01:14:02 -0700 (PDT)
X-Received: by 2002:a17:90b:2542:b0:398:9beb:a2be with SMTP id 98e67ed59e1d1-39b08969b5dmr31357045a91.32.1788768841617;
        Mon, 07 Sep 2026 01:14:01 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-143243767e1sm21724220c88.6.2026.09.07.01.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 01:14:01 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Mon, 07 Sep 2026 13:43:37 +0530
Subject: [PATCH v2 1/6] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Glymur compatible
MIME-Version: 1.0
Message-Id: <20260907-glymur_camss-v2-1-75f7982dc983@oss.qualcomm.com>
References: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
In-Reply-To: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee@kernel.org>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mfd@lists.linux.dev,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788768826; l=1015;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=Fe4SJDubEcKN/aVqB2Y6QQJBZVxKn0hGP2YKnt+P5cA=;
 b=C6f6eCb69VSjSIpprg/cZqIZcNdnr08lgFgORs8EYRXbE/vBS71KrdBNMSs+THW2q6wYB+N5M
 bgsuP2N7wV/CWu4hb2fTF03amDOrOJVgLdfyrnXyPOGK+4qlJc59lWy
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA3MDA4OCBTYWx0ZWRfX0gegpPvWQ3Mo
 gSU5XaZU5Ui0VjSq+EAAFwpdzrNPERo7zy0WseZJMF/AdGgsC+ZVgc8zBP4neopVzoi/3eq5Dha
 P3iPklB2SLHwmKhdg67HyWV4sxtVdXC9UowwZpoP4c8h/qF662n8FtzvdU2yZih6HhY3cB/iHby
 UX836XdFpbaXFiZBu3PJ/gSdTRzcjuBTM9N4zhER9dBgQMQ64+4tJIYKk2Ad9DXctSWTDIR7Vez
 xAHN0BU+rbEEGMpEedLZIZXZxzK8Jl9as6a4HDW59PzlcZrnyTDOXW1SjMpWqZTXqw1mr2nyxOv
 d1hDm/NP1MCyuJXMKWtT4h4NsGl8KzhbT0UA3RbzVVEjEayksX9xrJEcqIYAqdpojIsoiflgY7o
 FYDgpIAbIc0TtmBLKihw2IUezoui+4Dqkwey9/tLYKLCurtOZWqmminwDs9sJ2LkuibPUbO2/5j
 64BaZ+ULfDCVo4OBYKQ==
X-Proofpoint-GUID: MZpXMg3A45kME_p5NRV2_MsPvNCIp-G8
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA3MDA4OCBTYWx0ZWRfX4Mc9KFNGUf3X
 29LMm8wptKak8/vpNyL6j+zv0OuICAKRrdwGdorePKqJwX12/OQJHivJyKsqaBhHJ/YkaEdJ05v
 9RnMR975YoaZ2zrYb18AKdi08YLgWG0=
X-Authority-Analysis: v=2.4 cv=daOwG3Xe c=1 sm=1 tr=0 ts=6a9e724a cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=WdnH5iIHsr78bD39pAYA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: MZpXMg3A45kME_p5NRV2_MsPvNCIp-G8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-07_02,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609070088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_011404_043787_522B47AD 
X-CRM114-Status: GOOD (  11.85  )
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

Glymur integrates the same CSI2 PHY IP as X1E80100. Add
qcom,glymur-csi2-phy falling back to qcom,x1e80100-csi2-phy.

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 993271c42fa063a82cb0f6edd41e87b30bc8e109..7ac944974849b99abd982b1544ef39fc32e1f21b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -16,7 +16,11 @@ description:
 
 properties:
   compatible:
-    const: qcom,x1e80100-csi2-phy
+    oneOf:
+      - const: qcom,x1e80100-csi2-phy
+      - items:
+          - const: qcom,glymur-csi2-phy
+          - const: qcom,x1e80100-csi2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
