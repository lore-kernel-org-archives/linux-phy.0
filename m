Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A8E8C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 19:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b04GcS0rg6SFQ5Gx6Q/5ijW2kpAVRTRmCkd9j6op6LA=; b=XQOS/IUmoQTiFc
	Fp+H3kirGG+oGtBv+nijv9KxoKTvdB7RNsHTa1jxtdHjvMAwcbnvRbr6VWlT6JePt3oot5JVjqPAf
	/PO6Sjwd0f21SyaS9z+kbaO/0WI9tOny2f3+KvHphMSBfuSZ/S5pVOzORyv3E7B7NO0nGptZ3E8AZ
	Ysy+fZ7xPMOf2UnQpZgGCabZMPyeqFsYT6jLHdr8SZ98CXC17dcKrP1kLvFj9k/ufhvGK8DP4vlF6
	uXxfkPyrkCNhvlMiX8e0TUzDTDlw9cDFO38a5tIFYcikA5CcxSgcizXLrVKJ8ngSJmd6t6VFYly4f
	HxmKwWt8YPI9DB/qmHpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedkD-000000005FG-0CdR;
	Tue, 30 Jun 2026 19:03:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedkA-000000005El-1hhv
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 19:03:40 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UItu3N2898093
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:03:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FV12mCo2AWWxRhbF4a82EfY6HMBsszJrd25mPZq5hTs=; b=Y6134SpF6Qu5ds8e
	ycmPM1I3ItOtsiuisnT600NgOocxPzStjEoleO9G00qfnKIZ4nifXQf8IGO1sSaE
	yRu4i94n27AyKOSwMdRKIzgje2UJ5Lv+9B6/jhOHPPaQpCUJQLCpaY3d+EFxCVRB
	CivxGrYcKJhLVuUqJz+Env3uqHWFwIj+4MnaqovUqL+VO6uTi9cYcU8l4xXg8hxd
	yd2Gy0a2B9NXHNjnN9Ww6L8urXi53GxDY4ExRUrZLEJxlz5tVXsGihgDa+e9ujuQ
	x+hBBtRqJ5zwqsXv7m1yyE2hoOF070udOnBa/qcBWD/hXPgDVsFgGRvA71l1RY49
	TcWVKQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4kgw01rq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:03:37 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-30ed9113e03so362819eec.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 12:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782846217; x=1783451017; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FV12mCo2AWWxRhbF4a82EfY6HMBsszJrd25mPZq5hTs=;
        b=VZrEKxlbiOqyaLyLbxeX49rWfG9aQVva1c7cNgbbRPikBEEsthn97pkj/S/JzXgix7
         TJjqL3X5cr7pgMl4eKX5D0MKO92nLoFDMXyPgXCdTkDaa+wiUbP3hMuX2fl+ytiP42BS
         j7Y7lNg7ok5rb1pTxCDvFGwPGRL3o2hDHtknq9oHYelyi/ZTkrhL7+/HjduP0OmlpfsO
         CgLW/t/E/9PqEyOmVL18EkY1kKH57BMdE98F8DrKiUgr6o4M8+oU+jmvV5Xe9gyh0tju
         MTnn6kIhOPVeeSWn3WYfcfuhoJ7ZirtgYWUzNd9m8R/7n2m/kWybemaxkAkxBDfWm1Dr
         pPyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782846217; x=1783451017;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FV12mCo2AWWxRhbF4a82EfY6HMBsszJrd25mPZq5hTs=;
        b=LYdjEkCLGS4nTY0uYd8h8f8CEs2yVM1btuE4hRCwNMu3XbRuIvIy7jCzFMKjkcgkDG
         zvSzmobU6Q3Ywi9dr6zH6nXeuCL6DKKEXCMhtaCFMUM/9jNmu/kJP4SIYFetAaPjXsra
         vS/ezrYFnEjCd5SF1oN0ek/DK2cwb8BIOzJPMbEGRFGZB+BM1Q4AT4Q0RI+0LyFpeAvP
         fl9WXC7sVHZdtFv4bz2q1i3SKmMQSvzssHnDovJWy+p8kKOJn/1RbBS+T2YT4DJJwkO5
         PkeBxDhM/UDWnx/mu8OOSzOoYhiMuNvcKvyrloHzled8xaUA2LM7hUHzZQfSA4nvbCjm
         ajNA==
