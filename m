Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C883CCFA13
	for <linux-phy@archiver.kernel.org>; Thu, 30 Apr 2026 11:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NShr21avOj4j2Kag3niQtqMGIoxL3fJ7dtYOFW++sOI=; b=H8v8FnZYEsM3nO
	XqJtDAidCMHkTtMCOp+AQDh6kujI7acP3e7A+tyHVNmhm9xJfuI9voL4WAHcR01Zz/Qh4Yrakxdev
	1Juy7XpawSZA562oQ3+JcFjTkMINdKpJmGnGi6UiyYBRAROzfIPt7fZ+ksJkkUoEMZjCyVdfbYcV3
	cJy3mW3lW8ITqVu2sawJsdBamLoWDsE7FJIQwDUs1FC0A1cmNIJeQtqx8D2rJepJRWL9KsLJD2rAT
	/H7YzLWD2bb3J0uBoT/fkAZdyMRFYzie+//XZbZB1WLM+lWXYHOjZRLVgKsFMP2bID5wYWrKhBTDy
	xyzqTuaIZ2AfR8p4XvRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPxE-00000005PIJ-3NXz;
	Thu, 30 Apr 2026 11:53:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPxC-00000005PHX-2ExK
	for linux-phy@lists.infradead.org;
	Thu, 30 Apr 2026 11:53:16 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63U7Zkm1088531
	for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 11:53:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X9V8PeHe2/mRLE1vPkwLpjp7J9AlNjCRzuuPJCoF5Ag=; b=CoA+SLq3XMpGblAf
	+E+Vdu4edKZLl3GX0w0lSI8hFwTAMt2yHMPOXqFMlUy/QH8vEgqAjqjSzPa3WgRd
	zVxbdmpg4dq0UV1CVFVPiWCIVvzN2U1RO3E9vfSmN9Xhb1C5HNHOkSwYKvAxf3oV
	KKTo0hPVazt+onvmS2X/p5D+fSyOfkMP+KX5MtJBfHGXusNGXlWd7neI8nyqgYV7
	lF7InDL+GOTAVSVBz2qjXjpj+b619jg/hA3z6draAA3NWiGjPEzBGUO3rx+i3EOG
	zldJBlfj15y5MYyf+ufqy5wxPZ9Cwb6dpVpkg2+pQk6QG141fbs+43/Q1RYwoMG5
	eYFA4Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dv2u415vh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 11:53:14 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a90510a6d1so7262515ad.0
        for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 04:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777549993; x=1778154793; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X9V8PeHe2/mRLE1vPkwLpjp7J9AlNjCRzuuPJCoF5Ag=;
        b=g7Z1ns+KhGmqz9FfO+vdjrYxD+gHFezuRzKhZHHnySCXOWAqUhcg08E775KRzGP4Ib
         myFxaTDMhH1vHptm2dhWqjTfVoWp3rPQQkhsmPLZyPjVuG9WmTG6c6GDatezefhWnnQA
         MuIO2+gMRHsptg+vnwV0bQyKCYYrB3hpB6O1HJdkyOH4HcaOm8Dl19bhr+NYEpClO3Oy
         QSNw0GAM7OLHNq4KUTE/iiL5G9NOQTfua6EYizq25SWpXl/6c7UHxWA6+1gKL6S/WZJN
         8nKOwN6Xs5vLtYlVvM5KmWmeRZ8uXeffVU8aMzS5P4AB1PXDiPCHWqUrEaouoveNPGX9
         7ZVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777549993; x=1778154793;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X9V8PeHe2/mRLE1vPkwLpjp7J9AlNjCRzuuPJCoF5Ag=;
        b=pBVf1A+JYGkutqREtGiJ+AnFCVd4RF5GWWNR9xoNVxYBJ0ATWDC4/zF2oOI+tHoUBh
         tjoBHjRHxLngwO/0/fLtAaLTE82vy+807vBMi2pX3jMKgCYfwfi1WDxixsusQwU5EJ9F
         KStKnyD0v9FeXnIHykGaMbG6LGjrI1vtOc4v3KCIH4SvE2gWib52nTjiwHjK7/YRm7D1
         zBE0hdFT3upzMbzMIga5vqiMEY9cMzXb7sFFZL4qwuNvC0Xt5sHA8Tin0ZmfY8Mexm2c
         JlrWxAUnqK3hgI7/Bx34nX/JRWN9ATHcRRuNFU/3HZ7ANlkChxXWaI8FEPu6hZCLUK0q
         TbcA==
X-Forwarded-Encrypted: i=1; AFNElJ+ea9/bQQjC1EsHK1reFG8AzQJDvlq2fazW37kqo945FdbMBrTFduyaXmifYJtjmHLisK/LraegRCc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyeUvLJASNLKxOU2vjgJ6WRRxodBxPyq0RizsZSInyKFrO71GoR
	JeGF9gNn5Y1z6ML0ybh+l6xd361BPn5XS6G9UUZcPP5IOPOS5cg3tfx0ffuaX/zzJk4tEM+Wedl
	Ot0g7f9pR/wrfnTYJ93otQ6wPqxCUcSmdAw1+yjySzFX+fn2XLGl2wzIbdhtn9sZPV+75
