Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D031CFD31C
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 09:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rz/XCDMO2rvj/DeIRLtXe9AOVesXKK/jm6Vil4c/CGg=; b=weFYZP9DERfwpj
	Ari8gqqBszRUONsW+iQuOWSBq8QEGJ8q62zfBjpnX4VRNX4NSyKqIMjxyg3QJcy/8cfxHAZ3elALv
	VN+UjXon1ALy+EUDGQphtdfa0NJOjZxV4l1HYGiNO+V0+k9YhHuOS9ULIkKMxvUrj60Cs2JskSnyo
	1+Hjl1tOjo1yI+yRbRF+8tdg6QebEg5bJR6lj/wOFv0djPTlwYPR3piHClKYU9ZiuTBbrDQWWgB8k
	Ruauj13uy8f5EplfFSlPNH9EgYr0DrOXnWIxNEtb9d3dX0WHgd+QUsEGLv7HKyWtIsR5y+SuEa43n
	FzXyZl1ymxEg0txQS9pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNSqp-0000000BLLX-0WqH;
	Mon, 24 Nov 2025 09:27:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNSpr-0000000BLGb-1iy2
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 09:26:17 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8eH512478219
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 09:26:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y/hIBToIJ10S/2pRwkHZfrpd6jd+9L2vzWQxkETTh+s=; b=Vv/txK6M6C5UwjFy
	LZLoqOEfi0Taveo/ty65iwbjv1SZZdKchBV1+G5DHegaAxrrKtF4l++XS5AIjsEh
	Bxm+P1uT5U4AoungOPeovusRgIPjYiGycCkAHyuwbuwpHYtJX5DpG7VH+LlY2nka
	Bio1S79UkPXF900AiOPXl69WjBFAAZIc4lP/rR09axXoloy6r3zYR5M1u4djlgef
	ayorcy0PAy7DvKDLJTZaRmwsH2qAWdb/ziQhLAtbNqcmGT9giD75jWtBbADOLRqA
	Hck+uSKNCuw+xAZ99rja+2zCVqUfIhJTljbDL2apZz6Kux18x08wiZ6zswtaroBl
	fbEbrw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak694vecf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 09:26:14 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297f3710070so102077205ad.2
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 01:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763976374; x=1764581174; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y/hIBToIJ10S/2pRwkHZfrpd6jd+9L2vzWQxkETTh+s=;
        b=b9ZAQpnddhMm+1bTdQ3AIeJGuj8oQlx1XVltv0TS7sFdIYMMQzmtxKT6JH8uKoJP0Q
         4Tu0vInz/1c7Q+CSVUbkyUlDr63kn1MyKRVssfPB2IQuq+62uMI230YO2LYRPiCJwJMy
         UCtU6hjmhR/6Bo4P6Q51/Iv6ko76WxR196iUWpE2yjtclKCuSLZRHkLLhm/qNMEDKURF
         5rVF0HGJhwh60+IclXE8WU2m7wjTFT9V4vxDB22aNaD1WYXvdpYDQf3RLg6DcofBAcYS
         OVvAtt/7rnYbkWIMWbIJLiPSBeCk9Vy5AmqwwLqwRI6joGInzPDOMOaRmG9DDt8ESuyp
         v6sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763976374; x=1764581174;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Y/hIBToIJ10S/2pRwkHZfrpd6jd+9L2vzWQxkETTh+s=;
        b=Ds15JrenDYKeqy/DSD/58IPu++Dnh9FnMpOKQHZclhU4DBtGMdzzkujjHodRB9oJC1
         0MCh0SNge+VCFbeFgYNdjt5AJhZ1ZtgK1f8WvZsh5ahDYxpVVJQU3z/6i8WQXArirqT5
         kAESEYNzUTaC1bFrNVWlEuAgt85K1YlYXJ+5uhvf3VxJmEixBeXqu6VQxve3G4cjtY/k
         QYKUVEgZQNb3Rfe4EzH2ZLPJJjO4+N1ttVOe4OsCGPiLOErJni+zBZPhwTr0nSO7VBD3
         mm2Q3Rvjf6yEPDtKfBzhANrlo3x9PHTRs4mf7tEPhRgfWJzRYkD2Z8x9a50ePjlfC/k3
         OiAw==
X-Forwarded-Encrypted: i=1; AJvYcCUiJc7xlCPlGrfHGvm8p/mikFgY4ktBii6qWMrINXh92i3Ut2EmldzCBc8HGDneO3Gi07DkS0413ns=@lists.infradead.org
X-Gm-Message-State: AOJu0YxNqOMXEwdfgVi0w/iObDyIrPNhCZuWxQOZirTZwm13EAo9FO+b
	uY+gRaoshF9OF/Aua/Owf5rFJdvUd0D2jXxMMpvZDxQOYckcqnHIYJw6M2yt3RdRFbCgQXTmVRC
	fKOtEapnLc95ABW4anJlzaIHvKurSOnzF5aXlyGX9LyGR+mUp1TATT9cHgNH5d/Jxe2gati8RwH
	0P
