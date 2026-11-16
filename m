Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A49606A32C
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 13:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bgmdXCVm;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=Cho4pcfP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=SEBaEYpH;
	dkim=neutral header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=E6lnPCCO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=rCC5BOWjpHDaoBQ4AUkuqCHrC/esO1lghDZY8hQ1YKM=; b=bgmdXCVmIyLijb5GHjsV7Gyvh1
	EAL0YcpPSTcyzke+5g2meDYpWdEWgc7PfzPB6WAjOaZJALycIXN0xAsBn1bUwCSTlNnFvdO2NznAv
	Q447VOyWs3gRpYa+wP7NH5dr0A1OtW9DkM5MHqLG/l14V+FjHLTQi0WQOUBh3fgs4ybD7RYmtrbqm
	AKrxYciC3BaHujeGPkv2MUqSw2BWySZp2Sbh2O5gdS7lNPxlKoU+6QoZdW4Tjeo2DaocJ1Q3tEhn5
	4pNNPZ1eSaGp9XzWhcKZ91pDL0xVOeChx65UJIQzhtxzsCB1ItxXukU2Ul1fYmZAo7HEO3E2ZjWxO
	dd8hvJiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwaK-00000002Zzo-03TG;
	Mon, 16 Nov 2026 13:17:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwaJ-00000002Zz2-0DAm
	for linux-phy@bombadil.infradead.org;
	Mon, 16 Nov 2026 13:17:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=1w0FWR5wWQFDU0ye3GVQmTCZT/x5MR8HdbR0B68w3LY=; b=Cho4pcfPyzafaPbKiWrt3qv1/O
	V7hfCq+cbeWVgG8I1y+4D9qFC+YDc9vHJOhyFpcvTqa/PM0OEbGHI04k3lW6NX5DpGxEAGmS8FnT5
	47c3TIG2F05MWKvHcs4tQxbFHRJNb245XV4wCya7ZrQo26LXfJ/DH0MFwFRIOEUuDFX7zu0HeZvUH
	hu1z3ybi7GRwa2S5XOGPzZg+GXoM5Do+RJfnFNZlAd3o/adxMeU7pAojRwVQF/wjbjvrjFKvICHtH
	0Ql+QvjVITW6XC53izxH0uD2bCjzvyBeIHFPMp7df3H+PS1r/tJgYlG7dZfUxNiXBaYcrGWcJkxrf
	AGMrz9+g==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwaF-0000000Dqcx-45Ol
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 13:17:21 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AGC0ric536284
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:17:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1w0FWR5wWQFDU0ye3GVQmTCZT/x5MR8HdbR0B68w3LY=; b=SEBaEYpHc8jEl+Tz
	VTfNtRbaEmPc2jrwl93W0jgyzhiVnqxEyy96KKDGqfOIzzOoHdfTo/FNCousA585
	/BZk5zDyNUvjk5C+02CzTQPKyiP+khk5F6dMJqDC2Kequ5/sj2vLzxy8og8KPiRB
	xBzT+cMUhTZleyuOIsvg4lxeVgKA3sgdYefq3el6EKI9Sot5Mx7o6TUqcxyXmr5x
	g4b7gpwffP4tJmzx7FuPNZkqcxJwBqKpvrNp36qMEbS/QaAFD9/aXAmCEPr34R6o
	YwiAj8P4FvJlbrH+SrnDVseHGi06M8XW+rylW90SxbLciHpljZILQ1YmFebMGCbm
	pO05uA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hyyqggp0v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:17:17 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93f5844e383so614490085a.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 05:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794835037; x=1795439837; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1w0FWR5wWQFDU0ye3GVQmTCZT/x5MR8HdbR0B68w3LY=;
        b=E6lnPCCOjXlc51ReD2TVwo3u2bKg87c+TSb8KXefBvjty7nV7ce564/IYyljuDDY32
         47CyXki3vjnQGfK5mkzMmJaAUF+NjUzme1j20mc+cr9rmk6FbkUy5xilXrdfdN2JRDMO
         3TqcP/iAvCIWF4qlGWc0d2OY06FKfVhWxiBLxVsT0Xz84hpnaDfWNkIieibnEbtsLDm0
         1p3QHFwSwavJukrqf7e3xwjcf8JoVcFej7pjZgxEz3tiWvMkI2a8wBy1UpmsIk5X1mBD
         c1ZuJY/TH9De8yS4gw0kIN+L1eWdCPzue8rbnSz7g4NPq+0Izn8HrTT+Aog9z1Ou1RAH
         oOwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794835037; x=1795439837;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1w0FWR5wWQFDU0ye3GVQmTCZT/x5MR8HdbR0B68w3LY=;
        b=AXZyx/jiPtz3ClCNR1u1g/It0NDA/40jxTL2Cpk6HemzpBWJP4n5lwtkeILH9gQzP7
         AN6v9d8wmwmssT2+f+UDcnfZlSmeVc/1XiGzeCfiaXhC/NI8NTMMiMmKUtGIFAb7YQap
         xIy/N8RxMVzmcE6ykpdf0ZzHxZqAjA5q70yxf2xoUTcIPxP1LpxpAJitNVKoTN+h8AwA
         RQXddQOdFziPdlWK2XD2xUnMHesNnIphw6cCAWVksNyAasxue3pqIOPG7hn1Zkripm5l
         4iqeEV13dE/Wa35bNjNeNgACwXYa6ZTRjlNNERZARFQ9R1ddAfJ6jPFVRYFtMb7mHGKf
         gIZQ==
