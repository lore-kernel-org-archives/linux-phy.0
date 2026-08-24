Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E994C5DF81
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 06:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IT5eVvPJNZiNmh4O5sRmEdqdK+kqFnCkQLfIRhFB+6k=; b=rSHg5kGTSb2TI5
	IpWOTmxDzbTN5pn8Xf4HC4U8llRpGjNJpyNh4N10eSfrEWqUPZ6i9hQh24TFgwK1Xfoc2GrI4BqUI
	xUlC1ESq1i0UmnpNxC2Bdh/j3ZFy0kE45pb8L3dsIntkFibYaAnigWA1LVB2gjsTDaBqANf3gsf2Z
	y0l3wWhNcEfIXrp+kA3IMPh5LdrJyUrjqWmf7dzG15Vy1vMZR2ifY/5wmigtKhQxx9l2I7yYD/2nf
	Muw/29Fm0aUoh5rnf4o3GmcoxigDtNcgEoRgBpCY6sg7HwogwrqlBaWzNUPwvrJQ+fWoRURJXygix
	bAecwYngAMYikbgrjsGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOJn-0000000G0PF-0M4s;
	Mon, 24 Aug 2026 06:38:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOJk-0000000G0OL-22hs
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 06:38:01 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67O67lCg1662757
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 06:37:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uHRCs5PMg7VixneuGCvyGoyiqOCJ63TfKuQmXV3MgOo=; b=T1sp2utCVlNYSWEL
	S3dtXpPC1yV4IX0CwuLxZNKMjvisf+8ue3KpZBp9ZkxBnY5zwPym8nbbR7QS+RWB
	DnmrBBG8n9fEasvTpq3H+TOEoUC6LskVWpy1ndCwKbPHdclji2Yoe1adFd/izcCA
	8WkPADfOx3kPwlh8wpXJWDyJbcIl5M9Gp4ElqKYHHK2PPjEosFmDmydvxr2/OawI
	rmbz6lz1ls/6Gd5hZDZGwmAr0K7Ed3R7lrlbGBxe+LpcfiMqsafDHKmxKwPQNtMi
	Jaj5GyLyEk90DSFtwu46oCPxM3QmjP6waA3i88J19U5U4g+oXnjU1V/I4b6GtGU7
	HM7ncQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8gdsg36s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 06:37:59 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3823dcc1647so674319a91.3
        for <linux-phy@lists.infradead.org>; Sun, 23 Aug 2026 23:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787553479; x=1788158279; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uHRCs5PMg7VixneuGCvyGoyiqOCJ63TfKuQmXV3MgOo=;
        b=Sgmz4SL8PSqQW2J3CaIoSupuwpP4UB6pXrZh9rF2SfNyDmFYMhUqGdtjwvIG5rr3kQ
         v0zae6qWBmwhkQTlnbn7rowkknwFMY4NlsDLOhe0bz+qgvBTYSZf6D4iomDUXIqo9U82
         2MepB1lxZbaXH9KrzVRBMXSydklIWw2vsrW7eEdBGGNfR2V4mMFV4mgKxsd2n9EQjIps
         FZxb/1gqvrBEMs0/ZXUtMc0oExM661mNh0ftKAzpSH43vMgAAikOhHAvh5c3eQjJAgX+
         a2CKMuz0dPLu6UyUfsFyZQmziaU9ti1Xg8dpe7H6dALWgw0GNMljaeUeel/77MSy95na
         kT/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787553479; x=1788158279;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uHRCs5PMg7VixneuGCvyGoyiqOCJ63TfKuQmXV3MgOo=;
        b=dQUtPkWSaf+N1YGAeguFS+EGK00RSAg5J9aRbwAD6MSgrr3grTdxpSsaSF0QJMraLr
         ZSDeZE6/bu0Qko2fNf4IG2Mo+Ph/N7aX5SQPIXH9J9WcNR3b2nhpHij4TcJ35jmLfnkh
         74xc4gzVh4TgyJTH+Q9gD/kekWLzGBVDyftH+pmueJXbffb3H0nt8twAUWdmFhqq3Yn2
         nwd3YbAye+0XKIKA3J5ViD1O+HWGSJdkMLnxrtY3yCZdtJbeIkSubN1ZNh7rzIegTZDY
         Tt9aHVI+ZMFWqswSfoRi7ZGIxL0KUC53cd6KlXrITZMrfW4MW0HoLOuzHQbfYRnfYIsH
         wwIg==
X-Forwarded-Encrypted: i=1; AHgh+RqmrWbgq5c7WTgC5zwsnLHbVAYkVKawXU3AguTqco7LvtFTcMZZE59El2XbjIn164Aw4zUzY7Wluxg=@lists.infradead.org
X-Gm-Message-State: AFuF++khsl3JHN2jzu0Kc3FMebU3qeMeCHujZ0X+mmFnhrbf5RsUvVNe
	JwQ+PygrpkaaCgQ2+Rg2fnAxlVUYwuiQ4yhQSK1b+i/L/dVsDDJ2Ybrg8rLnORLRjLX4Td5/g2z
	Wc9pn5vBnSBdJAiRXzherwNPOpv9gmaHYm4u6C/j7CUzFpJS7lNHEoXh7tLpshWjoPhtU
