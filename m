Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FC99CD6E79
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 09:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+S+X9IB+BUZoETymt6p3h4fbwmvTk45ua++EGthEDs=; b=PZOyh9FQrXdWYj
	ccIEllURlR5Zt/v8oE37x4widyJb+iYxkdG1bajCDRr8C3CA0XBpnlbfFcpMku12PrxijWiY+JRPJ
	6DB6KUIxA/cdo5S3IqL7QideoeFTnle56FXFOoc9y4F6fb+HZMcUUYfTRxELiYZ5+uFKIt6XL6Duw
	61bj/2wKZcIh29R0b1wokR0PiTr1n4AD6P0xFYz1+CU+7U731MvgOUksl9ohwKRa49OW05PaOQWP+
	afFdS7aAlt04H57XEF4+H8gktNv/hqtW4KAnVh0X/eLeCd33f7Oqa636wQjxEt04pZNyi5FtViydE
	coUdR271+8qCHqx6iDfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWsfU-00000005CKI-42Af;
	Tue, 09 Jun 2026 09:22:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWsfN-00000005CIv-0ZzX
	for linux-phy@lists.infradead.org;
	Tue, 09 Jun 2026 09:22:42 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65985WHl006974
	for <linux-phy@lists.infradead.org>; Tue, 9 Jun 2026 09:22:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1jHu4UiP5358WASpNh0RxH8TEEZkSYnlkqWXIR0Ttzk=; b=RO0tuAyeNfT+2VBw
	vurr0qT4/5zljSNiQNKRBT0dBxYt0nEWUSFAFtHpuZyEBcq9ej6rbrGiEMifiGSd
	ghaIz6g3BPK+qXFAX38hKFqVF40cPDnG3LwdaSdCR1og3mqKfR5uWtOKJ7U8o0fI
	dBoIRca5+c1Kcq7UipJtt9zQUAa/h9u0MqsvFIBuQzkFav6hQWZ4HsJBy17Sxdi6
	Ad2xzMr9Lwadw2kiCefptADIseChHKrpARnujwiWKbQCZjVeO5LXG4x37gA0d9mL
	jUGKW2ISqawda4XugiWPB/x6jjSg2CsTRrcLuqw9UMlqBIVYZWQ/fY6jxyR9U3vp
	XFhbxg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4epf0sraek-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Jun 2026 09:22:36 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-842692bf60aso7827553b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Jun 2026 02:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780996956; x=1781601756; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1jHu4UiP5358WASpNh0RxH8TEEZkSYnlkqWXIR0Ttzk=;
        b=e+eEtG/bqkwzqYff0h6LVczjLO4ouNkSTlNq35FqiczQjS014Vl5r6vHJ3ErTzxbvk
         iwG9cDOt60ed4GGoVGvHmwcuWQpvNMdhePyQwPmaAXAFw8jSTUh+l63xSr0I6DcTyHUk
         XULyUqe26jHhiVhjNLSnf4gyDNokqmMRa5oyElB4PzJhcgzFbuLqhQbfqMKyk0hTX4Xt
         LFcH1fVP51WwXn+4eLcPr/Uentl5v1eRruytDYlEUG1kpu9S27MQApkj+f0t/z0Pt7EJ
         r1pab8GEWwkWlRiKDAi6YkjCKGNmQaC1z3ZC0ki4/SkUrLcs804Mx8viMvGv31Uif0KO
         wraw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780996956; x=1781601756;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1jHu4UiP5358WASpNh0RxH8TEEZkSYnlkqWXIR0Ttzk=;
        b=gOLmg48w0L4nV7IZbPv9eHjoxXOAvcJc4n/TOp7H6iPLoPvSkEuKjQIoAA7pT1NxaL
         QcKheVTKLqn0KIk6lphErBXANfezlDGNp8AdKg617MvHwKohbcoFjaYP0O+KwjNFxdO3
         w711oW+L7y2IhN5CzU75+T+KA9fUjZPy3Ta5hzs3pkl0PtLNYADcu6LWeRvH3zfZZaoY
         hmsN0gbQPJeL3atyOiYrR8VbGuVafU0S5dd3tmTmy8esrnIreVSIv2uRwhES2HYH7oor
         AJnC+S79768IZkH1RRIaEFCVsCmlXQroNTc7IPE4Aptq8bzJGY/3WNbrD5rsMUmo+f6e
         zNUA==