X-Forwarded-Encrypted: i=1; AL+hErEseNfjSJu646uxVnHwSLJ7rVdiXmn0pTM8zyZlftg2w5chgi3xP0H2LBLjvIxpHI62xJJyy69rSA4=@lists.infradead.org
X-Gm-Message-State: APuU4Z95Hk4cFNpPZVBO6W+lOjSX4zodcyVFic6Nae1Hdcwlk7kYQscP
	zqA8hLj0gThm4rJM0xM/hWvjz/Hdt8hLj9oESXQw6HJfA2YV72yg383Tbl4QI+EL1ADjFREhxUo
	jJqU3km31oV8qAuwWSE3mtGJFcR9sLEWd/NFut2SIzizhN/mfX8WOf2f2MsBIuVh/qUul
X-Gm-Gg: AYBFou0MvU0MEfOB9hn40W9smaZfRm/MMQ4F8biaI9Wrie8UvFQBQEcbg16LJwhkwZy
	EOtaogRpVunMVeM259SmX6wEmuBN2eeRi4W1tZpXo2KXfpP6FYaLt3FS+Zmb2rPUCr1RkGpUhj2
	Y2auNUyjMO+DdD5Gwz758mGEAJvHV8tAy2xes7qh6bol+W/IS/MwhxoQZxWiGbKH5vJFrfpr1I3
	sKvRcHU+gENWv5659NxPMaqaHlU3nm4lpzV67OZe2AIfom4yhI/9qZcwPg/fsDwd5g4/2YDkIvZ
	+JMf6fVahAuETEqp1CHN5SVzHaO+N0xDNlfzxXljXvq2/w6Q2iZVrCPVR1bxCOKypRz47z5ehbc
	Ql9Y53q7XkM4Z8UUzoJMvnGCKbWuF184Th8r1GzOZ+0nnQbBi2TGCkFE8y1i7SfnxEe92/NqWPz
	s6
X-Received: by 2002:a05:620a:8002:b0:945:c4b9:3de2 with SMTP id af79cd13be357-9494bcb0e9dmr1652194385a.73.1794835036762;
        Mon, 16 Nov 2026 05:17:16 -0800 (PST)
