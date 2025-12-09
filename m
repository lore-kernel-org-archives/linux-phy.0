Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6386BD3B9AD
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 23:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kl/Scb73J6YNjZ0hDK/37zyjoa3jKrxbw6Q9zJd2OY0=; b=e45m1DdyVFcqPy
	YgsUjtqLjZ2VHfPnwVwwefi2kEJv45RtH9BhyvzWBv107L/3N50CXWcHNJnoPCCsBudrPYGpMn59K
	fLb/0GGBV0YniBrcQMRDQekXrHyedUDIW/DaVTgfPUiPx6xv7+5xULQvhBS+I1bPa4mN5Ft0jsD59
	cIY9TS68ReaeTjEz02YshHln4/miSERHOW1+QiqEqu2eiQCVhvAxvxclIiQ7qn0SF4/hT3O1CIMHM
	LF/62I76In5DmSXI4Ty59UiWe4w0AADI+SiWTkDc1CSvdkxLbX1yx1jztqLwsChRHjuf4otonb611
	ml+ia7vqPZbOyMzv0veQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT6qE-0000000Etcc-0RDA;
	Tue, 09 Dec 2025 23:09:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vT6qA-0000000EtZs-09l1
	for linux-phy@lists.infradead.org;
	Tue, 09 Dec 2025 23:09:55 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9Mlrq0297973
	for <linux-phy@lists.infradead.org>; Tue, 9 Dec 2025 23:09:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MqQ7CuFg2uQG1J5bdN7Vc0a8C6p4JOXok+RrLgiol44=; b=JCqFIZ2EtMiqy0GK
	MMoVRXkY9AEgJ4kQIS4QDETcsos2MvEiOBwF2kHjpcdmB9oUKzJIvhelSSePGDL0
	bXVLzLIaWaIsNXPr5I9relBW8nCQWupgacan/3LRJE6s6QgOUoUEddKhwxWFCaD1
	EdyeMA2j4tDJX+JH1px0zXYwVFeDSEjZzSguaKXaLp7hr4Wa+gXjTTLnaoEzc5Ct
	0YMvsM4XCcVkTnbw98YNpFBzoNeUF4MuPOxT1W3ESHvALKur9yrrx4UN2TFhi69M
	K5rNkH8O9iRl9SsRdEthiluo3+43uyKEAwE4Q66efLomeBG6ClvFam+a8iNbA76K
	DYp0KQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axp4vsea4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 23:09:53 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b969f3f5bb1so10044999a12.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Dec 2025 15:09:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765321793; x=1765926593; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MqQ7CuFg2uQG1J5bdN7Vc0a8C6p4JOXok+RrLgiol44=;
        b=izAiKHicnP0TO4hONJE4XHgZTUoWrVMimAHs0Ax5o7VQdtTVneCagOUxTTQUXt2WCr
         ywUDKyEHq+dAxp2Indjc/hwt55ogz92HYIE7yV2PCuH/6eA5KUCoZ2JoDuwjnzkEKf3u
         coUklc4Oi67Slus3Gbk/URiIRCqXLTcKYAJX5jzKWWAz7iIBHUpcr3ekP4z/ckwGmNER
         U0555JjToF0Z8iBkeU4mFK9YS+bzBay1//9fh0W/KkYCBMDF26QFqDWMWrSVPm0V80B1
         O9JOBtVJ3+m0EE++28/glAIbOgWJe8ZJBKX/U+8bBTdk1AAUJv0PpfaLtGT47+uJtTvH
         A6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765321793; x=1765926593;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MqQ7CuFg2uQG1J5bdN7Vc0a8C6p4JOXok+RrLgiol44=;
        b=Th3m3TNiKaD1CEyocwrFei0gLlCLdc4orV1+5Y8hoE3pge6LCQYFYB8UlAs+WO9HJG
         HkV4BnBWVdL02jZgZXv+yuKV0PIq6TOw7UBQl/vlbFUhe8NsHqUvgySOHEdJ3FkSPThM
         s1zrZ+i9mUCNCeh8Y8bcH1+w8Ity1DPSOFipii6naA4fyT2kXknr+2sLbW7kk+ZG7v0i
         hJ34rSymCVYmhc8TvAPgTTSXcTGuUAHVjYRVv4AV8cHpvY8vkAS5OboshgXk8nar91MM
         t5TC4JpEWBb/PcFmq89msN1/hr/lsxll2DowZUItbqBOwKVpnUfSjXxxErN+p+olLeTk
         cZkw==