X-Forwarded-Encrypted: i=1; AFNElJ8MSl38JqPWyT180xwndjwsbxmY9WCh1ozdjnpkDRco+yFh9aYL5pB9wDWdAYqSXQVSUaEdIhHyjb0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxsqzME6sO+3ED9OOdDgViSVEhbR9H7CwyRoC0huegqAYJO3DPx
	nSHGTktT5AHU/v5K09M811b4fHiL5P0Mne0q5NWMGQQj58jZT/SJkuHn+r7UU5xwpN3Y97OtmgT
	9D+h7ttoQ0epanmsxpBSgyvsYjuvd+Y5L1F4JmR5MAw4zcFI/YmcCYPyWS8243FKcVdwC
X-Gm-Gg: Acq92OHZiA5pAUNqXEPfjlze1mRvNjwDtaDxfp4QqlWhVatoCFteXJ1aozoRtoReaup
	qHxGEHscwK1WZV830/uj0FUIB3SElNcqa+I7M9qf4aeYYFJePu6EZDp8LD3udpAkHzE5mjFPHPD
	KU11KYdByLA/AhleiRb0Wfo46DyKpN/yTHKdgWuN+WSay8t0NomvaK892FgCuBisS9zjxQyqX/r
	aQR8O32Ubaz6hdPITwbUcuCUyL7oTjwNAB1ZXS8Fcv2wFLVsrnSETVO2UuPz4eihh1IR3sY3JF6
	CH3bvowWo7A8ceeFi3LkH7DcPpsurI3JdziXdEOY83tD6icPQpR9L9YHeoxmusGK7xnbmVSIzOs
	veve/Z/QyDw22WlVqulAg48+CL9s/DlK0UxqFXBKTu9EhZg1PvBc/c3dblCO+RzHY2chIRgdcsc
	NhtPMjn0aOlsvOlc+gJh21BmaCiSGDiICh4mH6eOQwi0hONh+M8RbwYC6W5I2NqQ==
X-Received: by 2002:a05:6a00:1302:b0:82c:9897:70e6 with SMTP id d2e1a72fcca58-842b0f9c4abmr20018141b3a.34.1780996956057;
        Tue, 09 Jun 2026 02:22:36 -0700 (PDT)
X-Received: by 2002:a05:6a00:1302:b0:82c:9897:70e6 with SMTP id d2e1a72fcca58-842b0f9c4abmr20018101b3a.34.1780996955623;
        Tue, 09 Jun 2026 02:22:35 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84282882170sm22861582b3a.30.2026.06.09.02.22.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 02:22:35 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Tue, 09 Jun 2026 14:52:12 +0530
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document
 the ipq5210 QMP PCIe PHY
MIME-Version: 1.0
Message-Id: <20260609-pcie-phy-v2-1-83bc80e79fa6@oss.qualcomm.com>
References: <20260609-pcie-phy-v2-0-83bc80e79fa6@oss.qualcomm.com>
In-Reply-To: <20260609-pcie-phy-v2-0-83bc80e79fa6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA5MDA4NiBTYWx0ZWRfX6p08PpsHRJ6U
 o4OU6EhaeL3JL4qXSLX/Jh9+kgtZqA6Ec9BxfbheV8oT26kb2QMFrS5aiw+zBjBt9VAKmfJyH1r
 6XPtSXmMrQssbXkwVqtJlvsxP7GyPaxWoekpzxJUg+aBPHhEPcqyzpvNQQ9bmVGsnhgsWUh6RJx
 QUXCm6T3lE02dun98ZgN02FIqPfSuYn8yTB3vEkBK7qQDFkqZRIiwMoN6Oarn1NsXLA4PWJHZt5
 0NUoftzpTvSVLuuEriwiKshztww2Kc2/2dKTAe+YI8yLwncYEmvqgGqFFPBmStTKjMO7ll1kSnf
 dyePUZjvizPAmHwosjGfjFkOnMfnviXyXEgg0faR60SKUeg6PoRxZuR078X9vqzDqDGVJbdg15F
 fH7wOefChoVrDKbJ+1QOqRsWVOxe20BwFs48P30kguWUajoJtv9AYo5IEOt3de7qJZHXitSWi60
 PoF1Y0dBq4HBUfwHdig==
X-Proofpoint-ORIG-GUID: IWJ3VwkWc0jf9ywFSUk7ICIN78BDiIqu
X-Proofpoint-GUID: IWJ3VwkWc0jf9ywFSUk7ICIN78BDiIqu
X-Authority-Analysis: v=2.4 cv=GeonWwXL c=1 sm=1 tr=0 ts=6a27db5c cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=EF49ANZLUTmcXe5zpi4A:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-09_02,2026-06-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 malwarescore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606090086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_022237_973099_1B467F01 
X-CRM114-Status: GOOD (  10.35  )
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

Document the PCIe phys on the ipq5210 platform. The 2 lane phy uses the
ipq9574 as fallback. The single lane phy is documented separately.

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
