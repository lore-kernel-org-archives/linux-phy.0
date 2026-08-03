Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6028CC55182
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 19:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fvDjlYUUadfDjxgsxx4dwuf6z83S8Tvc9Ye0XoIKRPQ=; b=DTUX6P8R0hKJZ1
	0XvCPMepsICnw5Ht36CJGmEOAuHfqvBv4SYcgmiutytFAoTThRiUSO+14Q0zfuGDFvq8jVEAgmLDO
	V0VnnYKbppNSe/VA28FSBeB5GbXkyIPLfmLwA3cZuf3gKyNBETsI+lneZHg3XFqFd10oEHC7rFHlk
	TcjaES96FKBg+AIL3gugBt8qmyV28Sn0ye8PHPjSkuRhV63v2xwp7ZY1XOzegLcV3/luC66Q3AYTk
	mmaBiZ6by+xwKTnrK1aK3vT4bukIensL75qIGG0PfBozhf/aTlmitGYEe9gwFVSI1KOCZHlc5QdAX
	JdCsFanhCy3WaXtNLACQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyKw-00000000RCS-0FZ4;
	Mon, 03 Aug 2026 19:28:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyKt-00000000RC0-38dN
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 19:28:32 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 673HB7Yc1237758
	for <linux-phy@lists.infradead.org>; Mon, 3 Aug 2026 19:28:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HclC+S5vf6/LTROVRpMjq0Vwx7iLZ/22m52hp9ae4Qo=; b=MKv83HNjZ+7b/Jxd
	0Z5J5IlWptIFOti0yCc3dby02apnsFc3yKKWnwIMxWHhEGj73VPHIfvrqPy8b3M0
	6oK1sGwZJlonIZhbLZPGXCU9Z3EOTXDbEkZVasIA+IVaBk3j7PDiAkqc/FOWp6Jb
	+YD0zyWWrHkD9CvPWot0bWF2wrhQ6tiyDFnFtNneqW8cEPl2Bq4tTB8iNGkNTEK/
	INfKBrsby1okGiJg2d1CHbldQ/G5GcnJqC5dUkxA543zn82inSwLLGpkV43EqB17
	rntMZUkBnotd8GSnxWOLXB0+6sFUYA4dACfy+tAWTL+or7O4dgolRWLf3Wa392x6
	vAJbew==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fty5s8k41-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 19:28:30 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c96b4f58ddcso3026514a12.3
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 12:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785785310; x=1786390110; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HclC+S5vf6/LTROVRpMjq0Vwx7iLZ/22m52hp9ae4Qo=;
        b=keok/UJpTsmDuDOernQmpxOy24ed0bixPvfoMugVlBJCwxPhQbE/AUEfVCMTf3Wtzc
         DNsmhz9w3AioWc7AANtfvCn3Gowr79qy/8q6Fo1l+pKc1asdFh9r3+nH2V4Pk52CmGcW
         t15SFhVClUpjDv65LQJ8yZZ+nNKEztuCpnXxPGL98FhNJ3iBAtNrFAMFNs/0AIR2MAn6
         MmYNOHA3FMHEKGpP0ITSgxW/BjnJpyPaEM6h5URPHcucyDzLjFGTVDDI4TjZc3ROuiJS
         huQdPbYiAJ9Hm6caAbkaZ415pKYKA3dsgb7eUSIthI59rFHHo8ahOmFwsj49VeR7hFzB
         pkcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785785310; x=1786390110;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HclC+S5vf6/LTROVRpMjq0Vwx7iLZ/22m52hp9ae4Qo=;
        b=dlFUkdsv+hBJpQxHPpa3YnsskzWuoNh/5scIzNJQxjvUchGAdW4g5C9PAj2nfIi8Fk
         0SWFiMHpZbMYxzT0b8bfdehGZeRxpJ3G3qB2maWslM04vnzgYhFw8oD5mpswpbcr0XeJ
         Dk7clZBl8o3ls8EI0yZyhDjwCXJGPGB8H5jSDhHFo4V7eIx13DYLnPLCG4gcaI4o1Nzh
         1frDpD2jLxyxcp2pW1Jum7SXwyJPj7FQ49EK2ZaOml4SL2mCf4hHjuHFvjODOq2ikUyM
         q75knZENRIp96qHih5dQi2H1n+xD5VekIYTFZObhnTz9rM3YvY5Uh8/NX6+tMe5/mfU1
         zRIQ==
X-Forwarded-Encrypted: i=1; AHgh+RraLswRAnvLn6d6e0s/JoFP44WYKHedcYGkAJG+zD0HGSlMAfsuECuMur36C2pWf+HgE4+YOvHPqDc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9jIQCUF+FcxbGYolZfj1CaJCXSVhSm1Bnac3KPdPeHGxuOd24
	kVq+/+OQS9gX2TSqEye/agTonAsr/FqbOEkXAJylFF6Z3iUGT6NzjBIIwqMliLUvvinhmL2Z7so
	ydcYINOWQjjYifb0X3wlayvneD8h9xmlNrQLYv9ysNLS5oiiXqC/2nwoDYNQ6hzvlBjydDkOCKt
	Yx