X-Forwarded-Encrypted: i=1; AHgh+Rra2cto4pcDls1QbI/E7Md9R+68YTenPF5s/O5kKTFOaNApk7aSeQQAg72C76oSp75favai8DYrpSE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxnp+93GGbDr+WAIpQc75So+/73yFBzbJ0rnR/X2kaPw1TEluWl
	XIUNvTPBagA/+odDLuW7kqdRwn/ITT2jhGV3Nz60ZXYsXixLDsXz8YuO6Bm8MsOYQS0vKVPSVBq
	kjgLox6q+TGOCe36w7sbC/wXNC7xwLcUoMlzqpUmIbpa80zGG1o+hszfceaDtD6bMppMmQu3KjG
	eu
X-Gm-Gg: AfdE7cm/dnGlbLY4YNRON1UsgdhMEYEtQMBqBC79BghsYzSHVCvWanUJr2WHw5JOYam
	y9m0/f3Kri9B4F3xmVLNWeYyCQfSis9e/irWKMTldB7bUj1SUdKA1PZisxcqwF4mZSaFbJV1OSW
	JwBZ+cGDG+R8o0Bhbw9Dl6fFas373SbgSBT+sGoi5l4lfvS0kU1taRBe7ptXA3AjEMH3X6Yq8KD
	DdHSlb8kTrVq1c7quMYV2sXFgNEtjG2uiS09hqM8CLXdgqNPJukXcBF2AH5ELDG5yOE9Xq7fUaI
	Qb9/PRTTxuktfE3aJBUCCVMUEELzmA1CDn7rd7AvoAsPmzzSonxAkb3pRVPGiKPAgcPnmcHD1XP
	QXdOq+/tRjRS6PfDVLwKntoUD+IZYtGAFhacDmtoC2CGFbkg=
X-Received: by 2002:a05:7301:46a0:b0:30e:d6b3:ba54 with SMTP id 5a478bee46e88-30eea0fc2bdmr1565934eec.17.1782846216854;
        Tue, 30 Jun 2026 12:03:36 -0700 (PDT)
X-Received: by 2002:a05:7301:46a0:b0:30e:d6b3:ba54 with SMTP id 5a478bee46e88-30eea0fc2bdmr1565901eec.17.1782846216246;
        Tue, 30 Jun 2026 12:03:36 -0700 (PDT)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee317095dsm14963815eec.15.2026.06.30.12.03.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 12:03:35 -0700 (PDT)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Wed, 01 Jul 2026 00:32:45 +0530
Subject: [PATCH 3/9] dt-bindings: PCI: Add bindings for endpoint gpios
MIME-Version: 1.0
Message-Id: <20260701-shikra-upstream-v1-3-e1a721eb8943@oss.qualcomm.com>
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
In-Reply-To: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782846191; l=2200;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=G9NuEUCFVaxtY10oIrUXU0lQ2ELQ2IRw99bBy7IKbvQ=;
 b=3iFkILvz6Ich1wFw6kF6CgoiNAp7GPTE7OmP5ZgStMcDSZdBrMyhCoLHdByPX06m3hNHkFaHw
 ICdc5q3F3b2AFGJIuEe4GmSzWB1iOK7nu3PyCCLt5wJMZN8on9w5JNO
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Authority-Analysis: v=2.4 cv=Co2PtH4D c=1 sm=1 tr=0 ts=6a441309 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=DMjCJHwfCTXkfbozVOcA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-ORIG-GUID: MQVx9O7uieOfGP1FEMihaQs_VtrgmvjJ
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDE4MyBTYWx0ZWRfX15OLIN2Pg1Pw
 6qaF95JkcG0fWa3Xtlp/L2pOx3XeGsdagH1z5HIuyDzwBL/lBXdqg+ds0bv7+38S+2Nj38QX1ul
 /Y+cGku+7u6oIOqVfWXAiPcZ+/YJl2w=
