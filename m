Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2A81CD5BC8
	for <linux-phy@archiver.kernel.org>; Tue, 26 May 2026 18:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KscKvd7E9Jnlrbnd+D9cOZ/DaUrkP5lWv4vUzSCDKXI=; b=yDCM6ju74JjJVn
	8t1DBiEdjuLa4nilqP5d/8zPXei0VQVy5i2x/HilkT1kkOBTMo85AbtKTlMueGrIl9uNRpF5oCdOI
	/jpBHaDQFPL2dSRB9MqgYFtNSeSirLILS3kqMtMp1Tasoeqmi4Xc7Uy1xQ9Yk1wNaBuEK/We6WKYh
	pUmHTkMIn2Ueo1bYtnB9jRkhQDm74iVD5gal1iYavEhTWsuGysAkUgJaahYhGdtrqbJGct+2cFvFb
	+ZFgHrtDdXU77VK4EcO3glNNNWDv8EVX3bv0uU/iY5mhl5iCdaCCt/h7u7V994nNXhfgho4nWKlf1
	JR4P3Y5hQA6zqg3lXFMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRwlE-00000002ry2-1EwD;
	Tue, 26 May 2026 18:44:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRwlB-00000002rxV-3xOO
	for linux-phy@lists.infradead.org;
	Tue, 26 May 2026 18:44:15 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64QH0xS52022481
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 18:44:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=5FejAGL4pNOnrqngeFle1ZA/WbYFf5I2uXT
	jAH4zNhY=; b=cPUpIaqmJQAbB68fG/JKpOcKxIdFKDOOh05njiRyblFpG7H89jq
	r27aiW5/t3MJ4drypijutHKmZkSdgkhBaeqHnHmmQLQXWuBVpViM9oTVzelJU99C
	JPPSjL+b+jAa5SIGAbDMJWilECd3T9RVDBG8N6U3hWCdDoR/jDHRhSIjpJelO8sr
	JUuMDJM/NId75z8qZMKAJjQvfZdQ9LnZZ0CpO3Ax1p3t8DSi3gUmNqud0l6FLLBU
	+3xrGD+I9v8wE0inVHVziObF6sowj7TedhtOWmL8PosGy8arv2zvXL+4GD0CpLke
	SlGvHC0jqoeTCj/kg+3Ecb7ZOph7tAiLYig==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4edefugum2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 18:44:12 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-365df4b21feso2927596a91.3
        for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 11:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779821052; x=1780425852; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5FejAGL4pNOnrqngeFle1ZA/WbYFf5I2uXTjAH4zNhY=;
        b=MrnlzR/52Gq9PH72/89429mQfy6aKdb2i0xPM2S7MtbryuwQRtdEDH9KOUbWte3D/q
         WGvSUnSwNyUja1JuzTq4Yy7+VvinU9lJovSwmbRzL7bOfIEI83RZXax+5cisWRmuTYlG
         ITEq7P8iDGvsR3mdId6YwMq7mYtdL49YYV7yR/y8vy6FnPhrcGvBxQur683M5rHUAOTP
         izkdxcjWAgS+uIocFgKDRP+jdr9YthnCJwBPSa7kw5qg2xTWUp6634GY9rRyE6zq/yar
         CiUHcdyn0PabaiE916Rp86lum5u7Ok77W1es6+0mKzp0QXX3g+23hHNsIjSH5C5wnNnG
         s0NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779821052; x=1780425852;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5FejAGL4pNOnrqngeFle1ZA/WbYFf5I2uXTjAH4zNhY=;
        b=lV8QkA6cz0+YGHO0LJhoQm/F0/Anzu/pJSv1CepGK3gA447Hkv1IBmvRK9Uk1xdAEA
         mknXnq9SBbtzJC/XkwDXU5284MwbJnWDjFK6sFvsMLIJXOuMMFxNfOFlkE48VxpcgNE8
         FZbfPK7Q7+IcUvRPXJVIijmdKmHB0phtHQJ0pvQBjtF+bPE28wfrmk1tckcLC6twJNdl
         gnhxj9nu2c7N/DyXV7pqrva5BrA6LtvMGgGzJXbYg92AjLiT3flQiHwshIwk8UNx8FZn
         acJdGjqNFdJYftVG3YiDk1go+LuDiof3r3GQmqcCdkyr4gP/eg1bQJkJuyrT/jNLOYSw
         TJHA==
X-Forwarded-Encrypted: i=1; AFNElJ8y0z5ogD1hZBnhKv4VkIq1fMTXrcgfO9xhHmR/i19FKr/BYD/t8GnSVFWfdH6HDlXH0PP8FP9Sr8A=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7kA0fD4Q893oh+6VkiOnrh1Xo0A6IGhGWyQ0pGqepDZm1LgjQ
	Yk7+YRQ3G0Xx1SjffETDey6OCySFurfSBD++N+6CLMaOI88Jh45dr5HUOqBInUEEMsScwPzoaNj
	k9KjtbNWkHfgG6X80hQ1N1aOqjsqsNUt0UCuLGzeAsRdKmmB+RaRgRjiH/j9pWszDOpI=