X-Gm-Gg: AeBDieujKq8752U5AZ01xvDqFll8akZ7Dq0lnzBlgPm9j+M1m80clmwsomFCjCFvzNC
	rw3KjucVFVo2yXBmmzerzxiWDditHEn50M8Fj3IrDpatfnNvODLKICCIuBnep+osO70IvQZml9j
	ZsPVMEOjyYOQ7V5SIjRVWgxXAqeNenXZDTtYe01BLPJjzoaHKca2DJqkFk1h9BQ2dGTlAMybG13
	3HE94CUgOXuNxY9SRiIfbNaTnyjCvgKLsr7DkgnfT2m7ULwxyeo4TVUxo9l9CjeYj18Odmq2TqY
	v2M9YzLJu0jD6+BCS41LZE6kHTYLHEtaiyJ1kzQHBIEoZof976YdbBDryMOPx4js6OukaI0QmdV
	r2gSSQ11LVw98CWRNzmYvK6N3r2U9MWGgi3fvWBKHovcrziM=
X-Received: by 2002:a17:903:3e25:b0:2b9:a6d7:8da1 with SMTP id d9443c01a7336-2b9a6d79d06mr13556885ad.19.1777549993137;
        Thu, 30 Apr 2026 04:53:13 -0700 (PDT)
X-Received: by 2002:a17:903:3e25:b0:2b9:a6d7:8da1 with SMTP id d9443c01a7336-2b9a6d79d06mr13556735ad.19.1777549992695;
        Thu, 30 Apr 2026 04:53:12 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b988971138sm53834955ad.70.2026.04.30.04.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Apr 2026 04:53:12 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Thu, 30 Apr 2026 17:20:26 +0530
Subject: [PATCH 1/5] dt-bindings: usb: qcom,snps-dwc3: Add Shikra
 compatible
MIME-Version: 1.0
Message-Id: <20260430-shikra-usb-v1-1-c9c108536fdc@oss.qualcomm.com>
References: <20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com>
In-Reply-To: <20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777549983; l=1275;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=tOSyAo4meh2wJat6NRjzhY3Pkc8uEyXIKCYEmOZPudI=;
 b=3CeDKdT4BBdhdAZ4vvdHoJ7wHxcu5W+RrQeXH9F8VuUOb3d5NlP/YiEO/+US8kJiIee9s8pov
 OPROWHukQNfA1DECuA06jqwntdAGRgH+xBOOcDo4Nx3UJjHRMSFeZqL
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Authority-Analysis: v=2.4 cv=Ev/iaycA c=1 sm=1 tr=0 ts=69f342aa cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=mkQ1ARZptfdP9UuQ85IA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: ag5AQyPQjWbGBevimfOqT9uCgg0W46d1
X-Proofpoint-GUID: ag5AQyPQjWbGBevimfOqT9uCgg0W46d1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDMwMDEyMCBTYWx0ZWRfXztHwyI6WxqKD
 mSJksxwbUAMhIZR442+5/rxWIIh75pPK+OTTgtKEuBssubk289PTNMQPTnlyT2FTmHX8F2Un3KZ
 dJLVsawP84J37UyLa5k6vg0dXjdh0v0AKM8vBLXDY9ebHDJcqBXaal7Jm0QvqDVYdkB7QNsUfSw
 RiQ0jAPhqDF5rPZafLq+eMdE/utfb9NyNMlduFc7V9Ktr7NrjnWxdty2T7Qc6OwnsHPVE49W9FQ
 4rGD941wWtkN2w0ZlkK7nQ/z2dr+obIImQ4yDxHwKk0pTdp+J07nAuSZIs4R3CxSW4sNYo8hRcd
 fPydQWNNtcP6t620HSVRzXbPiMKUM+4KSBkmTje89GIi75PXuFfHtH3Trj8Eo786i3wB+1RSRW3
 8j008sKAZKqNdXDQRlS9QJ4bG94rVRT5DwgQoo5WDmKzixkc1bRtZp1qT71AlSaI8wW65t1odrt
 ZevsNvEl7ubOJ4P3Brg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-30_04,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 clxscore=1015 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604300120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_045315_013090_A0F8D91A 
X-CRM114-Status: GOOD (  10.45  )
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

From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Introduce the compatible definition for Shikra QCOM SNPS DWC3.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index 8201656b41ed..68d0491dc653 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -60,6 +60,7 @@ properties:
           - qcom,sdx55-dwc3
           - qcom,sdx65-dwc3
           - qcom,sdx75-dwc3
+          - qcom,shikra-dwc3
           - qcom,sm4250-dwc3
           - qcom,sm6115-dwc3
           - qcom,sm6125-dwc3
@@ -386,6 +387,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,shikra-dwc3
               - qcom,sm8350-dwc3
     then:
       properties:
@@ -456,6 +458,7 @@ allOf:
               - qcom,msm8996-dwc3
               - qcom,qcs404-dwc3
               - qcom,sdm660-dwc3
+              - qcom,shikra-dwc3
               - qcom,sm4250-dwc3
               - qcom,sm6115-dwc3
               - qcom,sm6125-dwc3

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