X-Received: by 2002:a05:620a:8002:b0:945:c4b9:3de2 with SMTP id af79cd13be357-9494bcb0e9dmr1652185885a.73.1794835036121;
        Mon, 16 Nov 2026 05:17:16 -0800 (PST)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9494c8e1c94sm843927285a.39.2026.11.16.05.17.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 05:17:15 -0800 (PST)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 16 Nov 2026 18:46:40 +0530
Subject: [PATCH v3 01/11] dt-bindings: phy: qcom,edp-phy: Add DP PHY
 compatible for Nord
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-nord-drv-dt-v3-1-e3d3bf0e2c49@oss.qualcomm.com>
References: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
In-Reply-To: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794835013; l=1366;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=htFubjaJPIibVGGK/b3gnFKqJhVT4tGAGnQz5T8JsPY=;
 b=qUoDsXThlUNNuRFU0T+sympFDVYGr9xmnyLWpJ06LdBycStF71umIvFt9uuV+rBK3WP3Y1cwM
 cbD7HwGrAdrDCzrbDAebYAipwZgM7ip3HF7Gf1tso2kcQQ8PgEacPWq
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfXxmwPlAQdJQ88
 ZxYMHBKvPlgvm4dTCdjdhlkreM/n6pmDUmjdRYjosWpS25pCG2cZzB5N8JzZRaFt54oPq5NPkiZ
 AD70MrJf2BG1og3n1F3sfQud/MQr+6c=
X-Authority-Analysis: v=2.4 cv=epRKXYpX c=1 sm=1 tr=0 ts=6afb025d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=kfPMoZk3nD7OVdbVor8A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: n8gYKSLBxqtihu3Zj0NOelk5vgqPAtzf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfX96ajp0uc6A1W
 PNi2k4OLRdlEPE/uLQYhHIOcQ5aHA312rTxCYnmj7/E4ZspGM80vco4bI2cB+nDdVo8y9s3Vh+l
 2on0eMDl8q2Qv0rPV9hMFvMJX1CSBMKRUFeBAqI5pqYvIgAp0untecJbR6gg3BfDwcYS0vUfkv0
 HUo20JUnORTaKTq4ryGFW7gEpuaZVae/r2Ib7gOmE6FaIT+NnLv/YQd+coMMtmZHi2XG8nZx1pr
 9sX/WmYgbZ0vDeOkpOOdSMPb9A/NFecjA4A11yWPuSB1ImycVBqCHHWJacZlXsSgJY3tXdNoNmR
 9TwYMHQiXvRs0SUXFX1BJhPrRqpwlc9JvNswZFDO1DTj3kJGIr2QjGVFMok/tHZnCcxphtwiP7H
 8ANSYWl2w2psWj6TP1fEblFWyrUM9CNBOnOLnfPf6OWlG9DIOM/HEakBlz+azhpA9VYUpW9S0Mp
 O+ul1m5qXf+wR3+nNiw==
X-Proofpoint-GUID: n8gYKSLBxqtihu3Zj0NOelk5vgqPAtzf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-16_04,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 suspectscore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611160052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_131720_347758_03DC0116 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.9 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Mahadevan P <mahadevan.p@oss.qualcomm.com>

Nord relocates several PHY/QSERDES registers relative to existing
SoCs, so it cannot reuse an existing compatible. Add qcom,nord-dp-phy
to the compatible list. Nord also needs a dedicated ref clock besides
aux and cfg_ahb, so add it to the allOf condition that requires
three clocks (aux, cfg_ahb, ref).

Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index 0bf8bf4f66ac..0ff07ddcb76f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -19,6 +19,7 @@ properties:
     oneOf:
       - enum:
           - qcom,glymur-dp-phy
+          - qcom,nord-dp-phy
           - qcom,sa8775p-edp-phy
           - qcom,sc7280-edp-phy
           - qcom,sc8180x-edp-phy
@@ -74,6 +75,7 @@ allOf:
         compatible:
           enum:
             - qcom,glymur-dp-phy
+            - qcom,nord-dp-phy
             - qcom,sa8775p-edp-phy
             - qcom,x1e80100-dp-phy
     then:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
