Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6166FCD98DA
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 05:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KL6cfijsTHpCE9StwaKHV3abh/3IBbWDqVzrBCWTfAA=; b=Md5IZ7T7EYal+k
	zBiUEuGiRxTyOizyfTfUU7izNyL4yNJDblQr9oFDZFqVYuMPDZq+SLeRGYbQ+wEnmgtabwk91oX2y
	45VCr7gawSusMbG59VFLqaWbbMTaB5simHxYGshSyx30o6G/fxXm9y46GgliUflPjnoQjC2O35KkA
	+b8t7ZULKu6qmQ70HC8hkhx/l4XWbgR5TDyWwMh8yTxkS+Kq4E2UaUKBH5SKvU1mDWc3CoOXW0ml2
	5JyqNmUdahCwQlLRmM3kLnphXc/4N+Ty0RFhmGh8yoOppiFw9U207c47CVHDNFURUeV4PYOgy3OWz
	DbwK2///wnUhWA0Mo8Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZLyr-0000000FEHv-3cuX;
	Tue, 16 Jun 2026 05:04:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZLyo-0000000FEGb-3Ctw
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 05:04:55 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65G1xnts1790670
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 05:04:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+3TIHCrEl6XbNl5iEMBnoRWpD+jAZocs+/EtNELfI2Q=; b=VRGGlRJ4nSt+fwmD
	ZjMGyRaVupfMH85eYc6mUZkwyvVothpgLZiaxvVMYzz2pP5UI3WAtPM3ETJLVHyh
	u4qZRKmp41Tkw9awCWhZfZtyRCpq+wkLeRWP+O46Z0R9L1K9bMK3lmWYqiVemUy0
	L7qyBKamopKla34SE2mNAxr05MxSbAIkQI4IsgUkglOfK0dJA+nB6k6APhsbM2ee
	5nxqIaCkFlgZsvxqhrsbTHpoSu1A3aP0UUarT4Ic76UGzuRDhmHFvFLFfFvYm3kH
	r7gSbx75LsGz+SVAoB30+KEX25Bj2ysjW6Z88FqSMQmwUqT2kjy3sYsJO6VvbbDA
	cRsVnA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4etew0mve2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 05:04:54 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2c0c36f1cc0so71725035ad.3
        for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 22:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781586294; x=1782191094; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+3TIHCrEl6XbNl5iEMBnoRWpD+jAZocs+/EtNELfI2Q=;
        b=HNA+mhyjVE3kT5txulEAqSTEp5jYpI+StCtZXaPnXErqzbOYbLbSO84dRh5DBkhqzE
         BRCSa5h4nGrAmZe6lzILaSu0Gjq5P7uAdD0D1dbMDHEIY2llp0ldE1vgOADi1mPDuMQK
         pzQ1us4fGVyLPdBk7DtwrxF7yslyX18jF5dNs2Tfoc+PuksxFoT4BnBUoKMfcG7ZmJZe
         zHYfIaunsltXHoj5B7s4DQvQCdg1sEg2jTx9xJsIGbtI0E42StFoFLD2Xr3W4tEYf7R3
         ArJpHwYQfSbRT6uxLAjjpY+57q58dTAq+HsFQhYWhalpbtJftHoopEG5xubYKnHYhNLT
         EaaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781586294; x=1782191094;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+3TIHCrEl6XbNl5iEMBnoRWpD+jAZocs+/EtNELfI2Q=;
        b=hNVxZGzmJnZvAplWFlGXvqOJonGLPwyKjguiQm8ZtWEuKZw8ZBhX20ExfqTqf4wpdj
         ZPJEf51/NGBtKY/CXXx8LI1wtdnap0JGja8z53oAl+6cXm6Itywnq2k9IduWCoT9LY+V
         RGh9HfwCfl8iSON7XI3A41SB/YKlM68CkQYtf+/kLL1t722rHf74uvSGr5AYcENG3ulH
         fduThZqCiwopbYS0LBGjvqdy+gSvwGja0zmnLl4G4se8H/X9fUaA5f8grJwtKBfhWuPP
         UV7OSgk+nk6iqVXHTj+3/dBdxcctiVSrqQCNGHWKEd16PMbGT6V3b2sAyzRYu58Q27qx
         2N0g==
X-Forwarded-Encrypted: i=1; AFNElJ/mdRQZz65cIZ+SmKrS6JTeu8ol6z6Yjg70eehvlT2/1UNGoDgCkrpCJcEnGisoGzMICG0AXLu/l/k=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywrjznb5XlQ2w3AO0G1HMArJfWladqF2ysk5JXHwKaGBukj1SfI
	zLcu+Wl/25VVqoYB+DER1beDxFQAHV4FOPeFfRHgRtUzA/DZjamIjoJ5wl2e7MaWhrkf2+VRJo1
	bGY3oJ9IZdHwIxyP+vSPDFGF7ydnnazBUh2X13KiqPFJGZwP8FPt4GJwuFjBi6D4qRMuU