X-Forwarded-Encrypted: i=1; AJvYcCXQJ9CadEckCEAiqQAFcxoZof/jEtGmH4rzIQTPHB8RVyyKC7K0QkrWkhh2pG4VBOr30LaIddKwm/8=@lists.infradead.org
X-Gm-Message-State: AOJu0YzdTBbOmgtK9ccMJiGEoGQWCkBmf0P48SEBweyQ16xH0af2G6sM
	fYzPatCq9lpsGQVyNm6Juo9R0PdJj54RDJGgjfckSvmfBB/bDvTA7y2OKzI6tpURwjhnscS/9uH
	ZAbEe/bjgjEG4h3SMz0uB/WbSCJojvPnf0FhbwUtFIUcMVq+6Xqk0OoVMCUxGTiovLztr
X-Gm-Gg: ASbGncsWy2yngXVKEhDEtiIGY4NrwMlhDEAENY7SF0vkIm5KywBcHP2w6uzjjX3tu3G
	lcs03MoWM8rn4nhXK8NWzn9wiq0uYijJzOox6N9z+rSfBRWfHpC14WcXgWl+Fhze3QjavF960yJ
	goaw7l70ZoHbLvBhFiI4pi6+2UIL5Hayl6jxG5Xht8VOdb9tblSE8SNyBMRLrI/ceP3CNzpS+wB
	PIOCpOA3zGEyiEPvSX5Kpw3EZolCVN7Ic3pDzClI+eLtO1zj3VsSLuaCRfuyoIv5Y6ouL6Iwo16
	lUPVhuWbW6DZOOPRsujwhtERc/VGKOcJbD7D1bZR7jZNqJjaXXE45VRUZaefm0wPvyz00HlrEW1
	On3WDVAAN5FXeGWFxWeqMC4nFunOG6yo+5sDSV3+ULeP4XoRpCfKFcJ5vV9L9pw==
X-Received: by 2002:a05:7022:6b91:b0:11b:adb3:ff9f with SMTP id a92af1059eb24-11f2969f9c6mr293980c88.36.1765321792848;
        Tue, 09 Dec 2025 15:09:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFCC8NeSyIA7e5vPQvysCLDkecln9w4ZgsA3OxaJEwsQ/wSssMZPk3ra1j0O64cNCZVhT0arA==
X-Received: by 2002:a05:7022:6b91:b0:11b:adb3:ff9f with SMTP id a92af1059eb24-11f2969f9c6mr293962c88.36.1765321792333;
        Tue, 09 Dec 2025 15:09:52 -0800 (PST)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f283d4811sm3338933c88.11.2025.12.09.15.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 15:09:51 -0800 (PST)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, vkoul@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 4/9] dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
Date: Tue,  9 Dec 2025 15:09:40 -0800
Message-Id: <20251209-linux-next-12825-v8-4-42133596bda0@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: LCB2zvAGu60Rd_RGaY1jITLAKeXSXQHE
X-Proofpoint-ORIG-GUID: LCB2zvAGu60Rd_RGaY1jITLAKeXSXQHE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4MSBTYWx0ZWRfX5k8nJvesEcUo
 rmpuvmcdKrUOXZUAz4lA+bdVkjHzb93eTkVIpLD/7FYV7DiwtuBFSy0TLhpb1dZPax/D/4Kwb0j
 UGpUvly3U6D/K4EbBXCw/lcpOSv/NpGhwPQtKKE5h8R7vtUU1I4sAyXm3c5xiVHaBCd1NP1Tso4
 aRVmmGeFsuyc9qhoy4xgmgPfi644TMPr75joBDWvOHs5AjXhHmayQgCTBpZmvclt7ClBMp4Zi3/
 SKd//IFNdKluVKn9H8puqIHszg+8cXU2GtPMYkbdut3c6m6ZoAWP52v2jNVeihHI7wu+wUhgWUw
 Mo9VsxBqar2OOlqyw7E4i2e82zRl6Z+8sraYcizGplXgJSX+Lt7jeuJqn1mHV529FAgyJnjxwpG
 vuXNwzANUBJrKpArbOKHRQyLEjAnNg==
X-Authority-Analysis: v=2.4 cv=IoYTsb/g c=1 sm=1 tr=0 ts=6938ac41 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=9ZGL9VZrYHwIVTkvpzsA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 phishscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512090181
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_150954_079883_C72EFE3B 
X-CRM114-Status: UNSURE (   9.77  )
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

Add the compatible string for identifying a SMB2370 USB repeater device.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 5bf0d6c9c025..0f015a4c2342 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,pm8550b-eusb2-repeater
           - qcom,pmiv0104-eusb2-repeater
           - qcom,smb2360-eusb2-repeater
+          - qcom,smb2370-eusb2-repeater
 
   reg:
     maxItems: 1

-- 
2.34.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
