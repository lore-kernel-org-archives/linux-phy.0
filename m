Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A29F8CA6018
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 04:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0httsMXpk3LeEAtbt0jk17EBOc/3OF3QMCr2qeqpbk=; b=ZyzzXtuNZIjnU1
	fQdN/eRQ0miaSGXPNDyrwIhdFSmRkEyaiIK91Zz/JAMCgig/j9iDQKOjFdQBFmpa4+Tp4i27h5UyC
	hmlXqVMZPJtzckHmAMc9LXLx9hrHcRILsPhhZFIgX+99xllXX22HS/Vp6AXPVvw22qTF9pbwQH4Ty
	EApsU4rTw5Xr5KNqf0bSaCErhB0/RY0H60QNG3vT829Dazh/AeSWZkvxUGoHLY+ZJ7j9RDFghEY/v
	03kpPhwRcqMJvivFSXQdEx/CoXnTpkAZ9A96i+8oC+a+PV5drvAqYCMdMR1GagB9/SeDw9DA+qI3G
	KuVONAeHJvBz7TISoTXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF2Yh-00000005UGL-180u;
	Fri, 09 Oct 2026 04:50:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF2Yf-00000005UFd-0yqV
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 04:50:14 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6993HKER3323009
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 04:50:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yxOiia23GtlGiNnaYrLL6nmn5DZZAppKMl6jIYoOE4E=; b=E8ad7aCx5vOk7MhF
	nyTqzgsuPnqHMdqH5wx33lE6PwTokIIJ9r2gUItSvcVKgtDgCpu7PMODIyjDo1Lp
	uA5huVbGXtP7f1RT2wtlBKsPx2+o8WxMJA2VxH0k4fnCW4Da4T7UPqMQJP080zhi
	h+OPXgH2y7AwknkkDjMsn6+O5nAU2qh0mLZPC5F7pUp2yN9QCbjsM7J+vSZH9FI5
	Necl2LErujJzuN/KFsS8faxl7RQXnuU0Mz760XtdYtcVFd50sfUp5kqlATINauUI
	vzzigUYmYhu6z08O/IlKA5BPHquq3YtmrlUs4Nx2HOEvbbaGt+NEyaC9f6mq2MiJ
	hWH6vw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6ev5a7cp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 04:50:12 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-3425098ae4bso6366860eec.0
        for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 21:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791521412; x=1792126212; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yxOiia23GtlGiNnaYrLL6nmn5DZZAppKMl6jIYoOE4E=;
        b=Yp4un+RP3bxMrRoAVekCNC59X2lDIuIlPGPBN/waL96QHnuKaW735pbECpmlI6tPgq
         sykCNC0R5uxYzCRzU+t4AVS7a7/y2WACKGwfiUAANP3jmdh6epQIEqFJi6GL3SXQKZJB
         aSvuYiUOQQPRx68vWf7B+XgBHoFXuAN2/Q/gQd4CKNAztenHE41QlcyUv7SWJgW3A7Hb
         mY3O1rVm7cW90Xv2lPqqPJS7yS6eDrzuoU0PclEg0HsO5U3URtPEZOK3BrB+mqh9pest
         httlVuPm+52DwF16ucfp/LqS+kbl00nriNNzNxo/cAUCpCoMrc4K1UjD129GY+vyWxc+
         7dGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791521412; x=1792126212;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yxOiia23GtlGiNnaYrLL6nmn5DZZAppKMl6jIYoOE4E=;
        b=RwxDp8dgFLQC9E6dJplIzM8mSxfviy6d4stsqQIeGAoRE5Rf34+o0UueRsbzrgQEbH
         MHcNrhvw/XvAHDVTey7IA0V6o/SZkTCaqIaVrw5KW7mTAnNshDXef8e0Ydq3J6lwqbgn
         pouTxlJkJU8re8w2TLUTaqZvU2/uE2Z+X4433ffvbhtpsUq+4fY/Be3DKh6rjN4oifUA
         YFvE+7uWqlxGPwJH4cJmLP3f9qG8HhizPHF8ZiEgAv5ehz5PZMFvoCkp9btpnkCVky3J
         HW6KRE6uDJvqc4nlhCil3xP4S6lsAgfGXk9+q+B8Uv6JdI5BdU8eIg/FfPJj6NfamZ8s
         5N/Q==
