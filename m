Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 979BDC5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anOoVE1VHsNemjJICbLS3oxk3HdhpjbRhAjBZxfRIL8=; b=bwQZvGOdB0b2Ul
	+TUWysZu6aLNAel4vQ82jln9E0SO0DhLxL5a0p3cJI+AmOTkELF9p2TGAB/3YxygZyOD6Mocsafc7
	d+5mH2kLYRd/IqdmiGd1yIFiglPcdV9zVXx6oCYLaZ4ImTyJZIqN0BvyKqz1l4E7XfTGGJKJyZHg8
	bySQSu+9yZBWkS0etu44nWB+tpA5sJiG9RaVgmSzzRj57IA2Gk4TuqPeCzrBYVEpo+EqOFSR+sPQF
	Rt7rArEnfzXkVh0Uuqq3541mSgjaDToAgTDo4zfKVYAt64s3Z/1JChmZ6/uLawRlmbdDHcRtoub9y
	sW8kHpITf6q8McT9yf8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOOy-0000000BeN8-1Ez4;
	Mon, 10 Aug 2026 11:42:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOOv-0000000BeLW-3HYd
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:42:43 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67A9SdBI2342267
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WUTZRW8mXSr8nhQ2D0MN1c8mjSxKCPOnQ0iljovnOU8=; b=lsKZrXYzatNB+Gqq
	X9LXTRe9aDno10CTyhSYeHfQVTsukGhJw3eU09yoQmTlkM6AAWs+pRxFsQAYtOTw
	bZRF8/UdKzggeS2lGNTmIx5kgq5nkg8Ug2WrJAv6t++TuRjyoRiw7XhPMgTipL0N
	Y2hPzeP+1238j72o4862/FRCKF03ax73e7K5E3BVzJTUdM+5UWMKMZaRr7I5CtSd
	8JEfGzEcCSXBCpeGdzMo+a7wYVem/VHPfF2nTr0C1geDz4qXfWlzNqACqumuvqLQ
	bFw0rGyN3ankr0gB0TuMrAa5jyVuJ5lmusAGXwLj8XQ0XIqPWgPHBU4pONlaN6pZ
	2elLPg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy19kjb8r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:41 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-52d33c89a29so15734831cf.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786362160; x=1786966960; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WUTZRW8mXSr8nhQ2D0MN1c8mjSxKCPOnQ0iljovnOU8=;
        b=Nlb1kWPRH/8ZS+cpbzFsemmLd/3f153aKX5vcP8nsNUo2nSAW3mFTCccoo7xR1kI/3
         x7dAn+Di9JjN810DEf2I64OO3HPwd/iDdYqI23j6+Z8udAcxMXOnXFh6LEoWMYdB8Gfk
         ETcKYRvh7IrpxYVx+HW7JweZXjFtOSoS9ZxHGbPVg+G7mwxsE0VCWnJeo1aRZO+sbLDi
         FCvW7FCHkfO6LSTQpQyUlLphdjajnUzZf+Kv6y0J6Mga0SjD8oOJSUNVmoXLdsAtQhsV
         SJpJajpBUrgYn2U6pOfYATWX79Voj9qweH05m4iNskyBYZEJ1FwcUhWP++9No6Ca5YH9
         tjng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786362160; x=1786966960;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WUTZRW8mXSr8nhQ2D0MN1c8mjSxKCPOnQ0iljovnOU8=;
        b=SXMBYgWPaO883aICKaDAMFLEX9kqk4By8t7//FdBBPZvZxjj4Wr6QBwchAKAXPJftW
         9bi6MxAiP/p4Ua0ytf+te8vESshU8rT8Yz/NmCvrR5YUTi3b5a9RaIxJZTfTz50ssANl
         PuuJzRhh0DloyOiNm0j0qlYkysaYpEXRkQ8rv4zfBi05Fy9qhbQmwJBPJNT5n9ds6CYK
         0acUGcKkE91lGAw/roIlbET2MAwPuaaOCEeP5FN6NZFfDepPPiG+5Gjode7r+qkaThfK
         t629ekUZpWXxm5LEVJjXhWVDWzxc9itBwNnbBodwMwg5pRZ8Y3hoHUM2BcUuCLw+Di0b
         VzfA==
X-Forwarded-Encrypted: i=1; AHgh+RrWxsSvF2nu5DKTgAycBqAwT1U6lhlm+vLtX5Bjj0wq4q8Am/5AeSPew6dAA585iA/w4qSZVqFDBiw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1wz4PUeFeiT3J/CrFn16nEqbPREfSkZC8rgYGswopF8pJl1j5
	PTppZ0tmhwArTW+qv5PZ1SZxMXJZwiefvmDCekx3bcCIyDVb5PvQ5Tn/aH62SAzqqr5Pro/3f6c
	QE2ztTh8dcrJ80mXJk75wMZaYZU9K91PFta3xvx7EuvSXnxFMwX53xgPveTieOMre5dS2
X-Gm-Gg: AR+sD11ELecb0Ej2rbaBz52LL9XZ3qRUFG5xtHvlxuZ9ENigmr9ChAv+gDaTiLBzDhC
	dORhEe9j+0TZ2g8CzjXw7d2YeEjFdQ1Iy3Vrk4w2vAUMwDyl8+4sbwfYl9lxfksu9+eZa1aS4t7
	enahrhCYOHfskpRMNsGmtUHZRZy7e/EbRR6jlMvQeMVcbE8dcovP8gz63XFOOE2YJcK8nsVjhaz
	3y8IzY0F2YVupiK2vm3Mh5qrITYbmuAjucI2NHrlh5fZ7qUrGt9uAy/gd4QH9mROBbtM9Yrttxm
	NNusA8Z2YqJilJTrDJ2dF9u5JuNebLtpDirAQc/Q1hYvVhGnIpUEyd3AKCkOTHkfsIgZltm0fMR
	lgID+P2s4uedLlDyHs6DynGLfH2yRAftfsX2vSZIihbRvnH18nXyoCt1t1MSaBItuYFzumtYe+u
	1ZlJx2UjwYAxTkEg==