X-Gm-Gg: Acq92OHoC8khsDDnSw3lWkdG0isk8X8pT/UIRfApbOBsTPfMpyMjHUpucQdhdIffCdp
	D4Kbka8rzVl9ezOu5Wiz/CHZnwFesxGOpy0uGedAIU9soAA89xrCQn6sJVtNfJ9Wq3s3JQ+625J
	uXsu4EPO68VsQbMh3PewArww51oc4F5Dry/wJ0G3F+agvXB6QzGNGLEAGa9+d9vdFbN+zJ9ZJ4Z
	FtFtsfYyu4vbJXs32DT2hNj6E9LHoTEZwot0+rlxnMzQfdqFtycPH8/1gKExG4LnG2WIqpr7ao/
	HTjrqr8Esv5XbwsFxodzVLUENUP5z9yTqN3iIUtQH7GB/WcSstZ7okLQiGLWArERG5VJL0Ypnph
	ZG2BMi8BCe91wYt6uMMoECqK8qI8JSfNO8Qs9Q3uVNlZWiFGSGchcMvFh4SjhbwL7
X-Received: by 2002:a17:90b:2c87:b0:367:d436:81e8 with SMTP id 98e67ed59e1d1-36a6787ee39mr10816311a91.6.1779821051911;
        Tue, 26 May 2026 11:44:11 -0700 (PDT)
X-Received: by 2002:a17:90b:2c87:b0:367:d436:81e8 with SMTP id 98e67ed59e1d1-36a6787ee39mr10816295a91.6.1779821051446;
        Tue, 26 May 2026 11:44:11 -0700 (PDT)
Received: from hu-ppratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36a721c7baasm16866628a91.9.2026.05.26.11.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2026 11:44:11 -0700 (PDT)
From: Pratham Pratap <pratham.pratap@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Pratham Pratap <pratham.pratap@oss.qualcomm.com>
Subject: [PATCH v3 0/4] Add USB Phy driver and binding changes for Qualcomm Shikra SoC
Date: Wed, 27 May 2026 00:13:57 +0530
Message-Id: <20260526184401.3959717-1-pratham.pratap@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI2MDE2NCBTYWx0ZWRfX73usgygGSVV5
 gqdJ7TW6Dt0c1tXL97ebMGckdlbGGXBN7QYk3KKiZwHWOb8TXVfJpI+8iWY6PbRJCPnrVdaT3t9
 eiEbzmMPX/DjjiSXq8V+kdyLs+pbCqrPBPz9N8EvwtButTQBcYOeJcW4Y/KcWFjygOICQPL3GZm
 vxOnb1gQB3tla6aYtfALRvABuZmGyRwwjAH6TFNIA8GbJHAeXyt8ILg4ZABi9+uR1PV3DaZxJLS
 rFGiZkY/5OWbb88hPG5laI+q+ppH6CQlaXl2QYK36QjGQeelWl9YfRTX64ACAgT8Z8jBJReAUq0
 o9rlh+cJsWLZ/2Y7RLm2/q7rPKQFD5iD3vBtyY5+XFjdlpaMDjZPh9YuvGrNr56eB+oYSsbMSKx
 ERrtCBx6ZDfZ+EQk5LlYi80I69P1RO773phrqXJuYPLqZwGuF/G96faJJYMsO4pxzb5+8nBMYGw
 Yvt1sr+hDU8tvUvkuHQ==
X-Proofpoint-GUID: cyS79X0RPivAHpi1LT_2jT-rCwO-UU7e
X-Proofpoint-ORIG-GUID: cyS79X0RPivAHpi1LT_2jT-rCwO-UU7e
X-Authority-Analysis: v=2.4 cv=cPnQdFeN c=1 sm=1 tr=0 ts=6a15e9fc cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=lodECODDCjcd_M0iS_IA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-26_04,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 spamscore=0 adultscore=0 phishscore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1011 priorityscore=1501
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605260164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_114414_073919_E185A7F5 
X-CRM114-Status: GOOD (  13.33  )
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

This series adds Driver and binding changes for USB Phys on Shikra.
There are two USB controllers - One of them is SS capable and other is
highspeed only capable.
 
Changes in v3:
- Moved to using qcs615-usb3-dp-phy since the DP Phy is present although
not operational.
- Using Talos as a fallback for shikra in qmp driver
- Add required "phy" reset in qmp usbc driver since its needed on Shikra
      
Link to v2:
https://lore.kernel.org/all/20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com/
       
Changes in v2:
- Separated the usb controller binding changes
- Updated commit texts.
        
Link to v1:
https://lore.kernel.org/all/20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com/

Krishna Kurapati (4):
  dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy for Shikra
  dt-bindings: phy: qcom,qcs615-qmp-usb3-dp-phy: Add support for Shikra
  phy: qcom-qusb2: Add support for Shikra
  phy: qcom: qmp-usbc: Add support for "phy" reset used on Shikra

 .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml | 13 ++++++++++---
 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml  |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c         |  2 +-
 drivers/phy/qualcomm/phy-qcom-qusb2.c            | 16 ++++++++++++++++
 4 files changed, 28 insertions(+), 4 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