X-Gm-Gg: ASbGncszkHbX+rBnqKrqCJZ56oAcMO6v8pjmefgJWw2mCkiYcOE07IhqDr2tE2NVsEd
	3/uwvrkPhu8PsRbGK6lGsnehU94pogJObRxMAQZ22cEPT52zCgMz/WNXdviuGozNiG1Tk9JBg/e
	wZp2z++EzgwahMLBDvvnwkFiN0CTdgfkn9mrZLYNN8CT6J0b9kHE8cz277GYCyOPMVulOa6qUO2
	4JJVVkDAzPMkDhYqqDrwlzSdd2yBA5qS8sV64soNeIE4D3xMxRFOzqBdy2DHcgln80XEevwBIr2
	QW+FJuzQlrdDrnHDNwYmoy4rnL5ZPGaMIhVwSzxDrI/1ntJGWX3JJvNTq++tTJg+NT1auHw5zno
	YuQOrWnTO5Sq6WAguGXFXcjKaehukVKKOR7Pwu2Q=
X-Received: by 2002:a17:903:234e:b0:293:e5f:85b7 with SMTP id d9443c01a7336-29b6c3dc272mr120304295ad.11.1763976373705;
        Mon, 24 Nov 2025 01:26:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF83DvZtzUF2+LIhnF8mSIq0TCnnj3RVGPicq3PMTG0lN+c/9Z2H5Zds8h40mT+RIhlKcdvlg==
X-Received: by 2002:a17:903:234e:b0:293:e5f:85b7 with SMTP id d9443c01a7336-29b6c3dc272mr120304025ad.11.1763976373198;
        Mon, 24 Nov 2025 01:26:13 -0800 (PST)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b29b1c2sm128444675ad.81.2025.11.24.01.26.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:26:12 -0800 (PST)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 14:55:20 +0530
Subject: [PATCH 4/6] arm64: dts: qcom: monaco-evk: fix the SerDes PHY
 regulators
MIME-Version: 1.0
Message-Id: <20251124-sgmiieth_serdes_regulator-v1-4-73ae8f9cbe2a@oss.qualcomm.com>
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763976350; l=932;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=M6p6cNqOJLrr1VimkDtNrDv8+UuwLLTpopmoQFLxJNw=;
 b=aMaz5TVZP9VflQn25Wp2hNniu2DvfKxHzuvGVoNv7g1d5Wpw/XiNyG1S8PIrZ//iCtAUiTdHu
 XWUuDEpgKg8CadsIS+aEyOLn7Oiujr+tTGZYC0wDoAI07BbbbZqgAV6
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA4MyBTYWx0ZWRfX3RzHsaymqolw
 5RLq4EhROI9cHmrRu2XeCnK+6LfclXxEvkqvZnjN3DgY9jvfsUIoL+4Od9UvgRRNF6U+XiNuW9H
 N3vAtKWkCJLkOCvNGlCDuxed69ExurcrgNHyra6B38bLRqJDqWGmEG+UxeYFdxMnasPGo1/c36O
 MLsP47K8375DKVqh5eLy8TYCxMiI1dpHr39C4K3N1IKwXyeiQBLSM4K6WokmcJ+WBMSjooZIWnX
 lOp+tSrRInpPeXM2Li4yidKeoyOGQ1vaRoNV5/NUpIjBFnwF8hH8SHiG/0IEwbYZW0SZzbUgkLw
 LiLwq2oKqwHqVShuCx3Q5O8UrqUcJ67Phnf0vvjfiLsj2E+bNxodNvZS0wkD0c1Zx9Q4faRZIoP
 AzBPSB0Rp3udy7S6rgc/l8bfuNchQg==
X-Authority-Analysis: v=2.4 cv=YJqSCBGx c=1 sm=1 tr=0 ts=692424b6 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=E-7DmkMnb8j6TIe6XkUA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: 45w8oLO5jjDBn3HyuvAJGvNNXxmrInqh
X-Proofpoint-ORIG-GUID: 45w8oLO5jjDBn3HyuvAJGvNNXxmrInqh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 impostorscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_012616_345725_CA25F59D 
X-CRM114-Status: GOOD (  12.52  )
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

The Qualcomm SerDes PHY, present on multiple boards, has two regulators
providing supplies of 1.2V (L5A) and 0.9V (L4A). Update the node to
reflect the same instead of incorrectly voting for only L4A.

Fixes: 117d6bc9326b ("arm64: dts: qcom: qcs8300: Add Monaco EVK board")
Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index bb35893da73d141465a325dcfb5542fc032c95a1..4b51a73cb5e95ab09deb9c94b4cdf06bf4c09a7b 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -429,7 +429,8 @@ &remoteproc_gpdsp {
 };
 
 &serdes0 {
-	phy-supply = <&vreg_l4a>;
+	phy-supply = <&vreg_l5a>;
+	vdda-0p9-supply = <&vreg_l4a>;
 
 	status = "okay";
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