X-Forwarded-Encrypted: i=1; AKwUvBypsxX0Hjcfc2X/Vgg6KkpVK55wFm5l2U7sdYQWR5rn7ZFzHoCOroP+LsB9IdB5wQchg5J6OrrLU30=@lists.infradead.org
X-Gm-Message-State: AFuF++k2UbkPnnOCAMHgdXEC8c4Gt8ZtwvQz7wsimlDpU4LiW1PRlnJJ
	admHTaV77SpKB0gLqVBMPEy8H0R75cKo+N2ok1oPONahVZBNHKTw4JbNh53fNk4W5s4NCq/IP9G
	jf9dmRXJxE6l9pFaX/yz22H7RQS0A4ZRbwrvJ4Quegg060LsPYhYSbUUy3nItSOg1cMxN
X-Gm-Gg: AYBFou0XUKPY5nsdblY6Bo0dGnt8rXJVKpDirL8WoXhdVl8ZyDIp394NeZhyFjux9NW
	P2EJQST2kI8CASyBqh9RxmyhWhQNK8MXRYIZJxAoByg9mgFW2fqIpgktNf3rm43cB64+Xp5Euf3
	xkSGbkQdQNOGJ3MymT1VpGyutF0Wf976i4Zo07q+wru3CzwMHTFY2yl0QBjuuD6J2d+maXj3T2O
	RPy6zt/1hsfM/JT4C4MaHG9ikHItq1Ifj6xBEIQapDSEiVCnM04DKFGrJSGR0dx+VmqDKUe4tr2
	agTqgWUujx9A+xJfmw2ETQZdeleX2omzXDXDUV4deFFGcTKpNhVYtucIW8rUi58iwbSg03zZXyL
	8pa5jpqLAnl9iUJkZzR78Fz9znAYUmHPdaA8+wi6y1rOOLJiEoabeqMOCE5/CEpI6EtNtlNT3+y
	WBCfDaAC2O4QdB2WKl1ZlcclaqJGHJbA==
X-Received: by 2002:a05:701b:2401:b0:14e:61bb:ec3d with SMTP id a92af1059eb24-16a5d63d0a2mr1103003c88.16.1791521411978;
        Thu, 08 Oct 2026 21:50:11 -0700 (PDT)
X-Received: by 2002:a05:701b:2401:b0:14e:61bb:ec3d with SMTP id a92af1059eb24-16a5d63d0a2mr1102969c88.16.1791521411368;
        Thu, 08 Oct 2026 21:50:11 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a442956asm4151609c88.16.2026.10.08.21.50.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 21:50:11 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Fri, 09 Oct 2026 10:19:55 +0530
Subject: [PATCH v6 1/6] dt-bindings: phy: qcom,qmp-usb: Add IPQ9650 USB3
 PHY
MIME-Version: 1.0
Message-Id: <20261009-phy-v6-1-50408e45bcc1@oss.qualcomm.com>
References: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
In-Reply-To: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDAxOSBTYWx0ZWRfX2joxTunrxCjM
 ojLvG+wTWWWB4zAiNwumxqb6VGSUNyFsmAlcXNVZ5rvPuc+XVkP4bvJBqKoJgHlCMYfOX0D+8FQ
 qbPQMMyHb2bFH42QDeVR1j+PcF/A4rk=
X-Authority-Analysis: v=2.4 cv=MMT1C8Zl c=1 sm=1 tr=0 ts=6ac87284 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=CyeWGLuohibXKJY0YOUA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-GUID: oK0Qh4MwFYLUvtXPxZXep-PdzKLEnjKc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDAxOSBTYWx0ZWRfX9ydv9m6ZnH9h
 epiE9v/pldiNYkjDKLci5K5VjkNSWieIAJvOh8dY9IdUvGv/boFItY1HIkAjwJes/Nis92wc3lp
 NaSmYf7+EfqlC//tBL/jzM1IQC2ODDHO5jxe3Oe9YfqxqerAAhAf7wDIW6IQcg5NaoNODqDA6w9
 c3eUSxUAdxEYAtNh2GJcnEvvbywgdBUAv3QXrl0cPMmiuZjy/uotiNfo/SzQQY3iX135LS8PJcB
 //DSSYUIFbuRGoKEWTuMwlGR1loGwxJf7LZ0el/D983L8tA/h3QwO3ygBJxGfwRflfBfOHsJ9lh
 JQT8wDIiCa4To5mpLo+SaMhR7LGI5ZMwX/3kMwDBlVMWqYidYrl2+HLipAvWJ0mhlrEU+kdNO2n
 e9jQF5aIeP1R3/9OufrDm/4t2dKQbLqpFCRN0iQ2hFWoSG2Yl2H7nUE/Ci+8h3uOUI6tDMNI5B2
 5QfDJW5F+Ynpe+eypWw==
X-Proofpoint-ORIG-GUID: oK0Qh4MwFYLUvtXPxZXep-PdzKLEnjKc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_02,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610090019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_215013_286566_933D0AAD 
X-CRM114-Status: GOOD (  10.74  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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
