Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B39C9CFD317
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7ibCD8rPjPiIZ3djLOgZDorY2fAC2cDN17PLnSY8UA=; b=xVFsStMUuEJ27b
	HaN2Kl+7sdQ80HZluHyDSB2sGezF6dInLX0IEXaQqSi2hIUuLw8q4ZBjlygzAtpB60koeBufLtWlu
	kGXZedNayOv+mtR2NPUJguLAoXLqUZZhoOVz0yGNY6+8PQVCo0VzKqRrawAjgXNhYnbu6Og+2bV9F
	d9VJW1rnqz3yFjNrBbtLX6g43kpEY/hqqSSngDifcjTcy2+txl7ln1J4UGTlYTKe5OsjbUk2Chizj
	2pWHPslHB7uA/POikjBd/4qHpmF6FWzRQq/IcHnOFS7WPDPI3JU0UF0kk5i4YHB4XyW41sI0IebJ6
	qH1FlUu1cMSE1+r+L/OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTlh-0000000BQCI-1PpP;
	Mon, 24 Nov 2025 10:26:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTlf-0000000BQB5-1oQw
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:26:00 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO7TCRi3112050
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:25:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3euNon//LBx2JSrUXy4XgZxtCqOpLk6YhQEkZhC/C/I=; b=YhUQocKtl2j0F/Uw
	Eg09oLmxOU9De2BeeFcqcU/pwQPNocTZYB1nkWXyBBfXX2WUNYeKJjT6iqJORsAG
	tvOwMANrazOfxRKdlbjOGj6VA/ddVTEpSOs0PHe/x34B7qOniqMjE0r+wX1UwB+i
	NbncSSMCRLrtDySDVbOYK2y4yww11TUk9JOzPc2wjV57SkD6EKFTuDJfe4nGmmm1
	hF1M0774O++JHfUJqu5yOWz5QL2gIowhJ56irRt4xABH91Ch82pK1Y4oBEccACOv
	ND0K479S1IL3VH/OSV4xLHY+cNqkeGzr7y4hYe/3MXX1KEE5OpWEknzNK6jQrPtb
	o8cHLA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amk10ghrd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:25:58 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b471737e673so5938673a12.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 02:25:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763979958; x=1764584758; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3euNon//LBx2JSrUXy4XgZxtCqOpLk6YhQEkZhC/C/I=;
        b=V3c8lNdIRBrd29iXdjG7dk5eGVFF1zSom4idYPcKMwtbp9YxfB8XqPatVhwwCAFPZT
         2Hqt23T+JSnU4LxyGBkVF7778ekhYNgCynf0CAOrOuJR84Wm+dOpqNjzuFCK6GKCvv1m
         hPPXOmH0121tWS3RW0PIItB4fM+QFP6K33xmWQUdQs7V068Kd3R55uPba5KmRK8gxuSM
         P7Dw+2ZhXkhOd+B+096gs2QcE+wj/oxiHz6e1YKqXys2CGACfGCCIKIIbojg9hSMIkyX
         Rh5034PnXXAL+opXH704E/SqR6eT2xKcCM5m1N7wsU7Q1DZ9sQz/zMLfcRIbHzfMO7Z+
         XOLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763979958; x=1764584758;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3euNon//LBx2JSrUXy4XgZxtCqOpLk6YhQEkZhC/C/I=;
        b=PiZiBWeXAp8fpLEOs/fTMH7NguX3Iu6HYXpnN3QaVVYbMmEgV4fXms5kdjdrkXHKLE
         pjaGEcPrLVtuCPThFYEKUzFzFOQJ4PMY13F8ga0jpC/j3d6YuYPlizrdlWpQdS1cxNeq
         cuCv7CE6lT18XBKHd4FONYcZ/WldCdSAPaTLdn3Nk1IPhE9rn2Ik9nwQ9jfrHnbioNB5
         /6OsejqQ0DUJR8YmeKNhYgt3FtZhqtZB0pJnljvA9zgamW/wuDZw+0JbVg2eTPuwOZIY
         xL+waL1n2yLOjLhzK3A1ePosR1/BfVyi4B7zMk8/MuUk3fG11XHWHk2bh8S+H5ZOf0gM
         UA/A==
X-Forwarded-Encrypted: i=1; AJvYcCWhWcgZ+z32mdJl6UDQ01GJMj/db/XjKwRbXjbFCig2e1d77OIN+qNa5d5z+nchL+WlpHADx/XYuJw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwzidreGZkLeoulKtaV+i3Jtrt8HNj3okJNTEQo+wMKkIc+fNen
	ou4w+no/5D7YsIRYxhdm1F5xdJpAEkF7nIRc+sfx5Gw8y7h1IkU+nl2zIJR2ZnLXZ2/zB3Y7pUt
	hTgXpCWVFm2bsiUgS8BrtrBK/EV7m3Fs33SAL9yNMKgBEfjWEJ6/XQGSFZiHCeEoBnzbV