X-Gm-Gg: AR+sD10TUmt6wDpJf7EL1i9VLDuLUj9IxYulc5VaCJne12NV9GAu1pE7AP5E8wmf7g5
	zh0ER7BshLTsqdmqxfahDBok6zXfBGZ0ejGcVgXvIBXQxSN0yz70v9N0xwAgnXRQjJelU0A+H+4
	aSpynF4S8JtBIEBulne+U8bLEagzsPMeF9H+LTjOmrerLeCwYyT8n3YiSksv0vK1dBK2vshOuvo
	OmpmT2Pt4Y1w4UXsfZaOHy4yvEmESNRZskcXF622nxa40usAtxy0pwKbIYjIXD/RbxKyWCXLQyU
	Unabrozq6gdU2Ke/OqfV0Ggzzv3q285iNEK/FiKMXkTlx7vmKbkAvI+fF9FC8rwdq6LTA4L/agq
	8XEnUoMJCB9ekDRWicVKvuwMIvCBsWg6Ni6UzHHB2YSOGkbkjymKnFvLfZ7fCfYwH04w+SkIPrt
	k3Flp6rBZW2UyYhpmpbQuUIQ8T6yYpGA==
X-Received: by 2002:a17:90a:d605:b0:38e:5964:97a8 with SMTP id 98e67ed59e1d1-395df5e8fefmr30332342a91.16.1787553478675;
        Sun, 23 Aug 2026 23:37:58 -0700 (PDT)
X-Received: by 2002:a17:90a:d605:b0:38e:5964:97a8 with SMTP id 98e67ed59e1d1-395df5e8fefmr30331676a91.16.1787553474536;
        Sun, 23 Aug 2026 23:37:54 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-141861732f8sm21667830c88.10.2026.08.23.23.37.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Aug 2026 23:37:54 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 12:07:41 +0530
Subject: [PATCH 1/5] dt-bindings: phy: qcom,qmp-usb: Add IPQ9650 USB3 PHY
MIME-Version: 1.0
Message-Id: <20260824-phy-v1-1-257d68a3210b@oss.qualcomm.com>
References: <20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com>
In-Reply-To: <20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: k7kIhgpytIKsgTZHTJkNxl18plVrc7W8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA1NyBTYWx0ZWRfX51lssB+knBYa
 uhj9lLtYNh4oHXREuP1SAMmSRyEf8FTqRxWF/lpGIGOkHlAUUWR4taPKO4yl3LHH1dFhOyFJ1Mh
 gc5oUQFgN4dkta46gy1D4uWeomI8G3A0CtSutvUKMIBtkQNC8Dft+sCcNphtUvpg92enN4m3rAy
 Wvd0QG/vsWz2OiOX+m4Un57voulFUUsaNNY+CbIUeZd+9vGkTq9mh+aFrZHbtxX1aR0mTs1zapl
 aDnhsJiaIAwSD1ShAECoZoO+kNz7D+7jSaMLbAxzX5pE0GKznv0kuCTraZH4nXRJb9iF9xomqzn
 cS+YQ1+7Kxg1tfk+rT47rBBwt4K5z/MK5bViCZsg8Hv2vjIfGeVzkEr9vmXtw1tGG2kDeh9oOrm
 9oX+im9m16vtk2UXprMBGtjgupAVxpftEMPptNpaug/R6nec2XBCpfRZCPyG4Rwo8HekTzEugv4
 3KMRX7XO2qMyUqLELNg==
X-Authority-Analysis: v=2.4 cv=Fqo1OWrq c=1 sm=1 tr=0 ts=6a8be6c7 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=CyeWGLuohibXKJY0YOUA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: k7kIhgpytIKsgTZHTJkNxl18plVrc7W8
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA1NyBTYWx0ZWRfX/HXljfTffqWx
 uSLc8g/XRHJLWR0GnBoHOGw6TSc+9ziKRB6tbcwKCJHA5Su4tIvMuWjTTFpv23j16xqwCE7wDOI
 nrFC+fz/OeLj2m6++cYv0VHwRmwGLYI=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_02,2026-08-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608240057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_233800_649840_D87D3DA6 
X-CRM114-Status: GOOD (  11.06  )
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

Document the Qualcomm IPQ9650 USB3 QMP PHY compatible.

Use a standalone compatible because the IPQ9650 PHY has register
configuration data that differs from the currently supported SoCs and
should not fall back to an existing definition.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 01342823e57f..746c5a331f48 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -23,6 +23,7 @@ properties:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,ipq9574-qmp-usb3-phy
+              - qcom,ipq9650-qmp-usb3-phy
               - qcom,msm8996-qmp-usb3-phy
               - qcom,qcs8300-qmp-usb3-uni-phy
               - qcom,qdu1000-qmp-usb3-uni-phy
@@ -102,6 +103,7 @@ allOf:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,ipq9574-qmp-usb3-phy
+              - qcom,ipq9650-qmp-usb3-phy
               - qcom,msm8996-qmp-usb3-phy
               - qcom,sdx55-qmp-usb3-uni-phy
               - qcom,sdx65-qmp-usb3-uni-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