X-Proofpoint-GUID: MQVx9O7uieOfGP1FEMihaQs_VtrgmvjJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDE4MyBTYWx0ZWRfX+Vzdx6GUyRKb
 sTunsM3mOW3Uc5tGuv10ZrO885oaTDzFR54RdNwroScYyqOs2hc8qzFtYR70BgkhLSqo4d0AgDt
 vpqENvaoLqJKUruAQcDsiIKq7nZ0ydQFXT2pMbOTaS3gFpi/EmlHbz1odONkM96xUyhMa1UUaDs
 TOGYcWp/2d3S1TgVx7aY1xp47Oe6e3rjKmB1keHEk6ER9lO7s2bNEEp8cR1R8Py+jmDnlczp42D
 /NGs7a0+ZHcfviU8gRkl/fT4hXSa+ldTR8QmCBvltbmnQk20Wqca+cr+eDIVwPZVZ3raA3FDcte
 ILlnLqfbIM6ekv8rHXVZicaAV8wRqicN4t/KeS1l8nOg7a9wCT0+45Kewcy3OBjjNR3LjIhh685
 ITyjv6B8nzy96q/ZfUAo4bebE/9EgHBoBp9lhT7UT3SObymGmyuSv1nGmi10enb0tQd7eIDZ5qW
 +M1lh7yrYazMMikidzQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1011 bulkscore=0 suspectscore=0 phishscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300183
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_120338_483538_8835E4E3 
X-CRM114-Status: GOOD (  13.69  )
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

Add devicetree bindings for TC9563 GPIO's which are
used to control endpoint power and reset.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 .../devicetree/bindings/pci/toshiba,tc9563.yaml    | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/toshiba,tc9563.yaml b/Documentation/devicetree/bindings/pci/toshiba,tc9563.yaml
index b3ad05d90201..f9f71f28aa92 100644
--- a/Documentation/devicetree/bindings/pci/toshiba,tc9563.yaml
+++ b/Documentation/devicetree/bindings/pci/toshiba,tc9563.yaml
@@ -26,6 +26,11 @@ properties:
   reg:
     maxItems: 1
 
+  gpio-controller: true
+
+  '#gpio-cells':
+        const: 2
+
   resx-gpios:
     maxItems: 1
     description:
@@ -69,6 +74,17 @@ $defs:
     type: object
 
     properties:
+      reset-gpios:
+        description:
+          Specify the TC9563 GPIO used to reset the endpoint
+          connected to the particular TC9563 downstream port.
+
+      ep-pwr-en-gpios:
+        description:
+          Specify the TC9563 GPIO used for enabling power to
+          the endpoint connected to the particular TC9563
+          downstream port.
+
       toshiba,tx-amplitude-microvolt:
         description:
           Change Tx Margin setting for low power consumption.
@@ -104,7 +120,7 @@ examples:
         #address-cells = <3>;
         #size-cells = <2>;
 
-        pcie@0 {
+      tc9563: pcie@0 {
             device_type = "pci";
             reg = <0x0 0x0 0x0 0x0 0x0>;
 
@@ -120,6 +136,7 @@ examples:
                 device_type = "pci";
                 #address-cells = <3>;
                 #size-cells = <2>;
+                #gpio-cells = <2>;
                 ranges;
                 bus-range = <0x02 0xff>;
 
@@ -154,6 +171,9 @@ examples:
                     device_type = "pci";
                     ranges;
                     bus-range = <0x04 0xff>;
+
+                    ep-pwr-en-gpio = <&tc9563 2 GPIO_ACTIVE_HIGH>;
+                    reset-gpios = <&tc9563 5 GPIO_ACTIVE_LOW>;
                 };
 
                 pcie@3,0 {

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