X-Gm-Gg: Acq92OFlS3j408N1c4bL4oR5S6ZHgc1rKyJKF/ymjxxJn9mEJDaZNaxLlFQKyp+gfPz
	huayZEwY+/+ZpcNsjmgNPCCLRXEUpdChOAp+EimkPxx+7io441BPGKbimZkt27C8ldDAG4fxz7M
	0hIJkekLrfrDIdnEpa1/suhac36+6hbAiOBAjZQKlmh1MZOQ+hHnIZsmWrT6YnVi4dC3HS20F4g
	+or6CU1uJfx0O6bREVCftnKlRX8x2x+tbp3cqtOtWctVKAXNNWrKOeCHwtcuYZLSl3t7XL5fcZP
	jZU7gYvHqMB1oXF5JogoIPAbh8+MiYAOVJVJ0cBKii1wyIUisPwP7iwuvso3IjNnvprvLLtNJl8
	99r+DTy7dwUu9EJZP0CX//1FNZo1C+3+MMvBRRlu33Cn+sadwWvsm9KZFGhY9gHFo1yrKdZ7QwT
	AsyL5zKb4SECZYI26AWSdvXPyJ3KapDhaVSezGfRN5E8+QITFqAys=
X-Received: by 2002:a17:903:2304:b0:2c0:eee2:fc40 with SMTP id d9443c01a7336-2c41050b417mr186916365ad.3.1781586293723;
        Mon, 15 Jun 2026 22:04:53 -0700 (PDT)
X-Received: by 2002:a17:903:2304:b0:2c0:eee2:fc40 with SMTP id d9443c01a7336-2c41050b417mr186916085ad.3.1781586293324;
        Mon, 15 Jun 2026 22:04:53 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c42f2e5590sm128957335ad.14.2026.06.15.22.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 22:04:52 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Tue, 16 Jun 2026 10:34:41 +0530
Subject: [PATCH v4 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document
 the ipq5210 QMP PCIe PHY
MIME-Version: 1.0
Message-Id: <20260616-pcie-phy-v4-1-504677c3d727@oss.qualcomm.com>
References: <20260616-pcie-phy-v4-0-504677c3d727@oss.qualcomm.com>
In-Reply-To: <20260616-pcie-phy-v4-0-504677c3d727@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDA0NyBTYWx0ZWRfX4rcmhscKaukP
 kqaDdpeGjZoVTdO75DHS+PGrgCOfGV9povunpcvFt0mk+OoUPVAA47IavO2q8n1sDNuGVnrukoO
 Rn75IWvO6Bt8pW6TGH4fPvzxz6uG8KY=
X-Authority-Analysis: v=2.4 cv=QLlYgALL c=1 sm=1 tr=0 ts=6a30d976 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=EF49ANZLUTmcXe5zpi4A:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDA0NyBTYWx0ZWRfX+zBGV4DiviQN
 bGB/Fgfo5Vo5S35Azr3JlWgStIrTYWYmQYj5odSyWYm1DT2q2RREpakomNI9DB8jxgMEBcwtqy4
 LyyKb8unkL21DPFKmUOqm6aXYhH6OwqHKdaJv08YhvxAlQ5cK8ophlrY4LfMIIhOC8x+jKQeJqD
 ElwjE5iFGcLvtdaBXM99Zooz8aj3MJP4Tyl17GrHolQnkGR9i2Y+iHNiK2VFum8bR4On2q9daR5
 Xc66x7UQqBm7bux5UCXjdWF+4Ju59m1Da7vz3FOuremw01RssFNkOKq7A6iJik4fIQKNJMqnblW
 TlnFv5B0Uhd2v73nfTOe4yc4C0fJDuIqxicFybsVhNL4w/3OjajUwvTRk8hwwBrFasXIPV1paR/
 pHGTTz75SDmHzvgvRqwk7zp8orIW5EZfkQ9EizSGjugH26CiV2NA2a9ahfFRgmZwoP24MmYkJl0
 ruj9rr6ZBATDSKlfb2g==
X-Proofpoint-GUID: xODVnulE6VktioPh3Uyoq2t6vchXmgM-
X-Proofpoint-ORIG-GUID: xODVnulE6VktioPh3Uyoq2t6vchXmgM-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_01,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606160047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_220454_843264_DFAEED95 
X-CRM114-Status: GOOD (  10.56  )
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

The ipq5210 has one dual lane and one single lane PCIe phy.

The dual lane phy is similar to the dual lane phy present in ipq9574. Hence
qcom,ipq5210-qmp-gen3x2-pcie-phy is documented with ipq9574's dual lane phy
as fallback compatible.

The single lane phy (qcom,ipq5210-qmp-gen3x1-pcie-phy) is documented as
specific compatible as it uses a combination of its own initialization
tables and some of the existing tables.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index f60804687412..fc155ad5fa6d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,ipq5210-qmp-gen3x1-pcie-phy
           - qcom,ipq6018-qmp-pcie-phy
           - qcom,ipq8074-qmp-gen3-pcie-phy
           - qcom,ipq8074-qmp-pcie-phy
@@ -28,6 +29,7 @@ properties:
           - const: qcom,ipq9574-qmp-gen3x1-pcie-phy
       - items:
           - enum:
+              - qcom,ipq5210-qmp-gen3x2-pcie-phy
               - qcom,ipq5424-qmp-gen3x2-pcie-phy
           - const: qcom,ipq9574-qmp-gen3x2-pcie-phy
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
