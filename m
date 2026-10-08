Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D042CA6007
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 01:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaTTBFNL1VwnPlhw+NbLIYlPvekPp7yA6vZUYBEKLeo=; b=OMQDSXKNYKyL0/
	odtKHN/Nd4LcppyLOgPwlN7Fk6ACeiq9JL0xuKfoiCA001efbAYZWGAY3UEzMiV8B4bF990GoINWS
	zOfYSs7ACRuUqg/j+ckpKutS3zGfVqUaGwTmXOlSVxDRh4lTHt2fkgJs/eh50Eslm5TeC52Yt5LDV
	XEk6ypMlCoRwjo7hRLHnUMOvF9H86cAjUJP3D3rPiBf27QS7ZUaXKqz4FeNG58CpeVlqAXZ18dVMx
	Vo3CUejhPSzHONQIvqNWCkhBpKDpnmCfTuEWnzsXU7vQpO78RzuuXCdO2Slkyt+u/mzly0fDQ0Inl
	X+Z/YXnRc8sQRkB27TYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEdHn-00000003NMo-0XHV;
	Thu, 08 Oct 2026 01:51:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEdHk-00000003NLt-2BK8
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 01:51:05 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6981hLa31334262
	for <linux-phy@lists.infradead.org>; Thu, 8 Oct 2026 01:51:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=LV2BIYsUVUL
	vybE9644thYeT30NIhyAOdd6md90QgEY=; b=i/adctdT60q9QRC/Lt75j45F6HZ
	UayrqAk10lf/8UzhpDFPX5+6esYW+AufyrN1/Tm8gDAns9tH12ALykTBcOWGyuig
	ldbSgb07gMxG6X6Im6lup9IAiVBirU97AdG7srg+5clq5zxZxBZnkqH9xOBIdJt1
	JM8P/ckKeM9xyi1C8OfpYCsiIzSk1OuvCcE4AxnbE3nvok0bIygec3B+KYwwThi+
	309Weolv4xosgO/m7Iz62N/O+tTIGq6ITlHpAX1GOZf4R1X66NGLZ2B10OXZfGH4
	BEbqrfZsTRNAdbtepTF5YYGolHma0WtdWue6oOi1uGPB9P4jI1T0maycpVw==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5xe3gncn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 01:51:03 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-3510a481ae9so9104480eec.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 18:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791424262; x=1792029062; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LV2BIYsUVULvybE9644thYeT30NIhyAOdd6md90QgEY=;
        b=KPAUQMPjY01dLIw3fNqIQRgiBDD0CRgSV7v9i65VMrwap3L4fKo55tcnASfKzEYOLx
         s5pwNnCd+5OXgxUFETJ7aYAEpa9Uosvn9Pc2jQ4UJ0e0rHNvHiOo4Lq2HzBywLjY+IsL
         01mgrYrfD9XqdakUnS3jHvrMTxbDElkedN0ITh6EQK20LR/mp48ssqVsAOmJtcNdb22V
         G4eqwsqMzkC+im1c8NE5MQcehF5ZfPUXOoUZi3wGUxWUAw/jR/ggKxlKUmSCe3Aec0Nk
         /pKY51BLxLJ7oox1FI473DVJPv8iTaQoWOcshtVlZAFK4tfFsLEI+7DrqcJhzJBP3vsD
         VTLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791424262; x=1792029062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=LV2BIYsUVULvybE9644thYeT30NIhyAOdd6md90QgEY=;
        b=S+wMKN0URhY4VuUKWlTNJeXddVE3exIGrxUMDXiQp5DzX6QUBHyb7IanrQKu/K/qGP
         PidhwA5pmQ50izLWRUUMyj44bNNpZD/GiOaMmW+Vs6KTKltakyB7FUUGnHNgNN2butf6
         0g6kRUlOR+xQT03NLWduEIJ/yw4ObIwgik+/BJ/lRzGuv9+Yw/EdqJgF8GorJeCY66p7
         RcndVpdPS525PSkO9mKpe2rCnKgdUJmWADLZ+zkCpZzso9zFeYKFE+2Q6p06qh2jPVo/
         SFMlXIM6GPNqqvmfg9KIAT0gav1aQJfNrzS2zyTTyplqx2o9RvRCDyjYl6nqeWcp2bob
         9pAA==
X-Forwarded-Encrypted: i=1; AKwUvBzdZKxTc+pH9gv9mHFE5unV8W51WDN6AbLFfEnL83U5a24sZwKVd/1SC5r/RMHkjPSoAB+/JbhsHAg=@lists.infradead.org
X-Gm-Message-State: AFuF++nBluDoojcsFMObOjK4nfDBY1XCa6gYEmj7DlOdeG1OpJxmRaWV
	JYbIsbZGcra+i2OxJWpgZminyqbOYOIV+TiloJd+PzqgMeN2jXneKLb9BwrntuSbbca+I9b+iB1
	qyD8rVynUyKMFar7xYyl2jft/wWk9b7oBDdatyX2Oh7W7nMIdEwClhaoAujkeKkxWrpyQ