X-Gm-Gg: AR+sD13Q6WbHOj2kBLXAMDvJ11mEDvNKJUuEcpRIJ8ZLQ74Z0eP8bndAnbxmr0a76mD
	aL3b/RWN1lEY/UfSZWqRtpXnZ3ZBG1FpGEWY9KEM8yz3LWzfjQGpEXDowcvOTPH5bpn5HdLw8Vs
	TqzmBA8QD3qUnyPrK92PM2ESWmM9UXXYD9Fa/H+UCLDK3kt7Iv+KaqHXnptyME91E2tedDOQPIs
	4GkRqtSXTs5NPpRb4cJ8ZdFeEmmpemB5FuH6Q1E+HTnMfslRXCHPeZ+iiVn1QRYqDUixV90/VRn
	oAItLtVHnBf1Gl9HGU1aTvwkvc+mlqyTYrjLpvw9AyiAw8BkfRPgBezqw1k6vsEFMwUyqcPViBg
	QMZcKr8kmVWZXw9V9vhZfAaNZMiJLfg==
X-Received: by 2002:a05:6a20:ae24:b0:3c3:7dfd:22c6 with SMTP id adf61e73a8af0-3c92a993833mr11259805637.73.1785785309708;
        Mon, 03 Aug 2026 12:28:29 -0700 (PDT)
X-Received: by 2002:a05:6a20:ae24:b0:3c3:7dfd:22c6 with SMTP id adf61e73a8af0-3c92a993833mr11259771637.73.1785785309284;
        Mon, 03 Aug 2026 12:28:29 -0700 (PDT)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3153dd4e5b0sm38622738eec.1.2026.08.03.12.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 12:28:28 -0700 (PDT)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Tue, 04 Aug 2026 00:57:57 +0530
Subject: [PATCH v2 1/6] dt-bindings: phy: qcom,sa8775p-dwmac-sgmii-phy: add
 named voltage rails and deprecate phy-supply
MIME-Version: 1.0
Message-Id: <20260804-b4-sgmiieth_serdes_regulator-v2-1-c4bc688177dd@oss.qualcomm.com>
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785785297; l=1491;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=YWYbD0q8q2lnvrPo99IiSTGSHkgWn58Yw9xClj8ECs4=;
 b=pOUiChFzIvvK9wZ1KPURprhUpB+A/vwjdIqvCvAzA7h66V0mllS7lBKcMcrpIu9jB8MlHjhYr
 gZfLPs1xcotAncMD/WMXttPZVjzqTSMCsa1iFsbuvHlXsHGbnNkSOxB
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Authority-Analysis: v=2.4 cv=SPJykuvH c=1 sm=1 tr=0 ts=6a70ebde cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=P3Ghqcg4OsJIeTKxcIgA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: qzaaP8hh6NlHSGim58yhZAfsUfiSe6ND
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAzMDE3MiBTYWx0ZWRfX7Mp1jgtrPnab
 CJIuPh0AOXZVAfUCq/SN3Oaxn4qprCn6gVbVJNRlIFCTukisOuLX6PMhzWecXs3NSfY7ZysNEYD
 0pNqqk0d2ykSCfrTzqxcUuAWLTQi+OOn2tJgrZ/t2vqoPv01nm0VgDfGZDpA3hA9AAs+mvrUOdr
 SogyE+IuFoWPzllrk6ejFHcYW7fnvm2iliOJn2CoxArjSE/fFFtU3woGQqyVXb7NtIIzlQ/kNHT
 0bSWULNWhlyHZP/Z8wq2PouT0s0RTHnedpgguBw1KTbasuMuA31hjSX6aBNUD1GwHyNGiP/Oj85
 v4tvRUZZS4lu/rgeZKMRSQXm42pxzkVor11Ehy9Xsy7tTvHHeXJw6UaTW0VZ3mrF02rltRnhOsB
 ivU1fRSmQJ3cr8gJYKyZ+E8z00CSdQWti9Qxk14vXLG5a3NOsBTxuSJGnW7mrY8n6UfzxoHuhlv
 8qXiepFDOs3zgiLLvGQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAzMDE3MiBTYWx0ZWRfX+qX/DrTbGRXt
 rMz6xQdMND+1OBEE3Gj0sgj2J1jOQ+6fd/BwdkX2hP1V2CFfOv1WTbcJjexv3jlvrYSXG4sdIYJ
 4ifcq4HLbBo6C3xE2I4opB+AnUe7rDs=
X-Proofpoint-GUID: qzaaP8hh6NlHSGim58yhZAfsUfiSe6ND
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-03_04,2026-08-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608030172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_122831_910756_03216D60 
X-CRM114-Status: GOOD (  11.17  )
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

The Qualcomm SGMII SerDes PHY has two distinct voltage supply rails,
vdda-0p9 and vdda-1p2. The binding incorrectly described only a single
generic supply via 'phy-supply'.

Deprecate 'phy-supply' and instead add two named supply properties. The
0.9V rail draws a peak current of 46 mA and the 1.2V rail draws 15 mA.

Fixes: 97b795125704 ("dt-bindings: phy: describe the Qualcomm SGMII PHY")
Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
index 90fc8c039219c739eae05cc17108a9a2fc6193df..e573abcb937df914ced25ec87add7955bbba7b87 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-dwmac-sgmii-phy.yaml
@@ -35,6 +35,17 @@ properties:
   phy-supply:
     description:
       Phandle to a regulator that provides power to the PHY.
+    deprecated: true
+
+  vdda-0p9-supply:
+    description:
+      Phandle to a 0.9V regulator supply to the PHY, which draws a peak
+      current of 46 mA.
+
+  vdda-1p2-supply:
+    description:
+      Phandle to a 1.2V regulator supply to the PHY, which draws a peak
+      current of 15 mA.
 
   "#phy-cells":
     const: 0

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
