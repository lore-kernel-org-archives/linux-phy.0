Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9325FCCF9E9
	for <linux-phy@archiver.kernel.org>; Sat, 25 Oct 2025 00:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EAHG0dDqWzYadnBrfDuSq9PTiBPSPxlAY4+MtQXuPw=; b=ckucAC4/IQJiAk
	qQIzliRBPXzTP8ohkVfPDbs9obKsA/qN5dW128J7cwvbYGB3LDmWbdHy+1oiCFdM7RTUuYcyKBu/R
	QsFbQdZKChDDOZJYCI4NxW0nR3799R4BpNtChvCi2hp3vYKzP20+WGir5r2flY/8UTv1G/cI6vjpS
	Gps4tSBhMbyB2p0yU9e0gh5JrxceER47h+umyq5BAmP3SoO5CykhHZq5hMkqjsEBGos1tqf8dTtoe
	NLyvH9AUdl+FEMC7XA+sKVj1hD3ueUsunE33yb4JwdVJCbYK9qZM0FLcuihmQFDBLrVsyG+QE6V6P
	wTf6iyqv158rWBv8xyCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCSRw-0000000AlAq-1R97;
	Sat, 25 Oct 2025 00:48:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCSRt-0000000Al8c-1gzE
	for linux-phy@lists.infradead.org;
	Sat, 25 Oct 2025 00:48:02 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59P0lFa7005591
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:48:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MqQ7CuFg2uQG1J5bdN7Vc0a8C6p4JOXok+RrLgiol44=; b=gIPVC4IstAIeGAZY
	p3EmUYOi5T3klfJuMPlp5Yc1XMa7YbQ7LjFKdBUfgm5YhWsTYuyGhmxIvBAL1VJr
	TgZLhrQ9+zOlgHnfzEIZMkqixMFkZwk40d5r1htH92nD3oPyXTyBgjNgHbu2+2Ht
	T2WpI1LY3iIww9+8xydDJgJV10/SjhQGGWeT410c0Y6cB/kLL3Wop+Gnn+PygSEm
	YtQki+WIRuWKDflsHnNhepxZ7sWYJ6KpTX7sADLRVdoviHyVcQAi1ygJ0mtkVS7E
	yYUMMtdqFDfUkwlWyvVjgTeXwW6Qaj1TdtyjEHWpWZLhReJLmUqIVwD3zs9hZGma
	2wpRvg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0kwn015m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:48:00 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-332560b7171so2789744a91.0
        for <linux-phy@lists.infradead.org>; Fri, 24 Oct 2025 17:48:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761353279; x=1761958079;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MqQ7CuFg2uQG1J5bdN7Vc0a8C6p4JOXok+RrLgiol44=;
        b=J8MQbYj56uOKI8bKFiZFDmuEo+KOQ832LC5uo5pAN4Sf8T8O2uf2kO6wq+GPomf1ln
         dyWrWQq4Gp0AAqhu8IfoINDnHu46BTvZbAIR5g8SzxCmPlqZ1sN/cNsQErMAxM1uzVqU
         2WEsYtsl3tHjhFBiuLRzF+zNny7knGKgNlnGu96Bvzc+K0orL8+IuDIW/FTAK8lHS75H
         5wtAhGl2MdrFSITCPkHV6xKqxwCMb0879eB1sEkn1VVgBPJ0Ncq1ppiDn85kL4G6LobQ
         /4WodeHZssh8hoyhbnzUGhBZYtiIQJpHp0IPDI4azXimbYmTFujpcdgUMUtjB5Bn/9ZA
         A6dQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLbcreQDeG6rs2a4BXGKiDtUXLWzkOwnIqOLvEBM9ysn50JqenfO70qN+IRYLZf0qiPq7AJpCTJ40=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9BU2nYJ4J8JjDPo8xiV/leWga1pRWwFyBevIiKlBiZDiNasp2
	/kXHbAZs9+dnk2pD+F54XzepVxYOx/KOcAAy1/xlAHtlEsPV6eyEsXmjHUdmKXrg7GwKl5t/Sj9
	/4Q5D0tOnjCu9MC9aLrhgFSNDkh7lmUMBYWCWmhfzhn05+CBCUeahJrUnGOaVA1gKzpGV