X-Gm-Gg: AYBFou0kWoKU/14jXK3dn3OH2DgoFcesazNXLc1s8pHJMAj63j2+6/VyvqAkgbi4rKP
	+mgv9AOijwJC/msdDHAYqPtQ7SRxB/WoUuZsgYZzbRKZdKN09osT3wFLqYcbN+xxHLOYrhEfo+0
	i5OPOBzxz9uQo12ywi49pRwsTLoOtq8XLffn0GFA2B1JNYCyOn/JJRYS9GfSCSNO3e/QMQtpKpD
	muvPCtLSKz1eUsPtmcSpLWhhUkttJG1uElgmiOnvIVpYQK/bMFUYL++qjkgeHqDNy+Ri9iRsgqm
	rBjzUJ+j6Qzad5IhfC1QWA/udLtBBDBwt9QgqlN3XMpyhP9KhyCQvrDdSNbC7N75pPx0S3eY/CL
	GM9E9bVhFLv7+1MQEgW5P5Xw6zs0o0YU6I1Sxam4DpZcKRuuI3oUg+07YcSA=
X-Received: by 2002:a05:7301:105:b0:351:27bb:271f with SMTP id 5a478bee46e88-3515dd4c451mr4118601eec.11.1791424262144;
        Wed, 07 Oct 2026 18:51:02 -0700 (PDT)
X-Received: by 2002:a05:7301:105:b0:351:27bb:271f with SMTP id 5a478bee46e88-3515dd4c451mr4118573eec.11.1791424261528;
        Wed, 07 Oct 2026 18:51:01 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3515abb7117sm11761823eec.3.2026.10.07.18.50.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2026 18:51:01 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH 2/3] dt-bindings: phy: qcom,snps-eusb2-phy: Add Nord bus clock
Date: Thu,  8 Oct 2026 09:50:16 +0800
Message-ID: <20261008015017.3359804-3-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008015017.3359804-1-shengchao.guo@oss.qualcomm.com>
References: <20261008015017.3359804-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=NchzRGD4 c=1 sm=1 tr=0 ts=6ac6f707 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=-2z6ypdNruSm38GMId0A:9 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA4MDAwNyBTYWx0ZWRfX72mon3tqE0DP
 GiHETSpWrqzThKjZvr8e67xIlYm0o4EPE25uD+avdCm2xisnFW83V641kYnbIWvLwn89XDyFL/d
 0gEvrtOy3l3NvfW5QJxUI0gJDVyeu8k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA4MDAwNyBTYWx0ZWRfXym3EQwFmcOZi
 fNyYad82ySVfnb+bajmvs4cY8VFIwuLsM4vGfNgQnjpg0ryHthmR9dV0WwOmxOplBEQCCjMGeSD
 KvMs50u0ZGZu8fRqtPo7U3nOaNret0Hxsnfe3Wo4SsF0GSthWNiaAX1lvMYb8TCYTN21Q/E5Jqd
 MUlfI+VGUiceXWjwhaIwFjUCGqlumwVyGGh8OlgwE1WdkQ53+tUvtGF6ni+jqlIxo3TpkZ8zKyg
 JZ8q4CpsN66SsVDKMhT4EyLq2p/2I5KwajKieMxU5alBQDT1G70DXKuUZgnEU6P+PEEcw4ENQUp
 miESCVvDWOlFWqYdtKiVoWzrS3xjNlTfK/e/4Rt4HqqJoZqzxN+IonzCA0n4jrcuhpJsXlSkvm1
 vNpLNTru9BQPsWwynm91gmGYXm3Ti6Ycq1gTNI1QdFGn73V480naFDHdfwVPkJkpTlUej3mUBmI
 WNKrDN1KMLAyhM95r4Q==
X-Proofpoint-ORIG-GUID: ucqwBM80IgrHpe8IVY-0xHnCT6U0Q-pn
X-Proofpoint-GUID: ucqwBM80IgrHpe8IVY-0xHnCT6U0Q-pn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-08_01,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610080007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_185104_676460_1FB6BB5E 
X-CRM114-Status: GOOD (  10.34  )
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

On Nord, the eUSB2 PHY registers are reached through the AHB2PHY_0
bridge, which is gated by NE_GCC_AHB2PHY_CLK. Allow an optional
second "bus" clock for the AHB2PHY bridge, require it for
qcom,nord-snps-eusb2-phy, and keep other compatibles at the single
"ref" clock.

Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 .../bindings/phy/qcom,snps-eusb2-phy.yaml     | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 931cd0e7d297..67f2a587e65c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -34,12 +34,16 @@ properties:
     const: 0
 
   clocks:
+    minItems: 1
     items:
       - description: ref
+      - description: AHB2PHY bridge clock for register access
 
   clock-names:
+    minItems: 1
     items:
       - const: ref
+      - const: bus
 
   resets:
     maxItems: 1
@@ -77,6 +81,24 @@ allOf:
       required:
         - resets
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,nord-snps-eusb2-phy
+    then:
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          minItems: 2
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          maxItems: 1
+
 additionalProperties: false
 
 examples:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