X-Received: by 2002:a05:622a:138e:b0:515:189c:e0f8 with SMTP id d75a77b69052e-52ce5fc17b5mr396944861cf.17.1786362160086;
        Mon, 10 Aug 2026 04:42:40 -0700 (PDT)
X-Received: by 2002:a05:622a:138e:b0:515:189c:e0f8 with SMTP id d75a77b69052e-52ce5fc17b5mr396944321cf.17.1786362159555;
        Mon, 10 Aug 2026 04:42:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39fddd67ea8sm21201671fa.28.2026.08.10.04.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 04:42:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 14:42:32 +0300
Subject: [PATCH 02/10] dt-bindings: phy: qcom,ipq806x-usb-phy-hs: document
 the MSM8974 HS PHY
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb3-v1-2-1a47e1185524@oss.qualcomm.com>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1433;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=XlBDQwSAvxsyZibxTb7GVapBUaLLsh+xxc84Mnw4H68=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqebkoHJUasBZkSEQyK8qt7Sa0CbTM1HkKPQd36
 hMtY9nvcoiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCanm5KAAKCRCLPIo+Aiko
 1XOPB/9iP+0cBpsURaaS2Nk5a31W2huWOTDf6btKzykDGqqn3mcp3DU9H5VLFMaq4MGjOuyF4WY
 nkWzPdUmUN51RIs2HuSzJNfcrJMj2rTLNTpv3ezNv7SEuucpSmjPy8yY/GMwFMGw0dNH0LrfkIV
 0NNSc6qQjEVEqSld9D2Y21LYYJeX2jsaS45feXcQaZ1LLXq4gEbc5xEC8koGjPSkEVUuVAnPLKk
 8bERkIyLr7tfRqwwYzXa/M23qNvqldkuqdmnIkKrmWZAj9BhXZ6bys+DA8I/yBghagcbJpi0s3T
 XmrOCgvsVnP3ucQPzs2W0rWFZ5akGHFaw+TtT3keCb8IPFYd
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: H-Tv7EELTvV5N5l-lqvGaqrbaVtu6oZ5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX6NnP+rLXRbp0
 kGSitT9wEvSPL5vBwK3WsYpsKhLBDfz4tf80oZQNnbwVppV7KSBJuZF7diURqVWZam/iU/o7tex
 sATU++NaIEb4a31UqBrj4c+qMHoAUY/e8fqNDaD7Gpx/ZQfHDqk884AAAYJsln6xcBGn0S+n3Fo
 PNwKoe8BnGUSWeRkQ8IyUIeZTGRXSMClBWMGAnEQ25US30y1Cxj49YIVMGbioIyN7wy96DMJzNl
 AQoWQSeFXVYdVm2bIaIiRwkXH7e1SZdOyhjTOa515VK1S+TueT3qtX8b08FKShHREfAiODj8Hqk
 relyj3wHcOwoTMGjQEyywov9D1hKWa1H2gT9EA704JNWIXJ1kBvupuLy2Fy57290XloRUQpXecU
 k3muNQUQKmqANmZWwOeLHXPVHyROjWAFDUqcs7ry22wkdHOAEb6UHmrY+KsIu0cnidNONI4oaWv
 5EUvwK41ObZnLmd072w==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX64GPP83uha8h
 +uxIRW/X6X6jq4X81L35vXvU3qU0eYVpvIq70CXGQRHuj/zjidPKtSAYjP3VxG/cYMQerEYtGGZ
 oJcbZ+iwjuPs+0PK7ov0prCVEO07Deo=
X-Proofpoint-GUID: H-Tv7EELTvV5N5l-lqvGaqrbaVtu6oZ5
X-Authority-Analysis: v=2.4 cv=abxRWxot c=1 sm=1 tr=0 ts=6a79b931 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=l4NzwngxL-zSgT35z_IA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_02,2026-08-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_044241_847581_E770939D 
X-CRM114-Status: GOOD (  12.47  )
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

The MSM8974 DWC3 wrapper contains the same generation of Synopsys 28nm
HS PHY as IPQ806x, controlled through the QSCRATCH registers, but the
binding only covers IPQ806x, leaving the MSM8974 controller to run on
bootloader-configured PHY state.

Add the qcom,msm8974-usb-phy-hs compatible.

Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,ipq806x-usb-phy-hs.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq806x-usb-phy-hs.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq806x-usb-phy-hs.yaml
index 35296c588e78..de6f94997d5e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq806x-usb-phy-hs.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq806x-usb-phy-hs.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/phy/qcom,ipq806x-usb-phy-hs.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm ipq806x usb DWC3 HS PHY CONTROLLER
+title: Qualcomm ipq806x/msm8974 usb DWC3 HS PHY CONTROLLER
 
 maintainers:
   - Ansuel Smith <ansuelsmth@gmail.com>
@@ -16,7 +16,9 @@ description:
 
 properties:
   compatible:
-    const: qcom,ipq806x-usb-phy-hs
+    enum:
+      - qcom,ipq806x-usb-phy-hs
+      - qcom,msm8974-usb-phy-hs
 
   "#phy-cells":
     const: 0

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