X-Gm-Gg: ASbGnctomR2TSxmsGNUemBsin+SEu1fRNh0Mhm/2P2v8T4GQw43b3myKM9pGgBgUUhs
	yMPN3HfLV7SedW1hVumDWqz+wZnOvtiRfdIXbM9/AB+2qxOYpzoQyKFLAPxKQ1+NmWRHhprHJuh
	0YAE7q/XRJ6cT/mYWcF8hzzL4IMkSWt0hWCxjwW7ehWUAK/znl/mwIKr6uWsd9KvPFFTAwxRykg
	HwWRSnXFAZtXMGtPFstBaldvoDJ7n9ZY51EbBexyaHS5PRcXnSEZudIgTZR1DTb2PT1nuywvqRR
	DDZ3zq6xkei3Sv9YIDKY2XYB56hzMNy07EJf1Ri1dOXCBziVQLxNDG4yh/32D5E3p7yMN5CaS2l
	hyhwjLhT/ES+csdXQxoymXzeJVfWZT0Zzqru8lpjzGyrV93X8cn4=
X-Received: by 2002:a17:90b:1e12:b0:33e:d66:490d with SMTP id 98e67ed59e1d1-33fd3a598ffmr5633384a91.7.1761353279270;
        Fri, 24 Oct 2025 17:47:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEh+lfmmLQDcK6Q7DNJ2kGNQg7Sd82z6UskjFMialiSd/3Btxw2kiuVr800TtDd5MuGzZwxAg==
X-Received: by 2002:a17:90b:1e12:b0:33e:d66:490d with SMTP id 98e67ed59e1d1-33fd3a598ffmr5633362a91.7.1761353278794;
        Fri, 24 Oct 2025 17:47:58 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed3eca8dsm167352a91.0.2025.10.24.17.47.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 17:47:58 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 17:47:42 -0700
Subject: [PATCH v6 4/8] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 SMB2370 compatible
MIME-Version: 1.0
Message-Id: <20251024-glymur_usb-v6-4-471fa39ff857@oss.qualcomm.com>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
In-Reply-To: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=MJ1tWcZl c=1 sm=1 tr=0 ts=68fc1e40 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=9ZGL9VZrYHwIVTkvpzsA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: G4aurThF4SA0R0rYPh_mhEEThPowDRN6
X-Proofpoint-ORIG-GUID: G4aurThF4SA0R0rYPh_mhEEThPowDRN6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI1MDAwMSBTYWx0ZWRfX9kO3XcHNdxS1
 0q8xDjP78F/d1NDDJ9KReLCF6goiN0SxvSBsqNpmga7CKrz1gwzhqLSGYZodpCqU1J3hN7S6tYM
 6iq3vU8TZxt5yMEBtN8MiRH/DGYxkQyO6ZuWdwXcWclg+XxnNj3SD0yVN1OjH6M4QdXdfR+op50
 Mspp1I2Cs1jPa8tQPnvMcMXAPbDVMrPuIMRjgw3/xSLYDzYy1064h3mIV/uyVkNDNBlu904Ww5Q
 EdvZH5LTUohLtOhoiOhrczI5IvLJGSvhaNysEznX6E/TQZtXm3siqXE/g1MWvZ5unInrwyEQZ2F
 /QTtoJbUaExFI+ljMpIcYr8nOYVEHFeuXFUUuCN2OE+CuTFLKmAOr1dMiTkav7ezAh1SHwMEStz
 Kpplim2oa25bAtsHhLQv7eCw4j2DGw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1015 malwarescore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510250001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_174801_567771_97F0AD99 
X-CRM114-Status: UNSURE (   9.60  )
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