X-Gm-Gg: ASbGncuh/YgEpLpaI/1LQobp5B/9vhLajVXJfEDNS6Id87NV64AAkNy4d8FiHzdn5fy
	uhkZxEip0vXkdT5YLAppqVN2SQioXBAsRRbJYwBPLoNewHN8GVlkebRvqyaJMBS8xZ6tFh+hiov
	geTEBh731XT/11MeAHuI9r+bisPDrVX8cXf0qfg9gf+O5Pru+EPc5dMlC6rOSXZf34qrUw2BLGh
	iDjvCx7oedUuXHYChmvP/38USSot9Dv0fzn0xK9M+kY3GevCWLsXWOMcm+pSuy930TZURrelRvp
	Vd0TK19rWuV7OEKojRwxiaQFRfnphetmITFs9N87vKPupPEOimi/OaeUUddO+yoTkTBdUVxewRd
	RR8Mk2LXa61kyBYYQFtayWpD6Flo6GHG3XKItoDIui83gvlUtPX/tKK8h
X-Received: by 2002:a05:7022:b83:b0:11b:9386:8269 with SMTP id a92af1059eb24-11c9d87008bmr7364657c88.46.1763979957510;
        Mon, 24 Nov 2025 02:25:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0mhsDOy7DP7bwdncY1sdLRwTjXHphQ2JFcRElT7cBmeugUcoSLOEefGh2q727nCrFfjrU7Q==
X-Received: by 2002:a05:7022:b83:b0:11b:9386:8269 with SMTP id a92af1059eb24-11c9d87008bmr7364620c88.46.1763979956960;
        Mon, 24 Nov 2025 02:25:56 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93de6d5csm46140627c88.4.2025.11.24.02.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 02:25:56 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 02:24:34 -0800
Subject: [PATCH v4 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Kaanapali compatible
MIME-Version: 1.0
Message-Id: <20251124-kaanapali-pcie-phy-v4-1-d04ee9cca83b@oss.qualcomm.com>
References: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
In-Reply-To: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763979955; l=1736;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=niYSh6CsCMrhQS2BRrxlDOLC4Yc6qPICs6YhLuxLGZk=;
 b=TVsF3Wh/jJvkVKtp/Lt3AKnvGvNx8efZsm5g+8YADfhT0UBsHUKsOLKgxkx1u42mFrPHNAhgt
 1cQIM5MLSGeAvX9t38gJd18x07ZRAPiQjEMG2lrOgx5gJRPQ0tvid4m
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: 0VpBIikeDIzOy6XY2YMGrQntwt-WQLnD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MiBTYWx0ZWRfXzXFVIttZvJ0p
 1HibuVDCjEk2HenLKzvsH2qhoHrzRAv3oY7vwd6FE7Aqyw5f6ZROT81LvURfPNU7WOZyyc9zxWC
 1r+bmLH21DzZ/1I+gqbHRnXbTC5IEwjN5DCAMI9yU0L036uPkdqovQRDEc2Z5tkePbkApFhqMH0
 WghC1Nrn4Ob0+06ITwWlpWGkmWYWxgXl/2Ud7LeIzNbd6lo4ny7XVfpSlujyHAArloL80VgW89A
 7x2g91uODVGkh5NSYvSfY+m5DWfWTNEPkULuDU5OOnDAEDaaGUJSedHhzJ+4m8ys1w37ucQgqJn
 STvNd+z7wsru1/r+SiweRH59KFkEBtKaeUt8GaWBACXnLbsoaC9wPFEqV5vGphLNt6hyLxZ/+ik
 XLkyzsv+ITH1fmL/VhG9Zi9v4OYGqg==
X-Proofpoint-ORIG-GUID: 0VpBIikeDIzOy6XY2YMGrQntwt-WQLnD
X-Authority-Analysis: v=2.4 cv=SP9PlevH c=1 sm=1 tr=0 ts=692432b6 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=A6CI9_SKnrlR1hncxxMA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_022559_487446_FE6A20D9 
X-CRM114-Status: UNSURE (   9.89  )
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

Document compatible for the QMP PCIe PHY on Kaanapali platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 48bd11410e8c2de664d47262b982473ee24cf09d..b8f3b55efd6eafc0c989e64326b99f03516f4e30 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - qcom,glymur-qmp-gen5x4-pcie-phy
+      - qcom,kaanapali-qmp-gen3x2-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
       - qcom,sa8775p-qmp-gen4x2-pcie-phy
@@ -147,6 +148,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-qmp-gen3x2-pcie-phy
               - qcom,qcs615-qmp-gen3x1-pcie-phy
               - qcom,sar2130p-qmp-gen3x2-pcie-phy
               - qcom,sc8180x-qmp-pcie-phy
@@ -216,6 +218,7 @@ allOf:
           contains:
             enum:
               - qcom,glymur-qmp-gen5x4-pcie-phy
+              - qcom,kaanapali-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen3x2-pcie-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
